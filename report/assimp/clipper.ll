Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb:bb.a
  %or.cond18.i210 = or i1 %i.cn, %i.cp
  br i1 %or.cond18.i210, label %tailrecurse.i211, label %bb.t

tailrecurse.i211:                                 ; preds = %bb.s, %.lr.ph.i209
  store i8 1, ptr %i.bb, align 8
  br label %tailrecurse._crit_edge.i212

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.cq = phi i64 [ %i.cb, %._crit_edge ], [ %i.bw, %bb.s ] ; 2 uses
  %i.cr = phi i1 [ true, %._crit_edge ], [ false, %bb.s ]
  %i.cs = phi ptr [ %.pre376, %._crit_edge ], [ %i.ay, %bb.s ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.cu = getelementptr inbounds nuw [136 x i8], ptr %i.at, i64 %i.cq ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.at, i8 0, i64 136, i1 false)
  store ptr %i.ct, ptr %.sroa.16.0..sroa_idx.i, align 8
  store ptr %i.cu, ptr %.sroa.17.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false)
  store i32 -1, ptr %.sroa.15.0..sroa_idx.i, align 4
  %i.cv = add nsw i32 %.2165.lcssa, -1            ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [136 x i8], ptr %i.at, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cq
  %.sroa.5.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.15.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %.sroa.16.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %.sroa.17.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i8 0, i64 136, i1 false)
  store ptr %i.at, ptr %.sroa.16.0..sroa_idx.i220, align 8
  store ptr %i.cx, ptr %.sroa.17.0..sroa_idx.i221, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i218, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  store i32 -1, ptr %.sroa.15.0..sroa_idx.i219, align 4
  %i.cz = icmp samesign ugt i32 %.2165.lcssa, 1
  br i1 %i.cz, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.da = zext nneg i32 %i.cv to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.y, %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.outer

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %i.dc = phi ptr [ %i.cs, %.lr.ph.preheader ], [ %i.dw, %bb.y ] ; 2 uses
  %i.dd = phi i1 [ %i.cr, %.lr.ph.preheader ], [ %i.dx, %bb.y ]
  %indvars.iv373 = phi i64 [ %i.da, %.lr.ph.preheader ], [ %indvars.iv.next374, %bb.y ] ; 5 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv373 ; 4 uses
  br i1 %i.dd, label %tailrecurse._crit_edge.i225, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.lr.ph
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 1073741823
  br i1 %i.dg, label %tailrecurse.i224, label %bb.x

tailrecurse._crit_edge.i225:                      ; preds = %tailrecurse.i224, %.lr.ph
  %i.dh = load i64, ptr %i.de, align 8            ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 4611686018427387903
  br i1 %i.di, label %bb.v, label %bb.u

bb.u:                                             ; preds = %tailrecurse._crit_edge.i225
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp slt i64 %i.dh, -4611686018427387903
  %i.dm = add i64 %i.dk, -4611686018427387904
  %i.dn = icmp ult i64 %i.dm, -9223372036854775807
  %or.cond16.i226 = or i1 %i.dl, %i.dn
  br i1 %or.cond16.i226, label %bb.v, label %._crit_edge377

._crit_edge377:                                   ; preds = %bb.u
  %.pre378 = load ptr, ptr %1, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.u, %tailrecurse._crit_edge.i225
  %i.do = tail call ptr @__cxa_allocate_exception(i64 40) #30, !inline_history !150 ; 3 uses
  invoke void @_ZN10ClipperLib16clipperExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull @.str)
          to label %.invoke unwind label %bb.w, !inline_history !150

.invoke:                                          ; preds = %bb.v, %bb.q, %bb.m
  %i.dp = phi ptr [ %i.cj, %bb.q ], [ %i.bp, %bb.m ], [ %i.do, %bb.v ]
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN10ClipperLib16clipperExceptionE, ptr nonnull @_ZN10ClipperLib16clipperExceptionD2Ev) #31
          to label %.cont unwind label %bb.z, !inline_history !150

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.do) #30, !inline_history !150
  br label %bb.aa

bb.x:                                             ; preds = %.lr.ph.i222
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp slt i64 %i.df, -1073741823
  %i.du = add i64 %i.ds, -1073741824
  %i.dv = icmp ult i64 %i.du, -2147483647
  %or.cond18.i223 = or i1 %i.dt, %i.dv
  br i1 %or.cond18.i223, label %tailrecurse.i224, label %bb.y

tailrecurse.i224:                                 ; preds = %bb.x, %.lr.ph.i222
  store i8 1, ptr %i.bb, align 8
  br label %tailrecurse._crit_edge.i225

bb.y:                                             ; preds = %._crit_edge377, %bb.x
  %i.dw = phi ptr [ %.pre378, %._crit_edge377 ], [ %i.dc, %bb.x ] ; 2 uses
  %i.dx = phi i1 [ true, %._crit_edge377 ], [ false, %bb.x ]
  %i.dy = getelementptr inbounds nuw [136 x i8], ptr %i.at, i64 %indvars.iv373 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.ea = getelementptr i8, ptr %i.dy, i64 -136
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %indvars.iv373
  %.sroa.5.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.15.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.dy, i64 76
  %.sroa.16.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %.sroa.17.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dy, i8 0, i64 136, i1 false)
  store ptr %i.dz, ptr %.sroa.16.0..sroa_idx.i233, align 8
  store ptr %i.ea, ptr %.sroa.17.0..sroa_idx.i234, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i231, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false)
  store i32 -1, ptr %.sroa.15.0..sroa_idx.i232, align 4
  %indvars.iv.next374 = add nsw i64 %indvars.iv373, -1
  %i.ec = icmp sgt i64 %indvars.iv373, 1
  br i1 %i.ec, label %.lr.ph, label %.preheader, !llvm.loop !144

bb.z:                                             ; preds = %.invoke
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %bb.w, %bb.z, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.ck, %bb.r ], [ %i.ed, %bb.z ], [ %i.dq, %bb.w ]
  %.0159 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ee = tail call ptr @__cxa_begin_catch(ptr %.0159) #30 ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #33
  invoke void @__cxa_rethrow() #31
          to label %bb.cv unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ct unwind label %bb.cu

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.al
  %i.eg = phi i64 [ %i.en, %bb.al ], [ %.pre383, %.outer.split.preheader ]
  %i.eh = phi i64 [ %i.ek, %bb.al ], [ %.pre381, %.outer.split.preheader ]
  %i.ei = phi ptr [ %i.gw, %bb.al ], [ %.pre379, %.outer.split.preheader ] ; 10 uses
  %.0172 = phi ptr [ %i.ei, %bb.al ], [ %.0175.ph, %.outer.split.preheader ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.el = icmp eq i64 %i.eh, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp eq i64 %i.eg, %i.en
  %i.ep = select i1 %i.el, i1 %i.eo, i1 false
  br i1 %i.ep, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.outer.split
  %.not.not = icmp eq ptr %i.ei, %.0169.ph
  br i1 %.not.not, label %.thread, label %.split337

.split337:                                        ; preds = %bb.ac, %.outer.split.us
  %.us-phi338 = phi ptr [ %.0172.us, %.outer.split.us ], [ %.0172, %bb.ac ] ; 5 uses
  %.us-phi340 = phi ptr [ %i.fh, %.outer.split.us ], [ %i.ei, %bb.ac ] ; 4 uses
  %i.eq = icmp eq ptr %.us-phi338, %.us-phi340
  br i1 %i.eq, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.split337
  %i.er = getelementptr inbounds nuw i8, ptr %.us-phi338, i64 80
  %i.es = icmp eq ptr %.us-phi338, %.0169.ph
  %spec.select = select i1 %i.es, ptr %.us-phi340, ptr %.0169.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.us-phi338, i64 88 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  store ptr %.us-phi340, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.et, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.us-phi340, i64 88
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.er, align 8
  store ptr null, ptr %i.et, align 8
  br label %.outer.backedge

bb.ae:                                            ; preds = %.outer.split
  %i.ez = getelementptr inbounds nuw i8, ptr %.0172, i64 88
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = icmp eq ptr %i.fa, %i.ei
  br i1 %i.fb, label %.loopexit, label %.thread288

.thread:                                          ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %.0172, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = icmp eq ptr %i.fd, %.0169.ph
  br i1 %i.fe, label %.thread290, label %.thread288

.outer:                                           ; preds = %.outer.backedge, %.preheader
  %.0175.ph = phi ptr [ %i.at, %.preheader ], [ %.0175.ph.be, %.outer.backedge ] ; 9 uses
  %.0169.ph = phi ptr [ %i.at, %.preheader ], [ %.0169.ph.be, %.outer.backedge ] ; 12 uses
  br i1 %3, label %.outer.split.us.preheader, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %.outer
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0175.ph, i64 80
  %.pre379 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert380 = getelementptr inbounds nuw i8, ptr %.0175.ph, i64 16
  %.pre381 = load i64, ptr %.phi.trans.insert380, align 8
  %.phi.trans.insert382 = getelementptr inbounds nuw i8, ptr %.0175.ph, i64 24
  %.pre383 = load i64, ptr %.phi.trans.insert382, align 8
  br label %.outer.split

.outer.split.us.preheader:                        ; preds = %.outer
  %.phi.trans.insert384 = getelementptr inbounds nuw i8, ptr %.0175.ph, i64 16
  %.pre385 = load i64, ptr %.phi.trans.insert384, align 8
  %.phi.trans.insert386 = getelementptr inbounds nuw i8, ptr %.0175.ph, i64 24
  %.pre387 = load i64, ptr %.phi.trans.insert386, align 8
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.split.us.preheader, %.thread288.us
  %.sroa.226.0.copyload.us = phi i64 [ %i.fm, %.thread288.us ], [ %.pre387, %.outer.split.us.preheader ] ; 5 uses
  %i.ff = phi i64 [ %i.fj, %.thread288.us ], [ %.pre385, %.outer.split.us.preheader ] ; 5 uses
  %.0172.us = phi ptr [ %i.fh, %.thread288.us ], [ %.0175.ph, %.outer.split.us.preheader ] ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0172.us, i64 80
  %i.fh = load ptr, ptr %i.fg, align 8            ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8            ; 5 uses
  %i.fk = icmp eq i64 %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fm = load i64, ptr %i.fl, align 8            ; 5 uses
  %i.fn = icmp eq i64 %.sroa.226.0.copyload.us, %i.fm
  %i.fo = select i1 %i.fk, i1 %i.fn, i1 false
  br i1 %i.fo, label %.split337, label %bb.af

bb.af:                                            ; preds = %.outer.split.us
  %i.fp = getelementptr inbounds nuw i8, ptr %.0172.us, i64 88
  %i.fq = load ptr, ptr %i.fp, align 8            ; 4 uses
  %i.fr = icmp eq ptr %i.fq, %i.fh
  br i1 %i.fr, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.sroa.027.0.copyload.us = load i64, ptr %i.fs, align 8 ; 4 uses
  %.sroa.228.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %.sroa.228.0.copyload.us = load i64, ptr %.sroa.228.0..sroa_idx.us, align 8 ; 4 uses
  %i.ft = load i8, ptr %i.bb, align 8, !range !76, !noundef !77
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = tail call noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_b(i64 %.sroa.027.0.copyload.us, i64 %.sroa.228.0.copyload.us, i64 %i.ff, i64 %.sroa.226.0.copyload.us, i64 %i.fj, i64 %i.fm, i1 noundef zeroext %i.fu)
  br i1 %i.fv, label %bb.ah, label %.thread288.us

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load i8, ptr %i.db, align 8, !range !76, !noundef !77
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ai, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us

bb.ai:                                            ; preds = %bb.ah
  %i.fy = icmp eq i64 %.sroa.027.0.copyload.us, %i.fj ; 2 uses
  %i.fz = icmp eq i64 %.sroa.228.0.copyload.us, %i.fm
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = icmp eq i64 %.sroa.027.0.copyload.us, %i.ff
  %i.gc = icmp eq i64 %.sroa.228.0.copyload.us, %.sroa.226.0.copyload.us
  %i.gd = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %i.gd, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.fy, label %.split.us, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.us

_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.us: ; preds = %bb.ak
  %i.ge = icmp sgt i64 %i.ff, %.sroa.027.0.copyload.us
  %i.gf = icmp sge i64 %i.ff, %i.fj
  %i.gg = xor i1 %i.gf, %i.ge
  br i1 %i.gg, label %.thread288.us, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us

.split.us:                                        ; preds = %bb.ak
  %i.gh = icmp sgt i64 %.sroa.226.0.copyload.us, %.sroa.228.0.copyload.us
  %i.gi = icmp sge i64 %.sroa.226.0.copyload.us, %i.fm
  %i.gj = xor i1 %i.gh, %i.gi
  br i1 %i.gj, label %.thread288.us, label %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us

.thread288.us:                                    ; preds = %.split.us, %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.us, %bb.ag
  %i.gk = icmp eq ptr %i.fh, %.0175.ph
  br i1 %i.gk, label %.loopexit, label %.outer.split.us, !llvm.loop !145

_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us: ; preds = %.split.us, %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.us, %bb.aj, %bb.ai, %bb.ah
  %i.gl = getelementptr inbounds nuw i8, ptr %.0172.us, i64 80
  %i.gm = getelementptr inbounds nuw i8, ptr %.0172.us, i64 88 ; 2 uses
  %i.gn = icmp eq ptr %.0172.us, %.0169.ph
  %spec.select298 = select i1 %i.gn, ptr %i.fh, ptr %.0169.ph
  %i.go = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store ptr %i.fh, ptr %i.go, align 8
  %i.gp = load ptr, ptr %i.gm, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 88
  store ptr %i.gp, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.gl, align 8
  store ptr null, ptr %i.gm, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.gt = load ptr, ptr %i.gs, align 8
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us, %bb.ad
  %.0175.ph.be = phi ptr [ %i.ey, %bb.ad ], [ %i.gt, %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us ]
  %.0169.ph.be = phi ptr [ %spec.select, %bb.ad ], [ %spec.select298, %_ZN10ClipperLib21Pt2IsBetweenPt1AndPt3ENS_8IntPointES0_S0_.exit.thread.split.us ]
  br label %.outer, !llvm.loop !145

.thread288:                                       ; preds = %bb.ae, %.thread
  %i.gu = icmp eq ptr %i.ei, %.0175.ph
  br i1 %i.gu, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.thread288
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %.0169.ph
  br i1 %i.gx, label %.thread290, label %.outer.split, !llvm.loop !145

.loopexit:                                        ; preds = %.split337, %bb.ae, %.thread288, %.thread288.us, %bb.af
  %.1173 = phi ptr [ %.0172.us, %bb.af ], [ %i.ei, %.thread288 ], [ %i.fh, %.thread288.us ], [ %.0172, %bb.ae ], [ %.us-phi338, %.split337 ] ; 3 uses
  br i1 %3, label %.critedge203, label %.thread290

.thread290:                                       ; preds = %.thread, %bb.al, %.loopexit
  %.1173292 = phi ptr [ %.1173, %.loopexit ], [ %i.ei, %bb.al ], [ %.0172, %.thread ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1173292, i64 80
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = icmp eq ptr %.1173292, %i.gz
  br i1 %i.ha, label %bb.am, label %.critedge205

.critedge203:                                     ; preds = %.loopexit
  %i.hb = getelementptr inbounds nuw i8, ptr %.1173, i64 88
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %.1173, i64 80
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.hc, %i.he
  br i1 %i.hf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread290, %.critedge203
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #33
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit

.critedge205:                                     ; preds = %.thread290
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0169.ph, i64 88
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 76
  store i32 -2, ptr %i.hj, align 4
  br label %bb.an

bb.an:                                            ; preds = %.critedge203, %.critedge205
  %i.hk = getelementptr inbounds nuw i8, ptr %.0169.ph, i64 24
  br label %bb.ao

bb.ao:                                            ; preds = %.backedge.backedge, %bb.an
  %.2174 = phi ptr [ %.0169.ph, %bb.an ], [ %i.hp, %.backedge.backedge ] ; 13 uses
  %.0166 = phi i1 [ true, %bb.an ], [ %.0166.be, %.backedge.backedge ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.2174, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.2174, i64 24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.2174, i64 80
  %i.hp = load ptr, ptr %i.ho, align 8            ; 16 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8
  %.not.i = icmp slt i64 %i.hn, %i.hr
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.2174, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %.2174, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %.2174, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.2174, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hw = getelementptr inbounds nuw i8, ptr %.2174, i64 40
  %i.hx = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.2174, i64 8
  %i.hz = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.ia = icmp eq i64 %i.hx, %i.hz
  br i1 %i.ia, label %_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ib = sub nsw i64 %i.hx, %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %.2174, i64 32
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = load i64, ptr %.2174, align 8
  %i.if = sub nsw i64 %i.id, %i.ie
  %i.ig = sitofp i64 %i.if to double
  %i.ih = sitofp i64 %i.ib to double
  %i.ii = fdiv double %i.ig, %i.ih
  br label %_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE.exit

_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE.exit: ; preds = %bb.ar, %bb.as
  %.sink.i.i = phi double [ %i.ii, %bb.as ], [ -1.000000e+40, %bb.ar ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.2174, i64 48
  store double %.sink.i.i, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.2174, i64 56
  store i32 %2, ptr %i.ik, align 8
  br i1 %.0166, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE.exit
  %i.il = load i64, ptr %i.hq, align 8
  %i.im = load i64, ptr %i.hk, align 8
  %.not194 = icmp eq i64 %i.il, %i.im             ; 2 uses
  %.not195 = icmp eq ptr %i.hp, %.0169.ph
  br i1 %.not195, label %bb.av, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.at, %bb.au
  %.0166.be = phi i1 [ %.not194, %bb.at ], [ false, %bb.au ]
  br label %bb.ao, !llvm.loop !146

bb.au:                                            ; preds = %_ZN10ClipperLib9InitEdge2ERNS_5TEdgeENS_8PolyTypeE.exit
  %.not195.a = icmp eq ptr %i.hp, %.0169.ph
  br i1 %.not195.a, label %bb.bo, label %.backedge.backedge

bb.av:                                            ; preds = %bb.at
  br i1 %.not194, label %bb.aw, label %bb.bo

bb.aw:                                            ; preds = %bb.av
  br i1 %3, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #33
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 76
  store i32 -2, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ir = load i64, ptr %i.iq, align 8            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hp, i64 60
  store i32 2, ptr %i.is, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  store i32 0, ptr %i.it, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.ay
  %.3 = phi ptr [ %i.hp, %bb.ay ], [ %i.jc, %bb.bc ] ; 6 uses
  %i.iu = load i64, ptr %.3, align 8              ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.3, i64 88
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load i64, ptr %i.ix, align 8
  %.not197 = icmp eq i64 %i.iu, %i.iy
  br i1 %.not197, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iz = getelementptr inbounds nuw i8, ptr %.3, i64 32 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8
  store i64 %i.iu, ptr %i.iz, align 8
  store i64 %i.ja, ptr %.3, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jb = getelementptr inbounds nuw i8, ptr %.3, i64 80
  %i.jc = load ptr, ptr %i.jb, align 8            ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 76
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = icmp eq i32 %i.je, -2
  br i1 %i.jf, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jg = getelementptr inbounds nuw i8, ptr %.3, i64 96
  store ptr %i.jc, ptr %i.jg, align 8
  br label %bb.az, !llvm.loop !147

bb.bd:                                            ; preds = %bb.bb
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8
  %.not.i235 = icmp eq ptr %i.jj, %i.jl
  br i1 %.not.i235, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 %i.ir, ptr %i.jj, align 8
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr null, ptr %.sroa.5272.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr %i.hp, ptr %.sroa.6.0..sroa_idx, align 8
  %i.jm = load ptr, ptr %i.ji, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr %i.jn, ptr %i.ji, align 8
  br label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.jo = load ptr, ptr %i.jh, align 8            ; 4 uses
  %i.jp = ptrtoint ptr %i.jj to i64
  %i.jq = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 5 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %bb.bg, label %_ZNKSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bf
  %i.jt = sdiv exact i64 %i.jr, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 384307168202282325)
  %i.jx = select i1 %i.jv, i64 384307168202282325, i64 %i.jw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.jy = mul nuw nsw i64 %i.jx, 24
  %i.jz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #32 ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jr ; 4 uses
  store i64 %i.ir, ptr %i.ka, align 8
  %.sroa.5272.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr null, ptr %.sroa.5272.0..sroa_idx273, align 8
  %.sroa.6.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %i.hp, ptr %.sroa.6.0..sroa_idx275, align 8
  %i.kb = icmp sgt i64 %i.jr, 0
  br i1 %i.kb, label %bb.bh, label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 8 %i.jo, i64 %i.jr, i1 false)
  br label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bh, %_ZNKSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %.not.i17.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.kd = load ptr, ptr %i.jk, align 8
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %i.jq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.kf) #33
  br label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.jz, ptr %i.jh, align 8
  store ptr %i.kc, ptr %i.ji, align 8
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.kg, ptr %i.jk, align 8
  br label %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.be, %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.kj = load ptr, ptr %i.ki, align 8            ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8
  %.not.i236 = icmp eq ptr %i.kj, %i.kl
  br i1 %.not.i236, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit
  store ptr %i.at, ptr %i.kj, align 8
  %i.km = load ptr, ptr %i.ki, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kn, ptr %i.ki, align 8
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit

bb.bk:                                            ; preds = %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit
  %i.ko = load ptr, ptr %i.kh, align 8            ; 4 uses
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.kr = sub i64 %i.kp, %i.kq                    ; 5 uses
  %i.ks = icmp eq i64 %i.kr, 9223372036854775800
  br i1 %i.ks, label %bb.bl, label %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bk
  %i.kt = ashr exact i64 %i.kr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i237 = tail call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.ku = add nsw i64 %.sroa.speculated.i.i.i237, %i.kt ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.kt
  %i.kw = tail call i64 @llvm.umin.i64(i64 %i.ku, i64 1152921504606846975)
  %i.kx = select i1 %i.kv, i64 1152921504606846975, i64 %i.kw ; 3 uses
  %.not.i.i.i238 = icmp ne i64 %i.kx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i238)
  %i.ky = shl nuw nsw i64 %i.kx, 3
  %i.kz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #32 ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.kr ; 2 uses
  store ptr %i.at, ptr %i.la, align 8
  %i.lb = icmp sgt i64 %i.kr, 0
  br i1 %i.lb, label %bb.bm, label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.bm:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kz, ptr align 8 %i.ko, i64 %i.kr, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.bm, %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.not.i17.i.i239 = icmp eq ptr %i.ko, null
  br i1 %.not.i17.i.i239, label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ld = load ptr, ptr %i.kk, align 8
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = sub i64 %i.le, %i.kq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.lf) #33
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bn, %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.kz, ptr %i.kh, align 8
  store ptr %i.lc, ptr %i.ki, align 8
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.kx
  store ptr %i.lg, ptr %i.kk, align 8
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit

bb.bo:                                            ; preds = %bb.au, %bb.av
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.lj = load ptr, ptr %i.li, align 8            ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8
  %.not.i240 = icmp eq ptr %i.lj, %i.ll
  br i1 %.not.i240, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.at, ptr %i.lj, align 8
  %i.lm = load ptr, ptr %i.li, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %i.ln, ptr %i.li, align 8
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247

bb.bq:                                            ; preds = %bb.bo
  %i.lo = load ptr, ptr %i.lh, align 8            ; 4 uses
  %i.lp = ptrtoint ptr %i.lj to i64
  %i.lq = ptrtoint ptr %i.lo to i64               ; 2 uses
  %i.lr = sub i64 %i.lp, %i.lq                    ; 5 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775800
  br i1 %i.ls, label %bb.br, label %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i241

bb.br:                                            ; preds = %bb.bq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i241: ; preds = %bb.bq
  %i.lt = ashr exact i64 %i.lr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i242 = tail call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i.i242, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = tail call i64 @llvm.umin.i64(i64 %i.lu, i64 1152921504606846975)
  %i.lx = select i1 %i.lv, i64 1152921504606846975, i64 %i.lw ; 3 uses
  %.not.i.i.i243 = icmp ne i64 %i.lx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i243)
  %i.ly = shl nuw nsw i64 %i.lx, 3
  %i.lz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #32 ; 4 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %i.lr ; 2 uses
  store ptr %i.at, ptr %i.ma, align 8
  %i.mb = icmp sgt i64 %i.lr, 0
  br i1 %i.mb, label %bb.bs, label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i244

bb.bs:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i241
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lz, ptr align 8 %i.lo, i64 %i.lr, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i244

_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i244: ; preds = %bb.bs, %_ZNKSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i241
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.not.i17.i.i245 = icmp eq ptr %i.lo, null
  br i1 %.not.i17.i.i245, label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i246, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i244
  %i.md = load ptr, ptr %i.lk, align 8
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.lq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.mf) #33
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i246

_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i246: ; preds = %bb.bt, %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i244
  store ptr %i.lz, ptr %i.lh, align 8
  store ptr %i.mc, ptr %i.li, align 8
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.mg, ptr %i.lk, align 8
  br label %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247

_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247: ; preds = %bb.bp, %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i246
  %i.mh = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.mi = load ptr, ptr %i.mh, align 8            ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load i64, ptr %i.mi, align 8
  %i.ml = load i64, ptr %i.mj, align 8
  %i.mm = icmp eq i64 %i.mk, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = icmp eq i64 %i.mo, %i.mq
  %i.ms = select i1 %i.mm, i1 %i.mr, i1 false
  br i1 %i.ms, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.mu = load ptr, ptr %i.mt, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247
  %.4 = phi ptr [ %i.mu, %bb.bu ], [ %i.hp, %_ZNSt6vectorIPN10ClipperLib5TEdgeESaIS2_EE9push_backERKS2_.exit247 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit256, %bb.bv
  %.5 = phi ptr [ %.4, %bb.bv ], [ %spec.select208, %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit256 ]
  %.0155 = phi ptr [ null, %bb.bv ], [ %spec.select207, %_ZNSt6vectorIN10ClipperLib12LocalMinimumESaIS1_EE9push_backERKS1_.exit256 ] ; 3 uses
  br label %bb.bx

bb.bx:                                            ; preds = %.backedge, %bb.bw
  %.1.i = phi ptr [ %.5, %bb.bw ], [ %.1.i.be, %.backedge ] ; 11 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.1.i, i64 88
  %i.mz = load ptr, ptr %i.my, align 8            ; 3 uses
  %i.na = load i64, ptr %.1.i, align 8
  %i.nb = load i64, ptr %i.mz, align 8
  %.not.i.i = icmp ne i64 %i.na, %i.nb
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = icmp ne i64 %i.nd, %i.nf
  %i.nh = select i1 %.not.i.i, i1 true, i1 %i.ng
  br i1 %i.nh, label %.critedge.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.nk = load i64, ptr %i.ni, align 8
  %i.nl = load i64, ptr %i.nj, align 8
  %i.nm = icmp eq i64 %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = icmp eq i64 %i.no, %i.nq
  %i.ns = select i1 %i.nm, i1 %i.nr, i1 false
  br i1 %i.ns, label %.critedge.i, label %bb.bz

.critedge.i:                                      ; preds = %bb.by, %bb.bx
  %i.nt = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  %i.nu = load ptr, ptr %i.nt, align 8
  br label %.backedge

.backedge:                                        ; preds = %.critedge.i, %._crit_edge.i
  %.1.i.be = phi ptr [ %i.nu, %.critedge.i ], [ %.3.lcssa.i, %._crit_edge.i ]
  br label %bb.bx, !llvm.loop !11

bb.bz:                                            ; preds = %bb.by
  %i.nv = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %i.nw = load double, ptr %i.nv, align 8
  %i.nx = fcmp oeq double %i.nw, -1.000000e+40
  br i1 %i.nx, label %.preheader487, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  %i.nz = load double, ptr %i.ny, align 8
  %i.oa = fcmp oeq double %i.nz, -1.000000e+40
  br i1 %i.oa, label %.preheader487, label %_ZN10ClipperLib14FindNextLocMinEPNS_5TEdgeE.exit

.preheader487:                                    ; preds = %bb.ca, %bb.bz
  br label %bb.cb

bb.cb:                                            ; preds = %.preheader487, %bb.cb
  %.2.i = phi ptr [ %i.oc, %bb.cb ], [ %.1.i, %.preheader487 ] ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.2.i, i64 88
  %i.oc = load ptr, ptr %i.ob, align 8            ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.oe = load double, ptr %i.od, align 8
  %i.of = fcmp oeq double %i.oe, -1.000000e+40
  br i1 %i.of, label %bb.cb, label %.preheader.i, !llvm.loop !12

.preheader.i:                                     ; preds = %bb.cb
  %i.og = getelementptr inbounds nuw i8, ptr %.2.i, i64 48
  %i.oh = load double, ptr %i.og, align 8
  %i.oi = fcmp oeq double %i.oh, -1.000000e+40
  br i1 %i.oi, label %.lr.ph.i248, label %._crit_edge.i

.lr.ph.i248:                                      ; preds = %.preheader.i, %.lr.ph.i248
  %.323.i = phi ptr [ %i.ok, %.lr.ph.i248 ], [ %.2.i, %.preheader.i ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.323.i, i64 80
  %i.ok = load ptr, ptr %i.oj, align 8            ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  %i.om = load double, ptr %i.ol, align 8
  %i.on = fcmp oeq double %i.om, -1.000000e+40
  br i1 %i.on, label %.lr.ph.i248, label %._crit_edge.loopexit.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i248
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ok, i64 88
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.oo = phi ptr [ %i.oc, %.preheader.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.3.lcssa.i = phi ptr [ %.2.i, %.preheader.i ], [ %i.ok, %._crit_edge.loopexit.i ] ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 40
  %i.oq = load i64, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = icmp eq i64 %i.oq, %i.os
  br i1 %i.ot, label %.backedge, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ou = load i64, ptr %i.oc, align 8
  %i.ov = load i64, ptr %.3.lcssa.i, align 8
  %i.ow = icmp slt i64 %i.ou, %i.ov
  %spec.select.i = select i1 %i.ow, ptr %.2.i, ptr %.3.lcssa.i
  br label %_ZN10ClipperLib14FindNextLocMinEPNS_5TEdgeE.exit

_ZN10ClipperLib14FindNextLocMinEPNS_5TEdgeE.exit: ; preds = %bb.ca, %.thread.i
  %.6.i = phi ptr [ %spec.select.i, %.thread.i ], [ %.1.i, %bb.ca ] ; 7 uses
  %i.ox = icmp eq ptr %.6.i, %.0155
end_hunk_0
