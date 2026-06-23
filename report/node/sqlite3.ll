inline.NumInlined: 12422
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  br i1 %i.da, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %i.w, align 8
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = add nuw nsw i32 %i.cz, 8
  store i32 %i.de, ptr %2, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.df = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.v, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dh = phi ptr [ %i.dd, %bb.am ], [ %i.df, %bb.an ]
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !5
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %getIntArg.exit
  %.1679 = phi i32 [ %i.cy, %getIntArg.exit ], [ %i.di, %bb.ao ] ; 4 uses
  %i.dj = icmp slt i32 %.1679, 0                  ; 2 uses
  %.not834 = icmp eq i32 %.1679, -2147483648
  %i.dk = sub nsw i32 0, %.1679
  %i.dl = select i1 %.not834, i32 0, i32 %i.dk
  %.1695 = select i1 %i.dj, i8 1, i8 %.0694       ; 3 uses
  %.2680 = select i1 %i.dj, i32 %i.dl, i32 %.1679 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !227 ; 2 uses
  switch i8 %i.dn, label %.critedge.loopexit.split.loop.exit1315 [
    i8 108, label %.thread
    i8 46, label %.thread
  ]

bb.aq:                                            ; preds = %.preheader1240
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !227 ; 3 uses
  %i.dq = icmp eq i8 %i.dp, 42
  br i1 %i.dq, label %bb.ar, label %.preheader1221

.preheader1221:                                   ; preds = %bb.aq
  %.25911277 = sext i8 %i.dp to i32               ; 2 uses
  %i.dr = add i8 %i.dp, -48
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %.lr.ph, label %._crit_edge

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = load i32, ptr %.0710, align 8, !tbaa !284
  %i.du = load i32, ptr %i.t, align 4, !tbaa !286 ; 3 uses
  %.not.i922 = icmp sgt i32 %i.dt, %i.du
  br i1 %.not.i922, label %bb.at, label %getIntArg.exit928

bb.at:                                            ; preds = %bb.as
  %i.dv = load ptr, ptr %i.u, align 8, !tbaa !287
  %i.dw = add nsw i32 %i.du, 1
  store i32 %i.dw, ptr %i.t, align 4, !tbaa !286
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !288 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.eb = load i16, ptr %i.ea, align 4, !tbaa !162
  %i.ec = zext i16 %i.eb to i32                   ; 3 uses
  %i.ed = and i32 %i.ec, 36
  %.not.i.i.i924 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i924, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !227
  br label %getIntArg.exit928

bb.av:                                            ; preds = %bb.at
  %i.ef = and i32 %i.ec, 8
  %.not8.i.i.i925 = icmp eq i32 %i.ef, 0
  br i1 %.not8.i.i.i925, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = load double, ptr %i.dz, align 8, !tbaa !227 ; 3 uses
  %i.eh = fcmp olt double %i.eg, f0xC3DFFFFFFFFFFFFF
  br i1 %i.eh, label %getIntArg.exit928, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = fcmp ogt double %i.eg, f0x43DFFFFFFFFFFFFF
  br i1 %i.ei, label %getIntArg.exit928, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = fptosi double %i.eg to i64
  br label %getIntArg.exit928

bb.az:                                            ; preds = %bb.av
  %i.ek = and i32 %i.ec, 18
  %.not9.i.i.i926 = icmp eq i32 %i.ek, 0
  br i1 %.not9.i.i.i926, label %getIntArg.exit928, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !289
  %.not10.i.i.i927 = icmp eq ptr %i.em, null
  br i1 %.not10.i.i.i927, label %getIntArg.exit928, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.dz)
  br label %getIntArg.exit928

getIntArg.exit928:                                ; preds = %bb.as, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %.0.i923 = phi i64 [ 0, %bb.as ], [ %i.ee, %bb.au ], [ 0, %bb.az ], [ %i.en, %bb.bb ], [ 0, %bb.ba ], [ %i.ej, %bb.ay ], [ -9223372036854775808, %bb.aw ], [ 9223372036854775807, %bb.ax ]
  %i.eo = trunc i64 %.0.i923 to i32
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ar
  %i.ep = load i32, ptr %2, align 8               ; 3 uses
  %i.eq = icmp ult i32 %i.ep, 41
  br i1 %i.eq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.er = load ptr, ptr %i.w, align 8
  %i.es = zext nneg i32 %i.ep to i64
  %i.et = getelementptr i8, ptr %i.er, i64 %i.es
  %i.eu = add nuw nsw i32 %i.ep, 8
  store i32 %i.eu, ptr %2, align 8
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ev = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  store ptr %i.ew, ptr %i.v, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ex = phi ptr [ %i.et, %bb.bd ], [ %i.ev, %bb.be ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !5
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %getIntArg.exit928
  %.1607 = phi i32 [ %i.eo, %getIntArg.exit928 ], [ %i.ey, %bb.bf ] ; 4 uses
  %i.ez = icmp slt i32 %.1607, 0
  %.not832 = icmp eq i32 %.1607, -2147483648
  %i.fa = sub nsw i32 0, %.1607
  %i.fb = select i1 %.not832, i32 -1, i32 %i.fa
  %.2608 = select i1 %i.ez, i32 %i.fb, i32 %.1607
  %i.fc = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !227
  %i.fe = sext i8 %i.fd to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1221, %.lr.ph
  %.25911280 = phi i32 [ %.2591, %.lr.ph ], [ %.25911277, %.preheader1221 ]
  %.71279 = phi ptr [ %i.fi, %.lr.ph ], [ %i.do, %.preheader1221 ]
  %.07081278 = phi i32 [ %i.fh, %.lr.ph ], [ 0, %.preheader1221 ]
  %i.ff = mul i32 %.07081278, 10
  %i.fg = add nsw i32 %.25911280, -48
  %i.fh = add i32 %i.fg, %i.ff                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.71279, i64 1 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !227 ; 2 uses
  %.2591 = sext i8 %i.fj to i32                   ; 2 uses
  %i.fk = add i8 %i.fj, -48
  %i.fl = icmp ult i8 %i.fk, 10
  br i1 %i.fl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !290

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.fm = and i32 %i.fh, 2147483647
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader1221, %._crit_edge.loopexit, %bb.bg
  %.3609 = phi i32 [ %.2608, %bb.bg ], [ 0, %.preheader1221 ], [ %i.fm, %._crit_edge.loopexit ] ; 2 uses
  %.3592 = phi i32 [ %i.fe, %bb.bg ], [ %.25911277, %.preheader1221 ], [ %.2591, %._crit_edge.loopexit ] ; 2 uses
  %.8 = phi ptr [ %i.fc, %bb.bg ], [ %i.do, %.preheader1221 ], [ %i.fi, %._crit_edge.loopexit ] ; 2 uses
  %i.fn = icmp eq i32 %.3592, 108
  br i1 %i.fn, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %._crit_edge
  %i.fo = getelementptr inbounds i8, ptr %.8, i64 -1
  br label %.thread

.thread:                                          ; preds = %._crit_edge1287, %._crit_edge1287, %bb.bh, %bb.ap, %bb.ap, %.preheader1240, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.91110 = phi ptr [ %.5.lcssa, %._crit_edge1287 ], [ %.5.lcssa, %._crit_edge1287 ], [ %.3, %bb.ap ], [ %i.fo, %bb.bh ], [ %.3, %bb.ap ], [ %.3, %.preheader1240 ], [ %.3, %bb.v ], [ %.3, %bb.u ], [ %.3, %bb.t ], [ %.3, %bb.s ], [ %.3, %bb.r ]
  %.46101109 = phi i32 [ %.0606, %._crit_edge1287 ], [ %.0606, %._crit_edge1287 ], [ %.0606, %bb.ap ], [ %.3609, %bb.bh ], [ %.0606, %bb.ap ], [ %.0606, %.preheader1240 ], [ %.0606, %bb.v ], [ %.0606, %bb.u ], [ %.0606, %bb.t ], [ %.0606, %bb.s ], [ %.0606, %bb.r ] ; 2 uses
  %.36811107 = phi i32 [ %i.cc, %._crit_edge1287 ], [ %i.cc, %._crit_edge1287 ], [ %.2680, %bb.ap ], [ %.0678, %bb.bh ], [ %.2680, %bb.ap ], [ %.0678, %.preheader1240 ], [ %.0678, %bb.v ], [ %.0678, %bb.u ], [ %.0678, %bb.t ], [ %.0678, %bb.s ], [ %.0678, %bb.r ] ; 2 uses
  %.26961105 = phi i8 [ %.0694, %._crit_edge1287 ], [ %.0694, %._crit_edge1287 ], [ %.1695, %bb.ap ], [ %.0694, %bb.bh ], [ %.1695, %bb.ap ], [ 1, %.preheader1240 ], [ %.0694, %bb.v ], [ %.0694, %bb.u ], [ %.0694, %bb.t ], [ %.0694, %bb.s ], [ %.0694, %bb.r ] ; 2 uses
  %.16981103 = phi i8 [ %.0697, %._crit_edge1287 ], [ %.0697, %._crit_edge1287 ], [ %.0697, %bb.ap ], [ %.0697, %bb.bh ], [ %.0697, %bb.ap ], [ %.0697, %.preheader1240 ], [ %.0697, %bb.v ], [ %.0697, %bb.u ], [ %.0697, %bb.t ], [ %.0697, %bb.s ], [ %.0589.in, %bb.r ] ; 2 uses
  %.17131101 = phi i8 [ %.0712, %._crit_edge1287 ], [ %.0712, %._crit_edge1287 ], [ %.0712, %bb.ap ], [ %.0712, %bb.bh ], [ %.0712, %bb.ap ], [ %.0712, %.preheader1240 ], [ %.0712, %bb.v ], [ %.0712, %bb.u ], [ %.0712, %bb.t ], [ 1, %bb.s ], [ %.0712, %bb.r ] ; 2 uses
  %.17541099 = phi i8 [ %.0753, %._crit_edge1287 ], [ %.0753, %._crit_edge1287 ], [ %.0753, %bb.ap ], [ %.0753, %bb.bh ], [ %.0753, %bb.ap ], [ %.0753, %.preheader1240 ], [ 44, %bb.v ], [ %.0753, %bb.u ], [ %.0753, %bb.t ], [ %.0753, %bb.s ], [ %.0753, %bb.r ] ; 2 uses
  %.17651095 = phi i8 [ %.0764, %._crit_edge1287 ], [ %.0764, %._crit_edge1287 ], [ %.0764, %bb.ap ], [ %.0764, %bb.bh ], [ %.0764, %bb.ap ], [ %.0764, %.preheader1240 ], [ %.0764, %bb.v ], [ 1, %bb.u ], [ %.0764, %bb.t ], [ %.0764, %bb.s ], [ %.0764, %bb.r ] ; 2 uses
  %.17671093 = phi i8 [ %.0766, %._crit_edge1287 ], [ %.0766, %._crit_edge1287 ], [ %.0766, %bb.ap ], [ %.0766, %bb.bh ], [ %.0766, %bb.ap ], [ %.0766, %.preheader1240 ], [ %.0766, %bb.v ], [ %.0766, %bb.u ], [ 1, %bb.t ], [ %.0766, %bb.s ], [ %.0766, %bb.r ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.91110, i64 1 ; 3 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !227 ; 2 uses
  %.not838 = icmp eq i8 %i.fq, 0
  br i1 %.not838, label %.critedge, label %.preheader1240, !llvm.loop !291

.critedge.loopexit.split.loop.exit1315:           ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.fs = sext i8 %i.dn to i32
  br label %.critedge

.critedge:                                        ; preds = %.thread, %._crit_edge, %.preheader1240, %._crit_edge1287, %.critedge.loopexit.split.loop.exit1315, %bb.y
  %.46101108 = phi i32 [ %.0606, %bb.y ], [ %.0606, %.critedge.loopexit.split.loop.exit1315 ], [ %.0606, %._crit_edge1287 ], [ %.46101109, %.thread ], [ %.3609, %._crit_edge ], [ %.0606, %.preheader1240 ] ; 15 uses
  %.36811106 = phi i32 [ %.0678, %bb.y ], [ %.2680, %.critedge.loopexit.split.loop.exit1315 ], [ %i.cc, %._crit_edge1287 ], [ %.36811107, %.thread ], [ %.0678, %._crit_edge ], [ %.0678, %.preheader1240 ] ; 20 uses
  %.26961104 = phi i8 [ %.0694, %bb.y ], [ %.1695, %.critedge.loopexit.split.loop.exit1315 ], [ %.0694, %._crit_edge1287 ], [ %.26961105, %.thread ], [ %.0694, %._crit_edge ], [ %.0694, %.preheader1240 ] ; 3 uses
  %.16981102 = phi i8 [ %.0697, %bb.y ], [ %.0697, %.critedge.loopexit.split.loop.exit1315 ], [ %.0697, %._crit_edge1287 ], [ %.16981103, %.thread ], [ %.0697, %._crit_edge ], [ %.0697, %.preheader1240 ] ; 10 uses
  %.17131100 = phi i8 [ %.0712, %bb.y ], [ %.0712, %.critedge.loopexit.split.loop.exit1315 ], [ %.0712, %._crit_edge1287 ], [ %.17131101, %.thread ], [ %.0712, %._crit_edge ], [ %.0712, %.preheader1240 ] ; 8 uses
  %.17541098 = phi i8 [ %.0753, %bb.y ], [ %.0753, %.critedge.loopexit.split.loop.exit1315 ], [ %.0753, %._crit_edge1287 ], [ %.17541099, %.thread ], [ %.0753, %._crit_edge ], [ %.0753, %.preheader1240 ] ; 2 uses
  %.27611097 = phi i8 [ %.1760, %bb.y ], [ 0, %.critedge.loopexit.split.loop.exit1315 ], [ 0, %._crit_edge1287 ], [ 0, %.preheader1240 ], [ 0, %._crit_edge ], [ 0, %.thread ] ; 2 uses
  %.17651094 = phi i8 [ %.0764, %bb.y ], [ %.0764, %.critedge.loopexit.split.loop.exit1315 ], [ %.0764, %._crit_edge1287 ], [ %.17651095, %.thread ], [ %.0764, %._crit_edge ], [ %.0764, %.preheader1240 ] ; 4 uses
  %.17671092 = phi i8 [ %.0766, %bb.y ], [ %.0766, %.critedge.loopexit.split.loop.exit1315 ], [ %.0766, %._crit_edge1287 ], [ %.17671093, %.thread ], [ %.0766, %._crit_edge ], [ %.0766, %.preheader1240 ] ; 8 uses
  %.5594 = phi i32 [ %.1590, %bb.y ], [ %i.fs, %.critedge.loopexit.split.loop.exit1315 ], [ %.lcssa, %._crit_edge1287 ], [ 0, %.thread ], [ %.3592, %._crit_edge ], [ %.0589, %.preheader1240 ] ; 3 uses
  %.10 = phi ptr [ %.4, %bb.y ], [ %i.fr, %.critedge.loopexit.split.loop.exit1315 ], [ %.lcssa1242, %._crit_edge1287 ], [ %i.fp, %.thread ], [ %.8, %._crit_edge ], [ %.3, %.preheader1240 ]
  %i.ft = urem i32 %.5594, 23                     ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [7 x i8], ptr @fmtinfo, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !292
  %i.fx = sext i8 %i.fw to i32
  %i.fy = icmp eq i32 %.5594, %i.fx
  br i1 %i.fy, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !294 ; 2 uses
  %i.gb = sext i8 %i.ga to i32
  %i.gc = sext i8 %i.ga to i64
  %i.gd = getelementptr inbounds [7 x i8], ptr @fmtinfo, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !292
  %i.gf = sext i8 %i.ge to i32
  %i.gg = icmp eq i32 %.5594, %i.gf
  br i1 %i.gg, label %bb.bj, label %sqlite3_str_append.exit920

bb.bj:                                            ; preds = %.critedge, %bb.bi
  %.0665 = phi i32 [ %i.ft, %.critedge ], [ %i.gb, %bb.bi ] ; 9 uses
  %i.gh = sext i32 %.0665 to i64                  ; 3 uses
  %i.gi = getelementptr inbounds [7 x i8], ptr @fmtinfo, i64 %i.gh ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !295
  switch i8 %i.gk, label %sqlite3_str_append.exit920 [
    i8 13, label %bb.bm
    i8 15, label %bb.bk
    i8 0, label %bb.bk
    i8 16, label %bb.bl
    i8 1, label %bb.ep
    i8 2, label %bb.ep
    i8 3, label %bb.ep
    i8 4, label %bb.is
    i8 7, label %bb.ix
    i8 8, label %bb.iy
    i8 5, label %bb.kf
    i8 6, label %bb.kf
    i8 9, label %bb.ld
    i8 10, label %bb.ld
    i8 14, label %bb.ld
    i8 11, label %bb.na
    i8 12, label %bb.ob
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.2755 = phi i8 [ %.17541098, %bb.bj ], [ 0, %bb.bk ] ; 5 uses
  %i.gl = shl nuw i64 1, %i.gh                    ; 6 uses
  %i.gm = and i64 %i.gl, 4182261
  %.not885.not = icmp eq i64 %i.gm, 0
  br i1 %.not885.not, label %bb.bn, label %bb.cm

bb.bm:                                            ; preds = %bb.bj
  %i.gn = shl nuw i64 1, %i.gh                    ; 4 uses
  %i.go = and i64 %i.gn, 4182261
  %.not885.not.jt2 = icmp eq i64 %i.go, 0
  br i1 %.not885.not.jt2, label %bb.bo, label %bb.cm

bb.bn:                                            ; preds = %bb.bl
  br i1 %.not, label %bb.bz, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  br i1 %.not, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gp = phi i64 [ %i.gn, %bb.bo ], [ %i.gl, %bb.bn ] ; 8 uses
  %.27551643 = phi i8 [ 0, %bb.bo ], [ %.2755, %bb.bn ] ; 8 uses
  %i.gq = load i32, ptr %.0710, align 8, !tbaa !284
  %i.gr = load i32, ptr %i.t, align 4, !tbaa !286 ; 3 uses
  %.not.i929 = icmp sgt i32 %i.gq, %i.gr
  br i1 %.not.i929, label %bb.bq, label %getIntArg.exit942

bb.bq:                                            ; preds = %bb.bp
  %i.gs = load ptr, ptr %i.u, align 8, !tbaa !287
  %i.gt = add nsw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.t, align 4, !tbaa !286
  %i.gu = sext i32 %i.gr to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !288 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !162
  %i.gz = zext i16 %i.gy to i32                   ; 3 uses
  %i.ha = and i32 %i.gz, 36
  %.not.i.i.i931 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i931, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hb = load i64, ptr %i.gw, align 8, !tbaa !227
  br label %getIntArg.exit935

bb.bs:                                            ; preds = %bb.bq
  %i.hc = and i32 %i.gz, 8
  %.not8.i.i.i932 = icmp eq i32 %i.hc, 0
  br i1 %.not8.i.i.i932, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hd = load double, ptr %i.gw, align 8, !tbaa !227 ; 3 uses
  %i.he = fcmp olt double %i.hd, f0xC3DFFFFFFFFFFFFF
  br i1 %i.he, label %getIntArg.exit942, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hf = fcmp ogt double %i.hd, f0x43DFFFFFFFFFFFFF
  br i1 %i.hf, label %getIntArg.exit942, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hg = fptosi double %i.hd to i64
  br label %getIntArg.exit935

bb.bw:                                            ; preds = %bb.bs
  %i.hh = and i32 %i.gz, 18
  %.not9.i.i.i933 = icmp eq i32 %i.hh, 0
  br i1 %.not9.i.i.i933, label %getIntArg.exit942, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !289
  %.not10.i.i.i934 = icmp eq ptr %i.hj, null
  br i1 %.not10.i.i.i934, label %getIntArg.exit942, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hk = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.gw)
  br label %getIntArg.exit935

bb.bz:                                            ; preds = %bb.bn
  switch i8 %.27611097, label %bb.ce [
    i8 0, label %bb.ci
    i8 2, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bo, %bb.bz
  %i.hl = phi i64 [ %i.gl, %bb.bz ], [ %i.gn, %bb.bo ]
  %.27551644 = phi i8 [ %.2755, %bb.bz ], [ 0, %bb.bo ]
  %i.hm = load i32, ptr %2, align 8               ; 3 uses
  %i.hn = icmp ult i32 %i.hm, 41
  br i1 %i.hn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ho = load ptr, ptr %i.w, align 8
  %i.hp = zext nneg i32 %i.hm to i64
  %i.hq = getelementptr i8, ptr %i.ho, i64 %i.hp
  %i.hr = add nuw nsw i32 %i.hm, 8
  store i32 %i.hr, ptr %2, align 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.hs = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  store ptr %i.ht, ptr %i.v, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.hu = phi ptr [ %i.hq, %bb.cb ], [ %i.hs, %bb.cc ]
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !18
  br label %getIntArg.exit935

bb.ce:                                            ; preds = %bb.bz
  %i.hw = load i32, ptr %2, align 8               ; 3 uses
  %i.hx = icmp ult i32 %i.hw, 41
  br i1 %i.hx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hy = load ptr, ptr %i.w, align 8
  %i.hz = zext nneg i32 %i.hw to i64
  %i.ia = getelementptr i8, ptr %i.hy, i64 %i.hz
  %i.ib = add nuw nsw i32 %i.hw, 8
  store i32 %i.ib, ptr %2, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ic = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  store ptr %i.id, ptr %i.v, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ie = phi ptr [ %i.ia, %bb.cf ], [ %i.ic, %bb.cg ]
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !296
  br label %getIntArg.exit935

bb.ci:                                            ; preds = %bb.bz
  %i.ig = load i32, ptr %2, align 8               ; 3 uses
  %i.ih = icmp ult i32 %i.ig, 41
  br i1 %i.ih, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ii = load ptr, ptr %i.w, align 8
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr i8, ptr %i.ii, i64 %i.ij
end_hunk_0
begin_hunk_1_@sqlite3_str_vappendf:bb.a
bb.gv:                                            ; preds = %bb.gt, %bb.gu, %bb.gs
  %.9604 = phi ptr [ %i.a, %bb.gs ], [ %i.a, %bb.gu ], [ %i.z, %bb.gt ] ; 2 uses
  %i.abk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9604) #60
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = and i32 %i.abl, 1073741823
  br label %printfTempBuf.exit953

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gr
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gr ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 4, !tbaa !326
  %i.abn = icmp eq i8 %.pr, 45
  br i1 %i.abn, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.abo = icmp eq i8 %.17131100, 0
  %i.abp = icmp ne i8 %.16981102, 0
  %or.cond10.not876.not1213 = select i1 %i.abo, i1 true, i1 %i.abp
  %or.cond13.not1210 = or i1 %or.cond10.not876.not1213, %i.qn
  %.not877 = icmp sgt i32 %.pre.ph, %.0677
  %or.cond = select i1 %or.cond13.not1210, i1 true, i1 %.not877
  %spec.select916 = select i1 %or.cond, i8 45, i8 0
  br label %bb.gx

bb.gx:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.gw, %sqlite3FpDecode.exit._crit_edge
  %.pre1934 = phi i32 [ %.pre.ph, %bb.gw ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2748 = phi i8 [ %spec.select916, %bb.gw ], [ %.16981102, %sqlite3FpDecode.exit._crit_edge ], [ %.16981102, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.abq = and i32 %.0665, -9                     ; 2 uses
  %i.abr = icmp eq i32 %i.abq, 3
  br i1 %i.abr, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.abs = xor i8 %.17131100, 1
  %i.abt = icmp slt i32 %.pre1934, -3
  %i.abu = icmp sgt i32 %.pre1934, %.6612
  %or.cond903 = select i1 %i.abt, i1 true, i1 %i.abu ; 2 uses
  %i.abv = sub i32 0, %.pre1934
  %spec.select918.p = select i1 %or.cond903, i32 -1, i32 %i.abv
  %spec.select918 = add i32 %spec.select918.p, %.6612
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.abw = icmp eq i32 %i.abq, 1
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gy, %bb.gz
  %.1751 = phi i1 [ %i.abw, %bb.gz ], [ %or.cond903, %bb.gy ] ; 2 uses
  %.0711 = phi i8 [ %.17671092, %bb.gz ], [ %i.abs, %bb.gy ]
  %.7613 = phi i32 [ %.6612, %bb.gz ], [ %spec.select918, %bb.gy ]
  %.7613.fr = freeze i32 %.7613                   ; 4 uses
  %i.abx = add nsw i32 %.pre1934, -1
  %.0718 = select i1 %.1751, i32 0, i32 %i.abx    ; 6 uses
  %i.aby = icmp sgt i32 %.0718, 0
  %i.abz = call i32 @llvm.smax.i32(i32 %.0718, i32 0)
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = sext i32 %.7613.fr to i64
  %i.acc = zext nneg i32 %.36811106 to i64
  %i.acd = add nuw nsw i64 %i.acc, 15
  %i.ace = add nuw nsw i64 %i.acd, %i.aca
  %i.acf = add nsw i64 %i.ace, %i.acb             ; 2 uses
  %i.acg = icmp ne i8 %.17541098, 0               ; 2 uses
  %or.cond15 = select i1 %i.acg, i1 %i.aby, i1 false
  br i1 %or.cond15, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.ach = add nuw nsw i32 %.0718, 2
  %i.aci = udiv i32 %i.ach, 3
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = add nsw i64 %i.acf, %i.acj
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.0671 = phi i64 [ %i.ack, %bb.hb ], [ %i.acf, %bb.ha ] ; 5 uses
  %i.acl = icmp sgt i64 %.0671, 70
  br i1 %i.acl, label %bb.hd, label %bb.hu

bb.hd:                                            ; preds = %bb.hc
  %i.acm = load i8, ptr %i.x, align 4, !tbaa !298
  %.not.i951 = icmp eq i8 %i.acm, 0
  br i1 %.not.i951, label %bb.he, label %printfTempBuf.exit953.thread1156

bb.he:                                            ; preds = %bb.hd
  %i.acn = load i32, ptr %i.r, align 8, !tbaa !280
  %i.aco = zext i32 %i.acn to i64
  %i.acp = icmp samesign ugt i64 %.0671, %i.aco
  br i1 %i.acp, label %bb.hf, label %bb.hn

bb.hf:                                            ; preds = %bb.he
  %i.acq = load i32, ptr %i.y, align 4, !tbaa !299 ; 2 uses
  %i.acr = zext i32 %i.acq to i64
  %i.acs = icmp samesign ugt i64 %.0671, %i.acr
  br i1 %i.acs, label %bb.hg, label %bb.hn

bb.hg:                                            ; preds = %bb.hf
  store i8 18, ptr %i.x, align 4, !tbaa !298
  %.not.i1025 = icmp eq i32 %i.acq, 0
  br i1 %.not.i1025, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.act = load i8, ptr %i.b, align 1, !tbaa !275 ; 2 uses
  %i.acu = and i8 %i.act, 4
  %.not.i.i1026 = icmp eq i8 %i.acu, 0
  br i1 %.not.i.i1026, label %sqlite3_str_reset.exit.i1030, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.acv = load ptr, ptr %i.s, align 8, !tbaa !282 ; 2 uses
  %.not.i.i.i1027 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i1027, label %sqlite3DbFree.exit.i.i1029, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.acw = load ptr, ptr %0, align 8, !tbaa !300
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.acw, ptr noundef nonnull %i.acv)
  %.pre.i.i1028 = load i8, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3DbFree.exit.i.i1029

sqlite3DbFree.exit.i.i1029:                       ; preds = %bb.hj, %bb.hi
  %i.acx = phi i8 [ %i.act, %bb.hi ], [ %.pre.i.i1028, %bb.hj ]
  %i.acy = and i8 %i.acx, -5
  store i8 %i.acy, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3_str_reset.exit.i1030

sqlite3_str_reset.exit.i1030:                     ; preds = %sqlite3DbFree.exit.i.i1029, %bb.hh
  store i32 0, ptr %i.r, align 8, !tbaa !280
  store i32 0, ptr %i.q, align 8, !tbaa !279
  store ptr null, ptr %i.s, align 8, !tbaa !282
  br label %bb.hk

bb.hk:                                            ; preds = %sqlite3_str_reset.exit.i1030, %bb.hg
  %i.acz = load ptr, ptr %0, align 8, !tbaa !300  ; 2 uses
  %i.ada = icmp eq ptr %i.acz, null
  br i1 %i.ada, label %printfTempBuf.exit953.thread1156, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 344
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !301 ; 3 uses
  %i.add = icmp eq ptr %i.adc, null
  br i1 %i.add, label %printfTempBuf.exit953.thread1156, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  store i32 18, ptr %i.ade, align 8, !tbaa !302
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 52 ; 2 uses
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !313
  %i.adh = add nsw i32 %i.adg, 1
  store i32 %i.adh, ptr %i.adf, align 4, !tbaa !313
  br label %printfTempBuf.exit953.thread1156

bb.hn:                                            ; preds = %bb.hf, %bb.he
  %i.adi = load ptr, ptr %0, align 8, !tbaa !300  ; 2 uses
  %.not.i1022 = icmp eq ptr %i.adi, null
  br i1 %.not.i1022, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.adj = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.adi, i64 noundef range(i64 47, -9223372036854775808) %.0671), !inline_history !314
  br label %sqlite3DbMallocRaw.exit1024

bb.hp:                                            ; preds = %bb.hn
  %i.adk = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 47, -9223372036854775808) %.0671), !inline_history !314
  br label %sqlite3DbMallocRaw.exit1024

sqlite3DbMallocRaw.exit1024:                      ; preds = %bb.ho, %bb.hp
  %.0.i1023 = phi ptr [ %i.adj, %bb.ho ], [ %i.adk, %bb.hp ] ; 3 uses
  %i.adl = icmp eq ptr %.0.i1023, null
  br i1 %i.adl, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %sqlite3DbMallocRaw.exit1024
  store i8 7, ptr %i.x, align 4, !tbaa !298
  %i.adm = load i32, ptr %i.y, align 4, !tbaa !299
  %.not.i1015 = icmp eq i32 %i.adm, 0
  br i1 %.not.i1015, label %printfTempBuf.exit953.thread1156, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adn = load i8, ptr %i.b, align 1, !tbaa !275 ; 2 uses
  %i.ado = and i8 %i.adn, 4
  %.not.i.i1016 = icmp eq i8 %i.ado, 0
  br i1 %.not.i.i1016, label %sqlite3_str_reset.exit.i1020, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.adp = load ptr, ptr %i.s, align 8, !tbaa !282 ; 2 uses
  %.not.i.i.i1017 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i1017, label %sqlite3DbFree.exit.i.i1019, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.adq = load ptr, ptr %0, align 8, !tbaa !300
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.adq, ptr noundef nonnull %i.adp)
  %.pre.i.i1018 = load i8, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3DbFree.exit.i.i1019

sqlite3DbFree.exit.i.i1019:                       ; preds = %bb.ht, %bb.hs
  %i.adr = phi i8 [ %i.adn, %bb.hs ], [ %.pre.i.i1018, %bb.ht ]
  %i.ads = and i8 %i.adr, -5
  store i8 %i.ads, ptr %i.b, align 1, !tbaa !275
  br label %sqlite3_str_reset.exit.i1020

sqlite3_str_reset.exit.i1020:                     ; preds = %sqlite3DbFree.exit.i.i1019, %bb.hr
  store i32 0, ptr %i.r, align 8, !tbaa !280
  store i32 0, ptr %i.q, align 8, !tbaa !279
  store ptr null, ptr %i.s, align 8, !tbaa !282
  br label %printfTempBuf.exit953.thread1156

bb.hu:                                            ; preds = %bb.hc, %sqlite3DbMallocRaw.exit1024
  %.3727.ph = phi ptr [ %.0.i1023, %sqlite3DbMallocRaw.exit1024 ], [ null, %bb.hc ] ; 3 uses
  %.11.ph = phi ptr [ %.0.i1023, %sqlite3DbMallocRaw.exit1024 ], [ %i.a, %bb.hc ] ; 14 uses
  %i.adt = icmp sgt i32 %.7613.fr, 0              ; 2 uses
  %i.adu = zext i1 %i.adt to i8
  %i.adv = or i8 %.17131100, %i.adu
  %i.adw = or i8 %i.adv, %.17671092               ; 2 uses
  %.not879 = icmp eq i8 %.2748, 0
  br i1 %.not879, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.adx = getelementptr inbounds nuw i8, ptr %.11.ph, i64 1
  store i8 %.2748, ptr %.11.ph, align 1, !tbaa !227
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.12 = phi ptr [ %i.adx, %bb.hv ], [ %.11.ph, %bb.hu ] ; 3 uses
  %i.ady = icmp slt i32 %.0718, 0
  br i1 %i.ady, label %bb.hx, label %.preheader1227

bb.hx:                                            ; preds = %bb.hw
  %i.adz = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 48, ptr %.12, align 1, !tbaa !227
  %i.aea = add nsw i32 %.0718, 1
  br label %.loopexit1228

.preheader1227:                                   ; preds = %bb.hw, %bb.ic
  %.131386 = phi ptr [ %.14, %bb.ic ], [ %.12, %bb.hw ] ; 3 uses
  %.06721385 = phi i32 [ %.1673, %bb.ic ], [ 0, %bb.hw ] ; 4 uses
  %.17191384 = phi i32 [ %i.aeo, %bb.ic ], [ %.0718, %bb.hw ] ; 4 uses
  %i.aeb = load i32, ptr %3, align 8, !tbaa !327
  %i.aec = icmp slt i32 %.06721385, %i.aeb
  br i1 %i.aec, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.preheader1227
  %i.aed = load ptr, ptr %i.ah, align 8, !tbaa !329
  %i.aee = add nsw i32 %.06721385, 1
  %i.aef = sext i32 %.06721385 to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.aed, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !227
  br label %bb.hz

bb.hz:                                            ; preds = %.preheader1227, %bb.hy
  %.1673 = phi i32 [ %i.aee, %bb.hy ], [ %.06721385, %.preheader1227 ] ; 2 uses
  %i.aei = phi i8 [ %i.aeh, %bb.hy ], [ 48, %.preheader1227 ]
  %i.aej = getelementptr inbounds nuw i8, ptr %.131386, i64 1 ; 3 uses
  store i8 %i.aei, ptr %.131386, align 1, !tbaa !227
  br i1 %i.acg, label %bb.ia, label %bb.ic

bb.ia:                                            ; preds = %bb.hz
  %i.aek = urem i32 %.17191384, 3
  %i.ael = icmp eq i32 %i.aek, 0
  %i.aem = icmp samesign ugt i32 %.17191384, 1
  %or.cond17 = and i1 %i.aem, %i.ael
  br i1 %or.cond17, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.aen = getelementptr inbounds nuw i8, ptr %.131386, i64 2
  store i8 44, ptr %i.aej, align 1, !tbaa !227
  br label %bb.ic

bb.ic:                                            ; preds = %bb.hz, %bb.ia, %bb.ib
  %.14 = phi ptr [ %i.aen, %bb.ib ], [ %i.aej, %bb.ia ], [ %i.aej, %bb.hz ] ; 2 uses
  %i.aeo = add nsw i32 %.17191384, -1
  %i.aep = icmp sgt i32 %.17191384, 0
  br i1 %i.aep, label %.preheader1227, label %.loopexit1228, !llvm.loop !339

.loopexit1228:                                    ; preds = %bb.ic, %bb.hx
  %.2720 = phi i32 [ %i.aea, %bb.hx ], [ 0, %bb.ic ] ; 2 uses
  %.2674 = phi i32 [ 0, %bb.hx ], [ %.1673, %bb.ic ] ; 5 uses
  %.15 = phi ptr [ %i.adz, %bb.hx ], [ %.14, %bb.ic ] ; 3 uses
  %.not880 = icmp eq i8 %i.adw, 0
  br i1 %.not880, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %.loopexit1228
  %i.aeq = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 46, ptr %.15, align 1, !tbaa !227
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.loopexit1228
  %.16 = phi ptr [ %i.aeq, %bb.id ], [ %.15, %.loopexit1228 ] ; 3 uses
  %i.aer = icmp slt i32 %.2720, 0
  %i.aes = and i1 %i.adt, %i.aer
  br i1 %i.aes, label %.lr.ph1391.preheader, label %.preheader1226

.lr.ph1391.preheader:                             ; preds = %bb.ie
  %i.aet = add nsw i32 %.7613.fr, -1              ; 2 uses
  %i.aeu = xor i32 %.2720, -1                     ; 2 uses
  %i.aev = call i32 @llvm.umin.i32(i32 %i.aet, i32 %i.aeu)
  %umin = zext nneg i32 %i.aev to i64             ; 2 uses
  %i.aew = add nuw nsw i64 %umin, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.16, i8 48, i64 %i.aew, i1 false), !tbaa !227
  %scevgep = getelementptr i8, ptr %.16, i64 1
  %scevgep1499 = getelementptr i8, ptr %scevgep, i64 %umin
  %i.aex = call i32 @llvm.usub.sat.i32(i32 %i.aet, i32 %i.aeu)
  br label %.preheader1226

.preheader1226:                                   ; preds = %.lr.ph1391.preheader, %bb.ie
  %.8614.lcssa = phi i32 [ %.7613.fr, %bb.ie ], [ %i.aex, %.lr.ph1391.preheader ] ; 5 uses
  %.17.lcssa = phi ptr [ %.16, %bb.ie ], [ %scevgep1499, %.lr.ph1391.preheader ] ; 4 uses
  %i.aey = icmp sgt i32 %.8614.lcssa, 0
  br i1 %i.aey, label %.lr.ph1396.preheader, label %._crit_edge1397

.lr.ph1396.preheader:                             ; preds = %.preheader1226
  %xtraiter2139 = and i32 %.8614.lcssa, 1
  %lcmp.mod2140.not = icmp eq i32 %xtraiter2139, 0
  br i1 %lcmp.mod2140.not, label %.lr.ph1396.prol.loopexit, label %.lr.ph1396.prol

.lr.ph1396.prol:                                  ; preds = %.lr.ph1396.preheader
  %i.aez = add nsw i32 %.8614.lcssa, -1
  %i.afa = load i32, ptr %3, align 8, !tbaa !327
  %i.afb = icmp slt i32 %.2674, %i.afa
  br i1 %i.afb, label %bb.if, label %.lr.ph1396.prol.loopexit.unr-lcssa

bb.if:                                            ; preds = %.lr.ph1396.prol
  %i.afc = load ptr, ptr %i.ah, align 8, !tbaa !329
  %i.afd = add nsw i32 %.2674, 1
  %i.afe = sext i32 %.2674 to i64
  %i.aff = getelementptr inbounds i8, ptr %i.afc, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !227
  br label %.lr.ph1396.prol.loopexit.unr-lcssa

.lr.ph1396.prol.loopexit.unr-lcssa:               ; preds = %bb.if, %.lr.ph1396.prol
  %.4676.prol = phi i32 [ %i.afd, %bb.if ], [ %.2674, %.lr.ph1396.prol ]
  %i.afh = phi i8 [ %i.afg, %bb.if ], [ 48, %.lr.ph1396.prol ]
  %i.afi = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1 ; 2 uses
  store i8 %i.afh, ptr %.17.lcssa, align 1, !tbaa !227
  br label %.lr.ph1396.prol.loopexit

.lr.ph1396.prol.loopexit:                         ; preds = %.lr.ph1396.prol.loopexit.unr-lcssa, %.lr.ph1396.preheader
  %.in1437.unr = phi i32 [ %.8614.lcssa, %.lr.ph1396.preheader ], [ %i.aez, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.181395.unr = phi ptr [ %.17.lcssa, %.lr.ph1396.preheader ], [ %i.afi, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.36751394.unr = phi i32 [ %.2674, %.lr.ph1396.preheader ], [ %.4676.prol, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.lcssa2115.unr = phi ptr [ poison, %.lr.ph1396.preheader ], [ %i.afi, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %i.afj = icmp eq i32 %.8614.lcssa, 1
  br i1 %i.afj, label %._crit_edge1397, label %.lr.ph1396

.lr.ph1396:                                       ; preds = %.lr.ph1396.prol.loopexit, %bb.ii
  %.in1437 = phi i32 [ %i.aft, %bb.ii ], [ %.in1437.unr, %.lr.ph1396.prol.loopexit ] ; 2 uses
  %.181395 = phi ptr [ %i.agc, %bb.ii ], [ %.181395.unr, %.lr.ph1396.prol.loopexit ] ; 3 uses
  %.36751394 = phi i32 [ %.4676.1, %bb.ii ], [ %.36751394.unr, %.lr.ph1396.prol.loopexit ] ; 4 uses
  %i.afk = load i32, ptr %3, align 8, !tbaa !327
  %i.afl = icmp slt i32 %.36751394, %i.afk
  br i1 %i.afl, label %bb.ig, label %.lr.ph1396.1

bb.ig:                                            ; preds = %.lr.ph1396
  %i.afm = load ptr, ptr %i.ah, align 8, !tbaa !329
  %i.afn = add nsw i32 %.36751394, 1
  %i.afo = sext i32 %.36751394 to i64
  %i.afp = getelementptr inbounds i8, ptr %i.afm, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !227
  br label %.lr.ph1396.1

.lr.ph1396.1:                                     ; preds = %.lr.ph1396, %bb.ig
  %.4676 = phi i32 [ %i.afn, %bb.ig ], [ %.36751394, %.lr.ph1396 ] ; 4 uses
  %i.afr = phi i8 [ %i.afq, %bb.ig ], [ 48, %.lr.ph1396 ]
  %i.afs = getelementptr inbounds nuw i8, ptr %.181395, i64 1
  store i8 %i.afr, ptr %.181395, align 1, !tbaa !227
  %i.aft = add nsw i32 %.in1437, -2
  %i.afu = load i32, ptr %3, align 8, !tbaa !327
  %i.afv = icmp slt i32 %.4676, %i.afu
  br i1 %i.afv, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %.lr.ph1396.1
  %i.afw = load ptr, ptr %i.ah, align 8, !tbaa !329
  %i.afx = add nsw i32 %.4676, 1
  %i.afy = sext i32 %.4676 to i64
  %i.afz = getelementptr inbounds i8, ptr %i.afw, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !227
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.lr.ph1396.1
  %.4676.1 = phi i32 [ %i.afx, %bb.ih ], [ %.4676, %.lr.ph1396.1 ]
  %i.agb = phi i8 [ %i.aga, %bb.ih ], [ 48, %.lr.ph1396.1 ]
  %i.agc = getelementptr inbounds nuw i8, ptr %.181395, i64 2 ; 2 uses
  store i8 %i.agb, ptr %i.afs, align 1, !tbaa !227
  %i.agd = icmp sgt i32 %.in1437, 2
  br i1 %i.agd, label %.lr.ph1396, label %._crit_edge1397, !llvm.loop !340

._crit_edge1397:                                  ; preds = %.lr.ph1396.prol.loopexit, %bb.ii, %.preheader1226
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader1226 ], [ %.lcssa2115.unr, %.lr.ph1396.prol.loopexit ], [ %i.agc, %bb.ii ] ; 2 uses
  %i.age = icmp ne i8 %.0711, 0
  %i.agf = icmp ne i8 %i.adw, 0
  %or.cond20 = select i1 %i.age, i1 %i.agf, i1 false
  br i1 %or.cond20, label %.preheader1224, label %.loopexit1225

.preheader1224:                                   ; preds = %._crit_edge1397, %bb.ij
  %.19 = phi ptr [ %i.agg, %bb.ij ], [ %.18.lcssa, %._crit_edge1397 ] ; 4 uses
  %i.agg = getelementptr inbounds i8, ptr %.19, i64 -1 ; 5 uses
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !227
  switch i8 %i.agh, label %.loopexit1225 [
    i8 48, label %bb.ij
    i8 46, label %bb.ik
  ]

bb.ij:                                            ; preds = %.preheader1224
  store i8 0, ptr %i.agg, align 1, !tbaa !227
  br label %.preheader1224, !llvm.loop !341

bb.ik:                                            ; preds = %.preheader1224
  br i1 %.not870, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.agi = getelementptr inbounds nuw i8, ptr %.19, i64 1
  store i8 48, ptr %.19, align 1, !tbaa !227
  br label %.loopexit1225

bb.im:                                            ; preds = %bb.ik
  store i8 0, ptr %i.agg, align 1, !tbaa !227
  br label %.loopexit1225

.loopexit1225:                                    ; preds = %.preheader1224, %bb.im, %bb.il, %._crit_edge1397
  %.20 = phi ptr [ %i.agi, %bb.il ], [ %i.agg, %bb.im ], [ %.18.lcssa, %._crit_edge1397 ], [ %.19, %.preheader1224 ] ; 5 uses
  br i1 %.1751, label %bb.in, label %bb.iq

bb.in:                                            ; preds = %.loopexit1225
  %i.agj = load i32, ptr %i.af, align 4, !tbaa !328 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !315
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !227
  %i.agp = getelementptr inbounds nuw i8, ptr %.20, i64 1
  store i8 %i.ago, ptr %.20, align 1, !tbaa !227
  %i.agq = icmp slt i32 %i.agj, 1                 ; 2 uses
  %i.agr = sub nsw i32 1, %i.agj
  %i.ags = add nsw i32 %i.agj, -1
  %.sink = select i1 %i.agq, i8 45, i8 43
  %.0722 = select i1 %i.agq, i32 %i.agr, i32 %i.ags ; 4 uses
  store i8 %.sink, ptr %i.agp, align 1, !tbaa !227
  %.21 = getelementptr inbounds nuw i8, ptr %.20, i64 2 ; 2 uses
  %i.agt = icmp samesign ugt i32 %.0722, 99
  br i1 %i.agt, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.agu = udiv i32 %.0722, 100
  %i.agv = trunc i32 %i.agu to i8
  %i.agw = add i8 %i.agv, 48
  %i.agx = getelementptr inbounds nuw i8, ptr %.20, i64 3
  store i8 %i.agw, ptr %.21, align 1, !tbaa !227
  %i.agy = urem i32 %.0722, 100
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.1723 = phi i32 [ %i.agy, %bb.io ], [ %.0722, %bb.in ]
  %.22 = phi ptr [ %i.agx, %bb.io ], [ %.21, %bb.in ] ; 3 uses
  %.lhs.trunc = trunc nuw nsw i32 %.1723 to i8    ; 2 uses
  %i.agz = udiv i8 %.lhs.trunc, 10
  %i.aha = or disjoint i8 %i.agz, 48
  %i.ahb = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.aha, ptr %.22, align 1, !tbaa !227
  %i.ahc = urem i8 %.lhs.trunc, 10
  %i.ahd = or disjoint i8 %i.ahc, 48
  %i.ahe = getelementptr inbounds nuw i8, ptr %.22, i64 2
  store i8 %i.ahd, ptr %i.ahb, align 1, !tbaa !227
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %.loopexit1225
  %.23 = phi ptr [ %i.ahe, %bb.ip ], [ %.20, %.loopexit1225 ] ; 2 uses
  store i8 0, ptr %.23, align 1, !tbaa !227
  %i.ahf = ptrtoint ptr %.23 to i64               ; 2 uses
  %i.ahg = ptrtoint ptr %.11.ph to i64            ; 2 uses
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = trunc i64 %i.ahh to i32                ; 6 uses
  %i.ahj = icmp ne i8 %.17651094, 0
  %i.ahk = icmp eq i8 %.26961104, 0
  %or.cond22.not1216 = select i1 %i.ahj, i1 %i.ahk, i1 false
  %i.ahl = icmp sgt i32 %.36811106, %i.ahi
  %or.cond904 = select i1 %or.cond22.not1216, i1 %i.ahl, i1 false
  br i1 %or.cond904, label %bb.ir, label %printfTempBuf.exit953

bb.ir:                                            ; preds = %bb.iq
  %i.ahm = sub i32 %.36811106, %i.ahi             ; 5 uses
  %.not8821399 = icmp slt i32 %i.ahi, 0
  br i1 %.not8821399, label %._crit_edge1403, label %iter.check

iter.check:                                       ; preds = %bb.ir
  %i.ahn = sext i32 %.36811106 to i64             ; 12 uses
  %i.aho = sext i32 %i.ahm to i64                 ; 3 uses
  %i.ahp = add nsw i64 %i.ahn, 1
  %smin2026 = call i64 @llvm.smin.i64(i64 %i.ahn, i64 %i.aho)
  %i.ahq = sub i64 %i.ahp, %smin2026              ; 7 uses
  %min.iters.check = icmp ult i64 %i.ahq, 8
  br i1 %min.iters.check, label %.lr.ph1402.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %smin = call i64 @llvm.smin.i64(i64 %i.ahn, i64 %i.aho)
  %i.ahr = sub i64 %i.ahn, %smin                  ; 2 uses
  %i.ahs = trunc i64 %i.ahr to i32
  %i.aht = icmp ugt i32 %i.ahs, %i.ahi
  %i.ahu = icmp ugt i64 %i.ahr, 4294967295
  %i.ahv = or i1 %i.aht, %i.ahu
  br i1 %i.ahv, label %.lr.ph1402.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ahw = sub i64 %i.ahf, %i.ahg
  %i.ahx = and i64 %i.ahw, 4294967295
  %i.ahy = sub nsw i64 %i.ahx, %i.ahn
  %diff.check = icmp ult i64 %i.ahy, 32
  br i1 %diff.check, label %.lr.ph1402.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2027 = icmp ult i64 %i.ahq, 32
  br i1 %min.iters.check2027, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ahq, 24
  %n.vec = and i64 %i.ahq, -32                    ; 4 uses
  %i.ahz = sub i64 %i.ahn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aia = sub i64 %i.ahn, %index                 ; 2 uses
  %i.aib = trunc nsw i64 %i.aia to i32
  %i.aic = sub nsw i32 %i.aib, %i.ahm
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw i8, ptr %.11.ph, i64 %i.aid ; 2 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aie, i64 -15
  %i.aig = getelementptr inbounds i8, ptr %i.aie, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aif, align 1, !tbaa !227
  %wide.load2028 = load <16 x i8>, ptr %i.aig, align 1, !tbaa !227
  %i.aih = getelementptr inbounds i8, ptr %.11.ph, i64 %i.aia ; 2 uses
  %i.aii = getelementptr inbounds i8, ptr %i.aih, i64 -15
  %i.aij = getelementptr inbounds i8, ptr %i.aih, i64 -31
  store <16 x i8> %wide.load, ptr %i.aii, align 1, !tbaa !227
  store <16 x i8> %wide.load2028, ptr %i.aij, align 1, !tbaa !227
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aik = icmp eq i64 %index.next, %n.vec
  br i1 %i.aik, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ahq, %n.vec
  br i1 %cmp.n, label %._crit_edge1403, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1402.preheader, label %vec.epilog.ph, !prof !345

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2030 = and i64 %i.ahq, -8                 ; 3 uses
  %i.ail = sub i64 %i.ahn, %n.vec2030
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2031 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2033, %vec.epilog.vector.body ] ; 2 uses
  %i.aim = sub i64 %i.ahn, %index2031             ; 2 uses
  %i.ain = trunc nsw i64 %i.aim to i32
  %i.aio = sub nsw i32 %i.ain, %i.ahm
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %.11.ph, i64 %i.aip
  %i.air = getelementptr inbounds i8, ptr %i.aiq, i64 -7
  %wide.load2032 = load <8 x i8>, ptr %i.air, align 1, !tbaa !227
  %i.ais = getelementptr inbounds i8, ptr %.11.ph, i64 %i.aim
  %i.ait = getelementptr inbounds i8, ptr %i.ais, i64 -7
  store <8 x i8> %wide.load2032, ptr %i.ait, align 1, !tbaa !227
  %index.next2033 = add nuw i64 %index2031, 8     ; 2 uses
  %i.aiu = icmp eq i64 %index.next2033, %n.vec2030
  br i1 %i.aiu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2034 = icmp eq i64 %i.ahq, %n.vec2030
  br i1 %cmp.n2034, label %._crit_edge1403, label %.lr.ph1402.preheader

.lr.ph1402.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1501.ph = phi i64 [ %i.ahn, %iter.check ], [ %i.ahn, %vector.scevcheck ], [ %i.ahn, %vector.memcheck ], [ %i.ahz, %vec.epilog.iter.check ], [ %i.ail, %vec.epilog.middle.block ]
  br label %.lr.ph1402

.lr.ph1402:                                       ; preds = %.lr.ph1402.preheader, %.lr.ph1402
  %indvars.iv1501 = phi i64 [ %indvars.iv.next1502, %.lr.ph1402 ], [ %indvars.iv1501.ph, %.lr.ph1402.preheader ] ; 4 uses
  %i.aiv = trunc nsw i64 %indvars.iv1501 to i32
  %i.aiw = sub nsw i32 %i.aiv, %i.ahm
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw i8, ptr %.11.ph, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !227
  %i.aja = getelementptr inbounds i8, ptr %.11.ph, i64 %indvars.iv1501
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !227
  %indvars.iv.next1502 = add nsw i64 %indvars.iv1501, -1
  %.not882.not = icmp sgt i64 %indvars.iv1501, %i.aho
  br i1 %.not882.not, label %.lr.ph1402, label %._crit_edge1403, !llvm.loop !347

._crit_edge1403:                                  ; preds = %.lr.ph1402, %middle.block, %vec.epilog.middle.block, %bb.ir
  %.not8831404 = icmp eq i32 %.36811106, %i.ahi
  br i1 %.not8831404, label %printfTempBuf.exit953, label %.lr.ph1408.preheader

.lr.ph1408.preheader:                             ; preds = %._crit_edge1403
  %.not1638.not.not.not = icmp ne i8 %.2748, 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not1638.not.not.not to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr i8, ptr %.11.ph, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ajb = zext i32 %i.ahm to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i8 48, i64 %i.ajb, i1 false), !tbaa !227
  br label %printfTempBuf.exit953

printfTempBuf.exit953.thread1156:                 ; preds = %bb.hd, %bb.hm, %bb.hk, %bb.hl, %bb.hq, %sqlite3_str_reset.exit.i1020
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %sqlite3_str_append.exit920

printfTempBuf.exit953:                            ; preds = %.lr.ph1408.preheader, %._crit_edge1403, %bb.iq, %bb.gv, %bb.gp
  %.4728 = phi ptr [ null, %bb.gp ], [ null, %bb.gv ], [ %.3727.ph, %bb.iq ], [ %.3727.ph, %._crit_edge1403 ], [ %.3727.ph, %.lr.ph1408.preheader ]
  %.3654 = phi i32 [ %i.abh, %bb.gp ], [ %i.abm, %bb.gv ], [ %i.ahi, %bb.iq ], [ %.36811106, %._crit_edge1403 ], [ %.36811106, %.lr.ph1408.preheader ]
  %.24 = phi ptr [ %i.abg, %bb.gp ], [ %.9604, %bb.gv ], [ %.11.ph, %bb.iq ], [ %.11.ph, %._crit_edge1403 ], [ %.11.ph, %.lr.ph1408.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.is:                                            ; preds = %bb.bj
  br i1 %.not, label %bb.it, label %sqlite3RecordErrorOffsetOfExpr.exit

bb.it:                                            ; preds = %bb.is
  %i.ajc = load i32, ptr %i.q, align 8, !tbaa !279
  %i.ajd = load i32, ptr %2, align 8              ; 3 uses
  %i.aje = icmp ult i32 %i.ajd, 41
  br i1 %i.aje, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.ajf = load ptr, ptr %i.w, align 8
  %i.ajg = zext nneg i32 %i.ajd to i64
  %i.ajh = getelementptr i8, ptr %i.ajf, i64 %i.ajg
  %i.aji = add nuw nsw i32 %i.ajd, 8
  store i32 %i.aji, ptr %2, align 8
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it
  %i.ajj = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 8
  store ptr %i.ajk, ptr %i.v, align 8
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.ajl = phi ptr [ %i.ajh, %bb.iu ], [ %i.ajj, %bb.iv ]
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !348
  store i32 %i.ajc, ptr %i.ajm, align 4, !tbaa !5
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.ix:                                            ; preds = %bb.bj
  store i8 37, ptr %i.a, align 16, !tbaa !227
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.iy:                                            ; preds = %bb.bj
  br i1 %.not, label %bb.ji, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ajn = load i32, ptr %.0710, align 8, !tbaa !284
  %i.ajo = load i32, ptr %i.t, align 4, !tbaa !286 ; 3 uses
  %.not.i954 = icmp sgt i32 %i.ajn, %i.ajo
  br i1 %.not.i954, label %bb.ja, label %getTextArg.exit.thread

bb.ja:                                            ; preds = %bb.iz
  %i.ajp = load ptr, ptr %i.u, align 8, !tbaa !287
  %i.ajq = add nsw i32 %i.ajo, 1
  store i32 %i.ajq, ptr %i.t, align 4, !tbaa !286
  %i.ajr = sext i32 %i.ajo to i64
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.ajp, i64 %i.ajr
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !288 ; 5 uses
  %.not.i.i1032 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i1032, label %getTextArg.exit.thread, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 20
  %i.ajv = load i16, ptr %i.aju, align 4, !tbaa !162 ; 2 uses
  %i.ajw = and i16 %i.ajv, 514
  %i.ajx = icmp eq i16 %i.ajw, 514
  br i1 %i.ajx, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %bb.jb
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 22
  %i.ajz = load i8, ptr %i.ajy, align 2, !tbaa !349
  %i.aka = icmp eq i8 %i.ajz, 1
  br i1 %i.aka, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !289
  br label %getTextArg.exit

bb.je:                                            ; preds = %bb.jc, %bb.jb
  %i.akd = and i16 %i.ajv, 1
  %.not9.i.i = icmp eq i16 %i.akd, 0
  br i1 %.not9.i.i, label %bb.jf, label %getTextArg.exit.thread

bb.jf:                                            ; preds = %bb.je
  %i.ake = call fastcc ptr @valueToText(ptr noundef nonnull %i.ajt, i8 noundef zeroext 1), !inline_history !350
  br label %getTextArg.exit

getTextArg.exit:                                  ; preds = %bb.jf, %bb.jd
  %.0.i955 = phi ptr [ %i.ake, %bb.jf ], [ %i.akc, %bb.jd ] ; 5 uses
  %.not865 = icmp eq ptr %.0.i955, null
  br i1 %.not865, label %getTextArg.exit.thread, label %bb.jg

bb.jg:                                            ; preds = %getTextArg.exit
  %i.akf = load i8, ptr %.0.i955, align 1, !tbaa !227 ; 2 uses
  store i8 %i.akf, ptr %i.a, align 16, !tbaa !227
  %i.akg = icmp ugt i8 %i.akf, -65
  br i1 %i.akg, label %.preheader1230.preheader, label %.critedge24

.preheader1230.preheader:                         ; preds = %bb.jg
  %.25 = getelementptr inbounds nuw i8, ptr %.0.i955, i64 1
  %i.akh = load i8, ptr %.25, align 1, !tbaa !227 ; 2 uses
  %i.aki = icmp slt i8 %i.akh, -64
  br i1 %i.aki, label %.preheader1230.1, label %.critedge24

.preheader1230.1:                                 ; preds = %.preheader1230.preheader
  store i8 %i.akh, ptr %i.z, align 1, !tbaa !227
  %.25.1 = getelementptr inbounds nuw i8, ptr %.0.i955, i64 2
  %i.akj = load i8, ptr %.25.1, align 1, !tbaa !227 ; 2 uses
  %i.akk = icmp slt i8 %i.akj, -64
  br i1 %i.akk, label %.preheader1230.2, label %.critedge24

.preheader1230.2:                                 ; preds = %.preheader1230.1
  store i8 %i.akj, ptr %i.aa, align 2, !tbaa !227
  %.25.2 = getelementptr inbounds nuw i8, ptr %.0.i955, i64 3
  %i.akl = load i8, ptr %.25.2, align 1, !tbaa !227 ; 2 uses
  %i.akm = icmp slt i8 %i.akl, -64
  br i1 %i.akm, label %bb.jh, label %.critedge24

bb.jh:                                            ; preds = %.preheader1230.2
  store i8 %i.akl, ptr %i.ab, align 1, !tbaa !227
  br label %.critedge24

getTextArg.exit.thread:                           ; preds = %bb.je, %bb.ja, %bb.iz, %getTextArg.exit
  store i8 0, ptr %i.a, align 16, !tbaa !227
  br label %.critedge24

bb.ji:                                            ; preds = %bb.iy
  %i.akn = load i32, ptr %2, align 8              ; 3 uses
  %i.ako = icmp ult i32 %i.akn, 41
  br i1 %i.ako, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.akp = load ptr, ptr %i.w, align 8
  %i.akq = zext nneg i32 %i.akn to i64
  %i.akr = getelementptr i8, ptr %i.akp, i64 %i.akq
  %i.aks = add nuw nsw i32 %i.akn, 8
  store i32 %i.aks, ptr %2, align 8
  br label %bb.jl

bb.jk:                                            ; preds = %bb.ji
  %i.akt = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.aku = getelementptr i8, ptr %i.akt, i64 8
  store ptr %i.aku, ptr %i.v, align 8
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.akv = phi ptr [ %i.akr, %bb.jj ], [ %i.akt, %bb.jk ]
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !5 ; 13 uses
  %i.akx = icmp ult i32 %i.akw, 128
  br i1 %i.akx, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.aky = trunc nuw nsw i32 %i.akw to i8
  store i8 %i.aky, ptr %i.a, align 16, !tbaa !227
  br label %.critedge24

bb.jn:                                            ; preds = %bb.jl
  %i.akz = icmp ult i32 %i.akw, 2048
  br i1 %i.akz, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.ala = lshr i32 %i.akw, 6
  %i.alb = trunc nuw nsw i32 %i.ala to i8
  %i.alc = or disjoint i8 %i.alb, -64
  store i8 %i.alc, ptr %i.a, align 16, !tbaa !227
  %i.ald = trunc i32 %i.akw to i8
  %i.ale = and i8 %i.ald, 63
  %i.alf = or disjoint i8 %i.ale, -128
  store i8 %i.alf, ptr %i.z, align 1, !tbaa !227
  br label %.critedge24

bb.jp:                                            ; preds = %bb.jn
  %i.alg = icmp ult i32 %i.akw, 65536
  br i1 %i.alg, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.alh = lshr i32 %i.akw, 12
  %i.ali = trunc nuw nsw i32 %i.alh to i8
  %i.alj = or disjoint i8 %i.ali, -32
  store i8 %i.alj, ptr %i.a, align 16, !tbaa !227
  %i.alk = lshr i32 %i.akw, 6
  %i.all = trunc i32 %i.alk to i8
  %i.alm = and i8 %i.all, 63
  %i.aln = or disjoint i8 %i.alm, -128
  store i8 %i.aln, ptr %i.z, align 1, !tbaa !227
  %i.alo = trunc i32 %i.akw to i8
  %i.alp = and i8 %i.alo, 63
  %i.alq = or disjoint i8 %i.alp, -128
  store i8 %i.alq, ptr %i.aa, align 2, !tbaa !227
  br label %.critedge24

bb.jr:                                            ; preds = %bb.jp
  %i.alr = lshr i32 %i.akw, 6
  %i.als = lshr i32 %i.akw, 12
  %i.alt = lshr i32 %i.akw, 18
  %i.alu = trunc i32 %i.akw to i8
  %i.alv = trunc i32 %i.alr to i8
  %i.alw = trunc i32 %i.als to i8
  %i.alx = trunc i32 %i.alt to i8
  %i.aly = insertelement <4 x i8> poison, i8 %i.alx, i64 0
  %i.alz = insertelement <4 x i8> %i.aly, i8 %i.alw, i64 1
  %i.ama = insertelement <4 x i8> %i.alz, i8 %i.alv, i64 2
  %i.amb = insertelement <4 x i8> %i.ama, i8 %i.alu, i64 3
  %i.amc = and <4 x i8> %i.amb, <i8 7, i8 63, i8 63, i8 63>
  %i.amd = or disjoint <4 x i8> %i.amc, <i8 -16, i8 -128, i8 -128, i8 -128>
end_hunk_1
begin_hunk_2_@sqlite3Fts5StorageIntegrity:bb.a
  br i1 %.not.i.i3.i144.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %columnMem.exit.i142.i
  %i.ps = load i64, ptr %.012.i.i143.i, align 8, !tbaa !227
  br label %sqlite3_value_int.exit.i145.i

bb.dm:                                            ; preds = %columnMem.exit.i142.i
  %i.pt = and i32 %i.pq, 8
  %.not8.i.i.i152.i = icmp eq i32 %i.pt, 0
  br i1 %.not8.i.i.i152.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pu = load double, ptr %.012.i.i143.i, align 8, !tbaa !227 ; 3 uses
  %i.pv = fcmp olt double %i.pu, f0xC3DFFFFFFFFFFFFF
  br i1 %i.pv, label %sqlite3_value_int.exit.i145.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pw = fcmp ogt double %i.pu, f0x43DFFFFFFFFFFFFF
  br i1 %i.pw, label %sqlite3_value_int.exit.i145.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.px = fptosi double %i.pu to i64
  br label %sqlite3_value_int.exit.i145.i

bb.dq:                                            ; preds = %bb.dm
  %i.py = and i32 %i.pq, 18
  %.not9.i.i.i153.i = icmp eq i32 %i.py, 0
  br i1 %.not9.i.i.i153.i, label %sqlite3_value_int.exit.i145.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pz = getelementptr inbounds nuw i8, ptr %.012.i.i143.i, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !289
  %.not10.i.i.i154.i = icmp eq ptr %i.qa, null
  br i1 %.not10.i.i.i154.i, label %sqlite3_value_int.exit.i145.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qb = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.012.i.i143.i), !inline_history !7563
  br label %sqlite3_value_int.exit.i145.i

sqlite3_value_int.exit.i145.i:                    ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl
  %.0.i.i.i146.i = phi i64 [ %i.ps, %bb.dl ], [ 0, %bb.dq ], [ %i.qb, %bb.ds ], [ 0, %bb.dr ], [ %i.px, %bb.dp ], [ -9223372036854775808, %bb.dn ], [ 9223372036854775807, %bb.do ] ; 2 uses
  br i1 %i.lo, label %columnMem.exit.i.i, label %bb.dt

bb.dt:                                            ; preds = %sqlite3_value_int.exit.i145.i
  %i.qc = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 3 uses
  %i.qd = load i32, ptr %i.lr, align 4, !tbaa !530 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 103
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !550
  %i.qg = icmp ne i8 %i.qf, 0
  %i.qh = icmp ne i32 %i.qd, 0
  %or.cond.i.i.i147.i = or i1 %i.qh, %i.qg
  br i1 %or.cond.i.i.i147.i, label %bb.du, label %sqlite3ApiExit.exit.i.i148.i

bb.du:                                            ; preds = %bb.dt
  %i.qi = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.qc, i32 noundef %i.qd), !inline_history !7563
  %.pre.i.i151.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  br label %sqlite3ApiExit.exit.i.i148.i

sqlite3ApiExit.exit.i.i148.i:                     ; preds = %bb.du, %bb.dt
  %i.qj = phi ptr [ %.pre.i.i151.i, %bb.du ], [ %i.qc, %bb.dt ]
  %.0.i.i5.i149.i = phi i32 [ %i.qi, %bb.du ], [ 0, %bb.dt ]
  store i32 %.0.i.i5.i149.i, ptr %i.lr, align 4, !tbaa !530
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !23 ; 2 uses
  %.not.i.i6.i150.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i6.i150.i, label %sqlite3_mutex_enter.exit.i.i134.i, label %bb.dv

bb.dv:                                            ; preds = %sqlite3ApiExit.exit.i.i148.i
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.qm(ptr noundef nonnull %i.ql) #59, !inline_history !7577
  %.pre311.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  %.phi.trans.insert312.i = getelementptr inbounds nuw i8, ptr %.pre311.i, i64 24
  %.pre313.i = load ptr, ptr %.phi.trans.insert312.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i133.i = icmp eq ptr %.pre313.i, null
  br i1 %.not.i.i.i133.i, label %sqlite3_mutex_enter.exit.i.i134.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.qn(ptr noundef nonnull %.pre313.i) #59, !inline_history !7576
  br label %sqlite3_mutex_enter.exit.i.i134.i

sqlite3_mutex_enter.exit.i.i134.i:                ; preds = %bb.dw, %bb.dv, %sqlite3ApiExit.exit.i.i148.i
  %i.qo = load ptr, ptr %i.lp, align 8, !tbaa !588 ; 2 uses
  %.not.i.i135.i = icmp eq ptr %i.qo, null
  br i1 %.not.i.i135.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %sqlite3_mutex_enter.exit.i.i134.i
  %i.qp = load i16, ptr %i.lq, align 8, !tbaa !611
  %or.cond.i.i136.i = icmp ugt i16 %i.qp, 3
  br i1 %or.cond.i.i136.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 168
  br label %columnMem.exit.i.i

bb.dz:                                            ; preds = %bb.dx, %sqlite3_mutex_enter.exit.i.i134.i
  %i.qr = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  store i32 25, ptr %i.qs, align 8, !tbaa !589
  call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.qr, i32 noundef 25), !inline_history !7563
  br label %columnMem.exit.i.i

columnMem.exit.i.i:                               ; preds = %bb.dz, %bb.dy, %sqlite3_value_int.exit.i145.i
  %.012.i.i.i = phi ptr [ @columnNullValue.nullMem, %bb.dz ], [ %i.qq, %bb.dy ], [ @columnNullValue.nullMem, %sqlite3_value_int.exit.i145.i ] ; 5 uses
  %i.qt = trunc i64 %.0.i.i.i146.i to i32         ; 8 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  %i.qv = load i16, ptr %i.qu, align 4, !tbaa !162
  %i.qw = zext i16 %i.qv to i32                   ; 3 uses
  %i.qx = and i32 %i.qw, 36
  %.not.i.i3.i.i = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i3.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %columnMem.exit.i.i
  %i.qy = load i64, ptr %.012.i.i.i, align 8, !tbaa !227
  br label %sqlite3_value_int.exit.i.i

bb.eb:                                            ; preds = %columnMem.exit.i.i
  %i.qz = and i32 %i.qw, 8
  %.not8.i.i.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not8.i.i.i.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ra = load double, ptr %.012.i.i.i, align 8, !tbaa !227 ; 3 uses
  %i.rb = fcmp olt double %i.ra, f0xC3DFFFFFFFFFFFFF
  br i1 %i.rb, label %sqlite3_value_int.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rc = fcmp ogt double %i.ra, f0x43DFFFFFFFFFFFFF
  br i1 %i.rc, label %sqlite3_value_int.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rd = fptosi double %i.ra to i64
  br label %sqlite3_value_int.exit.i.i

bb.ef:                                            ; preds = %bb.eb
  %i.re = and i32 %i.qw, 18
  %.not9.i.i.i.i = icmp eq i32 %i.re, 0
  br i1 %.not9.i.i.i.i, label %sqlite3_value_int.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !289
  %.not10.i.i.i.i = icmp eq ptr %i.rg, null
  br i1 %.not10.i.i.i.i, label %sqlite3_value_int.exit.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rh = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.012.i.i.i), !inline_history !7563
  br label %sqlite3_value_int.exit.i.i

sqlite3_value_int.exit.i.i:                       ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.ea
  %.0.i.i.i137.i = phi i64 [ %i.qy, %bb.ea ], [ 0, %bb.ef ], [ %i.rh, %bb.eh ], [ 0, %bb.eg ], [ %i.rd, %bb.ee ], [ -9223372036854775808, %bb.ec ], [ 9223372036854775807, %bb.ed ]
  br i1 %i.lo, label %sqlite3_column_int.exit.i, label %bb.ei

bb.ei:                                            ; preds = %sqlite3_value_int.exit.i.i
  %i.ri = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 3 uses
  %i.rj = load i32, ptr %i.lr, align 4, !tbaa !530 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 103
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !550
  %i.rm = icmp ne i8 %i.rl, 0
  %i.rn = icmp ne i32 %i.rj, 0
  %or.cond.i.i.i.i = or i1 %i.rn, %i.rm
  br i1 %or.cond.i.i.i.i, label %bb.ej, label %sqlite3ApiExit.exit.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ro = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.ri, i32 noundef %i.rj), !inline_history !7563
  %.pre.i.i.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  br label %sqlite3ApiExit.exit.i.i.i

sqlite3ApiExit.exit.i.i.i:                        ; preds = %bb.ej, %bb.ei
  %i.rp = phi ptr [ %.pre.i.i.i, %bb.ej ], [ %i.ri, %bb.ei ]
  %.0.i.i5.i.i = phi i32 [ %i.ro, %bb.ej ], [ 0, %bb.ei ]
  store i32 %.0.i.i5.i.i, ptr %i.lr, align 4, !tbaa !530
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !23 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.rr, null
  br i1 %.not.i.i6.i.i, label %sqlite3_column_int.exit.i, label %bb.ek

bb.ek:                                            ; preds = %sqlite3ApiExit.exit.i.i.i
  %i.rs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.rs(ptr noundef nonnull %i.rr) #59, !inline_history !7577
  br label %sqlite3_column_int.exit.i

sqlite3_column_int.exit.i:                        ; preds = %bb.ek, %sqlite3ApiExit.exit.i.i.i, %sqlite3_value_int.exit.i.i
  %i.rt = load i32, ptr %i.kg, align 4, !tbaa !6705
  %i.ru = icmp sgt i32 %i.rt, %i.qt
  br i1 %i.ru, label %fts5DlidxIterFree.exitthread-pre-split.i, label %bb.el, !llvm.loop !7578

bb.el:                                            ; preds = %sqlite3_column_int.exit.i
  %i.rv = load i32, ptr %i.kb, align 8, !tbaa !6703
  %i.rw = zext i32 %i.rv to i64
  %i.rx = shl i64 %i.rw, 37
  %sext.i = shl i64 %.0.i.i.i146.i, 32
  %i.ry = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.rz = add nsw i64 %i.rx, %i.ry                ; 8 uses
  %i.sa = call fastcc ptr @fts5DataRead(ptr noundef nonnull %i.jf, i64 noundef range(i64 -2147483648, -135291469824) %i.rz), !inline_history !7579 ; 11 uses
  %.not.i126.i = icmp eq ptr %i.sa, null
  br i1 %.not.i126.i, label %.critedge.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 3 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !6924 ; 5 uses
  %i.sd = icmp slt i32 %i.sc, 4
  br i1 %i.sd, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 12 ; 3 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !6941 ; 6 uses
  %i.sg = icmp sgt i32 %i.sf, %i.sc
  br i1 %i.sg, label %bb.eo, label %fts5LeafRead.exit.i

bb.eo:                                            ; preds = %bb.en, %bb.em
  store i32 267, ptr %i.jr, align 4, !tbaa !6364
  %i.sh = load ptr, ptr %i.jf, align 8, !tbaa !6433 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !6339
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.sh, ptr noundef nonnull @.str.1708, i64 noundef range(i64 -2147483648, -135291469824) %i.rz, ptr noundef %i.sj), !inline_history !7580
  %i.sk = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i.i129.i = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i.i129.i, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sl = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i130.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i130.i, label %sqlite3_mutex_enter.exit.i.i.i131.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.sm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.sm(ptr noundef nonnull %i.sl) #59, !inline_history !7581
  br label %sqlite3_mutex_enter.exit.i.i.i131.i

sqlite3_mutex_enter.exit.i.i.i131.i:              ; preds = %bb.eq, %bb.ep
  %i.sn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.so = call i32 %i.sn(ptr noundef nonnull %i.sa) #59, !inline_history !7582
  %i.sp = sext i32 %i.so to i64
  %i.sq = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.sr = sub nsw i64 %i.sq, %i.sp
  store i64 %i.sr, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ss = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.st = add nsw i64 %i.ss, -1
  store i64 %i.st, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.su = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.su(ptr noundef nonnull %i.sa) #59, !inline_history !7583
  %i.sv = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i132.i = icmp eq ptr %i.sv, null
  br i1 %.not.i4.i.i.i132.i, label %.critedge.i.i, label %bb.er

bb.er:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i131.i
  %i.sw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.sw(ptr noundef nonnull %i.sv) #59, !inline_history !7584
  br label %.critedge.i.i

bb.es:                                            ; preds = %bb.eo
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.sx(ptr noundef nonnull %i.sa) #59, !inline_history !7583
  br label %.critedge.i.i

fts5LeafRead.exit.i:                              ; preds = %bb.en
  %.not.i.i144 = icmp sgt i32 %i.sc, %i.sf
  br i1 %.not.i.i144, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %fts5LeafRead.exit.i
  %i.sy = icmp eq i32 %.0.i.i.i164.i, 0
  br i1 %i.sy, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.sz = load i32, ptr %i.kd, align 4, !tbaa !6638
  %4 = icmp eq i32 %i.sz, 5
  %i.ta = icmp eq i32 %i.sc, 4
  %i.tb = icmp eq i32 %i.sf, 4
  %5 = and i1 %i.ta, %i.tb
  %or.cond143.i.i = and i1 %5, %4
  br i1 %or.cond143.i.i, label %fts5IntegrityCheckPgidx.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store i32 267, ptr %i.jr, align 4, !tbaa !6364
  %i.tc = load ptr, ptr %i.jf, align 8, !tbaa !6433 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !6339
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.tc, ptr noundef nonnull @.str.1708, i64 noundef %i.rz, ptr noundef %i.te), !inline_history !7585
  br label %fts5IntegrityCheckPgidx.exit.i.i

bb.ew:                                            ; preds = %fts5LeafRead.exit.i
  %.val155.i.i = load ptr, ptr %i.sa, align 8, !tbaa !6922 ; 5 uses
  %i.tf = sext i32 %i.sf to i64
  %i.tg = getelementptr inbounds i8, ptr %.val155.i.i, i64 %i.tf ; 4 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !227 ; 2 uses
  %i.ti = zext i8 %i.th to i32                    ; 3 uses
  %.not.i.i157.i.i = icmp sgt i8 %i.th, -1
  br i1 %.not.i.i157.i.i, label %fts5LeafFirstTermOff.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !227 ; 2 uses
  %i.tl = zext i8 %i.tk to i32                    ; 2 uses
  %.not27.i.i.i.i = icmp sgt i8 %i.tk, -1
  br i1 %.not27.i.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.tm = shl nuw nsw i32 %i.ti, 7
  %i.tn = and i32 %i.tm, 16256
  %i.to = or disjoint i32 %i.tn, %i.tl
  br label %fts5LeafFirstTermOff.exit.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !227 ; 2 uses
  %.not28.i.i.i.i = icmp sgt i8 %i.tq, -1
  br i1 %.not28.i.i.i.i, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tr = zext nneg i8 %i.tq to i32
  %i.ts = shl nuw nsw i32 %i.ti, 14
  %.masked.i.i.i.i = and i32 %i.ts, 2080768
  %i.tt = shl nuw nsw i32 %i.tl, 7
  %i.tu = and i32 %i.tt, 16256
  %i.tv = or disjoint i32 %i.tu, %.masked.i.i.i.i
  %i.tw = or disjoint i32 %i.tv, %i.tr
  br label %fts5LeafFirstTermOff.exit.i.i

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %i.tx = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.tg, ptr noundef nonnull %i.g), !inline_history !7564 ; 0 uses
  %i.ty = load i64, ptr %i.g, align 8, !tbaa !18
  %i.tz = trunc i64 %i.ty to i32
  %i.ua = and i32 %i.tz, 2147483647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %fts5LeafFirstTermOff.exit.i.i

fts5LeafFirstTermOff.exit.i.i:                    ; preds = %bb.fb, %bb.fa, %bb.ey, %bb.ew
  %.0.i.i.i147 = phi i32 [ %i.ua, %bb.fb ], [ %i.to, %bb.ey ], [ %i.tw, %bb.fa ], [ %i.ti, %bb.ew ] ; 4 uses
  %.val153.i.i = load i8, ptr %.val155.i.i, align 1, !tbaa !227
  %i.ub = getelementptr i8, ptr %.val155.i.i, i64 1
  %.val154.i.i = load i8, ptr %i.ub, align 1, !tbaa !227
  %i.uc = zext i8 %.val153.i.i to i32
  %i.ud = shl nuw nsw i32 %i.uc, 8
  %i.ue = zext i8 %.val154.i.i to i32
  %i.uf = or disjoint i32 %i.ud, %i.ue
  %.not132.i.i = icmp samesign ugt i32 %.0.i.i.i147, %i.uf
  %.not133.i.i = icmp slt i32 %.0.i.i.i147, %i.sf
  %or.cond194.i.i = and i1 %.not133.i.i, %.not132.i.i
  br i1 %or.cond194.i.i, label %bb.fc, label %.sink.split.i.i

bb.fc:                                            ; preds = %fts5LeafFirstTermOff.exit.i.i
  %i.ug = zext nneg i32 %.0.i.i.i147 to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 %i.ug ; 4 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !227 ; 2 uses
  %i.uj = zext i8 %i.ui to i32                    ; 3 uses
  %.not.i158.i.i = icmp sgt i8 %i.ui, -1
  br i1 %.not.i158.i.i, label %sqlite3Fts5GetVarint32.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !227 ; 2 uses
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %.not27.i.i.i = icmp sgt i8 %i.ul, -1
  br i1 %.not27.i.i.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.un = shl nuw nsw i32 %i.uj, 7
  %i.uo = and i32 %i.un, 16256
  %i.up = or disjoint i32 %i.uo, %i.um
  br label %sqlite3Fts5GetVarint32.exit.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !227 ; 2 uses
  %.not28.i.i.i = icmp sgt i8 %i.ur, -1
  br i1 %.not28.i.i.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.us = zext nneg i8 %i.ur to i32
  %i.ut = shl nuw nsw i32 %i.uj, 14
  %.masked.i.i.i = and i32 %i.ut, 2080768
  %i.uu = shl nuw nsw i32 %i.um, 7
  %i.uv = and i32 %i.uu, 16256
  %i.uw = or disjoint i32 %i.uv, %.masked.i.i.i
  %i.ux = or disjoint i32 %i.uw, %i.us
  br label %sqlite3Fts5GetVarint32.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.uy = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.uh, ptr noundef nonnull %i.f), !inline_history !7564
  %i.uz = load i64, ptr %i.f, align 8, !tbaa !18
  %i.va = trunc i64 %i.uz to i32
  %i.vb = and i32 %i.va, 2147483647
  %i.vc = zext nneg i8 %i.uy to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %sqlite3Fts5GetVarint32.exit.i.i

sqlite3Fts5GetVarint32.exit.i.i:                  ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fc
  %.0188.i.i = phi i32 [ %i.vb, %bb.fh ], [ %i.up, %bb.fe ], [ %i.ux, %bb.fg ], [ %i.uj, %bb.fc ] ; 3 uses
  %.0.i159.i.i = phi i32 [ %i.vc, %bb.fh ], [ 2, %bb.fe ], [ 3, %bb.fg ], [ 1, %bb.fc ]
  %i.vd = call i32 @llvm.smin.i32(i32 %.0188.i.i, i32 %.0.i.i.i164.i) ; 2 uses
  %i.ve = icmp slt i32 %i.vd, 1
  br i1 %i.ve, label %.thread.i.i149, label %bb.fi

.thread.i.i149:                                   ; preds = %sqlite3Fts5GetVarint32.exit.i.i
  %i.vf = sub nsw i32 %.0188.i.i, %.0.i.i.i164.i
  br label %bb.fj

bb.fi:                                            ; preds = %sqlite3Fts5GetVarint32.exit.i.i
  %i.vg = add nuw nsw i32 %.0.i159.i.i, %.0.i.i.i147
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 %i.vh
  %i.vj = zext nneg i32 %i.vd to i64
  %i.vk = call i32 @memcmp(ptr noundef nonnull %i.vi, ptr noundef %i.of, i64 noundef %i.vj) #60, !inline_history !7564
  %.fr.i.i = freeze i32 %i.vk                     ; 2 uses
  %i.vl = icmp eq i32 %.fr.i.i, 0
  %i.vm = sub nsw i32 %.0188.i.i, %.0.i.i.i164.i
  %spec.select.i.i = select i1 %i.vl, i32 %i.vm, i32 %.fr.i.i
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.thread.i.i149
  %i.vn = phi i32 [ %spec.select.i.i, %bb.fi ], [ %i.vf, %.thread.i.i149 ]
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %.sink.split.i.i, label %bb.fk

.sink.split.i.i:                                  ; preds = %bb.fj, %fts5LeafFirstTermOff.exit.i.i
  store i32 267, ptr %i.jr, align 4, !tbaa !6364
  %i.vp = load ptr, ptr %i.jf, align 8, !tbaa !6433 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !6339
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.vp, ptr noundef nonnull @.str.1708, i64 noundef %i.rz, ptr noundef %i.vr), !inline_history !7564
  %.pre314.i = load i32, ptr %i.se, align 4, !tbaa !6941
  %.pre315.i = load i32, ptr %i.sb, align 8, !tbaa !6924
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split.i.i, %bb.fj
  %i.vs = phi i32 [ %.pre315.i, %.sink.split.i.i ], [ %i.sc, %bb.fj ]
  %i.vt = phi i32 [ %.pre314.i, %.sink.split.i.i ], [ %i.sf, %bb.fj ] ; 2 uses
  %i.vu = icmp slt i32 %i.vt, %i.vs
  br i1 %i.vu, label %.lr.ph.i.i.i, label %fts5IntegrityCheckPgidx.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fk, %sqlite3Fts5BufferSet.exit81.i.i.i
  %.0153.i.i.i = phi i64 [ %i.yu, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 2 uses
  %.041152.i.i.i = phi i32 [ %i.ys, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ %i.vt, %bb.fk ] ; 2 uses
  %.sroa.14.0150.i.i.i = phi i32 [ %.sroa.14.2.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 8 uses
  %.sroa.9.0149.i.i.i = phi i32 [ %.sroa.9.1.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 2 uses
  %.sroa.0.0147.i.i.i = phi ptr [ %.sroa.0.2.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ null, %bb.fk ] ; 8 uses
  %.sroa.25.0146.i.i.i = phi i32 [ %.sroa.25.3133.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 15 uses
  %.sroa.13.0145.i.i.i = phi i32 [ %.sroa.13.3132.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 4 uses
  %.sroa.098.0144.i.i.i = phi ptr [ %.sroa.098.3131.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ null, %bb.fk ] ; 12 uses
  %i.vv = load i32, ptr %i.jr, align 4, !tbaa !6364
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.fl, label %.critedge.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i.i
  %i.vx = load ptr, ptr %i.sa, align 8, !tbaa !6922 ; 5 uses
  %i.vy = sext i32 %.041152.i.i.i to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vx, i64 %i.vy ; 9 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !227 ; 2 uses
  %i.wb = zext i8 %i.wa to i32                    ; 4 uses
  %.not.i.i160.i.i = icmp sgt i8 %i.wa, -1
  br i1 %.not.i.i160.i.i, label %sqlite3Fts5GetVarint32.exit.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !227 ; 2 uses
  %i.we = zext i8 %i.wd to i32                    ; 3 uses
  %.not27.i.i161.i.i = icmp sgt i8 %i.wd, -1
  br i1 %.not27.i.i161.i.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.wf = shl nuw nsw i32 %i.wb, 7
  %i.wg = and i32 %i.wf, 16256
  %i.wh = or disjoint i32 %i.wg, %i.we
  br label %sqlite3Fts5GetVarint32.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !227 ; 3 uses
end_hunk_2
