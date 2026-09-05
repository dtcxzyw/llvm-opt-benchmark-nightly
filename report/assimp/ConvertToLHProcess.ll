Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ConvertToLHProcess?download=true
inline.NumInlined: 38
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh:bb.a
..loopexit93_crit_edge.us.1:                      ; preds = %bb.f, %..loopexit93_crit_edge.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 1144 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not91.us.2 = icmp eq ptr %i.bt, null
  br i1 %.not91.us.2, label %..loopexit93_crit_edge.us.2, label %.preheader92.us.2

.preheader92.us.2:                                ; preds = %..loopexit93_crit_edge.us.1
  %wide.trip.count153.2 = zext i32 %.fr133 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader92.us.2
  %indvars.iv150.2 = phi i64 [ 0, %.preheader92.us.2 ], [ %indvars.iv.next151.2, %bb.g ] ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %indvars.iv150.2 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv150.2 to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %.fr133, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %.sroa.0188.0.copyload192 = load <3 x float>, ptr %i.bv, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload192, ptr %i.ca, align 4
  %indvars.iv.next151.2 = add nuw nsw i64 %indvars.iv150.2, 1 ; 2 uses
  %exitcond154.2.not = icmp eq i64 %indvars.iv.next151.2, %wide.trip.count153.2
  br i1 %exitcond154.2.not, label %..loopexit93_crit_edge.us.2, label %bb.g, !llvm.loop !29

..loopexit93_crit_edge.us.2:                      ; preds = %bb.g, %..loopexit93_crit_edge.us.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 1152 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not91.us.3 = icmp eq ptr %i.cc, null
  br i1 %.not91.us.3, label %..loopexit93_crit_edge.us.3, label %.preheader92.us.3

.preheader92.us.3:                                ; preds = %..loopexit93_crit_edge.us.2
  %wide.trip.count153.3 = zext i32 %.fr133 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader92.us.3
  %indvars.iv150.3 = phi i64 [ 0, %.preheader92.us.3 ], [ %indvars.iv.next151.3, %bb.h ] ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %indvars.iv150.3 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv150.3 to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %.fr133, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %.sroa.0188.0.copyload194 = load <3 x float>, ptr %i.ce, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload194, ptr %i.cj, align 4
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150.3, 1 ; 2 uses
  %exitcond154.3.not = icmp eq i64 %indvars.iv.next151.3, %wide.trip.count153.3
  br i1 %exitcond154.3.not, label %..loopexit93_crit_edge.us.3, label %bb.h, !llvm.loop !29

..loopexit93_crit_edge.us.3:                      ; preds = %bb.h, %..loopexit93_crit_edge.us.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 1160 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not91.us.4 = icmp eq ptr %i.cl, null
  br i1 %.not91.us.4, label %..loopexit93_crit_edge.us.4, label %.preheader92.us.4

.preheader92.us.4:                                ; preds = %..loopexit93_crit_edge.us.3
  %wide.trip.count153.4 = zext i32 %.fr133 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader92.us.4
  %indvars.iv150.4 = phi i64 [ 0, %.preheader92.us.4 ], [ %indvars.iv.next151.4, %bb.i ] ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %indvars.iv150.4 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv150.4 to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %.fr133, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %.sroa.0188.0.copyload196 = load <3 x float>, ptr %i.cn, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload196, ptr %i.cs, align 4
  %indvars.iv.next151.4 = add nuw nsw i64 %indvars.iv150.4, 1 ; 2 uses
  %exitcond154.4.not = icmp eq i64 %indvars.iv.next151.4, %wide.trip.count153.4
  br i1 %exitcond154.4.not, label %..loopexit93_crit_edge.us.4, label %bb.i, !llvm.loop !29

..loopexit93_crit_edge.us.4:                      ; preds = %bb.i, %..loopexit93_crit_edge.us.3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 1168 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not91.us.5 = icmp eq ptr %i.cu, null
  br i1 %.not91.us.5, label %..loopexit93_crit_edge.us.5, label %.preheader92.us.5

.preheader92.us.5:                                ; preds = %..loopexit93_crit_edge.us.4
  %wide.trip.count153.5 = zext i32 %.fr133 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader92.us.5
  %indvars.iv150.5 = phi i64 [ 0, %.preheader92.us.5 ], [ %indvars.iv.next151.5, %bb.j ] ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %indvars.iv150.5 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv150.5 to i32
  %i.cy = xor i32 %i.cx, -1
  %i.cz = add i32 %.fr133, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  %.sroa.0188.0.copyload198 = load <3 x float>, ptr %i.cw, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload198, ptr %i.db, align 4
  %indvars.iv.next151.5 = add nuw nsw i64 %indvars.iv150.5, 1 ; 2 uses
  %exitcond154.5.not = icmp eq i64 %indvars.iv.next151.5, %wide.trip.count153.5
  br i1 %exitcond154.5.not, label %..loopexit93_crit_edge.us.5, label %bb.j, !llvm.loop !29

..loopexit93_crit_edge.us.5:                      ; preds = %bb.j, %..loopexit93_crit_edge.us.4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 1176 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not91.us.6 = icmp eq ptr %i.dd, null
  br i1 %.not91.us.6, label %..loopexit93_crit_edge.us.6, label %.preheader92.us.6

.preheader92.us.6:                                ; preds = %..loopexit93_crit_edge.us.5
  %wide.trip.count153.6 = zext i32 %.fr133 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader92.us.6
  %indvars.iv150.6 = phi i64 [ 0, %.preheader92.us.6 ], [ %indvars.iv.next151.6, %bb.k ] ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv150.6 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv150.6 to i32
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %.fr133, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %.sroa.0188.0.copyload200 = load <3 x float>, ptr %i.df, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload200, ptr %i.dk, align 4
  %indvars.iv.next151.6 = add nuw nsw i64 %indvars.iv150.6, 1 ; 2 uses
  %exitcond154.6.not = icmp eq i64 %indvars.iv.next151.6, %wide.trip.count153.6
  br i1 %exitcond154.6.not, label %..loopexit93_crit_edge.us.6, label %bb.k, !llvm.loop !29

..loopexit93_crit_edge.us.6:                      ; preds = %bb.k, %..loopexit93_crit_edge.us.5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 1184 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not91.us.7 = icmp eq ptr %i.dm, null
  br i1 %.not91.us.7, label %.split114.us, label %.preheader92.us.7

.preheader92.us.7:                                ; preds = %..loopexit93_crit_edge.us.6
  %wide.trip.count153.7 = zext i32 %.fr133 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader92.us.7
  %indvars.iv150.7 = phi i64 [ 0, %.preheader92.us.7 ], [ %indvars.iv.next151.7, %bb.l ] ; 3 uses
  %i.dn = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv150.7 ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv150.7 to i32
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %.fr133, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ds ; 2 uses
  %.sroa.0188.0.copyload202 = load <3 x float>, ptr %i.do, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload202, ptr %i.dt, align 4
  %indvars.iv.next151.7 = add nuw nsw i64 %indvars.iv150.7, 1 ; 2 uses
  %exitcond154.7.not = icmp eq i64 %indvars.iv.next151.7, %wide.trip.count153.7
  br i1 %exitcond154.7.not, label %.split114.us, label %bb.l, !llvm.loop !29

.preheader92.us:                                  ; preds = %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader
  %wide.trip.count153 = zext i32 %.fr133 to i64
  br label %bb.e

.split114.us:                                     ; preds = %bb.l, %..loopexit93_crit_edge.us.6
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 1048 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %.not89 = icmp ne ptr %i.dv, null
  %or.cond129 = and i1 %.not89, %i.aj
  br i1 %or.cond129, label %.lr.ph116, label %.loopexit95

.lr.ph116:                                        ; preds = %.split114.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056
  %wide.trip.count162 = zext i32 %.fr133 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph116, %bb.m
  %indvars.iv159 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next160, %bb.m ] ; 4 uses
  %i.dx = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %indvars.iv159 ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv159 to i32
  %i.ea = xor i32 %i.dz, -1
  %i.eb = add i32 %.fr133, %i.ea
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.ec ; 2 uses
  %.sroa.0204.0.copyload = load <3 x float>, ptr %i.dy, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.ed, i64 12, i1 false)
  store <3 x float> %.sroa.0204.0.copyload, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv159 ; 2 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  %.sroa.0206.0.copyload = load <3 x float>, ptr %i.ef, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  store <3 x float> %.sroa.0206.0.copyload, ptr %i.eg, align 4
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit95, label %bb.m, !llvm.loop !30

.loopexit95:                                      ; preds = %bb.m, %.split114.us
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 1064 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not90.us = icmp eq ptr %i.ei, null
  br i1 %.not90.us, label %..loopexit_crit_edge.us, label %.preheader.us

bb.n:                                             ; preds = %.preheader.us, %bb.n
  %indvars.iv164 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next165, %bb.n ] ; 3 uses
  %i.ej = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv164 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv164 to i32
  %i.em = xor i32 %i.el, -1
  %i.en = add i32 %.fr133, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eo ; 2 uses
  %.sroa.0208.0.copyload = load <4 x float>, ptr %i.ek, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload, ptr %i.ep, align 4
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %..loopexit_crit_edge.us, label %bb.n, !llvm.loop !31

..loopexit_crit_edge.us:                          ; preds = %bb.n, %.loopexit95
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ae, i64 1072 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %.not90.us.1 = icmp eq ptr %i.er, null
  br i1 %.not90.us.1, label %..loopexit_crit_edge.us.1, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %..loopexit_crit_edge.us
  %wide.trip.count167.1 = zext i32 %.fr133 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.us.1
  %indvars.iv164.1 = phi i64 [ 0, %.preheader.us.1 ], [ %indvars.iv.next165.1, %bb.o ] ; 3 uses
  %i.es = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv164.1 ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv164.1 to i32
  %i.ev = xor i32 %i.eu, -1
  %i.ew = add i32 %.fr133, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.ex ; 2 uses
  %.sroa.0208.0.copyload210 = load <4 x float>, ptr %i.et, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.ey, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload210, ptr %i.ey, align 4
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164.1, 1 ; 2 uses
  %exitcond168.1.not = icmp eq i64 %indvars.iv.next165.1, %wide.trip.count167.1
  br i1 %exitcond168.1.not, label %..loopexit_crit_edge.us.1, label %bb.o, !llvm.loop !31

..loopexit_crit_edge.us.1:                        ; preds = %bb.o, %..loopexit_crit_edge.us
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1080 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %.not90.us.2 = icmp eq ptr %i.fa, null
  br i1 %.not90.us.2, label %..loopexit_crit_edge.us.2, label %.preheader.us.2

.preheader.us.2:                                  ; preds = %..loopexit_crit_edge.us.1
  %wide.trip.count167.2 = zext i32 %.fr133 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.us.2
  %indvars.iv164.2 = phi i64 [ 0, %.preheader.us.2 ], [ %indvars.iv.next165.2, %bb.p ] ; 3 uses
  %i.fb = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %indvars.iv164.2 ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv164.2 to i32
  %i.fe = xor i32 %i.fd, -1
  %i.ff = add i32 %.fr133, %i.fe
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fg ; 2 uses
  %.sroa.0208.0.copyload212 = load <4 x float>, ptr %i.fc, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.fh, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload212, ptr %i.fh, align 4
  %indvars.iv.next165.2 = add nuw nsw i64 %indvars.iv164.2, 1 ; 2 uses
  %exitcond168.2.not = icmp eq i64 %indvars.iv.next165.2, %wide.trip.count167.2
  br i1 %exitcond168.2.not, label %..loopexit_crit_edge.us.2, label %bb.p, !llvm.loop !31

..loopexit_crit_edge.us.2:                        ; preds = %bb.p, %..loopexit_crit_edge.us.1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ae, i64 1088 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %.not90.us.3 = icmp eq ptr %i.fj, null
  br i1 %.not90.us.3, label %..loopexit_crit_edge.us.3, label %.preheader.us.3

.preheader.us.3:                                  ; preds = %..loopexit_crit_edge.us.2
  %wide.trip.count167.3 = zext i32 %.fr133 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.3
  %indvars.iv164.3 = phi i64 [ 0, %.preheader.us.3 ], [ %indvars.iv.next165.3, %bb.q ] ; 3 uses
  %i.fk = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv164.3 ; 2 uses
  %i.fm = trunc nuw i64 %indvars.iv164.3 to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = add i32 %.fr133, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  %.sroa.0208.0.copyload214 = load <4 x float>, ptr %i.fl, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fl, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload214, ptr %i.fq, align 4
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164.3, 1 ; 2 uses
  %exitcond168.3.not = icmp eq i64 %indvars.iv.next165.3, %wide.trip.count167.3
  br i1 %exitcond168.3.not, label %..loopexit_crit_edge.us.3, label %bb.q, !llvm.loop !31

..loopexit_crit_edge.us.3:                        ; preds = %bb.q, %..loopexit_crit_edge.us.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ae, i64 1096 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %.not90.us.4 = icmp eq ptr %i.fs, null
  br i1 %.not90.us.4, label %..loopexit_crit_edge.us.4, label %.preheader.us.4

.preheader.us.4:                                  ; preds = %..loopexit_crit_edge.us.3
  %wide.trip.count167.4 = zext i32 %.fr133 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.us.4
  %indvars.iv164.4 = phi i64 [ 0, %.preheader.us.4 ], [ %indvars.iv.next165.4, %bb.r ] ; 3 uses
  %i.ft = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv164.4 ; 2 uses
  %i.fv = trunc nuw i64 %indvars.iv164.4 to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = add i32 %.fr133, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fy ; 2 uses
  %.sroa.0208.0.copyload216 = load <4 x float>, ptr %i.fu, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fu, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload216, ptr %i.fz, align 4
  %indvars.iv.next165.4 = add nuw nsw i64 %indvars.iv164.4, 1 ; 2 uses
  %exitcond168.4.not = icmp eq i64 %indvars.iv.next165.4, %wide.trip.count167.4
  br i1 %exitcond168.4.not, label %..loopexit_crit_edge.us.4, label %bb.r, !llvm.loop !31

..loopexit_crit_edge.us.4:                        ; preds = %bb.r, %..loopexit_crit_edge.us.3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ae, i64 1104 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %.not90.us.5 = icmp eq ptr %i.gb, null
  br i1 %.not90.us.5, label %..loopexit_crit_edge.us.5, label %.preheader.us.5

.preheader.us.5:                                  ; preds = %..loopexit_crit_edge.us.4
  %wide.trip.count167.5 = zext i32 %.fr133 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.5
  %indvars.iv164.5 = phi i64 [ 0, %.preheader.us.5 ], [ %indvars.iv.next165.5, %bb.s ] ; 3 uses
  %i.gc = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv164.5 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv164.5 to i32
  %i.gf = xor i32 %i.ge, -1
  %i.gg = add i32 %.fr133, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  %.sroa.0208.0.copyload218 = load <4 x float>, ptr %i.gd, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %i.gi, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload218, ptr %i.gi, align 4
  %indvars.iv.next165.5 = add nuw nsw i64 %indvars.iv164.5, 1 ; 2 uses
  %exitcond168.5.not = icmp eq i64 %indvars.iv.next165.5, %wide.trip.count167.5
  br i1 %exitcond168.5.not, label %..loopexit_crit_edge.us.5, label %bb.s, !llvm.loop !31

..loopexit_crit_edge.us.5:                        ; preds = %bb.s, %..loopexit_crit_edge.us.4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1112 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8
  %.not90.us.6 = icmp eq ptr %i.gk, null
  br i1 %.not90.us.6, label %..loopexit_crit_edge.us.6, label %.preheader.us.6

.preheader.us.6:                                  ; preds = %..loopexit_crit_edge.us.5
  %wide.trip.count167.6 = zext i32 %.fr133 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.us.6
  %indvars.iv164.6 = phi i64 [ 0, %.preheader.us.6 ], [ %indvars.iv.next165.6, %bb.t ] ; 3 uses
  %i.gl = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv164.6 ; 2 uses
  %i.gn = trunc nuw i64 %indvars.iv164.6 to i32
  %i.go = xor i32 %i.gn, -1
  %i.gp = add i32 %.fr133, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gq ; 2 uses
  %.sroa.0208.0.copyload220 = load <4 x float>, ptr %i.gm, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload220, ptr %i.gr, align 4
  %indvars.iv.next165.6 = add nuw nsw i64 %indvars.iv164.6, 1 ; 2 uses
  %exitcond168.6.not = icmp eq i64 %indvars.iv.next165.6, %wide.trip.count167.6
  br i1 %exitcond168.6.not, label %..loopexit_crit_edge.us.6, label %bb.t, !llvm.loop !31

..loopexit_crit_edge.us.6:                        ; preds = %bb.t, %..loopexit_crit_edge.us.5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 1120 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  %.not90.us.7 = icmp eq ptr %i.gt, null
  br i1 %.not90.us.7, label %.split123.us, label %.preheader.us.7

.preheader.us.7:                                  ; preds = %..loopexit_crit_edge.us.6
  %wide.trip.count167.7 = zext i32 %.fr133 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.7
  %indvars.iv164.7 = phi i64 [ 0, %.preheader.us.7 ], [ %indvars.iv.next165.7, %bb.u ] ; 3 uses
  %i.gu = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %indvars.iv164.7 ; 2 uses
  %i.gw = trunc nuw i64 %indvars.iv164.7 to i32
  %i.gx = xor i32 %i.gw, -1
  %i.gy = add i32 %.fr133, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gz ; 2 uses
  %.sroa.0208.0.copyload222 = load <4 x float>, ptr %i.gv, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gv, ptr noundef nonnull align 4 dereferenceable(16) %i.ha, i64 16, i1 false)
  store <4 x float> %.sroa.0208.0.copyload222, ptr %i.ha, align 4
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164.7, 1 ; 2 uses
  %exitcond168.7.not = icmp eq i64 %indvars.iv.next165.7, %wide.trip.count167.7
  br i1 %exitcond168.7.not, label %.split123.us, label %bb.u, !llvm.loop !31

.preheader.us:                                    ; preds = %.loopexit95
  %wide.trip.count167 = zext i32 %.fr133 to i64
  br label %bb.n

.split123.us:                                     ; preds = %bb.u, %.loopexit97, %..loopexit_crit_edge.us.6
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.hb = load i32, ptr %i.d, align 8
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next174, %i.hc
  br i1 %i.hd, label %bb.d, label %._crit_edge127, !llvm.loop !32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp21MakeLeftHandedProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp23FlipWindingOrderProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = distinct !{!1, !7}
!2 = distinct !{!2, !7}
!3 = distinct !{!3, !7}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
end_hunk_0
