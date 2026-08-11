inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6casadi8Sparsity4kronERKS0_S2_:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 8 uses
  %i.an = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96 ; 3 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 24     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.av = mul nsw i64 %i.j, %i.e                  ; 2 uses
  %i.aw = add nsw i64 %i.av, 1                    ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, 1152921504606846975
  br i1 %i.ax, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %.noexc76

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit93

.noexc76:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ay = shl nuw nsw i64 %i.aw, 3                ; 3 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32 ; 5 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  br label %.loopexit93

.loopexit93:                                      ; preds = %.noexc76, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.bd = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.az, %.noexc76 ] ; 6 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.bc, %.noexc76 ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bf = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.loopexit93
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !50
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !50
  %i.bn = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !50
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !50
  %i.bv = mul nsw i64 %i.bu, %i.bm                ; 5 uses
  %i.bw = icmp ugt i64 %i.bv, 1152921504606846975
  br i1 %i.bw, label %bb.g, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i80

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
          to label %.noexc83 unwind label %bb.k

.noexc83:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i80: ; preds = %bb.f
  %.not.i.i.i.i81 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i81, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i82, label %bb.h

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i82: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i80
  %i.bx = shl nuw nsw i64 %i.bv, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #32
          to label %.noexc84 unwind label %bb.k   ; 6 uses

.noexc84:                                         ; preds = %bb.h
  store ptr %i.by, ptr %4, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !49
  store i64 0, ptr %i.by, align 8, !tbaa !50
  %i.cb = getelementptr i8, ptr %i.by, i64 8      ; 3 uses
  %i.cc = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc84
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc84, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i82
  %i.cf = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i82 ], [ %i.by, %.noexc84 ], [ %i.by, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 7 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i82 ], [ %i.cb, %.noexc84 ], [ %i.ce, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !52
  %i.ch = icmp sgt i64 %i.e, 0
  %i.ci = icmp sgt i64 %i.j, 0
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.cj = ptrtoaddr ptr %i.cf to i64
  %i.ck = add i64 %i.cj, -24
  %xtraiter = and i64 %i.j, 1
  %i.cl = icmp eq i64 %i.j, 1
  %unroll_iter = and i64 %i.j, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod151 = trunc i64 %i.j to i1
  br label %.lr.ph

..loopexit_crit_edge.loopexit147.unr-lcssa:       ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %..loopexit_crit_edge.loopexit147.unr-lcssa, %.lr.ph.split.preheader
  %.epil.init = phi i64 [ %.pre, %.lr.ph.split.preheader ], [ %i.gn, %..loopexit_crit_edge.loopexit147.unr-lcssa ]
  %.069103.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.gh, %..loopexit_crit_edge.loopexit147.unr-lcssa ] ; 2 uses
  %.171102.epil.init = phi i64 [ %.070113, %.lr.ph.split.preheader ], [ %i.gk, %..loopexit_crit_edge.loopexit147.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.069103.epil.init
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.069103.epil.init
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cr = add nsw i64 %.171102.epil.init, 1       ; 2 uses
  %i.cs = sub nsw i64 %i.cq, %i.cn
  %i.ct = mul nsw i64 %i.cs, %i.df
  %i.cu = add nsw i64 %.epil.init, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.cr
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !50
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph.split.epil.preheader, %..loopexit_crit_edge.loopexit147.unr-lcssa, %._crit_edge100.us
  %.us-phi110 = phi i64 [ %i.dt, %._crit_edge100.us ], [ %i.gk, %..loopexit_crit_edge.loopexit147.unr-lcssa ], [ %i.cr, %.lr.ph.split.epil.preheader ]
  %.us-phi111 = phi i64 [ %.us-phi.us, %._crit_edge100.us ], [ %.067114, %..loopexit_crit_edge.loopexit147.unr-lcssa ], [ %.067114, %.lr.ph.split.epil.preheader ]
  %exitcond123.not = icmp eq i64 %i.db, %i.e
  br i1 %exitcond123.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !387

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.i
  %i.cw = mul nsw i64 %i.r, %i.n
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.cw, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.o

bb.j:                                             ; preds = %bb.e, %.loopexit93
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit89

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit89

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.067114 = phi i64 [ %.us-phi111, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.070113 = phi i64 [ %.us-phi110, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.072112 = phi i64 [ %i.db, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.072112
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !50 ; 3 uses
  %i.db = add nuw nsw i64 %.072112, 1             ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !50 ; 3 uses
  %i.de = icmp slt i64 %i.da, %i.dd
  %i.df = sub nsw i64 %i.dd, %i.da                ; 4 uses
  br i1 %i.de, label %.lr.ph99.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %.070113
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 2 uses
  br i1 %i.cl, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

.lr.ph99.us:                                      ; preds = %.lr.ph, %._crit_edge100.us
  %.168104.us = phi i64 [ %.us-phi.us, %._crit_edge100.us ], [ %.067114, %.lr.ph ] ; 3 uses
  %.069103.us = phi i64 [ %i.di, %._crit_edge100.us ], [ 0, %.lr.ph ] ; 2 uses
  %.171102.us = phi i64 [ %i.dt, %._crit_edge100.us ], [ %.070113, %.lr.ph ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.069103.us
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !50 ; 9 uses
  %i.di = add nuw nsw i64 %.069103.us, 1          ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !50 ; 7 uses
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %.lr.ph.us.us.preheader, label %._crit_edge100.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph99.us
  %5 = shl i64 %.168104.us, 3
  %6 = add i64 %i.ck, %5
  %i.dm = add i64 %i.as, %i.dh
  %i.dn = shl i64 %i.dm, 3
  %i.do = add i64 %i.dn, %i.aq
  %7 = sub i64 %6, %i.do
  %i.dp = sub i64 %i.dk, %i.dh
  %8 = shl i64 %i.dp, 3
  %i.dq = sub i64 %i.dk, %i.dh                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dq, 4
  %invariant.op = add i64 %7, -1
  %n.vec = and i64 %i.dq, -4                      ; 4 uses
  %i.dr = add i64 %i.dh, %n.vec
  %i.ds = getelementptr [8 x i8], ptr %i.au, i64 %i.dh
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br label %.lr.ph.us.us

._crit_edge100.us:                                ; preds = %._crit_edge.us.us, %.lr.ph99.us
  %.us-phi.us = phi i64 [ %.168104.us, %.lr.ph99.us ], [ %.lcssa143, %._crit_edge.us.us ] ; 2 uses
  %i.dt = add nsw i64 %.171102.us, 1              ; 3 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %.171102.us
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !50
  %i.dw = sub nsw i64 %i.dk, %i.dh
  %i.dx = mul nsw i64 %i.dw, %i.df
  %i.dy = add nsw i64 %i.dv, %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.dt
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !50
  %exitcond122.not = icmp eq i64 %i.di, %i.j
  br i1 %exitcond122.not, label %..loopexit_crit_edge, label %.lr.ph99.us, !llvm.loop !388

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvar = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvar.next, %._crit_edge.us.us ] ; 2 uses
  %.06497.us.us = phi i64 [ %i.da, %.lr.ph.us.us.preheader ], [ %i.ft, %._crit_edge.us.us ] ; 2 uses
  %.296.us.us = phi i64 [ %.168104.us, %.lr.ph.us.us.preheader ], [ %.lcssa143, %._crit_edge.us.us ] ; 4 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.06497.us.us
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !50
  %i.ec = mul nsw i64 %i.eb, %i.r                 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us
  %9 = mul i64 %8, %indvar
  %.reass = add i64 %9, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ed = add i64 %.296.us.us, %n.vec             ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.cf, i64 %.296.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <2 x i64>, ptr %i.ef, align 8, !tbaa !50
  %wide.load145 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !50
  %i.eh = add nsw <2 x i64> %wide.load, %broadcast.splat
  %i.ei = add nsw <2 x i64> %wide.load145, %broadcast.splat
  %i.ej = getelementptr [8 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %i.eh, ptr %i.ej, align 8, !tbaa !50
  store <2 x i64> %i.ei, ptr %i.ek, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.us, %middle.block
  %.095.us.us.ph = phi i64 [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.us.us ], [ %i.dr, %middle.block ] ; 4 uses
  %.394.us.us.ph = phi i64 [ %.296.us.us, %vector.memcheck ], [ %.296.us.us, %.lr.ph.us.us ], [ %i.ed, %middle.block ] ; 2 uses
  %i.em = sub i64 %i.dk, %.095.us.us.ph
  %xtraiter152 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.095.us.us.prol = phi i64 [ %i.es, %scalar.ph.prol ], [ %.095.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.394.us.us.prol = phi i64 [ %i.eq, %scalar.ph.prol ], [ %.394.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.en = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.095.us.us.prol
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !50
  %i.ep = add nsw i64 %i.eo, %i.ec
  %i.eq = add nsw i64 %.394.us.us.prol, 1         ; 3 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %.394.us.us.prol
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !50
  %i.es = add nsw i64 %.095.us.us.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !390

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa148.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.eq, %scalar.ph.prol ]
  %.095.us.us.unr = phi i64 [ %.095.us.us.ph, %scalar.ph.preheader ], [ %i.es, %scalar.ph.prol ]
  %.394.us.us.unr = phi i64 [ %.394.us.us.ph, %scalar.ph.preheader ], [ %i.eq, %scalar.ph.prol ]
  %i.et = sub i64 %.095.us.us.ph, %i.dk
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.095.us.us = phi i64 [ %i.fs, %scalar.ph ], [ %.095.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.394.us.us = phi i64 [ %i.fp, %scalar.ph ], [ %.394.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.095.us.us
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !50
  %i.ex = add nsw i64 %i.ew, %i.ec
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %.394.us.us
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !50
  %i.ez = getelementptr [8 x i8], ptr %i.au, i64 %.095.us.us
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !50
  %i.fc = add nsw i64 %i.fb, %i.ec
  %i.fd = getelementptr [8 x i8], ptr %i.cf, i64 %.394.us.us
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  store i64 %i.fc, ptr %i.fe, align 8, !tbaa !50
  %i.ff = getelementptr [8 x i8], ptr %i.au, i64 %.095.us.us
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !50
  %i.fi = add nsw i64 %i.fh, %i.ec
  %i.fj = getelementptr [8 x i8], ptr %i.cf, i64 %.394.us.us
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store i64 %i.fi, ptr %i.fk, align 8, !tbaa !50
  %i.fl = getelementptr [8 x i8], ptr %i.au, i64 %.095.us.us
  %i.fm = getelementptr i8, ptr %i.fl, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !50
  %i.fo = add nsw i64 %i.fn, %i.ec
  %i.fp = add nsw i64 %.394.us.us, 4              ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %i.cf, i64 %.394.us.us
  %i.fr = getelementptr i8, ptr %i.fq, i64 24
  store i64 %i.fo, ptr %i.fr, align 8, !tbaa !50
  %i.fs = add nsw i64 %.095.us.us, 4              ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %i.fs, %i.dk
  br i1 %exitcond120.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !391

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa143 = phi i64 [ %i.ed, %middle.block ], [ %.lcssa148.unr, %scalar.ph.prol.loopexit ], [ %i.fp, %scalar.ph ] ; 2 uses
  %i.ft = add nsw i64 %.06497.us.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ft, %i.dd
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond121.not, label %._crit_edge100.us, label %.lr.ph.us.us, !llvm.loop !392

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.fu = phi i64 [ %i.gn, %.lr.ph.split ], [ %.pre, %.lr.ph.split.preheader ]
  %.069103 = phi i64 [ %i.gh, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.171102 = phi i64 [ %i.gk, %.lr.ph.split ], [ %.070113, %.lr.ph.split.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.069103
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !50
  %i.fx = or disjoint i64 %.069103, 1             ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !50
  %i.ga = sub nsw i64 %i.fz, %i.fw
  %i.gb = mul nsw i64 %i.ga, %i.df
  %i.gc = add nsw i64 %i.fu, %i.gb                ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %i.bd, i64 %.171102
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.fx
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !50
  %i.gh = add nuw nsw i64 %.069103, 2             ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !50
  %i.gk = add nsw i64 %.171102, 2                 ; 4 uses
  %i.gl = sub nsw i64 %i.gj, %i.gg
  %i.gm = mul nsw i64 %i.gl, %i.df
  %i.gn = add nsw i64 %i.gc, %i.gm                ; 3 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.gk
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !50
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.loopexit147.unr-lcssa, label %.lr.ph.split, !llvm.loop !388

bb.l:                                             ; preds = %._crit_edge.split
  %i.gp = load ptr, ptr %4, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.gv = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIxSaIxEED2Ev.exit87, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !49
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit87

_ZNSt6vectorIxSaIxEED2Ev.exit87:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge.split
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %4, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIxSaIxEED2Ev.exit89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !49
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit89

_ZNSt6vectorIxSaIxEED2Ev.exit89:                  ; preds = %bb.p, %bb.o, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.j ], [ %i.cy, %bb.k ], [ %i.hb, %bb.o ], [ %i.hb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.hi = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIxSaIxEED2Ev.exit91, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit89
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !49
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit91

_ZNSt6vectorIxSaIxEED2Ev.exit91:                  ; preds = %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit87, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi8Sparsity7diagcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %2 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %3 = alloca %"class.std::vector.3", align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !49
  store i64 0, ptr %i.a, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.g = load ptr, ptr %1, align 8, !tbaa !162    ; 2 uses
  %.not147 = icmp eq ptr %i.f, %i.g
  br i1 %.not147, label %._crit_edge144, label %.lr.ph143

.lr.ph143:                                        ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.a

._crit_edge144:                                   ; preds = %bb.u, %.noexc
  %.037.lcssa = phi i64 [ 0, %.noexc ], [ %i.dp, %bb.u ]
  %.036.lcssa = phi i64 [ 0, %.noexc ], [ %i.cy, %bb.u ]
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.037.lcssa, i64 noundef %.036.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.y

bb.a:                                             ; preds = %.lr.ph143, %bb.u
  %.promoted132 = phi ptr [ null, %.lr.ph143 ], [ %.promoted132181, %bb.u ] ; 2 uses
  %.promoted126 = phi ptr [ null, %.lr.ph143 ], [ %.promoted126179, %bb.u ] ; 2 uses
  %.promoted119 = phi ptr [ null, %.lr.ph143 ], [ %.lcssa120, %bb.u ] ; 8 uses
  %.promoted111 = phi ptr [ %i.a, %.lr.ph143 ], [ %.lcssa112, %bb.u ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.lr.ph143 ], [ %i.dt, %bb.u ]
  %.036141 = phi i64 [ 0, %.lr.ph143 ], [ %i.cy, %bb.u ]
  %.037140 = phi i64 [ 0, %.lr.ph143 ], [ %i.dp, %bb.u ] ; 2 uses
  %.045139 = phi i64 [ 0, %.lr.ph143 ], [ %i.dr, %bb.u ] ; 8 uses
  %.046138 = phi i64 [ 0, %.lr.ph143 ], [ %i.dq, %bb.u ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.045139
  %i.l = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %1, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.045139
  %i.r = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.045139
  %i.y = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %1, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.045139
  %i.ah = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZNK6casadi8Sparsity3nnzEv.exit unwind label %bb.h

_ZNK6casadi8Sparsity3nnzEv.exit:                  ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.promoted107 = load ptr, ptr %i.c, align 8     ; 2 uses
  %.not115 = icmp slt i64 %i.v, 1
  br i1 %.not115, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit, %_ZNK6casadi8Sparsity3nnzEv.exit
  %.lcssa112 = phi ptr [ %.promoted111, %_ZNK6casadi8Sparsity3nnzEv.exit ], [ %i.bp, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ] ; 2 uses
  %.lcssa108 = phi ptr [ %.promoted107, %_ZNK6casadi8Sparsity3nnzEv.exit ], [ %i.bq, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ]
end_hunk_0
