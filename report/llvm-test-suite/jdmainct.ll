Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jdmainct?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@process_data_context_main:bb.a
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !60
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !96
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 4, !tbaa !57
  %i.ak = load i32, ptr %2, align 4, !tbaa !7
  %.not50 = icmp ult i32 %i.ak, %3
  br i1 %.not50, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.al, align 4, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.at = load i32, ptr %i.as, align 8, !tbaa !97
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %set_bottom_pointers.exit

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph36.i, label %set_bottom_pointers.exit

.lr.ph36.i:                                       ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !56
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
  %wide.trip.count42.i = zext nneg i32 %i.aw to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph36.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next40.i, %._crit_edge.i ] ; 3 uses
  %.034.i = phi ptr [ %i.az, %.lr.ph36.i ], [ %i.cg, %._crit_edge.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.034.i, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %.034.i, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %i.bm = mul nsw i32 %i.bl, %i.bj                ; 3 uses
  %i.bn = sdiv i32 %i.bm, %i.an                   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.034.i, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !98
  %i.bq = urem i32 %i.bp, %i.bm                   ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %spec.select.i = select i1 %i.br, i32 %i.bm, i32 %i.bq ; 2 uses
  %i.bs = icmp eq i64 %indvars.iv39.i, 0
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = add nsw i32 %spec.select.i, -1
  %i.bu = sdiv i32 %i.bt, %i.bn
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bb, align 8, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bw = icmp sgt i32 %i.bn, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv39.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = shl nuw i32 %i.bn, 1                    ; 2 uses
  %i.ca = sext i32 %spec.select.i to i64
  %i.cb = getelementptr [8 x i8], ptr %i.by, i64 %i.ca ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !53 ; 2 uses
  %min.iters.check = icmp slt i32 %i.bz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.cd, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.ce, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv.i
  store ptr %.pre.i, ptr %gep.i, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !90

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.k
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.034.i, i64 96
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %set_bottom_pointers.exit, label %bb.i, !llvm.loop !91

set_bottom_pointers.exit:                         ; preds = %._crit_edge.i, %bb.h, %bb.g
  store i32 1, ptr %i.s, align 4, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %set_bottom_pointers.exit, %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !56
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !96
  tail call void %i.ck(ptr noundef %0, ptr noundef %i.cq, ptr noundef nonnull %i.cr, i32 noundef %i.ct, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !60
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !96
  %i.cw = icmp ult i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !58
  %i.cz = icmp eq i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.db = load i32, ptr %i.da, align 4, !tbaa !42 ; 5 uses
  br i1 %i.cz, label %bb.n, label %set_wraparound_pointers.exit

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = add nsw i32 %i.db, 1
  %i.dn = add nsw i32 %i.db, 2
  %wide.trip.count55.i = zext nneg i32 %i.dd to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i51, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i51 ] ; 3 uses
  %.047.i = phi ptr [ %i.dg, %.lr.ph49.i ], [ %i.go, %._crit_edge.i51 ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.047.i, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !49
  %i.dq = getelementptr inbounds nuw i8, ptr %.047.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !50
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = sdiv i32 %i.ds, %i.db                   ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv52.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !51 ; 9 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv52.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 9 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64              ; 7 uses
  %i.ea = icmp sgt i32 %i.dt, 0
  br i1 %i.ea, label %.lr.ph.i52, label %._crit_edge.i51

.lr.ph.i52:                                       ; preds = %bb.o
  %i.eb = mul nsw i32 %i.dt, %i.dm
  %i.ec = mul nsw i32 %i.dt, %i.dn
  %i.ed = sext i32 %i.eb to i64                   ; 4 uses
  %i.ee = zext nneg i32 %i.dt to i64              ; 8 uses
  %i.ef = sext i32 %i.ec to i64                   ; 4 uses
  %min.iters.check90 = icmp ult i32 %i.dt, 32
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i52
  %i.eg = sub i64 %i.dz, %i.dw                    ; 3 uses
  %i.eh = add i64 %i.eg, -1
  %diff.check = icmp ult i64 %i.eh, 15
  %i.ei = add nsw i64 %i.ef, %i.ee
  %i.ej = shl nsw i64 %i.ei, 3
  %i.ek = add nsw i64 %i.ej, -1
  %diff.check91 = icmp ult i64 %i.ek, 15
  %conflict.rdx = or i1 %diff.check, %diff.check91
  %i.el = shl nsw i64 %i.ef, 3                    ; 5 uses
  %i.em = shl nuw nsw i64 %i.ee, 3                ; 6 uses
  %i.en = add i64 %i.el, %i.dz                    ; 2 uses
  %i.eo = add i64 %i.en, %i.em
  %i.ep = sub i64 %i.dw, %i.eo
  %diff.check92.a = icmp ugt i64 %i.ep, -16
  %conflict.rdx93.a = or i1 %conflict.rdx, %diff.check92.a
  %i.eq = add nsw i64 %i.ed, %i.ee
  %i.er = shl nsw i64 %i.eq, 3
  %diff.check94.a = icmp ugt i64 %i.er, -16
  %conflict.rdx95.a = or i1 %conflict.rdx93.a, %diff.check94.a
  %i.es = shl nsw i64 %i.ed, 3                    ; 5 uses
  %i.et = add i64 %i.es, %i.dz
  %i.eu = add i64 %i.et, %i.em
  %i.ev = sub i64 %i.dw, %i.eu
  %diff.check96.a = icmp ugt i64 %i.ev, -16
  %conflict.rdx97.a = or i1 %conflict.rdx95.a, %diff.check96.a
  %i.ew = add i64 %i.em, %i.dz
  %i.ex = sub i64 %i.dw, %i.ew
  %diff.check100.a = icmp ugt i64 %i.ex, -16
  %conflict.rdx101.a = or i1 %conflict.rdx97.a, %diff.check100.a
  %i.ey = add i64 %i.el, %i.dw                    ; 2 uses
  %i.ez = add i64 %i.ey, %i.em
  %i.fa = sub i64 %i.dz, %i.ez
  %diff.check102.a = icmp ugt i64 %i.fa, -16
  %conflict.rdx103.a = or i1 %conflict.rdx101.a, %diff.check102.a
  %i.fb = add nsw i64 %i.es, %i.em
  %i.fc = sub i64 %i.fb, %i.eg
  %diff.check104.a = icmp ugt i64 %i.fc, -16
  %conflict.rdx105.a = or i1 %conflict.rdx103.a, %diff.check104.a
  %i.fd = add i64 %i.em, %i.dw
  %i.fe = sub i64 %i.dz, %i.fd
  %diff.check106.a = icmp ugt i64 %i.fe, -16
  %conflict.rdx107.a = or i1 %conflict.rdx105.a, %diff.check106.a
  %i.ff = sub nsw i64 %i.es, %i.el
  %diff.check108.a = icmp ugt i64 %i.ff, -16
  %conflict.rdx109.a = or i1 %conflict.rdx107.a, %diff.check108.a
  %i.fg = add i64 %i.es, %i.dz
  %i.fh = sub i64 %i.fg, %i.ey
  %diff.check110.a = icmp ugt i64 %i.fh, -16
  %conflict.rdx111.a = or i1 %conflict.rdx109.a, %diff.check110.a
  %i.fi = add nsw i64 %i.el, -1
  %diff.check112.a = icmp ult i64 %i.fi, 15
  %conflict.rdx113.a = or i1 %conflict.rdx111.a, %diff.check112.a
  %i.fj = sub i64 %i.el, %i.eg
  %diff.check114.a = icmp ugt i64 %i.fj, -16
  %conflict.rdx115.a = or i1 %conflict.rdx113.a, %diff.check114.a
  %i.fk = sub i64 %i.en, %i.dw                    ; 2 uses
  %i.fl = sub i64 %i.es, %i.fk
  %diff.check116 = icmp ugt i64 %i.fl, -16
  %conflict.rdx117 = or i1 %conflict.rdx115.a, %diff.check116
  %i.fm = add i64 %i.fk, -1
  %diff.check118 = icmp ult i64 %i.fm, 15
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118
  br i1 %conflict.rdx119, label %scalar.ph89.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck
  %n.vec121 = and i64 %i.ee, 2147483646           ; 3 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 6 uses
  %i.fn = add nsw i64 %index123, %i.ed            ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fn
  %wide.load = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !53
  %i.fp = sub nsw i64 %index123, %i.ee            ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fp
  store <2 x ptr> %wide.load, ptr %i.fq, align 8, !tbaa !53
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fn
  %wide.load124 = load <2 x ptr>, ptr %i.fr, align 8, !tbaa !53
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fp
  store <2 x ptr> %wide.load124, ptr %i.fs, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index123
  %wide.load125 = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !53
  %i.fu = add nsw i64 %index123, %i.ef            ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fu
  store <2 x ptr> %wide.load125, ptr %i.fv, align 8, !tbaa !53
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index123
  %wide.load126 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !53
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fu
  store <2 x ptr> %wide.load126, ptr %i.fx, align 8, !tbaa !53
  %index.next127 = add nuw i64 %index123, 2       ; 2 uses
  %i.fy = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.fy, label %middle.block128, label %vector.body122, !llvm.loop !92

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %n.vec121, %i.ee
  br i1 %cmp.n129, label %._crit_edge.i51, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %.lr.ph.i52, %middle.block128
  %indvars.iv.i54.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i52 ], [ %n.vec121, %middle.block128 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %scalar.ph89 ], [ %indvars.iv.i54.ph, %scalar.ph89.preheader ] ; 6 uses
  %i.fz = add nsw i64 %indvars.iv.i54, %i.ed      ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !53
  %i.gc = sub nsw i64 %indvars.iv.i54, %i.ee      ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gc
  store ptr %i.gb, ptr %i.gd, align 8, !tbaa !53
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fz
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !53
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.gc
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !53
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i54
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !53
  %i.gj = add nsw i64 %indvars.iv.i54, %i.ef      ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.gj
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i54
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !53
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.gj
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !53
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %i.ee
  br i1 %exitcond.not.i56, label %._crit_edge.i51, label %scalar.ph89, !llvm.loop !93

._crit_edge.i51:                                  ; preds = %scalar.ph89, %middle.block128, %bb.o
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.047.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.o, !llvm.loop !94

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i51, %bb.m, %bb.n
  %i.gp = load i32, ptr %i.cm, align 8, !tbaa !56
  %i.gq = xor i32 %i.gp, 1
  store i32 %i.gq, ptr %i.cm, align 8, !tbaa !56
  store i32 0, ptr %i.c, align 8, !tbaa !59
  %i.gr = add nsw i32 %i.db, 1
  store i32 %i.gr, ptr %i.cr, align 4, !tbaa !60
  %i.gs = add nsw i32 %i.db, 2
  store i32 %i.gs, ptr %i.cs, align 8, !tbaa !96
  store i32 2, ptr %i.s, align 4, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %set_wraparound_pointers.exit, %bb.l, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !guid !99 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #2
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  tail call void %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef %i.l, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %.not19 = icmp ult i32 %i.s, %i.l
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !59
  store i32 0, ptr %i.r, align 4, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_crank_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !guid !100 {
end_hunk_0
