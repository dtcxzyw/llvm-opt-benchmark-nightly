Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/CrwDecompressor?download=true
inline.NumInlined: 946
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8rawspeed15CrwDecompressor10decompressEv:bb.a
  %i.aq = add nsw i32 %.sroa.0.2, %i.ap           ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 1024
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15CrwDecompressor10decompressEv) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = trunc nuw nsw i32 %i.aq to i16
  %i.at = icmp samesign ult i32 %.251, %.fr209
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %.2, %i.j
  call void @llvm.assume(i1 %i.au)
  %i.av = mul nuw nsw i32 %.2, %i.m
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.aw
  %i.ay = zext nneg i32 %.251 to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay
  store i16 %i.as, ptr %i.az, align 2, !tbaa !156
  %i.ba = add nuw nsw i32 %.251, 1                ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %.fr209
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %.2, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.3 = phi i32 [ 512, %bb.k ], [ %.sroa.7.2, %bb.j ]
  %.sroa.0.3 = phi i32 [ 512, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %.251.1 = phi i32 [ 0, %bb.k ], [ %i.ba, %bb.j ] ; 3 uses
  %.2.1 = phi i32 [ %i.bc, %bb.k ], [ %.2, %bb.j ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !156
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %.sroa.7.3, %i.bg           ; 4 uses
  %i.bi = icmp ult i32 %i.bh, 1024
  br i1 %i.bi, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc nuw nsw i32 %i.bh to i16
  %i.bk = icmp samesign ult i32 %.251.1, %.fr209
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ult i32 %.2.1, %i.j
  call void @llvm.assume(i1 %i.bl)
  %i.bm = mul nuw nsw i32 %.2.1, %i.m
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bn
  %i.bp = zext nneg i32 %.251.1 to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  store i16 %i.bj, ptr %i.bq, align 2, !tbaa !156
  %i.br = add nuw nsw i32 %.251.1, 1              ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %bb.e, label %bb.f, !llvm.loop !199

bb.n:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 4 uses
  %i.bt = lshr exact i32 %.fr209, 2               ; 9 uses
  %i.bu = icmp sgt i32 %i.j, 0
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
  br i1 %found.conflict, label %.split.us201.us.preheader.new, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %i.co = phi i32 [ %i.ee, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %i.cp = lshr exact i32 %i.co, 2
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %wide.load = load <8 x i8>, ptr %i.cr, align 1, !tbaa !106, !alias.scope !213
  %i.cs = zext <8 x i8> %wide.load to <8 x i32>   ; 4 uses
  %.idx = shl nuw i64 %index, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx ; 2 uses
  %i.cu = and <8 x i32> %i.cs, splat (i32 3)
  %wide.vec = load <32 x i16>, ptr %i.ct, align 2, !tbaa !156, !alias.scope !214, !noalias !213 ; 4 uses
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
  store <32 x i16> %interleaved.vec, ptr %i.ct, align 2, !tbaa !156, !alias.scope !214, !noalias !213
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = add i32 %i.co, 32
  %i.ef = icmp eq i64 %index.next, 664
  br i1 %i.ef, label %.split.us201.us.preheader.new, label %vector.body, !llvm.loop !203

.split.us201.us.preheader.new:                    ; preds = %vector.body, %.preheader.us
  %indvars.iv233.ph = phi i64 [ 0, %.preheader.us ], [ 2656, %vector.body ]
  br label %.split.us201.us

.split.us201.us:                                  ; preds = %.split.us201.us, %.split.us201.us.preheader.new
  %indvars.iv233 = phi i64 [ %indvars.iv233.ph, %.split.us201.us.preheader.new ], [ %indvars.iv.next234.1, %.split.us201.us ] ; 5 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv233 to i32
  %i.eh = lshr exact i32 %i.eg, 2                 ; 2 uses
  %i.ei = icmp samesign ult i32 %i.eh, %i.bt
  call void @llvm.assume(i1 %i.ei)
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !106
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv233 ; 2 uses
  %i.en = zext i8 %i.el to i16
  %i.eo = insertelement <4 x i16> poison, i16 %i.en, i64 0
  %i.ep = shufflevector <4 x i16> %i.eo, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.eq = lshr <4 x i16> %i.ep, <i16 0, i16 2, i16 4, i16 6>
  %i.er = and <4 x i16> %i.eq, <i16 3, i16 3, i16 3, i16 -1>
  %i.es = load <4 x i16>, ptr %i.em, align 2, !tbaa !156
  %i.et = shl <4 x i16> %i.es, splat (i16 2)      ; 2 uses
  %i.eu = or disjoint <4 x i16> %i.et, %i.er      ; 2 uses
  %i.ev = icmp ult <4 x i16> %i.et, splat (i16 512)
  %i.ew = add nuw nsw <4 x i16> %i.eu, splat (i16 2)
  %i.ex = select <4 x i1> %i.ev, <4 x i16> %i.ew, <4 x i16> %i.eu
  store <4 x i16> %i.ex, ptr %i.em, align 2, !tbaa !156
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 4 ; 3 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv.next234 to i32
  %i.ez = lshr exact i32 %i.ey, 2                 ; 2 uses
  %i.fa = icmp samesign ult i32 %i.ez, %i.bt
  call void @llvm.assume(i1 %i.fa)
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !106
  %3 = icmp samesign ult i64 %indvars.iv233, 2672
  call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.next234 ; 2 uses
  %i.fe = zext i8 %i.fd to i16
  %i.ff = insertelement <4 x i16> poison, i16 %i.fe, i64 0
  %i.fg = shufflevector <4 x i16> %i.ff, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.fh = lshr <4 x i16> %i.fg, <i16 0, i16 2, i16 4, i16 6>
  %i.fi = and <4 x i16> %i.fh, <i16 3, i16 3, i16 3, i16 -1>
  %i.fj = load <4 x i16>, ptr %4, align 2, !tbaa !156
  %i.fk = shl <4 x i16> %i.fj, splat (i16 2)      ; 2 uses
  %i.fl = or disjoint <4 x i16> %i.fk, %i.fi      ; 2 uses
  %i.fm = icmp ult <4 x i16> %i.fk, splat (i16 512)
  %i.fn = add nuw nsw <4 x i16> %i.fl, splat (i16 2)
  %i.fo = select <4 x i1> %i.fm, <4 x i16> %i.fn, <4 x i16> %i.fl
  store <4 x i16> %i.fo, ptr %4, align 2, !tbaa !156
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 8
  %i.fp = icmp samesign ult i64 %indvars.iv.next234, 2668
  br i1 %i.fp, label %.split.us201.us, label %.split207.us.us, !llvm.loop !204

.split207.us.us:                                  ; preds = %.split.us201.us
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit186, label %.preheader.us, !llvm.loop !205

.preheader:                                       ; preds = %.preheader.preheader, %.split207
  %indvars.iv223 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next224, %.split207 ] ; 3 uses
  %i.fq = mul nuw nsw i64 %indvars.iv223, %i.by
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.fq ; 5 uses
  %i.fs = mul nuw nsw i64 %indvars.iv223, %i.bw
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fs ; 5 uses
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
  %i.fu = trunc nuw i64 %indvars.iv220.epil to i32
  %i.fv = ashr exact i32 %i.fu, 2                 ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, %i.bt
  call void @llvm.assume(i1 %i.fw)
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !106
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv220.epil ; 2 uses
  %indvars.iv.next217.2.epil = or disjoint i64 %indvars.iv220.epil, 3
  %i.gb = icmp samesign ult i64 %indvars.iv.next217.2.epil, %i.bx
  call void @llvm.assume(i1 %i.gb)
  %i.gc = zext i8 %i.fz to i16
  %i.gd = insertelement <4 x i16> poison, i16 %i.gc, i64 0
  %i.ge = shufflevector <4 x i16> %i.gd, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gf = lshr <4 x i16> %i.ge, <i16 0, i16 2, i16 4, i16 6>
  %i.gg = and <4 x i16> %i.gf, <i16 3, i16 3, i16 3, i16 -1>
  %i.gh = load <4 x i16>, ptr %i.ga, align 2, !tbaa !156
  %i.gi = shl <4 x i16> %i.gh, splat (i16 2)
  %i.gj = or disjoint <4 x i16> %i.gi, %i.gg
  store <4 x i16> %i.gj, ptr %i.ga, align 2, !tbaa !156
  %indvars.iv.next221.epil = add i64 %indvars.iv220.epil, 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split207, label %.split.us.epil, !llvm.loop !206

.split207:                                        ; preds = %.split.us.epil, %.split207.unr-lcssa
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.loopexit186, label %.preheader, !llvm.loop !205

.split.us:                                        ; preds = %.preheader, %.split.us
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.3, %.split.us ], [ 0, %.preheader ] ; 10 uses
  %niter = phi i32 [ %niter.next.3, %.split.us ], [ 0, %.preheader ]
  %i.gk = trunc nuw i64 %indvars.iv220 to i32
  %i.gl = ashr exact i32 %i.gk, 2                 ; 2 uses
  %i.gm = icmp samesign ult i32 %i.gl, %i.bt
  call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !106
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv220 ; 2 uses
  %indvars.iv.next217.2 = or disjoint i64 %indvars.iv220, 3
  %i.gr = icmp samesign ult i64 %indvars.iv.next217.2, %i.bx
  call void @llvm.assume(i1 %i.gr)
  %i.gs = zext i8 %i.gp to i16
  %i.gt = insertelement <4 x i16> poison, i16 %i.gs, i64 0
  %i.gu = shufflevector <4 x i16> %i.gt, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gv = lshr <4 x i16> %i.gu, <i16 0, i16 2, i16 4, i16 6>
  %i.gw = and <4 x i16> %i.gv, <i16 3, i16 3, i16 3, i16 -1>
  %i.gx = load <4 x i16>, ptr %i.gq, align 2, !tbaa !156
  %i.gy = shl <4 x i16> %i.gx, splat (i16 2)
  %i.gz = or disjoint <4 x i16> %i.gy, %i.gw
  store <4 x i16> %i.gz, ptr %i.gq, align 2, !tbaa !156
  %indvars.iv.next221 = or disjoint i64 %indvars.iv220, 4 ; 2 uses
  %i.ha = trunc nuw i64 %indvars.iv.next221 to i32
  %i.hb = ashr exact i32 %i.ha, 2                 ; 2 uses
  %i.hc = icmp samesign ult i32 %i.hb, %i.bt
  call void @llvm.assume(i1 %i.hc)
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !106
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next221 ; 2 uses
  %indvars.iv.next217.2.1 = or disjoint i64 %indvars.iv220, 7
  %i.hh = icmp samesign ult i64 %indvars.iv.next217.2.1, %i.bx
  call void @llvm.assume(i1 %i.hh)
  %i.hi = zext i8 %i.hf to i16
  %i.hj = insertelement <4 x i16> poison, i16 %i.hi, i64 0
  %i.hk = shufflevector <4 x i16> %i.hj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.hl = lshr <4 x i16> %i.hk, <i16 0, i16 2, i16 4, i16 6>
  %i.hm = and <4 x i16> %i.hl, <i16 3, i16 3, i16 3, i16 -1>
  %i.hn = load <4 x i16>, ptr %i.hg, align 2, !tbaa !156
  %i.ho = shl <4 x i16> %i.hn, splat (i16 2)
  %i.hp = or disjoint <4 x i16> %i.ho, %i.hm
  store <4 x i16> %i.hp, ptr %i.hg, align 2, !tbaa !156
  %indvars.iv.next221.1 = or disjoint i64 %indvars.iv220, 8 ; 2 uses
  %i.hq = trunc nuw i64 %indvars.iv.next221.1 to i32
  %i.hr = ashr exact i32 %i.hq, 2                 ; 2 uses
  %i.hs = icmp samesign ult i32 %i.hr, %i.bt
  call void @llvm.assume(i1 %i.hs)
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !106
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next221.1 ; 2 uses
  %indvars.iv.next217.2.2 = or disjoint i64 %indvars.iv220, 11
  %i.hx = icmp samesign ult i64 %indvars.iv.next217.2.2, %i.bx
  call void @llvm.assume(i1 %i.hx)
  %i.hy = zext i8 %i.hv to i16
  %i.hz = insertelement <4 x i16> poison, i16 %i.hy, i64 0
  %i.ia = shufflevector <4 x i16> %i.hz, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ib = lshr <4 x i16> %i.ia, <i16 0, i16 2, i16 4, i16 6>
  %i.ic = and <4 x i16> %i.ib, <i16 3, i16 3, i16 3, i16 -1>
  %i.id = load <4 x i16>, ptr %i.hw, align 2, !tbaa !156
  %i.ie = shl <4 x i16> %i.id, splat (i16 2)
  %i.if = or disjoint <4 x i16> %i.ie, %i.ic
  store <4 x i16> %i.if, ptr %i.hw, align 2, !tbaa !156
  %indvars.iv.next221.2 = or disjoint i64 %indvars.iv220, 12 ; 2 uses
  %i.ig = trunc nuw i64 %indvars.iv.next221.2 to i32
  %i.ih = ashr exact i32 %i.ig, 2                 ; 2 uses
  %i.ii = icmp samesign ult i32 %i.ih, %i.bt
  call void @llvm.assume(i1 %i.ii)
  %i.ij = zext nneg i32 %i.ih to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !106
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next221.2 ; 2 uses
  %indvars.iv.next217.2.3 = or disjoint i64 %indvars.iv220, 15
  %i.in = icmp samesign ult i64 %indvars.iv.next217.2.3, %i.bx
  call void @llvm.assume(i1 %i.in)
  %i.io = zext i8 %i.il to i16
  %i.ip = insertelement <4 x i16> poison, i16 %i.io, i64 0
  %i.iq = shufflevector <4 x i16> %i.ip, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ir = lshr <4 x i16> %i.iq, <i16 0, i16 2, i16 4, i16 6>
  %i.is = and <4 x i16> %i.ir, <i16 3, i16 3, i16 3, i16 -1>
  %i.it = load <4 x i16>, ptr %i.im, align 2, !tbaa !156
  %i.iu = shl <4 x i16> %i.it, splat (i16 2)
  %i.iv = or disjoint <4 x i16> %i.iu, %i.is
  store <4 x i16> %i.iv, ptr %i.im, align 2, !tbaa !156
  %indvars.iv.next221.3 = add nuw nsw i64 %indvars.iv220, 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split207.unr-lcssa, label %.split.us, !llvm.loop !207

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
  %i.e = load i32, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 65
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i32, ptr %i.b, align 8, !tbaa !157  ; 5 uses
  %i.h = icmp sgt i32 %i.g, 7
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !153  ; 5 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i39 = icmp samesign ult i32 %i.e, 32
  br i1 %.not.i39, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = add nuw nsw i32 %i.i, 8
  %.not.i.i = icmp samesign ugt i32 %i.k, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !107

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !16, !noalias !219
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.l
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 16
  %i.o = icmp samesign ugt i32 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g, !prof !107

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !16
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
  %i.w = load i32, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i32 %i.w, %i.v
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !153
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !150 ; 2 uses
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
  %i.ai = load i64, ptr %2, align 8, !tbaa !149   ; 2 uses
  %i.aj = lshr i64 %i.ai, 53                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %i.ao = ashr i32 %i.an, 9
  %i.ap = and i32 %i.an, 255                      ; 4 uses
  %i.aq = icmp samesign ult i32 %i.ap, 33
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.ad, %i.ap            ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !150
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ai, %i.as                    ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !149
  %.not17.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i, label %bb.h, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %i.au = trunc nuw nsw i64 %i.aj to i32
  %.sroa.0.0.insert.insert66 = or disjoint i32 %i.au, 720896
  %i.av = icmp eq i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nsw i32 %i.ar, -11
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !150
  %i.ax = shl i64 %i.at, 11
  store i64 %i.ax, ptr %2, align 8, !tbaa !149
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
  br i1 %or.cond5, label %bb.m, label %bb.j, !llvm.loop !218

bb.j:                                             ; preds = %bb.i
  %i.bh = add nsw i32 %i.bc, %.03472              ; 4 uses
  br i1 %i.bd, label %bb.m, label %bb.k, !llvm.loop !218

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !150 ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 65
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ule i32 %i.ba, %i.bi
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %2, align 8, !tbaa !149   ; 3 uses
  %i.bm = sub nuw nsw i32 %i.bi, %i.ba
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !150
  %i.bn = zext nneg i32 %i.ba to i64
  %i.bo = shl i64 %i.bl, %i.bn
  store i64 %i.bo, ptr %2, align 8, !tbaa !149
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
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !156
end_hunk_0
