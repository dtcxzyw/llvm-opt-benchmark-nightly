inline.NumInlined: 494
inline.NumDeleted: 147
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  store <4 x float> %wide.load286, ptr %i.dn, align 4, !tbaa !50
  %index.next287 = add nuw i64 %index284, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.do, label %middle.block288, label %vector.body283, !llvm.loop !98

middle.block288:                                  ; preds = %vector.body283
  %cmp.n289 = icmp eq i64 %n.vec282, %wide.trip.count.i.i.i169
  br i1 %cmp.n289, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph.i.i.i168, %middle.block288
  %indvars.iv.i.i.i170.ph = phi i64 [ 0, %.lr.ph.i.i.i168 ], [ %n.vec282, %middle.block288 ] ; 3 uses
  %xtraiter319.a = and i64 %wide.trip.count.i.i.i169, 3 ; 2 uses
  %lcmp.mod320.not.a = icmp eq i64 %xtraiter319.a, 0
  br i1 %lcmp.mod320.not.a, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol

scalar.ph278.prol:                                ; preds = %scalar.ph278.preheader, %scalar.ph278.prol
  %indvars.iv.i.i.i170.prol = phi i64 [ %indvars.iv.next.i.i.i171.prol, %scalar.ph278.prol ], [ %indvars.iv.i.i.i170.ph, %scalar.ph278.preheader ] ; 3 uses
  %prol.iter321.a = phi i64 [ %prol.iter321.next.a, %scalar.ph278.prol ], [ 0, %scalar.ph278.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i170.prol
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i170.prol
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !50
  store float %i.dr, ptr %i.dp, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.prol = add nuw nsw i64 %indvars.iv.i.i.i170.prol, 1 ; 2 uses
  %prol.iter321.next.a = add i64 %prol.iter321.a, 1 ; 2 uses
  %prol.iter321.cmp.not.a = icmp eq i64 %prol.iter321.next.a, %xtraiter319.a
  br i1 %prol.iter321.cmp.not.a, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol, !llvm.loop !99

scalar.ph278.prol.loopexit:                       ; preds = %scalar.ph278.prol, %scalar.ph278.preheader
  %indvars.iv.i.i.i170.unr = phi i64 [ %indvars.iv.i.i.i170.ph, %scalar.ph278.preheader ], [ %indvars.iv.next.i.i.i171.prol, %scalar.ph278.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.i170.ph, %wide.trip.count.i.i.i169
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278
  %indvars.iv.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i171.3, %scalar.ph278 ], [ %indvars.iv.i.i.i170.unr, %scalar.ph278.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i170
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i170
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !50
  store float %i.dw, ptr %i.du, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171 = add nuw nsw i64 %indvars.iv.i.i.i170, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !50
  store float %i.dz, ptr %i.dx, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.1 = add nuw nsw i64 %indvars.iv.i.i.i170, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171.1
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171.1
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !50
  store float %i.ec, ptr %i.ea, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.2 = add nuw nsw i64 %indvars.iv.i.i.i170, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171.2
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171.2
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !50
  store float %i.ef, ptr %i.ed, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.3 = add nuw nsw i64 %indvars.iv.i.i.i170, 4 ; 2 uses
  %exitcond.not.i.i.i172.3 = icmp eq i64 %indvars.iv.next.i.i.i171.3, %wide.trip.count.i.i.i169
  br i1 %exitcond.not.i.i.i172.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph278, !llvm.loop !100

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i162
  %.not.i5.i.i165 = icmp ne ptr %i.dg, null
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eh = load i8, ptr %i.eg, align 8, !range !17
  %i.ei = trunc nuw i8 %i.eh to i1
  %or.cond28.i166 = select i1 %.not.i5.i.i165, i1 %i.ei, i1 false
  br i1 %or.cond28.i166, label %bb.l, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173: ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278, %middle.block288
  %.old.i174 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.old26.i175 = load i8, ptr %.old.i174, align 8, !tbaa !25, !range !17, !noundef !81
  %.old27.i176 = trunc nuw i8 %.old26.i175 to i1
  br i1 %.old27.i176, label %bb.l, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dg)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ej, align 8, !tbaa !25
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !29
  store i32 %i.b, ptr %i.cy, align 8, !tbaa !31
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %..lr.ph.i154_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167
  %.pre-phi256 = phi i64 [ %.pre255, %..lr.ph.i154_crit_edge ], [ %i.dc, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167 ]
  %i.ek = phi ptr [ %.pre248.a, %..lr.ph.i154_crit_edge ], [ %i.dd, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167 ]
  %i.el = sext i32 %i.cw to i64
  %i.em = shl nsw i64 %i.el, 2                    ; 2 uses
  %scevgep232 = getelementptr i8, ptr %i.ek, i64 %i.em
  %i.en = sub nsw i64 %.pre-phi256, %i.em
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep232, i8 0, i64 %i.en, i1 false), !tbaa !50
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177: ; preds = %.lr.ph.i154, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.b, ptr %i.cv, align 4, !tbaa !30
  %i.eo = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !29 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.eo to i64   ; 5 uses
  %min.iters.check294 = icmp ult i32 %i.eo, 8
  %i.eu = ptrtoaddr ptr %i.et to i64
  %i.ev = ptrtoaddr ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %diff.check292 = icmp ult i64 %i.ew, 32
  %or.cond308 = select i1 %min.iters.check294, i1 true, i1 %diff.check292
  br i1 %or.cond308, label %scalar.ph293.preheader, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph
  %n.vec297 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph295
  %index299 = phi i64 [ 0, %vector.ph295 ], [ %index.next300, %vector.body298 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index299 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x float> zeroinitializer, ptr %i.ex, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %i.ey, align 4, !tbaa !50
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index299 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> zeroinitializer, ptr %i.ez, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %i.fa, align 4, !tbaa !50
  %index.next300 = add nuw i64 %index299, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next300, %n.vec297
  br i1 %i.fb, label %middle.block301, label %vector.body298, !llvm.loop !101

middle.block301:                                  ; preds = %vector.body298
  %cmp.n302 = icmp eq i64 %n.vec297, %wide.trip.count
  br i1 %cmp.n302, label %.lr.ph221, label %scalar.ph293.preheader

scalar.ph293.preheader:                           ; preds = %.lr.ph, %middle.block301
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec297, %middle.block301 ] ; 3 uses
  %xtraiter322 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol

scalar.ph293.prol:                                ; preds = %scalar.ph293.preheader, %scalar.ph293.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph293.prol ], [ %indvars.iv.ph, %scalar.ph293.preheader ] ; 3 uses
  %prol.iter324 = phi i64 [ %prol.iter324.next, %scalar.ph293.prol ], [ 0, %scalar.ph293.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.prol
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !50
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.prol
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter324.next = add i64 %prol.iter324, 1   ; 2 uses
  %prol.iter324.cmp.not = icmp eq i64 %prol.iter324.next, %xtraiter322
  br i1 %prol.iter324.cmp.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol, !llvm.loop !102

scalar.ph293.prol.loopexit:                       ; preds = %scalar.ph293.prol, %scalar.ph293.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph293.preheader ], [ %indvars.iv.next.prol, %scalar.ph293.prol ]
  %i.fe = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %.lr.ph221, label %scalar.ph293

.lr.ph221:                                        ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293, %middle.block301
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.m

scalar.ph293:                                     ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph293 ], [ %indvars.iv.unr, %scalar.ph293.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fo, align 4, !tbaa !50
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fp, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.fq, align 4, !tbaa !50
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.fr, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.next.1
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !50
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.1
  store float 0.000000e+00, ptr %i.ft, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.next.2
  store float 0.000000e+00, ptr %i.fu, align 4, !tbaa !50
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.2
  store float 0.000000e+00, ptr %i.fv, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph221, label %scalar.ph293, !llvm.loop !103

.preheader217:                                    ; preds = %bb.o
  %i.fw = icmp sgt i32 %i.jt, 0
  br i1 %i.fw, label %.lr.ph224, label %.loopexit

.lr.ph224:                                        ; preds = %.preheader217
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.pre250.a = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 2 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph221, %bb.o
  %i.gl = phi i32 [ %i.eo, %.lr.ph221 ], [ %i.jt, %bb.o ]
  %indvars.iv234 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next235, %bb.o ] ; 9 uses
  %i.gm = load ptr, ptr %i.fg, align 8, !tbaa !42
  %i.gn = getelementptr inbounds nuw [288 x i8], ptr %i.gm, i64 %indvars.iv234 ; 9 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !76 ; 2 uses
  %.not119 = icmp eq ptr %i.gp, null
  br i1 %.not119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %i.gq, i64 16, i1 false), !tbaa.struct !57
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !57
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fi, ptr noundef nonnull align 4 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !57
  %i.gt = load i32, ptr %i.fj, align 8, !tbaa !46
  %i.gu = sext i32 %i.gt to i64                   ; 3 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gu
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gu
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gu
  %i.gy = load float, ptr %i.gv, align 4, !tbaa !50
  %i.gz = load float, ptr %i.gw, align 4, !tbaa !50
  %i.ha = load float, ptr %i.gx, align 4, !tbaa !50
  %i.hb = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv234 ; 3 uses
  store float %i.gy, ptr %i.hc, align 4
  %.sroa.4.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.gz, ptr %.sroa.4.0..sroa_idx210, align 4
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  store <2 x float> %i.hd, ptr %.sroa.5211.0..sroa_idx, align 4
  %i.he = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv234 ; 4 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !50 ; 2 uses
  %i.hh = load float, ptr %i.gn, align 4, !tbaa !50 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !50 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !50 ; 2 uses
  %i.hm = fmul float %i.hj, %i.hl
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hh, float %i.hm)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !50 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !50 ; 2 uses
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.hn) ; 3 uses
  %i.ht = fmul float %i.hh, %i.hs
  %i.hu = fmul float %i.hl, %i.hs
  %i.hv = fmul float %i.hr, %i.hs
  %i.hw = fsub float %i.hg, %i.ht                 ; 3 uses
  %i.hx = fsub float %i.hj, %i.hu                 ; 3 uses
  %i.hy = fsub float %i.hp, %i.hv                 ; 3 uses
  %i.hz = fmul float %i.hx, %i.hx
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hz)
  %i.ib = tail call noundef float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ia)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ib)
  %i.ic = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.id = fmul float %i.hw, %i.ic                 ; 3 uses
  store float %i.id, ptr %i.hf, align 4, !tbaa !50
  %i.ie = fmul float %i.hx, %i.ic                 ; 3 uses
  store float %i.ie, ptr %i.hi, align 4, !tbaa !50
  %i.if = fmul float %i.hy, %i.ic                 ; 3 uses
  store float %i.if, ptr %i.ho, align 4, !tbaa !50
  %i.ig = load float, ptr %i.hk, align 4, !tbaa !50 ; 2 uses
  %i.ih = load float, ptr %i.hq, align 4, !tbaa !50 ; 2 uses
  %i.ii = fneg float %i.ie
  %i.ij = fmul float %i.ih, %i.ii
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.if, float %i.ij)
  %i.il = load float, ptr %i.gn, align 4, !tbaa !50 ; 2 uses
  %i.im = fneg float %i.if
  %i.in = fmul float %i.il, %i.im
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.id, float %i.in)
  %i.ip = fneg float %i.id
  %i.iq = fmul float %i.ig, %i.ip
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.il, float %i.ie, float %i.iq)
  %.sroa.0.0.vec.insert.i178 = insertelement <2 x float> poison, float %i.ik, i64 0
  %.sroa.0.4.vec.insert.i179 = insertelement <2 x float> %.sroa.0.0.vec.insert.i178, float %i.io, i64 1
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ir, i64 0
  %i.is = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %indvars.iv234 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i179, ptr %i.it, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !54
  %i.iu = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %indvars.iv234 ; 4 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !50 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !50 ; 3 uses
  %i.iz = fmul float %i.iy, %i.iy
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.iw, float %i.iz)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !50 ; 3 uses
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.jc, float %i.ja)
  %sqrt.i.i183 = tail call noundef float @llvm.sqrt.f32(float %i.jd)
  %i.je = fdiv float 1.000000e+00, %sqrt.i.i183   ; 3 uses
  %i.jf = fmul float %i.iw, %i.je
  store float %i.jf, ptr %i.iv, align 4, !tbaa !50
  %i.jg = fmul float %i.iy, %i.je
  store float %i.jg, ptr %i.ix, align 4, !tbaa !50
  %i.jh = fmul float %i.jc, %i.je
  store float %i.jh, ptr %i.jb, align 4, !tbaa !50
  %i.ji = load ptr, ptr %i.fm, align 8, !tbaa !45
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.jk = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %indvars.iv234
  %i.jm = load ptr, ptr %i.fn, align 8, !tbaa !29
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv234
  tail call void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564) %i.ji, ptr noundef nonnull align 4 dereferenceable(16) %i.jj, ptr noundef nonnull align 8 dereferenceable(564) %i.gp, ptr noundef nonnull align 4 dereferenceable(16) %i.jj, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %i.jl, ptr noundef nonnull align 4 dereferenceable(4) %i.jn, float noundef %1)
  %i.jo = load float, ptr @sideFrictionStiffness2, align 4, !tbaa !50
  %i.jp = load ptr, ptr %i.fn, align 8, !tbaa !29
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv234 ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !50
  %i.js = fmul float %i.jo, %i.jr
  store float %i.js, ptr %i.jq, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre249 = load i32, ptr %i.a, align 4, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jt = phi i32 [ %.pre249, %bb.n ], [ %i.gl, %bb.m ] ; 3 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next235, %i.ju
  br i1 %i.jv, label %bb.m, label %.preheader217

._crit_edge:                                      ; preds = %bb.v
  %i.jw = icmp sgt i32 %i.ow, 0
  %or.cond = and i1 %.2, %i.jw
  br i1 %or.cond, label %.lr.ph227, label %.loopexit216

.lr.ph227:                                        ; preds = %._crit_edge
  %i.jx = load ptr, ptr %i.gk, align 8, !tbaa !29
  %i.jy = load ptr, ptr %i.fx, align 8
  %i.jz = load ptr, ptr %i.gj, align 8
  %wide.trip.count242 = zext nneg i32 %i.ow to i64
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph224, %bb.v
  %i.ka = phi ptr [ %.pre250.a, %.lr.ph224 ], [ %i.ou, %bb.v ] ; 2 uses
  %i.kb = phi ptr [ %.pre250.a, %.lr.ph224 ], [ %i.ov, %bb.v ] ; 2 uses
  %indvars.iv237.a = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next238.a, %bb.v ] ; 7 uses
  %.0108223 = phi i1 [ false, %.lr.ph224 ], [ %.2, %bb.v ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [288 x i8], ptr %i.kb, i64 %indvars.iv237.a ; 7 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 88
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !76 ; 2 uses
  %.not118 = icmp eq ptr %i.ke, null
  br i1 %.not118, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 252
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !85 ; 2 uses
  %i.kh = fcmp une float %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ki = fmul float %1, %i.kg
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 256
  %i.kk = load float, ptr %i.kj, align 8, !tbaa !86 ; 2 uses
  %.inv = fcmp oeq float %i.kk, 0.000000e+00
  %. = select i1 %.inv, float 0.000000e+00, float %i.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.kl = load ptr, ptr %i.fy, align 8, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kn = load ptr, ptr %i.fz, align 8, !tbaa !22
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.kn, i64 %indvars.iv237.a
  call void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.kl, ptr noundef nonnull %i.ke, ptr noundef nonnull align 4 dereferenceable(16) %i.km, ptr noundef nonnull align 4 dereferenceable(16) %i.ko, float noundef %.)
  %i.kp = load ptr, ptr %3, align 8, !tbaa !87    ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load float, ptr %i.ga, align 8, !tbaa !50 ; 2 uses
  %i.ks = load float, ptr %i.kq, align 4, !tbaa !50
  %i.kt = fsub float %i.kr, %i.ks                 ; 2 uses
  %i.ku = load float, ptr %i.gb, align 4, !tbaa !50 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 60
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !50
  %i.kx = fsub float %i.ku, %i.kw                 ; 2 uses
  %i.ky = load float, ptr %i.gc, align 8, !tbaa !50 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.la = load float, ptr %i.kz, align 4, !tbaa !50
  %i.lb = fsub float %i.ky, %i.la                 ; 2 uses
  %i.lc = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 9 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %i.le = load float, ptr %i.ld, align 4, !tbaa !50
  %i.lf = fsub float %i.kr, %i.le                 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 60
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !50
  %i.li = fsub float %i.ku, %i.lh                 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !50
  %i.ll = fsub float %i.ky, %i.lk                 ; 2 uses
  %i.lm = load float, ptr %i.ge, align 4, !tbaa !90 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kp, i64 328
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 344
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kp, i64 348
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !50 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 352
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !50 ; 2 uses
  %i.lt = fneg float %i.kx
  %i.lu = fmul float %i.ls, %i.lt
  %i.lv = call float @llvm.fmuladd.f32(float %i.lq, float %i.lb, float %i.lu)
  %i.lw = load float, ptr %i.lo, align 4, !tbaa !50 ; 2 uses
  %i.lx = fneg float %i.lb
  %i.ly = fmul float %i.lw, %i.lx
  %i.lz = call float @llvm.fmuladd.f32(float %i.ls, float %i.kt, float %i.ly)
  %i.ma = fneg float %i.kt
  %i.mb = fmul float %i.lq, %i.ma
  %i.mc = call float @llvm.fmuladd.f32(float %i.lw, float %i.kx, float %i.mb)
  %i.md = load float, ptr %i.ln, align 4, !tbaa !50
  %i.me = fadd float %i.lv, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kp, i64 332
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !50
  %i.mh = fadd float %i.mg, %i.lz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kp, i64 336
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !50
  %i.mk = fadd float %i.mc, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lc, i64 328
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lc, i64 344
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lc, i64 348
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !50 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lc, i64 352
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !50 ; 2 uses
  %i.mr = fneg float %i.li
  %i.ms = fmul float %i.mq, %i.mr
  %i.mt = call float @llvm.fmuladd.f32(float %i.mo, float %i.ll, float %i.ms)
  %i.mu = load float, ptr %i.mm, align 4, !tbaa !50 ; 2 uses
  %i.mv = fneg float %i.ll
  %i.mw = fmul float %i.mu, %i.mv
  %i.mx = call float @llvm.fmuladd.f32(float %i.mq, float %i.lf, float %i.mw)
  %i.my = fneg float %i.lf
  %i.mz = fmul float %i.mo, %i.my
  %i.na = call float @llvm.fmuladd.f32(float %i.mu, float %i.li, float %i.mz)
  %i.nb = load float, ptr %i.ml, align 4, !tbaa !50
  %i.nc = fadd float %i.mt, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lc, i64 332
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !50
  %i.nf = fadd float %i.ne, %i.mx
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lc, i64 336
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !50
  %i.ni = fadd float %i.na, %i.nh
  %i.nj = fsub float %i.me, %i.nc
  %i.nk = fsub float %i.mh, %i.nf
  %i.nl = fsub float %i.mk, %i.ni
  %i.nm = load float, ptr %i.gf, align 8, !tbaa !50
  %i.nn = load float, ptr %i.gg, align 4, !tbaa !50
  %i.no = fmul float %i.nk, %i.nn
  %i.np = call float @llvm.fmuladd.f32(float %i.nm, float %i.nj, float %i.no)
  %i.nq = load float, ptr %i.gh, align 8, !tbaa !50
  %i.nr = call noundef float @llvm.fmuladd.f32(float %i.nq, float %i.nl, float %i.np)
  %i.ns = fneg float %i.nr
  %i.nt = load float, ptr %i.gi, align 8, !tbaa !91
  %i.nu = fmul float %i.nt, %i.ns                 ; 2 uses
  %i.nv = fcmp olt float %i.lm, %i.nu
  %.0.i = select i1 %i.nv, float %i.lm, float %i.nu ; 2 uses
  %i.nw = fneg float %i.lm                        ; 2 uses
  %i.nx = fcmp olt float %.0.i, %i.nw
  %.1.i = select i1 %i.nx, float %i.nw, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre251 = load ptr, ptr %i.fx, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ny = phi ptr [ %i.ka, %bb.r ], [ %.pre251, %bb.s ] ; 5 uses
  %.0111.ph = phi float [ %i.ki, %bb.r ], [ %.1.i, %bb.s ] ; 2 uses
  %i.nz = load ptr, ptr %i.gj, align 8, !tbaa !29
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv237.a ; 2 uses
  store float 0.000000e+00, ptr %i.oa, align 4, !tbaa !50
  %i.ob = getelementptr inbounds nuw [288 x i8], ptr %i.ny, i64 %indvars.iv237.a
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 284 ; 3 uses
  store float 1.000000e+00, ptr %i.oc, align 4, !tbaa !104
  %i.od = getelementptr inbounds nuw i8, ptr %i.kc, i64 280
  %i.oe = load float, ptr %i.od, align 8, !tbaa !83
  %i.of = fmul float %1, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.kc, i64 232
  %i.oh = load float, ptr %i.og, align 8, !tbaa !105
  %i.oi = fmul float %i.of, %i.oh                 ; 3 uses
  %i.oj = fmul float %i.oi, %i.oi
  store float %.0111.ph, ptr %i.oa, align 4, !tbaa !50
  %i.ok = fmul float %.0111.ph, 5.000000e-01      ; 2 uses
  %i.ol = load ptr, ptr %i.gk, align 8, !tbaa !29
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv237.a
  %i.on = load float, ptr %i.om, align 4, !tbaa !50 ; 2 uses
  %i.oo = fmul float %i.on, %i.on
  %i.op = call float @llvm.fmuladd.f32(float %i.ok, float %i.ok, float %i.oo) ; 2 uses
  %i.oq = fcmp ogt float %i.op, %i.oj
  br i1 %i.oq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %sqrt = call float @llvm.sqrt.f32(float %i.op)
  %i.or = fdiv float %i.oi, %sqrt
  %i.os = load float, ptr %i.oc, align 4, !tbaa !104
  %i.ot = fmul float %i.or, %i.os
  store float %i.ot, ptr %i.oc, align 4, !tbaa !104
  br label %bb.v

.critedge:                                        ; preds = %bb.p
  %9 = load ptr, ptr %i.gj, align 8, !tbaa !29
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv237.a
  store float 0.000000e+00, ptr %10, align 4, !tbaa !50
  %11 = getelementptr inbounds nuw i8, ptr %i.kc, i64 284
  store float 1.000000e+00, ptr %11, align 4, !tbaa !104
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge
  %i.ou = phi ptr [ %i.ka, %.critedge ], [ %i.ny, %bb.t ], [ %i.ny, %bb.u ]
  %i.ov = phi ptr [ %i.kb, %.critedge ], [ %i.ny, %bb.t ], [ %i.ny, %bb.u ]
  %.2 = phi i1 [ %.0108223, %.critedge ], [ %.0108223, %bb.t ], [ true, %bb.u ] ; 2 uses
  %indvars.iv.next238.a = add nuw nsw i64 %indvars.iv237.a, 1 ; 2 uses
  %i.ow = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.ox = sext i32 %i.ow to i64
  %i.oy = icmp slt i64 %indvars.iv.next238.a, %i.ox
  br i1 %i.oy, label %bb.p, label %._crit_edge

bb.w:                                             ; preds = %.lr.ph227, %bb.z
  %indvars.iv239 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next240, %bb.z ] ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv239 ; 3 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !50
  %i.pb = fcmp une float %i.pa, 0.000000e+00
  br i1 %i.pb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.pc = getelementptr inbounds nuw [288 x i8], ptr %i.jy, i64 %indvars.iv239
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 284 ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !104 ; 2 uses
  %i.pf = fcmp olt float %i.pe, 1.000000e+00
  br i1 %i.pf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv239 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !50
  %i.pi = fmul float %i.pe, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !50
  %i.pj = load float, ptr %i.pd, align 4, !tbaa !104
  %i.pk = load float, ptr %i.oz, align 4, !tbaa !50
  %i.pl = fmul float %i.pj, %i.pk
  store float %i.pl, ptr %i.oz, align 4, !tbaa !50
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %.loopexit216, label %bb.w

.loopexit216:                                     ; preds = %bb.z, %._crit_edge
  %12 = icmp sgt i32 %i.ow, 0
  br i1 %12, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %.loopexit216
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.px = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph230, %bb.ae
  %indvars.iv244 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next245, %bb.ae ] ; 7 uses
  %i.py = load ptr, ptr %i.pm, align 8, !tbaa !42
  %i.pz = getelementptr inbounds nuw [288 x i8], ptr %i.py, i64 %indvars.iv244 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.pn, align 8, !tbaa !45 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 56
  %i.qd = load <2 x float>, ptr %i.qa, align 4, !tbaa !50
  %i.qe = load <2 x float>, ptr %i.qc, align 4, !tbaa !50
  %i.qf = fsub <2 x float> %i.qd, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 24 ; 2 uses
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !50
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !50
  %i.qk = fsub float %i.qh, %i.qj
  %.sroa.3.12.vec.insert.i186 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qk, i64 0
  store <2 x float> %i.qf, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i186, ptr %i.po, align 8
  %i.ql = load ptr, ptr %i.pp, align 8, !tbaa !29
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv244
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !50 ; 3 uses
  %i.qo = fcmp une float %i.qn, 0.000000e+00
  br i1 %i.qo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.qp = load ptr, ptr %i.pq, align 8, !tbaa !22
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %indvars.iv244 ; 2 uses
  %i.qr = load <2 x float>, ptr %i.qq, align 4, !tbaa !50
  %i.qs = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qt = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qu = fmul <2 x float> %i.qt, %i.qr
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !50
  %i.qx = fmul float %i.qn, %i.qw
  %.sroa.3.12.vec.insert.i191 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qx, i64 0
  store <2 x float> %i.qu, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i191, ptr %i.pr, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.qb, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.qy = load ptr, ptr %i.ps, align 8, !tbaa !29
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv244 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !50
  %i.rb = fcmp une float %i.ra, 0.000000e+00
  br i1 %i.rb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.rc = load ptr, ptr %i.pm, align 8, !tbaa !42
  %i.rd = getelementptr inbounds nuw [288 x i8], ptr %i.rc, i64 %indvars.iv244
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 88
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 56
  %i.rh = load <2 x float>, ptr %i.qa, align 4, !tbaa !50
  %i.ri = load <2 x float>, ptr %i.rg, align 4, !tbaa !50
  %i.rj = fsub <2 x float> %i.rh, %i.ri
  %i.rk = load float, ptr %i.qg, align 4, !tbaa !50
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 64
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !50
  %i.rn = fsub float %i.rk, %i.rm
  %.sroa.3.12.vec.insert.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rn, i64 0
  store <2 x float> %i.rj, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i196, ptr %i.pt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ro = load ptr, ptr %i.pu, align 8, !tbaa !22
  %i.rp = getelementptr inbounds nuw [16 x i8], ptr %i.ro, i64 %indvars.iv244 ; 2 uses
  %i.rq = load float, ptr %i.qz, align 4, !tbaa !50 ; 2 uses
  %i.rr = load <2 x float>, ptr %i.rp, align 4, !tbaa !50
  %i.rs = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.rt = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ru = fmul <2 x float> %i.rt, %i.rr
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !50
  %i.rx = fmul float %i.rq, %i.rw
  %.sroa.3.12.vec.insert.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rx, i64 0
  store <2 x float> %i.ru, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i201, ptr %i.pv, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pz, i64 248
  %i.rz = load float, ptr %i.ry, align 8, !tbaa !106
  %i.sa = load i32, ptr %i.pw, align 4, !tbaa !47
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sb ; 2 uses
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !50
  %i.se = fmul float %i.rz, %i.sd
  store float %i.se, ptr %i.sc, align 4, !tbaa !50
  %i.sf = load ptr, ptr %i.pn, align 8, !tbaa !45
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.sf, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.sg = load <2 x float>, ptr %7, align 8, !tbaa !50
  %i.sh = fneg <2 x float> %i.sg
  %i.si = load float, ptr %i.pv, align 8, !tbaa !50
  %i.sj = fneg float %i.si
  %.sroa.3.12.vec.insert.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sj, i64 0
  store <2 x float> %i.sh, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i206, ptr %i.px, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.rf, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.sk = load i32, ptr %i.a, align 4, !tbaa !43
  %i.sl = sext i32 %i.sk to i64
  %i.sm = icmp slt i64 %indvars.iv.next245, %i.sl
  br i1 %i.sm, label %bb.aa, label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177, %.preheader217, %.loopexit216, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load float, ptr %3, align 4, !tbaa !50   ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !50
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !50 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !50
  %i.m = fsub float %i.j, %i.l                    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load float, ptr %i.p, align 4, !tbaa !50
  %i.r = fsub float %i.o, %i.q                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !50 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 5 uses
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = fmul float %i.r, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.m, float %i.t, float %i.x) ; 3 uses
  %i.z = load float, ptr %4, align 4, !tbaa !50   ; 5 uses
  %i.aa = fneg float %i.t                         ; 2 uses
  %i.ab = fmul float %i.h, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.r, float %i.z, float %i.ab) ; 3 uses
  %i.ad = fneg float %i.z                         ; 2 uses
  %i.ae = fmul float %i.m, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.h, float %i.v, float %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !50
  %i.ak = fmul float %i.ac, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.y, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.af, float %i.al) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50
  %i.at = fmul float %i.ac, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.af, float %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bc = fmul float %i.ac, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.y, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 320
end_hunk_0
