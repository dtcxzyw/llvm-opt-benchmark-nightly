inline.NumInlined: 162
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_mpi_write_string:bb.a
  store i8 %i.bs, ptr %.3.1161, align 1, !tbaa !21
  %i.bu = and i64 %i.bo, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.3.1161, i64 2
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !21
  %.pre117 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert118 = getelementptr [8 x i8], ptr %.pre117, i64 %.04496
  %.phi.trans.insert119 = getelementptr i8, ptr %.phi.trans.insert118, i64 -8
  %.pre120 = load i64, ptr %.phi.trans.insert119, align 8, !tbaa !13
  %i.by = lshr i64 %.pre120, 32                   ; 2 uses
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 255
  br label %.thread172

bb.j:                                             ; preds = %bb.i
  %i.cb = lshr i64 %i.ac, 32                      ; 2 uses
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 255                      ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 0
  %.not60.3 = icmp eq i64 %.04496, -3
  %i.cf = or i1 %i.ce, %.not60.3
  br i1 %i.cf, label %.thread172, label %bb.k

.thread172:                                       ; preds = %bb.j, %.thread164
  %i.cg = phi i32 [ %i.ca, %.thread164 ], [ %i.cd, %bb.j ]
  %i.ch = phi i64 [ %i.by, %.thread164 ], [ %i.cb, %bb.j ]
  %.3.2169 = phi ptr [ %i.bx, %.thread164 ], [ %.17095, %bb.j ] ; 3 uses
  %i.ci = lshr i32 %i.cg, 4
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.3.2169, i64 1
  store i8 %i.cl, ptr %.3.2169, align 1, !tbaa !21
  %i.cn = and i64 %i.ch, 15
  %i.co = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.3.2169, i64 2
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !21
  %.pre121 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert122 = getelementptr [8 x i8], ptr %.pre121, i64 %.04496
  %.phi.trans.insert123 = getelementptr i8, ptr %.phi.trans.insert122, i64 -8
  %.pre124 = load i64, ptr %.phi.trans.insert123, align 8, !tbaa !13
  %i.cr = lshr i64 %.pre124, 24                   ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 255
  br label %.thread180

bb.k:                                             ; preds = %bb.j
  %i.cu = lshr i64 %i.ac, 24                      ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 255                      ; 2 uses
  %i.cx = icmp ne i32 %i.cw, 0
  %.not60.4 = icmp eq i64 %.04496, -2
  %i.cy = or i1 %i.cx, %.not60.4
  br i1 %i.cy, label %.thread180, label %bb.l

.thread180:                                       ; preds = %bb.k, %.thread172
  %i.cz = phi i32 [ %i.ct, %.thread172 ], [ %i.cw, %bb.k ]
  %i.da = phi i64 [ %i.cr, %.thread172 ], [ %i.cu, %bb.k ]
  %.3.3177 = phi ptr [ %i.cq, %.thread172 ], [ %.17095, %bb.k ] ; 3 uses
  %i.db = lshr i32 %i.cz, 4
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.3.3177, i64 1
  store i8 %i.de, ptr %.3.3177, align 1, !tbaa !21
  %i.dg = and i64 %i.da, 15
  %i.dh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %.3.3177, i64 2
  store i8 %i.di, ptr %i.df, align 1, !tbaa !21
  %.pre125 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert126 = getelementptr [8 x i8], ptr %.pre125, i64 %.04496
  %.phi.trans.insert127 = getelementptr i8, ptr %.phi.trans.insert126, i64 -8
  %.pre128 = load i64, ptr %.phi.trans.insert127, align 8, !tbaa !13
  %i.dk = lshr i64 %.pre128, 16                   ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 255
  br label %.thread188

bb.l:                                             ; preds = %bb.k
  %i.dn = lshr i64 %i.ac, 16                      ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.do, 255                      ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  %.not60.5 = icmp eq i64 %.04496, -1
  %i.dr = or i1 %i.dq, %.not60.5
  br i1 %i.dr, label %.thread188, label %bb.m

.thread188:                                       ; preds = %bb.l, %.thread180
  %i.ds = phi i32 [ %i.dm, %.thread180 ], [ %i.dp, %bb.l ]
  %i.dt = phi i64 [ %i.dk, %.thread180 ], [ %i.dn, %bb.l ]
  %.3.4185 = phi ptr [ %i.dj, %.thread180 ], [ %.17095, %bb.l ] ; 3 uses
  %i.du = lshr i32 %i.ds, 4
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %.3.4185, i64 1
  store i8 %i.dx, ptr %.3.4185, align 1, !tbaa !21
  %i.dz = and i64 %i.dt, 15
  %i.ea = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.3.4185, i64 2
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !21
  %.pre129 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert130 = getelementptr [8 x i8], ptr %.pre129, i64 %.04496
  %.phi.trans.insert131 = getelementptr i8, ptr %.phi.trans.insert130, i64 -8
  %.pre132 = load i64, ptr %.phi.trans.insert131, align 8, !tbaa !13
  %i.ed = lshr i64 %.pre132, 8                    ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 255
  br label %.thread195

bb.m:                                             ; preds = %bb.l
  %i.eg = lshr i64 %i.ac, 8                       ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 255                      ; 2 uses
  %.not214 = icmp eq i32 %i.ei, 0
  br i1 %.not214, label %bb.n, label %.thread195

.thread195:                                       ; preds = %bb.m, %.thread188
  %i.ej = phi i32 [ %i.ef, %.thread188 ], [ %i.ei, %bb.m ]
  %i.ek = phi i64 [ %i.ed, %.thread188 ], [ %i.eg, %bb.m ]
  %.3.5192 = phi ptr [ %i.ec, %.thread188 ], [ %.17095, %bb.m ] ; 3 uses
  %i.el = lshr i32 %i.ej, 4
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @.str, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %.3.5192, i64 1
  store i8 %i.eo, ptr %.3.5192, align 1, !tbaa !21
  %i.eq = and i64 %i.ek, 15
  %i.er = getelementptr inbounds nuw i8, ptr @.str, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %.3.5192, i64 2
  store i8 %i.es, ptr %i.ep, align 1, !tbaa !21
  %.pre133 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert134 = getelementptr [8 x i8], ptr %.pre133, i64 %.04496
  %.phi.trans.insert135 = getelementptr i8, ptr %.phi.trans.insert134, i64 -8
  %.pre136 = load i64, ptr %.phi.trans.insert135, align 8, !tbaa !13 ; 2 uses
  %i.eu = trunc i64 %.pre136 to i32
  %i.ev = and i32 %i.eu, 255
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ew = trunc i64 %i.ac to i32
  %i.ex = and i32 %i.ew, 255                      ; 2 uses
  %i.ey = icmp ne i32 %i.ex, 0
  %.not60.7 = icmp eq i64 %.04496, 1
  %i.ez = or i1 %i.ey, %.not60.7
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread195, %bb.n
  %i.fa = phi i32 [ %i.ev, %.thread195 ], [ %i.ex, %bb.n ]
  %.3.6200 = phi ptr [ %i.et, %.thread195 ], [ %.17095, %bb.n ] ; 3 uses
  %i.fb = phi i64 [ %.pre136, %.thread195 ], [ %i.ac, %bb.n ]
  %i.fc = lshr i32 %i.fa, 4
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %.3.6200, i64 1
  store i8 %i.ff, ptr %.3.6200, align 1, !tbaa !21
  %i.fh = and i64 %i.fb, 15
  %i.fi = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.6200, i64 2
  store i8 %i.fj, ptr %i.fg, align 1, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.7 = phi ptr [ %i.fk, %bb.o ], [ %.17095, %bb.n ] ; 2 uses
  %.2.7 = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.fl = add nsw i64 %.04496, -1                 ; 2 uses
  %.not58 = icmp eq i64 %i.fl, 0
  br i1 %.not58, label %.loopexit, label %.preheader, !llvm.loop !25

bb.q:                                             ; preds = %bb.f
  %i.fm = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.fm, 0
  br i1 %.not, label %bb.r, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.fn = load i16, ptr %i.p, align 8, !tbaa !12  ; 2 uses
  %i.fo = icmp eq i16 %i.fn, -1
  %spec.store.select = select i1 %i.fo, i16 1, i16 %i.fn ; 2 uses
  store i16 %spec.store.select, ptr %i.p, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.069, i64 %.050 ; 2 uses
  %i.fq = zext nneg i32 %1 to i64                 ; 5 uses
  %i.fr = icmp eq i32 %1, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %exitcond58.not.i232 = icmp eq i64 %.050, 0     ; 2 uses
  br i1 %i.fr, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  br i1 %exitcond58.not.i232, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread, label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.r
  br i1 %exitcond58.not.i232, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread, label %.lr.ph235

.split.us.i:                                      ; preds = %mbedtls_mpi_cmp_int.exit.us.i.a
  %exitcond58.not.i = icmp eq i64 %i.gd, %.050
  br i1 %exitcond58.not.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread, label %.lr.ph235, !llvm.loop !26

.lr.ph235:                                        ; preds = %.split.us.i.preheader, %.split.us.i
  %.0.us.i234 = phi ptr [ %i.gc, %.split.us.i ], [ %i.fp, %.split.us.i.preheader ]
  %.019.us.i233 = phi i64 [ %i.gd, %.split.us.i ], [ 0, %.split.us.i.preheader ]
  %i.fu = load i16, ptr %i.q, align 2, !tbaa !7
  %i.fv = icmp eq i16 %i.fu, 0
  br i1 %i.fv, label %mbedtls_mpi_mod_int.exit.us.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph235
  %i.fw = load ptr, ptr %6, align 8, !tbaa !15
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !13
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = and i8 %i.fy, 1
  %i.ga = or disjoint i8 %i.fz, 48
  br label %mbedtls_mpi_mod_int.exit.us.i

mbedtls_mpi_mod_int.exit.us.i:                    ; preds = %bb.s, %.lr.ph235
  %spec.select.sink.i.us.i = phi i8 [ 48, %.lr.ph235 ], [ %i.ga, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !13
  store i16 1, ptr %i.fs, align 8, !tbaa !12
  store i16 1, ptr %i.ft, align 2, !tbaa !7
  store ptr %i.a, ptr %5, align 8, !tbaa !15
  %i.gb = call range(i32 -16, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.not28.us.i = icmp eq i32 %i.gb, 0
  br i1 %.not28.us.i, label %bb.t, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread

bb.t:                                             ; preds = %mbedtls_mpi_mod_int.exit.us.i
  %i.gc = getelementptr inbounds i8, ptr %.0.us.i234, i64 -1 ; 5 uses
  store i8 %spec.select.sink.i.us.i, ptr %i.gc, align 1, !tbaa !21
  %i.gd = add i64 %.019.us.i233, 1                ; 5 uses
  %i.ge = load i16, ptr %i.q, align 2, !tbaa !7   ; 2 uses
  %.not44.i.i.us.i = icmp eq i16 %i.ge, 0
  br i1 %.not44.i.i.us.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.t
  %i.gf = zext i16 %i.ge to i64
  %i.gg = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i.us.i
  %.03545.i.i.us.i = phi i64 [ %i.gf, %.lr.ph.i.i.us.i ], [ %8, %bb.v ] ; 2 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %.03545.i.i.us.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !13
  %.not39.i.i.us.i = icmp eq i64 %i.gj, 0
  br i1 %.not39.i.i.us.i, label %bb.v, label %mbedtls_mpi_cmp_int.exit.us.i.a

mbedtls_mpi_cmp_int.exit.us.i.a:                  ; preds = %bb.u
  %7 = load i16, ptr %i.p, align 8, !tbaa !12
  %.not29.us.i.a = icmp eq i16 %7, 0
  br i1 %.not29.us.i.a, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %.split.us.i, !llvm.loop !26

bb.v:                                             ; preds = %bb.u
  %8 = add nsw i64 %.03545.i.i.us.i, -1           ; 2 uses
  %.not.i.i.us.i = icmp eq i64 %8, 0
  br i1 %.not.i.i.us.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %bb.u, !llvm.loop !27

.split.i:                                         ; preds = %mbedtls_mpi_cmp_int.exit.i
  %exitcond.not.i = icmp eq i64 %i.hi, %.050
  br i1 %exitcond.not.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread, label %.lr.ph, !llvm.loop !26

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.i
  %.0.i230 = phi ptr [ %i.hf, %.split.i ], [ %i.fp, %.split.i.preheader ]
  %.019.i229 = phi i64 [ %i.hi, %.split.i ], [ 0, %.split.i.preheader ]
  %i.gk = phi i16 [ %i.hq, %.split.i ], [ %spec.store.select, %.split.i.preheader ]
  %i.gl = load i16, ptr %i.q, align 2, !tbaa !7   ; 2 uses
  %i.gm = icmp eq i16 %i.gl, 0
  br i1 %i.gm, label %mbedtls_mpi_mod_int.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.gn = zext i16 %i.gl to i64
  %i.go = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.03542.i.i = phi i64 [ 0, %bb.w ], [ %i.gx, %bb.x ]
  %.03641.i.i = phi i64 [ %i.gn, %bb.w ], [ %i.gy, %bb.x ] ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.go, i64 %.03641.i.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !13
  %.fr40.i.i = freeze i64 %i.gr                   ; 2 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %.03542.i.i, i64 %.fr40.i.i, i64 32)
  %i.gt = urem i64 %i.gs, %i.fq
  %i.gu = and i64 %.fr40.i.i, 4294967295
  %i.gv = shl nuw nsw i64 %i.gt, 32
  %i.gw = or disjoint i64 %i.gv, %i.gu
  %i.gx = urem i64 %i.gw, %i.fq                   ; 4 uses
  %i.gy = add nsw i64 %.03641.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x, !llvm.loop !28

bb.y:                                             ; preds = %bb.x
  %i.gz = icmp slt i16 %i.gk, 0
  %i.ha = icmp ne i64 %i.gx, 0
  %or.cond.i.i = select i1 %i.gz, i1 %i.ha, i1 false
  %i.hb = sub nsw i64 %i.fq, %i.gx
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.hb, i64 %i.gx
  br label %mbedtls_mpi_mod_int.exit.i

mbedtls_mpi_mod_int.exit.i:                       ; preds = %bb.y, %.lr.ph
  %spec.select.sink.i.i = phi i64 [ %spec.select.i.i, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !13
  store i16 1, ptr %i.fs, align 8, !tbaa !12
  store i16 1, ptr %i.ft, align 2, !tbaa !7
  store ptr %i.a, ptr %5, align 8, !tbaa !15
  %i.hc = call range(i32 -16, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.not28.i = icmp eq i32 %i.hc, 0
  br i1 %.not28.i, label %bb.z, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread

bb.z:                                             ; preds = %mbedtls_mpi_mod_int.exit.i
  %i.hd = icmp ult i64 %spec.select.sink.i.i, 10
  %i.he = trunc nsw i64 %spec.select.sink.i.i to i8 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.0.i230, i64 -1 ; 5 uses
  %i.hg = add nsw i8 %i.he, 55
  %i.hh = or disjoint i8 %i.he, 48
  %.sink.i = select i1 %i.hd, i8 %i.hh, i8 %i.hg
  store i8 %.sink.i, ptr %i.hf, align 1, !tbaa !21
  %i.hi = add i64 %.019.i229, 1                   ; 5 uses
  %i.hj = load i16, ptr %i.q, align 2, !tbaa !7   ; 2 uses
  %.not44.i.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not44.i.i.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.hk = zext i16 %i.hj to i64
  %i.hl = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i
  %.03545.i.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i ], [ %i.hp, %bb.ab ] ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %.03545.i.i.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !13
  %.not39.i.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not39.i.i.i, label %bb.ab, label %mbedtls_mpi_cmp_int.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.hp = add nsw i64 %.03545.i.i.i, -1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %bb.aa, !llvm.loop !27

mbedtls_mpi_cmp_int.exit.i:                       ; preds = %bb.aa
  %i.hq = load i16, ptr %i.p, align 8, !tbaa !12  ; 2 uses
  %.not29.i = icmp eq i16 %i.hq, 0
  br i1 %.not29.i, label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit, label %.split.i, !llvm.loop !26

_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit:       ; preds = %bb.z, %mbedtls_mpi_cmp_int.exit.i, %bb.ab, %bb.t, %mbedtls_mpi_cmp_int.exit.us.i.a, %bb.v
  %.139.i = phi ptr [ %i.gc, %bb.v ], [ %i.hf, %bb.ab ], [ %i.gc, %bb.t ], [ %i.gc, %mbedtls_mpi_cmp_int.exit.us.i.a ], [ %i.hf, %mbedtls_mpi_cmp_int.exit.i ], [ %i.hf, %bb.z ]
  %i.hr = phi i64 [ %i.gd, %bb.v ], [ %i.hi, %bb.ab ], [ %i.gd, %bb.t ], [ %i.gd, %mbedtls_mpi_cmp_int.exit.us.i.a ], [ %i.hi, %mbedtls_mpi_cmp_int.exit.i ], [ %i.hi, %bb.z ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.069, ptr noundef nonnull align 1 dereferenceable(1) %.139.i, i64 %i.hr, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.069, i64 %i.hr
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.g, %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit
  %.4 = phi ptr [ %i.hs, %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit ], [ %.069, %bb.g ], [ %.3.7, %bb.p ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 0, ptr %.4, align 1, !tbaa !21
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %2 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  store i64 %i.hw, ptr %4, align 8, !tbaa !13
  br label %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread

_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread: ; preds = %mbedtls_mpi_mod_int.exit.i, %.split.i, %.split.us.i, %mbedtls_mpi_mod_int.exit.us.i, %.split.i.preheader, %.split.us.i.preheader, %bb.q, %.loopexit
  %.149 = phi i32 [ 0, %.loopexit ], [ %i.fm, %bb.q ], [ -8, %.split.i.preheader ], [ -8, %.split.us.i.preheader ], [ %i.gb, %mbedtls_mpi_mod_int.exit.us.i ], [ -8, %.split.us.i ], [ %i.hc, %mbedtls_mpi_mod_int.exit.i ], [ -8, %.split.i ] ; 2 uses
  %i.hx = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i = icmp eq ptr %i.hx, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread
  %i.hy = load i16, ptr %i.q, align 2, !tbaa !7
  %i.hz = zext i16 %i.hy to i64
  %i.ia = shl nuw nsw i64 %i.hz, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.hx, i64 noundef %i.ia)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ac, %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread, %bb.a, %bb.c
  %.045 = phi i32 [ -4, %bb.a ], [ -8, %bb.c ], [ %.149, %_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm.exit.thread ], [ %.149, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.045
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_read_binary_le(ptr nofree noundef captures(none) initializes((8, 10)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 3
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre11, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !7
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %.pre11, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.l, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !7
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp eq i64 %i.e, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !12
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %.not.i11.i = icmp eq ptr %i.q, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i64 %i.o, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.q, i64 noundef %i.t)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !12
  store i16 0, ptr %i.m, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.v = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.v, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.i

bb.i:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.w = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #13 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = trunc nuw nsw i64 %i.e to i16
  store i16 %i.y, ptr %i.m, align 2, !tbaa !7
  store ptr %i.w, ptr %0, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.j
  %i.z = phi ptr [ null, %bb.d ], [ %.pre, %bb.f ], [ %i.w, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !7
  %i.ac = zext i16 %i.ab to i64
  %i.ad = tail call noundef i32 @_Z24mbedtls_mpi_core_read_lePmmPKhm(ptr noundef %i.z, i64 noundef %i.ac, ptr noundef %1, i64 noundef %2)
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit: ; preds = %bb.i, %mbedtls_mpi_free.exit12.i, %bb.k
  %.0 = phi i32 [ %i.ad, %bb.k ], [ -16, %mbedtls_mpi_free.exit12.i ], [ -16, %bb.i ]
  ret i32 %.0
}

declare noundef i32 @_Z24mbedtls_mpi_core_read_lePmmPKhm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_read_binary(ptr nofree noundef captures(none) initializes((8, 10)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 3
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !15  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre11, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !7
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %.pre11, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.l, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !7
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp eq i64 %i.e, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !12
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %.not.i11.i = icmp eq ptr %i.q, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i64 %i.o, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.q, i64 noundef %i.t)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !12
  store i16 0, ptr %i.m, align 2, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.v = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.v, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.i

bb.i:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.w = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #13 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = trunc nuw nsw i64 %i.e to i16
  store i16 %i.y, ptr %i.m, align 2, !tbaa !7
  store ptr %i.w, ptr %0, align 8, !tbaa !15
  br label %bb.k

end_hunk_0
