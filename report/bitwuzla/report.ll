Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/report?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7CaDiCaL8Internal6reportEci:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !229
  %i.ar = sitofp i64 %i.aq to double
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 3, double noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.as, ptr noundef nonnull align 8 dereferenceable(44) %8, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.au = load i64, ptr %i.at, align 8, !tbaa !230
  %i.av = sitofp i64 %i.au to double
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 4, double noundef %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.aw, ptr noundef nonnull align 8 dereferenceable(44) %9, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !231
  %i.az = sitofp i64 %i.ay to double
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %10, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 4, double noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ba, ptr noundef nonnull align 8 dereferenceable(44) %10, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !227
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !232 ; 2 uses
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fmul double %i.bc, 1.000000e+02
  %.not118 = icmp eq i32 %i.be, 0
  %i.bh = fdiv double %i.bg, %i.bf
  %i.bi = select i1 %.not118, double 0.000000e+00, double %i.bh
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %11, ptr noundef nonnull @.str.16, i32 noundef -1, i32 noundef 2, double noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.bj, ptr noundef nonnull align 8 dereferenceable(44) %11, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !227
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1, double noundef %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.bm, ptr noundef nonnull align 8 dereferenceable(44) %12, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !233
  %i.bp = sitofp i64 %i.bo to double
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %13, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 4, double noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.bq, ptr noundef nonnull align 8 dereferenceable(44) %13, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5544 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !234
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = sitofp i32 %i.bt to double
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %14, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 3, double noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.bv, ptr noundef nonnull align 8 dereferenceable(44) %14, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !234
  %i.bx = trunc i64 %i.bw to i32
  %i.by = sitofp i32 %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !235
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !254 ; 2 uses
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fmul nnan double %i.by, 1.000000e+02
  %.not119 = icmp eq i32 %i.cc, 0
  %i.cf = fdiv double %i.ce, %i.cd
  %i.cg = select i1 %.not119, double 0.000000e+00, double %i.cf
  call void @_ZN7CaDiCaL6ReportC1EPKciid(ptr noundef nonnull align 8 dereferenceable(44) %15, ptr noundef nonnull @.str.20, i32 noundef -1, i32 noundef 2, double noundef %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 528 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.ch, ptr noundef nonnull align 8 dereferenceable(44) %15, i64 44, i1 false), !tbaa.struct !226
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2896 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !255 ; 2 uses
  %.not85 = icmp eq i64 %i.cj, 0
  br i1 %.not85, label %.preheader120, label %bb.s

.preheader120:                                    ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.cl = call i32 @fputc(i32 noundef 10, ptr noundef %i.ck) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #13
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sdiv i32 %i.cp, 2
  %i.cr = add nsw i32 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !12
  %i.ct = add nsw i32 %i.co, 5                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cu) #13
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = sdiv i32 %i.cx, 2
  %i.cz = add nsw i32 %i.cy, %i.ct
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !12
  %i.db = add nsw i32 %i.cx, %i.ct                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #13
  %i.de = trunc i64 %i.dd to i32
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dg = sdiv i32 %i.df, 2
  %i.dh = add nsw i32 %i.dg, %i.db
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !12
  %i.dj = add nsw i32 %i.df, %i.db                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.dl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #13
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  %i.do = sdiv i32 %i.dn, 2
  %i.dp = add nsw i32 %i.do, %i.dj
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !12
  %i.dr = add nsw i32 %i.dn, %i.dj                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #13
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add nsw i32 %i.du, 1                    ; 2 uses
  %i.dw = sdiv i32 %i.dv, 2
  %i.dx = add nsw i32 %i.dw, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !12
  %i.dz = add nsw i32 %i.dv, %i.dr                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.eb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ea) #13
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  %i.ee = sdiv i32 %i.ed, 2
  %i.ef = add nsw i32 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !12
  %i.eh = add nsw i32 %i.ed, %i.dz                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ei) #13
  %i.ek = trunc i64 %i.ej to i32
  %i.el = add nsw i32 %i.ek, 1                    ; 2 uses
  %i.em = sdiv i32 %i.el, 2
  %i.en = add nsw i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 2 uses
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !12
  %i.ep = add nsw i32 %i.el, %i.eh                ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #13
  %i.es = trunc i64 %i.er to i32
  %i.et = add nsw i32 %i.es, 1                    ; 2 uses
  %i.eu = sdiv i32 %i.et, 2
  %i.ev = add nsw i32 %i.eu, %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 8, !tbaa !12
  %i.ex = add nsw i32 %i.et, %i.ep                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ez = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #13
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, 1                    ; 2 uses
  %i.fc = sdiv i32 %i.fb, 2
  %i.fd = add nsw i32 %i.fc, %i.ex
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 2 uses
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !12
  %i.ff = add nsw i32 %i.fb, %i.ex                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.fh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fg) #13
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = add nsw i32 %i.fi, 1                    ; 2 uses
  %i.fk = sdiv i32 %i.fj, 2
  %i.fl = add nsw i32 %i.fk, %i.ff
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 2 uses
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !12
  %i.fn = add nsw i32 %i.fj, %i.ff                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.fp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fo) #13
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, 1                    ; 2 uses
  %i.fs = sdiv i32 %i.fr, 2
  %i.ft = add nsw i32 %i.fs, %i.fn
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 2 uses
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !12
  %i.fv = add nsw i32 %i.fr, %i.fn                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #13
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add nsw i32 %i.fy, 1                    ; 2 uses
  %i.ga = sdiv i32 %i.fz, 2
  %i.gb = add nsw i32 %i.ga, %i.fv
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 568 ; 2 uses
  store i32 %i.gb, ptr %i.gc, align 8, !tbaa !12
  %i.gd = add nsw i32 %i.fz, %i.fv                ; 4 uses
  %i.ge = add i32 %i.gd, 20                       ; 2 uses
  %i.gf = icmp slt i32 %i.gd, -20
  %narrow = select i1 %i.gf, i32 -1, i32 %i.ge
  %i.gg = sext i32 %narrow to i64
  %i.gh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gg) #15 ; 118 uses
  %i.gi = icmp sgt i32 %i.gd, -20                 ; 3 uses
  %i.gj = add i32 %i.gd, 19
  %smax = call i32 @llvm.smax.i32(i32 %i.ge, i32 1)
  %i.gk = zext nneg i32 %smax to i64              ; 3 uses
  %i.gl = sext i32 %i.gj to i64                   ; 3 uses
  br i1 %i.gi, label %.lr.ph.preheader, label %.lr.ph125.preheader

.lr.ph.preheader:                                 ; preds = %.preheader120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gh, i8 32, i64 %i.gk, i1 false), !tbaa !13
  br label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader120, %.lr.ph.preheader
  %i.gm = load ptr, ptr %3, align 16, !tbaa !11   ; 9 uses
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gm) #13 ; 6 uses
  %i.go = trunc i64 %i.gn to i32                  ; 3 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %.lr.ph.preheader.i, label %_ZN7CaDiCaL6Report12print_headerEPc.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph125.preheader
  %i.gq = load i32, ptr %i.cs, align 8, !tbaa !12
  %i.gr = add nuw nsw i32 %i.go, 1
  %.neg15.i = lshr i32 %i.gr, 1
  %reass.sub = sub i32 %i.gq, %.neg15.i
  %i.gs = add i32 %reass.sub, -3
  %i.gt = sext i32 %i.gs to i64                   ; 8 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gh, i64 %i.gt
  store i8 32, ptr %i.gu, align 1, !tbaa !13
  %exitcond.peel.not.i = icmp eq i32 %i.go, 0
  br i1 %exitcond.peel.not.i, label %_ZN7CaDiCaL6Report12print_headerEPc.exit, label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader.i
  %i.gv = and i64 %i.gn, 2147483647               ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.gv, 8
  br i1 %min.iters.check, label %.lr.ph.peel.next.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %16 = ptrtoaddr ptr %i.gh to i64
  %17 = ptrtoaddr ptr %i.gm to i64
  %i.gw = add i64 %16, %i.gt
  %i.gx = sub i64 %i.gw, %17
  %diff.check = icmp ult i64 %i.gx, 31
  br i1 %diff.check, label %.lr.ph.peel.next.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check195 = icmp samesign ult i64 %i.gv, 32
  br i1 %min.iters.check195, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gy = and i64 %i.gn, 24
  %n.vec = and i64 %i.gn, 2147483616              ; 5 uses
  %i.gz = add nsw i64 %n.vec, %i.gt
  %invariant.gep = getelementptr i8, ptr %i.gh, i64 %i.gt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 %index ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load = load <16 x i8>, ptr %i.ha, align 1, !tbaa !13
  %wide.load196 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !13
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hc = getelementptr i8, ptr %gep, i64 1
  %i.hd = getelementptr i8, ptr %gep, i64 17
  store <16 x i8> %wide.load, ptr %i.hc, align 1, !tbaa !13
  store <16 x i8> %wide.load196, ptr %i.hd, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %_ZN7CaDiCaL6Report12print_headerEPc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.peel.next.i.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec197 = and i64 %i.gn, 2147483640           ; 4 uses
  %i.hf = add nsw i64 %n.vec197, %i.gt
  %invariant.gep614 = getelementptr i8, ptr %i.gh, i64 %i.gt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index198 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next200, %vec.epilog.vector.body ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 %index198
  %wide.load199 = load <8 x i8>, ptr %i.hg, align 1, !tbaa !13
  %gep615 = getelementptr i8, ptr %invariant.gep614, i64 %index198
  %i.hh = getelementptr i8, ptr %gep615, i64 1
  store <8 x i8> %wide.load199, ptr %i.hh, align 1, !tbaa !13
  %index.next200 = add nuw i64 %index198, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next200, %n.vec197
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n201 = icmp eq i64 %i.gv, %n.vec197
  br i1 %cmp.n201, label %_ZN7CaDiCaL6Report12print_headerEPc.exit, label %.lr.ph.peel.next.i.preheader

.lr.ph.peel.next.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec197, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.in.i.ph = phi i64 [ %i.gt, %iter.check ], [ %i.gt, %vector.memcheck ], [ %i.gz, %vec.epilog.iter.check ], [ %i.hf, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %i.gn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.peel.next.i.prol.loopexit, label %.lr.ph.peel.next.i.prol

.lr.ph.peel.next.i.prol:                          ; preds = %.lr.ph.peel.next.i.preheader, %.lr.ph.peel.next.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.peel.next.i.prol ], [ %indvars.iv.ph, %.lr.ph.peel.next.i.preheader ] ; 2 uses
  %indvars.iv.in.i.prol = phi i64 [ %indvars.iv.i.prol, %.lr.ph.peel.next.i.prol ], [ %indvars.iv.in.i.ph, %.lr.ph.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.peel.next.i.prol ], [ 0, %.lr.ph.peel.next.i.preheader ]
  %indvars.iv.i.prol = add nsw i64 %indvars.iv.in.i.prol, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv.prol
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !13
  %i.hl = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.prol
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.peel.next.i.prol.loopexit, label %.lr.ph.peel.next.i.prol, !llvm.loop !28

.lr.ph.peel.next.i.prol.loopexit:                 ; preds = %.lr.ph.peel.next.i.prol, %.lr.ph.peel.next.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.peel.next.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.peel.next.i.prol ]
  %indvars.iv.in.i.unr = phi i64 [ %indvars.iv.in.i.ph, %.lr.ph.peel.next.i.preheader ], [ %indvars.iv.i.prol, %.lr.ph.peel.next.i.prol ]
  %i.hm = sub nsw i64 %indvars.iv.ph, %i.gv
  %i.hn = icmp ugt i64 %i.hm, -4
  br i1 %i.hn, label %_ZN7CaDiCaL6Report12print_headerEPc.exit, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.peel.next.i.prol.loopexit, %.lr.ph.peel.next.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3540, %.lr.ph.peel.next.i ], [ %indvars.iv.unr, %.lr.ph.peel.next.i.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i = phi i64 [ %indvars.iv.i.3539, %.lr.ph.peel.next.i ], [ %indvars.iv.in.i.unr, %.lr.ph.peel.next.i.prol.loopexit ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !13
  %i.hq = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i
  %i.hr = getelementptr i8, ptr %i.hq, i64 1
  store i8 %i.hp, ptr %i.hr, align 1, !tbaa !13
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !13
  %i.hv = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 2
  store i8 %i.hu, ptr %i.hw, align 1, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !13
  %i.ia = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i
  %i.ib = getelementptr i8, ptr %i.ia, i64 3
  store i8 %i.hz, ptr %i.ib, align 1, !tbaa !13
  %indvars.iv.i.3539 = add nsw i64 %indvars.iv.in.i, 4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !13
  %i.if = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.3539
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !13
  %indvars.iv.next.3540 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.i.3541 = icmp eq i64 %indvars.iv.next.3540, %i.gv
  br i1 %exitcond.not.i.3541, label %_ZN7CaDiCaL6Report12print_headerEPc.exit, label %.lr.ph.peel.next.i, !llvm.loop !29

_ZN7CaDiCaL6Report12print_headerEPc.exit:         ; preds = %.lr.ph.peel.next.i.prol.loopexit, %.lr.ph.peel.next.i, %middle.block, %vec.epilog.middle.block, %.lr.ph125.preheader, %.lr.ph.preheader.i
  %i.ig = load ptr, ptr %i.ao, align 16, !tbaa !11 ; 9 uses
  %i.ih = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ig) #13 ; 6 uses
  %i.ii = trunc i64 %i.ih to i32                  ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %.lr.ph.preheader.i.1149, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158

.lr.ph.preheader.i.1149:                          ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit
  %i.ik = load i32, ptr %i.dq, align 8, !tbaa !12
  %i.il = add nuw nsw i32 %i.ii, 1
  %.neg15.i.1146 = lshr i32 %i.il, 1
  %reass.sub.1147 = sub i32 %i.ik, %.neg15.i.1146
  %i.im = add i32 %reass.sub.1147, -3
  %i.in = sext i32 %i.im to i64                   ; 8 uses
  %i.io = getelementptr inbounds i8, ptr %i.gh, i64 %i.in
  store i8 32, ptr %i.io, align 1, !tbaa !13
  %exitcond.peel.not.i.1148 = icmp eq i32 %i.ii, 0
  br i1 %exitcond.peel.not.i.1148, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158, label %iter.check219

iter.check219:                                    ; preds = %.lr.ph.preheader.i.1149
  %i.ip = and i64 %i.ih, 2147483647               ; 6 uses
  %min.iters.check206 = icmp samesign ult i64 %i.ip, 8
  br i1 %min.iters.check206, label %.lr.ph.peel.next.i.1156.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %iter.check219
  %18 = ptrtoaddr ptr %i.gh to i64
  %19 = ptrtoaddr ptr %i.ig to i64
  %i.iq = add i64 %18, %i.in
  %i.ir = sub i64 %i.iq, %19
  %diff.check205 = icmp ult i64 %i.ir, 31
  br i1 %diff.check205, label %.lr.ph.peel.next.i.1156.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %vector.memcheck204
  %min.iters.check208 = icmp samesign ult i64 %i.ip, 32
  br i1 %min.iters.check208, label %vec.epilog.ph223, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.is = and i64 %i.ih, 24
  %n.vec210 = and i64 %i.ih, 2147483616           ; 5 uses
  %i.it = add nsw i64 %n.vec210, %i.in
  %invariant.gep616 = getelementptr i8, ptr %i.gh, i64 %i.in
  br label %vector.body211

vector.body211:                                   ; preds = %vector.ph209, %vector.body211
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body211 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ig, i64 %index212 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load213 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !13
  %wide.load214 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !13
  %gep617 = getelementptr i8, ptr %invariant.gep616, i64 %index212 ; 2 uses
  %i.iw = getelementptr i8, ptr %gep617, i64 1
  %i.ix = getelementptr i8, ptr %gep617, i64 17
  store <16 x i8> %wide.load213, ptr %i.iw, align 1, !tbaa !13
  store <16 x i8> %wide.load214, ptr %i.ix, align 1, !tbaa !13
  %index.next215 = add nuw i64 %index212, 32      ; 2 uses
  %i.iy = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.iy, label %middle.block216, label %vector.body211, !llvm.loop !30

middle.block216:                                  ; preds = %vector.body211
  %cmp.n217 = icmp eq i64 %i.ip, %n.vec210
  br i1 %cmp.n217, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  %min.epilog.iters.check222 = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check222, label %.lr.ph.peel.next.i.1156.preheader, label %vec.epilog.ph223, !prof !259

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec210, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec224 = and i64 %i.ih, 2147483640           ; 4 uses
  %i.iz = add nsw i64 %n.vec224, %i.in
  %invariant.gep618 = getelementptr i8, ptr %i.gh, i64 %i.in
  br label %vec.epilog.vector.body225

vec.epilog.vector.body225:                        ; preds = %vec.epilog.vector.body225, %vec.epilog.ph223
  %index226 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next228, %vec.epilog.vector.body225 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 %index226
  %wide.load227 = load <8 x i8>, ptr %i.ja, align 1, !tbaa !13
  %gep619 = getelementptr i8, ptr %invariant.gep618, i64 %index226
  %i.jb = getelementptr i8, ptr %gep619, i64 1
  store <8 x i8> %wide.load227, ptr %i.jb, align 1, !tbaa !13
  %index.next228 = add nuw i64 %index226, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next228, %n.vec224
  br i1 %i.jc, label %vec.epilog.middle.block229, label %vec.epilog.vector.body225, !llvm.loop !31

vec.epilog.middle.block229:                       ; preds = %vec.epilog.vector.body225
  %cmp.n230 = icmp eq i64 %i.ip, %n.vec224
  br i1 %cmp.n230, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158, label %.lr.ph.peel.next.i.1156.preheader

.lr.ph.peel.next.i.1156.preheader:                ; preds = %iter.check219, %vector.memcheck204, %vec.epilog.iter.check221, %vec.epilog.middle.block229
  %indvars.iv.1151.ph = phi i64 [ 0, %iter.check219 ], [ 0, %vector.memcheck204 ], [ %n.vec210, %vec.epilog.iter.check221 ], [ %n.vec224, %vec.epilog.middle.block229 ] ; 3 uses
  %indvars.iv.in.i.1152.ph = phi i64 [ %i.in, %iter.check219 ], [ %i.in, %vector.memcheck204 ], [ %i.it, %vec.epilog.iter.check221 ], [ %i.iz, %vec.epilog.middle.block229 ] ; 2 uses
  %xtraiter543 = and i64 %i.ih, 3                 ; 2 uses
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %.lr.ph.peel.next.i.1156.prol.loopexit, label %.lr.ph.peel.next.i.1156.prol

.lr.ph.peel.next.i.1156.prol:                     ; preds = %.lr.ph.peel.next.i.1156.preheader, %.lr.ph.peel.next.i.1156.prol
  %indvars.iv.1151.prol = phi i64 [ %indvars.iv.next.1154.prol, %.lr.ph.peel.next.i.1156.prol ], [ %indvars.iv.1151.ph, %.lr.ph.peel.next.i.1156.preheader ] ; 2 uses
  %indvars.iv.in.i.1152.prol = phi i64 [ %indvars.iv.i.1153.prol, %.lr.ph.peel.next.i.1156.prol ], [ %indvars.iv.in.i.1152.ph, %.lr.ph.peel.next.i.1156.preheader ]
  %prol.iter545 = phi i64 [ %prol.iter545.next, %.lr.ph.peel.next.i.1156.prol ], [ 0, %.lr.ph.peel.next.i.1156.preheader ]
  %indvars.iv.i.1153.prol = add nsw i64 %indvars.iv.in.i.1152.prol, 1 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.1151.prol
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !13
  %i.jf = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1153.prol
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !13
  %indvars.iv.next.1154.prol = add nuw nsw i64 %indvars.iv.1151.prol, 1 ; 2 uses
  %prol.iter545.next = add i64 %prol.iter545, 1   ; 2 uses
  %prol.iter545.cmp.not = icmp eq i64 %prol.iter545.next, %xtraiter543
  br i1 %prol.iter545.cmp.not, label %.lr.ph.peel.next.i.1156.prol.loopexit, label %.lr.ph.peel.next.i.1156.prol, !llvm.loop !32

.lr.ph.peel.next.i.1156.prol.loopexit:            ; preds = %.lr.ph.peel.next.i.1156.prol, %.lr.ph.peel.next.i.1156.preheader
  %indvars.iv.1151.unr = phi i64 [ %indvars.iv.1151.ph, %.lr.ph.peel.next.i.1156.preheader ], [ %indvars.iv.next.1154.prol, %.lr.ph.peel.next.i.1156.prol ]
  %indvars.iv.in.i.1152.unr = phi i64 [ %indvars.iv.in.i.1152.ph, %.lr.ph.peel.next.i.1156.preheader ], [ %indvars.iv.i.1153.prol, %.lr.ph.peel.next.i.1156.prol ]
  %i.jg = sub nsw i64 %indvars.iv.1151.ph, %i.ip
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158, label %.lr.ph.peel.next.i.1156

.lr.ph.peel.next.i.1156:                          ; preds = %.lr.ph.peel.next.i.1156.prol.loopexit, %.lr.ph.peel.next.i.1156
  %indvars.iv.1151 = phi i64 [ %indvars.iv.next.1154.3, %.lr.ph.peel.next.i.1156 ], [ %indvars.iv.1151.unr, %.lr.ph.peel.next.i.1156.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.1152 = phi i64 [ %indvars.iv.i.1153.3, %.lr.ph.peel.next.i.1156 ], [ %indvars.iv.in.i.1152.unr, %.lr.ph.peel.next.i.1156.prol.loopexit ] ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.1151
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !13
  %i.jk = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1152
  %i.jl = getelementptr i8, ptr %i.jk, i64 1
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.1151
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !13
  %i.jp = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1152
  %i.jq = getelementptr i8, ptr %i.jp, i64 2
  store i8 %i.jo, ptr %i.jq, align 1, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.1151
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !13
  %i.ju = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1152
  %i.jv = getelementptr i8, ptr %i.ju, i64 3
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !13
  %indvars.iv.i.1153.3 = add nsw i64 %indvars.iv.in.i.1152, 4 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.1151
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !13
  %i.jz = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1153.3
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !13
  %indvars.iv.next.1154.3 = add nuw nsw i64 %indvars.iv.1151, 4 ; 2 uses
  %exitcond.not.i.1155.3 = icmp eq i64 %indvars.iv.next.1154.3, %i.ip
  br i1 %exitcond.not.i.1155.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158, label %.lr.ph.peel.next.i.1156, !llvm.loop !33

_ZN7CaDiCaL6Report12print_headerEPc.exit.1158:    ; preds = %.lr.ph.peel.next.i.1156.prol.loopexit, %.lr.ph.peel.next.i.1156, %middle.block216, %vec.epilog.middle.block229, %.lr.ph.preheader.i.1149, %_ZN7CaDiCaL6Report12print_headerEPc.exit
  %i.ka = load ptr, ptr %i.ba, align 16, !tbaa !11 ; 9 uses
  %i.kb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ka) #13 ; 6 uses
  %i.kc = trunc i64 %i.kb to i32                  ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, -1
  br i1 %i.kd, label %.lr.ph.preheader.i.2163, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172

.lr.ph.preheader.i.2163:                          ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158
  %i.ke = load i32, ptr %i.eo, align 8, !tbaa !12
  %i.kf = add nuw nsw i32 %i.kc, 1
  %.neg15.i.2160 = lshr i32 %i.kf, 1
  %reass.sub.2161 = sub i32 %i.ke, %.neg15.i.2160
  %i.kg = add i32 %reass.sub.2161, -3
  %i.kh = sext i32 %i.kg to i64                   ; 8 uses
  %i.ki = getelementptr inbounds i8, ptr %i.gh, i64 %i.kh
  store i8 32, ptr %i.ki, align 1, !tbaa !13
  %exitcond.peel.not.i.2162 = icmp eq i32 %i.kc, 0
  br i1 %exitcond.peel.not.i.2162, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, label %iter.check248

iter.check248:                                    ; preds = %.lr.ph.preheader.i.2163
  %i.kj = and i64 %i.kb, 2147483647               ; 6 uses
  %min.iters.check235 = icmp samesign ult i64 %i.kj, 8
  br i1 %min.iters.check235, label %.lr.ph.peel.next.i.2170.preheader, label %vector.memcheck233

vector.memcheck233:                               ; preds = %iter.check248
  %20 = ptrtoaddr ptr %i.gh to i64
  %21 = ptrtoaddr ptr %i.ka to i64
  %i.kk = add i64 %20, %i.kh
  %i.kl = sub i64 %i.kk, %21
  %diff.check234 = icmp ult i64 %i.kl, 31
  br i1 %diff.check234, label %.lr.ph.peel.next.i.2170.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %vector.memcheck233
  %min.iters.check237 = icmp samesign ult i64 %i.kj, 32
  br i1 %min.iters.check237, label %vec.epilog.ph252, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %i.km = and i64 %i.kb, 24
  %n.vec239 = and i64 %i.kb, 2147483616           ; 5 uses
  %i.kn = add nsw i64 %n.vec239, %i.kh
  %invariant.gep620 = getelementptr i8, ptr %i.gh, i64 %i.kh
  br label %vector.body240

vector.body240:                                   ; preds = %vector.ph238, %vector.body240
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next244, %vector.body240 ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 %index241 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load242 = load <16 x i8>, ptr %i.ko, align 1, !tbaa !13
  %wide.load243 = load <16 x i8>, ptr %i.kp, align 1, !tbaa !13
  %gep621 = getelementptr i8, ptr %invariant.gep620, i64 %index241 ; 2 uses
  %i.kq = getelementptr i8, ptr %gep621, i64 1
  %i.kr = getelementptr i8, ptr %gep621, i64 17
  store <16 x i8> %wide.load242, ptr %i.kq, align 1, !tbaa !13
  store <16 x i8> %wide.load243, ptr %i.kr, align 1, !tbaa !13
  %index.next244 = add nuw i64 %index241, 32      ; 2 uses
  %i.ks = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.ks, label %middle.block245, label %vector.body240, !llvm.loop !34

middle.block245:                                  ; preds = %vector.body240
  %cmp.n246 = icmp eq i64 %i.kj, %n.vec239
  br i1 %cmp.n246, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %middle.block245
  %min.epilog.iters.check251 = icmp eq i64 %i.km, 0
  br i1 %min.epilog.iters.check251, label %.lr.ph.peel.next.i.2170.preheader, label %vec.epilog.ph252, !prof !259

vec.epilog.ph252:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check250
  %vec.epilog.resume.val247 = phi i64 [ %n.vec239, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check236 ]
  %n.vec253 = and i64 %i.kb, 2147483640           ; 4 uses
  %i.kt = add nsw i64 %n.vec253, %i.kh
  %invariant.gep622 = getelementptr i8, ptr %i.gh, i64 %i.kh
  br label %vec.epilog.vector.body254

vec.epilog.vector.body254:                        ; preds = %vec.epilog.vector.body254, %vec.epilog.ph252
  %index255 = phi i64 [ %vec.epilog.resume.val247, %vec.epilog.ph252 ], [ %index.next257, %vec.epilog.vector.body254 ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ka, i64 %index255
  %wide.load256 = load <8 x i8>, ptr %i.ku, align 1, !tbaa !13
  %gep623 = getelementptr i8, ptr %invariant.gep622, i64 %index255
  %i.kv = getelementptr i8, ptr %gep623, i64 1
  store <8 x i8> %wide.load256, ptr %i.kv, align 1, !tbaa !13
  %index.next257 = add nuw i64 %index255, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next257, %n.vec253
  br i1 %i.kw, label %vec.epilog.middle.block258, label %vec.epilog.vector.body254, !llvm.loop !35

vec.epilog.middle.block258:                       ; preds = %vec.epilog.vector.body254
  %cmp.n259 = icmp eq i64 %i.kj, %n.vec253
  br i1 %cmp.n259, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, label %.lr.ph.peel.next.i.2170.preheader

.lr.ph.peel.next.i.2170.preheader:                ; preds = %iter.check248, %vector.memcheck233, %vec.epilog.iter.check250, %vec.epilog.middle.block258
  %indvars.iv.2165.ph = phi i64 [ 0, %iter.check248 ], [ 0, %vector.memcheck233 ], [ %n.vec239, %vec.epilog.iter.check250 ], [ %n.vec253, %vec.epilog.middle.block258 ] ; 3 uses
  %indvars.iv.in.i.2166.ph = phi i64 [ %i.kh, %iter.check248 ], [ %i.kh, %vector.memcheck233 ], [ %i.kn, %vec.epilog.iter.check250 ], [ %i.kt, %vec.epilog.middle.block258 ] ; 2 uses
  %xtraiter546 = and i64 %i.kb, 3                 ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.peel.next.i.2170.prol.loopexit, label %.lr.ph.peel.next.i.2170.prol

.lr.ph.peel.next.i.2170.prol:                     ; preds = %.lr.ph.peel.next.i.2170.preheader, %.lr.ph.peel.next.i.2170.prol
  %indvars.iv.2165.prol = phi i64 [ %indvars.iv.next.2168.prol, %.lr.ph.peel.next.i.2170.prol ], [ %indvars.iv.2165.ph, %.lr.ph.peel.next.i.2170.preheader ] ; 2 uses
  %indvars.iv.in.i.2166.prol = phi i64 [ %indvars.iv.i.2167.prol, %.lr.ph.peel.next.i.2170.prol ], [ %indvars.iv.in.i.2166.ph, %.lr.ph.peel.next.i.2170.preheader ]
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.lr.ph.peel.next.i.2170.prol ], [ 0, %.lr.ph.peel.next.i.2170.preheader ]
  %indvars.iv.i.2167.prol = add nsw i64 %indvars.iv.in.i.2166.prol, 1 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.2165.prol
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !13
  %i.kz = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2167.prol
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !13
  %indvars.iv.next.2168.prol = add nuw nsw i64 %indvars.iv.2165.prol, 1 ; 2 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.lr.ph.peel.next.i.2170.prol.loopexit, label %.lr.ph.peel.next.i.2170.prol, !llvm.loop !36

.lr.ph.peel.next.i.2170.prol.loopexit:            ; preds = %.lr.ph.peel.next.i.2170.prol, %.lr.ph.peel.next.i.2170.preheader
  %indvars.iv.2165.unr = phi i64 [ %indvars.iv.2165.ph, %.lr.ph.peel.next.i.2170.preheader ], [ %indvars.iv.next.2168.prol, %.lr.ph.peel.next.i.2170.prol ]
  %indvars.iv.in.i.2166.unr = phi i64 [ %indvars.iv.in.i.2166.ph, %.lr.ph.peel.next.i.2170.preheader ], [ %indvars.iv.i.2167.prol, %.lr.ph.peel.next.i.2170.prol ]
  %i.la = sub nsw i64 %indvars.iv.2165.ph, %i.kj
  %i.lb = icmp ugt i64 %i.la, -4
  br i1 %i.lb, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, label %.lr.ph.peel.next.i.2170

.lr.ph.peel.next.i.2170:                          ; preds = %.lr.ph.peel.next.i.2170.prol.loopexit, %.lr.ph.peel.next.i.2170
  %indvars.iv.2165 = phi i64 [ %indvars.iv.next.2168.3, %.lr.ph.peel.next.i.2170 ], [ %indvars.iv.2165.unr, %.lr.ph.peel.next.i.2170.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.2166 = phi i64 [ %indvars.iv.i.2167.3, %.lr.ph.peel.next.i.2170 ], [ %indvars.iv.in.i.2166.unr, %.lr.ph.peel.next.i.2170.prol.loopexit ] ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.2165
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !13
  %i.le = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2166
  %i.lf = getelementptr i8, ptr %i.le, i64 1
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.2165
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !13
  %i.lj = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2166
  %i.lk = getelementptr i8, ptr %i.lj, i64 2
  store i8 %i.li, ptr %i.lk, align 1, !tbaa !13
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.2165
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !13
  %i.lo = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2166
  %i.lp = getelementptr i8, ptr %i.lo, i64 3
  store i8 %i.ln, ptr %i.lp, align 1, !tbaa !13
  %indvars.iv.i.2167.3 = add nsw i64 %indvars.iv.in.i.2166, 4 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.2165
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !13
  %i.lt = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2167.3
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !13
  %indvars.iv.next.2168.3 = add nuw nsw i64 %indvars.iv.2165, 4 ; 2 uses
  %exitcond.not.i.2169.3 = icmp eq i64 %indvars.iv.next.2168.3, %i.kj
  br i1 %exitcond.not.i.2169.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, label %.lr.ph.peel.next.i.2170, !llvm.loop !37

_ZN7CaDiCaL6Report12print_headerEPc.exit.2172:    ; preds = %.lr.ph.peel.next.i.2170.prol.loopexit, %.lr.ph.peel.next.i.2170, %middle.block245, %vec.epilog.middle.block258, %.lr.ph.preheader.i.2163, %_ZN7CaDiCaL6Report12print_headerEPc.exit.1158
  %i.lu = load ptr, ptr %i.bq, align 16, !tbaa !11 ; 9 uses
  %i.lv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lu) #13 ; 6 uses
  %i.lw = trunc i64 %i.lv to i32                  ; 3 uses
  %i.lx = icmp sgt i32 %i.lw, -1
  br i1 %i.lx, label %.lr.ph.preheader.i.3, label %._crit_edge.preheader

.lr.ph.preheader.i.3:                             ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172
  %i.ly = load i32, ptr %i.fm, align 8, !tbaa !12
  %i.lz = add nuw nsw i32 %i.lw, 1
  %.neg15.i.3 = lshr i32 %i.lz, 1
  %reass.sub.3 = sub i32 %i.ly, %.neg15.i.3
  %i.ma = add i32 %reass.sub.3, -3
  %i.mb = sext i32 %i.ma to i64                   ; 8 uses
  %i.mc = getelementptr inbounds i8, ptr %i.gh, i64 %i.mb
  store i8 32, ptr %i.mc, align 1, !tbaa !13
  %exitcond.peel.not.i.3 = icmp eq i32 %i.lw, 0
  br i1 %exitcond.peel.not.i.3, label %._crit_edge.preheader, label %iter.check277

iter.check277:                                    ; preds = %.lr.ph.preheader.i.3
  %i.md = and i64 %i.lv, 2147483647               ; 6 uses
  %min.iters.check264 = icmp samesign ult i64 %i.md, 8
  br i1 %min.iters.check264, label %.lr.ph.peel.next.i.3.preheader, label %vector.memcheck262

vector.memcheck262:                               ; preds = %iter.check277
  %22 = ptrtoaddr ptr %i.gh to i64
  %23 = ptrtoaddr ptr %i.lu to i64
  %i.me = add i64 %22, %i.mb
  %i.mf = sub i64 %i.me, %23
  %diff.check263 = icmp ult i64 %i.mf, 31
  br i1 %diff.check263, label %.lr.ph.peel.next.i.3.preheader, label %vector.main.loop.iter.check265

vector.main.loop.iter.check265:                   ; preds = %vector.memcheck262
  %min.iters.check266 = icmp samesign ult i64 %i.md, 32
  br i1 %min.iters.check266, label %vec.epilog.ph281, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check265
  %i.mg = and i64 %i.lv, 24
  %n.vec268 = and i64 %i.lv, 2147483616           ; 5 uses
  %i.mh = add nsw i64 %n.vec268, %i.mb
  %invariant.gep624 = getelementptr i8, ptr %i.gh, i64 %i.mb
  br label %vector.body269

vector.body269:                                   ; preds = %vector.ph267, %vector.body269
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next273, %vector.body269 ] ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 %index270 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %wide.load271 = load <16 x i8>, ptr %i.mi, align 1, !tbaa !13
  %wide.load272 = load <16 x i8>, ptr %i.mj, align 1, !tbaa !13
  %gep625 = getelementptr i8, ptr %invariant.gep624, i64 %index270 ; 2 uses
  %i.mk = getelementptr i8, ptr %gep625, i64 1
  %i.ml = getelementptr i8, ptr %gep625, i64 17
  store <16 x i8> %wide.load271, ptr %i.mk, align 1, !tbaa !13
  store <16 x i8> %wide.load272, ptr %i.ml, align 1, !tbaa !13
  %index.next273 = add nuw i64 %index270, 32      ; 2 uses
  %i.mm = icmp eq i64 %index.next273, %n.vec268
  br i1 %i.mm, label %middle.block274, label %vector.body269, !llvm.loop !38

middle.block274:                                  ; preds = %vector.body269
  %cmp.n275 = icmp eq i64 %i.md, %n.vec268
  br i1 %cmp.n275, label %._crit_edge.preheader, label %vec.epilog.iter.check279

vec.epilog.iter.check279:                         ; preds = %middle.block274
  %min.epilog.iters.check280 = icmp eq i64 %i.mg, 0
  br i1 %min.epilog.iters.check280, label %.lr.ph.peel.next.i.3.preheader, label %vec.epilog.ph281, !prof !259

vec.epilog.ph281:                                 ; preds = %vector.main.loop.iter.check265, %vec.epilog.iter.check279
  %vec.epilog.resume.val276 = phi i64 [ %n.vec268, %vec.epilog.iter.check279 ], [ 0, %vector.main.loop.iter.check265 ]
  %n.vec282 = and i64 %i.lv, 2147483640           ; 4 uses
  %i.mn = add nsw i64 %n.vec282, %i.mb
  %invariant.gep626 = getelementptr i8, ptr %i.gh, i64 %i.mb
  br label %vec.epilog.vector.body283

vec.epilog.vector.body283:                        ; preds = %vec.epilog.vector.body283, %vec.epilog.ph281
  %index284 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph281 ], [ %index.next286, %vec.epilog.vector.body283 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 %index284
  %wide.load285 = load <8 x i8>, ptr %i.mo, align 1, !tbaa !13
  %gep627 = getelementptr i8, ptr %invariant.gep626, i64 %index284
  %i.mp = getelementptr i8, ptr %gep627, i64 1
  store <8 x i8> %wide.load285, ptr %i.mp, align 1, !tbaa !13
  %index.next286 = add nuw i64 %index284, 8       ; 2 uses
  %i.mq = icmp eq i64 %index.next286, %n.vec282
  br i1 %i.mq, label %vec.epilog.middle.block287, label %vec.epilog.vector.body283, !llvm.loop !39

vec.epilog.middle.block287:                       ; preds = %vec.epilog.vector.body283
  %cmp.n288 = icmp eq i64 %i.md, %n.vec282
  br i1 %cmp.n288, label %._crit_edge.preheader, label %.lr.ph.peel.next.i.3.preheader

.lr.ph.peel.next.i.3.preheader:                   ; preds = %iter.check277, %vector.memcheck262, %vec.epilog.iter.check279, %vec.epilog.middle.block287
  %indvars.iv.3.ph = phi i64 [ 0, %iter.check277 ], [ 0, %vector.memcheck262 ], [ %n.vec268, %vec.epilog.iter.check279 ], [ %n.vec282, %vec.epilog.middle.block287 ] ; 3 uses
  %indvars.iv.in.i.3.ph = phi i64 [ %i.mb, %iter.check277 ], [ %i.mb, %vector.memcheck262 ], [ %i.mh, %vec.epilog.iter.check279 ], [ %i.mn, %vec.epilog.middle.block287 ] ; 2 uses
  %xtraiter549 = and i64 %i.lv, 3                 ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %.lr.ph.peel.next.i.3.prol.loopexit, label %.lr.ph.peel.next.i.3.prol

.lr.ph.peel.next.i.3.prol:                        ; preds = %.lr.ph.peel.next.i.3.preheader, %.lr.ph.peel.next.i.3.prol
  %indvars.iv.3.prol = phi i64 [ %indvars.iv.next.3.prol, %.lr.ph.peel.next.i.3.prol ], [ %indvars.iv.3.ph, %.lr.ph.peel.next.i.3.preheader ] ; 2 uses
  %indvars.iv.in.i.3.prol = phi i64 [ %indvars.iv.i.3.prol, %.lr.ph.peel.next.i.3.prol ], [ %indvars.iv.in.i.3.ph, %.lr.ph.peel.next.i.3.preheader ]
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph.peel.next.i.3.prol ], [ 0, %.lr.ph.peel.next.i.3.preheader ]
  %indvars.iv.i.3.prol = add nsw i64 %indvars.iv.in.i.3.prol, 1 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.3.prol
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !13
  %i.mt = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.3.prol
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !13
  %indvars.iv.next.3.prol = add nuw nsw i64 %indvars.iv.3.prol, 1 ; 2 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph.peel.next.i.3.prol.loopexit, label %.lr.ph.peel.next.i.3.prol, !llvm.loop !40

.lr.ph.peel.next.i.3.prol.loopexit:               ; preds = %.lr.ph.peel.next.i.3.prol, %.lr.ph.peel.next.i.3.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %.lr.ph.peel.next.i.3.preheader ], [ %indvars.iv.next.3.prol, %.lr.ph.peel.next.i.3.prol ]
  %indvars.iv.in.i.3.unr = phi i64 [ %indvars.iv.in.i.3.ph, %.lr.ph.peel.next.i.3.preheader ], [ %indvars.iv.i.3.prol, %.lr.ph.peel.next.i.3.prol ]
  %i.mu = sub nsw i64 %indvars.iv.3.ph, %i.md
  %i.mv = icmp ugt i64 %i.mu, -4
  br i1 %i.mv, label %._crit_edge.preheader, label %.lr.ph.peel.next.i.3

.lr.ph.peel.next.i.3:                             ; preds = %.lr.ph.peel.next.i.3.prol.loopexit, %.lr.ph.peel.next.i.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.3, %.lr.ph.peel.next.i.3 ], [ %indvars.iv.3.unr, %.lr.ph.peel.next.i.3.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.3 = phi i64 [ %indvars.iv.i.3.3, %.lr.ph.peel.next.i.3 ], [ %indvars.iv.in.i.3.unr, %.lr.ph.peel.next.i.3.prol.loopexit ] ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.3
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !13
  %i.my = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.3
  %i.mz = getelementptr i8, ptr %i.my, i64 1
  store i8 %i.mx, ptr %i.mz, align 1, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !13
  %i.nd = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.3
  %i.ne = getelementptr i8, ptr %i.nd, i64 2
  store i8 %i.nc, ptr %i.ne, align 1, !tbaa !13
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.3
  %i.nj = getelementptr i8, ptr %i.ni, i64 3
  store i8 %i.nh, ptr %i.nj, align 1, !tbaa !13
  %indvars.iv.i.3.3 = add nsw i64 %indvars.iv.in.i.3, 4 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.3
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 3
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !13
  %i.nn = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.3.3
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !13
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %exitcond.not.i.3.3 = icmp eq i64 %indvars.iv.next.3.3, %i.md
  br i1 %exitcond.not.i.3.3, label %._crit_edge.preheader, label %.lr.ph.peel.next.i.3, !llvm.loop !41

._crit_edge.preheader:                            ; preds = %.lr.ph.peel.next.i.3.prol.loopexit, %.lr.ph.peel.next.i.3, %middle.block274, %vec.epilog.middle.block287, %_ZN7CaDiCaL6Report12print_headerEPc.exit.2172, %.lr.ph.preheader.i.3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.preheader, %._crit_edge
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ %i.gl, %._crit_edge.preheader ] ; 2 uses
  %i.no = getelementptr i8, ptr %i.gh, i64 %indvars.iv138 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 -1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !13
  %i.nr = icmp eq i8 %i.nq, 32
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  br i1 %i.nr, label %._crit_edge, label %bb.j, !llvm.loop !42

bb.j:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.no, align 1, !tbaa !13
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ns = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.k, label %_ZN7CaDiCaL8Terminal6yellowEb.exit

bb.k:                                             ; preds = %bb.j
  %i.nu = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.nu) ; 0 uses
  %i.nv = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.nw = call i32 @fputc(i32 noundef 48, ptr noundef %i.nv) ; 0 uses
  %i.nx = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.ny = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nx, ptr noundef nonnull @.str.24, i32 noundef 33) #14 ; 0 uses
  %i.nz = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.oa = call i32 @fflush(ptr noundef %i.nz)     ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6yellowEb.exit

_ZN7CaDiCaL8Terminal6yellowEb.exit:               ; preds = %bb.j, %bb.k
  %i.ob = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.oc = call i32 @fputs(ptr noundef nonnull %i.gh, ptr noundef %i.ob) ; 0 uses
  %i.od = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 8), align 8, !range !18
  %i.og = trunc nuw i8 %i.of to i1
  %or.cond.i.i = select i1 %i.oe, i1 %i.og, i1 false
  br i1 %or.cond.i.i, label %bb.l, label %_ZN7CaDiCaL8Terminal6normalEv.exit

bb.l:                                             ; preds = %_ZN7CaDiCaL8Terminal6yellowEb.exit
  %i.oh = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i91 = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.oh) ; 0 uses
  %i.oi = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.oi) ; 0 uses
  %i.oj = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.ok = call i32 @fflush(ptr noundef %i.oj)     ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6normalEv.exit

_ZN7CaDiCaL8Terminal6normalEv.exit:               ; preds = %_ZN7CaDiCaL8Terminal6yellowEb.exit, %bb.l
  %i.ol = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.om = call i32 @fputc(i32 noundef 10, ptr noundef %i.ol) ; 0 uses
  br i1 %i.gi, label %.lr.ph.preheader.1, label %.lr.ph125.preheader.1

.lr.ph.preheader.1:                               ; preds = %_ZN7CaDiCaL8Terminal6normalEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gh, i8 32, i64 %i.gk, i1 false), !tbaa !13
  br label %.lr.ph125.preheader.1

.lr.ph125.preheader.1:                            ; preds = %_ZN7CaDiCaL8Terminal6normalEv.exit, %.lr.ph.preheader.1
  %i.on = load ptr, ptr %i.ah, align 16, !tbaa !11 ; 9 uses
  %i.oo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.on) #13 ; 6 uses
  %i.op = trunc i64 %i.oo to i32                  ; 3 uses
  %i.oq = icmp sgt i32 %i.op, -1
  br i1 %i.oq, label %.lr.ph.preheader.i.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1

.lr.ph.preheader.i.1:                             ; preds = %.lr.ph125.preheader.1
  %i.or = load i32, ptr %i.da, align 8, !tbaa !12
  %i.os = add nuw nsw i32 %i.op, 1
  %.neg15.i.1 = lshr i32 %i.os, 1
  %reass.sub.1 = sub i32 %i.or, %.neg15.i.1
  %i.ot = add i32 %reass.sub.1, -3
  %i.ou = sext i32 %i.ot to i64                   ; 8 uses
  %i.ov = getelementptr inbounds i8, ptr %i.gh, i64 %i.ou
  store i8 32, ptr %i.ov, align 1, !tbaa !13
  %exitcond.peel.not.i.1 = icmp eq i32 %i.op, 0
  br i1 %exitcond.peel.not.i.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1, label %iter.check306

iter.check306:                                    ; preds = %.lr.ph.preheader.i.1
  %i.ow = and i64 %i.oo, 2147483647               ; 6 uses
  %min.iters.check293 = icmp samesign ult i64 %i.ow, 8
  br i1 %min.iters.check293, label %.lr.ph.peel.next.i.1.preheader, label %vector.memcheck291

vector.memcheck291:                               ; preds = %iter.check306
  %24 = ptrtoaddr ptr %i.gh to i64
  %25 = ptrtoaddr ptr %i.on to i64
  %i.ox = add i64 %24, %i.ou
  %i.oy = sub i64 %i.ox, %25
  %diff.check292 = icmp ult i64 %i.oy, 31
  br i1 %diff.check292, label %.lr.ph.peel.next.i.1.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %vector.memcheck291
  %min.iters.check295 = icmp samesign ult i64 %i.ow, 32
  br i1 %min.iters.check295, label %vec.epilog.ph310, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.oz = and i64 %i.oo, 24
  %n.vec297 = and i64 %i.oo, 2147483616           ; 5 uses
  %i.pa = add nsw i64 %n.vec297, %i.ou
  %invariant.gep628 = getelementptr i8, ptr %i.gh, i64 %i.ou
  br label %vector.body298

vector.body298:                                   ; preds = %vector.ph296, %vector.body298
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next302, %vector.body298 ] ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.on, i64 %index299 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load300 = load <16 x i8>, ptr %i.pb, align 1, !tbaa !13
  %wide.load301 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !13
  %gep629 = getelementptr i8, ptr %invariant.gep628, i64 %index299 ; 2 uses
  %i.pd = getelementptr i8, ptr %gep629, i64 1
  %i.pe = getelementptr i8, ptr %gep629, i64 17
  store <16 x i8> %wide.load300, ptr %i.pd, align 1, !tbaa !13
  store <16 x i8> %wide.load301, ptr %i.pe, align 1, !tbaa !13
  %index.next302 = add nuw i64 %index299, 32      ; 2 uses
  %i.pf = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.pf, label %middle.block303, label %vector.body298, !llvm.loop !43

middle.block303:                                  ; preds = %vector.body298
  %cmp.n304 = icmp eq i64 %i.ow, %n.vec297
  br i1 %cmp.n304, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block303
  %min.epilog.iters.check309 = icmp eq i64 %i.oz, 0
  br i1 %min.epilog.iters.check309, label %.lr.ph.peel.next.i.1.preheader, label %vec.epilog.ph310, !prof !259

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check294, %vec.epilog.iter.check308
  %vec.epilog.resume.val305 = phi i64 [ %n.vec297, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check294 ]
  %n.vec311 = and i64 %i.oo, 2147483640           ; 4 uses
  %i.pg = add nsw i64 %n.vec311, %i.ou
  %invariant.gep630 = getelementptr i8, ptr %i.gh, i64 %i.ou
  br label %vec.epilog.vector.body312

vec.epilog.vector.body312:                        ; preds = %vec.epilog.vector.body312, %vec.epilog.ph310
  %index313 = phi i64 [ %vec.epilog.resume.val305, %vec.epilog.ph310 ], [ %index.next315, %vec.epilog.vector.body312 ] ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.on, i64 %index313
  %wide.load314 = load <8 x i8>, ptr %i.ph, align 1, !tbaa !13
  %gep631 = getelementptr i8, ptr %invariant.gep630, i64 %index313
  %i.pi = getelementptr i8, ptr %gep631, i64 1
  store <8 x i8> %wide.load314, ptr %i.pi, align 1, !tbaa !13
  %index.next315 = add nuw i64 %index313, 8       ; 2 uses
  %i.pj = icmp eq i64 %index.next315, %n.vec311
  br i1 %i.pj, label %vec.epilog.middle.block316, label %vec.epilog.vector.body312, !llvm.loop !44

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body312
  %cmp.n317 = icmp eq i64 %i.ow, %n.vec311
  br i1 %cmp.n317, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1, label %.lr.ph.peel.next.i.1.preheader

.lr.ph.peel.next.i.1.preheader:                   ; preds = %iter.check306, %vector.memcheck291, %vec.epilog.iter.check308, %vec.epilog.middle.block316
  %indvars.iv.1.ph = phi i64 [ 0, %iter.check306 ], [ 0, %vector.memcheck291 ], [ %n.vec297, %vec.epilog.iter.check308 ], [ %n.vec311, %vec.epilog.middle.block316 ] ; 3 uses
  %indvars.iv.in.i.1.ph = phi i64 [ %i.ou, %iter.check306 ], [ %i.ou, %vector.memcheck291 ], [ %i.pa, %vec.epilog.iter.check308 ], [ %i.pg, %vec.epilog.middle.block316 ] ; 2 uses
  %xtraiter552 = and i64 %i.oo, 3                 ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.peel.next.i.1.prol.loopexit, label %.lr.ph.peel.next.i.1.prol

.lr.ph.peel.next.i.1.prol:                        ; preds = %.lr.ph.peel.next.i.1.preheader, %.lr.ph.peel.next.i.1.prol
  %indvars.iv.1.prol = phi i64 [ %indvars.iv.next.1.prol, %.lr.ph.peel.next.i.1.prol ], [ %indvars.iv.1.ph, %.lr.ph.peel.next.i.1.preheader ] ; 2 uses
  %indvars.iv.in.i.1.prol = phi i64 [ %indvars.iv.i.1.prol, %.lr.ph.peel.next.i.1.prol ], [ %indvars.iv.in.i.1.ph, %.lr.ph.peel.next.i.1.preheader ]
  %prol.iter554 = phi i64 [ %prol.iter554.next, %.lr.ph.peel.next.i.1.prol ], [ 0, %.lr.ph.peel.next.i.1.preheader ]
  %indvars.iv.i.1.prol = add nsw i64 %indvars.iv.in.i.1.prol, 1 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.on, i64 %indvars.iv.1.prol
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !13
  %i.pm = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.prol
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !13
  %indvars.iv.next.1.prol = add nuw nsw i64 %indvars.iv.1.prol, 1 ; 2 uses
  %prol.iter554.next = add i64 %prol.iter554, 1   ; 2 uses
  %prol.iter554.cmp.not = icmp eq i64 %prol.iter554.next, %xtraiter552
  br i1 %prol.iter554.cmp.not, label %.lr.ph.peel.next.i.1.prol.loopexit, label %.lr.ph.peel.next.i.1.prol, !llvm.loop !45

.lr.ph.peel.next.i.1.prol.loopexit:               ; preds = %.lr.ph.peel.next.i.1.prol, %.lr.ph.peel.next.i.1.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %.lr.ph.peel.next.i.1.preheader ], [ %indvars.iv.next.1.prol, %.lr.ph.peel.next.i.1.prol ]
  %indvars.iv.in.i.1.unr = phi i64 [ %indvars.iv.in.i.1.ph, %.lr.ph.peel.next.i.1.preheader ], [ %indvars.iv.i.1.prol, %.lr.ph.peel.next.i.1.prol ]
  %i.pn = sub nsw i64 %indvars.iv.1.ph, %i.ow
  %i.po = icmp ugt i64 %i.pn, -4
  br i1 %i.po, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1, label %.lr.ph.peel.next.i.1

.lr.ph.peel.next.i.1:                             ; preds = %.lr.ph.peel.next.i.1.prol.loopexit, %.lr.ph.peel.next.i.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3570, %.lr.ph.peel.next.i.1 ], [ %indvars.iv.1.unr, %.lr.ph.peel.next.i.1.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.1 = phi i64 [ %indvars.iv.i.1.3569, %.lr.ph.peel.next.i.1 ], [ %indvars.iv.in.i.1.unr, %.lr.ph.peel.next.i.1.prol.loopexit ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.on, i64 %indvars.iv.1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !13
  %i.pr = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  store i8 %i.pq, ptr %i.ps, align 1, !tbaa !13
  %i.pt = getelementptr inbounds nuw i8, ptr %i.on, i64 %indvars.iv.1
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !13
  %i.pw = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1
  %i.px = getelementptr i8, ptr %i.pw, i64 2
  store i8 %i.pv, ptr %i.px, align 1, !tbaa !13
  %i.py = getelementptr inbounds nuw i8, ptr %i.on, i64 %indvars.iv.1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !13
  %i.qb = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1
  %i.qc = getelementptr i8, ptr %i.qb, i64 3
  store i8 %i.qa, ptr %i.qc, align 1, !tbaa !13
  %indvars.iv.i.1.3569 = add nsw i64 %indvars.iv.in.i.1, 4 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.on, i64 %indvars.iv.1
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.3569
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !13
  %indvars.iv.next.1.3570 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %exitcond.not.i.1.3571 = icmp eq i64 %indvars.iv.next.1.3570, %i.ow
  br i1 %exitcond.not.i.1.3571, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1, label %.lr.ph.peel.next.i.1, !llvm.loop !46

_ZN7CaDiCaL6Report12print_headerEPc.exit.1:       ; preds = %.lr.ph.peel.next.i.1.prol.loopexit, %.lr.ph.peel.next.i.1, %middle.block303, %vec.epilog.middle.block316, %.lr.ph.preheader.i.1, %.lr.ph125.preheader.1
  %i.qh = load ptr, ptr %i.as, align 16, !tbaa !11 ; 9 uses
  %i.qi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qh) #13 ; 6 uses
  %i.qj = trunc i64 %i.qi to i32                  ; 3 uses
  %i.qk = icmp sgt i32 %i.qj, -1
  br i1 %i.qk, label %.lr.ph.preheader.i.1.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1

.lr.ph.preheader.i.1.1:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.1
  %i.ql = load i32, ptr %i.dy, align 8, !tbaa !12
  %i.qm = add nuw nsw i32 %i.qj, 1
  %.neg15.i.1.1 = lshr i32 %i.qm, 1
  %reass.sub.1.1 = sub i32 %i.ql, %.neg15.i.1.1
  %i.qn = add i32 %reass.sub.1.1, -3
  %i.qo = sext i32 %i.qn to i64                   ; 8 uses
  %i.qp = getelementptr inbounds i8, ptr %i.gh, i64 %i.qo
  store i8 32, ptr %i.qp, align 1, !tbaa !13
  %exitcond.peel.not.i.1.1 = icmp eq i32 %i.qj, 0
  br i1 %exitcond.peel.not.i.1.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1, label %iter.check335

iter.check335:                                    ; preds = %.lr.ph.preheader.i.1.1
  %i.qq = and i64 %i.qi, 2147483647               ; 6 uses
  %min.iters.check322 = icmp samesign ult i64 %i.qq, 8
  br i1 %min.iters.check322, label %.lr.ph.peel.next.i.1.1.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %iter.check335
  %26 = ptrtoaddr ptr %i.gh to i64
  %27 = ptrtoaddr ptr %i.qh to i64
  %i.qr = add i64 %26, %i.qo
  %i.qs = sub i64 %i.qr, %27
  %diff.check321 = icmp ult i64 %i.qs, 31
  br i1 %diff.check321, label %.lr.ph.peel.next.i.1.1.preheader, label %vector.main.loop.iter.check323

vector.main.loop.iter.check323:                   ; preds = %vector.memcheck320
  %min.iters.check324 = icmp samesign ult i64 %i.qq, 32
  br i1 %min.iters.check324, label %vec.epilog.ph339, label %vector.ph325

vector.ph325:                                     ; preds = %vector.main.loop.iter.check323
  %i.qt = and i64 %i.qi, 24
  %n.vec326 = and i64 %i.qi, 2147483616           ; 5 uses
  %i.qu = add nsw i64 %n.vec326, %i.qo
  %invariant.gep632 = getelementptr i8, ptr %i.gh, i64 %i.qo
  br label %vector.body327

vector.body327:                                   ; preds = %vector.ph325, %vector.body327
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next331, %vector.body327 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qh, i64 %index328 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load329 = load <16 x i8>, ptr %i.qv, align 1, !tbaa !13
  %wide.load330 = load <16 x i8>, ptr %i.qw, align 1, !tbaa !13
  %gep633 = getelementptr i8, ptr %invariant.gep632, i64 %index328 ; 2 uses
  %i.qx = getelementptr i8, ptr %gep633, i64 1
  %i.qy = getelementptr i8, ptr %gep633, i64 17
  store <16 x i8> %wide.load329, ptr %i.qx, align 1, !tbaa !13
  store <16 x i8> %wide.load330, ptr %i.qy, align 1, !tbaa !13
  %index.next331 = add nuw i64 %index328, 32      ; 2 uses
  %i.qz = icmp eq i64 %index.next331, %n.vec326
  br i1 %i.qz, label %middle.block332, label %vector.body327, !llvm.loop !47

middle.block332:                                  ; preds = %vector.body327
  %cmp.n333 = icmp eq i64 %i.qq, %n.vec326
  br i1 %cmp.n333, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1, label %vec.epilog.iter.check337

vec.epilog.iter.check337:                         ; preds = %middle.block332
  %min.epilog.iters.check338 = icmp eq i64 %i.qt, 0
  br i1 %min.epilog.iters.check338, label %.lr.ph.peel.next.i.1.1.preheader, label %vec.epilog.ph339, !prof !259

vec.epilog.ph339:                                 ; preds = %vector.main.loop.iter.check323, %vec.epilog.iter.check337
  %vec.epilog.resume.val334 = phi i64 [ %n.vec326, %vec.epilog.iter.check337 ], [ 0, %vector.main.loop.iter.check323 ]
  %n.vec340 = and i64 %i.qi, 2147483640           ; 4 uses
  %i.ra = add nsw i64 %n.vec340, %i.qo
  %invariant.gep634 = getelementptr i8, ptr %i.gh, i64 %i.qo
  br label %vec.epilog.vector.body341

vec.epilog.vector.body341:                        ; preds = %vec.epilog.vector.body341, %vec.epilog.ph339
  %index342 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph339 ], [ %index.next344, %vec.epilog.vector.body341 ] ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qh, i64 %index342
  %wide.load343 = load <8 x i8>, ptr %i.rb, align 1, !tbaa !13
  %gep635 = getelementptr i8, ptr %invariant.gep634, i64 %index342
  %i.rc = getelementptr i8, ptr %gep635, i64 1
  store <8 x i8> %wide.load343, ptr %i.rc, align 1, !tbaa !13
  %index.next344 = add nuw i64 %index342, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next344, %n.vec340
  br i1 %i.rd, label %vec.epilog.middle.block345, label %vec.epilog.vector.body341, !llvm.loop !48

vec.epilog.middle.block345:                       ; preds = %vec.epilog.vector.body341
  %cmp.n346 = icmp eq i64 %i.qq, %n.vec340
  br i1 %cmp.n346, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1, label %.lr.ph.peel.next.i.1.1.preheader

.lr.ph.peel.next.i.1.1.preheader:                 ; preds = %iter.check335, %vector.memcheck320, %vec.epilog.iter.check337, %vec.epilog.middle.block345
  %indvars.iv.1.1.ph = phi i64 [ 0, %iter.check335 ], [ 0, %vector.memcheck320 ], [ %n.vec326, %vec.epilog.iter.check337 ], [ %n.vec340, %vec.epilog.middle.block345 ] ; 3 uses
  %indvars.iv.in.i.1.1.ph = phi i64 [ %i.qo, %iter.check335 ], [ %i.qo, %vector.memcheck320 ], [ %i.qu, %vec.epilog.iter.check337 ], [ %i.ra, %vec.epilog.middle.block345 ] ; 2 uses
  %xtraiter573 = and i64 %i.qi, 3                 ; 2 uses
  %lcmp.mod574.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod574.not, label %.lr.ph.peel.next.i.1.1.prol.loopexit, label %.lr.ph.peel.next.i.1.1.prol

.lr.ph.peel.next.i.1.1.prol:                      ; preds = %.lr.ph.peel.next.i.1.1.preheader, %.lr.ph.peel.next.i.1.1.prol
  %indvars.iv.1.1.prol = phi i64 [ %indvars.iv.next.1.1.prol, %.lr.ph.peel.next.i.1.1.prol ], [ %indvars.iv.1.1.ph, %.lr.ph.peel.next.i.1.1.preheader ] ; 2 uses
  %indvars.iv.in.i.1.1.prol = phi i64 [ %indvars.iv.i.1.1.prol, %.lr.ph.peel.next.i.1.1.prol ], [ %indvars.iv.in.i.1.1.ph, %.lr.ph.peel.next.i.1.1.preheader ]
  %prol.iter575 = phi i64 [ %prol.iter575.next, %.lr.ph.peel.next.i.1.1.prol ], [ 0, %.lr.ph.peel.next.i.1.1.preheader ]
  %indvars.iv.i.1.1.prol = add nsw i64 %indvars.iv.in.i.1.1.prol, 1 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.1.1.prol
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !13
  %i.rg = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.1.prol
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !13
  %indvars.iv.next.1.1.prol = add nuw nsw i64 %indvars.iv.1.1.prol, 1 ; 2 uses
  %prol.iter575.next = add i64 %prol.iter575, 1   ; 2 uses
  %prol.iter575.cmp.not = icmp eq i64 %prol.iter575.next, %xtraiter573
  br i1 %prol.iter575.cmp.not, label %.lr.ph.peel.next.i.1.1.prol.loopexit, label %.lr.ph.peel.next.i.1.1.prol, !llvm.loop !49

.lr.ph.peel.next.i.1.1.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.1.1.prol, %.lr.ph.peel.next.i.1.1.preheader
  %indvars.iv.1.1.unr = phi i64 [ %indvars.iv.1.1.ph, %.lr.ph.peel.next.i.1.1.preheader ], [ %indvars.iv.next.1.1.prol, %.lr.ph.peel.next.i.1.1.prol ]
  %indvars.iv.in.i.1.1.unr = phi i64 [ %indvars.iv.in.i.1.1.ph, %.lr.ph.peel.next.i.1.1.preheader ], [ %indvars.iv.i.1.1.prol, %.lr.ph.peel.next.i.1.1.prol ]
  %i.rh = sub nsw i64 %indvars.iv.1.1.ph, %i.qq
  %i.ri = icmp ugt i64 %i.rh, -4
  br i1 %i.ri, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1, label %.lr.ph.peel.next.i.1.1

.lr.ph.peel.next.i.1.1:                           ; preds = %.lr.ph.peel.next.i.1.1.prol.loopexit, %.lr.ph.peel.next.i.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1.3, %.lr.ph.peel.next.i.1.1 ], [ %indvars.iv.1.1.unr, %.lr.ph.peel.next.i.1.1.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.1.1 = phi i64 [ %indvars.iv.i.1.1.3, %.lr.ph.peel.next.i.1.1 ], [ %indvars.iv.in.i.1.1.unr, %.lr.ph.peel.next.i.1.1.prol.loopexit ] ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.1.1
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !13
  %i.rl = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.1
  %i.rm = getelementptr i8, ptr %i.rl, i64 1
  store i8 %i.rk, ptr %i.rm, align 1, !tbaa !13
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.1.1
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !13
  %i.rq = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.1
  %i.rr = getelementptr i8, ptr %i.rq, i64 2
  store i8 %i.rp, ptr %i.rr, align 1, !tbaa !13
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.1.1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 2
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !13
  %i.rv = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.1
  %i.rw = getelementptr i8, ptr %i.rv, i64 3
  store i8 %i.ru, ptr %i.rw, align 1, !tbaa !13
  %indvars.iv.i.1.1.3 = add nsw i64 %indvars.iv.in.i.1.1, 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.1.1
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 3
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !13
  %i.sa = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.1.3
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !13
  %indvars.iv.next.1.1.3 = add nuw nsw i64 %indvars.iv.1.1, 4 ; 2 uses
  %exitcond.not.i.1.1.3 = icmp eq i64 %indvars.iv.next.1.1.3, %i.qq
  br i1 %exitcond.not.i.1.1.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1, label %.lr.ph.peel.next.i.1.1, !llvm.loop !50

_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1:     ; preds = %.lr.ph.peel.next.i.1.1.prol.loopexit, %.lr.ph.peel.next.i.1.1, %middle.block332, %vec.epilog.middle.block345, %.lr.ph.preheader.i.1.1, %_ZN7CaDiCaL6Report12print_headerEPc.exit.1
  %i.sb = load ptr, ptr %i.bj, align 16, !tbaa !11 ; 9 uses
  %i.sc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sb) #13 ; 6 uses
  %i.sd = trunc i64 %i.sc to i32                  ; 3 uses
  %i.se = icmp sgt i32 %i.sd, -1
  br i1 %i.se, label %.lr.ph.preheader.i.1.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2

.lr.ph.preheader.i.1.2:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1
  %i.sf = load i32, ptr %i.ew, align 8, !tbaa !12
  %i.sg = add nuw nsw i32 %i.sd, 1
  %.neg15.i.1.2 = lshr i32 %i.sg, 1
  %reass.sub.1.2 = sub i32 %i.sf, %.neg15.i.1.2
  %i.sh = add i32 %reass.sub.1.2, -3
  %i.si = sext i32 %i.sh to i64                   ; 8 uses
  %i.sj = getelementptr inbounds i8, ptr %i.gh, i64 %i.si
  store i8 32, ptr %i.sj, align 1, !tbaa !13
  %exitcond.peel.not.i.1.2 = icmp eq i32 %i.sd, 0
  br i1 %exitcond.peel.not.i.1.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, label %iter.check364

iter.check364:                                    ; preds = %.lr.ph.preheader.i.1.2
  %i.sk = and i64 %i.sc, 2147483647               ; 6 uses
  %min.iters.check351 = icmp samesign ult i64 %i.sk, 8
  br i1 %min.iters.check351, label %.lr.ph.peel.next.i.1.2.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %iter.check364
  %28 = ptrtoaddr ptr %i.gh to i64
  %29 = ptrtoaddr ptr %i.sb to i64
  %i.sl = add i64 %28, %i.si
  %i.sm = sub i64 %i.sl, %29
  %diff.check350 = icmp ult i64 %i.sm, 31
  br i1 %diff.check350, label %.lr.ph.peel.next.i.1.2.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck349
  %min.iters.check353 = icmp samesign ult i64 %i.sk, 32
  br i1 %min.iters.check353, label %vec.epilog.ph368, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.sn = and i64 %i.sc, 24
  %n.vec355 = and i64 %i.sc, 2147483616           ; 5 uses
  %i.so = add nsw i64 %n.vec355, %i.si
  %invariant.gep636 = getelementptr i8, ptr %i.gh, i64 %i.si
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next360, %vector.body356 ] ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sb, i64 %index357 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.sp, align 1, !tbaa !13
  %wide.load359 = load <16 x i8>, ptr %i.sq, align 1, !tbaa !13
  %gep637 = getelementptr i8, ptr %invariant.gep636, i64 %index357 ; 2 uses
  %i.sr = getelementptr i8, ptr %gep637, i64 1
  %i.ss = getelementptr i8, ptr %gep637, i64 17
  store <16 x i8> %wide.load358, ptr %i.sr, align 1, !tbaa !13
  store <16 x i8> %wide.load359, ptr %i.ss, align 1, !tbaa !13
  %index.next360 = add nuw i64 %index357, 32      ; 2 uses
  %i.st = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.st, label %middle.block361, label %vector.body356, !llvm.loop !51

middle.block361:                                  ; preds = %vector.body356
  %cmp.n362 = icmp eq i64 %i.sk, %n.vec355
  br i1 %cmp.n362, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, label %vec.epilog.iter.check366

vec.epilog.iter.check366:                         ; preds = %middle.block361
  %min.epilog.iters.check367 = icmp eq i64 %i.sn, 0
  br i1 %min.epilog.iters.check367, label %.lr.ph.peel.next.i.1.2.preheader, label %vec.epilog.ph368, !prof !259

vec.epilog.ph368:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check366
  %vec.epilog.resume.val363 = phi i64 [ %n.vec355, %vec.epilog.iter.check366 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec369 = and i64 %i.sc, 2147483640           ; 4 uses
  %i.su = add nsw i64 %n.vec369, %i.si
  %invariant.gep638 = getelementptr i8, ptr %i.gh, i64 %i.si
  br label %vec.epilog.vector.body370

vec.epilog.vector.body370:                        ; preds = %vec.epilog.vector.body370, %vec.epilog.ph368
  %index371 = phi i64 [ %vec.epilog.resume.val363, %vec.epilog.ph368 ], [ %index.next373, %vec.epilog.vector.body370 ] ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sb, i64 %index371
  %wide.load372 = load <8 x i8>, ptr %i.sv, align 1, !tbaa !13
  %gep639 = getelementptr i8, ptr %invariant.gep638, i64 %index371
  %i.sw = getelementptr i8, ptr %gep639, i64 1
  store <8 x i8> %wide.load372, ptr %i.sw, align 1, !tbaa !13
  %index.next373 = add nuw i64 %index371, 8       ; 2 uses
  %i.sx = icmp eq i64 %index.next373, %n.vec369
  br i1 %i.sx, label %vec.epilog.middle.block374, label %vec.epilog.vector.body370, !llvm.loop !52

vec.epilog.middle.block374:                       ; preds = %vec.epilog.vector.body370
  %cmp.n375 = icmp eq i64 %i.sk, %n.vec369
  br i1 %cmp.n375, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, label %.lr.ph.peel.next.i.1.2.preheader

.lr.ph.peel.next.i.1.2.preheader:                 ; preds = %iter.check364, %vector.memcheck349, %vec.epilog.iter.check366, %vec.epilog.middle.block374
  %indvars.iv.1.2.ph = phi i64 [ 0, %iter.check364 ], [ 0, %vector.memcheck349 ], [ %n.vec355, %vec.epilog.iter.check366 ], [ %n.vec369, %vec.epilog.middle.block374 ] ; 3 uses
  %indvars.iv.in.i.1.2.ph = phi i64 [ %i.si, %iter.check364 ], [ %i.si, %vector.memcheck349 ], [ %i.so, %vec.epilog.iter.check366 ], [ %i.su, %vec.epilog.middle.block374 ] ; 2 uses
  %xtraiter576 = and i64 %i.sc, 3                 ; 2 uses
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.lr.ph.peel.next.i.1.2.prol.loopexit, label %.lr.ph.peel.next.i.1.2.prol

.lr.ph.peel.next.i.1.2.prol:                      ; preds = %.lr.ph.peel.next.i.1.2.preheader, %.lr.ph.peel.next.i.1.2.prol
  %indvars.iv.1.2.prol = phi i64 [ %indvars.iv.next.1.2.prol, %.lr.ph.peel.next.i.1.2.prol ], [ %indvars.iv.1.2.ph, %.lr.ph.peel.next.i.1.2.preheader ] ; 2 uses
  %indvars.iv.in.i.1.2.prol = phi i64 [ %indvars.iv.i.1.2.prol, %.lr.ph.peel.next.i.1.2.prol ], [ %indvars.iv.in.i.1.2.ph, %.lr.ph.peel.next.i.1.2.preheader ]
  %prol.iter578 = phi i64 [ %prol.iter578.next, %.lr.ph.peel.next.i.1.2.prol ], [ 0, %.lr.ph.peel.next.i.1.2.preheader ]
  %indvars.iv.i.1.2.prol = add nsw i64 %indvars.iv.in.i.1.2.prol, 1 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.1.2.prol
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !13
  %i.ta = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.2.prol
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !13
  %indvars.iv.next.1.2.prol = add nuw nsw i64 %indvars.iv.1.2.prol, 1 ; 2 uses
  %prol.iter578.next = add i64 %prol.iter578, 1   ; 2 uses
  %prol.iter578.cmp.not = icmp eq i64 %prol.iter578.next, %xtraiter576
  br i1 %prol.iter578.cmp.not, label %.lr.ph.peel.next.i.1.2.prol.loopexit, label %.lr.ph.peel.next.i.1.2.prol, !llvm.loop !53

.lr.ph.peel.next.i.1.2.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.1.2.prol, %.lr.ph.peel.next.i.1.2.preheader
  %indvars.iv.1.2.unr = phi i64 [ %indvars.iv.1.2.ph, %.lr.ph.peel.next.i.1.2.preheader ], [ %indvars.iv.next.1.2.prol, %.lr.ph.peel.next.i.1.2.prol ]
  %indvars.iv.in.i.1.2.unr = phi i64 [ %indvars.iv.in.i.1.2.ph, %.lr.ph.peel.next.i.1.2.preheader ], [ %indvars.iv.i.1.2.prol, %.lr.ph.peel.next.i.1.2.prol ]
  %i.tb = sub nsw i64 %indvars.iv.1.2.ph, %i.sk
  %i.tc = icmp ugt i64 %i.tb, -4
  br i1 %i.tc, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, label %.lr.ph.peel.next.i.1.2

.lr.ph.peel.next.i.1.2:                           ; preds = %.lr.ph.peel.next.i.1.2.prol.loopexit, %.lr.ph.peel.next.i.1.2
  %indvars.iv.1.2 = phi i64 [ %indvars.iv.next.1.2.3, %.lr.ph.peel.next.i.1.2 ], [ %indvars.iv.1.2.unr, %.lr.ph.peel.next.i.1.2.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.1.2 = phi i64 [ %indvars.iv.i.1.2.3, %.lr.ph.peel.next.i.1.2 ], [ %indvars.iv.in.i.1.2.unr, %.lr.ph.peel.next.i.1.2.prol.loopexit ] ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.1.2
  %i.te = load i8, ptr %i.td, align 1, !tbaa !13
  %i.tf = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.2
  %i.tg = getelementptr i8, ptr %i.tf, i64 1
  store i8 %i.te, ptr %i.tg, align 1, !tbaa !13
  %i.th = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.1.2
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !13
  %i.tk = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.2
  %i.tl = getelementptr i8, ptr %i.tk, i64 2
  store i8 %i.tj, ptr %i.tl, align 1, !tbaa !13
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.1.2
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !13
  %i.tp = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.2
  %i.tq = getelementptr i8, ptr %i.tp, i64 3
  store i8 %i.to, ptr %i.tq, align 1, !tbaa !13
  %indvars.iv.i.1.2.3 = add nsw i64 %indvars.iv.in.i.1.2, 4 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.1.2
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 3
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !13
  %i.tu = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.2.3
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !13
  %indvars.iv.next.1.2.3 = add nuw nsw i64 %indvars.iv.1.2, 4 ; 2 uses
  %exitcond.not.i.1.2.3 = icmp eq i64 %indvars.iv.next.1.2.3, %i.sk
  br i1 %exitcond.not.i.1.2.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, label %.lr.ph.peel.next.i.1.2, !llvm.loop !54

_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2:     ; preds = %.lr.ph.peel.next.i.1.2.prol.loopexit, %.lr.ph.peel.next.i.1.2, %middle.block361, %vec.epilog.middle.block374, %.lr.ph.preheader.i.1.2, %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.1
  %i.tv = load ptr, ptr %i.bv, align 16, !tbaa !11 ; 9 uses
  %i.tw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tv) #13 ; 6 uses
  %i.tx = trunc i64 %i.tw to i32                  ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, -1
  br i1 %i.ty, label %.lr.ph.preheader.i.1.3, label %._crit_edge.1.preheader

.lr.ph.preheader.i.1.3:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2
  %i.tz = load i32, ptr %i.fu, align 8, !tbaa !12
  %i.ua = add nuw nsw i32 %i.tx, 1
  %.neg15.i.1.3 = lshr i32 %i.ua, 1
  %reass.sub.1.3 = sub i32 %i.tz, %.neg15.i.1.3
  %i.ub = add i32 %reass.sub.1.3, -3
  %i.uc = sext i32 %i.ub to i64                   ; 8 uses
  %i.ud = getelementptr inbounds i8, ptr %i.gh, i64 %i.uc
  store i8 32, ptr %i.ud, align 1, !tbaa !13
  %exitcond.peel.not.i.1.3 = icmp eq i32 %i.tx, 0
  br i1 %exitcond.peel.not.i.1.3, label %._crit_edge.1.preheader, label %iter.check393

iter.check393:                                    ; preds = %.lr.ph.preheader.i.1.3
  %i.ue = and i64 %i.tw, 2147483647               ; 6 uses
  %min.iters.check380 = icmp samesign ult i64 %i.ue, 8
  br i1 %min.iters.check380, label %.lr.ph.peel.next.i.1.3.preheader, label %vector.memcheck378

vector.memcheck378:                               ; preds = %iter.check393
  %30 = ptrtoaddr ptr %i.gh to i64
  %31 = ptrtoaddr ptr %i.tv to i64
  %i.uf = add i64 %30, %i.uc
  %i.ug = sub i64 %i.uf, %31
  %diff.check379 = icmp ult i64 %i.ug, 31
  br i1 %diff.check379, label %.lr.ph.peel.next.i.1.3.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %vector.memcheck378
  %min.iters.check382 = icmp samesign ult i64 %i.ue, 32
  br i1 %min.iters.check382, label %vec.epilog.ph397, label %vector.ph383

vector.ph383:                                     ; preds = %vector.main.loop.iter.check381
  %i.uh = and i64 %i.tw, 24
  %n.vec384 = and i64 %i.tw, 2147483616           ; 5 uses
  %i.ui = add nsw i64 %n.vec384, %i.uc
  %invariant.gep640 = getelementptr i8, ptr %i.gh, i64 %i.uc
  br label %vector.body385

vector.body385:                                   ; preds = %vector.ph383, %vector.body385
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tv, i64 %index386 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %wide.load387 = load <16 x i8>, ptr %i.uj, align 1, !tbaa !13
  %wide.load388 = load <16 x i8>, ptr %i.uk, align 1, !tbaa !13
  %gep641 = getelementptr i8, ptr %invariant.gep640, i64 %index386 ; 2 uses
  %i.ul = getelementptr i8, ptr %gep641, i64 1
  %i.um = getelementptr i8, ptr %gep641, i64 17
  store <16 x i8> %wide.load387, ptr %i.ul, align 1, !tbaa !13
  store <16 x i8> %wide.load388, ptr %i.um, align 1, !tbaa !13
  %index.next389 = add nuw i64 %index386, 32      ; 2 uses
  %i.un = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.un, label %middle.block390, label %vector.body385, !llvm.loop !55

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.ue, %n.vec384
  br i1 %cmp.n391, label %._crit_edge.1.preheader, label %vec.epilog.iter.check395

vec.epilog.iter.check395:                         ; preds = %middle.block390
  %min.epilog.iters.check396 = icmp eq i64 %i.uh, 0
  br i1 %min.epilog.iters.check396, label %.lr.ph.peel.next.i.1.3.preheader, label %vec.epilog.ph397, !prof !259

vec.epilog.ph397:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check395
  %vec.epilog.resume.val392 = phi i64 [ %n.vec384, %vec.epilog.iter.check395 ], [ 0, %vector.main.loop.iter.check381 ]
  %n.vec398 = and i64 %i.tw, 2147483640           ; 4 uses
  %i.uo = add nsw i64 %n.vec398, %i.uc
  %invariant.gep642 = getelementptr i8, ptr %i.gh, i64 %i.uc
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph397
  %index400 = phi i64 [ %vec.epilog.resume.val392, %vec.epilog.ph397 ], [ %index.next402, %vec.epilog.vector.body399 ] ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.tv, i64 %index400
  %wide.load401 = load <8 x i8>, ptr %i.up, align 1, !tbaa !13
  %gep643 = getelementptr i8, ptr %invariant.gep642, i64 %index400
  %i.uq = getelementptr i8, ptr %gep643, i64 1
  store <8 x i8> %wide.load401, ptr %i.uq, align 1, !tbaa !13
  %index.next402 = add nuw i64 %index400, 8       ; 2 uses
  %i.ur = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.ur, label %vec.epilog.middle.block403, label %vec.epilog.vector.body399, !llvm.loop !56

vec.epilog.middle.block403:                       ; preds = %vec.epilog.vector.body399
  %cmp.n404 = icmp eq i64 %i.ue, %n.vec398
  br i1 %cmp.n404, label %._crit_edge.1.preheader, label %.lr.ph.peel.next.i.1.3.preheader

.lr.ph.peel.next.i.1.3.preheader:                 ; preds = %iter.check393, %vector.memcheck378, %vec.epilog.iter.check395, %vec.epilog.middle.block403
  %indvars.iv.1.3.ph = phi i64 [ 0, %iter.check393 ], [ 0, %vector.memcheck378 ], [ %n.vec384, %vec.epilog.iter.check395 ], [ %n.vec398, %vec.epilog.middle.block403 ] ; 3 uses
  %indvars.iv.in.i.1.3.ph = phi i64 [ %i.uc, %iter.check393 ], [ %i.uc, %vector.memcheck378 ], [ %i.ui, %vec.epilog.iter.check395 ], [ %i.uo, %vec.epilog.middle.block403 ] ; 2 uses
  %xtraiter579 = and i64 %i.tw, 3                 ; 2 uses
  %lcmp.mod580.not = icmp eq i64 %xtraiter579, 0
  br i1 %lcmp.mod580.not, label %.lr.ph.peel.next.i.1.3.prol.loopexit, label %.lr.ph.peel.next.i.1.3.prol

.lr.ph.peel.next.i.1.3.prol:                      ; preds = %.lr.ph.peel.next.i.1.3.preheader, %.lr.ph.peel.next.i.1.3.prol
  %indvars.iv.1.3.prol = phi i64 [ %indvars.iv.next.1.3.prol, %.lr.ph.peel.next.i.1.3.prol ], [ %indvars.iv.1.3.ph, %.lr.ph.peel.next.i.1.3.preheader ] ; 2 uses
  %indvars.iv.in.i.1.3.prol = phi i64 [ %indvars.iv.i.1.3.prol, %.lr.ph.peel.next.i.1.3.prol ], [ %indvars.iv.in.i.1.3.ph, %.lr.ph.peel.next.i.1.3.preheader ]
  %prol.iter581 = phi i64 [ %prol.iter581.next, %.lr.ph.peel.next.i.1.3.prol ], [ 0, %.lr.ph.peel.next.i.1.3.preheader ]
  %indvars.iv.i.1.3.prol = add nsw i64 %indvars.iv.in.i.1.3.prol, 1 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.1.3.prol
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !13
  %i.uu = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.3.prol
  store i8 %i.ut, ptr %i.uu, align 1, !tbaa !13
  %indvars.iv.next.1.3.prol = add nuw nsw i64 %indvars.iv.1.3.prol, 1 ; 2 uses
  %prol.iter581.next = add i64 %prol.iter581, 1   ; 2 uses
  %prol.iter581.cmp.not = icmp eq i64 %prol.iter581.next, %xtraiter579
  br i1 %prol.iter581.cmp.not, label %.lr.ph.peel.next.i.1.3.prol.loopexit, label %.lr.ph.peel.next.i.1.3.prol, !llvm.loop !57

.lr.ph.peel.next.i.1.3.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.1.3.prol, %.lr.ph.peel.next.i.1.3.preheader
  %indvars.iv.1.3.unr = phi i64 [ %indvars.iv.1.3.ph, %.lr.ph.peel.next.i.1.3.preheader ], [ %indvars.iv.next.1.3.prol, %.lr.ph.peel.next.i.1.3.prol ]
  %indvars.iv.in.i.1.3.unr = phi i64 [ %indvars.iv.in.i.1.3.ph, %.lr.ph.peel.next.i.1.3.preheader ], [ %indvars.iv.i.1.3.prol, %.lr.ph.peel.next.i.1.3.prol ]
  %i.uv = sub nsw i64 %indvars.iv.1.3.ph, %i.ue
  %i.uw = icmp ugt i64 %i.uv, -4
  br i1 %i.uw, label %._crit_edge.1.preheader, label %.lr.ph.peel.next.i.1.3

.lr.ph.peel.next.i.1.3:                           ; preds = %.lr.ph.peel.next.i.1.3.prol.loopexit, %.lr.ph.peel.next.i.1.3
  %indvars.iv.1.3 = phi i64 [ %indvars.iv.next.1.3.3, %.lr.ph.peel.next.i.1.3 ], [ %indvars.iv.1.3.unr, %.lr.ph.peel.next.i.1.3.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.1.3 = phi i64 [ %indvars.iv.i.1.3.3, %.lr.ph.peel.next.i.1.3 ], [ %indvars.iv.in.i.1.3.unr, %.lr.ph.peel.next.i.1.3.prol.loopexit ] ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.1.3
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !13
  %i.uz = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.3
  %i.va = getelementptr i8, ptr %i.uz, i64 1
  store i8 %i.uy, ptr %i.va, align 1, !tbaa !13
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.1.3
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !13
  %i.ve = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.3
  %i.vf = getelementptr i8, ptr %i.ve, i64 2
  store i8 %i.vd, ptr %i.vf, align 1, !tbaa !13
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.1.3
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 2
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !13
  %i.vj = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.1.3
  %i.vk = getelementptr i8, ptr %i.vj, i64 3
  store i8 %i.vi, ptr %i.vk, align 1, !tbaa !13
  %indvars.iv.i.1.3.3 = add nsw i64 %indvars.iv.in.i.1.3, 4 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.1.3
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 3
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !13
  %i.vo = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.1.3.3
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !13
  %indvars.iv.next.1.3.3 = add nuw nsw i64 %indvars.iv.1.3, 4 ; 2 uses
  %exitcond.not.i.1.3.3 = icmp eq i64 %indvars.iv.next.1.3.3, %i.ue
  br i1 %exitcond.not.i.1.3.3, label %._crit_edge.1.preheader, label %.lr.ph.peel.next.i.1.3, !llvm.loop !58

._crit_edge.1.preheader:                          ; preds = %.lr.ph.peel.next.i.1.3.prol.loopexit, %.lr.ph.peel.next.i.1.3, %middle.block390, %vec.epilog.middle.block403, %_ZN7CaDiCaL6Report12print_headerEPc.exit.1.2, %.lr.ph.preheader.i.1.3
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.preheader, %._crit_edge.1
  %indvars.iv138.1 = phi i64 [ %indvars.iv.next139.1, %._crit_edge.1 ], [ %i.gl, %._crit_edge.1.preheader ] ; 2 uses
  %i.vp = getelementptr i8, ptr %i.gh, i64 %indvars.iv138.1 ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vp, i64 -1
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !13
  %i.vs = icmp eq i8 %i.vr, 32
  %indvars.iv.next139.1 = add nsw i64 %indvars.iv138.1, -1
  br i1 %i.vs, label %._crit_edge.1, label %bb.m, !llvm.loop !42

bb.m:                                             ; preds = %._crit_edge.1
  store i8 0, ptr %i.vp, align 1, !tbaa !13
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.vt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.vu = trunc nuw i8 %i.vt to i1
  br i1 %i.vu, label %bb.n, label %_ZN7CaDiCaL8Terminal6yellowEb.exit.1

bb.n:                                             ; preds = %bb.m
  %i.vv = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i.1 = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.vv) ; 0 uses
  %i.vw = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.vx = call i32 @fputc(i32 noundef 48, ptr noundef %i.vw) ; 0 uses
  %i.vy = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.vz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vy, ptr noundef nonnull @.str.24, i32 noundef 33) #14 ; 0 uses
  %i.wa = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.wb = call i32 @fflush(ptr noundef %i.wa)     ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6yellowEb.exit.1

_ZN7CaDiCaL8Terminal6yellowEb.exit.1:             ; preds = %bb.n, %bb.m
  %i.wc = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.wd = call i32 @fputs(ptr noundef nonnull %i.gh, ptr noundef %i.wc) ; 0 uses
  %i.we = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.wf = trunc nuw i8 %i.we to i1
  %i.wg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 8), align 8, !range !18
  %i.wh = trunc nuw i8 %i.wg to i1
  %or.cond.i.i.1 = select i1 %i.wf, i1 %i.wh, i1 false
  br i1 %or.cond.i.i.1, label %bb.o, label %_ZN7CaDiCaL8Terminal6normalEv.exit.1

bb.o:                                             ; preds = %_ZN7CaDiCaL8Terminal6yellowEb.exit.1
  %i.wi = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i91.1 = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.wi) ; 0 uses
  %i.wj = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.1 = call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.wj) ; 0 uses
  %i.wk = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.wl = call i32 @fflush(ptr noundef %i.wk)     ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6normalEv.exit.1

_ZN7CaDiCaL8Terminal6normalEv.exit.1:             ; preds = %bb.o, %_ZN7CaDiCaL8Terminal6yellowEb.exit.1
  %i.wm = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.wn = call i32 @fputc(i32 noundef 10, ptr noundef %i.wm) ; 0 uses
  br i1 %i.gi, label %.lr.ph.preheader.2, label %.lr.ph125.preheader.2

.lr.ph.preheader.2:                               ; preds = %_ZN7CaDiCaL8Terminal6normalEv.exit.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gh, i8 32, i64 %i.gk, i1 false), !tbaa !13
  br label %.lr.ph125.preheader.2

.lr.ph125.preheader.2:                            ; preds = %_ZN7CaDiCaL8Terminal6normalEv.exit.1, %.lr.ph.preheader.2
  %i.wo = load ptr, ptr %i.ak, align 16, !tbaa !11 ; 9 uses
  %i.wp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wo) #13 ; 6 uses
  %i.wq = trunc i64 %i.wp to i32                  ; 3 uses
  %i.wr = icmp sgt i32 %i.wq, -1
  br i1 %i.wr, label %.lr.ph.preheader.i.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2

.lr.ph.preheader.i.2:                             ; preds = %.lr.ph125.preheader.2
  %i.ws = load i32, ptr %i.di, align 8, !tbaa !12
  %i.wt = add nuw nsw i32 %i.wq, 1
  %.neg15.i.2 = lshr i32 %i.wt, 1
  %reass.sub.2 = sub i32 %i.ws, %.neg15.i.2
  %i.wu = add i32 %reass.sub.2, -3
  %i.wv = sext i32 %i.wu to i64                   ; 8 uses
  %i.ww = getelementptr inbounds i8, ptr %i.gh, i64 %i.wv
  store i8 32, ptr %i.ww, align 1, !tbaa !13
  %exitcond.peel.not.i.2 = icmp eq i32 %i.wq, 0
  br i1 %exitcond.peel.not.i.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2, label %iter.check422

iter.check422:                                    ; preds = %.lr.ph.preheader.i.2
  %i.wx = and i64 %i.wp, 2147483647               ; 6 uses
  %min.iters.check409 = icmp samesign ult i64 %i.wx, 8
  br i1 %min.iters.check409, label %.lr.ph.peel.next.i.2.preheader, label %vector.memcheck407

vector.memcheck407:                               ; preds = %iter.check422
  %32 = ptrtoaddr ptr %i.gh to i64
  %33 = ptrtoaddr ptr %i.wo to i64
  %i.wy = add i64 %32, %i.wv
  %i.wz = sub i64 %i.wy, %33
  %diff.check408 = icmp ult i64 %i.wz, 31
  br i1 %diff.check408, label %.lr.ph.peel.next.i.2.preheader, label %vector.main.loop.iter.check410

vector.main.loop.iter.check410:                   ; preds = %vector.memcheck407
  %min.iters.check411 = icmp samesign ult i64 %i.wx, 32
  br i1 %min.iters.check411, label %vec.epilog.ph426, label %vector.ph412

vector.ph412:                                     ; preds = %vector.main.loop.iter.check410
  %i.xa = and i64 %i.wp, 24
  %n.vec413 = and i64 %i.wp, 2147483616           ; 5 uses
  %i.xb = add nsw i64 %n.vec413, %i.wv
  %invariant.gep644 = getelementptr i8, ptr %i.gh, i64 %i.wv
  br label %vector.body414

vector.body414:                                   ; preds = %vector.ph412, %vector.body414
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next418, %vector.body414 ] ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wo, i64 %index415 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %wide.load416 = load <16 x i8>, ptr %i.xc, align 1, !tbaa !13
  %wide.load417 = load <16 x i8>, ptr %i.xd, align 1, !tbaa !13
  %gep645 = getelementptr i8, ptr %invariant.gep644, i64 %index415 ; 2 uses
  %i.xe = getelementptr i8, ptr %gep645, i64 1
  %i.xf = getelementptr i8, ptr %gep645, i64 17
  store <16 x i8> %wide.load416, ptr %i.xe, align 1, !tbaa !13
  store <16 x i8> %wide.load417, ptr %i.xf, align 1, !tbaa !13
  %index.next418 = add nuw i64 %index415, 32      ; 2 uses
  %i.xg = icmp eq i64 %index.next418, %n.vec413
  br i1 %i.xg, label %middle.block419, label %vector.body414, !llvm.loop !59

middle.block419:                                  ; preds = %vector.body414
  %cmp.n420 = icmp eq i64 %i.wx, %n.vec413
  br i1 %cmp.n420, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2, label %vec.epilog.iter.check424

vec.epilog.iter.check424:                         ; preds = %middle.block419
  %min.epilog.iters.check425 = icmp eq i64 %i.xa, 0
  br i1 %min.epilog.iters.check425, label %.lr.ph.peel.next.i.2.preheader, label %vec.epilog.ph426, !prof !259

vec.epilog.ph426:                                 ; preds = %vector.main.loop.iter.check410, %vec.epilog.iter.check424
  %vec.epilog.resume.val421 = phi i64 [ %n.vec413, %vec.epilog.iter.check424 ], [ 0, %vector.main.loop.iter.check410 ]
  %n.vec427 = and i64 %i.wp, 2147483640           ; 4 uses
  %i.xh = add nsw i64 %n.vec427, %i.wv
  %invariant.gep646 = getelementptr i8, ptr %i.gh, i64 %i.wv
  br label %vec.epilog.vector.body428

vec.epilog.vector.body428:                        ; preds = %vec.epilog.vector.body428, %vec.epilog.ph426
  %index429 = phi i64 [ %vec.epilog.resume.val421, %vec.epilog.ph426 ], [ %index.next431, %vec.epilog.vector.body428 ] ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wo, i64 %index429
  %wide.load430 = load <8 x i8>, ptr %i.xi, align 1, !tbaa !13
  %gep647 = getelementptr i8, ptr %invariant.gep646, i64 %index429
  %i.xj = getelementptr i8, ptr %gep647, i64 1
  store <8 x i8> %wide.load430, ptr %i.xj, align 1, !tbaa !13
  %index.next431 = add nuw i64 %index429, 8       ; 2 uses
  %i.xk = icmp eq i64 %index.next431, %n.vec427
  br i1 %i.xk, label %vec.epilog.middle.block432, label %vec.epilog.vector.body428, !llvm.loop !60

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body428
  %cmp.n433 = icmp eq i64 %i.wx, %n.vec427
  br i1 %cmp.n433, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2, label %.lr.ph.peel.next.i.2.preheader

.lr.ph.peel.next.i.2.preheader:                   ; preds = %iter.check422, %vector.memcheck407, %vec.epilog.iter.check424, %vec.epilog.middle.block432
  %indvars.iv.2.ph = phi i64 [ 0, %iter.check422 ], [ 0, %vector.memcheck407 ], [ %n.vec413, %vec.epilog.iter.check424 ], [ %n.vec427, %vec.epilog.middle.block432 ] ; 3 uses
  %indvars.iv.in.i.2.ph = phi i64 [ %i.wv, %iter.check422 ], [ %i.wv, %vector.memcheck407 ], [ %i.xb, %vec.epilog.iter.check424 ], [ %i.xh, %vec.epilog.middle.block432 ] ; 2 uses
  %xtraiter582 = and i64 %i.wp, 3                 ; 2 uses
  %lcmp.mod583.not = icmp eq i64 %xtraiter582, 0
  br i1 %lcmp.mod583.not, label %.lr.ph.peel.next.i.2.prol.loopexit, label %.lr.ph.peel.next.i.2.prol

.lr.ph.peel.next.i.2.prol:                        ; preds = %.lr.ph.peel.next.i.2.preheader, %.lr.ph.peel.next.i.2.prol
  %indvars.iv.2.prol = phi i64 [ %indvars.iv.next.2.prol, %.lr.ph.peel.next.i.2.prol ], [ %indvars.iv.2.ph, %.lr.ph.peel.next.i.2.preheader ] ; 2 uses
  %indvars.iv.in.i.2.prol = phi i64 [ %indvars.iv.i.2.prol, %.lr.ph.peel.next.i.2.prol ], [ %indvars.iv.in.i.2.ph, %.lr.ph.peel.next.i.2.preheader ]
  %prol.iter584 = phi i64 [ %prol.iter584.next, %.lr.ph.peel.next.i.2.prol ], [ 0, %.lr.ph.peel.next.i.2.preheader ]
  %indvars.iv.i.2.prol = add nsw i64 %indvars.iv.in.i.2.prol, 1 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2.prol
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !13
  %i.xn = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.prol
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !13
  %indvars.iv.next.2.prol = add nuw nsw i64 %indvars.iv.2.prol, 1 ; 2 uses
  %prol.iter584.next = add i64 %prol.iter584, 1   ; 2 uses
  %prol.iter584.cmp.not = icmp eq i64 %prol.iter584.next, %xtraiter582
  br i1 %prol.iter584.cmp.not, label %.lr.ph.peel.next.i.2.prol.loopexit, label %.lr.ph.peel.next.i.2.prol, !llvm.loop !61

.lr.ph.peel.next.i.2.prol.loopexit:               ; preds = %.lr.ph.peel.next.i.2.prol, %.lr.ph.peel.next.i.2.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %.lr.ph.peel.next.i.2.preheader ], [ %indvars.iv.next.2.prol, %.lr.ph.peel.next.i.2.prol ]
  %indvars.iv.in.i.2.unr = phi i64 [ %indvars.iv.in.i.2.ph, %.lr.ph.peel.next.i.2.preheader ], [ %indvars.iv.i.2.prol, %.lr.ph.peel.next.i.2.prol ]
  %i.xo = sub nsw i64 %indvars.iv.2.ph, %i.wx
  %i.xp = icmp ugt i64 %i.xo, -4
  br i1 %i.xp, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2, label %.lr.ph.peel.next.i.2

.lr.ph.peel.next.i.2:                             ; preds = %.lr.ph.peel.next.i.2.prol.loopexit, %.lr.ph.peel.next.i.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3600, %.lr.ph.peel.next.i.2 ], [ %indvars.iv.2.unr, %.lr.ph.peel.next.i.2.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.2 = phi i64 [ %indvars.iv.i.2.3599, %.lr.ph.peel.next.i.2 ], [ %indvars.iv.in.i.2.unr, %.lr.ph.peel.next.i.2.prol.loopexit ] ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !13
  %i.xs = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2
  %i.xt = getelementptr i8, ptr %i.xs, i64 1
  store i8 %i.xr, ptr %i.xt, align 1, !tbaa !13
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !13
  %i.xx = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2
  %i.xy = getelementptr i8, ptr %i.xx, i64 2
  store i8 %i.xw, ptr %i.xy, align 1, !tbaa !13
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 2
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !13
  %i.yc = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2
  %i.yd = getelementptr i8, ptr %i.yc, i64 3
  store i8 %i.yb, ptr %i.yd, align 1, !tbaa !13
  %indvars.iv.i.2.3599 = add nsw i64 %indvars.iv.in.i.2, 4 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !13
  %i.yh = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.3599
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !13
  %indvars.iv.next.2.3600 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %exitcond.not.i.2.3601 = icmp eq i64 %indvars.iv.next.2.3600, %i.wx
  br i1 %exitcond.not.i.2.3601, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2, label %.lr.ph.peel.next.i.2, !llvm.loop !62

_ZN7CaDiCaL6Report12print_headerEPc.exit.2:       ; preds = %.lr.ph.peel.next.i.2.prol.loopexit, %.lr.ph.peel.next.i.2, %middle.block419, %vec.epilog.middle.block432, %.lr.ph.preheader.i.2, %.lr.ph125.preheader.2
  %i.yi = load ptr, ptr %i.aw, align 16, !tbaa !11 ; 9 uses
  %i.yj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yi) #13 ; 6 uses
  %i.yk = trunc i64 %i.yj to i32                  ; 3 uses
  %i.yl = icmp sgt i32 %i.yk, -1
  br i1 %i.yl, label %.lr.ph.preheader.i.2.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1

.lr.ph.preheader.i.2.1:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.2
  %i.ym = load i32, ptr %i.eg, align 8, !tbaa !12
  %i.yn = add nuw nsw i32 %i.yk, 1
  %.neg15.i.2.1 = lshr i32 %i.yn, 1
  %reass.sub.2.1 = sub i32 %i.ym, %.neg15.i.2.1
  %i.yo = add i32 %reass.sub.2.1, -3
  %i.yp = sext i32 %i.yo to i64                   ; 8 uses
  %i.yq = getelementptr inbounds i8, ptr %i.gh, i64 %i.yp
  store i8 32, ptr %i.yq, align 1, !tbaa !13
  %exitcond.peel.not.i.2.1 = icmp eq i32 %i.yk, 0
  br i1 %exitcond.peel.not.i.2.1, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1, label %iter.check451

iter.check451:                                    ; preds = %.lr.ph.preheader.i.2.1
  %i.yr = and i64 %i.yj, 2147483647               ; 6 uses
  %min.iters.check438 = icmp samesign ult i64 %i.yr, 8
  br i1 %min.iters.check438, label %.lr.ph.peel.next.i.2.1.preheader, label %vector.memcheck436

vector.memcheck436:                               ; preds = %iter.check451
  %34 = ptrtoaddr ptr %i.gh to i64
  %35 = ptrtoaddr ptr %i.yi to i64
  %i.ys = add i64 %34, %i.yp
  %i.yt = sub i64 %i.ys, %35
  %diff.check437 = icmp ult i64 %i.yt, 31
  br i1 %diff.check437, label %.lr.ph.peel.next.i.2.1.preheader, label %vector.main.loop.iter.check439

vector.main.loop.iter.check439:                   ; preds = %vector.memcheck436
  %min.iters.check440 = icmp samesign ult i64 %i.yr, 32
  br i1 %min.iters.check440, label %vec.epilog.ph455, label %vector.ph441

vector.ph441:                                     ; preds = %vector.main.loop.iter.check439
  %i.yu = and i64 %i.yj, 24
  %n.vec442 = and i64 %i.yj, 2147483616           ; 5 uses
  %i.yv = add nsw i64 %n.vec442, %i.yp
  %invariant.gep648 = getelementptr i8, ptr %i.gh, i64 %i.yp
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph441, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph441 ], [ %index.next447, %vector.body443 ] ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yi, i64 %index444 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load445 = load <16 x i8>, ptr %i.yw, align 1, !tbaa !13
  %wide.load446 = load <16 x i8>, ptr %i.yx, align 1, !tbaa !13
  %gep649 = getelementptr i8, ptr %invariant.gep648, i64 %index444 ; 2 uses
  %i.yy = getelementptr i8, ptr %gep649, i64 1
  %i.yz = getelementptr i8, ptr %gep649, i64 17
  store <16 x i8> %wide.load445, ptr %i.yy, align 1, !tbaa !13
  store <16 x i8> %wide.load446, ptr %i.yz, align 1, !tbaa !13
  %index.next447 = add nuw i64 %index444, 32      ; 2 uses
  %i.za = icmp eq i64 %index.next447, %n.vec442
  br i1 %i.za, label %middle.block448, label %vector.body443, !llvm.loop !63

middle.block448:                                  ; preds = %vector.body443
  %cmp.n449 = icmp eq i64 %i.yr, %n.vec442
  br i1 %cmp.n449, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1, label %vec.epilog.iter.check453

vec.epilog.iter.check453:                         ; preds = %middle.block448
  %min.epilog.iters.check454 = icmp eq i64 %i.yu, 0
  br i1 %min.epilog.iters.check454, label %.lr.ph.peel.next.i.2.1.preheader, label %vec.epilog.ph455, !prof !259

vec.epilog.ph455:                                 ; preds = %vector.main.loop.iter.check439, %vec.epilog.iter.check453
  %vec.epilog.resume.val450 = phi i64 [ %n.vec442, %vec.epilog.iter.check453 ], [ 0, %vector.main.loop.iter.check439 ]
  %n.vec456 = and i64 %i.yj, 2147483640           ; 4 uses
  %i.zb = add nsw i64 %n.vec456, %i.yp
  %invariant.gep650 = getelementptr i8, ptr %i.gh, i64 %i.yp
  br label %vec.epilog.vector.body457

vec.epilog.vector.body457:                        ; preds = %vec.epilog.vector.body457, %vec.epilog.ph455
  %index458 = phi i64 [ %vec.epilog.resume.val450, %vec.epilog.ph455 ], [ %index.next460, %vec.epilog.vector.body457 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yi, i64 %index458
  %wide.load459 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !13
  %gep651 = getelementptr i8, ptr %invariant.gep650, i64 %index458
  %i.zd = getelementptr i8, ptr %gep651, i64 1
  store <8 x i8> %wide.load459, ptr %i.zd, align 1, !tbaa !13
  %index.next460 = add nuw i64 %index458, 8       ; 2 uses
  %i.ze = icmp eq i64 %index.next460, %n.vec456
  br i1 %i.ze, label %vec.epilog.middle.block461, label %vec.epilog.vector.body457, !llvm.loop !64

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body457
  %cmp.n462 = icmp eq i64 %i.yr, %n.vec456
  br i1 %cmp.n462, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1, label %.lr.ph.peel.next.i.2.1.preheader

.lr.ph.peel.next.i.2.1.preheader:                 ; preds = %iter.check451, %vector.memcheck436, %vec.epilog.iter.check453, %vec.epilog.middle.block461
  %indvars.iv.2.1.ph = phi i64 [ 0, %iter.check451 ], [ 0, %vector.memcheck436 ], [ %n.vec442, %vec.epilog.iter.check453 ], [ %n.vec456, %vec.epilog.middle.block461 ] ; 3 uses
  %indvars.iv.in.i.2.1.ph = phi i64 [ %i.yp, %iter.check451 ], [ %i.yp, %vector.memcheck436 ], [ %i.yv, %vec.epilog.iter.check453 ], [ %i.zb, %vec.epilog.middle.block461 ] ; 2 uses
  %xtraiter603 = and i64 %i.yj, 3                 ; 2 uses
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod604.not, label %.lr.ph.peel.next.i.2.1.prol.loopexit, label %.lr.ph.peel.next.i.2.1.prol

.lr.ph.peel.next.i.2.1.prol:                      ; preds = %.lr.ph.peel.next.i.2.1.preheader, %.lr.ph.peel.next.i.2.1.prol
  %indvars.iv.2.1.prol = phi i64 [ %indvars.iv.next.2.1.prol, %.lr.ph.peel.next.i.2.1.prol ], [ %indvars.iv.2.1.ph, %.lr.ph.peel.next.i.2.1.preheader ] ; 2 uses
  %indvars.iv.in.i.2.1.prol = phi i64 [ %indvars.iv.i.2.1.prol, %.lr.ph.peel.next.i.2.1.prol ], [ %indvars.iv.in.i.2.1.ph, %.lr.ph.peel.next.i.2.1.preheader ]
  %prol.iter605 = phi i64 [ %prol.iter605.next, %.lr.ph.peel.next.i.2.1.prol ], [ 0, %.lr.ph.peel.next.i.2.1.preheader ]
  %indvars.iv.i.2.1.prol = add nsw i64 %indvars.iv.in.i.2.1.prol, 1 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yi, i64 %indvars.iv.2.1.prol
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13
  %i.zh = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.1.prol
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !13
  %indvars.iv.next.2.1.prol = add nuw nsw i64 %indvars.iv.2.1.prol, 1 ; 2 uses
  %prol.iter605.next = add i64 %prol.iter605, 1   ; 2 uses
  %prol.iter605.cmp.not = icmp eq i64 %prol.iter605.next, %xtraiter603
  br i1 %prol.iter605.cmp.not, label %.lr.ph.peel.next.i.2.1.prol.loopexit, label %.lr.ph.peel.next.i.2.1.prol, !llvm.loop !65

.lr.ph.peel.next.i.2.1.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.2.1.prol, %.lr.ph.peel.next.i.2.1.preheader
  %indvars.iv.2.1.unr = phi i64 [ %indvars.iv.2.1.ph, %.lr.ph.peel.next.i.2.1.preheader ], [ %indvars.iv.next.2.1.prol, %.lr.ph.peel.next.i.2.1.prol ]
  %indvars.iv.in.i.2.1.unr = phi i64 [ %indvars.iv.in.i.2.1.ph, %.lr.ph.peel.next.i.2.1.preheader ], [ %indvars.iv.i.2.1.prol, %.lr.ph.peel.next.i.2.1.prol ]
  %i.zi = sub nsw i64 %indvars.iv.2.1.ph, %i.yr
  %i.zj = icmp ugt i64 %i.zi, -4
  br i1 %i.zj, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1, label %.lr.ph.peel.next.i.2.1

.lr.ph.peel.next.i.2.1:                           ; preds = %.lr.ph.peel.next.i.2.1.prol.loopexit, %.lr.ph.peel.next.i.2.1
  %indvars.iv.2.1 = phi i64 [ %indvars.iv.next.2.1.3, %.lr.ph.peel.next.i.2.1 ], [ %indvars.iv.2.1.unr, %.lr.ph.peel.next.i.2.1.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.2.1 = phi i64 [ %indvars.iv.i.2.1.3, %.lr.ph.peel.next.i.2.1 ], [ %indvars.iv.in.i.2.1.unr, %.lr.ph.peel.next.i.2.1.prol.loopexit ] ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yi, i64 %indvars.iv.2.1
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !13
  %i.zm = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.1
  %i.zn = getelementptr i8, ptr %i.zm, i64 1
  store i8 %i.zl, ptr %i.zn, align 1, !tbaa !13
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yi, i64 %indvars.iv.2.1
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !13
  %i.zr = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.1
  %i.zs = getelementptr i8, ptr %i.zr, i64 2
  store i8 %i.zq, ptr %i.zs, align 1, !tbaa !13
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yi, i64 %indvars.iv.2.1
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 2
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !13
  %i.zw = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.1
  %i.zx = getelementptr i8, ptr %i.zw, i64 3
  store i8 %i.zv, ptr %i.zx, align 1, !tbaa !13
  %indvars.iv.i.2.1.3 = add nsw i64 %indvars.iv.in.i.2.1, 4 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yi, i64 %indvars.iv.2.1
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 3
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !13
  %i.aab = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.1.3
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !13
  %indvars.iv.next.2.1.3 = add nuw nsw i64 %indvars.iv.2.1, 4 ; 2 uses
  %exitcond.not.i.2.1.3 = icmp eq i64 %indvars.iv.next.2.1.3, %i.yr
  br i1 %exitcond.not.i.2.1.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1, label %.lr.ph.peel.next.i.2.1, !llvm.loop !66

_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1:     ; preds = %.lr.ph.peel.next.i.2.1.prol.loopexit, %.lr.ph.peel.next.i.2.1, %middle.block448, %vec.epilog.middle.block461, %.lr.ph.preheader.i.2.1, %_ZN7CaDiCaL6Report12print_headerEPc.exit.2
  %i.aac = load ptr, ptr %i.bm, align 16, !tbaa !11 ; 9 uses
  %i.aad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aac) #13 ; 6 uses
  %i.aae = trunc i64 %i.aad to i32                ; 3 uses
  %i.aaf = icmp sgt i32 %i.aae, -1
  br i1 %i.aaf, label %.lr.ph.preheader.i.2.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2

.lr.ph.preheader.i.2.2:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1
  %i.aag = load i32, ptr %i.fe, align 8, !tbaa !12
  %i.aah = add nuw nsw i32 %i.aae, 1
  %.neg15.i.2.2 = lshr i32 %i.aah, 1
  %reass.sub.2.2 = sub i32 %i.aag, %.neg15.i.2.2
  %i.aai = add i32 %reass.sub.2.2, -3
  %i.aaj = sext i32 %i.aai to i64                 ; 8 uses
  %i.aak = getelementptr inbounds i8, ptr %i.gh, i64 %i.aaj
  store i8 32, ptr %i.aak, align 1, !tbaa !13
  %exitcond.peel.not.i.2.2 = icmp eq i32 %i.aae, 0
  br i1 %exitcond.peel.not.i.2.2, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, label %iter.check480

iter.check480:                                    ; preds = %.lr.ph.preheader.i.2.2
  %i.aal = and i64 %i.aad, 2147483647             ; 6 uses
  %min.iters.check467 = icmp samesign ult i64 %i.aal, 8
  br i1 %min.iters.check467, label %.lr.ph.peel.next.i.2.2.preheader, label %vector.memcheck465

vector.memcheck465:                               ; preds = %iter.check480
  %36 = ptrtoaddr ptr %i.gh to i64
  %37 = ptrtoaddr ptr %i.aac to i64
  %i.aam = add i64 %36, %i.aaj
  %i.aan = sub i64 %i.aam, %37
  %diff.check466 = icmp ult i64 %i.aan, 31
  br i1 %diff.check466, label %.lr.ph.peel.next.i.2.2.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %vector.memcheck465
  %min.iters.check469 = icmp samesign ult i64 %i.aal, 32
  br i1 %min.iters.check469, label %vec.epilog.ph484, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.aao = and i64 %i.aad, 24
  %n.vec471 = and i64 %i.aad, 2147483616          ; 5 uses
  %i.aap = add nsw i64 %n.vec471, %i.aaj
  %invariant.gep652 = getelementptr i8, ptr %i.gh, i64 %i.aaj
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next476, %vector.body472 ] ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aac, i64 %index473 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %wide.load474 = load <16 x i8>, ptr %i.aaq, align 1, !tbaa !13
  %wide.load475 = load <16 x i8>, ptr %i.aar, align 1, !tbaa !13
  %gep653 = getelementptr i8, ptr %invariant.gep652, i64 %index473 ; 2 uses
  %i.aas = getelementptr i8, ptr %gep653, i64 1
  %i.aat = getelementptr i8, ptr %gep653, i64 17
  store <16 x i8> %wide.load474, ptr %i.aas, align 1, !tbaa !13
  store <16 x i8> %wide.load475, ptr %i.aat, align 1, !tbaa !13
  %index.next476 = add nuw i64 %index473, 32      ; 2 uses
  %i.aau = icmp eq i64 %index.next476, %n.vec471
  br i1 %i.aau, label %middle.block477, label %vector.body472, !llvm.loop !67

middle.block477:                                  ; preds = %vector.body472
  %cmp.n478 = icmp eq i64 %i.aal, %n.vec471
  br i1 %cmp.n478, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, label %vec.epilog.iter.check482

vec.epilog.iter.check482:                         ; preds = %middle.block477
  %min.epilog.iters.check483 = icmp eq i64 %i.aao, 0
  br i1 %min.epilog.iters.check483, label %.lr.ph.peel.next.i.2.2.preheader, label %vec.epilog.ph484, !prof !259

vec.epilog.ph484:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check482
  %vec.epilog.resume.val479 = phi i64 [ %n.vec471, %vec.epilog.iter.check482 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec485 = and i64 %i.aad, 2147483640          ; 4 uses
  %i.aav = add nsw i64 %n.vec485, %i.aaj
  %invariant.gep654 = getelementptr i8, ptr %i.gh, i64 %i.aaj
  br label %vec.epilog.vector.body486

vec.epilog.vector.body486:                        ; preds = %vec.epilog.vector.body486, %vec.epilog.ph484
  %index487 = phi i64 [ %vec.epilog.resume.val479, %vec.epilog.ph484 ], [ %index.next489, %vec.epilog.vector.body486 ] ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aac, i64 %index487
  %wide.load488 = load <8 x i8>, ptr %i.aaw, align 1, !tbaa !13
  %gep655 = getelementptr i8, ptr %invariant.gep654, i64 %index487
  %i.aax = getelementptr i8, ptr %gep655, i64 1
  store <8 x i8> %wide.load488, ptr %i.aax, align 1, !tbaa !13
  %index.next489 = add nuw i64 %index487, 8       ; 2 uses
  %i.aay = icmp eq i64 %index.next489, %n.vec485
  br i1 %i.aay, label %vec.epilog.middle.block490, label %vec.epilog.vector.body486, !llvm.loop !68

vec.epilog.middle.block490:                       ; preds = %vec.epilog.vector.body486
  %cmp.n491 = icmp eq i64 %i.aal, %n.vec485
  br i1 %cmp.n491, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, label %.lr.ph.peel.next.i.2.2.preheader

.lr.ph.peel.next.i.2.2.preheader:                 ; preds = %iter.check480, %vector.memcheck465, %vec.epilog.iter.check482, %vec.epilog.middle.block490
  %indvars.iv.2.2.ph = phi i64 [ 0, %iter.check480 ], [ 0, %vector.memcheck465 ], [ %n.vec471, %vec.epilog.iter.check482 ], [ %n.vec485, %vec.epilog.middle.block490 ] ; 3 uses
  %indvars.iv.in.i.2.2.ph = phi i64 [ %i.aaj, %iter.check480 ], [ %i.aaj, %vector.memcheck465 ], [ %i.aap, %vec.epilog.iter.check482 ], [ %i.aav, %vec.epilog.middle.block490 ] ; 2 uses
  %xtraiter606 = and i64 %i.aad, 3                ; 2 uses
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br i1 %lcmp.mod607.not, label %.lr.ph.peel.next.i.2.2.prol.loopexit, label %.lr.ph.peel.next.i.2.2.prol

.lr.ph.peel.next.i.2.2.prol:                      ; preds = %.lr.ph.peel.next.i.2.2.preheader, %.lr.ph.peel.next.i.2.2.prol
  %indvars.iv.2.2.prol = phi i64 [ %indvars.iv.next.2.2.prol, %.lr.ph.peel.next.i.2.2.prol ], [ %indvars.iv.2.2.ph, %.lr.ph.peel.next.i.2.2.preheader ] ; 2 uses
  %indvars.iv.in.i.2.2.prol = phi i64 [ %indvars.iv.i.2.2.prol, %.lr.ph.peel.next.i.2.2.prol ], [ %indvars.iv.in.i.2.2.ph, %.lr.ph.peel.next.i.2.2.preheader ]
  %prol.iter608 = phi i64 [ %prol.iter608.next, %.lr.ph.peel.next.i.2.2.prol ], [ 0, %.lr.ph.peel.next.i.2.2.preheader ]
  %indvars.iv.i.2.2.prol = add nsw i64 %indvars.iv.in.i.2.2.prol, 1 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.2.2.prol
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !13
  %i.abb = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.2.prol
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !13
  %indvars.iv.next.2.2.prol = add nuw nsw i64 %indvars.iv.2.2.prol, 1 ; 2 uses
  %prol.iter608.next = add i64 %prol.iter608, 1   ; 2 uses
  %prol.iter608.cmp.not = icmp eq i64 %prol.iter608.next, %xtraiter606
  br i1 %prol.iter608.cmp.not, label %.lr.ph.peel.next.i.2.2.prol.loopexit, label %.lr.ph.peel.next.i.2.2.prol, !llvm.loop !69

.lr.ph.peel.next.i.2.2.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.2.2.prol, %.lr.ph.peel.next.i.2.2.preheader
  %indvars.iv.2.2.unr = phi i64 [ %indvars.iv.2.2.ph, %.lr.ph.peel.next.i.2.2.preheader ], [ %indvars.iv.next.2.2.prol, %.lr.ph.peel.next.i.2.2.prol ]
  %indvars.iv.in.i.2.2.unr = phi i64 [ %indvars.iv.in.i.2.2.ph, %.lr.ph.peel.next.i.2.2.preheader ], [ %indvars.iv.i.2.2.prol, %.lr.ph.peel.next.i.2.2.prol ]
  %i.abc = sub nsw i64 %indvars.iv.2.2.ph, %i.aal
  %i.abd = icmp ugt i64 %i.abc, -4
  br i1 %i.abd, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, label %.lr.ph.peel.next.i.2.2

.lr.ph.peel.next.i.2.2:                           ; preds = %.lr.ph.peel.next.i.2.2.prol.loopexit, %.lr.ph.peel.next.i.2.2
  %indvars.iv.2.2 = phi i64 [ %indvars.iv.next.2.2.3, %.lr.ph.peel.next.i.2.2 ], [ %indvars.iv.2.2.unr, %.lr.ph.peel.next.i.2.2.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.2.2 = phi i64 [ %indvars.iv.i.2.2.3, %.lr.ph.peel.next.i.2.2 ], [ %indvars.iv.in.i.2.2.unr, %.lr.ph.peel.next.i.2.2.prol.loopexit ] ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.2.2
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !13
  %i.abg = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.2
  %i.abh = getelementptr i8, ptr %i.abg, i64 1
  store i8 %i.abf, ptr %i.abh, align 1, !tbaa !13
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.2.2
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !13
  %i.abl = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.2
  %i.abm = getelementptr i8, ptr %i.abl, i64 2
  store i8 %i.abk, ptr %i.abm, align 1, !tbaa !13
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.2.2
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 2
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !13
  %i.abq = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.2
  %i.abr = getelementptr i8, ptr %i.abq, i64 3
  store i8 %i.abp, ptr %i.abr, align 1, !tbaa !13
  %indvars.iv.i.2.2.3 = add nsw i64 %indvars.iv.in.i.2.2, 4 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aac, i64 %indvars.iv.2.2
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 3
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !13
  %i.abv = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.2.3
  store i8 %i.abu, ptr %i.abv, align 1, !tbaa !13
  %indvars.iv.next.2.2.3 = add nuw nsw i64 %indvars.iv.2.2, 4 ; 2 uses
  %exitcond.not.i.2.2.3 = icmp eq i64 %indvars.iv.next.2.2.3, %i.aal
  br i1 %exitcond.not.i.2.2.3, label %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, label %.lr.ph.peel.next.i.2.2, !llvm.loop !70

_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2:     ; preds = %.lr.ph.peel.next.i.2.2.prol.loopexit, %.lr.ph.peel.next.i.2.2, %middle.block477, %vec.epilog.middle.block490, %.lr.ph.preheader.i.2.2, %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.1
  %i.abw = load ptr, ptr %i.ch, align 16, !tbaa !11 ; 9 uses
  %i.abx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.abw) #13 ; 6 uses
  %i.aby = trunc i64 %i.abx to i32                ; 3 uses
  %i.abz = icmp sgt i32 %i.aby, -1
  br i1 %i.abz, label %.lr.ph.preheader.i.2.3, label %._crit_edge.2.preheader

.lr.ph.preheader.i.2.3:                           ; preds = %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2
  %i.aca = load i32, ptr %i.gc, align 8, !tbaa !12
  %i.acb = add nuw nsw i32 %i.aby, 1
  %.neg15.i.2.3 = lshr i32 %i.acb, 1
  %reass.sub.2.3 = sub i32 %i.aca, %.neg15.i.2.3
  %i.acc = add i32 %reass.sub.2.3, -3
  %i.acd = sext i32 %i.acc to i64                 ; 8 uses
  %i.ace = getelementptr inbounds i8, ptr %i.gh, i64 %i.acd
  store i8 32, ptr %i.ace, align 1, !tbaa !13
  %exitcond.peel.not.i.2.3 = icmp eq i32 %i.aby, 0
  br i1 %exitcond.peel.not.i.2.3, label %._crit_edge.2.preheader, label %iter.check509

iter.check509:                                    ; preds = %.lr.ph.preheader.i.2.3
  %i.acf = and i64 %i.abx, 2147483647             ; 6 uses
  %min.iters.check496 = icmp samesign ult i64 %i.acf, 8
  br i1 %min.iters.check496, label %.lr.ph.peel.next.i.2.3.preheader, label %vector.memcheck494

vector.memcheck494:                               ; preds = %iter.check509
  %38 = ptrtoaddr ptr %i.gh to i64
  %39 = ptrtoaddr ptr %i.abw to i64
  %i.acg = add i64 %38, %i.acd
  %i.ach = sub i64 %i.acg, %39
  %diff.check495 = icmp ult i64 %i.ach, 31
  br i1 %diff.check495, label %.lr.ph.peel.next.i.2.3.preheader, label %vector.main.loop.iter.check497

vector.main.loop.iter.check497:                   ; preds = %vector.memcheck494
  %min.iters.check498 = icmp samesign ult i64 %i.acf, 32
  br i1 %min.iters.check498, label %vec.epilog.ph513, label %vector.ph499

vector.ph499:                                     ; preds = %vector.main.loop.iter.check497
  %i.aci = and i64 %i.abx, 24
  %n.vec500 = and i64 %i.abx, 2147483616          ; 5 uses
  %i.acj = add nsw i64 %n.vec500, %i.acd
  %invariant.gep656 = getelementptr i8, ptr %i.gh, i64 %i.acd
  br label %vector.body501

vector.body501:                                   ; preds = %vector.ph499, %vector.body501
  %index502 = phi i64 [ 0, %vector.ph499 ], [ %index.next505, %vector.body501 ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abw, i64 %index502 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %wide.load503 = load <16 x i8>, ptr %i.ack, align 1, !tbaa !13
  %wide.load504 = load <16 x i8>, ptr %i.acl, align 1, !tbaa !13
  %gep657 = getelementptr i8, ptr %invariant.gep656, i64 %index502 ; 2 uses
  %i.acm = getelementptr i8, ptr %gep657, i64 1
  %i.acn = getelementptr i8, ptr %gep657, i64 17
  store <16 x i8> %wide.load503, ptr %i.acm, align 1, !tbaa !13
  store <16 x i8> %wide.load504, ptr %i.acn, align 1, !tbaa !13
  %index.next505 = add nuw i64 %index502, 32      ; 2 uses
  %i.aco = icmp eq i64 %index.next505, %n.vec500
  br i1 %i.aco, label %middle.block506, label %vector.body501, !llvm.loop !71

middle.block506:                                  ; preds = %vector.body501
  %cmp.n507 = icmp eq i64 %i.acf, %n.vec500
  br i1 %cmp.n507, label %._crit_edge.2.preheader, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block506
  %min.epilog.iters.check512 = icmp eq i64 %i.aci, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph.peel.next.i.2.3.preheader, label %vec.epilog.ph513, !prof !259

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check497, %vec.epilog.iter.check511
  %vec.epilog.resume.val508 = phi i64 [ %n.vec500, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check497 ]
  %n.vec514 = and i64 %i.abx, 2147483640          ; 4 uses
  %i.acp = add nsw i64 %n.vec514, %i.acd
  %invariant.gep658 = getelementptr i8, ptr %i.gh, i64 %i.acd
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val508, %vec.epilog.ph513 ], [ %index.next518, %vec.epilog.vector.body515 ] ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abw, i64 %index516
  %wide.load517 = load <8 x i8>, ptr %i.acq, align 1, !tbaa !13
  %gep659 = getelementptr i8, ptr %invariant.gep658, i64 %index516
  %i.acr = getelementptr i8, ptr %gep659, i64 1
  store <8 x i8> %wide.load517, ptr %i.acr, align 1, !tbaa !13
  %index.next518 = add nuw i64 %index516, 8       ; 2 uses
  %i.acs = icmp eq i64 %index.next518, %n.vec514
  br i1 %i.acs, label %vec.epilog.middle.block519, label %vec.epilog.vector.body515, !llvm.loop !72

vec.epilog.middle.block519:                       ; preds = %vec.epilog.vector.body515
  %cmp.n520 = icmp eq i64 %i.acf, %n.vec514
  br i1 %cmp.n520, label %._crit_edge.2.preheader, label %.lr.ph.peel.next.i.2.3.preheader

.lr.ph.peel.next.i.2.3.preheader:                 ; preds = %iter.check509, %vector.memcheck494, %vec.epilog.iter.check511, %vec.epilog.middle.block519
  %indvars.iv.2.3.ph = phi i64 [ 0, %iter.check509 ], [ 0, %vector.memcheck494 ], [ %n.vec500, %vec.epilog.iter.check511 ], [ %n.vec514, %vec.epilog.middle.block519 ] ; 3 uses
  %indvars.iv.in.i.2.3.ph = phi i64 [ %i.acd, %iter.check509 ], [ %i.acd, %vector.memcheck494 ], [ %i.acj, %vec.epilog.iter.check511 ], [ %i.acp, %vec.epilog.middle.block519 ] ; 2 uses
  %xtraiter609 = and i64 %i.abx, 3                ; 2 uses
  %lcmp.mod610.not = icmp eq i64 %xtraiter609, 0
  br i1 %lcmp.mod610.not, label %.lr.ph.peel.next.i.2.3.prol.loopexit, label %.lr.ph.peel.next.i.2.3.prol

.lr.ph.peel.next.i.2.3.prol:                      ; preds = %.lr.ph.peel.next.i.2.3.preheader, %.lr.ph.peel.next.i.2.3.prol
  %indvars.iv.2.3.prol = phi i64 [ %indvars.iv.next.2.3.prol, %.lr.ph.peel.next.i.2.3.prol ], [ %indvars.iv.2.3.ph, %.lr.ph.peel.next.i.2.3.preheader ] ; 2 uses
  %indvars.iv.in.i.2.3.prol = phi i64 [ %indvars.iv.i.2.3.prol, %.lr.ph.peel.next.i.2.3.prol ], [ %indvars.iv.in.i.2.3.ph, %.lr.ph.peel.next.i.2.3.preheader ]
  %prol.iter611 = phi i64 [ %prol.iter611.next, %.lr.ph.peel.next.i.2.3.prol ], [ 0, %.lr.ph.peel.next.i.2.3.preheader ]
  %indvars.iv.i.2.3.prol = add nsw i64 %indvars.iv.in.i.2.3.prol, 1 ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv.2.3.prol
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !13
  %i.acv = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.3.prol
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !13
  %indvars.iv.next.2.3.prol = add nuw nsw i64 %indvars.iv.2.3.prol, 1 ; 2 uses
  %prol.iter611.next = add i64 %prol.iter611, 1   ; 2 uses
  %prol.iter611.cmp.not = icmp eq i64 %prol.iter611.next, %xtraiter609
  br i1 %prol.iter611.cmp.not, label %.lr.ph.peel.next.i.2.3.prol.loopexit, label %.lr.ph.peel.next.i.2.3.prol, !llvm.loop !73

.lr.ph.peel.next.i.2.3.prol.loopexit:             ; preds = %.lr.ph.peel.next.i.2.3.prol, %.lr.ph.peel.next.i.2.3.preheader
  %indvars.iv.2.3.unr = phi i64 [ %indvars.iv.2.3.ph, %.lr.ph.peel.next.i.2.3.preheader ], [ %indvars.iv.next.2.3.prol, %.lr.ph.peel.next.i.2.3.prol ]
  %indvars.iv.in.i.2.3.unr = phi i64 [ %indvars.iv.in.i.2.3.ph, %.lr.ph.peel.next.i.2.3.preheader ], [ %indvars.iv.i.2.3.prol, %.lr.ph.peel.next.i.2.3.prol ]
  %i.acw = sub nsw i64 %indvars.iv.2.3.ph, %i.acf
  %i.acx = icmp ugt i64 %i.acw, -4
  br i1 %i.acx, label %._crit_edge.2.preheader, label %.lr.ph.peel.next.i.2.3

.lr.ph.peel.next.i.2.3:                           ; preds = %.lr.ph.peel.next.i.2.3.prol.loopexit, %.lr.ph.peel.next.i.2.3
  %indvars.iv.2.3 = phi i64 [ %indvars.iv.next.2.3.3, %.lr.ph.peel.next.i.2.3 ], [ %indvars.iv.2.3.unr, %.lr.ph.peel.next.i.2.3.prol.loopexit ] ; 5 uses
  %indvars.iv.in.i.2.3 = phi i64 [ %indvars.iv.i.2.3.3, %.lr.ph.peel.next.i.2.3 ], [ %indvars.iv.in.i.2.3.unr, %.lr.ph.peel.next.i.2.3.prol.loopexit ] ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv.2.3
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !13
  %i.ada = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.3
  %i.adb = getelementptr i8, ptr %i.ada, i64 1
  store i8 %i.acz, ptr %i.adb, align 1, !tbaa !13
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv.2.3
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 1
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !13
  %i.adf = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.3
  %i.adg = getelementptr i8, ptr %i.adf, i64 2
  store i8 %i.ade, ptr %i.adg, align 1, !tbaa !13
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv.2.3
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 2
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !13
  %i.adk = getelementptr i8, ptr %i.gh, i64 %indvars.iv.in.i.2.3
  %i.adl = getelementptr i8, ptr %i.adk, i64 3
  store i8 %i.adj, ptr %i.adl, align 1, !tbaa !13
  %indvars.iv.i.2.3.3 = add nsw i64 %indvars.iv.in.i.2.3, 4 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv.2.3
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 3
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !13
  %i.adp = getelementptr inbounds i8, ptr %i.gh, i64 %indvars.iv.i.2.3.3
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !13
  %indvars.iv.next.2.3.3 = add nuw nsw i64 %indvars.iv.2.3, 4 ; 2 uses
  %exitcond.not.i.2.3.3 = icmp eq i64 %indvars.iv.next.2.3.3, %i.acf
  br i1 %exitcond.not.i.2.3.3, label %._crit_edge.2.preheader, label %.lr.ph.peel.next.i.2.3, !llvm.loop !74

._crit_edge.2.preheader:                          ; preds = %.lr.ph.peel.next.i.2.3.prol.loopexit, %.lr.ph.peel.next.i.2.3, %middle.block506, %vec.epilog.middle.block519, %_ZN7CaDiCaL6Report12print_headerEPc.exit.2.2, %.lr.ph.preheader.i.2.3
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.2.preheader, %._crit_edge.2
  %indvars.iv138.2 = phi i64 [ %indvars.iv.next139.2, %._crit_edge.2 ], [ %i.gl, %._crit_edge.2.preheader ] ; 2 uses
  %i.adq = getelementptr i8, ptr %i.gh, i64 %indvars.iv138.2 ; 2 uses
  %i.adr = getelementptr i8, ptr %i.adq, i64 -1
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !13
  %i.adt = icmp eq i8 %i.ads, 32
  %indvars.iv.next139.2 = add nsw i64 %indvars.iv138.2, -1
  br i1 %i.adt, label %._crit_edge.2, label %bb.p, !llvm.loop !42

bb.p:                                             ; preds = %._crit_edge.2
  store i8 0, ptr %i.adq, align 1, !tbaa !13
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.adu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.adv = trunc nuw i8 %i.adu to i1
  br i1 %i.adv, label %bb.q, label %_ZN7CaDiCaL8Terminal6yellowEb.exit.2

bb.q:                                             ; preds = %bb.p
  %i.adw = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i.2 = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.adw) ; 0 uses
  %i.adx = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.ady = call i32 @fputc(i32 noundef 48, ptr noundef %i.adx) ; 0 uses
  %i.adz = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.aea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adz, ptr noundef nonnull @.str.24, i32 noundef 33) #14 ; 0 uses
  %i.aeb = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.aec = call i32 @fflush(ptr noundef %i.aeb)   ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6yellowEb.exit.2

_ZN7CaDiCaL8Terminal6yellowEb.exit.2:             ; preds = %bb.q, %bb.p
  %i.aed = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.aee = call i32 @fputs(ptr noundef nonnull %i.gh, ptr noundef %i.aed) ; 0 uses
  %i.aef = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 9), align 1, !tbaa !22, !range !18, !noundef !19
  %i.aeg = trunc nuw i8 %i.aef to i1
  %i.aeh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7CaDiCaL4toutE, i64 8), align 8, !range !18
  %i.aei = trunc nuw i8 %i.aeh to i1
  %or.cond.i.i.2 = select i1 %i.aeg, i1 %i.aei, i1 false
  br i1 %or.cond.i.i.2, label %bb.r, label %_ZN7CaDiCaL8Terminal6normalEv.exit.2

bb.r:                                             ; preds = %_ZN7CaDiCaL8Terminal6yellowEb.exit.2
  %i.aej = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.i.i91.2 = call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %i.aej) ; 0 uses
  %i.aek = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %fwrite.i.2 = call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.aek) ; 0 uses
  %i.ael = load ptr, ptr @_ZN7CaDiCaL4toutE, align 8, !tbaa !23
  %i.aem = call i32 @fflush(ptr noundef %i.ael)   ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6normalEv.exit.2

_ZN7CaDiCaL8Terminal6normalEv.exit.2:             ; preds = %bb.r, %_ZN7CaDiCaL8Terminal6yellowEb.exit.2
  %i.aen = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.aeo = call i32 @fputc(i32 noundef 10, ptr noundef %i.aen) ; 0 uses
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.aep = load ptr, ptr @stdout, align 8, !tbaa !256
  %i.aeq = call i32 @fputc(i32 noundef 10, ptr noundef %i.aep) ; 0 uses
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #16
  br label %bb.t

bb.s:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.aer = add nsw i64 %i.cj, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7CaDiCaL8Terminal6normalEv.exit.2
  %storemerge = phi i64 [ 19, %_ZN7CaDiCaL8Terminal6normalEv.exit.2 ], [ %i.aer, %bb.s ]
  store i64 %storemerge, ptr %i.ci, align 8, !tbaa !255
  call void @_ZN7CaDiCaL8Internal12print_prefixEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.aes = sext i8 %1 to i32
  switch i8 %1, label %_ZN7CaDiCaL8Terminal7magentaEb.exit [
    i8 91, label %bb.u
    i8 93, label %bb.u
    i8 115, label %bb.w
    i8 118, label %bb.w
    i8 119, label %bb.w
    i8 116, label %bb.w
    i8 98, label %bb.w
    i8 99, label %bb.w
    i8 101, label %bb.y
    i8 112, label %bb.z
    i8 50, label %bb.z
    i8 51, label %bb.z
    i8 100, label %bb.ab
    i8 122, label %bb.ac
    i8 102, label %bb.ac
end_hunk_0
