Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/lf_mask?download=true
inline.NumInlined: 36
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@calc_lf_value:bb.a
  %i.cb = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, %i.ca
  %i.ce = shl nsw i32 %i.cd, %i.i
  %i.cf = add nsw i32 %i.ce, %i.f
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.ch = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.cg, i32 63)
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load i8, ptr %4, align 1, !tbaa !9
  %i.cn = sext i8 %i.cm to i32
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = shl nsw i32 %i.cq, %i.i
  %i.cs = add nsw i32 %i.cr, %i.f
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 0)
  %i.cu = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.ct, i32 63)
  %i.cv = trunc nuw nsw i32 %i.cu to i8
  store i8 %i.cv, ptr %i.cl, align 1, !tbaa !9
  %i.cw = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.cx = sext i8 %i.cw to i32
  %i.cy = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cz = sext i8 %i.cy to i32
  %i.da = add nsw i32 %i.cz, %i.cx
  %i.db = shl nsw i32 %i.da, %i.i
  %i.dc = add nsw i32 %i.db, %i.f
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %i.de = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.dd, i32 63)
  %i.df = trunc nuw nsw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dj = load i8, ptr %4, align 1, !tbaa !9
  %i.dk = sext i8 %i.dj to i32
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dm = sext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = shl nsw i32 %i.dn, %i.i
  %i.dp = add nsw i32 %i.do, %i.f
  %i.dq = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 0)
  %i.dr = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.dq, i32 63)
  %i.ds = trunc nuw nsw i32 %i.dr to i8
  store i8 %i.ds, ptr %i.di, align 1, !tbaa !9
  %i.dt = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.du = sext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dw = sext i8 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, %i.du
  %i.dy = shl nsw i32 %i.dx, %i.i
  %i.dz = add nsw i32 %i.dy, %i.f
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 0)
  %i.eb = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.ea, i32 63)
  %i.ec = trunc nuw nsw i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eg = load i8, ptr %4, align 1, !tbaa !9
  %i.eh = sext i8 %i.eg to i32
  %i.ei = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add nsw i32 %i.ej, %i.eh
  %i.el = shl nsw i32 %i.ek, %i.i
  %i.em = add nsw i32 %i.el, %i.f
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.en, i32 63)
  %i.ep = trunc nuw nsw i32 %i.eo to i8
  store i8 %i.ep, ptr %i.ef, align 1, !tbaa !9
  %i.eq = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.er = sext i8 %i.eq to i32
  %i.es = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.et = sext i8 %i.es to i32
  %i.eu = add nsw i32 %i.et, %i.er
  %i.ev = shl nsw i32 %i.eu, %i.i
  %i.ew = add nsw i32 %i.ev, %i.f
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.ex, i32 63)
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.fd = load i8, ptr %4, align 1, !tbaa !9
  %i.fe = sext i8 %i.fd to i32
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fg = sext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, %i.fe
  %i.fi = shl nsw i32 %i.fh, %i.i
  %i.fj = add nsw i32 %i.fi, %i.f
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 0)
  %i.fl = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.fk, i32 63)
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  store i8 %i.fm, ptr %i.fc, align 1, !tbaa !9
  %i.fn = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.fo = sext i8 %i.fn to i32
  %i.fp = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fq = sext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, %i.fo
  %i.fs = shl nsw i32 %i.fr, %i.i
  %i.ft = add nsw i32 %i.fs, %i.f
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %i.fv = tail call noundef range(i32 0, 64) i32 @llvm.umin.i32(i32 %i.fu, i32 63)
  %i.fw = trunc nuw nsw i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @decomp_tx(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.a ; 2 uses
  %i.c = icmp eq i32 %1, 0
  %i.d = icmp sgt i32 %2, 1
  %or.cond135 = or i1 %i.c, %i.d
  br i1 %or.cond135, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next, %tailrecurse ] ; 3 uses
  %i.f = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.aj, %tailrecurse ] ; 4 uses
  %.tr122139 = phi i32 [ %4, %.lr.ph.preheader ], [ %i.ah, %tailrecurse ] ; 2 uses
  %.tr121138 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.ae, %tailrecurse ] ; 2 uses
  %.tr136 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ag, %tailrecurse ] ; 4 uses
  %i.g = getelementptr inbounds [2 x i8], ptr %5, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !14
  %i.i = zext i16 %i.h to i32
  %i.j = shl nsw i32 %.tr121138, 2
  %i.k = add nsw i32 %i.j, %.tr122139
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58    ; 3 uses
  %i.q = zext i8 %i.p to i32                      ; 3 uses
  %i.r = load i8, ptr %i.f, align 1, !tbaa !15    ; 3 uses
  %i.s = lshr i8 %i.r, 1                          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 3 uses
  %i.v = lshr i8 %i.u, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.w = shl nsw i32 %.tr121138, 1                ; 3 uses
  %i.x = shl nsw i32 %.tr122139, 1                ; 4 uses
  %i.y = trunc nsw i64 %indvars.iv.next to i32    ; 3 uses
  tail call fastcc void @decomp_tx(ptr noundef %.tr136, i32 noundef %i.q, i32 noundef %i.y, i32 noundef %i.w, i32 noundef %i.x, ptr noundef nonnull %5)
  %.not116 = icmp ult i8 %i.r, %i.u               ; 2 uses
  br i1 %.not116, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = zext nneg i8 %i.s to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr136, i64 %i.z
  %i.ab = or disjoint i32 %i.x, 1
  tail call fastcc void @decomp_tx(ptr noundef %i.aa, i32 noundef %i.q, i32 noundef %i.y, i32 noundef %i.w, i32 noundef %i.ab, ptr noundef nonnull %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not117 = icmp ult i8 %i.u, %i.r
  br i1 %.not117, label %.loopexit132, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = zext nneg i8 %i.v to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.tr136, i64 %i.ac ; 2 uses
  %i.ae = or disjoint i32 %i.w, 1                 ; 2 uses
  tail call fastcc void @decomp_tx(ptr noundef %i.ad, i32 noundef %i.q, i32 noundef %i.y, i32 noundef %i.ae, i32 noundef %i.x, ptr noundef nonnull %5)
  br i1 %.not116, label %.loopexit132, label %tailrecurse

tailrecurse:                                      ; preds = %bb.e
  %i.af = zext nneg i8 %i.s to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = or disjoint i32 %i.x, 1
  %i.ai = zext i8 %i.p to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @dav1d_txfm_dimensions, i64 %i.ai ; 2 uses
  %i.ak = icmp eq i8 %i.p, 0
  %i.al = icmp sgt i64 %indvars.iv, 0
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ag, %tailrecurse ], [ %.tr136, %.lr.ph ] ; 26 uses
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.aj, %tailrecurse ], [ %i.f, %.lr.ph ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11  ; 3 uses
  %i.ao = tail call i8 @llvm.umin.i8(i8 %i.an, i8 2) ; 9 uses
  %6 = zext nneg i8 %i.ao to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = tail call i8 @llvm.umin.i8(i8 %i.aq, i8 2) ; 9 uses
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16  ; 26 uses
  %.not156 = icmp eq i8 %i.au, 0                  ; 5 uses
  switch i8 %i.an, label %bb.k [
    i8 0, label %.preheader
    i8 1, label %.preheader124
    i8 2, label %.preheader126
    i8 3, label %.preheader128
    i8 4, label %.preheader130
  ]

.preheader130:                                    ; preds = %.critedge
  br i1 %.not156, label %.loopexit, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader130
  %i.av = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2048 ; 3 uses
  %i.aw = load i8, ptr %.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 1024 ; 3 uses
  %wide.trip.count = zext i8 %i.au to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i8 %i.au, 1
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph144.new

.lr.ph144.new:                                    ; preds = %.lr.ph144
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.j

.preheader128:                                    ; preds = %.critedge
  br i1 %.not156, label %.loopexit, label %.lr.ph146

.lr.ph146:                                        ; preds = %.preheader128
  %7 = zext nneg i8 %i.ao to i64
  %8 = mul nuw nsw i64 %7, 72340172838076673      ; 3 uses
  %i.az = zext nneg i8 %i.ar to i64
  %i.ba = mul nuw nsw i64 %i.az, 72340172838076673 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2048 ; 3 uses
  %i.bc = load i8, ptr %.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 1024 ; 3 uses
  %wide.trip.count168 = zext i8 %i.au to i64      ; 2 uses
  %xtraiter204 = and i64 %wide.trip.count168, 1
  %i.be = icmp eq i8 %i.au, 1
  br i1 %i.be, label %.epil.preheader203, label %.lr.ph146.new

.lr.ph146.new:                                    ; preds = %.lr.ph146
  %unroll_iter207 = and i64 %wide.trip.count168, 254
  br label %bb.i

.preheader126:                                    ; preds = %.critedge
  br i1 %.not156, label %.loopexit, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader126
  %9 = mul nuw nsw i32 %6, 16843009               ; 3 uses
  %i.bf = mul nuw nsw i32 %i.as, 16843009         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2048 ; 3 uses
  %i.bh = load i8, ptr %.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 1024 ; 3 uses
  %wide.trip.count173 = zext i8 %i.au to i64      ; 2 uses
  %xtraiter210 = and i64 %wide.trip.count173, 1
  %i.bj = icmp eq i8 %i.au, 1
  br i1 %i.bj, label %.epil.preheader209, label %.lr.ph148.new

.lr.ph148.new:                                    ; preds = %.lr.ph148
  %unroll_iter213 = and i64 %wide.trip.count173, 254
  br label %bb.h

.preheader124:                                    ; preds = %.critedge
  br i1 %.not156, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader124
  %10 = zext nneg i8 %i.ao to i16
  %11 = mul nuw nsw i16 %10, 257                  ; 3 uses
  %i.bk = zext nneg i8 %i.ar to i16
  %i.bl = mul nuw nsw i16 %i.bk, 257              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2048 ; 3 uses
  %i.bn = load i8, ptr %.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 1024 ; 3 uses
  %wide.trip.count178 = zext i8 %i.au to i64      ; 2 uses
  %xtraiter216 = and i64 %wide.trip.count178, 1
  %i.bp = icmp eq i8 %i.au, 1
  br i1 %i.bp, label %.epil.preheader215, label %.lr.ph150.new

.lr.ph150.new:                                    ; preds = %.lr.ph150
  %unroll_iter219 = and i64 %wide.trip.count178, 254
  br label %bb.g

.preheader:                                       ; preds = %.critedge
  br i1 %.not156, label %.loopexit, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2048 ; 3 uses
  %i.br = load i8, ptr %.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 1024 ; 3 uses
  %wide.trip.count183 = zext i8 %i.au to i64      ; 2 uses
  %xtraiter222 = and i64 %wide.trip.count183, 1
  %i.bt = icmp eq i8 %i.au, 1
  br i1 %i.bt, label %.epil.preheader221, label %.lr.ph152.new

.lr.ph152.new:                                    ; preds = %.lr.ph152
  %unroll_iter225 = and i64 %wide.trip.count183, 254
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph152.new
  %indvars.iv180 = phi i64 [ 0, %.lr.ph152.new ], [ %indvars.iv.next181.1, %bb.f ] ; 5 uses
  %niter226 = phi i64 [ 0, %.lr.ph152.new ], [ %niter226.next.1, %bb.f ]
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv180
  store i8 %i.ao, ptr %i.bu, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv180
  store i8 %i.ar, ptr %i.bv, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv180
  store i8 %i.br, ptr %i.bw, align 1, !tbaa !9
  %indvars.iv.next181 = or disjoint i64 %indvars.iv180, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next181
  store i8 %i.ao, ptr %i.bx, align 1, !tbaa !9
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv.next181
  store i8 %i.ar, ptr %i.by, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv.next181
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !9
  %indvars.iv.next181.1 = add nuw nsw i64 %indvars.iv180, 2 ; 2 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.g, %.lr.ph150.new
  %indvars.iv175 = phi i64 [ 0, %.lr.ph150.new ], [ %indvars.iv.next176.1, %bb.g ] ; 5 uses
  %niter220 = phi i64 [ 0, %.lr.ph150.new ], [ %niter220.next.1, %bb.g ]
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv175
  store i16 %11, ptr %i.ca, align 2, !tbaa !9
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv175
  store i16 %i.bl, ptr %i.cb, align 2, !tbaa !9
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv175
  store i8 %i.bn, ptr %i.cc, align 1, !tbaa !9
  %indvars.iv.next176 = or disjoint i64 %indvars.iv175, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next176
  store i16 %11, ptr %i.cd, align 2, !tbaa !9
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv.next176
  store i16 %i.bl, ptr %i.ce, align 2, !tbaa !9
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv.next176
  store i8 %i.bn, ptr %i.cf, align 1, !tbaa !9
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %.loopexit.loopexit198.unr-lcssa, label %bb.g

bb.h:                                             ; preds = %bb.h, %.lr.ph148.new
  %indvars.iv170 = phi i64 [ 0, %.lr.ph148.new ], [ %indvars.iv.next171.1, %bb.h ] ; 5 uses
  %niter214 = phi i64 [ 0, %.lr.ph148.new ], [ %niter214.next.1, %bb.h ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv170
  store i32 %9, ptr %i.cg, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv170
  store i32 %i.bf, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv170
  store i8 %i.bh, ptr %i.ci, align 1, !tbaa !9
  %indvars.iv.next171 = or disjoint i64 %indvars.iv170, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next171
  store i32 %9, ptr %i.cj, align 4, !tbaa !9
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv.next171
  store i32 %i.bf, ptr %i.ck, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next171
  store i8 %i.bh, ptr %i.cl, align 1, !tbaa !9
  %indvars.iv.next171.1 = add nuw nsw i64 %indvars.iv170, 2 ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %.loopexit.loopexit199.unr-lcssa, label %bb.h

bb.i:                                             ; preds = %bb.i, %.lr.ph146.new
  %indvars.iv165 = phi i64 [ 0, %.lr.ph146.new ], [ %indvars.iv.next166.1, %bb.i ] ; 5 uses
  %niter208 = phi i64 [ 0, %.lr.ph146.new ], [ %niter208.next.1, %bb.i ]
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv165
  store i64 %8, ptr %i.cm, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %indvars.iv165
  store i64 %i.ba, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %indvars.iv165
  store i8 %i.bc, ptr %i.co, align 1, !tbaa !9
  %indvars.iv.next166 = or disjoint i64 %indvars.iv165, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next166
  store i64 %8, ptr %i.cp, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %indvars.iv.next166
  store i64 %i.ba, ptr %i.cq, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %indvars.iv.next166
  store i8 %i.bc, ptr %i.cr, align 1, !tbaa !9
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %.loopexit.loopexit200.unr-lcssa, label %bb.i

bb.j:                                             ; preds = %bb.j, %.lr.ph144.new
  %indvars.iv162 = phi i64 [ 0, %.lr.ph144.new ], [ %indvars.iv.next163.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph144.new ], [ %niter.next.1, %bb.j ]
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cs, i8 %i.ao, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ct, i8 %i.ar, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv162
  store i8 %i.aw, ptr %i.cu, align 1, !tbaa !9
  %indvars.iv.next163 = or disjoint i64 %indvars.iv162, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cv, i8 %i.ao, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv.next163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i8 %i.ar, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv.next163
  store i8 %i.aw, ptr %i.cx, align 1, !tbaa !9
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit201.unr-lcssa, label %bb.j

bb.k:                                             ; preds = %.critedge
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.loopexit, label %.epil.preheader221

.epil.preheader221:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph152
  %indvars.iv180.epil.init = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next181.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod224 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv180.epil.init
  store i8 %i.ao, ptr %i.cy, align 1, !tbaa !9
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv180.epil.init
  store i8 %i.ar, ptr %i.cz, align 1, !tbaa !9
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %indvars.iv180.epil.init
  store i8 %i.br, ptr %i.da, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit198.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.loopexit, label %.epil.preheader215

.epil.preheader215:                               ; preds = %.loopexit.loopexit198.unr-lcssa, %.lr.ph150
  %indvars.iv175.epil.init = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next176.1, %.loopexit.loopexit198.unr-lcssa ] ; 3 uses
  %lcmp.mod218 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv175.epil.init
  store i16 %11, ptr %i.db, align 2, !tbaa !9
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv175.epil.init
  store i16 %i.bl, ptr %i.dc, align 2, !tbaa !9
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv175.epil.init
  store i8 %i.bn, ptr %i.dd, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit199.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.loopexit, label %.epil.preheader209

.epil.preheader209:                               ; preds = %.loopexit.loopexit199.unr-lcssa, %.lr.ph148
  %indvars.iv170.epil.init = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next171.1, %.loopexit.loopexit199.unr-lcssa ] ; 3 uses
  %lcmp.mod212 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv170.epil.init
  store i32 %9, ptr %i.de, align 4, !tbaa !9
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv170.epil.init
  store i32 %i.bf, ptr %i.df, align 4, !tbaa !9
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv170.epil.init
  store i8 %i.bh, ptr %i.dg, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit200.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.loopexit, label %.epil.preheader203

.epil.preheader203:                               ; preds = %.loopexit.loopexit200.unr-lcssa, %.lr.ph146
  %indvars.iv165.epil.init = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next166.1, %.loopexit.loopexit200.unr-lcssa ] ; 3 uses
  %lcmp.mod206 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv165.epil.init
  store i64 %8, ptr %i.dh, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %indvars.iv165.epil.init
  store i64 %i.ba, ptr %i.di, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %indvars.iv165.epil.init
  store i8 %i.bc, ptr %i.dj, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit201.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit201.unr-lcssa, %.lr.ph144
  %indvars.iv162.epil.init = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next163.1, %.loopexit.loopexit201.unr-lcssa ] ; 3 uses
  %lcmp.mod202 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.tr.lcssa, i64 %indvars.iv162.epil.init
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dk, i8 %i.ao, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv162.epil.init
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i8 %i.ar, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv162.epil.init
  store i8 %i.aw, ptr %i.dm, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit201.unr-lcssa, %.epil.preheader203, %.loopexit.loopexit200.unr-lcssa, %.epil.preheader209, %.loopexit.loopexit199.unr-lcssa, %.epil.preheader215, %.loopexit.loopexit198.unr-lcssa, %.epil.preheader221, %.loopexit.loopexit.unr-lcssa, %.preheader130, %.preheader128, %.preheader126, %.preheader124, %.preheader
  %i.dn = phi i8 [ %i.au, %.epil.preheader215 ], [ %i.au, %.epil.preheader221 ], [ %i.au, %.epil.preheader203 ], [ %i.au, %.epil.preheader209 ], [ 0, %.preheader ], [ 0, %.preheader130 ], [ 0, %.preheader128 ], [ 0, %.preheader126 ], [ 0, %.preheader124 ], [ %i.au, %.loopexit.loopexit.unr-lcssa ], [ %i.au, %.loopexit.loopexit198.unr-lcssa ], [ %i.au, %.loopexit.loopexit199.unr-lcssa ], [ %i.au, %.loopexit.loopexit200.unr-lcssa ], [ %i.au, %.loopexit.loopexit201.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %i.do = zext nneg i8 %i.an to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @dav1d_memset_pow2, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 3072
  %i.ds = zext i8 %i.dn to i32
  tail call void %i.dq(ptr noundef nonnull %i.dr, i32 noundef %i.ds) #9
  br label %.loopexit132

.loopexit132:                                     ; preds = %bb.d, %bb.e, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"TxfmInfo", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7}
!11 = !{!10, !5, i64 2}
!12 = !{!10, !5, i64 3}
!13 = !{!"short", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!10, !5, i64 0}
!16 = !{!10, !5, i64 1}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"long", !5, i64 0}
!21 = distinct !{null, null}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{null}
!25 = distinct !{!25, !30, !31}
!26 = distinct !{!26, !30, !31}
!27 = distinct !{!27, !31, !30}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 8, i32 8}
!33 = !{!20, !20, i64 0}
!34 = !{!"Dav1dFilmGrainData", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 36, !5, i64 40, !5, i64 48, !6, i64 88, !6, i64 92, !5, i64 96, !5, i64 120, !20, i64 176, !6, i64 184, !5, i64 188, !5, i64 196, !5, i64 204, !6, i64 212, !6, i64 216}
!35 = !{!"", !34, i64 0, !5, i64 224, !5, i64 225}
!36 = !{!"", !5, i64 0, !5, i64 1}
!37 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 140, !13, i64 270}
!38 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9}
!39 = !{!"Dav1dSegmentationDataSet", !5, i64 0, !5, i64 80, !5, i64 81}
!40 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !39, i64 4, !5, i64 86, !5, i64 94}
!41 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2}
!42 = !{!"", !36, i64 0, !41, i64 2}
!43 = !{!"Dav1dLoopfilterModeRefDeltas", !5, i64 0, !5, i64 2}
!44 = !{!"", !5, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !43, i64 6, !5, i64 16}
!45 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 10}
!46 = !{!"", !5, i64 0, !5, i64 12}
!47 = !{!"Dav1dFrameHeader", !35, i64 0, !6, i64 232, !5, i64 236, !6, i64 244, !5, i64 248, !5, i64 249, !5, i64 250, !5, i64 251, !5, i64 252, !6, i64 256, !6, i64 260, !5, i64 264, !5, i64 265, !5, i64 266, !5, i64 267, !5, i64 268, !5, i64 269, !5, i64 270, !5, i64 271, !5, i64 272, !5, i64 276, !5, i64 404, !6, i64 408, !6, i64 412, !36, i64 416, !5, i64 418, !5, i64 419, !5, i64 420, !5, i64 421, !5, i64 428, !6, i64 432, !5, i64 436, !5, i64 437, !5, i64 438, !37, i64 440, !38, i64 712, !40, i64 722, !42, i64 824, !5, i64 829, !44, i64 830, !45, i64 847, !46, i64 868, !6, i64 884, !5, i64 888, !5, i64 889, !5, i64 890, !5, i64 891, !5, i64 893, !5, i64 894, !5, i64 896}
!48 = !{!47, !5, i64 722}
!49 = !{!47, !5, i64 834}
!50 = !{!"Dav1dSegmentationData", !13, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8}
!51 = !{!50, !5, i64 2}
!52 = !{!47, !5, i64 828}
!53 = !{!50, !5, i64 3}
!54 = !{!47, !5, i64 832}
!55 = !{!50, !5, i64 4}
!56 = !{!47, !5, i64 833}
!57 = !{!50, !5, i64 5}
!58 = !{!10, !5, i64 6}
end_hunk_0
