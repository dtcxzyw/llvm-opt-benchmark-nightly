Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM27CumulativeFeatureConstraintC2ERKS0_:bb.a

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i33: ; preds = %bb.v
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #41
          to label %.noexc36 unwind label %bb.ai

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i33, %bb.u
  %i.cw = phi ptr [ null, %bb.u ], [ %i.cv, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i33 ] ; 6 uses
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !308
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !431
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !438
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !269 ; 3 uses
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !269
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 4 uses
  %i.df = icmp sgt i64 %i.de, 8
  br i1 %i.df, label %bb.w, label %bb.x, !prof !366

bb.w:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.da, i64 %i.de, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %.noexc36
  %i.dg = icmp eq i64 %i.de, 8
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = load double, ptr %i.da, align 8, !tbaa !309
  store double %i.dh, ptr %i.cw, align 8, !tbaa !309
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.di = getelementptr inbounds i8, ptr %i.cw, i64 %i.de
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !431
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !431 ; 2 uses
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i38 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i.i.i38, label %.noexc42, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = icmp ugt i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %.noexc.i.i40, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i39, !prof !365

.noexc.i.i40:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc41 unwind label %bb.aj

.noexc41:                                         ; preds = %.noexc.i.i40
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i39: ; preds = %bb.aa
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #41
          to label %.noexc42 unwind label %bb.aj

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i39, %bb.z
  %i.dt = phi ptr [ null, %bb.z ], [ %i.ds, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i39 ] ; 6 uses
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !308
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !431
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !438
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !269 ; 3 uses
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !269
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 8
  br i1 %i.ec, label %bb.ab, label %bb.ac, !prof !366

bb.ab:                                            ; preds = %.noexc42
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dt, ptr align 8 %i.dx, i64 %i.eb, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc42
  %i.ed = icmp eq i64 %i.eb, 8
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = load double, ptr %i.dx, align 8, !tbaa !309
  store double %i.ee, ptr %i.dt, align 8, !tbaa !309
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.eb
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !431
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 32, i1 false)
  ret void

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i19
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit47

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i28
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit45

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i33, %.noexc.i.i34
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i39, %.noexc.i.i40
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %i.cm, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = load ptr, ptr %i.cz, align 8, !tbaa !438
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #40
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ai ], [ %i.em, %bb.aj ], [ %i.em, %bb.ak ] ; 2 uses
  %i.es = load ptr, ptr %i.bp, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIdSaIdEED2Ev.exit45, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.et = load ptr, ptr %i.cc, align 8, !tbaa !438
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #40
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit45

_ZNSt6vectorIdSaIdEED2Ev.exit45:                  ; preds = %bb.al, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.ah ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.al ] ; 2 uses
  %i.ex = load ptr, ptr %i.as, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIdSaIdEED2Ev.exit47, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit45
  %i.ey = load ptr, ptr %i.bf, align 8, !tbaa !438
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #40
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit47

_ZNSt6vectorIdSaIdEED2Ev.exit47:                  ; preds = %bb.am, %_ZNSt6vectorIdSaIdEED2Ev.exit45, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ag ], [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit45 ], [ %.pn.pn, %bb.am ] ; 2 uses
  %i.fc = load ptr, ptr %i.v, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit47
  %i.fd = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #40
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.an, %_ZNSt6vectorIdSaIdEED2Ev.exit47, %bb.af
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.af ], [ %.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit47 ], [ %.pn.pn.pn, %bb.an ]
  %i.fh = load ptr, ptr %0, align 8, !tbaa !222   ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIjSaIjEED2Ev.exit50, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !223
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #40
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit50

_ZNSt6vectorIjSaIjEED2Ev.exit50:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ao
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23AdvancedLeafConstraints30GoDownToFindConstrainingLeavesEiiibjjRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 %6, ptr %i.a, align 4, !tbaa !198
  %i.c = icmp slt i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %.tailrecurse._crit_edge_crit_edge, label %.lr.ph

.tailrecurse._crit_edge_crit_edge:                ; preds = %bb.a
  %.pre87 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302
  br label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = icmp ne i32 %2, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %or.cond10.v.i = select i1 %4, i8 -1, i8 1
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %.tailrecurse._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre87, %.tailrecurse._crit_edge_crit_edge ], [ %i.cj, %tailrecurse ]
  %.tr69.lcssa = phi i32 [ %3, %.tailrecurse._crit_edge_crit_edge ], [ %i.cn, %tailrecurse ]
  %.tr71.lcssa = phi i32 [ %5, %.tailrecurse._crit_edge_crit_edge ], [ %i.ci, %tailrecurse ]
  %i.h = xor i32 %.tr69.lcssa, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.j = zext nneg i32 %i.h to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !308
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load double, ptr %i.l, align 8, !tbaa !309
  tail call void @_ZN8LightGBM23AdvancedLeafConstraints17UpdateConstraintsEPNS_26FeatureMinOrMaxConstraintsEdjjbj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %10, double noundef %i.m, i32 noundef %.tr71.lcssa, i32 noundef %6, i1 noundef zeroext %4, i32 noundef %11)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = phi i32 [ %5, %.lr.ph ], [ %i.ci, %tailrecurse ] ; 3 uses
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.cj, %tailrecurse ] ; 5 uses
  %.tr6982 = phi i32 [ %3, %.lr.ph ], [ %i.cn, %tailrecurse ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = zext nneg i32 %.tr6982 to i64            ; 6 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !222
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !198  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !347
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !294
  %i.ac = and i8 %i.ab, 1
  %.not.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i, label %.preheader.i, label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit

.preheader.i:                                     ; preds = %bb.b
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !290 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !195   ; 3 uses
  %.not42.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not42.i, label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load ptr, ptr %8, align 8
  %i.ak = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %bb.j ] ; 9 uses
  %.02633.i = phi i8 [ 1, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 4 uses
  %.02732.i = phi i8 [ 1, %.lr.ph.i ], [ %.229.i, %bb.j ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.034.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !198
  %i.an = icmp eq i32 %i.am, %i.t
  br i1 %i.an, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.034.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198 ; 2 uses
  %.not.i = icmp ult i32 %i.x, %i.ap
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = sdiv i64 %.034.i, 64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = and i64 %.034.i, -9223372036854775745
  %i.at = icmp ugt i64 %i.as, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.at, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ar, i64 %storemerge.idx.i.i.i.i.i.i
  %i.au = and i64 %.034.i, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !243
  %i.ax = and i64 %i.aw, %i.av
  %.not30.i = icmp eq i64 %i.ax, 0
  br i1 %.not30.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc nuw i8 %.02633.i to i1
  br i1 %i.ay, label %bb.g, label %.loopexit.loopexit.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.128.i = phi i8 [ %.02732.i, %bb.d ], [ %.02732.i, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %.not20.i = icmp ugt i32 %i.x, %i.ap
  br i1 %.not20.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sdiv i64 %.034.i, 64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = and i64 %.034.i, -9223372036854775745
  %i.bc = icmp ugt i64 %i.bb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i21.i = select i1 %i.bc, i64 -8, i64 0
  %storemerge.i.i.i.i.i22.i = getelementptr inbounds i8, ptr %i.ba, i64 %storemerge.idx.i.i.i.i.i21.i
  %i.bd = and i64 %.034.i, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = load i64, ptr %storemerge.i.i.i.i.i22.i, align 8, !tbaa !243
  %i.bg = and i64 %i.bf, %i.be
  %.not31.i = icmp eq i64 %i.bg, 0
  br i1 %.not31.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = trunc nuw i8 %.128.i to i1
  br i1 %i.bh, label %bb.j, label %.loopexit.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.c
  %.229.i = phi i8 [ %.128.i, %bb.g ], [ 1, %bb.i ], [ %.128.i, %bb.h ], [ %.02732.i, %bb.c ] ; 2 uses
  %.1.i = phi i8 [ %.02633.i, %bb.g ], [ 0, %bb.i ], [ %.02633.i, %bb.h ], [ %.02633.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.034.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.ai
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !20

.loopexit.loopexit.i:                             ; preds = %bb.j, %bb.i, %bb.f
  %.3.ph.i = phi i8 [ %.229.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ]
  %.2.ph.i = phi i8 [ %.1.i, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ]
  %i.bj = zext nneg i8 %.3.ph.i to i16
  %i.bk = shl nuw nsw i16 %i.bj, 8
  %i.bl = zext nneg i8 %.2.ph.i to i16
  %i.bm = or disjoint i16 %i.bk, %i.bl
  br label %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit

_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit: ; preds = %bb.b, %.preheader.i, %.loopexit.loopexit.i
  %.3.i = phi i16 [ 257, %bb.b ], [ 257, %.preheader.i ], [ %i.bm, %.loopexit.loopexit.i ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i16 %.3.i, 8    ; 2 uses
  %i.bn = icmp eq i32 %i.t, %1                    ; 3 uses
  %i.bo = and i1 %i.e, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !195
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.q
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !198
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !411
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 528
  %i.bv = sext i32 %i.bs to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !347
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !294 ; 2 uses
  %12 = icmp eq i8 %i.by, 0
  %i.bz = icmp eq i8 %i.by, %or.cond10.v.i
  %13 = select i1 %i.bz, i16 1, i16 256
  %.sroa.5.0.i = select i1 %12, i16 257, i16 %13  ; 4 uses
  %14 = trunc i16 %.3.i to i1                     ; 2 uses
  %.not56 = xor i1 %14, true
  %15 = trunc i16 %.sroa.5.0.i to i1
  %.not = xor i1 %15, true
  %16 = trunc nuw i16 %.sroa.5.0.extract.shift to i1 ; 4 uses
  %or.cond = select i1 %.not, i1 %16, i1 false
  %or.cond58 = select i1 %.not56, i1 true, i1 %or.cond
  br i1 %or.cond58, label %21, label %bb.m

bb.l:                                             ; preds = %_ZN8LightGBM27IntermediateLeafConstraints24ShouldKeepGoingLeftRightEiRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEE.exit
  %17 = trunc i16 %.3.i to i1
  %18 = trunc nuw i16 %.sroa.5.0.extract.shift to i1 ; 2 uses
  br i1 %17, label %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit, label %21

_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit, %bb.m
  %.sroa.5.0.i7276 = phi i16 [ 257, %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit ], [ %.sroa.5.0.i, %bb.m ]
  %19 = phi i1 [ %18, %_ZN8LightGBM23AdvancedLeafConstraints36LeftRightContainsRelevantInformationEbib.exit ], [ %16, %bb.m ]
  %i.ca = add i32 %i.x, 1                         ; 2 uses
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !198
  %i.cb = icmp ult i32 %6, %i.ca
  %..i = select i1 %i.cb, ptr %i.a, ptr %i.b
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.5.0.i7275 = phi i16 [ %.sroa.5.0.i7276, %bb.n ], [ %.sroa.5.0.i, %bb.m ]
  %20 = phi i1 [ %19, %bb.n ], [ %16, %bb.m ]
  %.in = phi ptr [ %..i, %bb.n ], [ %i.a, %bb.m ]
  %i.cc = load i32, ptr %.in, align 4, !tbaa !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !195
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.q
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198
  tail call void @_ZN8LightGBM23AdvancedLeafConstraints30GoDownToFindConstrainingLeavesEiiibjjRKSt6vectorIiSaIiEERKS1_IjSaIjEERKS1_IbSaIbEEPNS_26FeatureMinOrMaxConstraintsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.cg, i1 noundef zeroext %4, i32 noundef %i.n, i32 noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %10, i32 noundef %11)
  br i1 %20, label %bb.p, label %.loopexit

21:                                               ; preds = %bb.l, %bb.k
  %22 = phi i1 [ %18, %bb.l ], [ %16, %bb.k ]
  %23 = phi i1 [ false, %bb.l ], [ %14, %bb.k ]
  %.sroa.5.0.i73 = phi i16 [ 257, %bb.l ], [ %.sroa.5.0.i, %bb.k ]
  br i1 %22, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %21
  %.sroa.5.0.i7378 = phi i16 [ %.sroa.5.0.i7275, %bb.o ], [ %.sroa.5.0.i73, %21 ]
  %24 = phi i1 [ true, %bb.o ], [ %23, %21 ]
  %25 = and i16 %.sroa.5.0.i7378, 256
  %.not54 = icmp eq i16 %25, 0
  %or.cond6 = and i1 %24, %.not54
  br i1 %or.cond6, label %.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.p
  %i.ch = add i32 %i.x, 1
  %.pre86 = tail call i32 @llvm.umax.i32(i32 %i.ch, i32 %i.n)
  %i.ci = select i1 %i.bn, i32 %.pre86, i32 %i.n  ; 2 uses
  %i.cj = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !302 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !195
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.q
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !198 ; 3 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %tailrecurse._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.o, %21, %bb.p, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23AdvancedLeafConstraints17UpdateConstraintsEPNS_26FeatureMinOrMaxConstraintsEdjjbj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca double, align 8                   ; 9 uses
  store double %2, ptr %i.a, align 8, !tbaa !309
  store i32 %3, ptr %i.b, align 4, !tbaa !198
  store i32 %4, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.e = select i1 %5, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  store double %i.e, ptr %i.d, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !222  ; 3 uses
  %.not148 = icmp eq ptr %i.h, %i.i
  br i1 %.not148, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.pre155158 = phi ptr [ %i.i, %.lr.ph ], [ %.pre155159, %bb.aa ] ; 4 uses
  %i.k = phi ptr [ %i.i, %.lr.ph ], [ %i.cf, %bb.aa ] ; 5 uses
  %.0139 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.aa ]
  %.081138 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.aa ] ; 8 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !308
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.081138 ; 5 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !309 ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081138
  %i.p = load i32, ptr %i.o, align 4, !tbaa !198  ; 7 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !198  ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load double, ptr %i.a, align 8, !tbaa !309 ; 3 uses
  %i.t = fcmp olt double %i.n, %i.s
  %i.u = fcmp olt double %i.s, %i.n
  %.sink = select i1 %5, i1 %i.u, i1 %i.t
  %i.v = select i1 %.sink, double %i.n, double %i.s ; 2 uses
  store double %i.v, ptr %i.m, align 8, !tbaa !309
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi double [ %i.v, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.c ], [ %.0139, %bb.b ]    ; 2 uses
  %i.x = icmp ugt i32 %i.p, %i.q
  %.pre153 = load i32, ptr %i.c, align 4, !tbaa !198 ; 5 uses
  br i1 %i.x, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ult i32 %i.p, %.pre153
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load double, ptr %i.a, align 8, !tbaa !309 ; 2 uses
  %i.aa = fcmp olt double %i.w, %i.z
  %i.ab = fcmp olt double %i.z, %i.w
  %.sink199 = select i1 %5, i1 %i.ab, i1 %i.aa
  %..i93 = select i1 %.sink199, ptr %i.m, ptr %i.a
  %i.ac = load double, ptr %..i93, align 8, !tbaa !309
  store double %i.ac, ptr %i.m, align 8, !tbaa !309
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = trunc nuw i8 %.1 to i1
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load double, ptr %i.a, align 8, !tbaa !309 ; 2 uses
  %i.af = load double, ptr %i.d, align 8, !tbaa !309 ; 2 uses
  br i1 %5, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = fcmp ogt double %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %bb.k

.critedge:                                        ; preds = %bb.h
  %i.ah = fcmp olt double %i.ae, %i.af
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.ai = call ptr @_ZNSt6vectorIdSaIdEE6insertEN9__gnu_cxx17__normal_iteratorIPKdS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !329
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.081138
  %i.al = call ptr @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.am = add nuw i64 %.081138, 1                 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !222 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.am
  %.pre151 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !198
  %.pre152 = load i32, ptr %i.c, align 4, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.j, %.critedge, %bb.d
  %.pre155157 = phi ptr [ %.pre155158, %bb.g ], [ %.pre, %bb.j ], [ %.pre155158, %bb.d ], [ %.pre155158, %.critedge ], [ %.pre155158, %bb.i ] ; 5 uses
  %i.an = phi ptr [ %i.k, %bb.g ], [ %.pre, %bb.j ], [ %i.k, %bb.d ], [ %i.k, %.critedge ], [ %i.k, %bb.i ] ; 5 uses
  %i.ao = phi i32 [ %.pre153, %bb.g ], [ %.pre152, %bb.j ], [ %.pre153, %bb.d ], [ %.pre153, %.critedge ], [ %.pre153, %bb.i ] ; 2 uses
  %i.ap = phi i32 [ %i.p, %bb.g ], [ %.pre151, %bb.j ], [ %i.p, %bb.d ], [ %i.p, %.critedge ], [ %i.p, %bb.i ] ; 2 uses
  %.182 = phi i64 [ %.081138, %bb.g ], [ %i.am, %bb.j ], [ %.081138, %bb.d ], [ %.081138, %.critedge ], [ %.081138, %bb.i ] ; 7 uses
  %.2 = phi i8 [ 1, %bb.g ], [ 1, %bb.j ], [ %.1, %bb.d ], [ 1, %.critedge ], [ 1, %bb.i ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, %i.ao                ; 3 uses
  br i1 %i.aq, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ugt i32 %i.ap, %i.ao
  %.not85 = icmp eq i64 %.182, 0                  ; 2 uses
  br i1 %i.ar, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not85, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load double, ptr %i.d, align 8, !tbaa !309
  %i.at = load ptr, ptr %1, align 8, !tbaa !308
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.182 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !309
  %i.ax = fcmp une double %i.as, %i.aw
  br i1 %i.ax, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ay = call ptr @_ZNSt6vectorIdSaIdEE6insertEN9__gnu_cxx17__normal_iteratorIPKdS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !329
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.182
  %i.bb = call ptr @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr nonnull %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  br i1 %.not85, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.182 ; 4 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !309
  %i.bf = add i64 %.182, -1                       ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !309
  %i.bi = fcmp oeq double %i.be, %i.bh
  br i1 %i.bi, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !269 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.t, label %bb.u, !prof !366

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bj, i64 %i.bn, i1 false)
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !431
  %.pre154 = load ptr, ptr %i.f, align 8, !tbaa !329 ; 2 uses
  br label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.v, label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

bb.v:                                             ; preds = %bb.u
  %i.bq = load double, ptr %i.bj, align 8, !tbaa !309
  store double %i.bq, ptr %i.bd, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit

_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  %.pre155156 = phi ptr [ %.pre155157, %bb.v ], [ %.pre155157, %bb.u ], [ %.pre154, %bb.t ], [ %.pre155157, %bb.r ] ; 3 uses
  %i.br = phi ptr [ %i.an, %bb.v ], [ %i.an, %bb.u ], [ %.pre154, %bb.t ], [ %i.an, %bb.r ]
  %i.bs = phi ptr [ %i.bk, %bb.v ], [ %i.bk, %bb.u ], [ %.pre.i.i, %bb.t ], [ %i.bk, %bb.r ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !431
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.182 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 4 uses
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !329 ; 5 uses
  %.not.i.i94 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i.i94, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIdSaIdEE5eraseEN9__gnu_cxx17__normal_iteratorIPKdS1_EE.exit
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.x, label %bb.y, !prof !366

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 4 %i.bv, i64 %i.bz, i1 false)
  %.pre.i.i95 = load ptr, ptr %i.g, align 8, !tbaa !403
  %.pre155.pre = load ptr, ptr %i.f, align 8, !tbaa !222
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

end_hunk_0
