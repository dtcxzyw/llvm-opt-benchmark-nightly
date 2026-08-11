inline.NumInlined: 139
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v20260605L14deconvBlock32fEPKvS8_PvRKNS6_9ConvStateES8_PKfSE_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph55.i.split.us.i.i
  %i.de = mul i64 %i.ap, %indvars.iv109.i.us.i.i
  %.reass129 = add i64 %i.de, %invariant.op128
  %diff.check = icmp ult i64 %.reass129, 31
  %or.cond = select i1 %min.iters.check41, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.us.i.i.preheader84, label %vector.body44

vector.body44:                                    ; preds = %.lr.ph.i.us.i.i.preheader, %vector.body44
  %index45 = phi i64 [ %index.next48, %vector.body44 ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 3 uses
  %i.df = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index45 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %wide.load46 = load <4 x float>, ptr %i.df, align 4, !tbaa !89
  %wide.load47 = load <4 x float>, ptr %i.dg, align 4, !tbaa !89
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index45 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x float> %wide.load46, ptr %i.dh, align 4, !tbaa !89
  store <4 x float> %wide.load47, ptr %i.di, align 4, !tbaa !89
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.dj, label %middle.block49, label %vector.body44, !llvm.loop !91

middle.block49:                                   ; preds = %vector.body44
  br i1 %cmp.n50, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i.preheader84

.lr.ph.i.us.i.i.preheader84:                      ; preds = %.lr.ph.i.us.i.i.preheader, %middle.block49
  %indvars.iv.i.us.i.i.ph = phi i64 [ 0, %.lr.ph.i.us.i.i.preheader ], [ %n.vec43, %middle.block49 ] ; 3 uses
  br i1 %lcmp.mod107.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol

.lr.ph.i.us.i.i.prol:                             ; preds = %.lr.ph.i.us.i.i.preheader84, %.lr.ph.i.us.i.i.prol
  %indvars.iv.i.us.i.i.prol = phi i64 [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ], [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader84 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.us.i.i.prol ], [ 0, %.lr.ph.i.us.i.i.preheader84 ]
  %gep.i.us.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i.prol
  %i.dk = load float, ptr %gep.i.us.i.i.prol, align 4, !tbaa !89
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.us.i.i.prol
  store float %i.dk, ptr %i.dl, align 4, !tbaa !89
  %indvars.iv.next.i.us.i.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.i.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol, !llvm.loop !92

.lr.ph.i.us.i.i.prol.loopexit:                    ; preds = %.lr.ph.i.us.i.i.prol, %.lr.ph.i.us.i.i.preheader84
  %indvars.iv.i.us.i.i.unr = phi i64 [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader84 ], [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ]
  %i.dm = sub nsw i64 %indvars.iv.i.us.i.i.ph, %i.ci
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.3, %.lr.ph.i.us.i.i ], [ %indvars.iv.i.us.i.i.unr, %.lr.ph.i.us.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i
  %i.do = load float, ptr %gep.i.us.i.i, align 4, !tbaa !89
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.us.i.i
  store float %i.do, ptr %i.dp, align 4, !tbaa !89
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %gep.i.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i
  %i.dq = load float, ptr %gep.i.us.i.i.1, align 4, !tbaa !89
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.us.i.i
  store float %i.dq, ptr %i.dr, align 4, !tbaa !89
  %indvars.iv.next.i.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.i, 2 ; 2 uses
  %gep.i.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.1
  %i.ds = load float, ptr %gep.i.us.i.i.2, align 4, !tbaa !89
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.us.i.i.1
  store float %i.ds, ptr %i.dt, align 4, !tbaa !89
  %indvars.iv.next.i.us.i.i.2 = add nuw nsw i64 %indvars.iv.i.us.i.i, 3 ; 2 uses
  %gep.i.us.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.2
  %i.du = load float, ptr %gep.i.us.i.i.3, align 4, !tbaa !89
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.us.i.i.2
  store float %i.du, ptr %i.dv, align 4, !tbaa !89
  %indvars.iv.next.i.us.i.i.3 = add nuw nsw i64 %indvars.iv.i.us.i.i, 4 ; 2 uses
  %exitcond.not.i.us.i.i.3 = icmp eq i64 %indvars.iv.next.i.us.i.i.3, %i.ci
  br i1 %exitcond.not.i.us.i.i.3, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !94

.lr.ph23.preheader.i.us.i.i:                      ; preds = %.lr.ph55.i.split.us.i.i
  %scevgep68.i.us.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.db
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep68.i.us.i.i, i8 0, i64 %i.cj, i1 false), !tbaa !89
  br label %.loopexit.i.us.i.i

.loopexit.i.us.i.i:                               ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i, %middle.block49, %.lr.ph23.preheader.i.us.i.i
  br i1 %i.bz, label %.lr.ph25.preheader.i.us.i.i, label %._crit_edge.i.us.i.i

.lr.ph25.preheader.i.us.i.i:                      ; preds = %.loopexit.i.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us.i.i, i8 0, i64 %i.co, i1 false), !tbaa !89
  br label %._crit_edge.i.us.i.i

._crit_edge.i.us.i.i:                             ; preds = %.lr.ph25.preheader.i.us.i.i, %.loopexit.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %i.cb, label %.lr.ph29.i.us.i.i, label %.preheader.i.us.i.i.preheader

.lr.ph29.i.us.i.i:                                ; preds = %._crit_edge.i.us.i.i
  %i.dw = load ptr, ptr %i.ab, align 8, !tbaa !95, !nonnull !84, !align !85 ; 3 uses
  br i1 %lcmp.mod112.not, label %.prol.loopexit110, label %.prol.loopexit110.unr-lcssa

.prol.loopexit110.unr-lcssa:                      ; preds = %.lr.ph29.i.us.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !35 ; 2 uses
  %i.dz = srem i32 %i.cy, %i.dy
  store i32 %i.dz, ptr %i.av, align 4, !tbaa !35
  %i.ea = sdiv i32 %i.cy, %i.dy
  br label %.prol.loopexit110

.prol.loopexit110:                                ; preds = %.prol.loopexit110.unr-lcssa, %.lr.ph29.i.us.i.i
  %indvars.iv77.i.us.i.i.unr = phi i64 [ %i.cp, %.lr.ph29.i.us.i.i ], [ %indvars.iv.next78.i.us.i.i.prol, %.prol.loopexit110.unr-lcssa ]
  %.011227.i.us.i.i.unr = phi i32 [ %i.cy, %.lr.ph29.i.us.i.i ], [ %i.ea, %.prol.loopexit110.unr-lcssa ]
  br i1 %i.cx, label %.preheader.i.us.i.i.preheader, label %.lr.ph29.i.us.i.i.new

.lr.ph29.i.us.i.i.new:                            ; preds = %.prol.loopexit110, %.lr.ph29.i.us.i.i.new
  %indvars.iv77.i.us.i.i = phi i64 [ %indvars.iv.next78.i.us.i.i.1, %.lr.ph29.i.us.i.i.new ], [ %indvars.iv77.i.us.i.i.unr, %.prol.loopexit110 ] ; 4 uses
  %.011227.i.us.i.i = phi i32 [ %i.ek, %.lr.ph29.i.us.i.i.new ], [ %.011227.i.us.i.i.unr, %.prol.loopexit110 ] ; 2 uses
  %.reass.i.reass.us.i.i = add i64 %indvars.iv77.i.us.i.i, %invariant.op.i.i ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.reass.i.reass.us.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !35 ; 2 uses
  %i.ed = srem i32 %.011227.i.us.i.i, %i.ec
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !35
  %i.ef = sdiv i32 %.011227.i.us.i.i, %i.ec       ; 2 uses
  %indvars.iv.next78.i.us.i.i.1 = add nsw i64 %indvars.iv77.i.us.i.i, -2
  %.reass.i.reass.us.i.i.1.reass = add i64 %indvars.iv77.i.us.i.i, %invariant.op126 ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.reass.i.reass.us.i.i.1.reass
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !35 ; 2 uses
  %i.ei = srem i32 %i.ef, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i.1.reass
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !35
  %i.ek = sdiv i32 %i.ef, %i.eh
  %i.el = icmp sgt i64 %indvars.iv77.i.us.i.i, 2
  br i1 %i.el, label %.lr.ph29.i.us.i.i.new, label %.preheader.i.us.i.i.preheader, !llvm.loop !96

.preheader.i.us.i.i.preheader:                    ; preds = %.prol.loopexit110, %.lr.ph29.i.us.i.i.new, %._crit_edge.i.us.i.i
  br label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.preheader.i.us.i.i.preheader, %.thread5.i.us.i.i
  %indvars.iv104.i.us.i.i = phi i64 [ %indvars.iv.next105.i.us.i.i, %.thread5.i.us.i.i ], [ 0, %.preheader.i.us.i.i.preheader ] ; 3 uses
  br i1 %i.cb, label %.lr.ph33.i.us.i.i, label %.lr.ph49.i.us.i.i

.lr.ph33.i.us.i.i:                                ; preds = %.preheader.i.us.i.i
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !97, !nonnull !84, !align !88 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.af, align 8, !tbaa !98, !nonnull !84, !align !88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.ep, i64 %indvars.iv104.i.us.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph33.i.us.i.i
  %indvars.iv81.i.us.i.i = phi i64 [ 0, %.lr.ph33.i.us.i.i ], [ %indvars.iv.next82.i.us.i.i, %bb.g ] ; 2 uses
  %.011932.i.us.i.i = phi i32 [ 0, %.lr.ph33.i.us.i.i ], [ %i.fp, %bb.g ]
  %i.et = trunc i64 %indvars.iv81.i.us.i.i to i32
  %.reass126.i.us.reass.i.reass.i.reass.reass = add i32 %i.et, %invariant.op127
  %i.eu = sext i32 %.reass126.i.us.reass.i.reass.i.reass.reass to i64 ; 6 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !35
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eu
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !35
  %i.ez = add nsw i32 %i.ey, %i.ew
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.eu
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !35
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.eu
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !35
  %i.fe = mul nsw i32 %i.fd, %i.fb
  %i.ff = sub i32 %i.ez, %i.fe                    ; 3 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %.thread5.i.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.eu
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !35 ; 2 uses
  %i.fj = srem i32 %i.ff, %i.fi
  %i.fk = sdiv i32 %i.ff, %i.fi                   ; 2 uses
  %.not131.i.us.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not131.i.us.i.i, label %bb.f, label %.thread5.i.us.i.i

bb.f:                                             ; preds = %bb.e
  %i.fl = load ptr, ptr %i.ag, align 8, !tbaa !99, !nonnull !84, !align !85
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.eu
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !35 ; 2 uses
  %.not132.i.us.i.i = icmp slt i32 %i.fk, %i.fn
  br i1 %.not132.i.us.i.i, label %bb.g, label %.thread5.i.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.fo = mul nsw i32 %i.fn, %.011932.i.us.i.i
  %i.fp = add nsw i32 %i.fo, %i.fk                ; 2 uses
  %indvars.iv.next82.i.us.i.i = add nuw nsw i64 %indvars.iv81.i.us.i.i, 1 ; 2 uses
  %exitcond86.not.i.us.i.i = icmp eq i64 %indvars.iv.next82.i.us.i.i, %wide.trip.count85.i.i.i
  br i1 %exitcond86.not.i.us.i.i, label %.critedge.preheader.loopexit.loopexit.i.us.i.i, label %bb.d, !llvm.loop !100

.critedge.preheader.loopexit.loopexit.i.us.i.i:   ; preds = %bb.g
  %i.fq = sext i32 %i.fp to i64
  br label %.lr.ph49.i.us.i.i

.lr.ph49.i.us.i.i:                                ; preds = %.critedge.preheader.loopexit.loopexit.i.us.i.i, %.preheader.i.us.i.i
  %.0119.lcssa.i.us.i.i = phi i64 [ 0, %.preheader.i.us.i.i ], [ %i.fq, %.critedge.preheader.loopexit.loopexit.i.us.i.i ]
  %i.fr = load ptr, ptr %i.ah, align 8, !tbaa !101, !nonnull !84, !align !85
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !35 ; 3 uses
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !102, !nonnull !84, !align !85
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !35 ; 3 uses
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = load ptr, ptr %i.aj, align 8, !tbaa !103, !nonnull !84, !align !88
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !54
  %i.fy = load ptr, ptr %i.ak, align 8, !tbaa !104, !nonnull !84, !align !85
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !35
  %i.ga = load ptr, ptr %i.al, align 8, !tbaa !105, !nonnull !84, !align !85
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !35 ; 2 uses
  %2 = zext nneg i32 %i.gb to i64                 ; 2 uses
  %i.gc = sext i32 %i.fu to i64                   ; 6 uses
  %i.gd = mul nsw i64 %i.gc, %i.q                 ; 2 uses
  %i.ge = mul i64 %i.gd, %2
  %i.gf = load ptr, ptr %i.am, align 8, !tbaa !106, !nonnull !84, !align !85
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !35
  %i.gh = icmp sgt i32 %i.gb, 0
  br i1 %i.gh, label %.lr.ph43.split.us.preheader.i.us.us.i.i, label %.thread8.i.us.i.i.preheader

.thread8.i.us.i.i.preheader:                      ; preds = %.lr.ph49.i.us.i.i
  br i1 %min.iters.check, label %.thread8.i.us.i.i.preheader81, label %vector.body

vector.body:                                      ; preds = %.thread8.i.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.thread8.i.us.i.i.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gi, align 4, !tbaa !89
  %wide.load39 = load <4 x float>, ptr %i.gj, align 4, !tbaa !89
  %i.gk = fadd <4 x float> %wide.load, zeroinitializer
  %i.gl = fadd <4 x float> %wide.load39, zeroinitializer
  store <4 x float> %i.gk, ptr %i.gi, align 4, !tbaa !89
  store <4 x float> %i.gl, ptr %i.gj, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i.preheader81

.thread8.i.us.i.i.preheader81:                    ; preds = %.thread8.i.us.i.i.preheader, %middle.block
  %indvars.iv99.i.us4.i.i.ph = phi i64 [ 0, %.thread8.i.us.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.thread8.i.us.i.i

.thread8.i.us.i.i:                                ; preds = %.thread8.i.us.i.i.preheader81, %.thread8.i.us.i.i
  %indvars.iv99.i.us4.i.i = phi i64 [ %indvars.iv.next100.i.us5.i.i, %.thread8.i.us.i.i ], [ %indvars.iv99.i.us4.i.i.ph, %.thread8.i.us.i.i.preheader81 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv99.i.us4.i.i ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !89
  %i.gp = fadd float %i.go, 0.000000e+00
  store float %i.gp, ptr %i.gn, align 4, !tbaa !89
  %indvars.iv.next100.i.us5.i.i = add nuw nsw i64 %indvars.iv99.i.us4.i.i, 1 ; 2 uses
  %exitcond103.not.i.us6.i.i = icmp eq i64 %indvars.iv.next100.i.us5.i.i, %i.ci
  br i1 %exitcond103.not.i.us6.i.i, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i, !llvm.loop !108

.thread5.i.us.i.i:                                ; preds = %bb.f, %bb.e, %bb.d, %.thread8.i.us.i.i, %.thread8.i.loopexit.us.us.i.i, %middle.block
  %indvars.iv.next105.i.us.i.i = add nuw nsw i64 %indvars.iv104.i.us.i.i, 1 ; 2 uses
  %exitcond108.not.i.us.i.i = icmp eq i64 %indvars.iv.next105.i.us.i.i, %wide.trip.count107.i.i.i
  br i1 %exitcond108.not.i.us.i.i, label %._crit_edge52.i.loopexit.us.i.i, label %.preheader.i.us.i.i, !llvm.loop !109

._crit_edge52.i.loopexit.us.i.i:                  ; preds = %.thread5.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next110.i.us.i.i = add nuw nsw i64 %indvars.iv109.i.us.i.i, 1 ; 2 uses
  %exitcond113.not.i.us.i.i = icmp eq i64 %indvars.iv.next110.i.us.i.i, %wide.trip.count112.i.i.i
  br i1 %exitcond113.not.i.us.i.i, label %.loopexit17.i.i.i, label %.lr.ph55.i.split.us.i.i, !llvm.loop !110

.lr.ph43.split.us.preheader.i.us.us.i.i:          ; preds = %.lr.ph49.i.us.i.i, %.thread8.i.loopexit.us.us.i.i
  %indvars.iv99.i.us.us.i.i = phi i64 [ %indvars.iv.next100.i.us.us.i.i, %.thread8.i.loopexit.us.us.i.i ], [ 0, %.lr.ph49.i.us.i.i ] ; 3 uses
  %i.gq = trunc i64 %indvars.iv99.i.us.us.i.i to i32
  %i.gr = add i32 %i.az, %i.gq                    ; 2 uses
  %i.gs = sdiv i32 %i.gr, %i.fs                   ; 3 uses
  %i.gt = mul nsw i32 %i.gs, %i.fz
  %i.gu = mul nsw i32 %i.gs, %i.fs                ; 0 uses
  %.recomposed = srem i32 %i.gr, %i.fs            ; 2 uses
  %i.gv = sdiv i32 %.recomposed, %i.fu
  %i.gw = add nsw i32 %i.gt, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul nsw i64 %i.gx, %i.ce
  %i.gz = add nsw i64 %i.gy, %indvars.iv104.i.us.i.i
  %i.ha = mul i64 %i.ge, %i.gz
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ha
  %i.hc = mul nsw i32 %i.gs, %i.gg
  %i.hd = sdiv i32 %i.hc, %i.h                    ; 3 uses
  %i.he = and i32 %.recomposed, %i.fv
  %i.hf = sext i32 %i.he to i64
  %i.hg = sext i32 %i.hd to i64
  %smax.i.us.us.i.i = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.hd)
  %i.hh = sub i32 %smax.i.us.us.i.i, %i.hd
  %wide.trip.count95.i.us.us.i.i = zext i32 %i.hh to i64
  %invariant.gep129.i.us.us.i.i = getelementptr [4 x i8], ptr %i.hb, i64 %i.hf
  br label %.lr.ph43.split.us.i.us.us.i.i

.lr.ph43.split.us.i.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.preheader.i.us.us.i.i
  %indvars.iv92.i.us.us.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %indvars.iv.next93.i.us.us.i.i, %._crit_edge38.us.i.us.us.i.i ] ; 4 uses
  %.010640.us.i.us.us.i.i = phi float [ 0.000000e+00, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %.lcssa90, %._crit_edge38.us.i.us.us.i.i ] ; 3 uses
  %exitcond96.not.i.us.us.i.i = icmp eq i64 %indvars.iv92.i.us.us.i.i, %wide.trip.count95.i.us.us.i.i
  br i1 %exitcond96.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph37.us.i.us.us.i.i

.lr.ph37.us.i.us.us.i.i:                          ; preds = %.lr.ph43.split.us.i.us.us.i.i
  %i.hi = add nsw i64 %indvars.iv92.i.us.us.i.i, %i.hg
  %i.hj = mul nsw i64 %i.hi, %i.br
  %i.hk = add nsw i64 %i.hj, %.0119.lcssa.i.us.i.i
  %i.hl = mul nsw i64 %i.hk, %i.q
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.hl ; 5 uses
  %i.hn = mul i64 %indvars.iv92.i.us.us.i.i, %i.gd
  %gep130.i.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep129.i.us.us.i.i, i64 %i.hn ; 5 uses
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph37.us.i.us.us.i.i.new

.lr.ph37.us.i.us.us.i.i.new:                      ; preds = %.lr.ph37.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i.new
  %indvars.iv87.i.us.us.i.i = phi i64 [ %indvars.iv.next88.i.us.us.i.i.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ] ; 6 uses
  %.110734.us.i.us.us.i.i = phi float [ %i.ih, %.lr.ph37.us.i.us.us.i.i.new ], [ %.010640.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ]
  %niter120 = phi i64 [ %niter120.next.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ]
  %i.ho = mul nsw i64 %indvars.iv87.i.us.us.i.i, %i.gc
  %gep128.i.us.us.i.i = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.ho
  %i.hp = load float, ptr %gep128.i.us.us.i.i, align 4, !tbaa !89
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv87.i.us.us.i.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !89
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %.110734.us.i.us.us.i.i)
  %indvars.iv.next88.i.us.us.i.i = or disjoint i64 %indvars.iv87.i.us.us.i.i, 1 ; 2 uses
  %i.ht = mul nsw i64 %indvars.iv.next88.i.us.us.i.i, %i.gc
  %gep128.i.us.us.i.i.1 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.ht
  %i.hu = load float, ptr %gep128.i.us.us.i.i.1, align 4, !tbaa !89
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next88.i.us.us.i.i
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !89
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hw, float %i.hs)
  %indvars.iv.next88.i.us.us.i.i.1 = or disjoint i64 %indvars.iv87.i.us.us.i.i, 2 ; 2 uses
  %i.hy = mul nsw i64 %indvars.iv.next88.i.us.us.i.i.1, %i.gc
  %gep128.i.us.us.i.i.2 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.hy
  %i.hz = load float, ptr %gep128.i.us.us.i.i.2, align 4, !tbaa !89
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next88.i.us.us.i.i.1
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !89
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ib, float %i.hx)
  %indvars.iv.next88.i.us.us.i.i.2 = or disjoint i64 %indvars.iv87.i.us.us.i.i, 3 ; 2 uses
  %i.id = mul nsw i64 %indvars.iv.next88.i.us.us.i.i.2, %i.gc
  %gep128.i.us.us.i.i.3 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.id
  %i.ie = load float, ptr %gep128.i.us.us.i.i.3, align 4, !tbaa !89
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next88.i.us.us.i.i.2
  %i.ig = load float, ptr %i.if, align 4, !tbaa !89
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ig, float %i.ic) ; 3 uses
  %indvars.iv.next88.i.us.us.i.i.3 = add nuw nsw i64 %indvars.iv87.i.us.us.i.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %._crit_edge38.us.i.us.us.i.i.unr-lcssa, label %.lr.ph37.us.i.us.us.i.i.new, !llvm.loop !111

._crit_edge38.us.i.us.us.i.i.unr-lcssa:           ; preds = %.lr.ph37.us.i.us.us.i.i.new
  br i1 %lcmp.mod116.not, label %._crit_edge38.us.i.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge38.us.i.us.us.i.i.unr-lcssa, %.lr.ph37.us.i.us.us.i.i
  %indvars.iv87.i.us.us.i.i.epil.init = phi i64 [ 0, %.lr.ph37.us.i.us.us.i.i ], [ %indvars.iv.next88.i.us.us.i.i.3, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  %.110734.us.i.us.us.i.i.epil.init = phi float [ %.010640.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ], [ %i.ih, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv87.i.us.us.i.i.epil = phi i64 [ %indvars.iv87.i.us.us.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next88.i.us.us.i.i.epil, %bb.h ] ; 3 uses
  %.110734.us.i.us.us.i.i.epil = phi float [ %.110734.us.i.us.us.i.i.epil.init, %.epil.preheader ], [ %i.im, %bb.h ]
  %epil.iter115 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter115.next, %bb.h ]
  %i.ii = mul nsw i64 %indvars.iv87.i.us.us.i.i.epil, %i.gc
  %gep128.i.us.us.i.i.epil = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.ii
  %i.ij = load float, ptr %gep128.i.us.us.i.i.epil, align 4, !tbaa !89
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv87.i.us.us.i.i.epil
  %i.il = load float, ptr %i.ik, align 4, !tbaa !89
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.il, float %.110734.us.i.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next88.i.us.us.i.i.epil = add nuw nsw i64 %indvars.iv87.i.us.us.i.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %._crit_edge38.us.i.us.us.i.i, label %bb.h, !llvm.loop !112

._crit_edge38.us.i.us.us.i.i:                     ; preds = %bb.h, %._crit_edge38.us.i.us.us.i.i.unr-lcssa
  %.lcssa90 = phi float [ %i.ih, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ], [ %i.im, %bb.h ] ; 2 uses
  %indvars.iv.next93.i.us.us.i.i = add nuw nsw i64 %indvars.iv92.i.us.us.i.i, 1 ; 2 uses
  %exitcond98.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next93.i.us.us.i.i, %2
  br i1 %exitcond98.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph43.split.us.i.us.us.i.i, !llvm.loop !113

.thread8.i.loopexit.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i
  %.0106.lcssa.i.ph.us.us.i.i = phi float [ %.lcssa90, %._crit_edge38.us.i.us.us.i.i ], [ %.010640.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv99.i.us.us.i.i ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !89
  %i.ip = fadd float %.0106.lcssa.i.ph.us.us.i.i, %i.io
  store float %i.ip, ptr %i.in, align 4, !tbaa !89
  %indvars.iv.next100.i.us.us.i.i = add nuw nsw i64 %indvars.iv99.i.us.us.i.i, 1 ; 2 uses
  %exitcond103.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next100.i.us.us.i.i, %i.ci
  br i1 %exitcond103.not.i.us.us.i.i, label %.thread5.i.us.i.i, label %.lr.ph43.split.us.preheader.i.us.us.i.i, !llvm.loop !114

.lr.ph55.i.split.i.i:                             ; preds = %.lr.ph55.i.i.i
  br i1 %i.cb, label %.lr.ph55.i.split.split.us.i.i, label %.lr.ph55.i.split.split.i.i

.lr.ph55.i.split.split.us.i.i:                    ; preds = %.lr.ph55.i.split.i.i
  %i.iq = load ptr, ptr %i.ab, align 8, !tbaa !95, !nonnull !84, !align !85 ; 3 uses
  %i.ir = mul i64 %i.aq, %i.bh
  %i.is = mul i64 %i.ir, %i.bj
  %i.it = add i64 %i.is, %i.bd
  %i.iu = shl nsw i64 %i.cf, 2
  %i.iv = add i64 %i.iu, %i.by
  %i.iw = sub i64 %i.it, %i.iv
  %min.iters.check55 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %invariant.op124 = add i64 %i.iw, -1
  %n.vec57 = and i64 %i.ci, 2147483640            ; 3 uses
  %cmp.n64 = icmp eq i64 %n.vec57, %i.ci
  %xtraiter100 = and i64 %i.ci, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  %i.ix = and i32 %i.ca, 1
  %lcmp.mod104.not = icmp eq i32 %i.ix, 0
  %indvars.iv.next78.i.us24.i.i.prol = add nsw i64 %i.cp, -1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iz = icmp eq i32 %i.ca, 1
  %invariant.op123 = sub i64 1, %i.cp
  br label %bb.i

bb.i:                                             ; preds = %.preheader13.i.loopexit.us29.i.i, %.lr.ph55.i.split.split.us.i.i
  %indvars.iv109.i.us9.i.i = phi i64 [ 0, %.lr.ph55.i.split.split.us.i.i ], [ %indvars.iv.next110.i.us27.i.i, %.preheader13.i.loopexit.us29.i.i ] ; 4 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv109.i.us9.i.i to i32 ; 4 uses
  %i.jb = mul i32 %i.h, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 2                    ; 2 uses
  %scevgep73.i.us10.i.i = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.jd
  %i.je = mul nsw i64 %indvars.iv109.i.us9.i.i, %i.q
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.je ; 6 uses
  br i1 %.not.i.i.i, label %.lr.ph23.preheader.i.us16.i.i, label %.lr.ph.i.us11.i.i.preheader

.lr.ph.i.us11.i.i.preheader:                      ; preds = %bb.i
  %i.jg = mul i64 %i.ar, %indvars.iv109.i.us9.i.i
  %.reass125 = add i64 %i.jg, %invariant.op124
  %diff.check53 = icmp ult i64 %.reass125, 31
  %or.cond80 = select i1 %min.iters.check55, i1 true, i1 %diff.check53
  br i1 %or.cond80, label %.lr.ph.i.us11.i.i.preheader85, label %vector.body58

vector.body58:                                    ; preds = %.lr.ph.i.us11.i.i.preheader, %vector.body58
  %index59 = phi i64 [ %index.next62, %vector.body58 ], [ 0, %.lr.ph.i.us11.i.i.preheader ] ; 3 uses
  %i.jh = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index59 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %wide.load60 = load <4 x float>, ptr %i.jh, align 4, !tbaa !89
  %wide.load61 = load <4 x float>, ptr %i.ji, align 4, !tbaa !89
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %index59 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <4 x float> %wide.load60, ptr %i.jj, align 4, !tbaa !89
  store <4 x float> %wide.load61, ptr %i.jk, align 4, !tbaa !89
  %index.next62 = add nuw i64 %index59, 8         ; 2 uses
  %i.jl = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.jl, label %middle.block63, label %vector.body58, !llvm.loop !115

middle.block63:                                   ; preds = %vector.body58
  br i1 %cmp.n64, label %.loopexit.i.us18.i.i, label %.lr.ph.i.us11.i.i.preheader85

.lr.ph.i.us11.i.i.preheader85:                    ; preds = %.lr.ph.i.us11.i.i.preheader, %middle.block63
  %indvars.iv.i.us12.i.i.ph = phi i64 [ 0, %.lr.ph.i.us11.i.i.preheader ], [ %n.vec57, %middle.block63 ] ; 3 uses
  br i1 %lcmp.mod101.not, label %.lr.ph.i.us11.i.i.prol.loopexit, label %.lr.ph.i.us11.i.i.prol

.lr.ph.i.us11.i.i.prol:                           ; preds = %.lr.ph.i.us11.i.i.preheader85, %.lr.ph.i.us11.i.i.prol
  %indvars.iv.i.us12.i.i.prol = phi i64 [ %indvars.iv.next.i.us14.i.i.prol, %.lr.ph.i.us11.i.i.prol ], [ %indvars.iv.i.us12.i.i.ph, %.lr.ph.i.us11.i.i.preheader85 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.us11.i.i.prol ], [ 0, %.lr.ph.i.us11.i.i.preheader85 ]
  %gep.i.us13.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us12.i.i.prol
  %i.jm = load float, ptr %gep.i.us13.i.i.prol, align 4, !tbaa !89
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.us12.i.i.prol
  store float %i.jm, ptr %i.jn, align 4, !tbaa !89
  %indvars.iv.next.i.us14.i.i.prol = add nuw nsw i64 %indvars.iv.i.us12.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.us11.i.i.prol.loopexit, label %.lr.ph.i.us11.i.i.prol, !llvm.loop !116

.lr.ph.i.us11.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.us11.i.i.prol, %.lr.ph.i.us11.i.i.preheader85
  %indvars.iv.i.us12.i.i.unr = phi i64 [ %indvars.iv.i.us12.i.i.ph, %.lr.ph.i.us11.i.i.preheader85 ], [ %indvars.iv.next.i.us14.i.i.prol, %.lr.ph.i.us11.i.i.prol ]
  %i.jo = sub nsw i64 %indvars.iv.i.us12.i.i.ph, %i.ci
  %i.jp = icmp ugt i64 %i.jo, -4
  br i1 %i.jp, label %.loopexit.i.us18.i.i, label %.lr.ph.i.us11.i.i

.lr.ph.i.us11.i.i:                                ; preds = %.lr.ph.i.us11.i.i.prol.loopexit, %.lr.ph.i.us11.i.i
  %indvars.iv.i.us12.i.i = phi i64 [ %indvars.iv.next.i.us14.i.i.3, %.lr.ph.i.us11.i.i ], [ %indvars.iv.i.us12.i.i.unr, %.lr.ph.i.us11.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us13.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us12.i.i
  %i.jq = load float, ptr %gep.i.us13.i.i, align 4, !tbaa !89
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.us12.i.i
  store float %i.jq, ptr %i.jr, align 4, !tbaa !89
  %indvars.iv.next.i.us14.i.i = add nuw nsw i64 %indvars.iv.i.us12.i.i, 1 ; 2 uses
  %gep.i.us13.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us14.i.i
  %i.js = load float, ptr %gep.i.us13.i.i.1, align 4, !tbaa !89
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next.i.us14.i.i
  store float %i.js, ptr %i.jt, align 4, !tbaa !89
  %indvars.iv.next.i.us14.i.i.1 = add nuw nsw i64 %indvars.iv.i.us12.i.i, 2 ; 2 uses
  %gep.i.us13.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us14.i.i.1
  %i.ju = load float, ptr %gep.i.us13.i.i.2, align 4, !tbaa !89
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next.i.us14.i.i.1
  store float %i.ju, ptr %i.jv, align 4, !tbaa !89
  %indvars.iv.next.i.us14.i.i.2 = add nuw nsw i64 %indvars.iv.i.us12.i.i, 3 ; 2 uses
  %gep.i.us13.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us14.i.i.2
  %i.jw = load float, ptr %gep.i.us13.i.i.3, align 4, !tbaa !89
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next.i.us14.i.i.2
  store float %i.jw, ptr %i.jx, align 4, !tbaa !89
  %indvars.iv.next.i.us14.i.i.3 = add nuw nsw i64 %indvars.iv.i.us12.i.i, 4 ; 2 uses
  %exitcond.not.i.us15.i.i.3 = icmp eq i64 %indvars.iv.next.i.us14.i.i.3, %i.ci
  br i1 %exitcond.not.i.us15.i.i.3, label %.loopexit.i.us18.i.i, label %.lr.ph.i.us11.i.i, !llvm.loop !117

.lr.ph23.preheader.i.us16.i.i:                    ; preds = %bb.i
  %scevgep68.i.us17.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.jd
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep68.i.us17.i.i, i8 0, i64 %i.cj, i1 false), !tbaa !89
  br label %.loopexit.i.us18.i.i

.loopexit.i.us18.i.i:                             ; preds = %.lr.ph.i.us11.i.i.prol.loopexit, %.lr.ph.i.us11.i.i, %middle.block63, %.lr.ph23.preheader.i.us16.i.i
  br i1 %i.bz, label %.lr.ph25.preheader.i.us19.i.i, label %._crit_edge.i.us20.i.i

.lr.ph25.preheader.i.us19.i.i:                    ; preds = %.loopexit.i.us18.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us10.i.i, i8 0, i64 %i.co, i1 false), !tbaa !89
  br label %._crit_edge.i.us20.i.i

._crit_edge.i.us20.i.i:                           ; preds = %.lr.ph25.preheader.i.us19.i.i, %.loopexit.i.us18.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %lcmp.mod104.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge.i.us20.i.i
  %i.jy = load i32, ptr %i.iy, align 4, !tbaa !35 ; 2 uses
  %i.jz = srem i32 %i.ja, %i.jy
  store i32 %i.jz, ptr %i.au, align 4, !tbaa !35
  %i.ka = sdiv i32 %i.ja, %i.jy
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge.i.us20.i.i
  %indvars.iv77.i.us22.i.i.unr = phi i64 [ %i.cp, %._crit_edge.i.us20.i.i ], [ %indvars.iv.next78.i.us24.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.011227.i.us23.i.i.unr = phi i32 [ %i.ja, %._crit_edge.i.us20.i.i ], [ %i.ka, %.prol.loopexit.unr-lcssa ]
  br i1 %i.iz, label %.preheader13.i.loopexit.us29.i.i, label %._crit_edge.i.us20.i.i.new

._crit_edge.i.us20.i.i.new:                       ; preds = %.prol.loopexit, %._crit_edge.i.us20.i.i.new
  %indvars.iv77.i.us22.i.i = phi i64 [ %indvars.iv.next78.i.us24.i.i.1, %._crit_edge.i.us20.i.i.new ], [ %indvars.iv77.i.us22.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.011227.i.us23.i.i = phi i32 [ %i.kk, %._crit_edge.i.us20.i.i.new ], [ %.011227.i.us23.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.reass.i.reass.us25.i.i = add i64 %indvars.iv77.i.us22.i.i, %invariant.op.i.i ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %.reass.i.reass.us25.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !35 ; 2 uses
  %i.kd = srem i32 %.011227.i.us23.i.i, %i.kc
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us25.i.i
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !35
  %i.kf = sdiv i32 %.011227.i.us23.i.i, %i.kc     ; 2 uses
  %indvars.iv.next78.i.us24.i.i.1 = add nsw i64 %indvars.iv77.i.us22.i.i, -2
  %.reass.i.reass.us25.i.i.1.reass = add i64 %indvars.iv77.i.us22.i.i, %invariant.op123 ; 2 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %.reass.i.reass.us25.i.i.1.reass
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !35 ; 2 uses
  %i.ki = srem i32 %i.kf, %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us25.i.i.1.reass
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !35
  %i.kk = sdiv i32 %i.kf, %i.kh
  %i.kl = icmp sgt i64 %indvars.iv77.i.us22.i.i, 2
  br i1 %i.kl, label %._crit_edge.i.us20.i.i.new, label %.preheader13.i.loopexit.us29.i.i, !llvm.loop !96

.preheader13.i.loopexit.us29.i.i:                 ; preds = %._crit_edge.i.us20.i.i.new, %.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next110.i.us27.i.i = add nuw nsw i64 %indvars.iv109.i.us9.i.i, 1 ; 2 uses
  %exitcond113.not.i.us28.i.i = icmp eq i64 %indvars.iv.next110.i.us27.i.i, %wide.trip.count112.i.i.i
  br i1 %exitcond113.not.i.us28.i.i, label %.loopexit17.i.i.i, label %bb.i, !llvm.loop !110

.lr.ph55.i.split.split.i.i:                       ; preds = %.lr.ph55.i.split.i.i
  br i1 %.not.i.i.i, label %.lr.ph55.i.split.split.split.us.i.i, label %.lr.ph.i.preheader.i.i.preheader

.lr.ph.i.preheader.i.i.preheader:                 ; preds = %.lr.ph55.i.split.split.i.i
  %i.km = mul i64 %i.as, %i.bh
  %i.kn = mul i64 %i.km, %i.bj
  %i.ko = add i64 %i.kn, %i.bd
  %i.kp = shl nsw i64 %i.cf, 2
  %i.kq = add i64 %i.kp, %i.by
  %i.kr = sub i64 %i.ko, %i.kq
  %min.iters.check69 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %invariant.op = add i64 %i.kr, -1
  %n.vec71 = and i64 %i.ci, 2147483640            ; 3 uses
  %cmp.n78 = icmp eq i64 %n.vec71, %i.ci
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.preheader.i.i

.lr.ph55.i.split.split.split.us.i.i:              ; preds = %.lr.ph55.i.split.split.i.i
  br i1 %i.bz, label %.lr.ph23.preheader.i.us34.us.i.i.preheader, label %.lr.ph23.preheader.i.us34.i.i.preheader

.lr.ph23.preheader.i.us34.i.i.preheader:          ; preds = %.lr.ph55.i.split.split.split.us.i.i
  %xtraiter91 = and i64 %wide.trip.count112.i.i.i, 3 ; 3 uses
  %i.ks = icmp ult i32 %i.bi, 4
  br i1 %i.ks, label %.lr.ph23.preheader.i.us34.i.i.epil.preheader, label %.lr.ph23.preheader.i.us34.i.i.preheader.new

end_hunk_0
