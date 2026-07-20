inline.NumInlined: 681
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re23NFA6SearchERKNS_11StringPieceES3_bbPS1_i:bb.a
  br label %bb.bb

bb.ab:                                            ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !122 ; 2 uses
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !95
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.ac, label %bb.ae, !llvm.loop !172

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.bi, align 8, !tbaa !110
  %i.df = sext i32 %i.db to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df
  store ptr %i.ca, ptr %i.dg, align 8, !tbaa !153
  br label %bb.ae, !llvm.loop !172

bb.ad:                                            ; preds = %bb.x
  %i.dh = load ptr, ptr %i.bi, align 8, !tbaa !110
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.ca, ptr %i.di, align 8, !tbaa !153
  store i8 1, ptr %i.bj, align 8, !tbaa !156
  br label %.critedge87

bb.ae:                                            ; preds = %bb.x, %bb.ab, %bb.ac
  %.168 = lshr i32 %i.cg, 4
  br label %bb.x

bb.af:                                            ; preds = %bb.v
  %i.dj = icmp ugt ptr %.069, %i.ca
  br i1 %i.dj, label %.critedge87, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = load i8, ptr %i.bj, align 8, !tbaa !156, !range !154, !noundef !155
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ai, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load ptr, ptr %1, align 8, !tbaa !167
  %i.dn = icmp eq ptr %.069, %i.dm
  br i1 %i.dn, label %bb.am, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit

.critedge:                                        ; preds = %bb.ah
  %i.do = load i32, ptr %.0125, align 8, !tbaa !7
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = icmp ult ptr %.069, %i.ca
  %or.cond130 = and i1 %i.dq, %i.dp
  br i1 %or.cond130, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.critedge
  %i.dr = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !173
  %.not131 = icmp eq i64 %i.dt, 0
  br i1 %.not131, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = ptrtoint ptr %i.ca to i64
  %i.dv = ptrtoint ptr %.069 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = call noundef ptr @_ZN10duckdb_re24Prog11PrefixAccelEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %i.dr, ptr noundef %.069, i64 noundef %i.dw) ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr %i.bl, align 8, !tbaa !158
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.ak, %bb.al, %bb.aj, %.critedge
  %.170 = phi ptr [ %.069, %.critedge ], [ %i.dz, %bb.al ], [ %i.dx, %bb.ak ], [ %.069, %bb.aj ], [ %.069, %bb.ai ] ; 6 uses
  %i.ea = load ptr, ptr %i.bo, align 8, !tbaa !123 ; 4 uses
  %.not.i = icmp eq ptr %i.ea, null
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !122
  store ptr %i.eb, ptr %i.bo, align 8, !tbaa !123
  store i32 1, ptr %i.ea, align 8, !tbaa !122
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !95
  %.pre155 = sext i32 %.pre to i64
  %.pre156 = shl nsw i64 %.pre155, 3
  br label %_ZN10duckdb_re23NFA11AllocThreadEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.ec = load ptr, ptr %i.bp, align 8, !tbaa !147 ; 2 uses
  %i.ed = load ptr, ptr %i.bq, align 8, !tbaa !148
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16
  %.not.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  %i.ef = load ptr, ptr %i.bp, align 8, !tbaa !147
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  store ptr %i.eg, ptr %i.bp, align 8, !tbaa !147
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i

bb.aq:                                            ; preds = %bb.ao
  call void @_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.br)
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !111, !noalias !174
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i

_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i: ; preds = %bb.aq, %bb.ap
  %i.eh = phi ptr [ %i.eg, %bb.ap ], [ %.pre.i, %bb.aq ] ; 2 uses
  %i.ei = load ptr, ptr %i.bs, align 8, !tbaa !152, !noalias !174
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.ar, label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i

bb.ar:                                            ; preds = %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i
  %i.ek = load ptr, ptr %i.bt, align 8, !tbaa !118, !noalias !174
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !104
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 512
  br label %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i

_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i: ; preds = %bb.ar, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i
  %i.eo = phi ptr [ %i.en, %bb.ar ], [ %i.eh, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE12emplace_backIJEEEvDpOT_.exit.i ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -16 ; 2 uses
  store i32 1, ptr %i.ep, align 8, !tbaa !122
  %i.eq = load i32, ptr %i.bb, align 4, !tbaa !95 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i32 %i.eq, 0
  %i.et = shl nsw i64 %i.er, 3                    ; 2 uses
  %i.eu = select i1 %i.es, i64 -1, i64 %i.et
  %i.ev = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #16
  %i.ew = getelementptr inbounds i8, ptr %i.eo, i64 -8
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !120
  br label %_ZN10duckdb_re23NFA11AllocThreadEv.exit

_ZN10duckdb_re23NFA11AllocThreadEv.exit:          ; preds = %bb.an, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i
  %.pre-phi157 = phi i64 [ %.pre156, %bb.an ], [ %i.et, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i ]
  %.0.i = phi ptr [ %i.ea, %bb.an ], [ %i.ep, %_ZNSt5dequeIN10duckdb_re23NFA6ThreadESaIS2_EE4backEv.exit.i ] ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !120
  %i.ez = load ptr, ptr %i.bi, align 8, !tbaa !110
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ey, ptr align 8 %i.ez, i64 %.pre-phi157, i1 false)
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !120
  store ptr %.170, ptr %i.fa, align 8, !tbaa !153
  %i.fb = load i32, ptr %i.a, align 8, !tbaa !94
  %i.fc = load ptr, ptr %i.bl, align 8, !tbaa !158
  %i.fd = icmp ult ptr %.170, %i.fc
  br i1 %i.fd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN10duckdb_re23NFA11AllocThreadEv.exit
  %i.fe = load i8, ptr %.170, align 1, !tbaa !122
  %i.ff = zext i8 %i.fe to i32
  br label %bb.at

bb.at:                                            ; preds = %_ZN10duckdb_re23NFA11AllocThreadEv.exit, %bb.as
  %i.fg = phi i32 [ %i.ff, %bb.as ], [ -1, %_ZN10duckdb_re23NFA11AllocThreadEv.exit ]
  call void @_ZN10duckdb_re23NFA12AddToThreadqEPNS_11SparseArrayIPNS0_6ThreadEEEiiRKNS_11StringPieceEPKcS3_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %.0125, i32 noundef %i.fb, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %.170, ptr noundef nonnull %.0.i)
  %i.fh = load i32, ptr %.0.i, align 8, !tbaa !122 ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %.0.i, align 8, !tbaa !122
  %i.fj = icmp sgt i32 %i.fh, 1
  br i1 %i.fj, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = load ptr, ptr %i.bo, align 8, !tbaa !123
  store ptr %i.fk, ptr %.0.i, align 8, !tbaa !122
  store ptr %.0.i, ptr %i.bo, align 8, !tbaa !123
  br label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit

_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit:    ; preds = %bb.au, %bb.at, %bb.ai, %bb.ag
  %.271 = phi ptr [ %.069, %bb.ag ], [ %.069, %bb.ai ], [ %.170, %bb.at ], [ %.170, %bb.au ] ; 2 uses
  %i.fl = load i32, ptr %.0125, align 8, !tbaa !7
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %._crit_edge, label %bb.av

bb.av:                                            ; preds = %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit
  %i.fn = icmp eq ptr %.271, null
  %i.fo = getelementptr inbounds nuw i8, ptr %.271, i64 1
  br i1 %i.fn, label %bb.aw, label %bb.t, !llvm.loop !177

bb.aw:                                            ; preds = %bb.av
  %i.fp = call noundef i32 @_ZN10duckdb_re23NFA4StepEPNS_11SparseArrayIPNS0_6ThreadEEES5_iRKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %.0125, ptr noundef nonnull %.0123, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) ; 0 uses
  store i32 0, ptr %.0125, align 8, !tbaa !7
  br label %.critedge87

.critedge87:                                      ; preds = %bb.af, %_ZN10LogMessageD2Ev.exit106, %bb.ad, %bb.aw
  %.1124.ph = phi ptr [ %.0125, %bb.ad ], [ %.0123, %bb.aw ], [ %.0125, %_ZN10LogMessageD2Ev.exit106 ], [ %.0125, %bb.af ] ; 3 uses
  %.pr = load i32, ptr %.1124.ph, align 8, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %.1124.ph, i64 32 ; 2 uses
  %.not83140 = icmp eq i32 %.pr, 0
  br i1 %.not83140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge87
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !101
  br label %bb.ax

._crit_edge:                                      ; preds = %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, %.critedge87
  %i.fs = load i8, ptr %i.bj, align 8, !tbaa !156, !range !154, !noundef !155
  %i.ft = trunc nuw i8 %i.fs to i1                ; 2 uses
  %brmerge.not = and i1 %i.bd, %i.ft
  br i1 %brmerge.not, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %._crit_edge
  %i.fu = load ptr, ptr %i.bi, align 8, !tbaa !110 ; 3 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i32 %6, 1
  br i1 %i.fv, label %.epil.preheader, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ba

bb.ax:                                            ; preds = %.lr.ph, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107
  %.065141 = phi ptr [ %i.fr, %.lr.ph ], [ %i.gc, %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.065141, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !104 ; 5 uses
  %.not84 = icmp eq ptr %i.fx, null
  br i1 %.not84, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !122 ; 2 uses
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !122
  %i.ga = icmp sgt i32 %i.fy, 1
  br i1 %i.ga, label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gb = load ptr, ptr %i.bo, align 8, !tbaa !123
  store ptr %i.gb, ptr %i.fx, align 8, !tbaa !122
  store ptr %i.fx, ptr %i.bo, align 8, !tbaa !123
  br label %_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107

_ZN10duckdb_re23NFA6DecrefEPNS0_6ThreadE.exit107: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.gc = getelementptr inbounds nuw i8, ptr %.065141, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !101
  %i.ge = load i32, ptr %.1124.ph, align 8, !tbaa !7
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.gf
  %.not83 = icmp eq ptr %i.gc, %i.gg
  br i1 %.not83, label %._crit_edge, label %bb.ax, !llvm.loop !178

bb.ba:                                            ; preds = %bb.ba, %.lr.ph143.new
  %indvars.iv = phi i64 [ 0, %.lr.ph143.new ], [ %indvars.iv.next.1, %bb.ba ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph143.new ], [ %niter.next.1, %bb.ba ]
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !153 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !153
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store ptr %i.gi, ptr %i.go, align 8, !tbaa !153
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !166
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.1 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !153 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !153
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next ; 2 uses
  store ptr %i.gq, ptr %i.gw, align 8, !tbaa !153
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gv, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !166
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ba, !llvm.loop !179

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ba
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph143
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod218 = trunc i32 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.epil ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !153 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !153
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.epil.init ; 2 uses
  store ptr %i.gy, ptr %i.he, align 8, !tbaa !153
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !166
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.h, %bb.j, %_ZN10LogMessageD2Ev.exit102, %_ZN10LogMessageD2Ev.exit
  %.1 = phi i1 [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %bb.j ], [ false, %bb.h ], [ false, %_ZN10LogMessageD2Ev.exit102 ], [ %i.ft, %._crit_edge ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aa, %bb.p, %bb.g
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.az, %bb.p ], [ %i.cz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn

bb.bc:                                            ; preds = %bb.a, %.loopexit
  %.2 = phi i1 [ %.1, %.loopexit ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10duckdb_re24Prog11PrefixAccelEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !180, !range !154, !noundef !155
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN10duckdb_re24Prog20PrefixAccel_ShiftDFAEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN10duckdb_re24Prog24PrefixAccel_FrontAndBackEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !122
  %i.j = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef %i.i, i64 noundef %2) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb_re2::NFA", align 8   ; 7 uses
  %8 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN10duckdb_re23NFAC2EPNS_4ProgE(ptr noundef nonnull align 8 dereferenceable(233) %7, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.a = icmp eq i32 %4, 2                        ; 4 uses
  %i.b = icmp eq i32 %6, 0                        ; 2 uses
  %spec.select = select i1 %i.b, ptr %8, ptr %5   ; 2 uses
  %spec.select20 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %.016 = select i1 %i.a, ptr %spec.select, ptr %5
  %.015 = select i1 %i.a, i32 %spec.select20, i32 %6
  %i.c = icmp eq i32 %3, 1
  %i.d = or i1 %i.c, %i.a
  %i.e = icmp ne i32 %4, 0
  %i.f = invoke noundef zeroext i1 @_ZN10duckdb_re23NFA6SearchERKNS_11StringPieceES3_bbPS1_i(ptr noundef nonnull align 8 dereferenceable(233) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.d, i1 noundef zeroext %i.e, ptr noundef %.016, i32 noundef %.015)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN10duckdb_re23NFAD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.016.val = load ptr, ptr %spec.select, align 8, !tbaa !167
  %spec.select.sroa.sel.v.sroa.sel.v = select i1 %i.b, ptr %8, ptr %5
  %spec.select.sroa.sel.v.sroa.sel = getelementptr i8, ptr %spec.select.sroa.sel.v.sroa.sel.v, i64 8
  %.016.val22 = load i64, ptr %spec.select.sroa.sel.v.sroa.sel, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %.016.val, i64 %.016.val22
  %.val = load ptr, ptr %1, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load i64, ptr %i.i, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %.val21
  %.not = icmp eq ptr %i.h, %i.j
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN10duckdb_re23NFAD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re24Prog6FanoutEPNS_11SparseArrayIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_re2::SparseSetT", align 8 ; 21 uses
  %3 = alloca %class.LogMessage, align 8          ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i, !prof !99

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = zext nneg i32 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 10 uses
  store i32 %i.b, ptr %i.d, align 8, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !181
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16
          to label %bb.b unwind label %.thread.i  ; 12 uses

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store i32 %i.b, ptr %i.j, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !181
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = add nsw i32 %i.b, -1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, i8 -85, i64 %i.o, i1 false), !tbaa !3
  br label %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit

common.resume:                                    ; preds = %.body, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.thread.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #17
  br label %common.resume

_ZN10duckdb_re210SparseSetTIvEC2Ei.exit:          ; preds = %bb.b, %.lr.ph.i.i
  store i32 0, ptr %1, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !195  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  %i.v = load i32, ptr %i.s, align 8
  %.not11.i.i = icmp ule i32 %i.v, %i.r
  %.not.i.i.not = select i1 %.not.i.i.i, i1 true, i1 %.not11.i.i
  br i1 %.not.i.i.not, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN10duckdb_re210SparseSetTIvEC2Ei.exit
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
