Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context?download=true
inline.NumInlined: 9919
inline.NumDeleted: 2463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3smt7context24propagate_bool_var_enodeEj:bb.a
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !623
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !866
  %i.as = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %i.q, i32 noundef %i.ar)
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !623
  call void @_ZN3smt22theory_user_propagator12new_fixed_ehEiP4exprjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(560) %i.at, i32 noundef %i.as, ptr noundef %i.am, i32 noundef 1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNK3smt7context13watches_fixedEPNS_5enodeE.exit.thread

_ZNK3smt7context13watches_fixedEPNS_5enodeE.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK3smt7context13watches_fixedEPNS_5enodeE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !889 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !751
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK3smt7context13watches_fixedEPNS_5enodeE.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8712
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !753
  %i.bb = icmp eq ptr %i.av, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq ptr %i.q, %i.av
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 520
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !644
  %i.bi = load i32, ptr %i.bd, align 8, !tbaa !644
  %i.bj = call noundef i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bi)
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread, label %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit

_ZNK3smt7context11is_relevantEPNS_5enodeE.exit:   ; preds = %bb.h
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !850
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !622 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef %i.bk), !inline_history !21
  br i1 %i.bq, label %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread, label %bb.i

_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread: ; preds = %bb.h, %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !850
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !875
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !759
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !644
  %i.by = shl i32 %i.bx, 1
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !742
  %.not = icmp eq i8 %i.cc, %i.f
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread, %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit, %bb.g
  %.0.in52 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.053 = load ptr, ptr %.0.in52, align 8, !tbaa !893 ; 2 uses
  %.not3754 = icmp eq ptr %.053, %i.q
  br i1 %.not3754, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.ce = zext i1 %i.r to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cg = load ptr, ptr getelementptr inbounds nuw inrange(-32, 56) (i8, ptr @_ZTVN3smt20mp_iff_justificationE, i64 32), align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 9088
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit
  %.055 = phi ptr [ %.053, %.lr.ph ], [ %.0, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit ] ; 3 uses
  %i.cl = load ptr, ptr %.055, align 8, !tbaa !850
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !875
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !759
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !644
  %i.cr = shl i32 %i.cq, 1                        ; 2 uses
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !742
  %.not38 = icmp eq i8 %i.cv, %i.f
  br i1 %.not38, label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.cw = or disjoint i32 %i.cr, %i.ce            ; 3 uses
  %i.cx = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 noundef 32) ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 2, ptr %i.cy, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt20mp_iff_justificationE, i64 16), ptr %i.cx, align 8, !tbaa !73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.q, ptr %i.cz, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %.055, ptr %.sroa.9.16..sroa_idx, align 8
  %i.da = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(9) %i.cx), !inline_history !17
  br i1 %i.da, label %bb.k, label %_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit

bb.k:                                             ; preds = %.noexc
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !748 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.noexc40, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !644 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !644
  %i.dh = icmp eq i32 %i.de, %i.dg
  br i1 %i.dh, label %.noexc40, label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

.noexc40:                                         ; preds = %bb.l, %bb.k
  call void @_ZN6vectorIPN3smt13justificationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  %.pre.i.i = load ptr, ptr %i.ch, align 8, !tbaa !748 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !644
  br label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i: ; preds = %.noexc40, %bb.l
  %i.di = phi i32 [ %.pre2.i.i, %.noexc40 ], [ %i.de, %bb.l ] ; 2 uses
  %i.dj = phi ptr [ %.pre.i.i, %.noexc40 ], [ %i.db, %bb.l ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dl = zext i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  store ptr %i.cx, ptr %i.dm, align 8, !tbaa !750
  %i.dn = add i32 %i.di, 1
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !644
  br label %_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit

_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit: ; preds = %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i, %.noexc
  %i.do = ptrtoint ptr %i.cx to i64
  %i.dp = or i64 %i.do, 3                         ; 2 uses
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.dr = zext i32 %i.cw to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !742
  switch i8 %i.dt, label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit [
    i8 -1, label %bb.m
    i8 0, label %bb.o
  ]

bb.m:                                             ; preds = %_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit
  %i.du = load ptr, ptr %i.ci, align 8, !tbaa !883
  %i.dv = icmp ne ptr %i.du, null
  %i.dw = load i8, ptr %i.cj, align 8, !range !815
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %i.dy, label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = xor i32 %i.cw, 1
  store i64 %i.dp, ptr %i.ci, align 8, !tbaa !643
  store i32 %i.dz, ptr %i.ck, align 8, !tbaa !644
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit

bb.o:                                             ; preds = %_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit
  %i.ea = inttoptr i64 %i.dp to ptr
  call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.cw, ptr nonnull %i.ea, i1 noundef zeroext false)
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit

_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit: ; preds = %bb.o, %_ZN3smt7context16mk_justificationINS_20mp_iff_justificationEEEPNS_13justificationERKT_.exit, %bb.m, %bb.n, %bb.j
  %.0.in = getelementptr inbounds nuw i8, ptr %.055, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !893 ; 2 uses
  %.not37 = icmp eq ptr %.0, %i.q
  br i1 %.not37, label %.loopexit, label %bb.j, !llvm.loop !1282

.loopexit:                                        ; preds = %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit, %bb.i, %_ZNK3smt7context11is_relevantEPNS_5enodeE.exit.thread, %_ZNK3smt7context13watches_fixedEPNS_5enodeE.exit.thread, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context17assign_quantifierEP10quantifier(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !620
  tail call void @_ZN3smt18quantifier_manager9assign_ehEP10quantifier(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context14set_var_theoryEji(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !679
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8968 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !744  ; 2 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %3 = load i32, ptr %i.g, align 4
  %i.h = and i32 %3, 8388607
  %i.i = icmp ugt i32 %i.b, %i.h
  br i1 %i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9552 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9568
  %i.l = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3smt20set_var_theory_trailE, i64 16), ptr %i.l, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %i.m, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %1, ptr %.sroa.6.8..sroa_idx, align 8
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !768  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.noexc7, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !644  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !644
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %.noexc7, label %bb.c

.noexc7:                                          ; preds = %bb.b, %.noexc
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !768 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !644
  br label %bb.c

bb.c:                                             ; preds = %.noexc7, %bb.b
  %i.u = phi i32 [ %.pre2.i.i.i, %.noexc7 ], [ %i.q, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i, %.noexc7 ], [ %i.n, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.l, ptr %i.y, align 8, !tbaa !855
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !644
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !744
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.a ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %4 = load i64, ptr %i.ac, align 8
  %i.ad = and i32 %2, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 %i.ae, 56
  %i.ag = and i64 %4, 36028797018963967
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = or disjoint i64 %i.ah, 36028797018963968
  store i64 %i.ai, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3smt7context13watches_fixedEPNS_5enodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !799
  %.not.i.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !866
  %i.g = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %i.f)
  %i.h = icmp ne i32 %i.g, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -128, 129) i32 @_ZNK3smt7context14get_assignmentEP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 65535
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !911
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !870  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.c
  %i.n = load i32, ptr %i.m, align 8, !tbaa !874
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 8
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !904
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !760
  %i.y = load i32, ptr %i.x, align 4, !tbaa !875
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !759
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !644
  %i.ae = shl i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !741
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !742
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 0, %i.ak
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.b, %bb.c
  %i.am = load i32, ptr %1, align 4, !tbaa !875
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !759
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !644
  %i.as = shl i32 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !741
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !742
  %i.ay = sext i8 %i.ax to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.al, %bb.e ], [ %i.ay, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -128, 129) i32 @_ZNK3smt7context15find_assignmentEP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !911
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !870  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !874
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 8
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !904
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !760  ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !875  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !759  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK3smt7context14b_internalizedEPK4expr.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !644
  %.not.i.i.i = icmp ult i32 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK3smt7context14b_internalizedEPK4expr.exit

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aa
  br label %_ZNK3smt7context14b_internalizedEPK4expr.exit

_ZNK3smt7context14b_internalizedEPK4expr.exit:    ; preds = %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ab, %bb.e ], [ @_ZN3smtL13null_bool_varE, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i ], [ @_ZN3smtL13null_bool_varE, %bb.d ]
  %i.ac = load i32, ptr %.0.i.i.i, align 4, !tbaa !644
  %.not = icmp eq i32 %i.ac, 2147483647
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.ad = zext i32 %i.u to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !644
  %i.ag = shl i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !741
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !742
  %i.am = sext i8 %i.al to i32
  %i.an = sub nsw i32 0, %i.am
  br label %_ZNK3smt7context14get_assignmentEP4expr.exit

bb.g:                                             ; preds = %_ZNK3smt7context14b_internalizedEPK4expr.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !699, !nonnull !585, !align !586 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 840
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !752
  %i.ar = icmp eq ptr %i.t, %i.aq
  br i1 %i.ar, label %_ZNK3smt7context14get_assignmentEP4expr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 832
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !740
  %i.au = icmp eq ptr %i.t, %i.at
  %. = sext i1 %i.au to i32
  br label %_ZNK3smt7context14get_assignmentEP4expr.exit

bb.i:                                             ; preds = %bb.c, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZN3smt7context18del_justificationsER10ptr_vectorINS_13justificationEEj:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.015 = phi i32 [ %.0.i, %.lr.ph ], [ %i.f, %bb.d ]
  %i.f = add i32 %.015, -1                        ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !748
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !750  ; 6 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(9) %i.j, ptr noundef nonnull align 8 dereferenceable(952) %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 2
  %.not13 = icmp eq i8 %i.q, 0
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.j) #30
  br i1 %.not13, label %_Z7deallocIN3smt13justificationEEvPT_.exit, label %bb.d

_Z7deallocIN3smt13justificationEEvPT_.exit:       ; preds = %bb.c
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z7deallocIN3smt13justificationEEvPT_.exit
  %.not = icmp eq i32 %i.f, %2
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !748
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6vectorIPN3smt13justificationELb0EjE4sizeEv.exit
  %i.t = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZNK6vectorIPN3smt13justificationELb0EjE4sizeEv.exit ] ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN6vectorIPN3smt13justificationELb0EjE6shrinkEj.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  store i32 %2, ptr %i.u, align 4, !tbaa !644
  br label %_ZN6vectorIPN3smt13justificationELb0EjE6shrinkEj.exit

_ZN6vectorIPN3smt13justificationELb0EjE6shrinkEj.exit: ; preds = %._crit_edge, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3smt7context15is_empty_clauseEPKNS_6clauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !886    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not1415 = icmp eq i32 %i.a, 0
  br i1 %.not1415, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4, !tbaa !644
  %i.f = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !742
  %.not = icmp eq i8 %i.h, -1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not14.lcssa = phi i1 [ true, %bb.a ], [ %.not, %bb.b ]
  ret i1 %.not14.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3smt7context14is_unit_clauseEPKNS_6clauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !886    ; 2 uses
  %.not22 = icmp eq i32 %i.a, 0
  br i1 %.not22, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01623 = phi i8 [ 0, %.lr.ph ], [ %.117, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4, !tbaa !644
  %i.f = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !742
  switch i8 %i.h, label %bb.d [
    i8 1, label %.thread.loopexit
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw i8 %.01623 to i1
  br i1 %i.i, label %.thread.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi i8 [ %.01623, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.loopexit, label %bb.b, !llvm.loop !30

.thread.loopexit:                                 ; preds = %bb.b, %bb.c, %bb.d
  %.016.lcssa.ph = phi i8 [ %.117, %bb.d ], [ 1, %bb.c ], [ %.01623, %bb.b ]
  %.not.lcssa.ph = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.j = trunc nuw i8 %.016.lcssa.ph to i1
  %i.k = select i1 %.not.lcssa.ph, i1 %i.j, i1 false
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %.thread.loopexit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context16cache_generationEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9000 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !644  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !679
  %i.i = add i32 %i.e, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.i) ; 2 uses
  %.not2734 = icmp ugt i32 %1, %spec.select
  br i1 %.not2734, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8936
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge
  %.02435 = phi i32 [ %1, %.lr.ph37 ], [ %i.v, %._crit_edge ] ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !785
  %i.m = zext i32 %.02435 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !786  ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._crit_edge, label %_ZN6vectorIPN3smt6clauseELb0EjE3endEv.exit

_ZN6vectorIPN3smt6clauseELb0EjE3endEv.exit:       ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !644  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %.not2832 = icmp eq i32 %i.r, 0
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit, %bb.b, %_ZN6vectorIPN3smt6clauseELb0EjE3endEv.exit
  %i.v = add nuw i32 %.02435, 1
  %.not27.not = icmp ult i32 %.02435, %spec.select
  br i1 %.not27.not, label %bb.b, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread, !llvm.loop !1306

.lr.ph:                                           ; preds = %_ZN6vectorIPN3smt6clauseELb0EjE3endEv.exit, %_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit
  %.02533 = phi ptr [ %i.al, %_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit ], [ %i.o, %_ZN6vectorIPN3smt6clauseELb0EjE3endEv.exit ] ; 2 uses
  %i.w = load ptr, ptr %.02533, align 8, !tbaa !853 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !886  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %wide.trip.count.i.i = zext i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !884
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !744
  %i.ad = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %2 = load i32, ptr %i.af, align 4
  %i.ag = and i32 %2, 8388607
  %i.ah = icmp ugt i32 %i.ag, %1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !629
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !760
  tail call void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.ak, i32 noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit, label %bb.c, !llvm.loop !31

_ZN3smt7context16cache_generationEPKNS_6clauseEj.exit: ; preds = %bb.e, %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.02533, i64 8 ; 2 uses
  %.not28 = icmp eq ptr %i.al, %i.u
  br i1 %.not28, label %._crit_edge, label %.lr.ph

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread: ; preds = %._crit_edge, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit, %bb.a, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9008 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !782 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit

_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit: ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !644 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit

_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9624
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !767
  %i.au = zext i32 %1 to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !924 ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.aq
  br i1 %i.ay, label %.lr.ph39.preheader, label %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit.thread

.lr.ph39.preheader:                               ; preds = %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit
  %i.az = zext i32 %i.ax to i64
  %wide.trip.count = zext i32 %i.aq to i64
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %indvars.iv = phi i64 [ %i.az, %.lr.ph39.preheader ], [ %indvars.iv.next, %.lr.ph39 ] ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !782
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !783
  tail call void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.bc, i32 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit.thread, label %.lr.ph39, !llvm.loop !1307

_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit.thread: ; preds = %.lr.ph39, %_ZNK6vectorIN3smt11replay_unitELb1EjE4sizeEv.exit, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE5emptyEv.exit.thread, %_ZNK6vectorIN3smt11replay_unitELb1EjE5emptyEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context16cache_generationEPKNS_6clauseEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !886    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %wide.trip.count.i = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !884
  %i.g = lshr i32 %i.f, 1
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !744
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %3 = load i32, ptr %i.k, align 4
  %i.l = and i32 %3, 8388607
  %i.m = icmp ugt i32 %i.l, %2
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !629
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !760
  tail call void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.p, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit, label %bb.b, !llvm.loop !31

_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit:
  %3 = alloca %"struct.obj_map<expr, unsigned int>::key_data", align 8 ; 5 uses
  %4 = alloca %"struct.obj_map<expr, unsigned int>::key_data", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.ptr_buffer.349, align 8      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !935
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  store i32 16, ptr %i.d, align 4, !tbaa !1315
  store ptr %1, ptr %i.b, align 8, !tbaa !760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7528
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.a

bb.a:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit, %.critedge
  %i.n = phi i32 [ 1, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit ], [ %.pr, %.critedge ]
  %i.o = load ptr, ptr %5, align 8, !tbaa !935
  %i.p = add i32 %i.n, -1                         ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !760  ; 13 uses
  store i32 %i.p, ptr %i.c, align 8, !tbaa !1316
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !910  ; 3 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !654  ; 3 uses
  %i.w = add i32 %i.v, -1
  %i.x = and i32 %i.w, %i.u                       ; 3 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !659  ; 3 uses
  %i.z = zext i32 %i.x to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i ; 3 uses
  %i.ab = zext i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %.not34.i.i = icmp eq i32 %i.x, %i.v
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i21

.preheader.i.i:                                   ; preds = %bb.d, %bb.a
  %.not2736.i.i = icmp eq i32 %i.x, 0
  br i1 %.not2736.i.i, label %.loopexit94, label %.lr.ph38.i.i

.lr.ph.i.i21:                                     ; preds = %bb.a, %bb.d
  %.035.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aa, %bb.a ] ; 2 uses
  %i.ad = load ptr, ptr %.035.i.i, align 8, !tbaa !658 ; 4 uses
  %.not.i22 = icmp ult ptr %i.ad, inttoptr (i64 2 to ptr)
  br i1 %.not.i22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !910
  %i.ag = icmp eq i32 %i.af, %i.u
  %i.ah = icmp eq ptr %i.ad, %i.s
  %or.cond.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i, label %.critedgethread-pre-split, label %bb.d, !llvm.loop !1308

bb.c:                                             ; preds = %.lr.ph.i.i21
  %i.ai = icmp eq ptr %i.ad, null
  br i1 %i.ai, label %.loopexit94, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.aj, %i.ac
  br i1 %.not.i.i23, label %.preheader.i.i, label %.lr.ph.i.i21, !llvm.loop !32

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.y, %.preheader.i.i ] ; 3 uses
  %i.ak = load ptr, ptr %.137.i.i, align 8, !tbaa !658 ; 4 uses
  %i.al = icmp ult ptr %i.ak, inttoptr (i64 2 to ptr)
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !910
  %i.ao = icmp eq i32 %i.an, %i.u
  %i.ap = icmp eq ptr %i.ak, %i.s
  %or.cond31.i.i = and i1 %i.ap, %i.ao
  br i1 %or.cond31.i.i, label %.critedgethread-pre-split, label %bb.g, !llvm.loop !1308

bb.f:                                             ; preds = %.lr.ph38.i.i
  %i.aq = icmp eq ptr %i.ak, null
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ar, %i.aa
  %or.cond43.i.i = select i1 %i.aq, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %.loopexit94, label %.lr.ph38.i.i.backedge

bb.g:                                             ; preds = %bb.e
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.aa
  br i1 %.not27.old.i.i, label %.loopexit94, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.g, %bb.f
  %.137.i.i.be = phi ptr [ %i.ar, %bb.f ], [ %.old.i.i, %bb.g ]
  br label %.lr.ph38.i.i, !llvm.loop !33

.loopexit94:                                      ; preds = %bb.c, %bb.g, %bb.f, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %i.s, ptr %i.a, align 8, !tbaa !760
  invoke void @_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.loopexit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %trunc = trunc i32 %i.at to i16
  switch i16 %trunc, label %.critedgethread-pre-split [
    i16 0, label %bb.i
    i16 2, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.s, align 4, !tbaa !875 ; 2 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !793 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread, label %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.i
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !644
  %.not.i.i25 = icmp ult i32 %i.au, %i.ay
  br i1 %.not.i.i25, label %_ZNK3smt7context14e_internalizedEPK4expr.exit, label %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread

_ZNK3smt7context14e_internalizedEPK4expr.exit:    ; preds = %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.i.i
  %i.az = zext i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.ba, align 8, !tbaa !841 ; 11 uses
  %.not91 = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not91, label %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK3smt7context14e_internalizedEPK4expr.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1317
  %.not = icmp ugt i32 %i.bc, %2
  br i1 %.not, label %bb.k, label %.critedgethread-pre-split, !llvm.loop !1308

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 44
  %i.be = load i16, ptr %i.bd, align 4            ; 3 uses
  %i.bf = and i16 %i.be, 16
  %.not.i26 = icmp eq i16 %i.bf, 0
  br i1 %.not.i26, label %bb.l, label %_ZNK3smt7context14get_generationEPNS_5enodeE.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = and i16 %i.be, 8
  %.not.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZNK3smt7context11get_cg_rootEPNS_5enodeE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %.0.i.sroa.speculate.load..i, align 8, !tbaa !850 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, 65535
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i, label %_ZNK3smt7context11get_cg_rootEPNS_5enodeE.exit.i

_ZNK3smt5enode12get_num_argsEv.exit.i.i.i:        ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !904
  %.not.i.i.i27 = icmp ne i32 %i.bn, 0
  %i.bo = and i16 %i.be, 256
  %i.bp = icmp ne i16 %i.bo, 0
  %or.cond.i.i.i28 = and i1 %i.bp, %.not.i.i.i27
  br i1 %or.cond.i.i.i28, label %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i, label %_ZNK3smt7context11get_cg_rootEPNS_5enodeE.exit.i

_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i: ; preds = %_ZNK3smt5enode12get_num_argsEv.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !896
  %i.bs = icmp eq ptr %i.br, %.0.i.sroa.speculate.load..i
  br i1 %i.bs, label %_ZNK3smt7context11get_cg_rootEPNS_5enodeE.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3smt5enode13uses_cg_tableEv.exit.thread8.i.i
end_hunk_1
begin_hunk_2_@_ZN3smt7context16cache_generationEP4exprj:_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !938
  %i.ec = load i32, ptr %i.c, align 8, !tbaa !1316 ; 2 uses
  %i.ed = load i32, ptr %i.d, align 4, !tbaa !1315 ; 2 uses
  %.not.i52 = icmp ult i32 %i.ec, %i.ed
  br i1 %.not.i52, label %._crit_edge.i66, label %bb.z

._crit_edge.i66:                                  ; preds = %bb.y
  %.pre.i67 = load ptr, ptr %5, align 8, !tbaa !935
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = shl i32 %i.ed, 1                        ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.eg)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc68:                                         ; preds = %bb.z
  %i.ei = load i32, ptr %i.c, align 8, !tbaa !1316 ; 4 uses
  %.not.i.i53 = icmp eq i32 %i.ei, 0
  %.pre.i.i54 = load ptr, ptr %5, align 8, !tbaa !935 ; 10 uses
  br i1 %.not.i.i53, label %._crit_edge.i.i60, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.noexc68
  %.pre.i.i54131 = ptrtoaddr ptr %.pre.i.i54 to i64
  %i.ej = ptrtoaddr ptr %i.eh to i64
  %wide.trip.count.i.i56 = zext i32 %i.ei to i64  ; 5 uses
  %min.iters.check133 = icmp ult i32 %i.ei, 4
  %i.ek = sub i64 %.pre.i.i54131, %i.ej
  %diff.check135 = icmp ugt i64 %i.ek, -32
  %or.cond146 = select i1 %min.iters.check133, i1 true, i1 %diff.check135
  br i1 %or.cond146, label %scalar.ph132.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i55
  %n.vec137 = and i64 %wide.trip.count.i.i56, 4294967292 ; 3 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index139 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %index139 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load140 = load <2 x ptr>, ptr %i.em, align 8, !tbaa !760
  %wide.load141 = load <2 x ptr>, ptr %i.en, align 8, !tbaa !760
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x ptr> %wide.load140, ptr %i.el, align 8, !tbaa !760
  store <2 x ptr> %wide.load141, ptr %i.eo, align 8, !tbaa !760
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ep, label %middle.block143, label %vector.body138, !llvm.loop !1312

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %n.vec137, %wide.trip.count.i.i56
  br i1 %cmp.n144, label %._crit_edge.i.i60, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %.lr.ph.i.i55, %middle.block143
  %indvars.iv.i.i57.ph = phi i64 [ 0, %.lr.ph.i.i55 ], [ %n.vec137, %middle.block143 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i56, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol

scalar.ph132.prol:                                ; preds = %scalar.ph132.preheader, %scalar.ph132.prol
  %indvars.iv.i.i57.prol = phi i64 [ %indvars.iv.next.i.i58.prol, %scalar.ph132.prol ], [ %indvars.iv.i.i57.ph, %scalar.ph132.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph132.prol ], [ 0, %scalar.ph132.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i.i57.prol
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %indvars.iv.i.i57.prol
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !760
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !760
  %indvars.iv.next.i.i58.prol = add nuw nsw i64 %indvars.iv.i.i57.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol, !llvm.loop !1313

scalar.ph132.prol.loopexit:                       ; preds = %scalar.ph132.prol, %scalar.ph132.preheader
  %indvars.iv.i.i57.unr = phi i64 [ %indvars.iv.i.i57.ph, %scalar.ph132.preheader ], [ %indvars.iv.next.i.i58.prol, %scalar.ph132.prol ]
  %i.et = sub nsw i64 %indvars.iv.i.i57.ph, %wide.trip.count.i.i56
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge.i.i60, label %scalar.ph132

._crit_edge.i.i60:                                ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132, %middle.block143, %.noexc68
  %.not.i.i.i61 = icmp eq ptr %.pre.i.i54, %i.b
  %i.ev = icmp eq ptr %.pre.i.i54, null
  %or.cond.i.i.i62 = or i1 %.not.i.i.i61, %i.ev
  br i1 %or.cond.i.i.i62, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i60
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i54)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.aa
  %.pre2.pre.i63 = load i32, ptr %i.c, align 8, !tbaa !1316
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64

scalar.ph132:                                     ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i58.3, %scalar.ph132 ], [ %indvars.iv.i.i57.unr, %scalar.ph132.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i.i57
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %indvars.iv.i.i57
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !760
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !760
  %indvars.iv.next.i.i58 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i58
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %indvars.iv.next.i.i58
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !760
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !760
  %indvars.iv.next.i.i58.1 = add nuw nsw i64 %indvars.iv.i.i57, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i58.1
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %indvars.iv.next.i.i58.1
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !760
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !760
  %indvars.iv.next.i.i58.2 = add nuw nsw i64 %indvars.iv.i.i57, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i58.2
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i54, i64 %indvars.iv.next.i.i58.2
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !760
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !760
  %indvars.iv.next.i.i58.3 = add nuw nsw i64 %indvars.iv.i.i57, 4 ; 2 uses
  %exitcond.not.i.i59.3 = icmp eq i64 %indvars.iv.next.i.i58.3, %wide.trip.count.i.i56
  br i1 %exitcond.not.i.i59.3, label %._crit_edge.i.i60, label %scalar.ph132, !llvm.loop !1314

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64:    ; preds = %.noexc69, %._crit_edge.i.i60
  %.pre2.i65 = phi i32 [ %i.ei, %._crit_edge.i.i60 ], [ %.pre2.pre.i63, %.noexc69 ]
  store ptr %i.eh, ptr %5, align 8, !tbaa !935
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !1315
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64, %._crit_edge.i66
  %i.fi = phi i32 [ %i.ec, %._crit_edge.i66 ], [ %.pre2.i65, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64 ] ; 2 uses
  %i.fj = phi ptr [ %.pre.i67, %._crit_edge.i66 ], [ %i.eh, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i64 ]
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fk
  store ptr %i.eb, ptr %i.fl, align 8, !tbaa !760
  %i.fm = add i32 %i.fi, 1                        ; 2 uses
  store i32 %i.fm, ptr %i.c, align 8, !tbaa !1316
  br label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.q, %bb.w, %bb.x, %bb.n, %_ZNK3smt7context14get_generationEPNS_5enodeE.exit, %.loopexit94, %bb.aa, %bb.z
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp147

.critedgethread-pre-split:                        ; preds = %bb.b, %bb.e, %bb.s, %bb.v, %bb.j, %bb.h, %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread
  %.pr.pr = load i32, ptr %i.c, align 8, !tbaa !1316
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.ab
  %.pr = phi i32 [ %.pr.pr, %.critedgethread-pre-split ], [ %i.fm, %bb.ab ] ; 2 uses
  %i.fn = icmp eq i32 %.pr, 0
  br i1 %i.fn, label %bb.ac, label %bb.a

bb.ac:                                            ; preds = %.critedge
  %i.fo = load ptr, ptr %5, align 8, !tbaa !935   ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.fo, %i.b
  %i.fp = icmp eq ptr %i.fo, null
  %or.cond.i.i.i71 = or i1 %.not.i.i.i70, %i.fp
  br i1 %or.cond.i.i.i71, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fo)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #31
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context16cache_generationEjPKN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !884
  %i.e = lshr i32 %i.d, 1
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !744
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %4 = load i32, ptr %i.i, align 4
  %i.j = and i32 %4, 8388607
  %i.k = icmp ugt i32 %i.j, %3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !629
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !760
  tail call void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.n, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !31
}

declare noundef i32 @_ZNK3smt18quantifier_manager14get_generationEP10quantifier(ptr noundef nonnull align 8 dereferenceable(13), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !935    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context22reset_cache_generationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10728) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9152 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9164 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !655
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !659  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9160 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !654  ; 5 uses
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 2305843009213693951 ; 2 uses
  %i.m = and i64 %i.l, 2305843009213693951        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 4611686018427387902
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.h, %.lr.ph.i.preheader.new ], [ %i.w, %bb.g ] ; 4 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = load ptr, ptr %.013.i, align 8, !tbaa !658
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %.013.i, align 8, !tbaa !658
  br label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = add i32 %.0712.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %i.r, %bb.d ], [ %.0712.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !658
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  store ptr null, ptr %i.s, align 8, !tbaa !658
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.v = add i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i32 [ %i.v, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1319

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %i.x = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.w, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.0712.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.y = load ptr, ptr %.013.i.epil.init, align 8, !tbaa !658
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  store ptr null, ptr %.013.i.epil.init, align 8, !tbaa !658
  br label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.aa = add i32 %.0712.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.i, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.aa, %bb.i ], [ %.0712.i.epil.init, %bb.h ]
  %i.ab = shl i32 %.1.i.lcssa, 2
  %i.ac = icmp ugt i32 %i.j, 16
  %i.ad = mul i32 %i.j, 3
  %i.ae = icmp ugt i32 %i.ab, %i.ad
  %or.cond18.i = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond18.i, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.af = icmp eq ptr %i.h, null
  br i1 %i.af, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !654
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i: ; preds = %bb.k, %bb.j
  %i.ag = phi i32 [ %i.j, %bb.j ], [ %.pre.i, %bb.k ]
  store ptr null, ptr %i.a, align 8, !tbaa !659
  %i.ah = lshr i32 %i.ag, 1                       ; 3 uses
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !654
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.ak = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aj) ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.aj, i1 false), !tbaa !658
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit.i
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !659
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, %._crit_edge.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !655
  store i32 0, ptr %i.e, align 8, !tbaa !656
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit: ; preds = %bb.a, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9128 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9140 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !649
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9144 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  %or.cond.i.i = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %or.cond.i.i, label %_ZN7obj_mapI4exprjE5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5resetEv.exit
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !653 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9136 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !648 ; 5 uses
  %.not11.i.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1152921504606846975 ; 2 uses
  %i.ax = and i64 %i.aw, 1152921504606846975      ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3smt7context16resolve_conflictEv:bb.a

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !647
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !644
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !744
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, -67108865
  store i64 %i.aw, ptr %i.au, align 8
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.al, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.al, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ax = add nsw i64 %wide.trip.count.i, -1
  %i.ay = icmp eq i64 %i.ax, %i.al
  br i1 %i.ay, label %_ZN3smt7context37forget_phase_of_vars_in_current_levelEv.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !647
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !644
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !744
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, -67108865
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !647
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !644
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !744
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, -67108865
  store i64 %i.bt, ptr %i.br, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN3smt7context37forget_phase_of_vars_in_current_levelEv.exit, label %.lr.ph.i.new, !llvm.loop !46

_ZN3smt7context37forget_phase_of_vars_in_current_levelEv.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !647 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3smt7context37forget_phase_of_vars_in_current_levelEv.exit
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 0, ptr %i.bw, align 4, !tbaa !644
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %_ZN3smt7context37forget_phase_of_vars_in_current_levelEv.exit, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !791 ; 2 uses
  %.not.i52 = icmp eq ptr %i.by, null
  br i1 %.not.i52, label %_ZN6vectorIN3smt7context6new_eqELb0EjE5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  store i32 0, ptr %i.bz, align 4, !tbaa !644
  br label %_ZN6vectorIN3smt7context6new_eqELb0EjE5resetEv.exit

_ZN6vectorIN3smt7context6new_eqELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !790 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cb, null
  br i1 %.not.i53, label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIN3smt7context6new_eqELb0EjE5resetEv.exit
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  store i32 0, ptr %i.cc, align 4, !tbaa !644
  br label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit

_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIN3smt7context6new_eqELb0EjE5resetEv.exit, %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !790 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ce, null
  br i1 %.not.i54, label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit55, label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 0, ptr %i.cf, align 4, !tbaa !644
  br label %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit55

_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit55: ; preds = %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 9096 ; 6 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !645 ; 2 uses
  %.sroa.040.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !643
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 9088
  %.sroa.039.0.copyload = load i32, ptr %i.ci, align 8, !tbaa !644
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(356) %i.ch, ptr %.sroa.040.0.copyload, i32 %.sroa.039.0.copyload) ; 2 uses
  br i1 %i.cm, label %bb.l, label %bb.bi

bb.l:                                             ; preds = %_ZN6vectorIN3smt7context9new_th_eqELb0EjE5resetEv.exit55
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !645 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !1485 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !647 ; 10 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !644
  br label %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit

_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i.i57 = phi i32 [ %i.cu, %bb.m ], [ 0, %bb.l ] ; 8 uses
  %.sroa.0.0.copyload = load i32, ptr %i.cr, align 4, !tbaa !644
  %i.cv = lshr i32 %.sroa.0.0.copyload, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8968 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !744
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 16777215                 ; 2 uses
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !584, !nonnull !585, !align !586 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 647
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !1486, !range !815, !noundef !585
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp eq i32 %.0.i.i57, 1
  %or.cond = and i1 %i.di, %i.dh
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !681
  %i.dl = add i32 %i.dk, 1
  %i.dm = icmp ugt i32 %i.dd, %i.dl
  br i1 %i.dm, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 712
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !743
  %.not106 = icmp eq i32 %i.dq, 0
  br i1 %.not106, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 9008
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !782 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !644
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i32 [ %i.dv, %bb.q ], [ 0, %bb.p ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 648
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !1487
  %i.dy = icmp ult i32 %.0.i, %i.dx
  %cond.fr = freeze i1 %i.dy                      ; 2 uses
  %i.dz = add nsw i32 %i.dd, -1
  %spec.select = select i1 %cond.fr, i32 %i.dz, i32 %i.cp
  br label %.thread

.thread:                                          ; preds = %bb.r, %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit, %bb.n, %bb.o
  %i.ea = phi i1 [ false, %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit ], [ %cond.fr, %bb.r ], [ false, %bb.o ], [ false, %bb.n ]
  %i.eb = phi i32 [ %i.cp, %_ZNK3smt19conflict_resolution22get_lemma_num_literalsEv.exit ], [ %spec.select, %bb.r ], [ %i.cp, %bb.o ], [ %i.cp, %bb.n ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 84
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !1488
  %i.ee = icmp ule i32 %i.ed, %i.eb
  %.not.i58 = icmp eq i32 %.0.i.i57, 0            ; 4 uses
  %or.cond101 = or i1 %.not.i58, %i.ee
  br i1 %or.cond101, label %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %wide.trip.count.i60 = zext i32 %.0.i.i57 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.lr.ph.i59
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.i59 ], [ %indvars.iv.next.i62, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i61
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !884
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = load ptr, ptr %i.cw, align 8, !tbaa !744
  %i.ek = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %3 = load i32, ptr %i.em, align 4
  %i.en = and i32 %3, 8388607
  %i.eo = icmp ugt i32 %i.en, %i.eb
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !629
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ek
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !760
  tail call void @_ZN3smt7context16cache_generationEP4exprj(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.er, i32 noundef %i.eb)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i60
  br i1 %exitcond.not.i63, label %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit, label %bb.s, !llvm.loop !31

_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit: ; preds = %bb.u, %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !699, !nonnull !585, !align !586 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 888
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !878 ; 2 uses
  %.not107 = icmp eq ptr %i.ev, null
  br i1 %.not107, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8636
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !867, !range !815, !noundef !585
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.44, i64 noundef 11) ; 0 uses
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 888
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !878
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3smt7context16display_literalsERSojPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i32 noundef %.0.i.i57, ptr noundef nonnull %i.cr) ; 0 uses
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 888
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !878
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %.pre129 = load ptr, ptr %i.es, align 8, !tbaa !699
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit
  %i.fl = phi ptr [ %.pre129, %bb.w ], [ %i.et, %bb.v ], [ %i.et, %_ZN3smt7context16cache_generationEjPKN3sat7literalEj.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 712
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !743
  %.not108 = icmp eq i32 %i.fn, 0
  br i1 %.not108, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = load ptr, ptr %i.cg, align 8, !tbaa !645
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 304
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !646
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.047 = phi ptr [ %i.fq, %bb.y ], [ null, %bb.x ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.fs = load ptr, ptr %i.q, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 520
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !644
  %i.fv = load i32, ptr %i.fr, align 8, !tbaa !644
  %i.fw = tail call noundef i32 @llvm.umin.i32(i32 %i.fu, i32 %i.fv)
  %.not109 = icmp eq i32 %i.fw, 0
  br i1 %.not109, label %_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 10560 ; 4 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !691 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i, label %_ZN6vectorIbLb0EjE5resetEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -4
  store i32 0, ptr %i.fz, align 4, !tbaa !644
  br label %_ZN6vectorIbLb0EjE5resetEv.exit.i

_ZN6vectorIbLb0EjE5resetEv.exit.i:                ; preds = %bb.ab, %bb.aa
  br i1 %.not.i58, label %_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %_ZN6vectorIbLb0EjE5resetEv.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %wide.trip.count.i66 = zext i32 %.0.i.i57 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6vectorIbLb0EjE9push_backEOb.exit.i, %.lr.ph.i65
  %i.gc = phi ptr [ %i.fy, %.lr.ph.i65 ], [ %i.hc, %_ZN6vectorIbLb0EjE9push_backEOb.exit.i ]
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i65 ], [ %indvars.iv.next.i68, %_ZN6vectorIbLb0EjE9push_backEOb.exit.i ] ; 2 uses
  %i.gd = load ptr, ptr %i.q, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 520
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !644
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !644
  %i.gh = tail call noundef i32 @llvm.umin.i32(i32 %i.gf, i32 %i.gg)
  %.not.i.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i.i, label %_ZNK3smt7context11is_relevantEN3sat7literalE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i67
  %.sroa.0.0.copyload.i = load i32, ptr %i.gi, align 4, !tbaa !644
  %i.gj = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !629
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !760
  %i.go = load ptr, ptr %i.gb, align 8, !tbaa !622 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !73
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef %i.gn), !inline_history !1458
  %i.gt = zext i1 %i.gs to i8
  %.pre.i = load ptr, ptr %i.fx, align 8, !tbaa !691
  br label %_ZNK3smt7context11is_relevantEN3sat7literalE.exit.i

_ZNK3smt7context11is_relevantEN3sat7literalE.exit.i: ; preds = %bb.ad, %bb.ac
  %i.gu = phi ptr [ %i.gc, %bb.ac ], [ %.pre.i, %bb.ad ] ; 4 uses
  %i.gv = phi i8 [ 1, %bb.ac ], [ %i.gt, %bb.ad ]
  %i.gw = icmp eq ptr %i.gu, null
  br i1 %i.gw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK3smt7context11is_relevantEN3sat7literalE.exit.i
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !644 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gu, i64 -8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !644
  %i.hb = icmp eq i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.af, label %_ZN6vectorIbLb0EjE9push_backEOb.exit.i

bb.af:                                            ; preds = %bb.ae, %_ZNK3smt7context11is_relevantEN3sat7literalE.exit.i
  tail call void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  %.pre.i.i = load ptr, ptr %i.fx, align 8, !tbaa !691 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !644
  br label %_ZN6vectorIbLb0EjE9push_backEOb.exit.i

_ZN6vectorIbLb0EjE9push_backEOb.exit.i:           ; preds = %bb.af, %bb.ae
  %i.hc = phi ptr [ %.pre.i.i, %bb.af ], [ %i.gu, %bb.ae ] ; 3 uses
  %i.hd = phi i32 [ %.pre2.i.i, %bb.af ], [ %i.gy, %bb.ae ] ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hf = zext i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hf
  store i8 %i.gv, ptr %i.hg, align 1, !tbaa !839
  %i.hh = add i32 %i.hd, 1
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !644
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.next.i68, %wide.trip.count.i66
  br i1 %exitcond.not.i69, label %_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit, label %bb.ac, !llvm.loop !47

_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit: ; preds = %_ZN6vectorIbLb0EjE9push_backEOb.exit.i, %_ZN6vectorIbLb0EjE5resetEv.exit.i, %bb.z
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 9608 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !679
  %i.hk = sub i32 %i.hj, %i.eb
  %i.hl = tail call noundef i32 @_ZN3smt7context14pop_scope_coreEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %i.hk)
  %i.hm = load ptr, ptr %i.cg, align 8, !tbaa !645 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 84
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !1488
  %i.hp = load i32, ptr %i.hi, align 8, !tbaa !679
  %i.hq = icmp ugt i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !629
  br i1 %.not.i58, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ag
  %wide.trip.count = zext i32 %.0.i.i57 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !644 ; 2 uses
  %i.hv = lshr i32 %i.hu, 1
  %.not = icmp ult i32 %i.hv, %i.hl
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !760 ; 2 uses
  tail call void @_ZN3smt7context11internalizeEP4exprb(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.hx, i1 noundef zeroext true)
  %i.hy = tail call i32 @_ZNK3smt7context11get_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef %i.hx)
  %i.hz = and i32 %i.hu, 1
  %spec.select102 = xor i32 %i.hy, %i.hz
  store i32 %spec.select102, ptr %i.ht, align 4, !tbaa !644
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1459

.loopexit:                                        ; preds = %bb.ai, %bb.ag, %_ZN3smt7context16record_relevancyEjPKN3sat7literalE.exit
  %i.ia = load ptr, ptr %i.q, align 8, !tbaa !584, !nonnull !585, !align !586
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 520
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !644
  %i.id = load i32, ptr %i.fr, align 8, !tbaa !644
end_hunk_3
