inline.NumInlined: 39
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@store_contexts:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 15312
  %i.n = load i32, ptr %i.m, align 8, !tbaa !42
  %i.o = load ptr, ptr @initialized, align 8, !tbaa !33
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = sext i32 %i.l to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = sext i32 %i.j to i64                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  store i32 1, ptr %i.w, align 4, !tbaa !4
  %i.x = load ptr, ptr @model_number, align 8, !tbaa !33
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.p
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.s
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  tail call void @GetCtxModelNumber(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ag)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_field_frame_contexts(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %i.a = load ptr, ptr @initialized, align 8      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.c = load ptr, ptr @model_number, align 8     ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  %i.e = load i32, ptr @number_of_slices, align 4, !tbaa !4
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %.not, label %.preheader27, label %.preheader29

.preheader29:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.preheader27:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph34, label %.loopexit

.lr.ph:                                           ; preds = %.preheader29
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.o = lshr i64 %indvars.iv, 1
  %i.p = and i64 %i.o, 2147483647                 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.b
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph.1, label %.loopexit

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.am = lshr i64 %indvars.iv.1, 1
  %i.an = and i64 %i.am, 2147483647               ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.1
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.an
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.1
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.au = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.1, %i.av
  br i1 %i.aw, label %bb.c, label %._crit_edge.1, !llvm.loop !87

._crit_edge.1:                                    ; preds = %bb.c
  %i.ax = icmp sgt i32 %i.au, 0
  br i1 %i.ax, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %._crit_edge.1
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next.2, %bb.d ] ; 4 uses
  %i.bk = lshr i64 %indvars.iv.2, 1
  %i.bl = and i64 %i.bk, 2147483647               ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.2
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.bs = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next.2, %i.bt
  br i1 %i.bu, label %bb.d, label %._crit_edge.2, !llvm.loop !87

._crit_edge.2:                                    ; preds = %bb.d
  %i.bv = icmp sgt i32 %i.bs, 0
  br i1 %i.bv, label %.lr.ph.3, label %.loopexit

.lr.ph.3:                                         ; preds = %._crit_edge.2
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.3
  %indvars.iv.3 = phi i64 [ 0, %.lr.ph.3 ], [ %indvars.iv.next.3, %bb.e ] ; 4 uses
  %i.ci = lshr i64 %indvars.iv.3, 1
  %i.cj = and i64 %i.ci, 2147483647               ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.3
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cj
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.3
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %i.cq = load i32, ptr @number_of_slices, align 4, !tbaa !4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next.3, %i.cr
  br i1 %i.cs, label %bb.e, label %.loopexit, !llvm.loop !87

.lr.ph34:                                         ; preds = %.preheader27
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph34, %bb.f
  %indvars.iv43 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next44, %bb.f ] ; 4 uses
  %i.db = shl nuw i64 %indvars.iv43, 1            ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv43
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.db
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv43
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.di = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = ashr i32 %i.dj, 1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next44, %i.dl
  br i1 %i.dm, label %bb.f, label %._crit_edge35, !llvm.loop !88

._crit_edge35:                                    ; preds = %bb.f
  %i.dn = icmp sgt i32 %i.di, 0
  br i1 %i.dn, label %.lr.ph34.1, label %.loopexit

.lr.ph34.1:                                       ; preds = %._crit_edge35
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !36
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph34.1
  %indvars.iv43.1 = phi i64 [ 0, %.lr.ph34.1 ], [ %indvars.iv.next44.1, %bb.g ] ; 4 uses
  %i.ea = shl nuw i64 %indvars.iv43.1, 1          ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv43.1
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !4
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv43.1
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !4
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.eh = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.ei = add nsw i32 %i.eh, 1
  %i.ej = ashr i32 %i.ei, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next44.1, %i.ek
  br i1 %i.el, label %bb.g, label %._crit_edge35.1, !llvm.loop !88

._crit_edge35.1:                                  ; preds = %bb.g
  %i.em = icmp sgt i32 %i.eh, 0
  br i1 %i.em, label %.lr.ph34.2, label %.loopexit

.lr.ph34.2:                                       ; preds = %._crit_edge35.1
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !36
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph34.2
  %indvars.iv43.2 = phi i64 [ 0, %.lr.ph34.2 ], [ %indvars.iv.next44.2, %bb.h ] ; 4 uses
  %i.ez = shl nuw i64 %indvars.iv43.2, 1          ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv43.2
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !4
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv43.2
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !4
  %indvars.iv.next44.2 = add nuw nsw i64 %indvars.iv43.2, 1 ; 2 uses
  %i.fg = load i32, ptr @number_of_slices, align 4, !tbaa !4 ; 2 uses
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = ashr i32 %i.fh, 1
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next44.2, %i.fj
  br i1 %i.fk, label %bb.h, label %._crit_edge35.2, !llvm.loop !88

._crit_edge35.2:                                  ; preds = %bb.h
  %i.fl = icmp sgt i32 %i.fg, 0
  br i1 %i.fl, label %.lr.ph34.3, label %.loopexit

.lr.ph34.3:                                       ; preds = %._crit_edge35.2
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !36
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !36
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !36
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph34.3
  %indvars.iv43.3 = phi i64 [ 0, %.lr.ph34.3 ], [ %indvars.iv.next44.3, %bb.i ] ; 4 uses
  %i.fy = shl nuw i64 %indvars.iv43.3, 1          ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv43.3
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !4
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fy
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv43.3
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !4
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43.3, 1 ; 2 uses
  %i.gf = load i32, ptr @number_of_slices, align 4, !tbaa !4
  %i.gg = add nsw i32 %i.gf, 1
  %i.gh = ashr i32 %i.gg, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next44.3, %i.gi
  br i1 %i.gj, label %bb.i, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %bb.e, %bb.i, %.preheader27, %._crit_edge35, %._crit_edge35.1, %._crit_edge, %._crit_edge.1, %._crit_edge35.2, %._crit_edge.2, %.preheader29
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x double> @llvm.fmuladd.v6f64(<6 x double>, <6 x double>, <6 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <10 x double> @llvm.fmuladd.v10f64(<10 x double>, <10 x double>, <10 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 15352}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !12, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !13, i64 128, !13, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !17, i64 14160, !15, i64 14168, !15, i64 14176, !15, i64 14184, !17, i64 14192, !17, i64 14200, !9, i64 14208, !9, i64 14216, !19, i64 14224, !20, i64 14232, !20, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !21, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !25, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !26, i64 15480, !27, i64 15488, !15, i64 15496, !26, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !28, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!12 = !{!"float", !6, i64 0}
!13 = !{!"p2 omnipotent char", !14, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p3 int", !16, i64 0}
!16 = !{!"any p3 pointer", !14, i64 0}
!17 = !{!"p4 int", !18, i64 0}
!18 = !{!"any p4 pointer", !16, i64 0}
!19 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!20 = !{!"p1 int", !9, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"p6 short", !23, i64 0}
!23 = !{!"any p6 pointer", !24, i64 0}
!24 = !{!"any p5 pointer", !18, i64 0}
!25 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!26 = !{!"p2 double", !14, i64 0}
!27 = !{!"p3 double", !16, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!30, !5, i64 264}
!30 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !21, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !20, i64 5040, !20, i64 5048, !31, i64 5056, !20, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !21, i64 5144, !21, i64 5152, !21, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!30, !5, i64 268}
!33 = !{!15, !15, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p2 int", !14, i64 0}
!36 = !{!20, !20, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!21, !21, i64 0}
!41 = distinct !{!41, !38}
!42 = !{!11, !5, i64 15312}
!43 = !{!11, !5, i64 20}
!44 = !{!11, !9, i64 14216}
!45 = !{!46, !5, i64 12}
!46 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !47, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !5, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !9, i64 112, !6, i64 120}
!47 = !{!"p1 _ZTS13datapartition", !9, i64 0}
!48 = !{!30, !5, i64 5092}
!49 = !{!30, !5, i64 5096}
!50 = !{!11, !5, i64 15384}
!51 = !{!46, !9, i64 32}
!52 = !{!46, !9, i64 40}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = !{!11, !5, i64 36}
!62 = !{!63, !64, i64 8}
!63 = !{!"", !28, i64 0, !6, i64 2, !64, i64 8}
!64 = !{!"long", !6, i64 0}
!65 = !{!63, !6, i64 2}
!66 = !{!63, !28, i64 0}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
end_hunk_0
