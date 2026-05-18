inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@best_scalefac_store:bb.a
bb.m:                                             ; preds = %._crit_edge166.1.thread, %._crit_edge166.1, %bb.j
  %indvars.iv.next207.1 = add nsw i64 %indvars.iv206.1, 1 ; 2 uses
  %i.bn = and i64 %indvars.iv.next207.1, 4294967295
  %exitcond210.1.not = icmp eq i64 %i.bn, 12
  br i1 %exitcond210.1.not, label %._crit_edge173.1, label %bb.j, !llvm.loop !63

._crit_edge173.1:                                 ; preds = %bb.m
  %.pre241 = load i32, ptr %i.l, align 4, !tbaa !59 ; 2 uses
  %i.bo = icmp slt i32 %.pre241, 12
  br i1 %i.bo, label %.lr.ph172.2, label %.split.us

.lr.ph172.2:                                      ; preds = %._crit_edge173.1
  %invariant.gep.2 = getelementptr i8, ptr %i.n, i64 96
  %i.bp = sext i32 %.pre241 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph172.2
  %indvars.iv206.2 = phi i64 [ %i.bp, %.lr.ph172.2 ], [ %indvars.iv.next207.2, %bb.q ] ; 3 uses
  %gep.2 = getelementptr [12 x i8], ptr %invariant.gep.2, i64 %indvars.iv206.2 ; 2 uses
  %i.bq = load i32, ptr %gep.2, align 4, !tbaa !4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv206.2 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4  ; 3 uses
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph165.preheader.2, label %._crit_edge166.2

.lr.ph165.preheader.2:                            ; preds = %bb.o
  %i.bx = sext i32 %i.bt to i64
  br label %.lr.ph165.2

.lr.ph165.2:                                      ; preds = %bb.p, %.lr.ph165.preheader.2
  %indvars.iv201.2 = phi i64 [ %i.bx, %.lr.ph165.preheader.2 ], [ %indvars.iv.next202.2, %bb.p ] ; 3 uses
  %.idx297 = mul i64 %indvars.iv201.2, 12
  %i.by = getelementptr i8, ptr %i.q, i64 %.idx297
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %.not141.2 = icmp eq i32 %i.ca, 0
  br i1 %.not141.2, label %bb.p, label %._crit_edge166.2.loopexit

bb.p:                                             ; preds = %.lr.ph165.2
  %indvars.iv.next202.2 = add nsw i64 %indvars.iv201.2, 1 ; 2 uses
  %lftr.wideiv204.2 = trunc i64 %indvars.iv.next202.2 to i32
  %exitcond205.2.not = icmp eq i32 %i.bv, %lftr.wideiv204.2
  br i1 %exitcond205.2.not, label %._crit_edge166.2.thread, label %.lr.ph165.2, !llvm.loop !62

._crit_edge166.2.loopexit:                        ; preds = %.lr.ph165.2
  %i.cb = trunc nsw i64 %indvars.iv201.2 to i32
  br label %._crit_edge166.2

._crit_edge166.2:                                 ; preds = %._crit_edge166.2.loopexit, %bb.o
  %.1134.lcssa.2 = phi i32 [ %i.bt, %bb.o ], [ %i.cb, %._crit_edge166.2.loopexit ]
  %i.cc = icmp eq i32 %.1134.lcssa.2, %i.bv
  br i1 %i.cc, label %._crit_edge166.2.thread, label %bb.q

._crit_edge166.2.thread:                          ; preds = %bb.p, %._crit_edge166.2
  store i32 0, ptr %gep.2, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.2.thread, %._crit_edge166.2, %bb.n
  %indvars.iv.next207.2 = add nsw i64 %indvars.iv206.2, 1 ; 2 uses
  %i.cd = and i64 %indvars.iv.next207.2, 4294967295
  %exitcond210.2.not = icmp eq i64 %i.cd, 12
  br i1 %exitcond210.2.not, label %.split.us, label %bb.n, !llvm.loop !63

.split.us:                                        ; preds = %bb.q, %._crit_edge173, %._crit_edge173.1, %.preheader156
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !64
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !52
  %i.ch = sub i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.e, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.split.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !66
  %.not138 = icmp eq i32 %i.cl, 0
  br i1 %.not138, label %.preheader155, label %bb.u

.preheader155:                                    ; preds = %bb.r
  %i.cm = load i32, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  %.not193 = icmp eq i32 %i.cm, 0                 ; 2 uses
  br i1 %.not193, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader155
  %wide.trip.count = zext i32 %i.cm to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.cm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph177
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi316 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x i32>, ptr %i.cn, align 4, !tbaa !4
  %wide.load317 = load <4 x i32>, ptr %i.co, align 4, !tbaa !4
  %i.cp = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.cq = or <4 x i32> %wide.load317, %vec.phi316 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge178, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph177, %middle.block
  %indvars.iv215.ph = phi i64 [ 0, %.lr.ph177 ], [ %n.vec, %middle.block ]
  %.0176.ph = phi i32 [ 0, %.lr.ph177 ], [ %i.cs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %scalar.ph ], [ %indvars.iv215.ph, %scalar.ph.preheader ] ; 2 uses
  %.0176 = phi i32 [ %i.cv, %scalar.ph ], [ %.0176.ph, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv215
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = or i32 %i.cu, %.0176                    ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count
  br i1 %exitcond218.not, label %._crit_edge178, label %scalar.ph, !llvm.loop !68

._crit_edge178:                                   ; preds = %scalar.ph, %middle.block, %.preheader155
  %.0.lcssa = phi i32 [ 0, %.preheader155 ], [ %i.cs, %middle.block ], [ %i.cv, %scalar.ph ] ; 2 uses
  %i.cw = load i32, ptr %i.l, align 4, !tbaa !59  ; 3 uses
  %i.cx = icmp ult i32 %i.cw, 12
  br i1 %i.cx, label %.preheader154.lr.ph, label %._crit_edge184

.preheader154.lr.ph:                              ; preds = %._crit_edge178
  %i.cy = zext nneg i32 %i.cw to i64
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.lr.ph, %.preheader154
  %indvars.iv223 = phi i64 [ %i.cy, %.preheader154.lr.ph ], [ %indvars.iv.next224, %.preheader154 ] ; 2 uses
  %.1183 = phi i32 [ %.0.lcssa, %.preheader154.lr.ph ], [ %i.dh, %.preheader154 ]
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %indvars.iv223 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = or i32 %i.da, %.1183
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = or i32 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = or i32 %i.dg, %i.de                     ; 2 uses
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next224, 4294967295
  %exitcond227.not = icmp eq i64 %i.di, 12
  br i1 %exitcond227.not, label %._crit_edge184, label %.preheader154, !llvm.loop !69

._crit_edge184:                                   ; preds = %.preheader154, %._crit_edge178
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge178 ], [ %i.dh, %.preheader154 ] ; 2 uses
  %i.dj = and i32 %.1.lcssa, 1
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.1.lcssa, 0
  %or.cond = and i1 %i.dl, %i.dk
  br i1 %or.cond, label %.preheader153, label %bb.u

.preheader153:                                    ; preds = %._crit_edge184
  br i1 %.not193, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader153, %.lr.ph187
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %.lr.ph187 ], [ 0, %.preheader153 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv228 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = sdiv i32 %i.dn, 2
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !58
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next229, %i.dq
  br i1 %i.dr, label %.lr.ph187, label %._crit_edge188.loopexit, !llvm.loop !70

._crit_edge188.loopexit:                          ; preds = %.lr.ph187
  %.pre242 = load i32, ptr %i.l, align 4, !tbaa !59
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.preheader153
  %i.ds = phi i32 [ %.pre242, %._crit_edge188.loopexit ], [ %i.cw, %.preheader153 ] ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 12
  br i1 %i.dt, label %.preheader.lr.ph, label %._crit_edge191

.preheader.lr.ph:                                 ; preds = %._crit_edge188
  %i.du = zext nneg i32 %i.ds to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv235 = phi i64 [ %i.du, %.preheader.lr.ph ], [ %indvars.iv.next236, %.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %indvars.iv235 ; 2 uses
  %6 = load <3 x i32>, ptr %i.dv, align 4, !tbaa !4
  %7 = sdiv <3 x i32> %6, splat (i32 2)
  store <3 x i32> %7, ptr %i.dv, align 4, !tbaa !4
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.dw = and i64 %indvars.iv.next236, 4294967295
  %exitcond239.not = icmp eq i64 %i.dw, 12
  br i1 %exitcond239.not, label %._crit_edge191, label %.preheader, !llvm.loop !71

._crit_edge191:                                   ; preds = %.preheader, %._crit_edge188
  store i32 1, ptr %i.ci, align 4, !tbaa !65
  store i32 99999999, ptr %i.ce, align 4, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !72
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge191
  %i.ea = tail call i32 @scale_bitcount(ptr noundef %i.n, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge191
  %i.eb = tail call i32 @scale_bitcount_lsf(ptr noundef %i.n, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge184, %bb.t, %bb.s, %bb.r, %.split.us
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !72
  %i.ee = icmp eq i32 %i.ed, 2
  %i.ef = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ef, %i.ee
  br i1 %or.cond3, label %bb.v, label %scfsi_calc.exit

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds [120 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !73
  %.not139 = icmp eq i32 %i.ei, 2
  br i1 %.not139, label %scfsi_calc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ek = getelementptr inbounds [120 x i8], ptr %i.ej, i64 %i.d ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !73
  %.not140 = icmp eq i32 %i.em, 2
  br i1 %.not140, label %scfsi_calc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 68
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 68
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !75
  %i.er = icmp eq i32 %i.eo, %i.eq
  br i1 %i.er, label %bb.y, label %scfsi_calc.exit

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.et = load i32, ptr %i.es, align 8, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !76
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.z, label %scfsi_calc.exit

bb.z:                                             ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.ex, i64 %i.d ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false), !tbaa !4
  %i.ez = getelementptr inbounds [244 x i8], ptr %5, i64 %i.d ; 21 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 488
  %i.fb = getelementptr inbounds [244 x i8], ptr %i.fa, i64 %i.d ; 39 uses
  %i.fc = mul nsw i64 %i.d, 244
  %i.fd = getelementptr i8, ptr %5, i64 %i.fc     ; 4 uses
  %scevgep.i = getelementptr i8, ptr %i.fd, i64 488
  %i.fe = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.ff = load i32, ptr %i.fb, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.fe, %i.ff
  br i1 %.not.i, label %.lr.ph.1125.i, label %.lr.ph.preheader.1.i

.lr.ph.1125.i:                                    ; preds = %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %.not.1124.i = icmp eq i32 %i.fh, %i.fj
  br i1 %.not.1124.i, label %.lr.ph.2127.i, label %.lr.ph.preheader.1.i

.lr.ph.2127.i:                                    ; preds = %.lr.ph.1125.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %.not.2126.i = icmp eq i32 %i.fl, %i.fn
  br i1 %.not.2126.i, label %.lr.ph.3129.i, label %.lr.ph.preheader.1.i

.lr.ph.3129.i:                                    ; preds = %.lr.ph.2127.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %.not.3128.i = icmp eq i32 %i.fp, %i.fr
  br i1 %.not.3128.i, label %.lr.ph.4.i, label %.lr.ph.preheader.1.i

.lr.ph.4.i:                                       ; preds = %.lr.ph.3129.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %.not.4.i = icmp eq i32 %i.ft, %i.fv
  br i1 %.not.4.i, label %.lr.ph.5.i, label %.lr.ph.preheader.1.i

.lr.ph.5.i:                                       ; preds = %.lr.ph.4.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %.not.5.i = icmp eq i32 %i.fx, %i.fz
  br i1 %.not.5.i, label %._crit_edge102.i, label %.lr.ph.preheader.1.i

._crit_edge102.i:                                 ; preds = %.lr.ph.5.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %scevgep.i, i8 -1, i64 24, i1 false), !tbaa !4
  store i32 1, ptr %i.ey, align 4, !tbaa !4
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge102.i, %.lr.ph.5.i, %.lr.ph.4.i, %.lr.ph.3129.i, %.lr.ph.2127.i, %.lr.ph.1125.i, %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %.not.1.i = icmp eq i32 %i.gb, %i.gd
  br i1 %.not.1.i, label %.lr.ph.1.1.i, label %.lr.ph.preheader.2.i

.lr.ph.1.1.i:                                     ; preds = %.lr.ph.preheader.1.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  %.not.1.1.i = icmp eq i32 %i.gf, %i.gh
  br i1 %.not.1.1.i, label %.lr.ph.1.2.i, label %.lr.ph.preheader.2.i

.lr.ph.1.2.i:                                     ; preds = %.lr.ph.1.1.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %.not.1.2.i = icmp eq i32 %i.gj, %i.gl
  br i1 %.not.1.2.i, label %.lr.ph.1.3.i, label %.lr.ph.preheader.2.i

.lr.ph.1.3.i:                                     ; preds = %.lr.ph.1.2.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %.not.1.3.i = icmp eq i32 %i.gn, %i.gp
  br i1 %.not.1.3.i, label %.lr.ph.1.4.i, label %.lr.ph.preheader.2.i

.lr.ph.1.4.i:                                     ; preds = %.lr.ph.1.3.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %.not.1.4.i = icmp eq i32 %i.gr, %i.gt
  br i1 %.not.1.4.i, label %._crit_edge102.1.i, label %.lr.ph.preheader.2.i

._crit_edge102.1.i:                               ; preds = %.lr.ph.1.4.i
  %scevgep116.1.i = getelementptr i8, ptr %i.fd, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.1.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 1, ptr %i.gu, align 4, !tbaa !4
  br label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge102.1.i, %.lr.ph.1.4.i, %.lr.ph.1.3.i, %.lr.ph.1.2.i, %.lr.ph.1.1.i, %.lr.ph.preheader.1.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ez, i64 44
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fb, i64 44 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not.2.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not.2.i, label %.lr.ph.2.1.i, label %.lr.ph.preheader.3.i

.lr.ph.2.1.i:                                     ; preds = %.lr.ph.preheader.2.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %.not.2.1.i = icmp eq i32 %i.ha, %i.hc
  br i1 %.not.2.1.i, label %.lr.ph.2.2.i, label %.lr.ph.preheader.3.i

.lr.ph.2.2.i:                                     ; preds = %.lr.ph.2.1.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ez, i64 52
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fb, i64 52
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %.not.2.2.i = icmp eq i32 %i.he, %i.hg
  br i1 %.not.2.2.i, label %.lr.ph.2.3.i, label %.lr.ph.preheader.3.i

.lr.ph.2.3.i:                                     ; preds = %.lr.ph.2.2.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !4
  %.not.2.3.i = icmp eq i32 %i.hi, %i.hk
  br i1 %.not.2.3.i, label %.lr.ph.2.4.i, label %.lr.ph.preheader.3.i

.lr.ph.2.4.i:                                     ; preds = %.lr.ph.2.3.i
end_hunk_0
