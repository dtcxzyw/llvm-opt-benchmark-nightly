loop-unroll.NumCompletelyUnrolled: 289
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 353
begin_hunk_0_@pred_dc_9:bb.a
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dg
  %wide.load114 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !23
  %i.di = zext <8 x i16> %wide.load114 to <8 x i32>
  %i.dj = add <8 x i32> %broadcast.splat111, %i.di
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 2)
  %i.dl = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  store <8 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !23
  %index.next115 = add nuw i64 %index113, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.dn, label %middle.block116, label %vector.body112, !llvm.loop !259

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.dd, %n.vec109
  br i1 %cmp.n117, label %.lr.ph69, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph67, %middle.block116
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph67 ], [ %i.df, %middle.block116 ] ; 4 uses
  %i.do = sub nsw i64 %wide.trip.count84, %indvars.iv81.ph
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol

scalar.ph106.prol:                                ; preds = %scalar.ph106.preheader, %scalar.ph106.prol
  %indvars.iv81.prol = phi i64 [ %indvars.iv.next82.prol, %scalar.ph106.prol ], [ %indvars.iv81.ph, %scalar.ph106.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph106.prol ], [ 0, %scalar.ph106.preheader ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81.prol
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !23
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add i32 %i.dc, %i.dr
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81.prol
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !23
  %indvars.iv.next82.prol = add nuw nsw i64 %indvars.iv81.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol, !llvm.loop !260

scalar.ph106.prol.loopexit:                       ; preds = %scalar.ph106.prol, %scalar.ph106.preheader
  %indvars.iv81.unr = phi i64 [ %indvars.iv81.ph, %scalar.ph106.preheader ], [ %indvars.iv.next82.prol, %scalar.ph106.prol ]
  %i.dw = sub nsw i64 %indvars.iv81.ph, %wide.trip.count84
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.lr.ph69, label %scalar.ph106

.lr.ph69:                                         ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106, %middle.block116
  %i.dy = mul nsw i32 %i.cn, 3
  %i.dz = add i32 %i.dy, 2                        ; 4 uses
  %wide.trip.count89 = zext nneg i32 %i.d to i64
  %i.ea = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check122 = icmp ult i32 %4, 4
  %ident.check.not = icmp ne i64 %3, 1
  %or.cond135.not137 = or i1 %min.iters.check122, %ident.check.not
  %i.eb = sub i64 %i.a, %i.c
  %diff.check120 = icmp ugt i64 %i.eb, -16
  %or.cond136 = or i1 %or.cond135.not137, %diff.check120
  br i1 %or.cond136, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph69
  %n.vec124 = and i64 %i.ea, -8                   ; 3 uses
  %i.ec = or disjoint i64 %n.vec124, 1
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.ed = or disjoint i64 %index128, 1            ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ed
  %wide.load129 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !23
  %i.ef = zext <8 x i16> %wide.load129 to <8 x i32>
  %i.eg = add <8 x i32> %broadcast.splat126, %i.ef
  %i.eh = lshr <8 x i32> %i.eg, splat (i32 2)
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  %i.ej = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ed
  store <8 x i16> %i.ei, ptr %i.ej, align 2, !tbaa !23
  %index.next130 = add nuw i64 %index128, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ek, label %middle.block131, label %vector.body127, !llvm.loop !261

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.ea, %n.vec124
  br i1 %cmp.n132, label %.loopexit, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.lr.ph69, %middle.block131
  %indvars.iv86.ph = phi i64 [ 1, %.lr.ph69 ], [ %i.ec, %middle.block131 ] ; 5 uses
  %i.el = and i64 %wide.trip.count84, 1
  %lcmp.mod143.not.not = icmp eq i64 %i.el, 0
  br i1 %lcmp.mod143.not.not, label %scalar.ph121.prol, label %scalar.ph121.prol.loopexit

scalar.ph121.prol:                                ; preds = %scalar.ph121.preheader
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86.ph
  %i.en = load i16, ptr %i.em, align 2, !tbaa !23
  %i.eo = zext i16 %i.en to i32
  %i.ep = add i32 %i.dz, %i.eo
  %i.eq = lshr i32 %i.ep, 2
  %i.er = trunc i32 %i.eq to i16
  %i.es = mul nsw i64 %3, %indvars.iv86.ph
  %i.et = getelementptr inbounds [2 x i8], ptr %0, i64 %i.es
  store i16 %i.er, ptr %i.et, align 2, !tbaa !23
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.ph, 1
  br label %scalar.ph121.prol.loopexit

scalar.ph121.prol.loopexit:                       ; preds = %scalar.ph121.prol, %scalar.ph121.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph121.preheader ], [ %indvars.iv.next87.prol, %scalar.ph121.prol ]
  %i.eu = add nsw i64 %wide.trip.count84, -1
  %i.ev = icmp eq i64 %indvars.iv86.ph, %i.eu
  br i1 %i.ev, label %.loopexit, label %scalar.ph121

scalar.ph106:                                     ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.3, %scalar.ph106 ], [ %indvars.iv81.unr, %scalar.ph106.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !23
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add i32 %i.dc, %i.ey
  %i.fa = lshr i32 %i.ez, 2
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !23
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add i32 %i.dc, %i.ff
  %i.fh = lshr i32 %i.fg, 2
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !23
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.1
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !23
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add i32 %i.dc, %i.fm
  %i.fo = lshr i32 %i.fn, 2
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.1
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !23
  %indvars.iv.next82.2 = add nuw nsw i64 %indvars.iv81, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !23
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %i.dc, %i.ft
  %i.fv = lshr i32 %i.fu, 2
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !23
  %indvars.iv.next82.3 = add nuw nsw i64 %indvars.iv81, 4 ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %indvars.iv.next82.3, %wide.trip.count84
  br i1 %exitcond85.not.3, label %.lr.ph69, label %scalar.ph106, !llvm.loop !262

scalar.ph121:                                     ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.1, %scalar.ph121 ], [ %indvars.iv86.unr, %scalar.ph121.prol.loopexit ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !23
  %i.ga = zext i16 %i.fz to i32
  %i.gb = add i32 %i.dz, %i.ga
  %i.gc = lshr i32 %i.gb, 2
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = mul nsw i64 %3, %indvars.iv86
  %i.gf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ge
  store i16 %i.gd, ptr %i.gf, align 2, !tbaa !23
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next87
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !23
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add i32 %i.dz, %i.gi
  %i.gk = lshr i32 %i.gj, 2
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = mul nsw i64 %3, %indvars.iv.next87
  %i.gn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gm
  store i16 %i.gl, ptr %i.gn, align 2, !tbaa !23
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %indvars.iv.next87.1, %wide.trip.count89
  br i1 %exitcond90.not.1, label %.loopexit, label %scalar.ph121, !llvm.loop !263

.loopexit:                                        ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121, %middle.block131, %bb.b, %._crit_edge64.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_3tap_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #4 {
bb.a:
  %i.a = shl nsw i32 %4, 1                        ; 6 uses
  %i.b = add nsw i32 %i.a, -1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %i.g = getelementptr inbounds [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c
  store i16 %i.h, ptr %i.i, align 2, !tbaa !23
  %i.j = add i32 %i.a, -2                         ; 6 uses
  %i.k = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = zext i32 %i.j to i64                     ; 5 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %5 = add nsw i32 %i.a, -2
  %6 = sub i32 %5, %i.m                           ; 2 uses
  %min.iters.check = icmp ult i32 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = shl nuw nsw i64 %i.l, 1                  ; 4 uses
  %i.o = add nsw i32 %i.a, -2
  %smin = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.p = sub i32 %i.o, %smin
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = sub nsw i64 %i.n, %i.r
  %scevgep = getelementptr i8, ptr %0, i64 %i.s
  %i.t = getelementptr i8, ptr %0, i64 %i.n
  %scevgep48 = getelementptr i8, ptr %i.t, i64 2
  %i.u = add nsw i64 %i.n, -2
  %i.v = sub nsw i64 %i.u, %i.r
  %scevgep49 = getelementptr i8, ptr %2, i64 %i.v
  %i.w = getelementptr i8, ptr %2, i64 %i.n
  %scevgep50 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep50
  %bound1 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i32 %6, -8
  %n.vec = zext i32 %i.x to i64                   ; 2 uses
  %i.y = sub nsw i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = sub i64 %i.l, %index                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %wide.load = load <8 x i16>, ptr %i.ab, align 2, !tbaa !23, !alias.scope !264
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -14
  %wide.load51 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !23, !alias.scope !264
  %i.ad = getelementptr i8, ptr %i.aa, i64 -16
  %wide.load53 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !23, !alias.scope !264
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -14
  %i.ag = zext <8 x i16> %wide.load to <8 x i32>
  %i.ah = add nuw nsw <8 x i32> %i.ag, splat (i32 2)
  %i.ai = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.aj = shl nuw nsw <8 x i32> %i.ai, splat (i32 1)
  %i.ak = add nuw nsw <8 x i32> %i.ah, %i.aj
  %i.al = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.ak, %i.al
  %i.an = lshr <8 x i32> %i.am, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.an to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.af, align 2, !tbaa !23, !alias.scope !267, !noalias !264
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %.lr.ph.preheader83, label %vector.body, !llvm.loop !269

.lr.ph.preheader83:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !23
  %i.as = zext i16 %i.ar to i32
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !23
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !23
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %i.as, 2
  %i.ba = add nuw nsw i32 %i.az, %i.av
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !270

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bh = load i16, ptr %2, align 2, !tbaa !23
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 1
  %i.bn = load i16, ptr %3, align 2, !tbaa !23
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, 2
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.br, 2
  %i.bt = trunc nuw i32 %i.bs to i16              ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !23
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !23
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bw = zext i32 %i.j to i64                    ; 5 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %7 = add nsw i32 %i.a, -2
  %8 = sub i32 %7, %i.bx                          ; 2 uses
  %min.iters.check66 = icmp ult i32 %8, 16
  br i1 %min.iters.check66, label %.lr.ph42.preheader82, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.by = shl nuw nsw i64 %i.bw, 1                ; 4 uses
  %i.bz = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ca = sub i32 %i.bz, %smin57
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.cd = sub nsw i64 %i.by, %i.cc
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.cd
  %i.ce = getelementptr i8, ptr %1, i64 %i.by
  %scevgep59 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = add nsw i64 %i.by, -2
  %i.cg = sub nsw i64 %i.cf, %i.cc
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.cg
  %i.ch = getelementptr i8, ptr %3, i64 %i.by
  %scevgep61 = getelementptr i8, ptr %i.ch, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.ci = and i32 %8, -8
  %n.vec68 = zext i32 %i.ci to i64                ; 2 uses
  %i.cj = sub nsw i64 %i.bw, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.ck = sub i64 %i.bw, %index70                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !23, !alias.scope !271
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !23, !alias.scope !271
  %i.co = getelementptr i8, ptr %i.cl, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.co, align 2, !tbaa !23, !alias.scope !271
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ck
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %i.cr = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cs = add nuw nsw <8 x i32> %i.cr, splat (i32 2)
  %i.ct = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cu = shl nuw nsw <8 x i32> %i.ct, splat (i32 1)
  %i.cv = add nuw nsw <8 x i32> %i.cs, %i.cu
  %i.cw = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.cx = add nuw nsw <8 x i32> %i.cv, %i.cw
  %i.cy = lshr <8 x i32> %i.cx, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.cy to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cq, align 2, !tbaa !23, !alias.scope !274, !noalias !271
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.cz, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !276

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bw, %vector.memcheck56 ], [ %i.bw, %.lr.ph42.preheader ], [ %i.cj, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !23
  %i.dd = zext i16 %i.dc to i32
  %i.de = load i16, ptr %i.da, align 2, !tbaa !23
  %i.df = zext i16 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = getelementptr i8, ptr %i.da, i64 -2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !23
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dd, 2
  %i.dl = add nuw nsw i32 %i.dk, %i.dg
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !23
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dq = trunc nuw i64 %indvars.iv45 to i32
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph42, label %._crit_edge43, !llvm.loop !277

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_9(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !23
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !23
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !23
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !23
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !23, !alias.scope !278
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !23, !alias.scope !278
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !23, !alias.scope !281, !noalias !278
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !23 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

end_hunk_0
begin_hunk_1_@pred_dc_10:bb.a
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dg
  %wide.load114 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !23
  %i.di = zext <8 x i16> %wide.load114 to <8 x i32>
  %i.dj = add <8 x i32> %broadcast.splat111, %i.di
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 2)
  %i.dl = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  store <8 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !23
  %index.next115 = add nuw i64 %index113, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.dn, label %middle.block116, label %vector.body112, !llvm.loop !377

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.dd, %n.vec109
  br i1 %cmp.n117, label %.lr.ph69, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph67, %middle.block116
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph67 ], [ %i.df, %middle.block116 ] ; 4 uses
  %i.do = sub nsw i64 %wide.trip.count84, %indvars.iv81.ph
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol

scalar.ph106.prol:                                ; preds = %scalar.ph106.preheader, %scalar.ph106.prol
  %indvars.iv81.prol = phi i64 [ %indvars.iv.next82.prol, %scalar.ph106.prol ], [ %indvars.iv81.ph, %scalar.ph106.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph106.prol ], [ 0, %scalar.ph106.preheader ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81.prol
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !23
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add i32 %i.dc, %i.dr
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81.prol
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !23
  %indvars.iv.next82.prol = add nuw nsw i64 %indvars.iv81.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol, !llvm.loop !378

scalar.ph106.prol.loopexit:                       ; preds = %scalar.ph106.prol, %scalar.ph106.preheader
  %indvars.iv81.unr = phi i64 [ %indvars.iv81.ph, %scalar.ph106.preheader ], [ %indvars.iv.next82.prol, %scalar.ph106.prol ]
  %i.dw = sub nsw i64 %indvars.iv81.ph, %wide.trip.count84
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.lr.ph69, label %scalar.ph106

.lr.ph69:                                         ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106, %middle.block116
  %i.dy = mul nsw i32 %i.cn, 3
  %i.dz = add i32 %i.dy, 2                        ; 4 uses
  %wide.trip.count89 = zext nneg i32 %i.d to i64
  %i.ea = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check122 = icmp ult i32 %4, 4
  %ident.check.not = icmp ne i64 %3, 1
  %or.cond135.not137 = or i1 %min.iters.check122, %ident.check.not
  %i.eb = sub i64 %i.a, %i.c
  %diff.check120 = icmp ugt i64 %i.eb, -16
  %or.cond136 = or i1 %or.cond135.not137, %diff.check120
  br i1 %or.cond136, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph69
  %n.vec124 = and i64 %i.ea, -8                   ; 3 uses
  %i.ec = or disjoint i64 %n.vec124, 1
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.ed = or disjoint i64 %index128, 1            ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ed
  %wide.load129 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !23
  %i.ef = zext <8 x i16> %wide.load129 to <8 x i32>
  %i.eg = add <8 x i32> %broadcast.splat126, %i.ef
  %i.eh = lshr <8 x i32> %i.eg, splat (i32 2)
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  %i.ej = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ed
  store <8 x i16> %i.ei, ptr %i.ej, align 2, !tbaa !23
  %index.next130 = add nuw i64 %index128, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ek, label %middle.block131, label %vector.body127, !llvm.loop !379

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.ea, %n.vec124
  br i1 %cmp.n132, label %.loopexit, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.lr.ph69, %middle.block131
  %indvars.iv86.ph = phi i64 [ 1, %.lr.ph69 ], [ %i.ec, %middle.block131 ] ; 5 uses
  %i.el = and i64 %wide.trip.count84, 1
  %lcmp.mod143.not.not = icmp eq i64 %i.el, 0
  br i1 %lcmp.mod143.not.not, label %scalar.ph121.prol, label %scalar.ph121.prol.loopexit

scalar.ph121.prol:                                ; preds = %scalar.ph121.preheader
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86.ph
  %i.en = load i16, ptr %i.em, align 2, !tbaa !23
  %i.eo = zext i16 %i.en to i32
  %i.ep = add i32 %i.dz, %i.eo
  %i.eq = lshr i32 %i.ep, 2
  %i.er = trunc i32 %i.eq to i16
  %i.es = mul nsw i64 %3, %indvars.iv86.ph
  %i.et = getelementptr inbounds [2 x i8], ptr %0, i64 %i.es
  store i16 %i.er, ptr %i.et, align 2, !tbaa !23
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.ph, 1
  br label %scalar.ph121.prol.loopexit

scalar.ph121.prol.loopexit:                       ; preds = %scalar.ph121.prol, %scalar.ph121.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph121.preheader ], [ %indvars.iv.next87.prol, %scalar.ph121.prol ]
  %i.eu = add nsw i64 %wide.trip.count84, -1
  %i.ev = icmp eq i64 %indvars.iv86.ph, %i.eu
  br i1 %i.ev, label %.loopexit, label %scalar.ph121

scalar.ph106:                                     ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.3, %scalar.ph106 ], [ %indvars.iv81.unr, %scalar.ph106.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !23
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add i32 %i.dc, %i.ey
  %i.fa = lshr i32 %i.ez, 2
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !23
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add i32 %i.dc, %i.ff
  %i.fh = lshr i32 %i.fg, 2
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !23
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.1
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !23
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add i32 %i.dc, %i.fm
  %i.fo = lshr i32 %i.fn, 2
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.1
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !23
  %indvars.iv.next82.2 = add nuw nsw i64 %indvars.iv81, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !23
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %i.dc, %i.ft
  %i.fv = lshr i32 %i.fu, 2
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !23
  %indvars.iv.next82.3 = add nuw nsw i64 %indvars.iv81, 4 ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %indvars.iv.next82.3, %wide.trip.count84
  br i1 %exitcond85.not.3, label %.lr.ph69, label %scalar.ph106, !llvm.loop !380

scalar.ph121:                                     ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.1, %scalar.ph121 ], [ %indvars.iv86.unr, %scalar.ph121.prol.loopexit ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !23
  %i.ga = zext i16 %i.fz to i32
  %i.gb = add i32 %i.dz, %i.ga
  %i.gc = lshr i32 %i.gb, 2
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = mul nsw i64 %3, %indvars.iv86
  %i.gf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ge
  store i16 %i.gd, ptr %i.gf, align 2, !tbaa !23
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next87
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !23
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add i32 %i.dz, %i.gi
  %i.gk = lshr i32 %i.gj, 2
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = mul nsw i64 %3, %indvars.iv.next87
  %i.gn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gm
  store i16 %i.gl, ptr %i.gn, align 2, !tbaa !23
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %indvars.iv.next87.1, %wide.trip.count89
  br i1 %exitcond90.not.1, label %.loopexit, label %scalar.ph121, !llvm.loop !381

.loopexit:                                        ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121, %middle.block131, %bb.b, %._crit_edge64.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_3tap_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #4 {
bb.a:
  %i.a = shl nsw i32 %4, 1                        ; 6 uses
  %i.b = add nsw i32 %i.a, -1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %i.g = getelementptr inbounds [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c
  store i16 %i.h, ptr %i.i, align 2, !tbaa !23
  %i.j = add i32 %i.a, -2                         ; 6 uses
  %i.k = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = zext i32 %i.j to i64                     ; 5 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %5 = add nsw i32 %i.a, -2
  %6 = sub i32 %5, %i.m                           ; 2 uses
  %min.iters.check = icmp ult i32 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = shl nuw nsw i64 %i.l, 1                  ; 4 uses
  %i.o = add nsw i32 %i.a, -2
  %smin = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.p = sub i32 %i.o, %smin
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = sub nsw i64 %i.n, %i.r
  %scevgep = getelementptr i8, ptr %0, i64 %i.s
  %i.t = getelementptr i8, ptr %0, i64 %i.n
  %scevgep48 = getelementptr i8, ptr %i.t, i64 2
  %i.u = add nsw i64 %i.n, -2
  %i.v = sub nsw i64 %i.u, %i.r
  %scevgep49 = getelementptr i8, ptr %2, i64 %i.v
  %i.w = getelementptr i8, ptr %2, i64 %i.n
  %scevgep50 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep50
  %bound1 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i32 %6, -8
  %n.vec = zext i32 %i.x to i64                   ; 2 uses
  %i.y = sub nsw i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = sub i64 %i.l, %index                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %wide.load = load <8 x i16>, ptr %i.ab, align 2, !tbaa !23, !alias.scope !382
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -14
  %wide.load51 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !23, !alias.scope !382
  %i.ad = getelementptr i8, ptr %i.aa, i64 -16
  %wide.load53 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !23, !alias.scope !382
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -14
  %i.ag = zext <8 x i16> %wide.load to <8 x i32>
  %i.ah = add nuw nsw <8 x i32> %i.ag, splat (i32 2)
  %i.ai = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.aj = shl nuw nsw <8 x i32> %i.ai, splat (i32 1)
  %i.ak = add nuw nsw <8 x i32> %i.ah, %i.aj
  %i.al = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.ak, %i.al
  %i.an = lshr <8 x i32> %i.am, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.an to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.af, align 2, !tbaa !23, !alias.scope !385, !noalias !382
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %.lr.ph.preheader83, label %vector.body, !llvm.loop !387

.lr.ph.preheader83:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !23
  %i.as = zext i16 %i.ar to i32
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !23
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !23
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %i.as, 2
  %i.ba = add nuw nsw i32 %i.az, %i.av
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !388

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bh = load i16, ptr %2, align 2, !tbaa !23
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 1
  %i.bn = load i16, ptr %3, align 2, !tbaa !23
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, 2
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.br, 2
  %i.bt = trunc nuw i32 %i.bs to i16              ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !23
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !23
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bw = zext i32 %i.j to i64                    ; 5 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %7 = add nsw i32 %i.a, -2
  %8 = sub i32 %7, %i.bx                          ; 2 uses
  %min.iters.check66 = icmp ult i32 %8, 16
  br i1 %min.iters.check66, label %.lr.ph42.preheader82, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.by = shl nuw nsw i64 %i.bw, 1                ; 4 uses
  %i.bz = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ca = sub i32 %i.bz, %smin57
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.cd = sub nsw i64 %i.by, %i.cc
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.cd
  %i.ce = getelementptr i8, ptr %1, i64 %i.by
  %scevgep59 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = add nsw i64 %i.by, -2
  %i.cg = sub nsw i64 %i.cf, %i.cc
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.cg
  %i.ch = getelementptr i8, ptr %3, i64 %i.by
  %scevgep61 = getelementptr i8, ptr %i.ch, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.ci = and i32 %8, -8
  %n.vec68 = zext i32 %i.ci to i64                ; 2 uses
  %i.cj = sub nsw i64 %i.bw, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.ck = sub i64 %i.bw, %index70                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !23, !alias.scope !389
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !23, !alias.scope !389
  %i.co = getelementptr i8, ptr %i.cl, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.co, align 2, !tbaa !23, !alias.scope !389
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ck
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %i.cr = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cs = add nuw nsw <8 x i32> %i.cr, splat (i32 2)
  %i.ct = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cu = shl nuw nsw <8 x i32> %i.ct, splat (i32 1)
  %i.cv = add nuw nsw <8 x i32> %i.cs, %i.cu
  %i.cw = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.cx = add nuw nsw <8 x i32> %i.cv, %i.cw
  %i.cy = lshr <8 x i32> %i.cx, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.cy to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cq, align 2, !tbaa !23, !alias.scope !392, !noalias !389
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.cz, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !394

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bw, %vector.memcheck56 ], [ %i.bw, %.lr.ph42.preheader ], [ %i.cj, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !23
  %i.dd = zext i16 %i.dc to i32
  %i.de = load i16, ptr %i.da, align 2, !tbaa !23
  %i.df = zext i16 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = getelementptr i8, ptr %i.da, i64 -2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !23
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dd, 2
  %i.dl = add nuw nsw i32 %i.dk, %i.dg
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !23
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dq = trunc nuw i64 %indvars.iv45 to i32
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph42, label %._crit_edge43, !llvm.loop !395

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_10(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !23
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !23
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !23
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !23
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !23, !alias.scope !396
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !23, !alias.scope !396
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !23, !alias.scope !399, !noalias !396
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !23 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

end_hunk_1
begin_hunk_2_@pred_dc_12:bb.a
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dg
  %wide.load114 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !23
  %i.di = zext <8 x i16> %wide.load114 to <8 x i32>
  %i.dj = add <8 x i32> %broadcast.splat111, %i.di
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 2)
  %i.dl = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  store <8 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !23
  %index.next115 = add nuw i64 %index113, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.dn, label %middle.block116, label %vector.body112, !llvm.loop !495

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.dd, %n.vec109
  br i1 %cmp.n117, label %.lr.ph69, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph67, %middle.block116
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph67 ], [ %i.df, %middle.block116 ] ; 4 uses
  %i.do = sub nsw i64 %wide.trip.count84, %indvars.iv81.ph
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol

scalar.ph106.prol:                                ; preds = %scalar.ph106.preheader, %scalar.ph106.prol
  %indvars.iv81.prol = phi i64 [ %indvars.iv.next82.prol, %scalar.ph106.prol ], [ %indvars.iv81.ph, %scalar.ph106.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph106.prol ], [ 0, %scalar.ph106.preheader ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81.prol
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !23
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add i32 %i.dc, %i.dr
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81.prol
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !23
  %indvars.iv.next82.prol = add nuw nsw i64 %indvars.iv81.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph106.prol.loopexit, label %scalar.ph106.prol, !llvm.loop !496

scalar.ph106.prol.loopexit:                       ; preds = %scalar.ph106.prol, %scalar.ph106.preheader
  %indvars.iv81.unr = phi i64 [ %indvars.iv81.ph, %scalar.ph106.preheader ], [ %indvars.iv.next82.prol, %scalar.ph106.prol ]
  %i.dw = sub nsw i64 %indvars.iv81.ph, %wide.trip.count84
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.lr.ph69, label %scalar.ph106

.lr.ph69:                                         ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106, %middle.block116
  %i.dy = mul nsw i32 %i.cn, 3
  %i.dz = add i32 %i.dy, 2                        ; 4 uses
  %wide.trip.count89 = zext nneg i32 %i.d to i64
  %i.ea = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check122 = icmp ult i32 %4, 4
  %ident.check.not = icmp ne i64 %3, 1
  %or.cond135.not137 = or i1 %min.iters.check122, %ident.check.not
  %i.eb = sub i64 %i.a, %i.c
  %diff.check120 = icmp ugt i64 %i.eb, -16
  %or.cond136 = or i1 %or.cond135.not137, %diff.check120
  br i1 %or.cond136, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph69
  %n.vec124 = and i64 %i.ea, -8                   ; 3 uses
  %i.ec = or disjoint i64 %n.vec124, 1
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.ed = or disjoint i64 %index128, 1            ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ed
  %wide.load129 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !23
  %i.ef = zext <8 x i16> %wide.load129 to <8 x i32>
  %i.eg = add <8 x i32> %broadcast.splat126, %i.ef
  %i.eh = lshr <8 x i32> %i.eg, splat (i32 2)
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  %i.ej = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ed
  store <8 x i16> %i.ei, ptr %i.ej, align 2, !tbaa !23
  %index.next130 = add nuw i64 %index128, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ek, label %middle.block131, label %vector.body127, !llvm.loop !497

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.ea, %n.vec124
  br i1 %cmp.n132, label %.loopexit, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.lr.ph69, %middle.block131
  %indvars.iv86.ph = phi i64 [ 1, %.lr.ph69 ], [ %i.ec, %middle.block131 ] ; 5 uses
  %i.el = and i64 %wide.trip.count84, 1
  %lcmp.mod143.not.not = icmp eq i64 %i.el, 0
  br i1 %lcmp.mod143.not.not, label %scalar.ph121.prol, label %scalar.ph121.prol.loopexit

scalar.ph121.prol:                                ; preds = %scalar.ph121.preheader
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86.ph
  %i.en = load i16, ptr %i.em, align 2, !tbaa !23
  %i.eo = zext i16 %i.en to i32
  %i.ep = add i32 %i.dz, %i.eo
  %i.eq = lshr i32 %i.ep, 2
  %i.er = trunc i32 %i.eq to i16
  %i.es = mul nsw i64 %3, %indvars.iv86.ph
  %i.et = getelementptr inbounds [2 x i8], ptr %0, i64 %i.es
  store i16 %i.er, ptr %i.et, align 2, !tbaa !23
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.ph, 1
  br label %scalar.ph121.prol.loopexit

scalar.ph121.prol.loopexit:                       ; preds = %scalar.ph121.prol, %scalar.ph121.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph121.preheader ], [ %indvars.iv.next87.prol, %scalar.ph121.prol ]
  %i.eu = add nsw i64 %wide.trip.count84, -1
  %i.ev = icmp eq i64 %indvars.iv86.ph, %i.eu
  br i1 %i.ev, label %.loopexit, label %scalar.ph121

scalar.ph106:                                     ; preds = %scalar.ph106.prol.loopexit, %scalar.ph106
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.3, %scalar.ph106 ], [ %indvars.iv81.unr, %scalar.ph106.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv81
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !23
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add i32 %i.dc, %i.ey
  %i.fa = lshr i32 %i.ez, 2
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv81
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !23
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add i32 %i.dc, %i.ff
  %i.fh = lshr i32 %i.fg, 2
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !23
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.1
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !23
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add i32 %i.dc, %i.fm
  %i.fo = lshr i32 %i.fn, 2
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.1
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !23
  %indvars.iv.next82.2 = add nuw nsw i64 %indvars.iv81, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next82.2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !23
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %i.dc, %i.ft
  %i.fv = lshr i32 %i.fu, 2
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next82.2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !23
  %indvars.iv.next82.3 = add nuw nsw i64 %indvars.iv81, 4 ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %indvars.iv.next82.3, %wide.trip.count84
  br i1 %exitcond85.not.3, label %.lr.ph69, label %scalar.ph106, !llvm.loop !498

scalar.ph121:                                     ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.1, %scalar.ph121 ], [ %indvars.iv86.unr, %scalar.ph121.prol.loopexit ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !23
  %i.ga = zext i16 %i.fz to i32
  %i.gb = add i32 %i.dz, %i.ga
  %i.gc = lshr i32 %i.gb, 2
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = mul nsw i64 %3, %indvars.iv86
  %i.gf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ge
  store i16 %i.gd, ptr %i.gf, align 2, !tbaa !23
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next87
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !23
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add i32 %i.dz, %i.gi
  %i.gk = lshr i32 %i.gj, 2
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = mul nsw i64 %3, %indvars.iv.next87
  %i.gn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gm
  store i16 %i.gl, ptr %i.gn, align 2, !tbaa !23
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %indvars.iv.next87.1, %wide.trip.count89
  br i1 %exitcond90.not.1, label %.loopexit, label %scalar.ph121, !llvm.loop !499

.loopexit:                                        ; preds = %scalar.ph121.prol.loopexit, %scalar.ph121, %middle.block131, %bb.b, %._crit_edge64.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_3tap_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #4 {
bb.a:
  %i.a = shl nsw i32 %4, 1                        ; 6 uses
  %i.b = add nsw i32 %i.a, -1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %i.g = getelementptr inbounds [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c
  store i16 %i.h, ptr %i.i, align 2, !tbaa !23
  %i.j = add i32 %i.a, -2                         ; 6 uses
  %i.k = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = zext i32 %i.j to i64                     ; 5 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %5 = add nsw i32 %i.a, -2
  %6 = sub i32 %5, %i.m                           ; 2 uses
  %min.iters.check = icmp ult i32 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = shl nuw nsw i64 %i.l, 1                  ; 4 uses
  %i.o = add nsw i32 %i.a, -2
  %smin = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.p = sub i32 %i.o, %smin
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = sub nsw i64 %i.n, %i.r
  %scevgep = getelementptr i8, ptr %0, i64 %i.s
  %i.t = getelementptr i8, ptr %0, i64 %i.n
  %scevgep48 = getelementptr i8, ptr %i.t, i64 2
  %i.u = add nsw i64 %i.n, -2
  %i.v = sub nsw i64 %i.u, %i.r
  %scevgep49 = getelementptr i8, ptr %2, i64 %i.v
  %i.w = getelementptr i8, ptr %2, i64 %i.n
  %scevgep50 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep50
  %bound1 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i32 %6, -8
  %n.vec = zext i32 %i.x to i64                   ; 2 uses
  %i.y = sub nsw i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = sub i64 %i.l, %index                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %wide.load = load <8 x i16>, ptr %i.ab, align 2, !tbaa !23, !alias.scope !500
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -14
  %wide.load51 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !23, !alias.scope !500
  %i.ad = getelementptr i8, ptr %i.aa, i64 -16
  %wide.load53 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !23, !alias.scope !500
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -14
  %i.ag = zext <8 x i16> %wide.load to <8 x i32>
  %i.ah = add nuw nsw <8 x i32> %i.ag, splat (i32 2)
  %i.ai = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.aj = shl nuw nsw <8 x i32> %i.ai, splat (i32 1)
  %i.ak = add nuw nsw <8 x i32> %i.ah, %i.aj
  %i.al = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.ak, %i.al
  %i.an = lshr <8 x i32> %i.am, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.an to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.af, align 2, !tbaa !23, !alias.scope !503, !noalias !500
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %.lr.ph.preheader83, label %vector.body, !llvm.loop !505

.lr.ph.preheader83:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !23
  %i.as = zext i16 %i.ar to i32
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !23
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !23
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %i.as, 2
  %i.ba = add nuw nsw i32 %i.az, %i.av
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !506

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bh = load i16, ptr %2, align 2, !tbaa !23
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 1
  %i.bn = load i16, ptr %3, align 2, !tbaa !23
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, 2
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.br, 2
  %i.bt = trunc nuw i32 %i.bs to i16              ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !23
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !23
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bw = zext i32 %i.j to i64                    ; 5 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %7 = add nsw i32 %i.a, -2
  %8 = sub i32 %7, %i.bx                          ; 2 uses
  %min.iters.check66 = icmp ult i32 %8, 16
  br i1 %min.iters.check66, label %.lr.ph42.preheader82, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph42.preheader
  %i.by = shl nuw nsw i64 %i.bw, 1                ; 4 uses
  %i.bz = add nsw i32 %i.a, -2
  %smin57 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.ca = sub i32 %i.bz, %smin57
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.cd = sub nsw i64 %i.by, %i.cc
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.cd
  %i.ce = getelementptr i8, ptr %1, i64 %i.by
  %scevgep59 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = add nsw i64 %i.by, -2
  %i.cg = sub nsw i64 %i.cf, %i.cc
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.cg
  %i.ch = getelementptr i8, ptr %3, i64 %i.by
  %scevgep61 = getelementptr i8, ptr %i.ch, i64 4
  %bound062 = icmp ult ptr %scevgep58, %scevgep61
  %bound163 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph42.preheader82, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck56
  %i.ci = and i32 %8, -8
  %n.vec68 = zext i32 %i.ci to i64                ; 2 uses
  %i.cj = sub nsw i64 %i.bw, %n.vec68
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next78, %vector.body69 ] ; 2 uses
  %i.ck = sub i64 %i.bw, %index70                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %wide.load71 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !23, !alias.scope !507
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -14
  %wide.load73 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !23, !alias.scope !507
  %i.co = getelementptr i8, ptr %i.cl, i64 -16
  %wide.load75 = load <8 x i16>, ptr %i.co, align 2, !tbaa !23, !alias.scope !507
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ck
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -14
  %i.cr = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.cs = add nuw nsw <8 x i32> %i.cr, splat (i32 2)
  %i.ct = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cu = shl nuw nsw <8 x i32> %i.ct, splat (i32 1)
  %i.cv = add nuw nsw <8 x i32> %i.cs, %i.cu
  %i.cw = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.cx = add nuw nsw <8 x i32> %i.cv, %i.cw
  %i.cy = lshr <8 x i32> %i.cx, splat (i32 2)
  %reverse77 = trunc nuw <8 x i32> %i.cy to <8 x i16>
  store <8 x i16> %reverse77, ptr %i.cq, align 2, !tbaa !23, !alias.scope !510, !noalias !507
  %index.next78 = add nuw i64 %index70, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next78, %n.vec68
  br i1 %i.cz, label %.lr.ph42.preheader82, label %vector.body69, !llvm.loop !512

.lr.ph42.preheader82:                             ; preds = %vector.body69, %vector.memcheck56, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bw, %vector.memcheck56 ], [ %i.bw, %.lr.ph42.preheader ], [ %i.cj, %vector.body69 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader82, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader82 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !23
  %i.dd = zext i16 %i.dc to i32
  %i.de = load i16, ptr %i.da, align 2, !tbaa !23
  %i.df = zext i16 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = getelementptr i8, ptr %i.da, i64 -2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !23
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dd, 2
  %i.dl = add nuw nsw i32 %i.dk, %i.dg
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !23
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dq = trunc nuw i64 %indvars.iv45 to i32
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph42, label %._crit_edge43, !llvm.loop !513

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_12(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !23
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !23
  %scevgep = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !tbaa !23
  %i.h = zext i16 %i.g to i32
  %i.i = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.j = xor i32 %i.i, 63
  %i.k = mul nuw nsw i32 %i.j, %i.h
  %i.l = load i16, ptr %i.d, align 2, !tbaa !23
  %i.m = zext i16 %i.l to i32
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = mul nuw nsw i32 %i.n, %i.m
  %i.p = add nuw nsw i32 %i.k, 32
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 6
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !23
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.u = load i16, ptr %i.d, align 2, !tbaa !23, !alias.scope !514
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.w = load i16, ptr %i.a, align 2, !tbaa !23, !alias.scope !514
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.x = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.y = mul nuw nsw <8 x i32> %i.x, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.z = mul nuw nsw <8 x i32> %i.v, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.aa = add nuw nsw <8 x i32> %i.y, splat (i32 32)
  %i.ab = add nuw nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %0, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.ae = mul nuw nsw <8 x i32> %i.x, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.af = mul nuw nsw <8 x i32> %i.v, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ag = add nuw nsw <8 x i32> %i.ae, splat (i32 32)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.af
  %i.ai = lshr <8 x i32> %i.ah, splat (i32 6)
  %i.aj = trunc <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.al = mul nuw nsw <8 x i32> %i.x, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.am = mul nuw nsw <8 x i32> %i.v, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.an = add nuw nsw <8 x i32> %i.al, splat (i32 32)
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.am
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.as = mul nuw nsw <8 x i32> %i.x, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.at = mul nuw nsw <8 x i32> %i.v, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.au = add nuw nsw <8 x i32> %i.as, splat (i32 32)
  %i.av = add nuw nsw <8 x i32> %i.au, %i.at
  %i.aw = lshr <8 x i32> %i.av, splat (i32 6)
  %i.ax = trunc <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.az = mul nuw nsw <8 x i32> %i.x, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ba = mul nuw nsw <8 x i32> %i.v, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bb = add nuw nsw <8 x i32> %i.az, splat (i32 32)
  %i.bc = add nuw nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 6)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.bg = mul nuw nsw <8 x i32> %i.x, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bh = mul nuw nsw <8 x i32> %i.v, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bi = add nuw nsw <8 x i32> %i.bg, splat (i32 32)
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.bh
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  %i.bn = mul nuw nsw <8 x i32> %i.x, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bo = mul nuw nsw <8 x i32> %i.v, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bp = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bq = add nuw nsw <8 x i32> %i.bp, %i.bo
  %i.br = lshr <8 x i32> %i.bq, splat (i32 6)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !23, !alias.scope !517, !noalias !514
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !23 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.bx = zext i16 %i.bv to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

end_hunk_2
