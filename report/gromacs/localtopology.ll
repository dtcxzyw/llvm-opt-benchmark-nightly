inline.NumInlined: 1033
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL25assignInteractionsForAtomILb1EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE:bb.a
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !363
  %i.cu = icmp eq i32 %i.ct, %i.bv
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

_ZNK11gmx_ga2la_t4findEi.exit:                    ; preds = %bb.i, %._crit_edge
  %.0.i = phi ptr [ %i.cb, %bb.i ], [ %i.cl, %._crit_edge ]
  %i.cv = load i32, ptr %.0.i, align 4, !tbaa !369
  store i32 %i.cv, ptr %i.v, align 8, !tbaa !14
  br label %.loopexit

bb.k:                                             ; preds = %_ZNK11gmx_ga2la_t4findEi.exit63.1, %.lr.ph13.split.new
  %indvars.iv = phi i64 [ 1, %.lr.ph13.split.new ], [ %indvars.iv.next.1, %_ZNK11gmx_ga2la_t4findEi.exit63.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph13.split.new ], [ %niter.next.1, %_ZNK11gmx_ga2la_t4findEi.exit63.1 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %.reass = add i32 %i.cx, %invariant.op          ; 3 uses
  %i.cy = and i32 %i.bj, %.reass
  %i.cz = sext i32 %i.cy to i64                   ; 3 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !363
  %i.dc = icmp eq i32 %i.db, %.reass
  br i1 %i.dc, label %_ZNK11gmx_ga2la_t4findEi.exit63, label %.lr.ph8

_ZNK11gmx_ga2la_t4findEi.exit63:                  ; preds = %.lr.ph8, %bb.k
  %i.dd = phi i64 [ %i.cz, %bb.k ], [ %i.ei, %.lr.ph8 ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !369
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %.reass.1 = add i32 %i.dj, %invariant.op        ; 3 uses
  %i.dk = and i32 %i.bj, %.reass.1
  %i.dl = sext i32 %i.dk to i64                   ; 3 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !363
  %i.do = icmp eq i32 %i.dn, %.reass.1
  br i1 %i.do, label %_ZNK11gmx_ga2la_t4findEi.exit63.1, label %.lr.ph8.1

.lr.ph8.1:                                        ; preds = %_ZNK11gmx_ga2la_t4findEi.exit63, %.lr.ph8.1
  %i.dp = phi i64 [ %i.du, %.lr.ph8.1 ], [ %i.dl, %_ZNK11gmx_ga2la_t4findEi.exit63 ]
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !365 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = zext nneg i32 %i.ds to i64              ; 3 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !363
  %i.dx = icmp eq i32 %i.dw, %.reass.1
  br i1 %i.dx, label %_ZNK11gmx_ga2la_t4findEi.exit63.1, label %.lr.ph8.1

_ZNK11gmx_ga2la_t4findEi.exit63.1:                ; preds = %.lr.ph8.1, %_ZNK11gmx_ga2la_t4findEi.exit63
  %i.dy = phi i64 [ %i.dl, %_ZNK11gmx_ga2la_t4findEi.exit63 ], [ %i.du, %.lr.ph8.1 ]
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !369
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit3.unr-lcssa, label %bb.k, !llvm.loop !380

.lr.ph8:                                          ; preds = %bb.k, %.lr.ph8
  %i.ed = phi i64 [ %i.ei, %.lr.ph8 ], [ %i.cz, %bb.k ]
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !365 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = zext nneg i32 %i.eg to i64              ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !363
  %i.el = icmp eq i32 %i.ek, %.reass
  br i1 %i.el, label %_ZNK11gmx_ga2la_t4findEi.exit63, label %.lr.ph8

.loopexit.loopexit3.unr-lcssa:                    ; preds = %_ZNK11gmx_ga2la_t4findEi.exit63.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit3.unr-lcssa, %.lr.ph13.split
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph13.split ], [ %indvars.iv.next.1, %.loopexit.loopexit3.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %.reass.epil = add i32 %i.en, %invariant.op     ; 3 uses
  %i.eo = and i32 %i.bj, %.reass.epil
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !363
  %i.es = icmp eq i32 %i.er, %.reass.epil
  br i1 %i.es, label %_ZNK11gmx_ga2la_t4findEi.exit63.epil, label %.lr.ph8.epil

.lr.ph8.epil:                                     ; preds = %.epil.preheader, %.lr.ph8.epil
  %i.et = phi i64 [ %i.ey, %.lr.ph8.epil ], [ %i.ep, %.epil.preheader ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !365 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = zext nneg i32 %i.ew to i64              ; 3 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !363
  %i.fb = icmp eq i32 %i.fa, %.reass.epil
  br i1 %i.fb, label %_ZNK11gmx_ga2la_t4findEi.exit63.epil, label %.lr.ph8.epil

_ZNK11gmx_ga2la_t4findEi.exit63.epil:             ; preds = %.lr.ph8.epil, %.epil.preheader
  %i.fc = phi i64 [ %i.ep, %.epil.preheader ], [ %i.ey, %.lr.ph8.epil ]
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !369
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11gmx_ga2la_t4findEi.exit63.epil, %.loopexit.loopexit3.unr-lcssa, %_ZNK11gmx_ga2la_t4findEi.exit63.us, %middle.block, %.preheader, %bb.g, %_ZNK11gmx_ga2la_t4findEi.exit
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ae ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !142 ; 2 uses
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !141 ; 5 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = ashr exact i64 %i.fn, 2                 ; 4 uses
  %i.fp = add nsw i64 %i.fo, 1                    ; 2 uses
  %i.fq = sext i32 %i.ah to i64
  %i.fr = add nsw i64 %i.fp, %i.fq                ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %i.fo
  br i1 %i.fs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ft = sub nuw nsw i64 %i.fr, %i.fo
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.ft)
  %.pre.i = load ptr, ptr %i.fh, align 8, !tbaa !141
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.m:                                             ; preds = %.loopexit
  %i.fu = icmp ult i64 %i.fr, %i.fo
  br i1 %i.fu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fr ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fj, %i.fv
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.n
  store ptr %i.fv, ptr %i.fi, align 8, !tbaa !142
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.n, %bb.m, %bb.l
  %i.fw = phi ptr [ %.pre.i, %bb.l ], [ %i.fk, %bb.m ], [ %i.fk, %bb.n ], [ %i.fk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn
  store i32 %i.ao, ptr %i.fx, align 4, !tbaa !14
  %i.fy = icmp sgt i32 %i.ah, 0
  br i1 %i.fy, label %.lr.ph.i, label %_ZN15InteractionList9push_backEiiPKi.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.fz = getelementptr [4 x i8], ptr %i.fw, i64 %i.fp
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  %i.ga = shl nuw nsw i64 %wide.trip.count.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fz, ptr nonnull align 4 %i.s, i64 %i.ga, i1 false), !tbaa !14
  br label %_ZN15InteractionList9push_backEiiPKi.exit

_ZN15InteractionList9push_backEiiPKi.exit:        ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  br i1 %5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15InteractionList9push_backEiiPKi.exit
  %i.gb = load i32, ptr %i.ai, align 4, !tbaa !377
  %i.gc = and i32 %i.gb, 512
  %.not58 = icmp eq i32 %i.gc, 0
  br i1 %.not58, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %_ZN15InteractionList9push_backEiiPKi.exit
  %i.gd = add nsw i32 %.015, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.f, %bb.c, %bb.d
  %.2 = phi i32 [ %.015, %bb.d ], [ %.015, %bb.c ], [ %i.gd, %bb.p ], [ %.015, %bb.o ], [ %.015, %bb.f ] ; 2 uses
  %i.ge = tail call noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.aa)
  %i.gf = add i32 %.05314, 2
  %i.gg = add i32 %i.gf, %i.ge                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.gh = icmp slt i32 %i.gg, %i.k
  br i1 %i.gh, label %bb.b, label %._crit_edge18, !llvm.loop !381

._crit_edge18:                                    ; preds = %.critedge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %.critedge ]
  ret i32 %.0.lcssa
}

declare noundef zeroext i1 @_ZNK17gmx_reverse_top_t21hasPositionRestraintsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i32 @_ZL31assignPositionRestraintsForAtomRK12AtomIndexSetiiRK15reverse_ilist_tRK14gmx_molblock_tPK9t_iparamsP22InteractionDefinitions(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8.i = alloca { [3 x float], [3 x float], [3 x float] }, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !339
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !141
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 1336
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 1344
  %i.o = mul nsw i32 %2, %1                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 1312 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1320
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.051 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.x ]  ; 2 uses
  %.03250 = phi i32 [ %i.h, %.lr.ph ], [ %i.eu, %bb.x ] ; 3 uses
  %i.aa = sext i32 %.03250 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14 ; 4 uses
  %i.ad = and i32 %i.ac, -2
  %or.cond = icmp eq i32 %i.ad, 52
  br i1 %or.cond, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.ae = sext i32 %.03250 to i64
  %i.af = getelementptr [4 x i8], ptr %i.b, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = icmp eq i32 %i.ac, 52
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.aj = load i32, ptr %0, align 4, !tbaa !336
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !339 ; 2 uses
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [48 x i8], ptr %5, i64 %i.al ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 4 uses
  br i1 %i.ah, label %.split, label %.split34

.split:                                           ; preds = %bb.c
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = add nsw i32 %i.ak, %i.o
  %.sroa.11.i.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 36 ; 2 uses
  %.sroa.17.i.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.17.0..sroa_idx.i, align 4, !tbaa !382
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !383
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !15 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !15 ; 3 uses
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !384 ; 2 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !384
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.at ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split
  %.sroa.15.0.i = phi float [ %i.bf, %bb.d ], [ %i.ay, %.split ] ; 2 uses
  %i.bg = phi <2 x float> [ %i.bd, %bb.d ], [ %i.aw, %.split ] ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !270 ; 8 uses
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !385
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store <2 x float> %i.aw, ptr %i.bh, align 4
  %.sroa.9.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store float %i.ay, ptr %.sroa.9.0..sroa_idx25.i, align 4
  %.sroa.11.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store <3 x float> %.sroa.11.i.sroa.0.0.copyload, ptr %.sroa.11.0..sroa_idx29.i, align 4
  %.sroa.1131.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store <2 x float> %i.bg, ptr %.sroa.1131.0..sroa_idx32.i, align 4
  %.sroa.15.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store float %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx40.i, align 4
  %.sroa.17.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  store <3 x float> %.sroa.17.i.sroa.0.0.copyload, ptr %.sroa.17.0..sroa_idx44.i, align 4, !tbaa !382
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !270
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.bk, ptr %i.y, align 8, !tbaa !270
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !273 ; 4 uses
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775776
  br i1 %i.bp, label %bb.h, label %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bq = sdiv exact i64 %i.bo, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 192153584101141162)
  %i.bu = select i1 %i.bs, i64 192153584101141162, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = mul nuw nsw i64 %i.bu, 48
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #21 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 7 uses
  store <2 x float> %i.aw, ptr %i.bx, align 4
  %.sroa.9.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.ay, ptr %.sroa.9.0..sroa_idx27.i, align 4
  %.sroa.11.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.11.0..sroa_idx30.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.11.0..sroa_idx.i, i64 12, i1 false)
  %.sroa.1131.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store <2 x float> %i.bg, ptr %.sroa.1131.0..sroa_idx34.i, align 4
  %.sroa.15.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store float %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx42.i, align 4
  %.sroa.17.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.17.0..sroa_idx45.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.17.0..sroa_idx.i, i64 12, i1 false)
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.i, label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.not.i17.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.bw, ptr %i.x, align 8, !tbaa !273
  store ptr %i.bz, ptr %i.y, align 8, !tbaa !270
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.z, align 8, !tbaa !385
  br label %bb.p

.split34:                                         ; preds = %bb.c
  %.val = load ptr, ptr %i.l, align 8, !tbaa !383
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = add nsw i32 %i.ak, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.8.i, ptr noundef nonnull readonly align 4 dereferenceable(36) %.sroa.11.0..sroa_idx.i, i64 36, i1 false), !tbaa.struct !386
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ch ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !15 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !270 ; 5 uses
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !385
  %.not.i.i36 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split34
  store <2 x float> %i.cj, ptr %i.cm, align 4
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %i.cl, ptr %.sroa.7.0..sroa_idx7.i, align 4
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.8.i, i64 36, i1 false), !tbaa.struct !386
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !270
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %i.cp, ptr %i.q, align 8, !tbaa !270
  br label %_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit

bb.l:                                             ; preds = %.split34
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !273 ; 4 uses
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775776
  br i1 %i.cu, label %bb.m, label %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i37

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i37: ; preds = %bb.l
  %i.cv = sdiv exact i64 %i.ct, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i38 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i38, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 192153584101141162)
  %i.cz = select i1 %i.cx, i64 192153584101141162, i64 %i.cy ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.da = mul nuw nsw i64 %i.cz, 48
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #21 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 4 uses
  store <2 x float> %i.cj, ptr %i.dc, align 4
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store float %i.cl, ptr %.sroa.7.0..sroa_idx9.i, align 4
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.8.0..sroa_idx12.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.11.0..sroa_idx.i, i64 36, i1 false)
  %i.dd = icmp sgt i64 %i.ct, 0
  br i1 %i.dd, label %bb.n, label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i40

bb.n:                                             ; preds = %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i37
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.db, ptr align 4 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i40

_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i40: ; preds = %bb.n, %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i37
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %.not.i17.i.i.i41 = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i.i41, label %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i42, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #22
  br label %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i42

_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i42: ; preds = %bb.o, %_ZNSt6vectorI9t_iparamsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i40
  store ptr %i.db, ptr %i.p, align 8, !tbaa !273
  store ptr %i.de, ptr %i.q, align 8, !tbaa !270
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.df, ptr %i.r, align 8, !tbaa !385
  br label %_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit

_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit: ; preds = %bb.k, %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.dg = zext nneg i32 %i.ac to i64
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.dg
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.f, %_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit
  %.in.in.in = phi i64 [ %i.cf, %_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit ], [ %i.ar, %bb.f ], [ %i.ar, %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %phi.call = phi ptr [ %i.dh, %_ZL12add_fbposresiiiRK14gmx_molblock_tN3gmx8ArrayRefIiEEPK9t_iparamsP22InteractionDefinitions.exit ], [ %i.t, %bb.f ], [ %i.t, %_ZNSt6vectorI9t_iparamsSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 5 uses
  %.in.in = lshr exact i64 %.in.in.in, 2
  %.in = trunc i64 %.in.in to i32
  %i.di = sdiv i32 %.in, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %phi.call, i64 8 ; 4 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !142 ; 5 uses
  %i.dl = load ptr, ptr %phi.call, align 8, !tbaa !141 ; 7 uses
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 6 uses
  %i.dp = ashr exact i64 %i.do, 2                 ; 5 uses
  %i.dq = icmp ult i64 %i.dp, -2
  br i1 %i.dq, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %phi.call, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !373
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = sub i64 %i.dt, %i.dm
  %i.dv = ashr exact i64 %i.du, 2                 ; 2 uses
  %i.dw = icmp ult i64 %i.dp, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = xor i64 %i.dp, 2305843009213693951      ; 2 uses
  %i.dy = icmp ule i64 %i.dv, %i.dx
  tail call void @llvm.assume(i1 %i.dy)
  %.not28.i = icmp ult i64 %i.dv, 2
  br i1 %.not28.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.dk, align 4, !tbaa !14
  %i.dz = getelementptr i8, ptr %i.dk, i64 4
  store i32 0, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.ea, ptr %i.dj, align 8, !tbaa !142
  %.pre.i.pre = load ptr, ptr %phi.call, align 8, !tbaa !141
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.q
  %i.eb = icmp samesign ult i64 %i.dx, 2
  br i1 %i.eb, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.s
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 2)
  %i.ec = add nuw nsw i64 %.sroa.speculated.i.i, %i.dp
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951) ; 2 uses
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #21 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.do ; 3 uses
  store i32 0, ptr %i.eg, align 4, !tbaa !14
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  store i32 0, ptr %i.eh, align 4
  %i.ei = icmp sgt i64 %i.do, 0
  br i1 %i.ei, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.dl, i64 %i.do, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.dl, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ej = sub i64 %i.dt, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.ej) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.ef, ptr %phi.call, align 8, !tbaa !141
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ek, ptr %i.dj, align 8, !tbaa !142
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.el, ptr %i.dr, align 8, !tbaa !373
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.w:                                             ; preds = %bb.p
  %i.em = getelementptr i8, ptr %i.dl, i64 %i.do
  %i.en = getelementptr i8, ptr %i.em, i64 8      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dk, %i.en
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.w
  store ptr %i.en, ptr %i.dj, align 8, !tbaa !142
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.w
  %i.eo = phi ptr [ %i.dl, %bb.w ], [ %i.dl, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.pre.i.pre, %bb.r ], [ %i.ef, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.do  ; 2 uses
  store i32 %i.di, ptr %i.ep, align 4, !tbaa !14
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  store i32 %i.aj, ptr %i.eq, align 4, !tbaa !14
  %i.er = add nsw i32 %.051, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %.1 = phi i32 [ %i.er, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ], [ %.051, %bb.b ] ; 2 uses
  %i.es = tail call noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.ac)
  %i.et = add i32 %.03250, 2
  %i.eu = add i32 %i.et, %i.es                    ; 2 uses
  %i.ev = icmp slt i32 %i.eu, %i.j
  br i1 %i.ev, label %bb.b, label %._crit_edge, !llvm.loop !387

._crit_edge:                                      ; preds = %bb.x, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.x ]
  ret i32 %.0.lcssa
}

declare noundef zeroext i1 @_ZNK17gmx_reverse_top_t29hasIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t44interactionListForIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9add_vsiteRK11gmx_ga2la_tRK15reverse_ilist_t19InteractionFunctionibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP22InteractionDefinitions(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %6, ptr noundef %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::array.303", align 4   ; 8 uses
  %9 = alloca %struct.AtomIndexSet, align 4       ; 6 uses
  %10 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %i.a = load ptr, ptr %6, align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.e = load i32, ptr %i.a, align 4, !tbaa !14
  %i.f = load i32, ptr %5, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = xor i32 %i.h, -1
  %.sink.i = select i1 %4, i32 %i.f, i32 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 %.sink.i, ptr %i.j, align 4, !tbaa !14
  %.not32.i = icmp slt i32 %3, 2                  ; 2 uses
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !339
  %invariant.op.i = sub i32 %i.h, %i.l            ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i8, ptr %i.m, align 8, !tbaa !348
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !350    ; 2 uses
  %i.q = add nuw i32 %3, 1
  %wide.trip.count40.i = zext i32 %i.q to i64     ; 2 uses
  %i.r = add nsw i64 %wide.trip.count40.i, -2     ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = or disjoint i64 %index, 2                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %wide.load = load <8 x i32>, ptr %i.u, align 4, !tbaa !14
  %i.v = add <8 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.w = sext <8 x i32> %i.v to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %i.p, <8 x i64> %i.w ; 2 uses
  %wide.gep64 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep64, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !353
  %i.x = icmp eq <8 x i32> %wide.masked.gather, zeroinitializer ; 2 uses
  %i.y = xor <8 x i32> %i.v, splat (i32 -1)
  %wide.masked.gather65 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.x, <8 x i32> poison), !tbaa !14
  %predphi = select <8 x i1> %i.x, <8 x i32> %wide.masked.gather65, <8 x i32> %i.y
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.t
  store <8 x i32> %predphi, ptr %i.z, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us.i, %middle.block
  %indvars.iv37.i.ph = phi i64 [ 2, %.lr.ph.split.us.i ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %bb.c ], [ %indvars.iv37.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %.reass.us.i = add i32 %i.ac, %invariant.op.i   ; 2 uses
  %i.ad = sext i32 %.reass.us.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !353
  %cond.i = icmp eq i32 %i.ag, 0
  br i1 %cond.i, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.us.i, label %bb.b

_ZNK11gmx_ga2la_t8findHomeEi.exit.us.i:           ; preds = %scalar.ph
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.ai = xor i32 %.reass.us.i, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK11gmx_ga2la_t8findHomeEi.exit.us.i
  %.sink42.i = phi i32 [ %i.ah, %_ZNK11gmx_ga2la_t8findHomeEi.exit.us.i ], [ %i.ai, %bb.b ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv37.i
  store i32 %.sink42.i, ptr %i.aj, align 4, !tbaa !14
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !389

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !355 ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !362   ; 3 uses
  %i.an = add nuw i32 %3, 1                       ; 3 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ao = icmp eq i32 %i.an, 3
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.split.i.new

.lr.ph.split.i.new:                               ; preds = %.lr.ph.split.i
  %i.ap = and i64 %wide.trip.count.i, 4294967294
  %i.aq = add nsw i64 %i.ap, -4
  br label %bb.i

._crit_edge.i.loopexit66.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit66.unr-lcssa, %.lr.ph.split.i
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.split.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit66.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14
  %.reass.i.epil = add i32 %i.as, %invariant.op.i ; 3 uses
  %i.at = and i32 %.reass.i.epil, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.epil.preheader
  %.0.i.i.i.i.epil = phi i32 [ %i.at, %.epil.preheader ], [ %i.az, %bb.e ]
  %i.au = sext i32 %.0.i.i.i.i.epil to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.au ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !363
  %i.ax = icmp eq i32 %i.aw, %.reass.i.epil
  br i1 %i.ax, label %_ZNK11gmx_ga2la_t4findEi.exit.i.i.epil, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !365 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.d, label %.loopexit.i.epil, !llvm.loop !366

_ZNK11gmx_ga2la_t4findEi.exit.i.i.epil:           ; preds = %bb.d
  %.phi.trans.insert.i.i.epil = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre.i24.i.epil = load i32, ptr %.phi.trans.insert.i.i.epil, align 4, !tbaa !353
  %i.bb = icmp eq i32 %.pre.i24.i.epil, 0
  br i1 %i.bb, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.epil, label %.loopexit.i.epil

.loopexit.i.epil:                                 ; preds = %bb.e, %_ZNK11gmx_ga2la_t4findEi.exit.i.i.epil
  %i.bc = xor i32 %.reass.i.epil, -1
  br label %._crit_edge.i.loopexit66.epilog-lcssa

_ZNK11gmx_ga2la_t8findHomeEi.exit.i.epil:         ; preds = %_ZNK11gmx_ga2la_t4findEi.exit.i.i.epil
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  br label %._crit_edge.i.loopexit66.epilog-lcssa

._crit_edge.i.loopexit66.epilog-lcssa:            ; preds = %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.epil, %.loopexit.i.epil
  %.sink51.i.epil = phi i32 [ %i.bc, %.loopexit.i.epil ], [ %i.be, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.epil ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.epil.init
  store i32 %.sink51.i.epil, ptr %i.bf, align 4, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit66.epilog-lcssa, %._crit_edge.i.loopexit66.unr-lcssa, %bb.c, %middle.block, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !142 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !141 ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 2                 ; 4 uses
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = sext i32 %3 to i64
  %i.bp = add nsw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.bm
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.br = sub nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.br)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !141
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.bs = icmp ult i64 %i.bp, %i.bm
  br i1 %i.bs, label %bb.h, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bp ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.h
  store ptr %i.bt, ptr %i.bg, align 8, !tbaa !142
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.h, %bb.g, %bb.f
  %i.bu = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %i.bi, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !14
  %i.bw = icmp sgt i32 %3, 0
  br i1 %i.bw, label %.lr.ph.i.i, label %_ZL20add_ifunc_for_vsitesRK11gmx_ga2la_tibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP15InteractionList.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %i.bx = getelementptr [4 x i8], ptr %i.bu, i64 %i.bn
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %i.by = shl nuw nsw i64 %wide.trip.count.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bx, ptr nonnull align 4 %i.j, i64 %i.by, i1 false), !tbaa !14
  br label %_ZL20add_ifunc_for_vsitesRK11gmx_ga2la_tibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP15InteractionList.exit

bb.i:                                             ; preds = %bb.o, %.lr.ph.split.i.new
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.split.i.new ], [ %indvars.iv.next.i.1, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.new ], [ %niter.next.1, %bb.o ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %.reass.i = add i32 %i.ca, %invariant.op.i      ; 3 uses
  %i.cb = and i32 %.reass.i, %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.cb, %bb.i ], [ %i.ci, %bb.k ]
  %i.cc = sext i32 %.0.i.i.i.i to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.cc ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !363
  %i.cf = icmp eq i32 %i.ce, %.reass.i
  br i1 %i.cf, label %_ZNK11gmx_ga2la_t4findEi.exit.i.i, label %bb.k

_ZNK11gmx_ga2la_t4findEi.exit.i.i:                ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.pre.i24.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !353
  %i.cg = icmp eq i32 %.pre.i24.i, 0
  br i1 %i.cg, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.i, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !365 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.j, label %.loopexit.i, !llvm.loop !366

_ZNK11gmx_ga2la_t8findHomeEi.exit.i:              ; preds = %_ZNK11gmx_ga2la_t4findEi.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  br label %bb.l

.loopexit.i:                                      ; preds = %bb.k, %_ZNK11gmx_ga2la_t4findEi.exit.i.i
  %i.cm = xor i32 %.reass.i, -1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i
  %.sink51.i = phi i32 [ %i.cm, %.loopexit.i ], [ %i.cl, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  store i32 %.sink51.i, ptr %i.cn, align 4, !tbaa !14
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %.reass.i.1 = add i32 %i.cp, %invariant.op.i    ; 3 uses
  %i.cq = and i32 %.reass.i.1, %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i.i.1 = phi i32 [ %i.cq, %bb.l ], [ %i.cw, %bb.n ]
  %i.cr = sext i32 %.0.i.i.i.i.1 to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.cr ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !363
  %i.cu = icmp eq i32 %i.ct, %.reass.i.1
  br i1 %i.cu, label %_ZNK11gmx_ga2la_t4findEi.exit.i.i.1, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !365 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.m, label %.loopexit.i.1, !llvm.loop !366

_ZNK11gmx_ga2la_t4findEi.exit.i.i.1:              ; preds = %bb.m
  %.phi.trans.insert.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre.i24.i.1 = load i32, ptr %.phi.trans.insert.i.i.1, align 4, !tbaa !353
  %i.cy = icmp eq i32 %.pre.i24.i.1, 0
  br i1 %i.cy, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.1, label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.n, %_ZNK11gmx_ga2la_t4findEi.exit.i.i.1
  %i.cz = xor i32 %.reass.i.1, -1
  br label %bb.o

_ZNK11gmx_ga2la_t8findHomeEi.exit.i.1:            ; preds = %_ZNK11gmx_ga2la_t4findEi.exit.i.i.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.1, %.loopexit.i.1
  %.sink51.i.1 = phi i32 [ %i.cz, %.loopexit.i.1 ], [ %i.db, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.1 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i
  store i32 %.sink51.i.1, ptr %i.dc, align 4, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aq
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit66.unr-lcssa, label %bb.i, !llvm.loop !390

_ZL20add_ifunc_for_vsitesRK11gmx_ga2la_tibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP15InteractionList.exit: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i, %.lr.ph.i.i
  %i.dd = add nsw i32 %3, 1                       ; 2 uses
  %i.de = load ptr, ptr %i.bg, align 8, !tbaa !142
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.bu to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = sext i32 %i.dd to i64                   ; 2 uses
  %i.dk = sub nsw i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dj ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14
  %.not = icmp eq i32 %i.dn, 0
  %or.cond = or i1 %.not, %.not32.i
  br i1 %or.cond, label %.loopexit42, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZL20add_ifunc_for_vsitesRK11gmx_ga2la_tibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP15InteractionList.exit
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext nneg i32 %i.dd to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph48, %.loopexit
  %indvars.iv = phi i64 [ 2, %.lr.ph48 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.dv = load i32, ptr %i.dm, align 4, !tbaa !14
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = shl i32 2, %i.dw
  %i.dy = and i32 %i.dv, %i.dx
  %.not39 = icmp eq i32 %i.dy, 0
  br i1 %.not39, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ec = load i8, ptr @gmx_debug_at, align 1, !tbaa !145, !range !138, !noundef !139
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = load ptr, ptr @debug, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !14
  %i.eh = add nsw i32 %i.eg, 1
  %i.ei = load i32, ptr %i.do, align 4, !tbaa !339
  %i.ej = add nsw i32 %i.ei, 1
  %i.ek = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.7, i32 noundef %i.eh, i32 noundef %i.ej) #5 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = load ptr, ptr %1, align 8, !tbaa !141
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !14
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %i.eu = phi i32 [ %i.fv, %bb.v ], [ %i.em, %bb.t ] ; 2 uses
  %.03745 = phi i32 [ %i.fu, %bb.v ], [ %i.eq, %bb.t ] ; 3 uses
  %i.ev = sext i32 %.03745 to i64
  %i.ew = load ptr, ptr %i.dp, align 8, !tbaa !141 ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14 ; 3 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !377
  %i.fd = and i32 %i.fc, 2
  %.not40 = icmp eq i32 %i.fd, 0
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store i32 -1, ptr %9, align 4, !tbaa !336
  %i.fg = load i32, ptr %i.g, align 4, !tbaa !338
  %i.fh = add nsw i32 %i.fg, %i.eu
  %i.fi = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.fj = sub i32 %i.fh, %i.fi
  store i32 %i.fj, ptr %i.dq, align 4, !tbaa !338
  store i32 %i.eu, ptr %i.ds, align 4, !tbaa !339
  %i.fk = sext i32 %.03745 to i64
  %i.fl = getelementptr [4 x i8], ptr %i.ew, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 4
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !142
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.ew to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.ew, i64 %i.fq
  store ptr %i.fm, ptr %10, align 8
  store ptr %i.fr, ptr %i.du, align 8
  call fastcc void @_ZL9add_vsiteRK11gmx_ga2la_tRK15reverse_ilist_t19InteractionFunctionibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP22InteractionDefinitions(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ey, i32 noundef %i.ff, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %10, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph
  %i.fs = tail call noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.ey)
  %i.ft = add i32 %.03745, 2
  %i.fu = add i32 %i.ft, %i.fs                    ; 2 uses
  %i.fv = load i32, ptr %i.el, align 4, !tbaa !14 ; 2 uses
  %i.fw = load ptr, ptr %1, align 8, !tbaa !141
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr [4 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14
  %i.gb = icmp slt i32 %i.fu, %i.ga
  br i1 %i.gb, label %.lr.ph, label %.loopexit, !llvm.loop !391

.loopexit:                                        ; preds = %bb.v, %bb.t, %bb.p, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit42, label %bb.p, !llvm.loop !392

.loopexit42:                                      ; preds = %.loopexit, %_ZL20add_ifunc_for_vsitesRK11gmx_ga2la_tibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP15InteractionList.exit
  ret void
}

declare noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i32 @_ZL25assignInteractionsForAtomILb0EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(592) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, ptr noundef %7, ptr %.0.val, ptr noundef %8, i32 noundef %9, i1 noundef zeroext %10) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [7 x i32], align 16               ; 6 uses
  %11 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !339
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !141
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14   ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = icmp eq i32 %9, 0
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = sext i32 %9 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.i119 = icmp eq ptr %7, null               ; 2 uses
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = icmp ne i32 %9, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.phi.trans.insert9.i128 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph32, %.thread12
  %.09628 = phi i32 [ 0, %.lr.ph32 ], [ %.2, %.thread12 ] ; 16 uses
  %.09727 = phi i32 [ %i.k, %.lr.ph32 ], [ %i.hg, %.thread12 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ag = sext i32 %.09727 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14 ; 4 uses
  %i.aj = sext i32 %.09727 to i64
  %i.ak = getelementptr [4 x i8], ptr %i.e, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4      ; 5 uses
  %i.am = sext i32 %i.ai to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !374 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !377
  %i.as = and i32 %i.ar, 2
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %.thread12

bb.d:                                             ; preds = %bb.c
  store ptr %i.al, ptr %11, align 8, !tbaa !313
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = sub i64 %i.s, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  store ptr %i.av, ptr %i.r, align 8, !tbaa !313
  call fastcc void @_ZL9add_vsiteRK11gmx_ga2la_tRK15reverse_ilist_t19InteractionFunctionibRK12AtomIndexSetN3gmx8ArrayRefIKiEEP22InteractionDefinitions(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ai, i32 noundef %i.ap, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %11, ptr noundef %8)
  br label %.thread12

bb.e:                                             ; preds = %bb.b
  %i.aw = load i32, ptr %i.al, align 4, !tbaa !14 ; 2 uses
  store i32 %i.aw, ptr %i.c, align 16, !tbaa !14
  switch i32 %i.ap, label %bb.s [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ax = and i32 %i.ai, -2
  %i.ay = icmp eq i32 %i.ax, 52
  %or.cond3 = or i1 %i.ad, %i.ay
  br i1 %or.cond3, label %.thread12, label %.thread14

.thread14:                                        ; preds = %bb.f
  %i.az = load i32, ptr %0, align 4, !tbaa !336
  store i32 %i.az, ptr %i.ab, align 4, !tbaa !14
  br label %.thread9.thread68

bb.g:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !338
  %i.bb = getelementptr i8, ptr %i.ak, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = add nsw i32 %i.bc, %i.ba
  %i.be = load i32, ptr %i.f, align 4, !tbaa !339
  %i.bf = sub i32 %i.bd, %i.be                    ; 3 uses
  %i.bg = load i8, ptr %i.u, align 8, !tbaa !348
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = sext i32 %i.bf to i64
  %i.bj = load ptr, ptr %2, align 8, !tbaa !350
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !353 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %.thread12, label %_ZNK11gmx_ga2la_t4findEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !355
  %i.bp = and i32 %i.bo, %i.bf
  %i.bq = load ptr, ptr %2, align 8, !tbaa !362
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0.i.i = phi i32 [ %i.bp, %bb.i ], [ %i.bx, %bb.l ]
  %i.br = sext i32 %.0.i.i to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !363
  %i.bu = icmp eq i32 %i.bt, %i.bf
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !353
  br label %_ZNK11gmx_ga2la_t4findEi.exit

bb.l:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !365 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.j, label %.thread12, !llvm.loop !366

_ZNK11gmx_ga2la_t4findEi.exit:                    ; preds = %bb.k, %bb.h
  %i.bz = phi i32 [ %i.bm, %bb.h ], [ %.pre, %bb.k ] ; 2 uses
  %.0.i = phi ptr [ %i.bk, %bb.h ], [ %i.bv, %bb.k ]
  %i.ca = load i32, ptr %3, align 4, !tbaa !153   ; 2 uses
  %.not112 = icmp slt i32 %i.bz, %i.ca
  %i.cb = select i1 %.not112, i32 0, i32 %i.ca
  %spec.select = sub nsw i32 %i.bz, %i.cb         ; 5 uses
  %i.cc = load i32, ptr %i.w, align 4, !tbaa !255 ; 2 uses
  %i.cd = icmp sge i32 %9, %i.cc
  %.not113 = icmp sgt i32 %9, %spec.select        ; 2 uses
  %or.cond = select i1 %i.cd, i1 true, i1 %.not113
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK11gmx_ga2la_t4findEi.exit
  %i.ce = load i32, ptr %i.z, align 4, !tbaa !322
  %.not.i117 = icmp sle i32 %i.ce, %spec.select
  %i.cf = load i32, ptr %i.aa, align 4
  %i.cg = icmp slt i32 %spec.select, %i.cf
  %i.ch = select i1 %.not.i117, i1 %i.cg, i1 false
  br i1 %i.ch, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK11gmx_ga2la_t4findEi.exit
  %i.ci = icmp slt i32 %spec.select, %i.cc
  %or.cond115 = and i1 %i.ci, %.not113
  br i1 %or.cond115, label %bb.o, label %.thread12

bb.o:                                             ; preds = %bb.n
  %i.cj = sext i32 %spec.select to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !322
  %.not.i118 = icmp sle i32 %i.cl, %9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp slt i32 %9, %i.cn
  %i.cp = select i1 %.not.i118, i1 %i.co, i1 false
  br i1 %i.cp, label %.thread, label %.thread12

.thread:                                          ; preds = %bb.m, %bb.o
  %i.cq = load i32, ptr %0, align 4, !tbaa !336   ; 2 uses
  store i32 %i.cq, ptr %i.ab, align 4, !tbaa !14
  %i.cr = load i32, ptr %.0.i, align 4, !tbaa !369 ; 2 uses
  store i32 %i.cr, ptr %i.ac, align 8, !tbaa !14
  br i1 %5, label %bb.p, label %.thread9.thread68

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cs ; 3 uses
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.cu ; 3 uses
  br i1 %.not.i119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.b) ; 0 uses
  %i.cx = load <2 x float>, ptr %i.b, align 8, !tbaa !15
  %.pre10.i = load float, ptr %.phi.trans.insert9.i, align 8, !tbaa !15
  br label %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit

bb.r:                                             ; preds = %bb.p
  %i.cy = load <2 x float>, ptr %i.ct, align 4, !tbaa !15
  %i.cz = load <2 x float>, ptr %i.cv, align 4, !tbaa !15
  %i.da = fsub <2 x float> %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !15
  %i.df = fsub float %i.dc, %i.de
  br label %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit

_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit: ; preds = %bb.q, %bb.r
  %i.dg = phi float [ %i.df, %bb.r ], [ %.pre10.i, %bb.q ] ; 2 uses
  %i.dh = phi <2 x float> [ %i.da, %bb.r ], [ %i.cx, %bb.q ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dh, %i.dh
  %i.di = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dj = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dk = call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.di)
  %i.dl = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.dm = fcmp ult float %i.dl, %6
  br i1 %i.dm, label %.thread9.thread68, label %.thread12

bb.s:                                             ; preds = %bb.e
  %i.dn = icmp sgt i32 %i.ap, 0
  br i1 %i.dn, label %.lr.ph.preheader, label %.thread12

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.do = zext nneg i32 %i.ap to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK11gmx_ga2la_t4findEi.exit123.thread
  %.sroa.8.1 = phi i8 [ 0, %.lr.ph.preheader ], [ %.sroa.8.3, %_ZNK11gmx_ga2la_t4findEi.exit123.thread ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK11gmx_ga2la_t4findEi.exit123.thread ] ; 5 uses
  %i.dp = phi <2 x i8> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ex, %_ZNK11gmx_ga2la_t4findEi.exit123.thread ]
  %i.dq = load i32, ptr %i.t, align 4, !tbaa !338
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.dt = add nsw i32 %i.ds, %i.dq
  %i.du = load i32, ptr %i.f, align 4, !tbaa !339
  %i.dv = sub i32 %i.dt, %i.du                    ; 3 uses
  %i.dw = load i8, ptr %i.u, align 8, !tbaa !348
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.dy = sext i32 %i.dv to i64
  %i.dz = load ptr, ptr %2, align 8, !tbaa !350
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !353 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %.thread12, label %_ZNK11gmx_ga2la_t4findEi.exit123

bb.u:                                             ; preds = %.lr.ph
  %i.ee = load i32, ptr %i.v, align 8, !tbaa !355
  %i.ef = and i32 %i.ee, %i.dv
  %i.eg = load ptr, ptr %2, align 8, !tbaa !362
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.0.i.i120 = phi i32 [ %i.ef, %bb.u ], [ %i.en, %bb.x ]
  %i.eh = sext i32 %.0.i.i120 to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.eh ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !363
  %i.ek = icmp eq i32 %i.ej, %i.dv
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.pre40 = load i32, ptr %.phi.trans.insert39, align 4, !tbaa !353
  br label %_ZNK11gmx_ga2la_t4findEi.exit123

bb.x:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !365 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %bb.v, label %.thread12, !llvm.loop !366

_ZNK11gmx_ga2la_t4findEi.exit123:                 ; preds = %bb.w, %bb.t
  %i.ep = phi i32 [ %i.ec, %bb.t ], [ %.pre40, %bb.w ] ; 2 uses
  %.0.i121 = phi ptr [ %i.ea, %bb.t ], [ %i.el, %bb.w ]
  %i.eq = load i32, ptr %3, align 4, !tbaa !153
  %.not110 = icmp slt i32 %i.ep, %i.eq
  br i1 %.not110, label %bb.y, label %.thread12

bb.y:                                             ; preds = %_ZNK11gmx_ga2la_t4findEi.exit123
  %i.er = load i32, ptr %.0.i121, align 4, !tbaa !369 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  store i32 %i.er, ptr %i.es, align 4, !tbaa !14
  %i.et = sext i32 %i.ep to i64
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.et ; 2 uses
  %i.ev = load <2 x i32>, ptr %i.eu, align 4, !tbaa !14
  %i.ew = icmp eq <2 x i32> %i.ev, zeroinitializer
  %i.ex = select <2 x i1> %i.ew, <2 x i8> splat (i8 1), <2 x i8> %i.dp ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !14
  %i.fa = icmp eq i32 %i.ez, 0
  %.sroa.8.3 = select i1 %i.fa, i8 1, i8 %.sroa.8.1 ; 2 uses
  %i.fb = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond5 = select i1 %4, i1 %i.fb, i1 false
  br i1 %or.cond5, label %bb.z, label %_ZNK11gmx_ga2la_t4findEi.exit123.thread

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr i8, ptr %i.es, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.fe ; 3 uses
  %i.fg = sext i32 %i.er to i64
  %i.fh = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.fg ; 3 uses
  br i1 %.not.i119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.a) ; 0 uses
  %i.fj = load <2 x float>, ptr %i.a, align 8, !tbaa !15
  %.pre10.i129 = load float, ptr %.phi.trans.insert9.i128, align 8, !tbaa !15
  br label %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130

bb.ab:                                            ; preds = %bb.z
  %i.fk = load <2 x float>, ptr %i.ff, align 4, !tbaa !15
  %i.fl = load <2 x float>, ptr %i.fh, align 4, !tbaa !15
  %i.fm = fsub <2 x float> %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !15
  %i.fr = fsub float %i.fo, %i.fq
  br label %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130

_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130: ; preds = %bb.aa, %bb.ab
  %i.fs = phi float [ %i.fr, %bb.ab ], [ %.pre10.i129, %bb.aa ] ; 2 uses
  %i.ft = phi <2 x float> [ %i.fm, %bb.ab ], [ %i.fj, %bb.aa ] ; 3 uses
  %foldExtExtBinop7 = fmul <2 x float> %i.ft, %i.ft
  %i.fu = extractelement <2 x float> %foldExtExtBinop7, i64 1
  %i.fv = extractelement <2 x float> %i.ft, i64 0 ; 2 uses
  %i.fw = call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fu)
  %i.fx = call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.fy = fcmp ult float %i.fx, %6
  br i1 %i.fy, label %_ZNK11gmx_ga2la_t4findEi.exit123.thread, label %.thread12

_ZNK11gmx_ga2la_t4findEi.exit123.thread:          ; preds = %bb.y, %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fz = icmp samesign ult i64 %indvars.iv, %i.do
  br i1 %i.fz, label %.lr.ph, label %.thread9, !llvm.loop !393

.thread9:                                         ; preds = %_ZNK11gmx_ga2la_t4findEi.exit123.thread
  %i.ga = bitcast <2 x i8> %i.ex to <16 x i1>
  %i.gb = extractelement <16 x i1> %i.ga, i64 0
  %i.gc = bitcast <2 x i8> %i.ex to <16 x i1>
  %i.gd = extractelement <16 x i1> %i.gc, i64 8
  %i.ge = select i1 %i.gb, i1 %i.gd, i1 false
  %i.gf = trunc nuw i8 %.sroa.8.3 to i1
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %.thread9.thread68, label %.thread12

.thread9.thread68:                                ; preds = %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit, %.thread, %.thread14, %.thread9
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.am ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !142 ; 2 uses
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !141 ; 5 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = ashr exact i64 %i.gn, 2                 ; 4 uses
  %i.gp = add nsw i64 %i.go, 1                    ; 2 uses
  %i.gq = sext i32 %i.ap to i64
  %i.gr = add nsw i64 %i.gp, %i.gq                ; 4 uses
  %i.gs = icmp ugt i64 %i.gr, %i.go
  br i1 %i.gs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread9.thread68
  %i.gt = sub nuw nsw i64 %i.gr, %i.go
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 noundef %i.gt)
  %.pre.i131 = load ptr, ptr %i.gh, align 8, !tbaa !141
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.ad:                                            ; preds = %.thread9.thread68
  %i.gu = icmp ult i64 %i.gr, %i.go
  br i1 %i.gu, label %bb.ae, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gr ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gj, %i.gv
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ae
  store ptr %i.gv, ptr %i.gi, align 8, !tbaa !142
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.ae, %bb.ad, %bb.ac
  %i.gw = phi ptr [ %.pre.i131, %bb.ac ], [ %i.gk, %bb.ad ], [ %i.gk, %bb.ae ], [ %i.gk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gn
  store i32 %i.aw, ptr %i.gx, align 4, !tbaa !14
  %i.gy = icmp sgt i32 %i.ap, 0
  br i1 %i.gy, label %.lr.ph.i, label %_ZN15InteractionList9push_backEiiPKi.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.gz = getelementptr [4 x i8], ptr %i.gw, i64 %i.gp
  %wide.trip.count.i = zext nneg i32 %i.ap to i64
  %i.ha = shl nuw nsw i64 %wide.trip.count.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gz, ptr nonnull align 4 %i.ab, i64 %i.ha, i1 false), !tbaa !14
  br label %_ZN15InteractionList9push_backEiiPKi.exit

_ZN15InteractionList9push_backEiiPKi.exit:        ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  br i1 %10, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN15InteractionList9push_backEiiPKi.exit
  %i.hb = load i32, ptr %i.aq, align 4, !tbaa !377
  %i.hc = and i32 %i.hb, 512
  %.not114 = icmp eq i32 %i.hc, 0
  br i1 %.not114, label %bb.ag, label %.thread12

bb.ag:                                            ; preds = %bb.af, %_ZN15InteractionList9push_backEiiPKi.exit
  %i.hd = add nsw i32 %.09628, 1
  br label %.thread12

.thread12:                                        ; preds = %bb.l, %bb.t, %_ZNK11gmx_ga2la_t4findEi.exit123, %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130, %bb.x, %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit, %bb.s, %bb.o, %bb.n, %bb.h, %bb.f, %.thread9, %bb.ag, %bb.af, %bb.c, %bb.d
  %.2 = phi i32 [ %.09628, %bb.d ], [ %.09628, %bb.c ], [ %i.hd, %bb.ag ], [ %.09628, %bb.af ], [ %.09628, %.thread9 ], [ %.09628, %bb.f ], [ %.09628, %bb.h ], [ %.09628, %bb.x ], [ %.09628, %bb.o ], [ %.09628, %bb.s ], [ %.09628, %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit ], [ %.09628, %bb.t ], [ %.09628, %bb.n ], [ %.09628, %_ZL8dd_dist2PK5t_pbcN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEii.exit130 ], [ %.09628, %_ZNK11gmx_ga2la_t4findEi.exit123 ], [ %.09628, %bb.l ] ; 2 uses
  %i.he = call noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.ai)
  %i.hf = add i32 %.09727, 2
  %i.hg = add i32 %i.hf, %i.he                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.hh = icmp slt i32 %i.hg, %i.m
  br i1 %i.hh, label %bb.b, label %._crit_edge33, !llvm.loop !394

._crit_edge33:                                    ; preds = %.thread12, %bb.a
  %.096.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %.thread12 ]
  ret i32 %.096.lcssa
}

declare noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare { i64, i64 } @_Z31globalAtomIndexToMoltypeIndicesN3gmx8ArrayRefIK15MolblockIndicesEEi(ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  tail call void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN3gmx12ArrayRefIterIKiEEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.h, ptr %1, ptr %2)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !373
  %.not.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.o, ptr %i.q, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.t, ptr %i.p, align 8, !tbaa !142
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !141    ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i32 %i.o, ptr %i.ag, align 4, !tbaa !14
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.af, ptr %0, align 8, !tbaa !141
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !373
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN3gmx12ArrayRefIterIKiEEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not81 = icmp eq ptr %2, %3
  br i1 %.not81, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 14 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 8 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN3gmx12ArrayRefIterIKiEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4
  br i1 %i.s, label %bb.e, label %bb.f, !prof !395

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre85 = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !14
  store i32 %i.u, ptr %i.h, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre85, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !142
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !395

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !14
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.af = icmp sgt i64 %i.d, 0
  br i1 %i.af, label %iter.check179, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit

iter.check179:                                    ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %min.iters.check160 = icmp ult i64 %i.d, 8
  %i.ag = sub i64 %i.b, %i.l
  %diff.check159 = icmp ugt i64 %i.ag, -128
  %or.cond = or i1 %min.iters.check160, %diff.check159
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %iter.check179
  %min.iters.check162 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check162, label %vec.epilog.ph183, label %vector.ph163

vector.ph163:                                     ; preds = %vector.main.loop.iter.check161
  %n.vec164 = and i64 %i.d, 9223372036854775776   ; 4 uses
  %i.ah = shl i64 %n.vec164, 2                    ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = and i64 %i.d, 31
  %i.ak = getelementptr i8, ptr %2, i64 %i.ah
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body165 ] ; 2 uses
  %i.al = shl i64 %index166, 2                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %1, i64 %i.al ; 4 uses
  %next.gep168 = getelementptr i8, ptr %2, i64 %i.al ; 4 uses
  %i.am = getelementptr i8, ptr %next.gep168, i64 32
  %i.an = getelementptr i8, ptr %next.gep168, i64 64
  %i.ao = getelementptr i8, ptr %next.gep168, i64 96
  %wide.load169 = load <8 x i32>, ptr %next.gep168, align 4, !tbaa !14
  %wide.load170 = load <8 x i32>, ptr %i.am, align 4, !tbaa !14
  %wide.load171 = load <8 x i32>, ptr %i.an, align 4, !tbaa !14
  %wide.load172 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !14
  %i.ap = getelementptr i8, ptr %next.gep167, i64 32
  %i.aq = getelementptr i8, ptr %next.gep167, i64 64
  %i.ar = getelementptr i8, ptr %next.gep167, i64 96
  store <8 x i32> %wide.load169, ptr %next.gep167, align 4, !tbaa !14
  store <8 x i32> %wide.load170, ptr %i.ap, align 4, !tbaa !14
  store <8 x i32> %wide.load171, ptr %i.aq, align 4, !tbaa !14
  store <8 x i32> %wide.load172, ptr %i.ar, align 4, !tbaa !14
  %index.next173 = add nuw i64 %index166, 32      ; 2 uses
  %i.as = icmp eq i64 %index.next173, %n.vec164
  br i1 %i.as, label %middle.block174, label %vector.body165, !llvm.loop !396

middle.block174:                                  ; preds = %vector.body165
  %cmp.n175 = icmp eq i64 %i.d, %n.vec164
  br i1 %cmp.n175, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block174
  %i.at = and i64 %i.c, 96
  %min.epilog.iters.check182 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check182, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph183, !prof !305

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check161, %vec.epilog.iter.check181
  %vec.epilog.resume.val176 = phi i64 [ %n.vec164, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check161 ]
  %n.vec184 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.au = shl i64 %n.vec184, 2                    ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = and i64 %i.d, 7
  %i.ax = getelementptr i8, ptr %2, i64 %i.au
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph183
  %index186 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph183 ], [ %index.next190, %vec.epilog.vector.body185 ] ; 2 uses
  %i.ay = shl i64 %index186, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %1, i64 %i.ay
  %next.gep188 = getelementptr i8, ptr %2, i64 %i.ay
  %wide.load189 = load <8 x i32>, ptr %next.gep188, align 4, !tbaa !14
  store <8 x i32> %wide.load189, ptr %next.gep187, align 4, !tbaa !14
  %index.next190 = add nuw i64 %index186, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.az, label %vec.epilog.middle.block191, label %vec.epilog.vector.body185, !llvm.loop !397

vec.epilog.middle.block191:                       ; preds = %vec.epilog.vector.body185
  %cmp.n192 = icmp eq i64 %i.d, %n.vec184
  br i1 %cmp.n192, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block191
  %.09.i.i.i.i.i.ph = phi ptr [ %1, %iter.check179 ], [ %i.ai, %vec.epilog.iter.check181 ], [ %i.av, %vec.epilog.middle.block191 ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.d, %iter.check179 ], [ %i.aj, %vec.epilog.iter.check181 ], [ %i.aw, %vec.epilog.middle.block191 ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %2, %iter.check179 ], [ %i.ak, %vec.epilog.iter.check181 ], [ %i.ax, %vec.epilog.middle.block191 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.05.07.i.i.i.i.i, align 4, !tbaa !14
  store i32 %i.ba, ptr %.09.i.i.i.i.i, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.bd = add nsw i64 %.048.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, !llvm.loop !398

_ZSt9__advanceIN3gmx12ArrayRefIterIKiEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = icmp eq i64 %i.m, 4
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.a, %i.bh                     ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 10 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %iter.check, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIN3gmx12ArrayRefIterIKiEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bj, 8
  %i.bl = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bl, -128
  %or.cond196 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond196, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bj, 9223372036854775776     ; 4 uses
  %i.bm = shl i64 %n.vec, 2                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.h, i64 %i.bm
  %i.bo = and i64 %i.bj, 31
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bq ; 4 uses
  %next.gep104 = getelementptr i8, ptr %i.bg, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %next.gep104, i64 32
  %i.bs = getelementptr i8, ptr %next.gep104, i64 64
  %i.bt = getelementptr i8, ptr %next.gep104, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep104, align 4, !tbaa !14
  %wide.load105 = load <8 x i32>, ptr %i.br, align 4, !tbaa !14
  %wide.load106 = load <8 x i32>, ptr %i.bs, align 4, !tbaa !14
  %wide.load107 = load <8 x i32>, ptr %i.bt, align 4, !tbaa !14
  %i.bu = getelementptr i8, ptr %next.gep, i64 32
  %i.bv = getelementptr i8, ptr %next.gep, i64 64
  %i.bw = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !14
  store <8 x i32> %wide.load105, ptr %i.bu, align 4, !tbaa !14
  store <8 x i32> %wide.load106, ptr %i.bv, align 4, !tbaa !14
  store <8 x i32> %wide.load107, ptr %i.bw, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.by = and i64 %i.bi, 96
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !305

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec110, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.h, i64 %i.bz
  %i.cb = and i64 %i.bj, 7
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %i.cd = shl i64 %index111, 2                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.h, i64 %i.cd
  %next.gep113 = getelementptr i8, ptr %i.bg, i64 %i.cd
  %wide.load114 = load <8 x i32>, ptr %next.gep113, align 4, !tbaa !14
  store <8 x i32> %wide.load114, ptr %next.gep112, align 4, !tbaa !14
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bj, %n.vec110
  br i1 %cmp.n116, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.048.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  %.sroa.05.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.048.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.05.07.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  store i32 %i.cf, ptr %.09.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i.i.i, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 4
  %i.ci = add nsw i64 %.048.i.i.i.i.i.i.i.i, -1
  %i.cj = icmp samesign ugt i64 %.048.i.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !401

_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt9__advanceIN3gmx12ArrayRefIterIKiEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ck = sub nuw nsw i64 %i.d, %i.n
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ck ; 5 uses
  store ptr %i.cl, ptr %i.g, align 8, !tbaa !142
  %i.cm = icmp sgt i64 %i.m, 4
  br i1 %i.cm, label %bb.k, label %bb.l, !prof !395

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit
  br i1 %i.bf, label %bb.m, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.co = phi ptr [ %.pre, %bb.k ], [ %i.cl, %bb.l ], [ %i.cl, %bb.m ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.m
  store ptr %i.cp, ptr %i.g, align 8, !tbaa !142
  %i.cq = ashr exact i64 %i.m, 2                  ; 10 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %iter.check141, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit

iter.check141:                                    ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55
  %min.iters.check122 = icmp ult i64 %i.cq, 8
  %i.cs = sub i64 %i.b, %i.l
  %diff.check121 = icmp ugt i64 %i.cs, -128
  %or.cond197 = or i1 %min.iters.check122, %diff.check121
  br i1 %or.cond197, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check141
  %min.iters.check124 = icmp ult i64 %i.cq, 32
  br i1 %min.iters.check124, label %vec.epilog.ph145, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %n.vec126 = and i64 %i.cq, 9223372036854775776  ; 4 uses
  %i.ct = shl i64 %n.vec126, 2                    ; 2 uses
  %i.cu = getelementptr i8, ptr %1, i64 %i.ct
  %i.cv = and i64 %i.cq, 31
  %i.cw = getelementptr i8, ptr %2, i64 %i.ct
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next135, %vector.body127 ] ; 2 uses
  %i.cx = shl i64 %index128, 2                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %1, i64 %i.cx ; 4 uses
  %next.gep130 = getelementptr i8, ptr %2, i64 %i.cx ; 4 uses
  %i.cy = getelementptr i8, ptr %next.gep130, i64 32
  %i.cz = getelementptr i8, ptr %next.gep130, i64 64
  %i.da = getelementptr i8, ptr %next.gep130, i64 96
  %wide.load131 = load <8 x i32>, ptr %next.gep130, align 4, !tbaa !14
  %wide.load132 = load <8 x i32>, ptr %i.cy, align 4, !tbaa !14
  %wide.load133 = load <8 x i32>, ptr %i.cz, align 4, !tbaa !14
  %wide.load134 = load <8 x i32>, ptr %i.da, align 4, !tbaa !14
  %i.db = getelementptr i8, ptr %next.gep129, i64 32
  %i.dc = getelementptr i8, ptr %next.gep129, i64 64
  %i.dd = getelementptr i8, ptr %next.gep129, i64 96
  store <8 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !14
  store <8 x i32> %wide.load132, ptr %i.db, align 4, !tbaa !14
  store <8 x i32> %wide.load133, ptr %i.dc, align 4, !tbaa !14
  store <8 x i32> %wide.load134, ptr %i.dd, align 4, !tbaa !14
  %index.next135 = add nuw i64 %index128, 32      ; 2 uses
  %i.de = icmp eq i64 %index.next135, %n.vec126
  br i1 %i.de, label %middle.block136, label %vector.body127, !llvm.loop !402

middle.block136:                                  ; preds = %vector.body127
  %cmp.n137 = icmp eq i64 %i.cq, %n.vec126
  br i1 %cmp.n137, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block136
  %i.df = and i64 %i.m, 96
  %min.epilog.iters.check144 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check144, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph145, !prof !305

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check143
  %vec.epilog.resume.val138 = phi i64 [ %n.vec126, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec146 = and i64 %i.cq, 9223372036854775800  ; 3 uses
  %i.dg = shl i64 %n.vec146, 2                    ; 2 uses
  %i.dh = getelementptr i8, ptr %1, i64 %i.dg
  %i.di = and i64 %i.cq, 7
  %i.dj = getelementptr i8, ptr %2, i64 %i.dg
  br label %vec.epilog.vector.body147

vec.epilog.vector.body147:                        ; preds = %vec.epilog.vector.body147, %vec.epilog.ph145
  %index148 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph145 ], [ %index.next152, %vec.epilog.vector.body147 ] ; 2 uses
  %i.dk = shl i64 %index148, 2                    ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %i.dk
  %next.gep150 = getelementptr i8, ptr %2, i64 %i.dk
  %wide.load151 = load <8 x i32>, ptr %next.gep150, align 4, !tbaa !14
  store <8 x i32> %wide.load151, ptr %next.gep149, align 4, !tbaa !14
  %index.next152 = add nuw i64 %index148, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.dl, label %vec.epilog.middle.block153, label %vec.epilog.vector.body147, !llvm.loop !403

vec.epilog.middle.block153:                       ; preds = %vec.epilog.vector.body147
  %cmp.n154 = icmp eq i64 %i.cq, %n.vec146
  br i1 %cmp.n154, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check141, %vec.epilog.iter.check143, %vec.epilog.middle.block153
  %.09.i.i.i.i.i58.ph = phi ptr [ %1, %iter.check141 ], [ %i.cu, %vec.epilog.iter.check143 ], [ %i.dh, %vec.epilog.middle.block153 ]
  %.048.i.i.i.i.i59.ph = phi i64 [ %i.cq, %iter.check141 ], [ %i.cv, %vec.epilog.iter.check143 ], [ %i.di, %vec.epilog.middle.block153 ]
  %.sroa.05.07.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check141 ], [ %i.cw, %vec.epilog.iter.check143 ], [ %i.dj, %vec.epilog.middle.block153 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.09.i.i.i.i.i58 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i57 ], [ %.09.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.048.i.i.i.i.i59 = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i57 ], [ %.048.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i60 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.05.07.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.05.07.i.i.i.i.i60, align 4, !tbaa !14
  store i32 %i.dm, ptr %.09.i.i.i.i.i58, align 4, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i60, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i58, i64 4
  %i.dp = add nsw i64 %.048.i.i.i.i.i59, -1
  %i.dq = icmp samesign ugt i64 %.048.i.i.i.i.i59, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit, !llvm.loop !404

bb.n:                                             ; preds = %bb.b
  %i.dr = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 4 uses
  %i.dt = sub i64 %i.j, %i.ds
  %i.du = ashr exact i64 %i.dt, 2                 ; 4 uses
  %i.dv = sub nsw i64 2305843009213693951, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.d
  br i1 %i.dw, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.d)
  %i.dx = add nsw i64 %.sroa.speculated.i, %i.du  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.du
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 2305843009213693951)
  %i.ea = select i1 %i.dy, i64 2305843009213693951, i64 %i.dz ; 3 uses
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.p
  %i.ed = phi ptr [ %i.ec, %bb.p ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.ee = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ef = sub i64 %i.ee, %i.ds                    ; 4 uses
  %i.eg = icmp sgt i64 %i.ef, 4
  br i1 %i.eg, label %bb.q, label %bb.r, !prof !395

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ed, ptr align 4 %i.dr, i64 %i.ef, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.eh = icmp eq i64 %i.ef, 4
  br i1 %i.eh, label %bb.s, label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

bb.s:                                             ; preds = %bb.r
  %i.ei = load i32, ptr %i.dr, align 4, !tbaa !14
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67: ; preds = %bb.s, %bb.r, %bb.q
  %i.ej = getelementptr i8, ptr %i.ed, i64 %i.ef
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ej, ptr align 4 %2, i64 %i.c, i1 false), !tbaa !14
  %i.ek = add i64 %i.c, %i.ee
  %i.el = add i64 %i.ek, 4
  %i.em = sub i64 %i.el, %i.ds
  %i.en = getelementptr i8, ptr %i.ed, i64 %i.em
  %scevgep = getelementptr i8, ptr %i.en, i64 -4  ; 3 uses
  %i.eo = sub i64 %i.j, %i.ee                     ; 4 uses
  %i.ep = icmp sgt i64 %i.eo, 4
  br i1 %i.ep, label %bb.t, label %bb.u, !prof !395

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %1, i64 %i.eo, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN3gmx12ArrayRefIterIKiEEPiiET0_T_S6_S5_RSaIT1_E.exit67
  %i.eq = icmp eq i64 %i.eo, 4
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.er, ptr %scevgep, align 4, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.es = getelementptr inbounds i8, ptr %scevgep, i64 %i.eo
  %.not.i69 = icmp eq ptr %i.dr, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = sub i64 %i.i, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.et) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.w, %bb.x
  store ptr %i.ed, ptr %0, align 8, !tbaa !141
  store ptr %i.es, ptr %i.g, align 8, !tbaa !142
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ea
  store ptr %i.eu, ptr %i.e, align 8, !tbaa !373
  br label %_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit

_ZSt4copyIN3gmx12ArrayRefIterIKiEEN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block136, %vec.epilog.middle.block153, %middle.block174, %vec.epilog.middle.block191, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !395

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !14
  store i32 %i.u, ptr %i.h, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !142
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !395

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !14
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !395

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !14
  store i32 %i.ag, ptr %1, align 4, !tbaa !14
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !395

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !14
  store i32 %i.an, ptr %i.h, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !142
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !395

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !142
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !395

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !14
  store i32 %i.ax, ptr %1, align 4, !tbaa !14
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !395

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !14
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !395

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !14
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !395

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !141
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !142
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !373
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI9t_iparamsSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEvNS5_IPS0_S2_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = sdiv exact i64 %i.c, 48                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !385
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270  ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = sdiv exact i64 %i.m, 48                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 48                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !395

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 48
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(48) %i.q, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit

_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  store ptr %i.v, ptr %i.g, align 8, !tbaa !270
  %i.w = sub i64 %i.r, %i.l                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 48
  br i1 %i.x, label %bb.h, label %bb.i, !prof !395

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.neg88 = udiv exact i64 %i.w, 48
  %.neg88.neg = sub nsw i64 0, %.neg88
  %i.y = getelementptr inbounds [48 x i8], ptr %i.h, i64 %.neg88.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.z = icmp eq i64 %i.w, 48
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.aa, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit

_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !395

bb.k:                                             ; preds = %_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIP9t_iparamsS1_ET0_T_S3_S2_.exit
  %i.ab = icmp eq i64 %i.c, 48
  br i1 %i.ab, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ac = icmp eq i64 %i.m, 48
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.a, %i.ae                     ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 48
  br i1 %i.ag, label %bb.n, label %bb.o, !prof !395

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ad, i64 %i.af, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.af, 48
  br i1 %i.ah, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(48) %i.ad, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ai = sub nuw nsw i64 %i.d, %i.n
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !270
  %i.al = icmp sgt i64 %i.m, 48
  br i1 %i.al, label %bb.q, label %bb.r, !prof !395

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit
  br i1 %i.ac, label %bb.s, label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ak, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51

_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.m
  store ptr %i.an, ptr %i.g, align 8, !tbaa !270
  %i.ao = icmp sgt i64 %i.m, 48
  br i1 %i.ao, label %bb.t, label %bb.u, !prof !395

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIP9t_iparamsS1_SaIS0_EET0_T_S4_S3_RT1_.exit51
  %i.ap = icmp eq i64 %i.m, 48
  br i1 %i.ap, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !405
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8, !tbaa !273   ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.j, %i.ar
  %i.at = sdiv exact i64 %i.as, 48                ; 4 uses
  %i.au = sub nsw i64 192153584101141162, %i.at
  %i.av = icmp ult i64 %i.au, %i.d
  br i1 %i.av, label %bb.x, label %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.d)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 192153584101141162)
  %i.az = select i1 %i.ax, i64 192153584101141162, i64 %i.ay ; 3 uses
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ba = mul nuw nsw i64 %i.az, 48
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #21
  br label %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bc = phi ptr [ %i.bb, %bb.y ], [ null, %_ZNKSt6vectorI9t_iparamsSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.be = sub i64 %i.bd, %i.ar                    ; 4 uses
  %i.bf = icmp sgt i64 %i.be, 48
  br i1 %i.bf, label %bb.z, label %bb.aa, !prof !395

bb.z:                                             ; preds = %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bc, ptr align 4 %i.aq, i64 %i.be, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE11_M_allocateEm.exit
  %i.bg = icmp eq i64 %i.be, 48
  br i1 %i.bg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bc, ptr noundef nonnull align 4 dereferenceable(48) %i.aq, i64 48, i1 false), !tbaa.struct !405
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.be ; 3 uses
  %i.bi = icmp sgt i64 %i.c, 48
  br i1 %i.bi, label %bb.ad, label %bb.ae, !prof !395

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bj = icmp eq i64 %i.c, 48
  br i1 %i.bj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bh, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !405
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.c ; 3 uses
  %i.bl = sub i64 %i.j, %i.bd                     ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 48
  br i1 %i.bm, label %bb.ah, label %bb.ai, !prof !395

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %1, i64 %i.bl, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bn = icmp eq i64 %i.bl, 48
  br i1 %i.bn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bk, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !405
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %.not.i55 = icmp eq ptr %i.aq, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = sub i64 %i.i, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bp) #22
  br label %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bc, ptr %0, align 8, !tbaa !273
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !270
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.az
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !385
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9t_iparamsSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseI9t_iparamsSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS17gmx_reverse_top_t", !11, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN3gmx12HaloExchangeE", !11, i64 0}
!19 = !{!20, !29, i64 12}
!20 = !{!"_ZTS10t_forcerec", !21, i64 0, !28, i64 8, !29, i64 12, !30, i64 16, !31, i64 24, !31, i64 48, !29, i64 72, !29, i64 73, !36, i64 76, !37, i64 80, !38, i64 84, !38, i64 88, !16, i64 92, !39, i64 96, !39, i64 112, !39, i64 128, !40, i64 144, !16, i64 152, !47, i64 160, !54, i64 168, !55, i64 176, !60, i64 200, !31, i64 224, !65, i64 248, !72, i64 256, !6, i64 264, !79, i64 272, !6, i64 296, !6, i64 300, !84, i64 304, !89, i64 328, !90, i64 336, !6, i64 340, !29, i64 344, !91, i64 352, !91, i64 376, !64, i64 400, !16, i64 408, !6, i64 412, !96, i64 416, !16, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !16, i64 456, !100, i64 464, !107, i64 472, !112, i64 496, !119, i64 504, !126, i64 512, !127, i64 520, !128, i64 528, !129, i64 536, !136, i64 544, !137, i64 568}
!21 = !{!"_ZTSSt10unique_ptrI19interaction_const_tSt14default_deleteIS0_EE", !22, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_dataI19interaction_const_tSt14default_deleteIS0_ELb1ELb1EE", !23, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_implI19interaction_const_tSt14default_deleteIS0_EE", !24, i64 0}
!24 = !{!"_ZTSSt5tupleIJP19interaction_const_tSt14default_deleteIS0_EEE", !25, i64 0}
!25 = !{!"_ZTSSt11_Tuple_implILm0EJP19interaction_const_tSt14default_deleteIS0_EEE", !26, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm0EP19interaction_const_tLb0EE", !27, i64 0}
!27 = !{!"p1 _ZTS19interaction_const_t", !11, i64 0}
!28 = !{!"_ZTS7PbcType", !7, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!31 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!36 = !{!"_ZTS16NbkernelElecType", !7, i64 0}
!37 = !{!"_ZTS15NbkernelVdwType", !7, i64 0}
!38 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!39 = !{!"_ZTSSt5arrayIdLm2EE", !7, i64 0}
!40 = !{!"_ZTSSt10unique_ptrI20DispersionCorrectionSt14default_deleteIS0_EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataI20DispersionCorrectionSt14default_deleteIS0_ELb1ELb1EE", !42, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implI20DispersionCorrectionSt14default_deleteIS0_EE", !43, i64 0}
!43 = !{!"_ZTSSt5tupleIJP20DispersionCorrectionSt14default_deleteIS0_EEE", !44, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJP20DispersionCorrectionSt14default_deleteIS0_EEE", !45, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EP20DispersionCorrectionLb0EE", !46, i64 0}
!46 = !{!"p1 _ZTS20DispersionCorrection", !11, i64 0}
!47 = !{!"_ZTSSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataI12t_forcetableSt14default_deleteIS0_ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implI12t_forcetableSt14default_deleteIS0_EE", !50, i64 0}
!50 = !{!"_ZTSSt5tupleIJP12t_forcetableSt14default_deleteIS0_EEE", !51, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_forcetableSt14default_deleteIS0_EEE", !52, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EP12t_forcetableLb0EE", !53, i64 0}
!53 = !{!"p1 _ZTS12t_forcetable", !11, i64 0}
!54 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!55 = !{!"_ZTSSt6vectorIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN3gmx27AtomInfoWithinMoleculeBlockESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN3gmx27AtomInfoWithinMoleculeBlockE", !11, i64 0}
!60 = !{!"_ZTSSt6vectorIiSaIiEE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 int", !11, i64 0}
!65 = !{!"_ZTSSt10unique_ptrIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !66, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_ELb1ELb1EE", !67, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EE", !68, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !69, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22WholeMoleculeTransformESt14default_deleteIS1_EEE", !70, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22WholeMoleculeTransformELb0EE", !71, i64 0}
!71 = !{!"p1 _ZTSN3gmx22WholeMoleculeTransformE", !11, i64 0}
!72 = !{!"_ZTSSt10unique_ptrIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !73, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_ELb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EE", !75, i64 0}
!75 = !{!"_ZTSSt5tupleIJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !76, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18nonbonded_verlet_tESt14default_deleteIS1_EEE", !77, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18nonbonded_verlet_tELb0EE", !78, i64 0}
!78 = !{!"p1 _ZTSN3gmx18nonbonded_verlet_tE", !11, i64 0}
!79 = !{!"_ZTSSt6vectorIS_ISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EESaIS6_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS2_EESaIS5_EESaIS7_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSSt6vectorISt10unique_ptrI12t_forcetableSt14default_deleteIS1_EESaIS4_EE", !11, i64 0}
!84 = !{!"_ZTSSt6vectorI18ForceHelperBuffersSaIS0_EE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE12_Vector_implE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseI18ForceHelperBuffersSaIS0_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!88 = !{!"p1 _ZTS18ForceHelperBuffers", !11, i64 0}
!89 = !{!"p1 _ZTS9gmx_pme_t", !11, i64 0}
!90 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!91 = !{!"_ZTSSt6vectorIfSaIfEE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!95 = !{!"p1 float", !11, i64 0}
!96 = !{!"_ZTSSt8optionalIfE", !97, i64 0}
!97 = !{!"_ZTSSt14_Optional_baseIfLb1ELb1EE", !98, i64 0}
!98 = !{!"_ZTSSt17_Optional_payloadIfLb1ELb1ELb1EE", !99, i64 0}
!99 = !{!"_ZTSSt22_Optional_payload_baseIfE", !7, i64 0, !29, i64 4}
!100 = !{!"_ZTSSt10unique_ptrI8t_fcdataSt14default_deleteIS0_EE", !101, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataI8t_fcdataSt14default_deleteIS0_ELb1ELb1EE", !102, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implI8t_fcdataSt14default_deleteIS0_EE", !103, i64 0}
!103 = !{!"_ZTSSt5tupleIJP8t_fcdataSt14default_deleteIS0_EEE", !104, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_fcdataSt14default_deleteIS0_EEE", !105, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EP8t_fcdataLb0EE", !106, i64 0}
!106 = !{!"p1 _ZTS8t_fcdata", !11, i64 0}
!107 = !{!"_ZTSSt6vectorI12ListedForcesSaIS0_EE", !108, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseI12ListedForcesSaIS0_EE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE12_Vector_implE", !110, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseI12ListedForcesSaIS0_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 _ZTS12ListedForces", !11, i64 0}
!112 = !{!"_ZTSSt10unique_ptrIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !113, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx15ListedForcesGpuESt14default_deleteIS1_ELb1ELb1EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx15ListedForcesGpuESt14default_deleteIS1_EE", !115, i64 0}
!115 = !{!"_ZTSSt5tupleIJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !116, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx15ListedForcesGpuESt14default_deleteIS1_EEE", !117, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx15ListedForcesGpuELb0EE", !118, i64 0}
!118 = !{!"p1 _ZTSN3gmx15ListedForcesGpuE", !11, i64 0}
!119 = !{!"_ZTSSt10unique_ptrI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !120, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_dataI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_ELb1ELb1EE", !121, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_implI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !122, i64 0}
!122 = !{!"_ZTSSt5tupleIJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !123, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !124, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm0EP24CpuPpLongRangeNonbondedsLb0EE", !125, i64 0}
!125 = !{!"p1 _ZTS24CpuPpLongRangeNonbondeds", !11, i64 0}
!126 = !{!"p1 _ZTSN3gmx14ForceProvidersE", !11, i64 0}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!182 = !{!"_ZTSSt15__uniq_ptr_dataI17gmx_reverse_top_tSt14default_deleteIS0_ELb1ELb1EE", !183, i64 0}
!183 = !{!"_ZTSSt15__uniq_ptr_implI17gmx_reverse_top_tSt14default_deleteIS0_EE", !184, i64 0}
!184 = !{!"_ZTSSt5tupleIJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !185, i64 0}
!185 = !{!"_ZTSSt11_Tuple_implILm0EJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !186, i64 0}
!186 = !{!"_ZTSSt10_Head_baseILm0EP17gmx_reverse_top_tLb0EE", !13, i64 0}
!187 = !{!"_ZTSSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !188, i64 0}
!188 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9HashedMapIiEESt14default_deleteIS2_ELb1ELb1EE", !189, i64 0}
!189 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !190, i64 0}
!190 = !{!"_ZTSSt5tupleIJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !191, i64 0}
!191 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !192, i64 0}
!192 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9HashedMapIiEELb0EE", !193, i64 0}
!193 = !{!"p1 _ZTSN3gmx9HashedMapIiEE", !11, i64 0}
!194 = !{!"_ZTSSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !195, i64 0}
!195 = !{!"_ZTSSt15__uniq_ptr_dataI24gmx_domdec_specat_comm_tSt14default_deleteIS0_ELb1ELb1EE", !196, i64 0}
!196 = !{!"_ZTSSt15__uniq_ptr_implI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !197, i64 0}
!197 = !{!"_ZTSSt5tupleIJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !198, i64 0}
!198 = !{!"_ZTSSt11_Tuple_implILm0EJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !199, i64 0}
!199 = !{!"_ZTSSt10_Head_baseILm0EP24gmx_domdec_specat_comm_tLb0EE", !200, i64 0}
!200 = !{!"p1 _ZTS24gmx_domdec_specat_comm_t", !11, i64 0}
!201 = !{!"_ZTSSt10unique_ptrI24gmx_domdec_constraints_tSt14default_deleteIS0_EE", !202, i64 0}
!202 = !{!"_ZTSSt15__uniq_ptr_dataI24gmx_domdec_constraints_tSt14default_deleteIS0_ELb1ELb1EE", !203, i64 0}
!203 = !{!"_ZTSSt15__uniq_ptr_implI24gmx_domdec_constraints_tSt14default_deleteIS0_EE", !204, i64 0}
!204 = !{!"_ZTSSt5tupleIJP24gmx_domdec_constraints_tSt14default_deleteIS0_EEE", !205, i64 0}
!205 = !{!"_ZTSSt11_Tuple_implILm0EJP24gmx_domdec_constraints_tSt14default_deleteIS0_EEE", !206, i64 0}
!206 = !{!"_ZTSSt10_Head_baseILm0EP24gmx_domdec_constraints_tLb0EE", !207, i64 0}
!207 = !{!"p1 _ZTS24gmx_domdec_constraints_t", !11, i64 0}
!208 = !{!"_ZTSSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !209, i64 0}
!209 = !{!"_ZTSSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !210, i64 0}
!210 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_Vector_implE", !211, i64 0}
!211 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!212 = !{!"_ZTSSt10unique_ptrI11gmx_ga2la_tSt14default_deleteIS0_EE", !213, i64 0}
!213 = !{!"_ZTSSt15__uniq_ptr_dataI11gmx_ga2la_tSt14default_deleteIS0_ELb1ELb1EE", !214, i64 0}
!214 = !{!"_ZTSSt15__uniq_ptr_implI11gmx_ga2la_tSt14default_deleteIS0_EE", !215, i64 0}
!215 = !{!"_ZTSSt5tupleIJP11gmx_ga2la_tSt14default_deleteIS0_EEE", !216, i64 0}
!216 = !{!"_ZTSSt11_Tuple_implILm0EJP11gmx_ga2la_tSt14default_deleteIS0_EEE", !217, i64 0}
!217 = !{!"_ZTSSt10_Head_baseILm0EP11gmx_ga2la_tLb0EE", !218, i64 0}
!218 = !{!"p1 _ZTS11gmx_ga2la_t", !11, i64 0}
!219 = !{!"_ZTSSt10unique_ptrI17gmx_domdec_comm_tSt14default_deleteIS0_EE", !220, i64 0}
!220 = !{!"_ZTSSt15__uniq_ptr_dataI17gmx_domdec_comm_tSt14default_deleteIS0_ELb1ELb1EE", !221, i64 0}
!221 = !{!"_ZTSSt15__uniq_ptr_implI17gmx_domdec_comm_tSt14default_deleteIS0_EE", !222, i64 0}
!222 = !{!"_ZTSSt5tupleIJP17gmx_domdec_comm_tSt14default_deleteIS0_EEE", !223, i64 0}
!223 = !{!"_ZTSSt11_Tuple_implILm0EJP17gmx_domdec_comm_tSt14default_deleteIS0_EEE", !224, i64 0}
!224 = !{!"_ZTSSt10_Head_baseILm0EP17gmx_domdec_comm_tLb0EE", !225, i64 0}
!225 = !{!"p1 _ZTS17gmx_domdec_comm_t", !11, i64 0}
!226 = !{!"_ZTSSt10unique_ptrIN3gmx12HaloExchangeESt14default_deleteIS1_EE", !227, i64 0}
!227 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12HaloExchangeESt14default_deleteIS1_ELb1ELb1EE", !228, i64 0}
!228 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12HaloExchangeESt14default_deleteIS1_EE", !229, i64 0}
!229 = !{!"_ZTSSt5tupleIJPN3gmx12HaloExchangeESt14default_deleteIS1_EEE", !230, i64 0}
!230 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12HaloExchangeESt14default_deleteIS1_EEE", !231, i64 0}
!231 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12HaloExchangeELb0EE", !18, i64 0}
!232 = !{!"long", !7, i64 0}
!233 = !{!"p1 _ZTSN3gmx19LocalAtomSetManagerE", !11, i64 0}
!234 = !{!"_ZTSSt10unique_ptrIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EE", !235, i64 0}
!235 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_ELb1ELb1EE", !236, i64 0}
!236 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EE", !237, i64 0}
!237 = !{!"_ZTSSt5tupleIJPN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EEE", !238, i64 0}
!238 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EEE", !239, i64 0}
!239 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx20LocalTopologyCheckerELb0EE", !240, i64 0}
!240 = !{!"p1 _ZTSN3gmx20LocalTopologyCheckerE", !11, i64 0}
!241 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !242, i64 0}
!242 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !243, i64 0}
!243 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !244, i64 0, !247, i64 8}
!244 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !245, i64 0}
!245 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !246, i64 0, !29, i64 4}
!246 = !{!"_ZTSN3gmx13PinningPolicyE", !7, i64 0}
!247 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!248 = !{!"_ZTSSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EE", !249, i64 0}
!249 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_ELb1ELb1EE", !250, i64 0}
!250 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EE", !251, i64 0}
!251 = !{!"_ZTSSt5tupleIJPN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EEE", !252, i64 0}
!252 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EEE", !253, i64 0}
!253 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx28GpuHaloExchangeNvshmemHelperELb0EE", !254, i64 0}
!254 = !{!"p1 _ZTSN3gmx28GpuHaloExchangeNvshmemHelperE", !11, i64 0}
!255 = !{!154, !6, i64 4}
!256 = !{!257, !258, i64 0}
!257 = !{!"_ZTSN3gmx12ArrayRefIterI13thread_work_tEE", !258, i64 0}
!258 = !{!"p1 _ZTS13thread_work_t", !11, i64 0}
!259 = distinct !{!259, !260, !261, !262}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = !{!"branch_weights", i32 4, i32 12}
!264 = distinct !{!264, !260, !261, !262}
!265 = distinct !{!265, !260, !262, !261}
!266 = distinct !{!266, !260}
!267 = distinct !{!267, !260, !261, !262}
!268 = distinct !{!268, !260, !261, !262}
!269 = distinct !{!269, !260, !262, !261}
!270 = !{!271, !272, i64 8}
!271 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !272, i64 0, !272, i64 8, !272, i64 16}
!272 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!273 = !{!271, !272, i64 0}
!274 = !{!272, !272, i64 0}
!275 = distinct !{!275, !260, !261, !262}
!276 = !{!"branch_weights", i32 4, i32 28}
!277 = distinct !{!277, !260, !261, !262}
!278 = distinct !{!278, !260}
!279 = distinct !{!279, !260, !262, !261}
!280 = !{!281, !6, i64 2768}
!281 = !{!"_ZTS13thread_work_t", !282, i64 0, !296, i64 2760, !6, i64 2768, !303, i64 2776}
!282 = !{!"_ZTS22InteractionDefinitions", !283, i64 0, !284, i64 8, !285, i64 16, !285, i64 40, !288, i64 64, !289, i64 2344, !6, i64 2724, !290, i64 2728}
!283 = !{!"p1 _ZTSSt6vectorI9t_iparamsSaIS0_EE", !11, i64 0}
!284 = !{!"p1 _ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !11, i64 0}
!285 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !286, i64 0}
!286 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !287, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !271, i64 0}
!288 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !7, i64 0}
!289 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunctioniLS1_95EEE", !7, i64 0}
!290 = !{!"_ZTS10gmx_cmap_t", !6, i64 0, !291, i64 8}
!291 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !292, i64 0}
!292 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !293, i64 0}
!293 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !294, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !295, i64 0, !295, i64 8, !295, i64 16}
!295 = !{!"p1 _ZTS14gmx_cmapdata_t", !11, i64 0}
!296 = !{!"_ZTSSt10unique_ptrISt5arrayISt6vectorIiSaIiEELm10EESt14default_deleteIS4_EE", !297, i64 0}
!297 = !{!"_ZTSSt15__uniq_ptr_dataISt5arrayISt6vectorIiSaIiEELm10EESt14default_deleteIS4_ELb1ELb1EE", !298, i64 0}
!298 = !{!"_ZTSSt15__uniq_ptr_implISt5arrayISt6vectorIiSaIiEELm10EESt14default_deleteIS4_EE", !299, i64 0}
!299 = !{!"_ZTSSt5tupleIJPSt5arrayISt6vectorIiSaIiEELm10EESt14default_deleteIS4_EEE", !300, i64 0}
!300 = !{!"_ZTSSt11_Tuple_implILm0EJPSt5arrayISt6vectorIiSaIiEELm10EESt14default_deleteIS4_EEE", !301, i64 0}
!301 = !{!"_ZTSSt10_Head_baseILm0EPSt5arrayISt6vectorIiSaIiEELm10EELb0EE", !302, i64 0}
!302 = !{!"p1 _ZTSSt5arrayISt6vectorIiSaIiEELm10EE", !11, i64 0}
!303 = !{!"_ZTSN3gmx11ListOfListsIiEE", !60, i64 0, !60, i64 24}
!304 = distinct !{!304, !261, !262}
!305 = !{!"branch_weights", i32 8, i32 24}
!306 = distinct !{!306, !261, !262}
!307 = distinct !{!307, !262, !261}
!308 = distinct !{!308, !260, !261, !262}
!309 = distinct !{!309, !260, !261, !262}
!310 = distinct !{!310, !260, !262, !261}
!311 = distinct !{!311, !260}
!312 = distinct !{!312, !260}
!313 = !{!314, !64, i64 0}
!314 = !{!"_ZTSN3gmx12ArrayRefIterIKiEE", !64, i64 0}
!315 = !{!316, !6, i64 2724}
!316 = !{!"_ZTS14gmx_localtop_t", !282, i64 0, !303, i64 2760}
!317 = !{!211, !64, i64 0}
!318 = !{!211, !64, i64 8}
!319 = !{!218, !218, i64 0}
!320 = !{!282, !283, i64 0}
!321 = !{i64 8}
!322 = !{!323, !6, i64 0}
!323 = !{!"_ZTSN3gmx5RangeIiEE", !6, i64 0, !6, i64 4}
!324 = !{!323, !6, i64 4}
!325 = !{ptr @_ZL17make_bondeds_zoneILb0EEiRK17gmx_reverse_top_tN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS3_11DomdecZonesERKSt6vectorI14gmx_molblock_tSaISE_EEbPS5_bfPK5t_pbcNS4_IKNS3_11BasicVectorIfEEEEPK9t_iparamsP22InteractionDefinitionsiRKNS3_5RangeIiEE, ptr @_ZL17make_bondeds_zoneILb1EEiRK17gmx_reverse_top_tN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS3_11DomdecZonesERKSt6vectorI14gmx_molblock_tSaISE_EEbPS5_bfPK5t_pbcNS4_IKNS3_11BasicVectorIfEEEEPK9t_iparamsP22InteractionDefinitionsiRKNS3_5RangeIiEE}
!326 = !{ptr @_ZL20make_exclusions_zoneILb0EEvN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS0_11DomdecZonesENS1_IK15MolblockIndicesEERKSt6vectorI13gmx_moltype_tSaISE_EES3_PNS0_11ListOfListsIiEEiiiS3_, ptr @_ZL20make_exclusions_zoneILb1EEvN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS0_11DomdecZonesENS1_IK15MolblockIndicesEERKSt6vectorI13gmx_moltype_tSaISE_EES3_PNS0_11ListOfListsIiEEiiiS3_}
!327 = !{!328, !329, i64 0}
!328 = !{!"_ZTS17ReverseTopOptions", !329, i64 0, !29, i64 1, !29, i64 2}
!329 = !{!"_ZTSN3gmx16DDBondedCheckingE", !7, i64 0}
!330 = !{!331, !6, i64 4}
!331 = !{!"_ZTS15MolblockIndices", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!332 = distinct !{!332, !260}
!333 = !{!331, !6, i64 12}
!334 = !{!331, !6, i64 0}
!335 = !{!331, !6, i64 8}
!336 = !{!337, !6, i64 0}
!337 = !{!"_ZTS12AtomIndexSet", !6, i64 0, !6, i64 4, !6, i64 8}
!338 = !{!337, !6, i64 4}
!339 = !{!337, !6, i64 8}
!340 = !{!341, !6, i64 48}
!341 = !{!"_ZTS15reverse_ilist_t", !60, i64 0, !60, i64 24, !6, i64 48}
!342 = !{!343, !344, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE17_Vector_impl_dataE", !344, i64 0, !344, i64 8, !344, i64 16}
!344 = !{!"p1 _ZTS14gmx_molblock_t", !11, i64 0}
!345 = !{!346, !347, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !347, i64 0, !347, i64 8, !347, i64 16}
!347 = !{!"p1 _ZTS13gmx_moltype_t", !11, i64 0}
!348 = !{!349, !7, i64 40}
!349 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEEE", !7, i64 0, !7, i64 40}
!350 = !{!351, !352, i64 0}
!351 = !{!"_ZTSNSt12_Vector_baseIN11gmx_ga2la_t5EntryESaIS1_EE17_Vector_impl_dataE", !352, i64 0, !352, i64 8, !352, i64 16}
!352 = !{!"p1 _ZTSN11gmx_ga2la_t5EntryE", !11, i64 0}
!353 = !{!354, !6, i64 4}
!354 = !{!"_ZTSN11gmx_ga2la_t5EntryE", !6, i64 0, !6, i64 4}
!355 = !{!356, !6, i64 24}
!356 = !{!"_ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEEE", !357, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!357 = !{!"_ZTSSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE", !358, i64 0}
!358 = !{!"_ZTSSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE", !359, i64 0}
!359 = !{!"_ZTSNSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_Vector_implE", !360, i64 0}
!360 = !{!"_ZTSNSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE17_Vector_impl_dataE", !361, i64 0, !361, i64 8, !361, i64 16}
!361 = !{!"p1 _ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryE", !11, i64 0}
!362 = !{!360, !361, i64 0}
!363 = !{!364, !6, i64 0}
!364 = !{!"_ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryE", !6, i64 0, !354, i64 4, !6, i64 12}
!365 = !{!364, !6, i64 12}
!366 = distinct !{!366, !260}
!367 = distinct !{!367, !260}
!368 = distinct !{!368, !260}
!369 = !{!354, !6, i64 0}
!370 = distinct !{!370, !260}
!371 = !{!372}
!372 = !{i64 2, i64 -1, i64 -1, i1 true}
!373 = !{!63, !64, i64 16}
!374 = !{!375, !6, i64 16}
!375 = !{!"_ZTS22t_interaction_function", !376, i64 0, !376, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!376 = !{!"p1 omnipotent char", !11, i64 0}
!377 = !{!375, !6, i64 28}
!378 = distinct !{!378, !260, !261, !262}
!379 = distinct !{!379, !260, !262, !261}
!380 = distinct !{!380, !260}
!381 = distinct !{!381, !260}
!382 = !{!7, !7, i64 0}
!383 = !{!34, !35, i64 0}
!384 = !{!35, !35, i64 0}
!385 = !{!271, !272, i64 16}
!386 = !{i64 0, i64 36, !382}
!387 = distinct !{!387, !260}
!388 = distinct !{!388, !260, !261, !262}
!389 = distinct !{!389, !260, !262, !261}
!390 = distinct !{!390, !260}
!391 = distinct !{!391, !260}
!392 = distinct !{!392, !260}
!393 = distinct !{!393, !260}
!394 = distinct !{!394, !260}
!395 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!396 = distinct !{!396, !260, !261, !262}
!397 = distinct !{!397, !260, !261, !262}
!398 = distinct !{!398, !260, !261}
!399 = distinct !{!399, !260, !261, !262}
!400 = distinct !{!400, !260, !261, !262}
!401 = distinct !{!401, !260, !261}
!402 = distinct !{!402, !260, !261, !262}
!403 = distinct !{!403, !260, !261, !262}
!404 = distinct !{!404, !260, !261}
!405 = !{i64 0, i64 48, !382}
end_hunk_1
