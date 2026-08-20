inline.NumInlined: 946
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8rawspeed15CrwDecompressor10decompressEv:bb.a
  br i1 %i.bu, label %.preheader.lr.ph, label %.loopexit186

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.bv = icmp eq i32 %.fr209, 2672
  %i.bw = zext i32 %i.m to i64                    ; 3 uses
  br i1 %i.bv, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %.fr209 to i64            ; 5 uses
  %i.by = zext nneg i32 %i.bt to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  %i.bz = add nsw i32 %.fr209, -4                 ; 2 uses
  %i.ca = lshr exact i32 %i.bz, 2
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %xtraiter = and i32 %i.cb, 3                    ; 3 uses
  %i.cc = icmp ult i32 %i.bz, 12
  %unroll_iter = and i32 %i.cb, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod258 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.cd = zext nneg i32 %i.bt to i64              ; 2 uses
  %wide.trip.count241 = zext nneg i32 %i.j to i64 ; 2 uses
  %i.ce = add nsw i64 %wide.trip.count241, -1     ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %i.bw
  %i.cg = shl i64 %i.cf, 1
  %i.ch = getelementptr i8, ptr %i.c, i64 %i.cg
  %scevgep = getelementptr i8, ptr %i.ch, i64 5344
  %i.ci = mul nsw i64 %i.ce, %i.cd
  %i.cj = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ci
  %scevgep250 = getelementptr i8, ptr %i.cj, i64 668
  %bound0 = icmp ult ptr %i.c, %scevgep250
  %bound1 = icmp ult ptr %.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.split207.us.us
  %indvars.iv237 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next238, %.split207.us.us ] ; 3 uses
  %i.ck = mul nuw nsw i64 %indvars.iv237, %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ck ; 3 uses
  %i.cm = mul nuw nsw i64 %indvars.iv237, %i.bw
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cm ; 3 uses
  br i1 %found.conflict, label %.split.us205.us.preheader.new, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %i.co = phi i32 [ %i.ee, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %i.cp = lshr exact i32 %i.co, 2
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %wide.load = load <8 x i8>, ptr %i.cr, align 1, !tbaa !116, !alias.scope !201
  %i.cs = zext <8 x i8> %wide.load to <8 x i32>   ; 4 uses
  %.idx = shl nuw i64 %index, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx ; 2 uses
  %i.cu = and <8 x i32> %i.cs, splat (i32 3)
  %wide.vec = load <32 x i16>, ptr %i.ct, align 2, !tbaa !198, !alias.scope !204, !noalias !201 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec252 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec253 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec254 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cv = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cw = shl nuw nsw <8 x i32> %i.cv, splat (i32 2)
  %i.cx = or disjoint <8 x i32> %i.cw, %i.cu
  %i.cy = trunc <8 x i32> %i.cx to <8 x i16>      ; 3 uses
  %i.cz = icmp ult <8 x i16> %i.cy, splat (i16 512)
  %i.da = add nuw nsw <8 x i16> %i.cy, splat (i16 2)
  %i.db = select <8 x i1> %i.cz, <8 x i16> %i.da, <8 x i16> %i.cy
  %i.dc = lshr <8 x i32> %i.cs, splat (i32 2)
  %i.dd = and <8 x i32> %i.dc, splat (i32 3)
  %i.de = zext <8 x i16> %strided.vec252 to <8 x i32>
  %i.df = shl nuw nsw <8 x i32> %i.de, splat (i32 2)
  %i.dg = or disjoint <8 x i32> %i.df, %i.dd
  %i.dh = trunc <8 x i32> %i.dg to <8 x i16>      ; 3 uses
  %i.di = icmp ult <8 x i16> %i.dh, splat (i16 512)
  %i.dj = add nuw nsw <8 x i16> %i.dh, splat (i16 2)
  %i.dk = select <8 x i1> %i.di, <8 x i16> %i.dj, <8 x i16> %i.dh
  %i.dl = lshr <8 x i32> %i.cs, splat (i32 4)
  %i.dm = and <8 x i32> %i.dl, splat (i32 3)
  %i.dn = zext <8 x i16> %strided.vec253 to <8 x i32>
  %i.do = shl nuw nsw <8 x i32> %i.dn, splat (i32 2)
  %i.dp = or disjoint <8 x i32> %i.do, %i.dm
  %i.dq = trunc <8 x i32> %i.dp to <8 x i16>      ; 3 uses
  %i.dr = icmp ult <8 x i16> %i.dq, splat (i16 512)
  %i.ds = add nuw nsw <8 x i16> %i.dq, splat (i16 2)
  %i.dt = select <8 x i1> %i.dr, <8 x i16> %i.ds, <8 x i16> %i.dq
  %i.du = lshr <8 x i32> %i.cs, splat (i32 6)
  %i.dv = zext <8 x i16> %strided.vec254 to <8 x i32>
  %i.dw = shl nuw nsw <8 x i32> %i.dv, splat (i32 2)
  %i.dx = or disjoint <8 x i32> %i.dw, %i.du
  %i.dy = trunc <8 x i32> %i.dx to <8 x i16>      ; 3 uses
  %i.dz = icmp ult <8 x i16> %i.dy, splat (i16 512)
  %i.ea = add nuw nsw <8 x i16> %i.dy, splat (i16 2)
  %i.eb = select <8 x i1> %i.dz, <8 x i16> %i.ea, <8 x i16> %i.dy
  %i.ec = shufflevector <8 x i16> %i.db, <8 x i16> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = shufflevector <8 x i16> %i.dt, <8 x i16> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.ec, <16 x i16> %i.ed, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.ct, align 2, !tbaa !198, !alias.scope !204, !noalias !201
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = add i32 %i.co, 32
  %i.ef = icmp eq i64 %index.next, 664
  br i1 %i.ef, label %.split.us205.us.preheader.new, label %vector.body, !llvm.loop !206

.split.us205.us.preheader.new:                    ; preds = %vector.body, %.preheader.us
  %indvars.iv233.ph = phi i64 [ 0, %.preheader.us ], [ 2656, %vector.body ]
  br label %.split.us205.us

.split.us205.us:                                  ; preds = %.split.us205.us, %.split.us205.us.preheader.new
  %indvars.iv233 = phi i64 [ %indvars.iv233.ph, %.split.us205.us.preheader.new ], [ %indvars.iv.next234.1, %.split.us205.us ] ; 5 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv233 to i32
  %i.eh = lshr exact i32 %i.eg, 2                 ; 2 uses
  %i.ei = icmp samesign ult i32 %i.eh, %i.bt
  call void @llvm.assume(i1 %i.ei)
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !116
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv233 ; 2 uses
  %i.en = zext i8 %i.el to i16
  %i.eo = insertelement <4 x i16> poison, i16 %i.en, i64 0
  %i.ep = shufflevector <4 x i16> %i.eo, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.eq = lshr <4 x i16> %i.ep, <i16 0, i16 2, i16 4, i16 6>
  %i.er = and <4 x i16> %i.eq, <i16 3, i16 3, i16 3, i16 -1>
  %i.es = load <4 x i16>, ptr %i.em, align 2, !tbaa !198
  %i.et = shl <4 x i16> %i.es, splat (i16 2)      ; 2 uses
  %i.eu = or disjoint <4 x i16> %i.et, %i.er      ; 2 uses
  %i.ev = icmp ult <4 x i16> %i.et, splat (i16 512)
  %i.ew = add nuw nsw <4 x i16> %i.eu, splat (i16 2)
  %i.ex = select <4 x i1> %i.ev, <4 x i16> %i.ew, <4 x i16> %i.eu
  store <4 x i16> %i.ex, ptr %i.em, align 2, !tbaa !198
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 4 ; 3 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv.next234 to i32
  %i.ez = lshr exact i32 %i.ey, 2                 ; 2 uses
  %i.fa = icmp samesign ult i32 %i.ez, %i.bt
  call void @llvm.assume(i1 %i.fa)
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !116
  %i.fe = icmp samesign ult i64 %indvars.iv233, 2672
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.next234 ; 2 uses
  %i.fg = zext i8 %i.fd to i16
  %i.fh = insertelement <4 x i16> poison, i16 %i.fg, i64 0
  %i.fi = shufflevector <4 x i16> %i.fh, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.fj = lshr <4 x i16> %i.fi, <i16 0, i16 2, i16 4, i16 6>
  %i.fk = and <4 x i16> %i.fj, <i16 3, i16 3, i16 3, i16 -1>
  %i.fl = load <4 x i16>, ptr %i.ff, align 2, !tbaa !198
  %i.fm = shl <4 x i16> %i.fl, splat (i16 2)      ; 2 uses
  %i.fn = or disjoint <4 x i16> %i.fm, %i.fk      ; 2 uses
  %i.fo = icmp ult <4 x i16> %i.fm, splat (i16 512)
  %i.fp = add nuw nsw <4 x i16> %i.fn, splat (i16 2)
  %i.fq = select <4 x i1> %i.fo, <4 x i16> %i.fp, <4 x i16> %i.fn
  store <4 x i16> %i.fq, ptr %i.ff, align 2, !tbaa !198
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 8
  %i.fr = icmp samesign ult i64 %indvars.iv.next234, 2668
  br i1 %i.fr, label %.split.us205.us, label %.split207.us.us, !llvm.loop !207

.split207.us.us:                                  ; preds = %.split.us205.us
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit186, label %.preheader.us, !llvm.loop !208

.preheader:                                       ; preds = %.preheader.preheader, %.split207
  %indvars.iv223 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next224, %.split207 ] ; 3 uses
  %i.fs = mul nuw nsw i64 %indvars.iv223, %i.by
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.fs ; 5 uses
  %i.fu = mul nuw nsw i64 %indvars.iv223, %i.bw
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fu ; 5 uses
  br i1 %i.cc, label %.split.us.epil.preheader, label %.split.us

.split207.unr-lcssa:                              ; preds = %.split.us
  br i1 %lcmp.mod.not, label %.split207, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %.split207.unr-lcssa, %.preheader
  %indvars.iv220.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next221.3, %.split207.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.split.us.epil

.split.us.epil:                                   ; preds = %.split.us.epil, %.split.us.epil.preheader
  %indvars.iv220.epil = phi i64 [ %indvars.iv220.epil.init, %.split.us.epil.preheader ], [ %indvars.iv.next221.epil, %.split.us.epil ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.split.us.epil.preheader ], [ %epil.iter.next, %.split.us.epil ]
  %i.fw = trunc nuw i64 %indvars.iv220.epil to i32
  %i.fx = ashr exact i32 %i.fw, 2                 ; 2 uses
  %i.fy = icmp samesign ult i32 %i.fx, %i.bt
  call void @llvm.assume(i1 %i.fy)
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !116
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv220.epil ; 2 uses
  %indvars.iv.next217.2.epil = or disjoint i64 %indvars.iv220.epil, 3
  %i.gd = icmp samesign ult i64 %indvars.iv.next217.2.epil, %i.bx
  call void @llvm.assume(i1 %i.gd)
  %i.ge = zext i8 %i.gb to i16
  %i.gf = insertelement <4 x i16> poison, i16 %i.ge, i64 0
  %i.gg = shufflevector <4 x i16> %i.gf, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gh = lshr <4 x i16> %i.gg, <i16 0, i16 2, i16 4, i16 6>
  %i.gi = and <4 x i16> %i.gh, <i16 3, i16 3, i16 3, i16 -1>
  %i.gj = load <4 x i16>, ptr %i.gc, align 2, !tbaa !198
  %i.gk = shl <4 x i16> %i.gj, splat (i16 2)
  %i.gl = or disjoint <4 x i16> %i.gk, %i.gi
  store <4 x i16> %i.gl, ptr %i.gc, align 2, !tbaa !198
  %indvars.iv.next221.epil = add i64 %indvars.iv220.epil, 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split207, label %.split.us.epil, !llvm.loop !209

.split207:                                        ; preds = %.split.us.epil, %.split207.unr-lcssa
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.loopexit186, label %.preheader, !llvm.loop !208

.split.us:                                        ; preds = %.preheader, %.split.us
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.3, %.split.us ], [ 0, %.preheader ] ; 10 uses
  %niter = phi i32 [ %niter.next.3, %.split.us ], [ 0, %.preheader ]
  %i.gm = trunc nuw i64 %indvars.iv220 to i32
  %i.gn = ashr exact i32 %i.gm, 2                 ; 2 uses
  %i.go = icmp samesign ult i32 %i.gn, %i.bt
  call void @llvm.assume(i1 %i.go)
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !116
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv220 ; 2 uses
  %indvars.iv.next217.2 = or disjoint i64 %indvars.iv220, 3
  %i.gt = icmp samesign ult i64 %indvars.iv.next217.2, %i.bx
  call void @llvm.assume(i1 %i.gt)
  %i.gu = zext i8 %i.gr to i16
  %i.gv = insertelement <4 x i16> poison, i16 %i.gu, i64 0
  %i.gw = shufflevector <4 x i16> %i.gv, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gx = lshr <4 x i16> %i.gw, <i16 0, i16 2, i16 4, i16 6>
  %i.gy = and <4 x i16> %i.gx, <i16 3, i16 3, i16 3, i16 -1>
  %i.gz = load <4 x i16>, ptr %i.gs, align 2, !tbaa !198
  %i.ha = shl <4 x i16> %i.gz, splat (i16 2)
  %i.hb = or disjoint <4 x i16> %i.ha, %i.gy
  store <4 x i16> %i.hb, ptr %i.gs, align 2, !tbaa !198
  %indvars.iv.next221 = or disjoint i64 %indvars.iv220, 4 ; 2 uses
  %i.hc = trunc nuw i64 %indvars.iv.next221 to i32
  %i.hd = ashr exact i32 %i.hc, 2                 ; 2 uses
  %i.he = icmp samesign ult i32 %i.hd, %i.bt
  call void @llvm.assume(i1 %i.he)
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !116
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221 ; 2 uses
  %indvars.iv.next217.2.1 = or disjoint i64 %indvars.iv220, 7
  %i.hj = icmp samesign ult i64 %indvars.iv.next217.2.1, %i.bx
  call void @llvm.assume(i1 %i.hj)
  %i.hk = zext i8 %i.hh to i16
  %i.hl = insertelement <4 x i16> poison, i16 %i.hk, i64 0
  %i.hm = shufflevector <4 x i16> %i.hl, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.hn = lshr <4 x i16> %i.hm, <i16 0, i16 2, i16 4, i16 6>
  %i.ho = and <4 x i16> %i.hn, <i16 3, i16 3, i16 3, i16 -1>
  %i.hp = load <4 x i16>, ptr %i.hi, align 2, !tbaa !198
  %i.hq = shl <4 x i16> %i.hp, splat (i16 2)
  %i.hr = or disjoint <4 x i16> %i.hq, %i.ho
  store <4 x i16> %i.hr, ptr %i.hi, align 2, !tbaa !198
  %indvars.iv.next221.1 = or disjoint i64 %indvars.iv220, 8 ; 2 uses
  %i.hs = trunc nuw i64 %indvars.iv.next221.1 to i32
  %i.ht = ashr exact i32 %i.hs, 2                 ; 2 uses
  %i.hu = icmp samesign ult i32 %i.ht, %i.bt
  call void @llvm.assume(i1 %i.hu)
  %i.hv = zext nneg i32 %i.ht to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !116
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221.1 ; 2 uses
  %indvars.iv.next217.2.2 = or disjoint i64 %indvars.iv220, 11
  %i.hz = icmp samesign ult i64 %indvars.iv.next217.2.2, %i.bx
  call void @llvm.assume(i1 %i.hz)
  %i.ia = zext i8 %i.hx to i16
  %i.ib = insertelement <4 x i16> poison, i16 %i.ia, i64 0
  %i.ic = shufflevector <4 x i16> %i.ib, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.id = lshr <4 x i16> %i.ic, <i16 0, i16 2, i16 4, i16 6>
  %i.ie = and <4 x i16> %i.id, <i16 3, i16 3, i16 3, i16 -1>
  %i.if = load <4 x i16>, ptr %i.hy, align 2, !tbaa !198
  %i.ig = shl <4 x i16> %i.if, splat (i16 2)
  %i.ih = or disjoint <4 x i16> %i.ig, %i.ie
  store <4 x i16> %i.ih, ptr %i.hy, align 2, !tbaa !198
  %indvars.iv.next221.2 = or disjoint i64 %indvars.iv220, 12 ; 2 uses
  %i.ii = trunc nuw i64 %indvars.iv.next221.2 to i32
  %i.ij = ashr exact i32 %i.ii, 2                 ; 2 uses
  %i.ik = icmp samesign ult i32 %i.ij, %i.bt
  call void @llvm.assume(i1 %i.ik)
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !116
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.next221.2 ; 2 uses
  %indvars.iv.next217.2.3 = or disjoint i64 %indvars.iv220, 15
  %i.ip = icmp samesign ult i64 %indvars.iv.next217.2.3, %i.bx
  call void @llvm.assume(i1 %i.ip)
  %i.iq = zext i8 %i.in to i16
  %i.ir = insertelement <4 x i16> poison, i16 %i.iq, i64 0
  %i.is = shufflevector <4 x i16> %i.ir, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.it = lshr <4 x i16> %i.is, <i16 0, i16 2, i16 4, i16 6>
  %i.iu = and <4 x i16> %i.it, <i16 3, i16 3, i16 3, i16 -1>
  %i.iv = load <4 x i16>, ptr %i.io, align 2, !tbaa !198
  %i.iw = shl <4 x i16> %i.iv, splat (i16 2)
  %i.ix = or disjoint <4 x i16> %i.iw, %i.iu
  store <4 x i16> %i.ix, ptr %i.io, align 2, !tbaa !198
  %indvars.iv.next221.3 = add nuw nsw i64 %indvars.iv220, 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split207.unr-lcssa, label %.split.us, !llvm.loop !211

.loopexit186:                                     ; preds = %.split207, %.split207.us.us, %bb.n, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed15CrwDecompressor11decodeBlockEPSt5arrayIsLm64EERKS1_INS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS5_EEEELm2EERNS_15BitStreamerJPEGE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03472 = phi i32 [ 0, %bb.a ], [ %.2, %bb.m ]  ; 4 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 65
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i32, ptr %i.b, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp sgt i32 %i.g, 7
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !193  ; 5 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i39 = icmp samesign ult i32 %i.e, 32
  br i1 %.not.i39, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = add nuw nsw i32 %i.i, 8
  %.not.i.i = icmp samesign ugt i32 %i.k, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !15, !noalias !213
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.l
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 16
  %i.o = icmp samesign ugt i32 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g, !prof !117

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !15
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.p = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.p)
  %i.q = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 9
  tail call void @llvm.assume(i1 %i.r)
  %i.s = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.m, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.v = tail call noundef i32 @_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i) ; 3 uses
  %i.w = load i32, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i32 %i.w, %i.v
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !193
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 31
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i, %bb.b
  %i.ad = phi i32 [ %i.e, %bb.b ], [ %i.ab, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i ] ; 2 uses
  %i.ae = icmp sgt i32 %.03472, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [152 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ad, 65
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %2, align 8, !tbaa !190   ; 2 uses
  %i.aj = lshr i64 %i.ai, 53                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !163
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21 ; 3 uses
  %i.ao = ashr i32 %i.an, 9
  %i.ap = and i32 %i.an, 255                      ; 4 uses
  %i.aq = icmp samesign ult i32 %i.ap, 33
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.ad, %i.ap            ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !192
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ai, %i.as                    ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !190
  %.not17.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i, label %bb.h, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %i.au = trunc nuw nsw i64 %i.aj to i32
  %.sroa.0.0.insert.insert66 = or disjoint i32 %i.au, 720896
  %i.av = icmp eq i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nsw i32 %i.ar, -11
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !192
  %i.ax = shl i64 %i.at, 11
  store i64 %i.ax, ptr %2, align 8, !tbaa !190
  %i.ay = tail call i64 @_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 %.sroa.0.0.insert.insert66)
  %.sroa.453.0.extract.shift = lshr i64 %i.ay, 32
  %i.az = trunc nuw i64 %.sroa.453.0.extract.shift to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit: ; preds = %bb.h, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %.0.i = phi i32 [ %i.ao, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50 ], [ %i.az, %bb.h ] ; 2 uses
  %i.ba = and i32 %.0.i, 15                       ; 8 uses
  %i.bb = lshr i32 %.0.i, 4                       ; 2 uses
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %i.bd = icmp eq i32 %i.ba, 0
  %i.be = or i32 %i.bc, %i.ba
  %or.cond = icmp eq i32 %i.be, 0
  %i.bf = icmp ne i32 %.03472, 0
  %or.cond3 = and i1 %i.bf, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit
  %i.bg = and i32 %i.ba, %i.bb
  %or.cond5 = icmp eq i32 %i.bg, 15
  br i1 %or.cond5, label %bb.m, label %bb.j, !llvm.loop !216

bb.j:                                             ; preds = %bb.i
  %i.bh = add nsw i32 %i.bc, %.03472              ; 4 uses
  br i1 %i.bd, label %bb.m, label %bb.k, !llvm.loop !216

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !192 ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 65
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ule i32 %i.ba, %i.bi
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %2, align 8, !tbaa !190   ; 3 uses
  %i.bm = sub nsw i32 %i.bi, %i.ba
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !192
  %i.bn = zext nneg i32 %i.ba to i64
  %i.bo = shl i64 %i.bl, %i.bn
  store i64 %i.bo, ptr %2, align 8, !tbaa !190
  %i.bp = icmp sgt i32 %i.bh, 63
  br i1 %i.bp, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nuw nsw i32 64, %i.ba
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bl, %i.br
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = icmp sgt i64 %i.bl, -1
  %notmask.i = shl nsw i32 -1, %i.ba
  %.neg.i = or disjoint i32 %notmask.i, 1
  %i.bv = select i1 %i.bu, i32 %.neg.i, i32 0
  %.0.i51 = add nsw i32 %i.bv, %i.bt
  %i.bw = trunc nsw i32 %.0.i51 to i16
  %i.bx = sext i32 %i.bh to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bx
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.l
  %.2.in = phi i32 [ %i.bh, %bb.l ], [ %.03472, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %.2 = add nsw i32 %.2.in, 1
  %i.bz = icmp slt i32 %.2.in, 63
  br i1 %i.bz, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.k, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !call_target !107, !inline_history !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.dc, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !242

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 4
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !230

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cz, ptr align 4 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 4
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load i32, ptr %i.cl, align 4, !tbaa !21
  store i32 %i.dv, ptr %i.cz, align 4, !tbaa !21
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !230

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %1, align 4, !tbaa !21
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = sub i64 %i.e, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ec) #21
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !133
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !137
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ed, ptr %i.a, align 8, !tbaa !134
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !131
  br i1 %1, label %bb.b, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.04.07.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load i8, ptr %.sroa.04.07.i.i, align 1, !tbaa !116 ; 2 uses
  %i.l = icmp ult i8 %i.k, 17
  br i1 %i.l, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = zext i8 %i.k to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv, i32 noundef %i.m, i32 noundef 16) #15
  unreachable

_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !133  ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243  ; 3 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !179  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1                 ; 3 uses
  %i.ad = icmp ugt i64 %i.v, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.ae = sub nuw nsw i64 %i.v, %i.ac
  tail call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.x, i64 noundef %i.ae, ptr noundef nonnull align 2 dereferenceable(2) @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE)
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !137
  %.pre23 = load ptr, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  %.pre26 = ptrtoint ptr %.pre to i64
  %.pre27 = ptrtoint ptr %.pre23 to i64
  %.pre29 = sub i64 %.pre26, %.pre27
  %.pre31 = ashr exact i64 %.pre29, 2
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.f:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.af = icmp ult i64 %i.v, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !243
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

_ZNSt6vectorItSaItEE6resizeEmRKt.exit:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi32 = phi i64 [ %.pre31, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.v, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ah = phi ptr [ %.pre23, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !243 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !179 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 1                 ; 3 uses
  %i.aq = icmp ugt i64 %.pre-phi32, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit
  %i.ar = sub nuw nsw i64 %.pre-phi32, %i.ap
  tail call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.ak, i64 noundef %i.ar, ptr noundef nonnull align 2 dereferenceable(2) @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE)
  %.pre24 = load ptr, ptr %i.p, align 8, !tbaa !137
  %.pre25 = load ptr, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  %.pre33 = ptrtoint ptr %.pre24 to i64
  %.pre35 = ptrtoint ptr %.pre25 to i64
  %.pre37 = sub i64 %.pre33, %.pre35
  %.pre39 = ashr exact i64 %.pre37, 2
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

bb.i:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit
  %i.as = icmp ult i64 %.pre-phi32, %i.ap
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.pre-phi32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i15, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16:      ; preds = %bb.j
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !243
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

_ZNSt6vectorItSaItEE6resizeEmRKt.exit17:          ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16
  %.pre-phi40 = phi i64 [ %.pre39, %bb.h ], [ %.pre-phi32, %bb.i ], [ %.pre-phi32, %bb.j ], [ %.pre-phi32, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16 ]
  %i.au = phi ptr [ %.pre25, %bb.h ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16 ]
  %i.av = add nsw i64 %.pre-phi40, -1             ; 2 uses
  %.not19 = icmp eq i64 %i.av, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m, %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %i.ax = phi i64 [ 1, %.lr.ph ], [ %4, %bb.m ]   ; 3 uses
  %.021 = phi i32 [ 1, %.lr.ph ], [ %3, %bb.m ]
  %.01220 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.m ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21 ; 2 uses
  %.not14 = icmp eq i32 %i.az, 0
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = zext i32 %.01220 to i64
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !165 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !169
  %i.be = trunc i32 %.01220 to i16
  %i.bf = sub i16 %i.bd, %i.be
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !179
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ax
  store i16 %i.bf, ptr %i.bh, align 2, !tbaa !198
  %i.bi = add i32 %i.az, %.01220                  ; 2 uses
  %i.bj = add i32 %i.bi, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !169
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !179
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.ax
  store i16 %i.bm, ptr %i.bo, align 2, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i32 [ %i.bi, %bb.l ], [ %.01220, %bb.k ]
  %3 = add i32 %.021, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %.not = icmp ult i64 %i.av, %4
  br i1 %.not, label %._crit_edge, label %bb.k, !llvm.loop !244
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243  ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !198    ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !230

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !243
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !198
  store i16 %i.s, ptr %i.d, align 2, !tbaa !198
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !243
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !230

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !198
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !198
  br label %iter.check164

iter.check164:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -2                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.ae, 14
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check164
  %min.iters.check152 = icmp ult i64 %i.ae, 126
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ah = and i64 %i.ag, 56
  %n.vec154 = and i64 %i.ag, -64                  ; 4 uses
  %i.ai = shl i64 %n.vec154, 1
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert155 = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat156 = shufflevector <16 x i16> %broadcast.splatinsert155, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ak = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep159, i64 32
  %i.am = getelementptr i8, ptr %next.gep159, i64 64
  %i.an = getelementptr i8, ptr %next.gep159, i64 96
  store <16 x i16> %broadcast.splat156, ptr %next.gep159, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat156, ptr %i.al, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat156, ptr %i.am, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat156, ptr %i.an, align 2, !tbaa !198
  %index.next160 = add nuw i64 %index158, 64      ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.ao, label %middle.block161, label %vector.body157, !llvm.loop !245

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ag, %n.vec154
  br i1 %cmp.n162, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph168, !prof !246

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec154, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec169 = and i64 %i.ag, -8                   ; 3 uses
  %i.ap = shl i64 %n.vec169, 1
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert170 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat171 = shufflevector <8 x i16> %broadcast.splatinsert170, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ar = shl i64 %index173, 1
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i16> %broadcast.splat171, ptr %next.gep174, align 2, !tbaa !198
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.as, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !247

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.ag, %n.vec169
  br i1 %cmp.n177, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.aq, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !198
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !248

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPtmttET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 1
  %i.ay = add i64 %i.ax, -2
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.az, 126
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 56
  %n.vec = and i64 %i.bb, -64                     ; 4 uses
  %i.bd = shl i64 %n.vec, 1
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bf ; 4 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 32
  %i.bh = getelementptr i8, ptr %next.gep, i64 64
  %i.bi = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat, ptr %i.bg, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat, ptr %i.bh, align 2, !tbaa !198
  store <16 x i16> %broadcast.splat, ptr %i.bi, align 2, !tbaa !198
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
end_hunk_1
