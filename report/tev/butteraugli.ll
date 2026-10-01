Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN3jxl6N_SSE414MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = extractelement <4 x double> %predphi40, i64 3
  %i.ed = fptrunc double %i.ec to float
  store float %i.ed, ptr %i.eb, align 4, !tbaa !58, !alias.scope !313, !noalias !314
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %pred.store.continue46
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.0161173.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %.0161173.us.i = phi i64 [ %i.gk, %bb.l ], [ %.0161173.us.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0161173.us.i ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !58, !noalias !310 ; 2 uses
  %i.eh = tail call noundef float @llvm.fabs.f32(float %i.eg)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0161173.us.i ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !58, !noalias !310 ; 2 uses
  %i.ek = tail call noundef float @llvm.fabs.f32(float %i.ej)
  %i.el = fadd float %i.eh, %i.ek
  %i.em = fmul float %i.el, 5.000000e-01
  %i.en = fsub float %i.eg, %i.ej
  %i.eo = fadd float %i.em, %i.ap
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0161173.us.i ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fdiv <2 x float> %i.ac, %i.er           ; 5 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = fmul float %i.en, %i.et                 ; 5 uses
  store float %i.eu, ptr %i.ep, align 4, !tbaa !58, !noalias !310
  %i.ev = load float, ptr %i.ef, align 4, !tbaa !58, !noalias !310 ; 2 uses
  %i.ew = tail call noundef float @llvm.fabs.f32(float %i.ev)
  %i.ex = fpext float %i.ew to double             ; 2 uses
  %i.ey = fmul double %i.ex, 5.500000e-01         ; 4 uses
  %i.ez = fmul double %i.ex, 1.050000e+00         ; 4 uses
  %i.fa = fcmp olt float %i.ev, 0.000000e+00
  %i.fb = load float, ptr %i.ei, align 4, !tbaa !58, !noalias !310 ; 2 uses
  %i.fc = fpext float %i.fb to double             ; 7 uses
  br i1 %i.fa, label %bb.h, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %i.fd = fcmp ogt double %i.ey, %i.fc
  br i1 %i.fd, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fe = fcmp olt double %i.ez, %i.fc
  br i1 %i.fe, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ff = extractelement <2 x float> %i.es, i64 1
  %i.fg = fpext float %i.ff to double
  %i.fh = fsub double %i.fc, %i.ez
  %i.fi = fmul double %i.fh, %i.fg
  %i.fj = fpext float %i.eu to double
  %i.fk = fsub double %i.fj, %i.fi
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.fl = extractelement <2 x float> %i.es, i64 1
  %i.fm = fpext float %i.fl to double
  %i.fn = fsub double %i.ey, %i.fc
  %i.fo = fmul double %i.fn, %i.fm
  %i.fp = fpext float %i.eu to double
  %i.fq = fadd double %i.fo, %i.fp
  br label %.sink.split.i

bb.h:                                             ; preds = %scalar.ph
  %i.fr = fneg double %i.ey
  %i.fs = fcmp ogt double %i.fc, %i.fr
  br i1 %i.fs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ft = fneg double %i.ez
  %i.fu = fcmp olt double %i.fc, %i.ft
  br i1 %i.fu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fv = extractelement <2 x float> %i.es, i64 1
  %i.fw = fpext float %i.fv to double
  %i.fx = fneg float %i.fb
  %i.fy = fpext float %i.fx to double
  %i.fz = fsub double %i.fy, %i.ez
  %i.ga = fmul double %i.fz, %i.fw
  %i.gb = fpext float %i.eu to double
  %i.gc = fadd double %i.ga, %i.gb
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.gd = extractelement <2 x float> %i.es, i64 1
  %i.ge = fpext float %i.gd to double
  %i.gf = fadd double %i.ey, %i.fc
  %i.gg = fmul double %i.gf, %i.ge
  %i.gh = fpext float %i.eu to double
  %i.gi = fsub double %i.gh, %i.gg
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %.sink235.i = phi double [ %i.gi, %bb.k ], [ %i.gc, %bb.j ], [ %i.fq, %bb.g ], [ %i.fk, %bb.f ]
  %i.gj = fptrunc double %.sink235.i to float
  store float %i.gj, ptr %i.ep, align 4, !tbaa !58, !noalias !310
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.i, %bb.e
  %i.gk = add nuw nsw i64 %.0161173.us.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gk, %i.p
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !298

._crit_edge.us.i:                                 ; preds = %bb.l, %middle.block
  %i.gl = add nuw nsw i64 %.0160174.us.i, 1       ; 2 uses
  %exitcond207.not.i = icmp eq i64 %i.gl, %i.q
  br i1 %exitcond207.not.i, label %.preheader172.i, label %.lr.ph.us.i, !llvm.loop !299

.preheader172.i:                                  ; preds = %._crit_edge.us.i, %bb.c
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !68, !alias.scope !309, !noalias !308 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !69, !alias.scope !309, !noalias !308 ; 5 uses
  %.not198.i = icmp eq i32 %i.a, 0
  br i1 %.not198.i, label %.split.us.i, label %.lr.ph.us179.preheader.i

.lr.ph.us179.preheader.i:                         ; preds = %.preheader172.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gn, i64 64) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.us179.preheader.i
  %.0156177.us.i = phi i64 [ 0, %.lr.ph.us179.preheader.i ], [ %i.gu, %bb.m ] ; 3 uses
  %i.gq = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.i, i64 noundef 0) #49, !noalias !309
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.0156177.us.i ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !58, !noalias !310
  %i.gt = fadd float %i.gq, %i.gs
  store float %i.gt, ptr %i.gr, align 4, !tbaa !58, !noalias !310
  %i.gu = add nuw nsw i64 %.0156177.us.i, 1       ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.gu, %i.p
  br i1 %exitcond209.not.i, label %._crit_edge.us180.i, label %bb.m, !llvm.loop !300

._crit_edge.us180.i:                              ; preds = %bb.m
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gv, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.us180.i
  %.0156177.us.1.i = phi i64 [ 0, %._crit_edge.us180.i ], [ %i.ha, %bb.n ] ; 3 uses
  %i.gw = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.1.i, i64 noundef 1) #49, !noalias !309
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.0156177.us.1.i ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !58, !noalias !310
  %i.gz = fadd float %i.gw, %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !58, !noalias !310
  %i.ha = add nuw nsw i64 %.0156177.us.1.i, 1     ; 2 uses
  %exitcond209.1.not.i = icmp eq i64 %i.ha, %i.p
  br i1 %exitcond209.1.not.i, label %._crit_edge.us180.1.i, label %bb.n, !llvm.loop !300

._crit_edge.us180.1.i:                            ; preds = %bb.n
  %i.hb = shl i64 %i.gp, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hc, i64 64) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.us180.1.i
  %.0156177.us.2.i = phi i64 [ 0, %._crit_edge.us180.1.i ], [ %i.hh, %bb.o ] ; 3 uses
  %i.hd = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.2.i, i64 noundef 2) #49, !noalias !309
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.0156177.us.2.i ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58, !noalias !310
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !58, !noalias !310
  %i.hh = add nuw nsw i64 %.0156177.us.2.i, 1     ; 2 uses
  %exitcond209.2.not.i = icmp eq i64 %i.hh, %i.p
  br i1 %exitcond209.2.not.i, label %._crit_edge.us180.2.i, label %bb.o, !llvm.loop !300

._crit_edge.us180.2.i:                            ; preds = %bb.o
  %i.hi = mul i64 %i.gp, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hj, i64 64) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.us180.2.i
  %.0156177.us.3.i = phi i64 [ 0, %._crit_edge.us180.2.i ], [ %i.ho, %bb.p ] ; 3 uses
  %i.hk = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.3.i, i64 noundef 3) #49, !noalias !309
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.0156177.us.3.i ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !58, !noalias !310
  %i.hn = fadd float %i.hk, %i.hm
  store float %i.hn, ptr %i.hl, align 4, !tbaa !58, !noalias !310
  %i.ho = add nuw nsw i64 %.0156177.us.3.i, 1     ; 2 uses
  %exitcond209.3.not.i = icmp eq i64 %i.ho, %i.p
  br i1 %exitcond209.3.not.i, label %.split.us.i, label %bb.p, !llvm.loop !300

.split.us.i:                                      ; preds = %bb.p, %.preheader172.i, %.preheader172.thread.i
  %.not198233.i = phi i1 [ true, %.preheader172.i ], [ true, %.preheader172.thread.i ], [ false, %bb.p ]
  %i.hp = phi i64 [ %i.gp, %.preheader172.i ], [ %i.bh, %.preheader172.thread.i ], [ %i.gp, %bb.p ]
  %i.hq = phi ptr [ %i.go, %.preheader172.i ], [ %i.bg, %.preheader172.thread.i ], [ %i.go, %bb.p ]
  %i.hr = phi ptr [ %i.gn, %.preheader172.i ], [ %i.bf, %.preheader172.thread.i ], [ %i.gn, %bb.p ]
  %i.hs = phi ptr [ %i.gm, %.preheader172.i ], [ %i.be, %.preheader172.thread.i ], [ %i.gm, %bb.p ]
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !69, !alias.scope !308, !noalias !309 ; 2 uses
  %i.hv = lshr i64 %i.hu, 2                       ; 9 uses
  %i.hw = add nsw i64 %i.q, -4                    ; 3 uses
  %i.hx = icmp ugt i64 %i.hw, 4
  br i1 %i.hx, label %.lr.ph188.i, label %.preheader.i

.lr.ph188.i:                                      ; preds = %.split.us.i
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !68, !alias.scope !308, !noalias !309
  %i.ia = mul nuw nsw i64 %i.hv, 3                ; 2 uses
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = sub nsw i64 0, %i.hv                    ; 7 uses
  %.not182.i = icmp ult i32 %i.a, 12
  br label %.preheader171.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.us.i
  %.1158.lcssa.i = phi i64 [ 4, %.split.us.i ], [ %i.hw, %._crit_edge.i ] ; 2 uses
  %i.id = icmp ult i64 %.1158.lcssa.i, %i.q
  br i1 %i.id, label %.lr.ph195.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit

.lr.ph195.i:                                      ; preds = %.preheader.i
  %i.ie = load ptr, ptr %i.hs, align 8, !tbaa !68, !alias.scope !309, !noalias !308
  %i.if = load i64, ptr %i.hq, align 8, !tbaa !69, !alias.scope !309, !noalias !308
  br i1 %.not198233.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i

.lr.ph192.us.i:                                   ; preds = %.lr.ph195.i, %._crit_edge193.us.i
  %.2159194.us.i = phi i64 [ %i.in, %._crit_edge193.us.i ], [ %.1158.lcssa.i, %.lr.ph195.i ] ; 3 uses
  %i.ig = mul i64 %.2159194.us.i, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ig ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ih, i64 64) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph192.us.i
  %.0190.us.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %i.im, %bb.q ] ; 3 uses
  %i.ii = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0190.us.i, i64 noundef %.2159194.us.i) #49, !noalias !309
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.0190.us.i ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !58, !noalias !310
  %i.il = fadd float %i.ii, %i.ik
  store float %i.il, ptr %i.ij, align 4, !tbaa !58, !noalias !310
  %i.im = add nuw nsw i64 %.0190.us.i, 1          ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.im, %i.p
  br i1 %exitcond215.not.i, label %._crit_edge193.us.i, label %bb.q, !llvm.loop !301

._crit_edge193.us.i:                              ; preds = %bb.q
  %i.in = add nuw nsw i64 %.2159194.us.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.in, %i.q
  br i1 %exitcond216.not.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i, !llvm.loop !302

.preheader171.i:                                  ; preds = %._crit_edge.i, %.lr.ph188.i
  %.1158186.i = phi i64 [ 4, %.lr.ph188.i ], [ %i.rd, %._crit_edge.i ] ; 8 uses
  %i.io = mul i64 %.1158186.i, %i.hu
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ip, i64 64) ]
  %i.iq = mul i64 %.1158186.i, %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.iq ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ir, i64 64) ]
  %i.is = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 0, i64 noundef %.1158186.i) #49, !noalias !309
  %i.it = load float, ptr %i.ir, align 64, !tbaa !58, !noalias !310
  %i.iu = fadd float %i.is, %i.it
  store float %i.iu, ptr %i.ir, align 64, !tbaa !58, !noalias !310
  %i.iv = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 1, i64 noundef %.1158186.i) #49, !noalias !309
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !58, !noalias !310
  %i.iy = fadd float %i.iv, %i.ix
  store float %i.iy, ptr %i.iw, align 4, !tbaa !58, !noalias !310
  %i.iz = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 2, i64 noundef %.1158186.i) #49, !noalias !309
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !58, !noalias !310
  %i.jc = fadd float %i.iz, %i.jb
  store float %i.jc, ptr %i.ja, align 8, !tbaa !58, !noalias !310
  %i.jd = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 3, i64 noundef %.1158186.i) #49, !noalias !309
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !58, !noalias !310
  %i.jg = fadd float %i.jd, %i.jf
  store float %i.jg, ptr %i.je, align 4, !tbaa !58, !noalias !310
  br i1 %.not182.i, label %.preheader170.i, label %.lr.ph.i

.preheader170.i:                                  ; preds = %.lr.ph.i, %.preheader171.i
  %.1.lcssa.i = phi i64 [ 4, %.preheader171.i ], [ %i.ji, %.lr.ph.i ] ; 2 uses
  %i.jh = icmp ult i64 %.1.lcssa.i, %i.p
  br i1 %i.jh, label %.lr.ph185.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader171.i, %.lr.ph.i
  %.1183.i = phi i64 [ %i.ji, %.lr.ph.i ], [ 4, %.preheader171.i ] ; 4 uses
  %i.ji = add nuw nsw i64 %.1183.i, 4             ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.1183.i ; 2 uses
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !tbaa !79, !noalias !310
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1183.i ; 9 uses
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !79, !alias.scope !315, !noalias !310 ; 16 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -16 ; 3 uses
  %i.jo = load <4 x float>, ptr %i.jn, align 16, !tbaa !79, !alias.scope !315, !noalias !310
  %i.jp = getelementptr inbounds i8, ptr %i.jl, i64 -8 ; 3 uses
  %i.jq = load <4 x float>, ptr %i.jp, align 8, !tbaa !79, !alias.scope !315, !noalias !310
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.js = load <4 x float>, ptr %i.jr, align 8, !tbaa !79, !alias.scope !315, !noalias !310
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 3 uses
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !tbaa !79, !alias.scope !315, !noalias !310
  %i.jv = fadd <4 x float> %i.js, %i.ju
  %i.jw = fadd <4 x float> %i.jo, %i.jq
  %i.jx = fadd <4 x float> %i.jm, %i.jv
  %i.jy = fadd <4 x float> %i.jw, %i.jx           ; 2 uses
  %i.jz = fmul <4 x float> %i.jy, %i.jy
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ib ; 5 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ic ; 5 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %7 = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ic
  %8 = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ic ; 9 uses
  %i.kd = load <4 x float>, ptr %8, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.hv
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.hv ; 9 uses
  %i.ke = load <4 x float>, ptr %10, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ia ; 5 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.hv ; 5 uses
  %i.kh = load <4 x float>, ptr %i.kg, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ki = fadd <4 x float> %i.ke, %i.kh
  %i.kj = fadd <4 x float> %i.kc, %i.kd
  %i.kk = fadd <4 x float> %i.jm, %i.ki
  %i.kl = fadd <4 x float> %i.kj, %i.kk           ; 2 uses
  %i.km = fmul <4 x float> %i.kl, %i.kl
  %i.kn = fadd <4 x float> %i.jz, %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.ka, i64 -12
  %i.kp = load <4 x float>, ptr %i.ko, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.kq = getelementptr inbounds i8, ptr %8, i64 -8
  %i.kr = load <4 x float>, ptr %i.kq, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kt = load <4 x float>, ptr %i.ks, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kv = load <4 x float>, ptr %i.ku, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.kw = fadd <4 x float> %i.kt, %i.kv
  %i.kx = fadd <4 x float> %i.kp, %i.kr
  %i.ky = fadd <4 x float> %i.jm, %i.kw
  %i.kz = fadd <4 x float> %i.kx, %i.ky           ; 2 uses
  %i.la = fmul <4 x float> %i.kz, %i.kz
  %i.lb = fadd <4 x float> %i.kn, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.ld = load <4 x float>, ptr %i.lc, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lf = load <4 x float>, ptr %i.le, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.lg = getelementptr inbounds i8, ptr %10, i64 -8
  %i.lh = load <4 x float>, ptr %i.lg, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.li = getelementptr inbounds i8, ptr %i.kf, i64 -12
  %i.lj = load <4 x float>, ptr %i.li, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.lk = fadd <4 x float> %i.lh, %i.lj
  %i.ll = fadd <4 x float> %i.ld, %i.lf
  %i.lm = fadd <4 x float> %i.jm, %i.lk
  %i.ln = fadd <4 x float> %i.ll, %i.lm           ; 2 uses
  %i.lo = fmul <4 x float> %i.ln, %i.ln
  %i.lp = fadd <4 x float> %i.lb, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.lr = load <4 x float>, ptr %i.lq, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ls = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lt = load <4 x float>, ptr %i.ls, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %10, i64 -4
  %i.lv = load <4 x float>, ptr %i.lu, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.kg, i64 -4
  %i.lx = load <4 x float>, ptr %i.lw, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ly = fadd <4 x float> %i.lv, %i.lx
  %i.lz = fadd <4 x float> %i.lr, %i.lt
  %i.ma = fadd <4 x float> %i.jm, %i.ly
  %i.mb = fadd <4 x float> %i.lz, %i.ma           ; 2 uses
  %i.mc = fmul <4 x float> %i.mb, %i.mb
  %i.md = fadd <4 x float> %i.lp, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %i.mf = load <4 x float>, ptr %i.me, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.mg = getelementptr inbounds i8, ptr %8, i64 -4
  %i.mh = load <4 x float>, ptr %i.mg, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.mj = load <4 x float>, ptr %i.mi, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ml = load <4 x float>, ptr %i.mk, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.mm = fadd <4 x float> %i.mj, %i.ml
  %i.mn = fadd <4 x float> %i.mf, %i.mh
  %i.mo = fadd <4 x float> %i.jm, %i.mm
  %i.mp = fadd <4 x float> %i.mn, %i.mo           ; 2 uses
  %i.mq = fmul <4 x float> %i.mp, %i.mp
  %i.mr = fadd <4 x float> %i.md, %i.mq
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.ic
  %i.mt = load <4 x float>, ptr %i.ms, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.ic
  %i.mv = load <4 x float>, ptr %i.mu, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.hv
  %i.mx = load <4 x float>, ptr %i.mw, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.hv
  %i.mz = load <4 x float>, ptr %i.my, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.na = fadd <4 x float> %i.mx, %i.mz
  %i.nb = fadd <4 x float> %i.mt, %i.mv
  %i.nc = fadd <4 x float> %i.jm, %i.na
  %i.nd = fadd <4 x float> %i.nb, %i.nc           ; 2 uses
  %i.ne = fmul <4 x float> %i.nd, %i.nd
  %i.nf = fadd <4 x float> %i.mr, %i.ne
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.hv
  %i.nh = load <4 x float>, ptr %i.ng, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.hv
  %i.nj = load <4 x float>, ptr %i.ni, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.ic
  %i.nl = load <4 x float>, ptr %i.nk, align 4, !tbaa !79, !alias.scope !315, !noalias !310 ; 3 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ic
  %i.nn = load <4 x float>, ptr %i.nm, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.no = fadd <4 x float> %i.nl, %i.nn
  %i.np = fadd <4 x float> %i.nh, %i.nj
  %i.nq = fadd <4 x float> %i.jm, %i.no
  %i.nr = fadd <4 x float> %i.np, %i.nq           ; 2 uses
  %i.ns = fmul <4 x float> %i.nr, %i.nr
  %i.nt = fadd <4 x float> %i.nf, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.ka, i64 -8
  %i.nv = load <4 x float>, ptr %i.nu, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.nx = load <4 x float>, ptr %i.nw, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.ny = fadd <4 x float> %i.mj, %i.nx
  %i.nz = fadd <4 x float> %i.mh, %i.nv
  %i.oa = fadd <4 x float> %i.jm, %i.ny
  %i.ob = fadd <4 x float> %i.nz, %i.oa           ; 2 uses
  %i.oc = fmul <4 x float> %i.ob, %i.ob
  %i.od = fadd <4 x float> %i.nt, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.of = load <4 x float>, ptr %i.oe, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.og = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.oh = load <4 x float>, ptr %i.og, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.oi = fadd <4 x float> %i.lv, %i.oh
  %i.oj = fadd <4 x float> %i.lt, %i.of
  %i.ok = fadd <4 x float> %i.jm, %i.oi
  %i.ol = fadd <4 x float> %i.oj, %i.ok           ; 2 uses
  %i.om = fmul <4 x float> %i.ol, %i.ol
  %i.on = fadd <4 x float> %i.od, %i.om
  %i.oo = getelementptr inbounds i8, ptr %8, i64 -12
  %i.op = load <4 x float>, ptr %i.oo, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.or = load <4 x float>, ptr %i.oq, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.os = fadd <4 x float> %i.mx, %i.or
  %i.ot = fadd <4 x float> %i.mv, %i.op
  %i.ou = fadd <4 x float> %i.jm, %i.os
  %i.ov = fadd <4 x float> %i.ot, %i.ou           ; 2 uses
  %i.ow = fmul <4 x float> %i.ov, %i.ov
  %i.ox = fadd <4 x float> %i.on, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.oz = load <4 x float>, ptr %i.oy, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pa = getelementptr inbounds i8, ptr %10, i64 -12
  %i.pb = load <4 x float>, ptr %i.pa, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pc = fadd <4 x float> %i.nj, %i.pb
  %i.pd = fadd <4 x float> %i.nl, %i.oz
  %i.pe = fadd <4 x float> %i.jm, %i.pc
  %i.pf = fadd <4 x float> %i.pd, %i.pe           ; 2 uses
  %i.pg = fmul <4 x float> %i.pf, %i.pf
  %i.ph = fadd <4 x float> %i.ox, %i.pg
  %i.pi = getelementptr inbounds i8, ptr %10, i64 -16
  %i.pj = load <4 x float>, ptr %i.pi, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.pl = load <4 x float>, ptr %i.pk, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pm = fadd <4 x float> %i.nl, %i.pl
  %i.pn = fadd <4 x float> %i.nj, %i.pj
  %i.po = fadd <4 x float> %i.jm, %i.pm
  %i.pp = fadd <4 x float> %i.pn, %i.po           ; 2 uses
  %i.pq = fmul <4 x float> %i.pp, %i.pp
  %i.pr = fadd <4 x float> %i.ph, %i.pq
  %i.ps = getelementptr inbounds i8, ptr %8, i64 -16
  %i.pt = load <4 x float>, ptr %i.ps, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pv = load <4 x float>, ptr %i.pu, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.pw = fadd <4 x float> %i.mx, %i.pv
  %i.px = fadd <4 x float> %i.mv, %i.pt
  %i.py = fadd <4 x float> %i.jm, %i.pw
  %i.pz = fadd <4 x float> %i.px, %i.py           ; 2 uses
  %i.qa = fmul <4 x float> %i.pz, %i.pz
  %i.qb = fadd <4 x float> %i.pr, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.kb, i64 -8
  %i.qd = load <4 x float>, ptr %i.qc, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.qe = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.qf = load <4 x float>, ptr %i.qe, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.qg = fadd <4 x float> %i.mj, %i.qf
  %i.qh = fadd <4 x float> %i.mh, %i.qd
  %i.qi = fadd <4 x float> %i.jm, %i.qg
  %i.qj = fadd <4 x float> %i.qh, %i.qi           ; 2 uses
  %i.qk = fmul <4 x float> %i.qj, %i.qj
  %i.ql = fadd <4 x float> %i.qb, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.qn = load <4 x float>, ptr %i.qm, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.qo = getelementptr inbounds i8, ptr %i.kg, i64 -8
  %i.qp = load <4 x float>, ptr %i.qo, align 4, !tbaa !79, !alias.scope !315, !noalias !310
  %i.qq = fadd <4 x float> %i.lv, %i.qp
  %i.qr = fadd <4 x float> %i.lt, %i.qn
  %i.qs = fadd <4 x float> %i.jm, %i.qq
  %i.qt = fadd <4 x float> %i.qr, %i.qs           ; 2 uses
  %i.qu = fmul <4 x float> %i.qt, %i.qt
  %i.qv = fadd <4 x float> %i.ql, %i.qu
  %i.qw = fadd <4 x float> %i.jk, %i.qv
  store <4 x float> %i.qw, ptr %i.jj, align 16, !tbaa !79, !noalias !310
  %i.qx = add nuw nsw i64 %.1183.i, 12
  %.not.i = icmp samesign ugt i64 %i.qx, %i.p
  br i1 %.not.i, label %.preheader170.i, label %.lr.ph.i, !llvm.loop !305

.lr.ph185.i:                                      ; preds = %.preheader170.i, %.lr.ph185.i
  %.2184.i = phi i64 [ %i.rc, %.lr.ph185.i ], [ %.1.lcssa.i, %.preheader170.i ] ; 3 uses
  %i.qy = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.2184.i, i64 noundef %.1158186.i) #49, !noalias !309
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.2184.i ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !58, !noalias !310
  %i.rb = fadd float %i.qy, %i.ra
  store float %i.rb, ptr %i.qz, align 4, !tbaa !58, !noalias !310
  %i.rc = add nuw nsw i64 %.2184.i, 1             ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.rc, %i.p
  br i1 %exitcond213.not.i, label %._crit_edge.i, label %.lr.ph185.i, !llvm.loop !306

._crit_edge.i:                                    ; preds = %.lr.ph185.i, %.preheader170.i
  %i.rd = add nuw i64 %.1158186.i, 1              ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.rd, %i.hw
  br i1 %exitcond214.not.i, label %.preheader.i, label %.preheader171.i, !llvm.loop !307

_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit: ; preds = %._crit_edge193.us.i, %.preheader.i, %.lr.ph195.i, %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph195.i ], [ 0, %.preheader.i ], [ 0, %._crit_edge193.us.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69   ; 3 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 4 uses
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %._crit_edge38, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph37
  %i.z = add nsw i64 %i.c, -1                     ; 5 uses
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = shl nuw nsw i64 %i.y, 2                 ; 5 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ad = mul i64 %i.s, %i.z
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad
  %scevgep43 = getelementptr i8, ptr %i.ae, i64 %i.ab
  %i.af = mul i64 %i.o, %i.z
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.af
  %scevgep44 = getelementptr i8, ptr %i.ag, i64 %i.ab
  %i.ah = mul i64 %i.k, %i.z
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah
  %scevgep45 = getelementptr i8, ptr %i.ai, i64 %i.ab
  %i.aj = mul i64 %i.g, %i.z
  %i.ak = getelementptr i8, ptr %i.e, i64 %i.aj
  %scevgep46 = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.al = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %i.am = insertelement <4 x i64> %i.al, i64 %i.o, i64 1
  %i.an = insertelement <4 x i64> %i.am, i64 %i.k, i64 2
  %i.ao = insertelement <4 x i64> %i.an, i64 %i.g, i64 3
  %i.ap = insertelement <4 x i64> poison, i64 %i.w, i64 0
  %i.aq = shufflevector <4 x i64> %i.ap, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ar = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep43, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep44, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep45, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep46, i64 3
  %i.ax = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.m, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.i, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %i.e, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bc = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.bd = icmp ult <4 x ptr> %i.as, %i.aw
  %i.be = icmp ult <4 x ptr> %i.ba, %i.bc
  %i.bf = or <4 x i64> %i.ao, %i.aq
  %i.bg = and <4 x i1> %i.bd, %i.be
  %i.bh = icmp slt <4 x i64> %i.bf, zeroinitializer
  %rdx.op = or <4 x i1> %i.bh, %i.bg
  %i.bi = bitcast <4 x i1> %rdx.op to i4
  %.not68 = icmp eq i4 %i.bi, 0
  %n.vec = and i64 %i.y, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.035.us = phi i64 [ %i.cw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 6 uses
  %i.bj = mul i64 %i.g, %.035.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bj ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = mul i64 %i.k, %.035.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bl ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %i.bn = mul i64 %i.o, %.035.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bo, i64 64) ]
  %i.bp = mul i64 %i.s, %.035.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bp ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bq, i64 64) ]
  %i.br = mul i64 %i.w, %.035.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bs, i64 64) ]
  %.not68.not = xor i1 %.not68, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not68.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index
  %wide.load = load <4 x float>, ptr %i.bt, align 16, !tbaa !58, !alias.scope !324
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index
  %wide.load65 = load <4 x float>, ptr %i.bu, align 16, !tbaa !58, !alias.scope !325
  %i.bv = fadd <4 x float> %wide.load, %wide.load65
  %i.bw = fmul <4 x float> %i.bv, splat (float 2.500000e+00) ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index
  %wide.load66 = load <4 x float>, ptr %i.bx, align 16, !tbaa !58, !alias.scope !326
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index
  %wide.load67 = load <4 x float>, ptr %i.by, align 16, !tbaa !58, !alias.scope !327
  %i.bz = fmul <4 x float> %wide.load67, splat (float 4.000000e-01)
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load66, <4 x float> splat (float 4.000000e-01), <4 x float> %i.bz) ; 2 uses
  %i.cb = fmul <4 x float> %i.ca, %i.ca
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bw, <4 x float> %i.cb)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index
  %i.ce = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cc)
  store <4 x float> %i.ce, ptr %i.cd, align 16, !tbaa !58, !alias.scope !328, !noalias !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.03334.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03334.us = phi i64 [ %i.cv, %scalar.ph ], [ %.03334.us.ph, %scalar.ph.preheader ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.03334.us
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03334.us
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !58
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = fmul float %i.ck, 2.500000e+00          ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.03334.us
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !58
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.03334.us
  %i.cp = load float, ptr %i.co, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX214MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_:bb.a
  %predphi39.v = select <8 x i1> %i.cp, <8 x double> %i.cr, <8 x double> %predphi.p
  %i.dk = fneg <8 x double> %i.cm
  %i.dl = fmul <8 x double> %i.cn, %i.dk
  %predphi40.p = select <8 x i1> %i.cl, <8 x double> %i.dl, <8 x double> %predphi39.v
  %predphi40 = fadd <8 x double> %predphi40.p, %i.co
  %i.dm = fptrunc <8 x double> %predphi40 to <8 x float>
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.dm, ptr align 32 %i.by, <8 x i1> %i.dh), !tbaa !58, !alias.scope !598, !noalias !599
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.0161173.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %.0161173.us.i = phi i64 [ %i.ft, %bb.l ], [ %.0161173.us.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0161173.us.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !58, !noalias !595 ; 2 uses
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0161173.us.i ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !58, !noalias !595 ; 2 uses
  %i.dt = tail call noundef float @llvm.fabs.f32(float %i.ds)
  %i.du = fadd float %i.dq, %i.dt
  %i.dv = fmul float %i.du, 5.000000e-01
  %i.dw = fsub float %i.dp, %i.ds
  %i.dx = fadd float %i.dv, %i.ap
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0161173.us.i ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fdiv <2 x float> %i.ac, %i.ea           ; 5 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %i.ed = fmul float %i.dw, %i.ec                 ; 5 uses
  store float %i.ed, ptr %i.dy, align 4, !tbaa !58, !noalias !595
  %i.ee = load float, ptr %i.do, align 4, !tbaa !58, !noalias !595 ; 2 uses
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.eg = fpext float %i.ef to double             ; 2 uses
  %i.eh = fmul double %i.eg, 5.500000e-01         ; 4 uses
  %i.ei = fmul double %i.eg, 1.050000e+00         ; 4 uses
  %i.ej = fcmp olt float %i.ee, 0.000000e+00
  %i.ek = load float, ptr %i.dr, align 4, !tbaa !58, !noalias !595 ; 2 uses
  %i.el = fpext float %i.ek to double             ; 7 uses
  br i1 %i.ej, label %bb.h, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %i.em = fcmp ogt double %i.eh, %i.el
  br i1 %i.em, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.en = fcmp olt double %i.ei, %i.el
  br i1 %i.en, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.eo = extractelement <2 x float> %i.eb, i64 1
  %i.ep = fpext float %i.eo to double
  %i.eq = fsub double %i.el, %i.ei
  %i.er = fmul double %i.eq, %i.ep
  %i.es = fpext float %i.ed to double
  %i.et = fsub double %i.es, %i.er
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.eu = extractelement <2 x float> %i.eb, i64 1
  %i.ev = fpext float %i.eu to double
  %i.ew = fsub double %i.eh, %i.el
  %i.ex = fmul double %i.ew, %i.ev
  %i.ey = fpext float %i.ed to double
  %i.ez = fadd double %i.ex, %i.ey
  br label %.sink.split.i

bb.h:                                             ; preds = %scalar.ph
  %i.fa = fneg double %i.eh
  %i.fb = fcmp ogt double %i.el, %i.fa
  br i1 %i.fb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fc = fneg double %i.ei
  %i.fd = fcmp olt double %i.el, %i.fc
  br i1 %i.fd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fe = extractelement <2 x float> %i.eb, i64 1
  %i.ff = fpext float %i.fe to double
  %i.fg = fneg float %i.ek
  %i.fh = fpext float %i.fg to double
  %i.fi = fsub double %i.fh, %i.ei
  %i.fj = fmul double %i.fi, %i.ff
  %i.fk = fpext float %i.ed to double
  %i.fl = fadd double %i.fj, %i.fk
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.fm = extractelement <2 x float> %i.eb, i64 1
  %i.fn = fpext float %i.fm to double
  %i.fo = fadd double %i.eh, %i.el
  %i.fp = fmul double %i.fo, %i.fn
  %i.fq = fpext float %i.ed to double
  %i.fr = fsub double %i.fq, %i.fp
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %.sink235.i = phi double [ %i.fr, %bb.k ], [ %i.fl, %bb.j ], [ %i.ez, %bb.g ], [ %i.et, %bb.f ]
  %i.fs = fptrunc double %.sink235.i to float
  store float %i.fs, ptr %i.dy, align 4, !tbaa !58, !noalias !595
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.i, %bb.e
  %i.ft = add nuw nsw i64 %.0161173.us.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ft, %i.p
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !583

._crit_edge.us.i:                                 ; preds = %bb.l, %middle.block
  %i.fu = add nuw nsw i64 %.0160174.us.i, 1       ; 2 uses
  %exitcond207.not.i = icmp eq i64 %i.fu, %i.q
  br i1 %exitcond207.not.i, label %.preheader172.i, label %.lr.ph.us.i, !llvm.loop !584

.preheader172.i:                                  ; preds = %._crit_edge.us.i, %bb.c
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !68, !alias.scope !594, !noalias !593 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !69, !alias.scope !594, !noalias !593 ; 5 uses
  %.not198.i = icmp eq i32 %i.a, 0
  br i1 %.not198.i, label %.split.us.i, label %.lr.ph.us179.preheader.i

.lr.ph.us179.preheader.i:                         ; preds = %.preheader172.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fw, i64 64) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.us179.preheader.i
  %.0156177.us.i = phi i64 [ 0, %.lr.ph.us179.preheader.i ], [ %i.gd, %bb.m ] ; 3 uses
  %i.fz = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.i, i64 noundef 0) #49, !noalias !594
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.0156177.us.i ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !58, !noalias !595
  %i.gc = fadd float %i.fz, %i.gb
  store float %i.gc, ptr %i.ga, align 4, !tbaa !58, !noalias !595
  %i.gd = add nuw nsw i64 %.0156177.us.i, 1       ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.gd, %i.p
  br i1 %exitcond209.not.i, label %._crit_edge.us180.i, label %bb.m, !llvm.loop !585

._crit_edge.us180.i:                              ; preds = %bb.m
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ge, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.us180.i
  %.0156177.us.1.i = phi i64 [ 0, %._crit_edge.us180.i ], [ %i.gj, %bb.n ] ; 3 uses
  %i.gf = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.1.i, i64 noundef 1) #49, !noalias !594
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.0156177.us.1.i ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !58, !noalias !595
  %i.gi = fadd float %i.gf, %i.gh
  store float %i.gi, ptr %i.gg, align 4, !tbaa !58, !noalias !595
  %i.gj = add nuw nsw i64 %.0156177.us.1.i, 1     ; 2 uses
  %exitcond209.1.not.i = icmp eq i64 %i.gj, %i.p
  br i1 %exitcond209.1.not.i, label %._crit_edge.us180.1.i, label %bb.n, !llvm.loop !585

._crit_edge.us180.1.i:                            ; preds = %bb.n
  %i.gk = shl i64 %i.fy, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gl, i64 64) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.us180.1.i
  %.0156177.us.2.i = phi i64 [ 0, %._crit_edge.us180.1.i ], [ %i.gq, %bb.o ] ; 3 uses
  %i.gm = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.2.i, i64 noundef 2) #49, !noalias !594
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.0156177.us.2.i ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !58, !noalias !595
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !tbaa !58, !noalias !595
  %i.gq = add nuw nsw i64 %.0156177.us.2.i, 1     ; 2 uses
  %exitcond209.2.not.i = icmp eq i64 %i.gq, %i.p
  br i1 %exitcond209.2.not.i, label %._crit_edge.us180.2.i, label %bb.o, !llvm.loop !585

._crit_edge.us180.2.i:                            ; preds = %bb.o
  %i.gr = mul i64 %i.fy, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gs, i64 64) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.us180.2.i
  %.0156177.us.3.i = phi i64 [ 0, %._crit_edge.us180.2.i ], [ %i.gx, %bb.p ] ; 3 uses
  %i.gt = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.3.i, i64 noundef 3) #49, !noalias !594
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.0156177.us.3.i ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !58, !noalias !595
  %i.gw = fadd float %i.gt, %i.gv
  store float %i.gw, ptr %i.gu, align 4, !tbaa !58, !noalias !595
  %i.gx = add nuw nsw i64 %.0156177.us.3.i, 1     ; 2 uses
  %exitcond209.3.not.i = icmp eq i64 %i.gx, %i.p
  br i1 %exitcond209.3.not.i, label %.split.us.i, label %bb.p, !llvm.loop !585

.split.us.i:                                      ; preds = %bb.p, %.preheader172.i, %.preheader172.thread.i
  %.not198233.i = phi i1 [ true, %.preheader172.i ], [ true, %.preheader172.thread.i ], [ false, %bb.p ]
  %i.gy = phi i64 [ %i.fy, %.preheader172.i ], [ %i.bh, %.preheader172.thread.i ], [ %i.fy, %bb.p ]
  %i.gz = phi ptr [ %i.fx, %.preheader172.i ], [ %i.bg, %.preheader172.thread.i ], [ %i.fx, %bb.p ]
  %i.ha = phi ptr [ %i.fw, %.preheader172.i ], [ %i.bf, %.preheader172.thread.i ], [ %i.fw, %bb.p ]
  %i.hb = phi ptr [ %i.fv, %.preheader172.i ], [ %i.be, %.preheader172.thread.i ], [ %i.fv, %bb.p ]
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !69, !alias.scope !593, !noalias !594 ; 2 uses
  %i.he = lshr i64 %i.hd, 2                       ; 9 uses
  %i.hf = add nsw i64 %i.q, -4                    ; 3 uses
  %i.hg = icmp ugt i64 %i.hf, 4
  br i1 %i.hg, label %.lr.ph188.i, label %.preheader.i

.lr.ph188.i:                                      ; preds = %.split.us.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !68, !alias.scope !593, !noalias !594
  %i.hj = mul nuw nsw i64 %i.he, 3                ; 2 uses
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = sub nsw i64 0, %i.he                    ; 7 uses
  %.not182.i = icmp ult i32 %i.a, 20
  br label %.preheader171.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.us.i
  %.1158.lcssa.i = phi i64 [ 4, %.split.us.i ], [ %i.hf, %._crit_edge.i ] ; 2 uses
  %i.hm = icmp ult i64 %.1158.lcssa.i, %i.q
  br i1 %i.hm, label %.lr.ph195.i, label %_ZN3jxl6N_AVX2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit

.lr.ph195.i:                                      ; preds = %.preheader.i
  %i.hn = load ptr, ptr %i.hb, align 8, !tbaa !68, !alias.scope !594, !noalias !593
  %i.ho = load i64, ptr %i.gz, align 8, !tbaa !69, !alias.scope !594, !noalias !593
  br i1 %.not198233.i, label %_ZN3jxl6N_AVX2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i

.lr.ph192.us.i:                                   ; preds = %.lr.ph195.i, %._crit_edge193.us.i
  %.2159194.us.i = phi i64 [ %i.hw, %._crit_edge193.us.i ], [ %.1158.lcssa.i, %.lr.ph195.i ] ; 3 uses
  %i.hp = mul i64 %.2159194.us.i, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hq, i64 64) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph192.us.i
  %.0190.us.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %i.hv, %bb.q ] ; 3 uses
  %i.hr = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0190.us.i, i64 noundef %.2159194.us.i) #49, !noalias !594
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.0190.us.i ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !58, !noalias !595
  %i.hu = fadd float %i.hr, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !58, !noalias !595
  %i.hv = add nuw nsw i64 %.0190.us.i, 1          ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.hv, %i.p
  br i1 %exitcond215.not.i, label %._crit_edge193.us.i, label %bb.q, !llvm.loop !586

._crit_edge193.us.i:                              ; preds = %bb.q
  %i.hw = add nuw nsw i64 %.2159194.us.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.hw, %i.q
  br i1 %exitcond216.not.i, label %_ZN3jxl6N_AVX2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i, !llvm.loop !587

.preheader171.i:                                  ; preds = %._crit_edge.i, %.lr.ph188.i
  %.1158186.i = phi i64 [ 4, %.lr.ph188.i ], [ %i.qn, %._crit_edge.i ] ; 12 uses
  %i.hx = mul i64 %.1158186.i, %i.hd
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hy, i64 64) ]
  %i.hz = mul i64 %.1158186.i, %i.gy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hz ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ia, i64 64) ]
  %i.ib = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 0, i64 noundef %.1158186.i) #49, !noalias !594
  %i.ic = load float, ptr %i.ia, align 64, !tbaa !58, !noalias !595
  %i.id = fadd float %i.ib, %i.ic
  store float %i.id, ptr %i.ia, align 64, !tbaa !58, !noalias !595
  %i.ie = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 1, i64 noundef %.1158186.i) #49, !noalias !594
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !58, !noalias !595
  %i.ih = fadd float %i.ie, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !58, !noalias !595
  %i.ii = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 2, i64 noundef %.1158186.i) #49, !noalias !594
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !58, !noalias !595
  %i.il = fadd float %i.ii, %i.ik
  store float %i.il, ptr %i.ij, align 8, !tbaa !58, !noalias !595
  %i.im = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 3, i64 noundef %.1158186.i) #49, !noalias !594
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !58, !noalias !595
  %i.ip = fadd float %i.im, %i.io
  store float %i.ip, ptr %i.in, align 4, !tbaa !58, !noalias !595
  %i.iq = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 4, i64 noundef %.1158186.i) #49, !noalias !594
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.is = load float, ptr %i.ir, align 16, !tbaa !58, !noalias !595
  %i.it = fadd float %i.iq, %i.is
  store float %i.it, ptr %i.ir, align 16, !tbaa !58, !noalias !595
  %i.iu = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 5, i64 noundef %.1158186.i) #49, !noalias !594
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 20 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !58, !noalias !595
  %i.ix = fadd float %i.iu, %i.iw
  store float %i.ix, ptr %i.iv, align 4, !tbaa !58, !noalias !595
  %i.iy = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 6, i64 noundef %.1158186.i) #49, !noalias !594
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 24 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !58, !noalias !595
  %i.jb = fadd float %i.iy, %i.ja
  store float %i.jb, ptr %i.iz, align 8, !tbaa !58, !noalias !595
  %i.jc = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 7, i64 noundef %.1158186.i) #49, !noalias !594
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ia, i64 28 ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !58, !noalias !595
  %i.jf = fadd float %i.jc, %i.je
  store float %i.jf, ptr %i.jd, align 4, !tbaa !58, !noalias !595
  br i1 %.not182.i, label %.preheader170.i, label %.lr.ph.i

.preheader170.i:                                  ; preds = %.lr.ph.i, %.preheader171.i
  %.1.lcssa.i = phi i64 [ 8, %.preheader171.i ], [ %i.jh, %.lr.ph.i ] ; 2 uses
  %i.jg = icmp ult i64 %.1.lcssa.i, %i.p
  br i1 %i.jg, label %.lr.ph185.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader171.i, %.lr.ph.i
  %.1183.i = phi i64 [ %i.jh, %.lr.ph.i ], [ 8, %.preheader171.i ] ; 4 uses
  %i.jh = add nuw nsw i64 %.1183.i, 8             ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.1183.i ; 2 uses
  %i.jj = load <8 x float>, ptr %i.ji, align 32, !tbaa !79, !noalias !595
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.1183.i ; 9 uses
  %i.jl = load <8 x float>, ptr %i.jk, align 32, !tbaa !79, !alias.scope !600, !noalias !595 ; 16 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 -16 ; 3 uses
  %i.jn = load <8 x float>, ptr %i.jm, align 16, !tbaa !79, !alias.scope !600, !noalias !595
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 -8 ; 3 uses
  %i.jp = load <8 x float>, ptr %i.jo, align 8, !tbaa !79, !alias.scope !600, !noalias !595
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  %i.jr = load <8 x float>, ptr %i.jq, align 8, !tbaa !79, !alias.scope !600, !noalias !595
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 3 uses
  %i.jt = load <8 x float>, ptr %i.js, align 16, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ju = fadd <8 x float> %i.jr, %i.jt
  %i.jv = fadd <8 x float> %i.jn, %i.jp
  %i.jw = fadd <8 x float> %i.jl, %i.ju
  %i.jx = fadd <8 x float> %i.jv, %i.jw           ; 2 uses
  %i.jy = fmul <8 x float> %i.jx, %i.jx
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.hk ; 5 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.hl ; 5 uses
  %i.kb = load <8 x float>, ptr %i.ka, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %7 = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.hl
  %8 = getelementptr inbounds [4 x i8], ptr %7, i64 %i.hl ; 9 uses
  %i.kc = load <8 x float>, ptr %8, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.he
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.he ; 9 uses
  %i.kd = load <8 x float>, ptr %10, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.hj ; 5 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.he ; 5 uses
  %i.kg = load <8 x float>, ptr %i.kf, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.kh = fadd <8 x float> %i.kd, %i.kg
  %i.ki = fadd <8 x float> %i.kb, %i.kc
  %i.kj = fadd <8 x float> %i.jl, %i.kh
  %i.kk = fadd <8 x float> %i.ki, %i.kj           ; 2 uses
  %i.kl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.kk, <8 x float> %i.kk, <8 x float> %i.jy)
  %i.km = getelementptr inbounds i8, ptr %i.jz, i64 -12
  %i.kn = load <8 x float>, ptr %i.km, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ko = getelementptr inbounds i8, ptr %8, i64 -8
  %i.kp = load <8 x float>, ptr %i.ko, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kr = load <8 x float>, ptr %i.kq, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kt = load <8 x float>, ptr %i.ks, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ku = fadd <8 x float> %i.kr, %i.kt
  %i.kv = fadd <8 x float> %i.kn, %i.kp
  %i.kw = fadd <8 x float> %i.jl, %i.ku
  %i.kx = fadd <8 x float> %i.kv, %i.kw           ; 2 uses
  %i.ky = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.kx, <8 x float> %i.kx, <8 x float> %i.kl)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.la = load <8 x float>, ptr %i.kz, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lc = load <8 x float>, ptr %i.lb, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ld = getelementptr inbounds i8, ptr %10, i64 -8
  %i.le = load <8 x float>, ptr %i.ld, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.lf = getelementptr inbounds i8, ptr %i.ke, i64 -12
  %i.lg = load <8 x float>, ptr %i.lf, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.lh = fadd <8 x float> %i.le, %i.lg
  %i.li = fadd <8 x float> %i.la, %i.lc
  %i.lj = fadd <8 x float> %i.jl, %i.lh
  %i.lk = fadd <8 x float> %i.li, %i.lj           ; 2 uses
  %i.ll = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lk, <8 x float> %i.lk, <8 x float> %i.ky)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.ln = load <8 x float>, ptr %i.lm, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.lo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lp = load <8 x float>, ptr %i.lo, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.lq = getelementptr inbounds i8, ptr %10, i64 -4
  %i.lr = load <8 x float>, ptr %i.lq, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.ls = getelementptr inbounds i8, ptr %i.kf, i64 -4
  %i.lt = load <8 x float>, ptr %i.ls, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.lu = fadd <8 x float> %i.lr, %i.lt
  %i.lv = fadd <8 x float> %i.ln, %i.lp
  %i.lw = fadd <8 x float> %i.jl, %i.lu
  %i.lx = fadd <8 x float> %i.lv, %i.lw           ; 2 uses
  %i.ly = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lx, <8 x float> %i.lx, <8 x float> %i.ll)
  %i.lz = getelementptr inbounds i8, ptr %i.ka, i64 -4
  %i.ma = load <8 x float>, ptr %i.lz, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.mb = getelementptr inbounds i8, ptr %8, i64 -4
  %i.mc = load <8 x float>, ptr %i.mb, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.me = load <8 x float>, ptr %i.md, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.mg = load <8 x float>, ptr %i.mf, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.mh = fadd <8 x float> %i.me, %i.mg
  %i.mi = fadd <8 x float> %i.ma, %i.mc
  %i.mj = fadd <8 x float> %i.jl, %i.mh
  %i.mk = fadd <8 x float> %i.mi, %i.mj           ; 2 uses
  %i.ml = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mk, <8 x float> %i.mk, <8 x float> %i.ly)
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.hl
  %i.mn = load <8 x float>, ptr %i.mm, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.hl
  %i.mp = load <8 x float>, ptr %i.mo, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.he
  %i.mr = load <8 x float>, ptr %i.mq, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.he
  %i.mt = load <8 x float>, ptr %i.ms, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.mu = fadd <8 x float> %i.mr, %i.mt
  %i.mv = fadd <8 x float> %i.mn, %i.mp
  %i.mw = fadd <8 x float> %i.jl, %i.mu
  %i.mx = fadd <8 x float> %i.mv, %i.mw           ; 2 uses
  %i.my = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mx, <8 x float> %i.mx, <8 x float> %i.ml)
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.he
  %i.na = load <8 x float>, ptr %i.mz, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.he
  %i.nc = load <8 x float>, ptr %i.nb, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.hl
  %i.ne = load <8 x float>, ptr %i.nd, align 4, !tbaa !79, !alias.scope !600, !noalias !595 ; 3 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.hl
  %i.ng = load <8 x float>, ptr %i.nf, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.nh = fadd <8 x float> %i.ne, %i.ng
  %i.ni = fadd <8 x float> %i.na, %i.nc
  %i.nj = fadd <8 x float> %i.jl, %i.nh
  %i.nk = fadd <8 x float> %i.ni, %i.nj           ; 2 uses
  %i.nl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nk, <8 x float> %i.nk, <8 x float> %i.my)
  %i.nm = getelementptr inbounds i8, ptr %i.jz, i64 -8
  %i.nn = load <8 x float>, ptr %i.nm, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.no = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.np = load <8 x float>, ptr %i.no, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.nq = fadd <8 x float> %i.me, %i.np
  %i.nr = fadd <8 x float> %i.mc, %i.nn
  %i.ns = fadd <8 x float> %i.jl, %i.nq
  %i.nt = fadd <8 x float> %i.nr, %i.ns           ; 2 uses
  %i.nu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nt, <8 x float> %i.nt, <8 x float> %i.nl)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.nw = load <8 x float>, ptr %i.nv, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.nx = getelementptr inbounds i8, ptr %i.ke, i64 -8
  %i.ny = load <8 x float>, ptr %i.nx, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.nz = fadd <8 x float> %i.lr, %i.ny
  %i.oa = fadd <8 x float> %i.lp, %i.nw
  %i.ob = fadd <8 x float> %i.jl, %i.nz
  %i.oc = fadd <8 x float> %i.oa, %i.ob           ; 2 uses
  %i.od = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.oc, <8 x float> %i.oc, <8 x float> %i.nu)
  %i.oe = getelementptr inbounds i8, ptr %8, i64 -12
  %i.of = load <8 x float>, ptr %i.oe, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.og = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.oh = load <8 x float>, ptr %i.og, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.oi = fadd <8 x float> %i.mr, %i.oh
  %i.oj = fadd <8 x float> %i.mp, %i.of
  %i.ok = fadd <8 x float> %i.jl, %i.oi
  %i.ol = fadd <8 x float> %i.oj, %i.ok           ; 2 uses
  %i.om = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ol, <8 x float> %i.ol, <8 x float> %i.od)
  %i.on = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.oo = load <8 x float>, ptr %i.on, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.op = getelementptr inbounds i8, ptr %10, i64 -12
  %i.oq = load <8 x float>, ptr %i.op, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.or = fadd <8 x float> %i.nc, %i.oq
  %i.os = fadd <8 x float> %i.ne, %i.oo
  %i.ot = fadd <8 x float> %i.jl, %i.or
  %i.ou = fadd <8 x float> %i.os, %i.ot           ; 2 uses
  %i.ov = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ou, <8 x float> %i.ou, <8 x float> %i.om)
  %i.ow = getelementptr inbounds i8, ptr %10, i64 -16
  %i.ox = load <8 x float>, ptr %i.ow, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.oy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.oz = load <8 x float>, ptr %i.oy, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.pa = fadd <8 x float> %i.ne, %i.oz
  %i.pb = fadd <8 x float> %i.nc, %i.ox
  %i.pc = fadd <8 x float> %i.jl, %i.pa
  %i.pd = fadd <8 x float> %i.pb, %i.pc           ; 2 uses
  %i.pe = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pd, <8 x float> %i.pd, <8 x float> %i.ov)
  %i.pf = getelementptr inbounds i8, ptr %8, i64 -16
  %i.pg = load <8 x float>, ptr %i.pf, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ph = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pi = load <8 x float>, ptr %i.ph, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.pj = fadd <8 x float> %i.mr, %i.pi
  %i.pk = fadd <8 x float> %i.mp, %i.pg
  %i.pl = fadd <8 x float> %i.jl, %i.pj
  %i.pm = fadd <8 x float> %i.pk, %i.pl           ; 2 uses
  %i.pn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pm, <8 x float> %i.pm, <8 x float> %i.pe)
  %i.po = getelementptr inbounds i8, ptr %i.ka, i64 -8
  %i.pp = load <8 x float>, ptr %i.po, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.pq = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.pr = load <8 x float>, ptr %i.pq, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.ps = fadd <8 x float> %i.me, %i.pr
  %i.pt = fadd <8 x float> %i.mc, %i.pp
  %i.pu = fadd <8 x float> %i.jl, %i.ps
  %i.pv = fadd <8 x float> %i.pt, %i.pu           ; 2 uses
  %i.pw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pv, <8 x float> %i.pv, <8 x float> %i.pn)
  %i.px = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.py = load <8 x float>, ptr %i.px, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.pz = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.qa = load <8 x float>, ptr %i.pz, align 4, !tbaa !79, !alias.scope !600, !noalias !595
  %i.qb = fadd <8 x float> %i.lr, %i.qa
  %i.qc = fadd <8 x float> %i.lp, %i.py
  %i.qd = fadd <8 x float> %i.jl, %i.qb
  %i.qe = fadd <8 x float> %i.qc, %i.qd           ; 2 uses
  %i.qf = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qe, <8 x float> %i.qe, <8 x float> %i.pw)
  %i.qg = fadd <8 x float> %i.jj, %i.qf
  store <8 x float> %i.qg, ptr %i.ji, align 32, !tbaa !79, !noalias !595
  %i.qh = add nuw nsw i64 %.1183.i, 20
  %.not.i = icmp samesign ugt i64 %i.qh, %i.p
  br i1 %.not.i, label %.preheader170.i, label %.lr.ph.i, !llvm.loop !590

.lr.ph185.i:                                      ; preds = %.preheader170.i, %.lr.ph185.i
  %.2184.i = phi i64 [ %i.qm, %.lr.ph185.i ], [ %.1.lcssa.i, %.preheader170.i ] ; 3 uses
  %i.qi = tail call fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.2184.i, i64 noundef %.1158186.i) #49, !noalias !594
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.2184.i ; 2 uses
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !58, !noalias !595
  %i.ql = fadd float %i.qi, %i.qk
  store float %i.ql, ptr %i.qj, align 4, !tbaa !58, !noalias !595
  %i.qm = add nuw nsw i64 %.2184.i, 1             ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.qm, %i.p
  br i1 %exitcond213.not.i, label %._crit_edge.i, label %.lr.ph185.i, !llvm.loop !591

._crit_edge.i:                                    ; preds = %.lr.ph185.i, %.preheader170.i
  %i.qn = add nuw i64 %.1158186.i, 1              ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.qn, %i.hf
  br i1 %exitcond214.not.i, label %.preheader.i, label %.preheader171.i, !llvm.loop !592

_ZN3jxl6N_AVX2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit: ; preds = %._crit_edge193.us.i, %.preheader.i, %.lr.ph195.i, %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph195.i ], [ 0, %.preheader.i ], [ 0, %._crit_edge193.us.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69   ; 3 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 4 uses
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %._crit_edge38, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph37
  %i.z = add nsw i64 %i.c, -1                     ; 5 uses
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = shl nuw nsw i64 %i.y, 2                 ; 5 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ad = mul i64 %i.s, %i.z
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad
  %scevgep43 = getelementptr i8, ptr %i.ae, i64 %i.ab
  %i.af = mul i64 %i.o, %i.z
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.af
  %scevgep44 = getelementptr i8, ptr %i.ag, i64 %i.ab
  %i.ah = mul i64 %i.k, %i.z
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah
  %scevgep45 = getelementptr i8, ptr %i.ai, i64 %i.ab
  %i.aj = mul i64 %i.g, %i.z
  %i.ak = getelementptr i8, ptr %i.e, i64 %i.aj
  %scevgep46 = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.al = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %i.am = insertelement <4 x i64> %i.al, i64 %i.o, i64 1
  %i.an = insertelement <4 x i64> %i.am, i64 %i.k, i64 2
  %i.ao = insertelement <4 x i64> %i.an, i64 %i.g, i64 3
  %i.ap = insertelement <4 x i64> poison, i64 %i.w, i64 0
  %i.aq = shufflevector <4 x i64> %i.ap, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ar = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep43, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep44, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep45, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep46, i64 3
  %i.ax = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.m, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.i, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %i.e, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bc = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.bd = icmp ult <4 x ptr> %i.as, %i.aw
  %i.be = icmp ult <4 x ptr> %i.ba, %i.bc
  %i.bf = or <4 x i64> %i.ao, %i.aq
  %i.bg = and <4 x i1> %i.bd, %i.be
  %i.bh = icmp slt <4 x i64> %i.bf, zeroinitializer
  %rdx.op = or <4 x i1> %i.bh, %i.bg
  %i.bi = bitcast <4 x i1> %rdx.op to i4
  %.not68 = icmp eq i4 %i.bi, 0
  %n.vec = and i64 %i.y, 4294967288               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.035.us = phi i64 [ %i.cw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 6 uses
  %i.bj = mul i64 %i.g, %.035.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bj ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = mul i64 %i.k, %.035.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bl ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %i.bn = mul i64 %i.o, %.035.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bo, i64 64) ]
  %i.bp = mul i64 %i.s, %.035.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bp ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bq, i64 64) ]
  %i.br = mul i64 %i.w, %.035.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bs, i64 64) ]
  %.not68.not = xor i1 %.not68, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not68.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index
  %wide.load = load <8 x float>, ptr %i.bt, align 32, !tbaa !58, !alias.scope !609
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index
  %wide.load65 = load <8 x float>, ptr %i.bu, align 32, !tbaa !58, !alias.scope !610
  %i.bv = fadd <8 x float> %wide.load, %wide.load65
  %i.bw = fmul <8 x float> %i.bv, splat (float 2.500000e+00) ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index
  %wide.load66 = load <8 x float>, ptr %i.bx, align 32, !tbaa !58, !alias.scope !611
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index
  %wide.load67 = load <8 x float>, ptr %i.by, align 32, !tbaa !58, !alias.scope !612
  %i.bz = fmul <8 x float> %wide.load67, splat (float 4.000000e-01)
  %i.ca = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load66, <8 x float> splat (float 4.000000e-01), <8 x float> %i.bz) ; 2 uses
  %i.cb = fmul <8 x float> %i.ca, %i.ca
  %i.cc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bw, <8 x float> %i.bw, <8 x float> %i.cb)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index
  %i.ce = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.cc)
  store <8 x float> %i.ce, ptr %i.cd, align 32, !tbaa !58, !alias.scope !613, !noalias !614
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.03334.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03334.us = phi i64 [ %i.cv, %scalar.ph ], [ %.03334.us.ph, %scalar.ph.preheader ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.03334.us
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03334.us
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !58
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = fmul float %i.ck, 2.500000e+00          ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.03334.us
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !58
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.03334.us
  %i.cp = load float, ptr %i.co, align 4, !tbaa !58
  %i.cq = fmul float %i.cp, 4.000000e-01
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float 4.000000e-01, float %i.cq) ; 2 uses
  %i.cs = fmul float %i.cr, %i.cr
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE214MaltaDiffMapLFERKNS_5PlaneIfEES4_dddPS2_S5_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = extractelement <4 x double> %predphi40, i64 3
  %i.ed = fptrunc double %i.ec to float
  store float %i.ed, ptr %i.eb, align 4, !tbaa !58, !alias.scope !1157, !noalias !1158
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !1043

middle.block:                                     ; preds = %pred.store.continue46
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.0161173.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %.0161173.us.i = phi i64 [ %i.gk, %bb.l ], [ %.0161173.us.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0161173.us.i ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !58, !noalias !1154 ; 2 uses
  %i.eh = tail call noundef float @llvm.fabs.f32(float %i.eg)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0161173.us.i ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !58, !noalias !1154 ; 2 uses
  %i.ek = tail call noundef float @llvm.fabs.f32(float %i.ej)
  %i.el = fadd float %i.eh, %i.ek
  %i.em = fmul float %i.el, 5.000000e-01
  %i.en = fsub float %i.eg, %i.ej
  %i.eo = fadd float %i.em, %i.ap
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0161173.us.i ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fdiv <2 x float> %i.ac, %i.er           ; 5 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = fmul float %i.en, %i.et                 ; 5 uses
  store float %i.eu, ptr %i.ep, align 4, !tbaa !58, !noalias !1154
  %i.ev = load float, ptr %i.ef, align 4, !tbaa !58, !noalias !1154 ; 2 uses
  %i.ew = tail call noundef float @llvm.fabs.f32(float %i.ev)
  %i.ex = fpext float %i.ew to double             ; 2 uses
  %i.ey = fmul double %i.ex, 5.500000e-01         ; 4 uses
  %i.ez = fmul double %i.ex, 1.050000e+00         ; 4 uses
  %i.fa = fcmp olt float %i.ev, 0.000000e+00
  %i.fb = load float, ptr %i.ei, align 4, !tbaa !58, !noalias !1154 ; 2 uses
  %i.fc = fpext float %i.fb to double             ; 7 uses
  br i1 %i.fa, label %bb.h, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %i.fd = fcmp ogt double %i.ey, %i.fc
  br i1 %i.fd, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fe = fcmp olt double %i.ez, %i.fc
  br i1 %i.fe, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ff = extractelement <2 x float> %i.es, i64 1
  %i.fg = fpext float %i.ff to double
  %i.fh = fsub double %i.fc, %i.ez
  %i.fi = fmul double %i.fh, %i.fg
  %i.fj = fpext float %i.eu to double
  %i.fk = fsub double %i.fj, %i.fi
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.fl = extractelement <2 x float> %i.es, i64 1
  %i.fm = fpext float %i.fl to double
  %i.fn = fsub double %i.ey, %i.fc
  %i.fo = fmul double %i.fn, %i.fm
  %i.fp = fpext float %i.eu to double
  %i.fq = fadd double %i.fo, %i.fp
  br label %.sink.split.i

bb.h:                                             ; preds = %scalar.ph
  %i.fr = fneg double %i.ey
  %i.fs = fcmp ogt double %i.fc, %i.fr
  br i1 %i.fs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ft = fneg double %i.ez
  %i.fu = fcmp olt double %i.fc, %i.ft
  br i1 %i.fu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fv = extractelement <2 x float> %i.es, i64 1
  %i.fw = fpext float %i.fv to double
  %i.fx = fneg float %i.fb
  %i.fy = fpext float %i.fx to double
  %i.fz = fsub double %i.fy, %i.ez
  %i.ga = fmul double %i.fz, %i.fw
  %i.gb = fpext float %i.eu to double
  %i.gc = fadd double %i.ga, %i.gb
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.gd = extractelement <2 x float> %i.es, i64 1
  %i.ge = fpext float %i.gd to double
  %i.gf = fadd double %i.ey, %i.fc
  %i.gg = fmul double %i.gf, %i.ge
  %i.gh = fpext float %i.eu to double
  %i.gi = fsub double %i.gh, %i.gg
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %.sink235.i = phi double [ %i.gi, %bb.k ], [ %i.gc, %bb.j ], [ %i.fq, %bb.g ], [ %i.fk, %bb.f ]
  %i.gj = fptrunc double %.sink235.i to float
  store float %i.gj, ptr %i.ep, align 4, !tbaa !58, !noalias !1154
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.i, %bb.e
  %i.gk = add nuw nsw i64 %.0161173.us.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gk, %i.p
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !1044

._crit_edge.us.i:                                 ; preds = %bb.l, %middle.block
  %i.gl = add nuw nsw i64 %.0160174.us.i, 1       ; 2 uses
  %exitcond207.not.i = icmp eq i64 %i.gl, %i.q
  br i1 %exitcond207.not.i, label %.preheader172.i, label %.lr.ph.us.i, !llvm.loop !1045

.preheader172.i:                                  ; preds = %._crit_edge.us.i, %bb.c
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !68, !alias.scope !1153, !noalias !1152 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !69, !alias.scope !1153, !noalias !1152 ; 5 uses
  %.not198.i = icmp eq i32 %i.a, 0
  br i1 %.not198.i, label %.split.us.i, label %.lr.ph.us179.preheader.i

.lr.ph.us179.preheader.i:                         ; preds = %.preheader172.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gn, i64 64) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.us179.preheader.i
  %.0156177.us.i = phi i64 [ 0, %.lr.ph.us179.preheader.i ], [ %i.gu, %bb.m ] ; 3 uses
  %i.gq = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.i, i64 noundef 0) #49, !noalias !1153
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.0156177.us.i ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !58, !noalias !1154
  %i.gt = fadd float %i.gq, %i.gs
  store float %i.gt, ptr %i.gr, align 4, !tbaa !58, !noalias !1154
  %i.gu = add nuw nsw i64 %.0156177.us.i, 1       ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.gu, %i.p
  br i1 %exitcond209.not.i, label %._crit_edge.us180.i, label %bb.m, !llvm.loop !1046

._crit_edge.us180.i:                              ; preds = %bb.m
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gv, i64 64) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.us180.i
  %.0156177.us.1.i = phi i64 [ 0, %._crit_edge.us180.i ], [ %i.ha, %bb.n ] ; 3 uses
  %i.gw = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.1.i, i64 noundef 1) #49, !noalias !1153
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.0156177.us.1.i ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !58, !noalias !1154
  %i.gz = fadd float %i.gw, %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !58, !noalias !1154
  %i.ha = add nuw nsw i64 %.0156177.us.1.i, 1     ; 2 uses
  %exitcond209.1.not.i = icmp eq i64 %i.ha, %i.p
  br i1 %exitcond209.1.not.i, label %._crit_edge.us180.1.i, label %bb.n, !llvm.loop !1046

._crit_edge.us180.1.i:                            ; preds = %bb.n
  %i.hb = shl i64 %i.gp, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hc, i64 64) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.us180.1.i
  %.0156177.us.2.i = phi i64 [ 0, %._crit_edge.us180.1.i ], [ %i.hh, %bb.o ] ; 3 uses
  %i.hd = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.2.i, i64 noundef 2) #49, !noalias !1153
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.0156177.us.2.i ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58, !noalias !1154
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !58, !noalias !1154
  %i.hh = add nuw nsw i64 %.0156177.us.2.i, 1     ; 2 uses
  %exitcond209.2.not.i = icmp eq i64 %i.hh, %i.p
  br i1 %exitcond209.2.not.i, label %._crit_edge.us180.2.i, label %bb.o, !llvm.loop !1046

._crit_edge.us180.2.i:                            ; preds = %bb.o
  %i.hi = mul i64 %i.gp, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hj, i64 64) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.us180.2.i
  %.0156177.us.3.i = phi i64 [ 0, %._crit_edge.us180.2.i ], [ %i.ho, %bb.p ] ; 3 uses
  %i.hk = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.3.i, i64 noundef 3) #49, !noalias !1153
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.0156177.us.3.i ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !58, !noalias !1154
  %i.hn = fadd float %i.hk, %i.hm
  store float %i.hn, ptr %i.hl, align 4, !tbaa !58, !noalias !1154
  %i.ho = add nuw nsw i64 %.0156177.us.3.i, 1     ; 2 uses
  %exitcond209.3.not.i = icmp eq i64 %i.ho, %i.p
  br i1 %exitcond209.3.not.i, label %.split.us.i, label %bb.p, !llvm.loop !1046

.split.us.i:                                      ; preds = %bb.p, %.preheader172.i, %.preheader172.thread.i
  %.not198233.i = phi i1 [ true, %.preheader172.i ], [ true, %.preheader172.thread.i ], [ false, %bb.p ]
  %i.hp = phi i64 [ %i.gp, %.preheader172.i ], [ %i.bh, %.preheader172.thread.i ], [ %i.gp, %bb.p ]
  %i.hq = phi ptr [ %i.go, %.preheader172.i ], [ %i.bg, %.preheader172.thread.i ], [ %i.go, %bb.p ]
  %i.hr = phi ptr [ %i.gn, %.preheader172.i ], [ %i.bf, %.preheader172.thread.i ], [ %i.gn, %bb.p ]
  %i.hs = phi ptr [ %i.gm, %.preheader172.i ], [ %i.be, %.preheader172.thread.i ], [ %i.gm, %bb.p ]
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !69, !alias.scope !1152, !noalias !1153 ; 2 uses
  %i.hv = lshr i64 %i.hu, 2                       ; 9 uses
  %i.hw = add nsw i64 %i.q, -4                    ; 3 uses
  %i.hx = icmp ugt i64 %i.hw, 4
  br i1 %i.hx, label %.lr.ph188.i, label %.preheader.i

.lr.ph188.i:                                      ; preds = %.split.us.i
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !68, !alias.scope !1152, !noalias !1153
  %i.ia = mul nuw nsw i64 %i.hv, 3                ; 2 uses
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = sub nsw i64 0, %i.hv                    ; 7 uses
  %.not182.i = icmp ult i32 %i.a, 12
  br label %.preheader171.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.us.i
  %.1158.lcssa.i = phi i64 [ 4, %.split.us.i ], [ %i.hw, %._crit_edge.i ] ; 2 uses
  %i.id = icmp ult i64 %.1158.lcssa.i, %i.q
  br i1 %i.id, label %.lr.ph195.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit

.lr.ph195.i:                                      ; preds = %.preheader.i
  %i.ie = load ptr, ptr %i.hs, align 8, !tbaa !68, !alias.scope !1153, !noalias !1152
  %i.if = load i64, ptr %i.hq, align 8, !tbaa !69, !alias.scope !1153, !noalias !1152
  br i1 %.not198233.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i

.lr.ph192.us.i:                                   ; preds = %.lr.ph195.i, %._crit_edge193.us.i
  %.2159194.us.i = phi i64 [ %i.in, %._crit_edge193.us.i ], [ %.1158.lcssa.i, %.lr.ph195.i ] ; 3 uses
  %i.ig = mul i64 %.2159194.us.i, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ig ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ih, i64 64) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph192.us.i
  %.0190.us.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %i.im, %bb.q ] ; 3 uses
  %i.ii = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0190.us.i, i64 noundef %.2159194.us.i) #49, !noalias !1153
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.0190.us.i ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !58, !noalias !1154
  %i.il = fadd float %i.ii, %i.ik
  store float %i.il, ptr %i.ij, align 4, !tbaa !58, !noalias !1154
  %i.im = add nuw nsw i64 %.0190.us.i, 1          ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.im, %i.p
  br i1 %exitcond215.not.i, label %._crit_edge193.us.i, label %bb.q, !llvm.loop !1047

._crit_edge193.us.i:                              ; preds = %bb.q
  %i.in = add nuw nsw i64 %.2159194.us.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.in, %i.q
  br i1 %exitcond216.not.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i, !llvm.loop !1048

.preheader171.i:                                  ; preds = %._crit_edge.i, %.lr.ph188.i
  %.1158186.i = phi i64 [ 4, %.lr.ph188.i ], [ %i.rd, %._crit_edge.i ] ; 8 uses
  %i.io = mul i64 %.1158186.i, %i.hu
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ip, i64 64) ]
  %i.iq = mul i64 %.1158186.i, %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.iq ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ir, i64 64) ]
  %i.is = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 0, i64 noundef %.1158186.i) #49, !noalias !1153
  %i.it = load float, ptr %i.ir, align 64, !tbaa !58, !noalias !1154
  %i.iu = fadd float %i.is, %i.it
  store float %i.iu, ptr %i.ir, align 64, !tbaa !58, !noalias !1154
  %i.iv = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 1, i64 noundef %.1158186.i) #49, !noalias !1153
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !58, !noalias !1154
  %i.iy = fadd float %i.iv, %i.ix
  store float %i.iy, ptr %i.iw, align 4, !tbaa !58, !noalias !1154
  %i.iz = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 2, i64 noundef %.1158186.i) #49, !noalias !1153
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !58, !noalias !1154
  %i.jc = fadd float %i.iz, %i.jb
  store float %i.jc, ptr %i.ja, align 8, !tbaa !58, !noalias !1154
  %i.jd = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef 3, i64 noundef %.1158186.i) #49, !noalias !1153
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !58, !noalias !1154
  %i.jg = fadd float %i.jd, %i.jf
  store float %i.jg, ptr %i.je, align 4, !tbaa !58, !noalias !1154
  br i1 %.not182.i, label %.preheader170.i, label %.lr.ph.i

.preheader170.i:                                  ; preds = %.lr.ph.i, %.preheader171.i
  %.1.lcssa.i = phi i64 [ 4, %.preheader171.i ], [ %i.ji, %.lr.ph.i ] ; 2 uses
  %i.jh = icmp ult i64 %.1.lcssa.i, %i.p
  br i1 %i.jh, label %.lr.ph185.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader171.i, %.lr.ph.i
  %.1183.i = phi i64 [ %i.ji, %.lr.ph.i ], [ 4, %.preheader171.i ] ; 4 uses
  %i.ji = add nuw nsw i64 %.1183.i, 4             ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.1183.i ; 2 uses
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !tbaa !79, !noalias !1154
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1183.i ; 9 uses
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !79, !alias.scope !1159, !noalias !1154 ; 16 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -16 ; 3 uses
  %i.jo = load <4 x float>, ptr %i.jn, align 16, !tbaa !79, !alias.scope !1160, !noalias !1154
  %i.jp = getelementptr inbounds i8, ptr %i.jl, i64 -8 ; 3 uses
  %i.jq = load <4 x float>, ptr %i.jp, align 8, !tbaa !79, !alias.scope !1161, !noalias !1154
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.js = load <4 x float>, ptr %i.jr, align 8, !tbaa !79, !alias.scope !1162, !noalias !1154
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 3 uses
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !tbaa !79, !alias.scope !1163, !noalias !1154
  %i.jv = fadd <4 x float> %i.js, %i.ju
  %i.jw = fadd <4 x float> %i.jo, %i.jq
  %i.jx = fadd <4 x float> %i.jm, %i.jv
  %i.jy = fadd <4 x float> %i.jw, %i.jx           ; 2 uses
  %i.jz = fmul <4 x float> %i.jy, %i.jy
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ib ; 5 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ic ; 5 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 4, !tbaa !79, !alias.scope !1164, !noalias !1154
  %7 = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ic
  %8 = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ic ; 9 uses
  %i.kd = load <4 x float>, ptr %8, align 4, !tbaa !79, !alias.scope !1165, !noalias !1154
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.hv
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.hv ; 9 uses
  %i.ke = load <4 x float>, ptr %10, align 4, !tbaa !79, !alias.scope !1166, !noalias !1154
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ia ; 5 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.hv ; 5 uses
  %i.kh = load <4 x float>, ptr %i.kg, align 4, !tbaa !79, !alias.scope !1167, !noalias !1154
  %i.ki = fadd <4 x float> %i.ke, %i.kh
  %i.kj = fadd <4 x float> %i.kc, %i.kd
  %i.kk = fadd <4 x float> %i.jm, %i.ki
  %i.kl = fadd <4 x float> %i.kj, %i.kk           ; 2 uses
  %i.km = fmul <4 x float> %i.kl, %i.kl
  %i.kn = fadd <4 x float> %i.jz, %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.ka, i64 -12
  %i.kp = load <4 x float>, ptr %i.ko, align 4, !tbaa !79, !alias.scope !1168, !noalias !1154
  %i.kq = getelementptr inbounds i8, ptr %8, i64 -8
  %i.kr = load <4 x float>, ptr %i.kq, align 4, !tbaa !79, !alias.scope !1169, !noalias !1154
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kt = load <4 x float>, ptr %i.ks, align 4, !tbaa !79, !alias.scope !1170, !noalias !1154
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kv = load <4 x float>, ptr %i.ku, align 4, !tbaa !79, !alias.scope !1171, !noalias !1154
  %i.kw = fadd <4 x float> %i.kt, %i.kv
  %i.kx = fadd <4 x float> %i.kp, %i.kr
  %i.ky = fadd <4 x float> %i.jm, %i.kw
  %i.kz = fadd <4 x float> %i.kx, %i.ky           ; 2 uses
  %i.la = fmul <4 x float> %i.kz, %i.kz
  %i.lb = fadd <4 x float> %i.kn, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.ld = load <4 x float>, ptr %i.lc, align 4, !tbaa !79, !alias.scope !1172, !noalias !1154
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lf = load <4 x float>, ptr %i.le, align 4, !tbaa !79, !alias.scope !1173, !noalias !1154
  %i.lg = getelementptr inbounds i8, ptr %10, i64 -8
  %i.lh = load <4 x float>, ptr %i.lg, align 4, !tbaa !79, !alias.scope !1174, !noalias !1154
  %i.li = getelementptr inbounds i8, ptr %i.kf, i64 -12
  %i.lj = load <4 x float>, ptr %i.li, align 4, !tbaa !79, !alias.scope !1175, !noalias !1154
  %i.lk = fadd <4 x float> %i.lh, %i.lj
  %i.ll = fadd <4 x float> %i.ld, %i.lf
  %i.lm = fadd <4 x float> %i.jm, %i.lk
  %i.ln = fadd <4 x float> %i.ll, %i.lm           ; 2 uses
  %i.lo = fmul <4 x float> %i.ln, %i.ln
  %i.lp = fadd <4 x float> %i.lb, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.lr = load <4 x float>, ptr %i.lq, align 4, !tbaa !79, !alias.scope !1176, !noalias !1154
  %i.ls = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lt = load <4 x float>, ptr %i.ls, align 4, !tbaa !79, !alias.scope !1177, !noalias !1154 ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %10, i64 -4
  %i.lv = load <4 x float>, ptr %i.lu, align 4, !tbaa !79, !alias.scope !1178, !noalias !1154 ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.kg, i64 -4
  %i.lx = load <4 x float>, ptr %i.lw, align 4, !tbaa !79, !alias.scope !1179, !noalias !1154
  %i.ly = fadd <4 x float> %i.lv, %i.lx
  %i.lz = fadd <4 x float> %i.lr, %i.lt
  %i.ma = fadd <4 x float> %i.jm, %i.ly
  %i.mb = fadd <4 x float> %i.lz, %i.ma           ; 2 uses
  %i.mc = fmul <4 x float> %i.mb, %i.mb
  %i.md = fadd <4 x float> %i.lp, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %i.mf = load <4 x float>, ptr %i.me, align 4, !tbaa !79, !alias.scope !1180, !noalias !1154
  %i.mg = getelementptr inbounds i8, ptr %8, i64 -4
  %i.mh = load <4 x float>, ptr %i.mg, align 4, !tbaa !79, !alias.scope !1181, !noalias !1154 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.mj = load <4 x float>, ptr %i.mi, align 4, !tbaa !79, !alias.scope !1182, !noalias !1154 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ml = load <4 x float>, ptr %i.mk, align 4, !tbaa !79, !alias.scope !1183, !noalias !1154
  %i.mm = fadd <4 x float> %i.mj, %i.ml
  %i.mn = fadd <4 x float> %i.mf, %i.mh
  %i.mo = fadd <4 x float> %i.jm, %i.mm
  %i.mp = fadd <4 x float> %i.mn, %i.mo           ; 2 uses
  %i.mq = fmul <4 x float> %i.mp, %i.mp
  %i.mr = fadd <4 x float> %i.md, %i.mq
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.ic
  %i.mt = load <4 x float>, ptr %i.ms, align 4, !tbaa !79, !alias.scope !1184, !noalias !1154
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.ic
  %i.mv = load <4 x float>, ptr %i.mu, align 4, !tbaa !79, !alias.scope !1185, !noalias !1154 ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.hv
  %i.mx = load <4 x float>, ptr %i.mw, align 4, !tbaa !79, !alias.scope !1186, !noalias !1154 ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.hv
  %i.mz = load <4 x float>, ptr %i.my, align 4, !tbaa !79, !alias.scope !1187, !noalias !1154
  %i.na = fadd <4 x float> %i.mx, %i.mz
  %i.nb = fadd <4 x float> %i.mt, %i.mv
  %i.nc = fadd <4 x float> %i.jm, %i.na
  %i.nd = fadd <4 x float> %i.nb, %i.nc           ; 2 uses
  %i.ne = fmul <4 x float> %i.nd, %i.nd
  %i.nf = fadd <4 x float> %i.mr, %i.ne
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.hv
  %i.nh = load <4 x float>, ptr %i.ng, align 4, !tbaa !79, !alias.scope !1188, !noalias !1154
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.hv
  %i.nj = load <4 x float>, ptr %i.ni, align 4, !tbaa !79, !alias.scope !1189, !noalias !1154 ; 3 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.ic
  %i.nl = load <4 x float>, ptr %i.nk, align 4, !tbaa !79, !alias.scope !1190, !noalias !1154 ; 3 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ic
  %i.nn = load <4 x float>, ptr %i.nm, align 4, !tbaa !79, !alias.scope !1191, !noalias !1154
  %i.no = fadd <4 x float> %i.nl, %i.nn
  %i.np = fadd <4 x float> %i.nh, %i.nj
  %i.nq = fadd <4 x float> %i.jm, %i.no
  %i.nr = fadd <4 x float> %i.np, %i.nq           ; 2 uses
  %i.ns = fmul <4 x float> %i.nr, %i.nr
  %i.nt = fadd <4 x float> %i.nf, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.ka, i64 -8
  %i.nv = load <4 x float>, ptr %i.nu, align 4, !tbaa !79, !alias.scope !1192, !noalias !1154
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.nx = load <4 x float>, ptr %i.nw, align 4, !tbaa !79, !alias.scope !1193, !noalias !1154
  %i.ny = fadd <4 x float> %i.mj, %i.nx
  %i.nz = fadd <4 x float> %i.mh, %i.nv
  %i.oa = fadd <4 x float> %i.jm, %i.ny
  %i.ob = fadd <4 x float> %i.nz, %i.oa           ; 2 uses
  %i.oc = fmul <4 x float> %i.ob, %i.ob
  %i.od = fadd <4 x float> %i.nt, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.of = load <4 x float>, ptr %i.oe, align 4, !tbaa !79, !alias.scope !1194, !noalias !1154
  %i.og = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.oh = load <4 x float>, ptr %i.og, align 4, !tbaa !79, !alias.scope !1195, !noalias !1154
  %i.oi = fadd <4 x float> %i.lv, %i.oh
  %i.oj = fadd <4 x float> %i.lt, %i.of
  %i.ok = fadd <4 x float> %i.jm, %i.oi
  %i.ol = fadd <4 x float> %i.oj, %i.ok           ; 2 uses
  %i.om = fmul <4 x float> %i.ol, %i.ol
  %i.on = fadd <4 x float> %i.od, %i.om
  %i.oo = getelementptr inbounds i8, ptr %8, i64 -12
  %i.op = load <4 x float>, ptr %i.oo, align 4, !tbaa !79, !alias.scope !1196, !noalias !1154
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.or = load <4 x float>, ptr %i.oq, align 4, !tbaa !79, !alias.scope !1197, !noalias !1154
  %i.os = fadd <4 x float> %i.mx, %i.or
  %i.ot = fadd <4 x float> %i.mv, %i.op
  %i.ou = fadd <4 x float> %i.jm, %i.os
  %i.ov = fadd <4 x float> %i.ot, %i.ou           ; 2 uses
  %i.ow = fmul <4 x float> %i.ov, %i.ov
  %i.ox = fadd <4 x float> %i.on, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.oz = load <4 x float>, ptr %i.oy, align 4, !tbaa !79, !alias.scope !1198, !noalias !1154
  %i.pa = getelementptr inbounds i8, ptr %10, i64 -12
  %i.pb = load <4 x float>, ptr %i.pa, align 4, !tbaa !79, !alias.scope !1199, !noalias !1154
  %i.pc = fadd <4 x float> %i.nj, %i.pb
  %i.pd = fadd <4 x float> %i.nl, %i.oz
  %i.pe = fadd <4 x float> %i.jm, %i.pc
  %i.pf = fadd <4 x float> %i.pd, %i.pe           ; 2 uses
  %i.pg = fmul <4 x float> %i.pf, %i.pf
  %i.ph = fadd <4 x float> %i.ox, %i.pg
  %i.pi = getelementptr inbounds i8, ptr %10, i64 -16
  %i.pj = load <4 x float>, ptr %i.pi, align 4, !tbaa !79, !alias.scope !1200, !noalias !1154
  %i.pk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.pl = load <4 x float>, ptr %i.pk, align 4, !tbaa !79, !alias.scope !1201, !noalias !1154
  %i.pm = fadd <4 x float> %i.nl, %i.pl
  %i.pn = fadd <4 x float> %i.nj, %i.pj
  %i.po = fadd <4 x float> %i.jm, %i.pm
  %i.pp = fadd <4 x float> %i.pn, %i.po           ; 2 uses
  %i.pq = fmul <4 x float> %i.pp, %i.pp
  %i.pr = fadd <4 x float> %i.ph, %i.pq
  %i.ps = getelementptr inbounds i8, ptr %8, i64 -16
  %i.pt = load <4 x float>, ptr %i.ps, align 4, !tbaa !79, !alias.scope !1202, !noalias !1154
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pv = load <4 x float>, ptr %i.pu, align 4, !tbaa !79, !alias.scope !1203, !noalias !1154
  %i.pw = fadd <4 x float> %i.mx, %i.pv
  %i.px = fadd <4 x float> %i.mv, %i.pt
  %i.py = fadd <4 x float> %i.jm, %i.pw
  %i.pz = fadd <4 x float> %i.px, %i.py           ; 2 uses
  %i.qa = fmul <4 x float> %i.pz, %i.pz
  %i.qb = fadd <4 x float> %i.pr, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.kb, i64 -8
  %i.qd = load <4 x float>, ptr %i.qc, align 4, !tbaa !79, !alias.scope !1204, !noalias !1154
  %i.qe = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.qf = load <4 x float>, ptr %i.qe, align 4, !tbaa !79, !alias.scope !1205, !noalias !1154
  %i.qg = fadd <4 x float> %i.mj, %i.qf
  %i.qh = fadd <4 x float> %i.mh, %i.qd
  %i.qi = fadd <4 x float> %i.jm, %i.qg
  %i.qj = fadd <4 x float> %i.qh, %i.qi           ; 2 uses
  %i.qk = fmul <4 x float> %i.qj, %i.qj
  %i.ql = fadd <4 x float> %i.qb, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.qn = load <4 x float>, ptr %i.qm, align 4, !tbaa !79, !alias.scope !1206, !noalias !1154
  %i.qo = getelementptr inbounds i8, ptr %i.kg, i64 -8
  %i.qp = load <4 x float>, ptr %i.qo, align 4, !tbaa !79, !alias.scope !1207, !noalias !1154
  %i.qq = fadd <4 x float> %i.lv, %i.qp
  %i.qr = fadd <4 x float> %i.lt, %i.qn
  %i.qs = fadd <4 x float> %i.jm, %i.qq
  %i.qt = fadd <4 x float> %i.qr, %i.qs           ; 2 uses
  %i.qu = fmul <4 x float> %i.qt, %i.qt
  %i.qv = fadd <4 x float> %i.ql, %i.qu
  %i.qw = fadd <4 x float> %i.jk, %i.qv
  store <4 x float> %i.qw, ptr %i.jj, align 16, !tbaa !79, !noalias !1154
  %i.qx = add nuw nsw i64 %.1183.i, 12
  %.not.i = icmp samesign ugt i64 %i.qx, %i.p
  br i1 %.not.i, label %.preheader170.i, label %.lr.ph.i, !llvm.loop !1149

.lr.ph185.i:                                      ; preds = %.preheader170.i, %.lr.ph185.i
  %.2184.i = phi i64 [ %i.rc, %.lr.ph185.i ], [ %.1.lcssa.i, %.preheader170.i ] ; 3 uses
  %i.qy = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.2184.i, i64 noundef %.1158186.i) #49, !noalias !1153
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.2184.i ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !58, !noalias !1154
  %i.rb = fadd float %i.qy, %i.ra
  store float %i.rb, ptr %i.qz, align 4, !tbaa !58, !noalias !1154
  %i.rc = add nuw nsw i64 %.2184.i, 1             ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.rc, %i.p
  br i1 %exitcond213.not.i, label %._crit_edge.i, label %.lr.ph185.i, !llvm.loop !1150

._crit_edge.i:                                    ; preds = %.lr.ph185.i, %.preheader170.i
  %i.rd = add nuw i64 %.1158186.i, 1              ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.rd, %i.hw
  br i1 %exitcond214.not.i, label %.preheader.i, label %.preheader171.i, !llvm.loop !1151

_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_10MaltaTagLFEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit: ; preds = %._crit_edge193.us.i, %.preheader.i, %.lr.ph195.i, %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph195.i ], [ 0, %.preheader.i ], [ 0, %._crit_edge193.us.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69   ; 3 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 4 uses
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %._crit_edge38, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph37
  %i.z = add nsw i64 %i.c, -1                     ; 5 uses
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = shl nuw nsw i64 %i.y, 2                 ; 5 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ad = mul i64 %i.s, %i.z
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad
  %scevgep43 = getelementptr i8, ptr %i.ae, i64 %i.ab
  %i.af = mul i64 %i.o, %i.z
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.af
  %scevgep44 = getelementptr i8, ptr %i.ag, i64 %i.ab
  %i.ah = mul i64 %i.k, %i.z
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah
  %scevgep45 = getelementptr i8, ptr %i.ai, i64 %i.ab
  %i.aj = mul i64 %i.g, %i.z
  %i.ak = getelementptr i8, ptr %i.e, i64 %i.aj
  %scevgep46 = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.al = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.am = shufflevector <4 x ptr> %i.al, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep43, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep44, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep45, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep46, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.m, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.i, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.e, i64 3
  %i.av = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.aw = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.x, 8
  %i.ax = icmp ult <4 x ptr> %i.am, %i.aq
  %i.ay = icmp ult <4 x ptr> %i.au, %i.aw
  %i.az = or i64 %i.k, %i.w
  %i.ba = and <4 x i1> %i.ax, %i.ay
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp ne i4 %i.bb, 0
  %i.bd = or i64 %i.o, %i.az
  %i.be = or i64 %i.s, %i.bd
  %i.bf = or i64 %i.g, %i.be
  %i.bg = icmp slt i64 %i.bf, 0
  %op.rdx70 = or i1 %i.bc, %i.bg
  %n.vec = and i64 %i.y, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.035.us = phi i64 [ %i.cu, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 6 uses
  %i.bh = mul i64 %i.g, %.035.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = mul i64 %i.k, %.035.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = mul i64 %i.o, %.035.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bl ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %i.bn = mul i64 %i.s, %.035.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bo, i64 64) ]
  %i.bp = mul i64 %i.w, %.035.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bq, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx70
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index
  %wide.load = load <4 x float>, ptr %i.br, align 16, !tbaa !58, !alias.scope !1216
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index
  %wide.load65 = load <4 x float>, ptr %i.bs, align 16, !tbaa !58, !alias.scope !1217
  %i.bt = fadd <4 x float> %wide.load, %wide.load65
  %i.bu = fmul <4 x float> %i.bt, splat (float 2.500000e+00) ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index
  %wide.load66 = load <4 x float>, ptr %i.bv, align 16, !tbaa !58, !alias.scope !1218
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index
  %wide.load67 = load <4 x float>, ptr %i.bw, align 16, !tbaa !58, !alias.scope !1219
  %i.bx = fmul <4 x float> %wide.load67, splat (float 4.000000e-01)
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load66, <4 x float> splat (float 4.000000e-01), <4 x float> %i.bx) ; 2 uses
  %i.bz = fmul <4 x float> %i.by, %i.by
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bu, <4 x float> %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index
  %i.cc = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ca)
  store <4 x float> %i.cc, ptr %i.cb, align 16, !tbaa !58, !alias.scope !1220, !noalias !1221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1214

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.03334.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03334.us = phi i64 [ %i.ct, %scalar.ph ], [ %.03334.us.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03334.us
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !58
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.03334.us
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !58
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = fmul float %i.ci, 2.500000e+00          ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.03334.us
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !58
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.03334.us
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !58
  %i.co = fmul float %i.cn, 4.000000e-01
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float 4.000000e-01, float %i.co) ; 2 uses
  %i.cq = fmul float %i.cp, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cq)
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm:bb.a
  %i.gc = add i32 %i.x, %i.gb                     ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  %.not = icmp ugt i32 %i.z, %i.gc
  %or.cond55 = select i1 %i.gd, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.ge = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.ge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.gf = zext nneg i32 %i.gc to i64
  %i.gg = mul i64 %i.e, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gg ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gh, i64 64) ]
  %i.gi = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ae
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.gk, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  store float %.sink, ptr %i.gl, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gm = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.gm, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ah
  %i.go = load float, ptr %i.gn, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.go, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store float %.sink73, ptr %i.gq, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gr = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.gr, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ak
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.gt, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store float %.sink76, ptr %i.gv, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gw = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.gw, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.an
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.gy, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store float %.sink79, ptr %i.ha, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = load i32, ptr %0, align 8, !tbaa !65
  %.not50.4 = icmp ugt i32 %i.hb, %i.aa
  br i1 %.not50.4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ap
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sink82 = phi float [ %i.hd, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store float %.sink82, ptr %i.hf, align 16, !tbaa !58
  br i1 %i.ar, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = load i32, ptr %0, align 8, !tbaa !65
  %.not50.5 = icmp ugt i32 %i.hg, %i.aq
  br i1 %.not50.5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.as
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.sink85 = phi float [ %i.hi, %bb.x ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 20
  store float %.sink85, ptr %i.hk, align 4, !tbaa !58
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hl = load i32, ptr %0, align 8, !tbaa !65
  %.not50.6 = icmp ugt i32 %i.hl, %i.at
  br i1 %.not50.6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.av
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sink88 = phi float [ %i.hn, %bb.aa ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store float %.sink88, ptr %i.hp, align 8, !tbaa !58
  br i1 %i.ax, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hq = load i32, ptr %0, align 8, !tbaa !65
  %.not50.7 = icmp ugt i32 %i.hq, %i.aw
  br i1 %.not50.7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ay
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink91 = phi float [ %i.hs, %bb.ad ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store float %.sink91, ptr %i.hu, align 4, !tbaa !58
  br i1 %i.ba, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hv = load i32, ptr %0, align 8, !tbaa !65
  %.not50.8 = icmp ugt i32 %i.hv, %i.az
  br i1 %.not50.8, label %bb.ag, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.bb
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink94 = phi float [ %i.hx, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store float %.sink94, ptr %i.hz, align 16, !tbaa !58
  %i.ia = getelementptr [4 x i8], ptr %i.a, i64 %i.gi
  %i.ib = getelementptr i8, ptr %i.ia, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, i8 0, i64 12, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit:   ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 9
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !1538

bb.ah:                                            ; preds = %bb.f, %bb.d
  %.0 = phi float [ %i.v, %bb.d ], [ %i.ga, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden <4 x float> @_ZN3jxl6N_SSE49MaltaUnitIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = mul nsw i64 %1, 3                        ; 2 uses
  %i.b = load float, ptr %0, align 1, !tbaa !79   ; 16 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.d = load float, ptr %i.c, align 1, !tbaa !79
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.f = load float, ptr %i.e, align 1, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load float, ptr %i.g, align 1, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load float, ptr %i.i, align 1, !tbaa !79
  %.scalar = fadd float %i.h, %i.j
  %.scalar366 = fadd float %i.d, %i.f
  %.scalar367 = fadd float %i.b, %.scalar
  %.scalar368 = fadd float %.scalar366, %.scalar367 ; 2 uses
  %i.k = fmul float %.scalar368, %.scalar368
  %i.l = sub i64 0, %i.a
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %i.l ; 5 uses
  %i.n = sub i64 0, %1                            ; 7 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n ; 5 uses
  %i.p = load float, ptr %i.o, align 1, !tbaa !79
  %2 = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %3 = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n ; 9 uses
  %i.q = load float, ptr %3, align 1, !tbaa !79
  %4 = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %5 = getelementptr inbounds [4 x i8], ptr %4, i64 %1 ; 9 uses
  %i.r = load float, ptr %5, align 1, !tbaa !79
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 5 uses
  %i.u = load float, ptr %i.t, align 1, !tbaa !79
  %.scalar369 = fadd float %i.r, %i.u
  %.scalar370 = fadd float %i.p, %i.q
  %.scalar371 = fadd float %i.b, %.scalar369
  %.scalar372 = fadd float %.scalar370, %.scalar371 ; 2 uses
  %i.v = fmul float %.scalar372, %.scalar372
  %.scalar429 = fadd float %i.k, %i.v
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.x = load float, ptr %i.w, align 1, !tbaa !79
  %i.y = getelementptr inbounds i8, ptr %3, i64 -8
  %i.z = load float, ptr %i.y, align 1, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load float, ptr %i.aa, align 1, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ad = load float, ptr %i.ac, align 1, !tbaa !79
  %.scalar373 = fadd float %i.ab, %i.ad
  %.scalar374 = fadd float %i.x, %i.z
  %.scalar375 = fadd float %i.b, %.scalar373
  %.scalar376 = fadd float %.scalar374, %.scalar375 ; 2 uses
  %i.ae = fmul float %.scalar376, %.scalar376
  %.scalar430 = fadd float %.scalar429, %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ag = load float, ptr %i.af, align 1, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load float, ptr %i.ah, align 1, !tbaa !79
  %i.aj = getelementptr inbounds i8, ptr %5, i64 -8
  %i.ak = load float, ptr %i.aj, align 1, !tbaa !79
  %i.al = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.am = load float, ptr %i.al, align 1, !tbaa !79
  %.scalar377 = fadd float %i.ak, %i.am
  %.scalar378 = fadd float %i.ag, %i.ai
  %.scalar379 = fadd float %i.b, %.scalar377
  %.scalar380 = fadd float %.scalar378, %.scalar379 ; 2 uses
  %i.an = fmul float %.scalar380, %.scalar380
  %.scalar431 = fadd float %.scalar430, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ap = load float, ptr %i.ao, align 1, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ar = load float, ptr %i.aq, align 1, !tbaa !79 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %5, i64 -4
  %i.at = load float, ptr %i.as, align 1, !tbaa !79 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.av = load float, ptr %i.au, align 1, !tbaa !79
  %.scalar381 = fadd float %i.at, %i.av
  %.scalar382 = fadd float %i.ap, %i.ar
  %.scalar383 = fadd float %i.b, %.scalar381
  %.scalar384 = fadd float %.scalar382, %.scalar383 ; 2 uses
  %i.aw = fmul float %.scalar384, %.scalar384
  %.scalar432 = fadd float %.scalar431, %i.aw
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.ay = load float, ptr %i.ax, align 1, !tbaa !79
  %i.az = getelementptr inbounds i8, ptr %3, i64 -4
  %i.ba = load float, ptr %i.az, align 1, !tbaa !79 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bc = load float, ptr %i.bb, align 1, !tbaa !79 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.be = load float, ptr %i.bd, align 1, !tbaa !79
  %.scalar385 = fadd float %i.bc, %i.be
  %.scalar386 = fadd float %i.ay, %i.ba
  %.scalar387 = fadd float %i.b, %.scalar385
  %.scalar388 = fadd float %.scalar386, %.scalar387 ; 2 uses
  %i.bf = fmul float %.scalar388, %.scalar388
  %.scalar433 = fadd float %.scalar432, %i.bf
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.n
  %i.bh = load float, ptr %i.bg, align 1, !tbaa !79
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n
  %i.bj = load float, ptr %i.bi, align 1, !tbaa !79 ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  %i.bl = load float, ptr %i.bk, align 1, !tbaa !79 ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %1
  %i.bn = load float, ptr %i.bm, align 1, !tbaa !79
  %.scalar389 = fadd float %i.bl, %i.bn
  %.scalar390 = fadd float %i.bh, %i.bj
  %.scalar391 = fadd float %i.b, %.scalar389
  %.scalar392 = fadd float %.scalar390, %.scalar391 ; 2 uses
  %i.bo = fmul float %.scalar392, %.scalar392
  %.scalar434 = fadd float %.scalar433, %i.bo
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %1
  %i.bq = load float, ptr %i.bp, align 1, !tbaa !79
  %i.br = getelementptr inbounds [4 x i8], ptr %i.e, i64 %1
  %i.bs = load float, ptr %i.br, align 1, !tbaa !79 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.n
  %i.bu = load float, ptr %i.bt, align 1, !tbaa !79 ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.n
  %i.bw = load float, ptr %i.bv, align 1, !tbaa !79
  %.scalar393 = fadd float %i.bu, %i.bw
  %.scalar394 = fadd float %i.bq, %i.bs
  %.scalar395 = fadd float %i.b, %.scalar393
  %.scalar396 = fadd float %.scalar394, %.scalar395 ; 2 uses
  %i.bx = fmul float %.scalar396, %.scalar396
  %.scalar435 = fadd float %.scalar434, %i.bx
  %i.by = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.bz = load float, ptr %i.by, align 1, !tbaa !79
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cb = load float, ptr %i.ca, align 1, !tbaa !79
  %.scalar397 = fadd float %i.bc, %i.cb
  %.scalar398 = fadd float %i.ba, %i.bz
  %.scalar399 = fadd float %i.b, %.scalar397
  %.scalar400 = fadd float %.scalar398, %.scalar399 ; 2 uses
  %i.cc = fmul float %.scalar400, %.scalar400
  %.scalar436 = fadd float %.scalar435, %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ce = load float, ptr %i.cd, align 1, !tbaa !79
  %i.cf = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.cg = load float, ptr %i.cf, align 1, !tbaa !79
  %.scalar401 = fadd float %i.at, %i.cg
  %.scalar402 = fadd float %i.ar, %i.ce
  %.scalar403 = fadd float %i.b, %.scalar401
  %.scalar404 = fadd float %.scalar402, %.scalar403 ; 2 uses
  %i.ch = fmul float %.scalar404, %.scalar404
  %.scalar437 = fadd float %.scalar436, %i.ch
  %i.ci = getelementptr inbounds i8, ptr %3, i64 -12
  %i.cj = load float, ptr %i.ci, align 1, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cl = load float, ptr %i.ck, align 1, !tbaa !79
  %.scalar405 = fadd float %i.bl, %i.cl
  %.scalar406 = fadd float %i.cj, %i.bj
  %.scalar407 = fadd float %i.b, %.scalar405
  %.scalar408 = fadd float %.scalar406, %.scalar407 ; 2 uses
  %i.cm = fmul float %.scalar408, %.scalar408
  %.scalar438 = fadd float %.scalar437, %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.co = load float, ptr %i.cn, align 1, !tbaa !79
  %i.cp = getelementptr inbounds i8, ptr %5, i64 -12
  %i.cq = load float, ptr %i.cp, align 1, !tbaa !79
  %.scalar409 = fadd float %i.bs, %i.cq
  %.scalar410 = fadd float %i.co, %i.bu
  %.scalar411 = fadd float %i.b, %.scalar409
  %.scalar412 = fadd float %.scalar410, %.scalar411 ; 2 uses
  %i.cr = fmul float %.scalar412, %.scalar412
  %.scalar439 = fadd float %.scalar438, %i.cr
  %i.cs = getelementptr inbounds i8, ptr %5, i64 -16
  %i.ct = load float, ptr %i.cs, align 1, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load float, ptr %i.cu, align 1, !tbaa !79
  %.scalar413 = fadd float %i.bu, %i.cv
  %.scalar414 = fadd float %i.bs, %i.ct
  %.scalar415 = fadd float %i.b, %.scalar413
  %.scalar416 = fadd float %.scalar414, %.scalar415 ; 2 uses
  %i.cw = fmul float %.scalar416, %.scalar416
  %.scalar440 = fadd float %.scalar439, %i.cw
  %i.cx = getelementptr inbounds i8, ptr %3, i64 -16
  %i.cy = load float, ptr %i.cx, align 1, !tbaa !79
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load float, ptr %i.cz, align 1, !tbaa !79
  %.scalar417 = fadd float %i.bl, %i.da
  %.scalar418 = fadd float %i.bj, %i.cy
  %.scalar419 = fadd float %i.b, %.scalar417
  %.scalar420 = fadd float %.scalar418, %.scalar419 ; 2 uses
  %i.db = fmul float %.scalar420, %.scalar420
  %.scalar441 = fadd float %.scalar440, %i.db
  %i.dc = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.dd = load float, ptr %i.dc, align 1, !tbaa !79
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.df = load float, ptr %i.de, align 1, !tbaa !79
  %.scalar421 = fadd float %i.bc, %i.df
  %.scalar422 = fadd float %i.ba, %i.dd
  %.scalar423 = fadd float %i.b, %.scalar421
  %.scalar424 = fadd float %.scalar422, %.scalar423 ; 2 uses
  %i.dg = fmul float %.scalar424, %.scalar424
  %.scalar442 = fadd float %.scalar441, %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.di = load float, ptr %i.dh, align 1, !tbaa !79
  %i.dj = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.dk = load float, ptr %i.dj, align 1, !tbaa !79
  %.scalar425 = fadd float %i.at, %i.dk
  %.scalar426 = fadd float %i.ar, %i.di
  %.scalar427 = fadd float %i.b, %.scalar425
  %.scalar428 = fadd float %.scalar426, %.scalar427 ; 2 uses
  %i.dl = fmul float %.scalar428, %.scalar428
  %.scalar443 = fadd float %.scalar442, %i.dl
  %i.dm = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar443, i64 0
  ret <4 x float> %i.dm
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #32

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef float @_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #40 {
bb.a:
  %i.a = alloca [108 x float], align 16           ; 74 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = mul i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = icmp ugt i64 %1, 3
  %i.j = icmp ugt i64 %2, 3
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !65
  %i.l = zext i32 %i.k to i64
  %i.m = add nsw i64 %i.l, -4
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  %i.q = zext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, -4
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.e, 2
  %i.u = tail call <4 x float> @_ZN3jxl6N_AVX29MaltaUnitIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl(ptr noundef nonnull %i.h, i64 noundef %i.t) #49
  %i.v = extractelement <4 x float> %i.u, i64 0
  br label %bb.ah

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.w, -4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i64 %1 to i32                     ; 10 uses
  %i.ab = add i32 %i.aa, -4                       ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load i32, ptr %0, align 8
  %.not50 = icmp ule i32 %i.ad, %i.ab
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = add i32 %i.aa, -3                       ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = add i32 %i.aa, -2                       ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = add i32 %i.aa, -1                       ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = icmp slt i32 %i.aa, 0
  %i.ap = and i64 %1, 2147483647
  %i.aq = add i32 %i.aa, 1                        ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = add i32 %i.aa, 2                        ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add i32 %i.aa, 3                        ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = add i32 %i.aa, 4                        ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = zext nneg i32 %i.az to i64
  %brmerge = select i1 %i.ac, i1 true, i1 %.not50
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bd = load float, ptr %i.bc, align 16, !tbaa !79, !alias.scope !1665 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bf = load float, ptr %i.be, align 16, !tbaa !79, !alias.scope !1666
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !79, !alias.scope !1667
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !79, !alias.scope !1668
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !79, !alias.scope !1669 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !79, !alias.scope !1670
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !79, !alias.scope !1671
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.br = load float, ptr %i.bq, align 4, !tbaa !79, !alias.scope !1672
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !79, !alias.scope !1673
  %.scalar.i = fadd float %i.bf, %i.bh
  %.scalar514.i = fadd float %i.bj, %i.bl
  %.scalar515.i = fadd float %.scalar.i, %.scalar514.i
  %.scalar516.i = fadd float %i.bd, %i.bn         ; 3 uses
  %.scalar517.i = fadd float %i.bp, %i.br
  %.scalar518.i = fadd float %.scalar516.i, %.scalar517.i
  %.scalar519.i = fadd float %.scalar515.i, %.scalar518.i
  %.scalar520.i = fadd float %i.bt, %.scalar519.i ; 2 uses
  %i.bu = fmul float %.scalar520.i, %.scalar520.i
  %i.bv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.by = load float, ptr %i.bx, align 16, !tbaa !79, !alias.scope !1674
  %i.bz = load float, ptr %i.bw, align 16, !tbaa !79, !alias.scope !1675
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cc = load float, ptr %i.cb, align 16, !tbaa !79, !alias.scope !1676
  %i.cd = load float, ptr %i.ca, align 16, !tbaa !79, !alias.scope !1677 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !79, !alias.scope !1678
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ch = load float, ptr %i.cg, align 16, !tbaa !79, !alias.scope !1679
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.cj = load float, ptr %i.ci, align 16, !tbaa !79, !alias.scope !1680
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.cl = load float, ptr %i.ck, align 16, !tbaa !79, !alias.scope !1681
  %.scalar521.i = fadd float %i.by, %i.bz
  %.scalar522.i = fadd float %i.cc, %i.cd
  %.scalar523.i = fadd float %.scalar521.i, %.scalar522.i
  %.scalar524.i = fadd float %i.bd, %i.cf         ; 3 uses
  %.scalar525.i = fadd float %i.ch, %i.cj
  %.scalar526.i = fadd float %.scalar524.i, %.scalar525.i
  %.scalar527.i = fadd float %.scalar523.i, %.scalar526.i
  %.scalar528.i = fadd float %i.cl, %.scalar527.i
  %i.cm = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar528.i, i64 0 ; 2 uses
  %i.cn = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cm, <4 x float> %i.cm, <4 x float> %i.bv)
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.cp = load float, ptr %i.co, align 4, !tbaa !79, !alias.scope !1682
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !79, !alias.scope !1683
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79, !alias.scope !1684 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !79, !alias.scope !1685
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !79, !alias.scope !1686
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !79, !alias.scope !1687
  %.scalar529.i = fadd float %i.bd, %i.cv         ; 3 uses
  %.scalar530.i = fadd float %i.cx, %i.cz
  %.scalar531.i = fadd float %.scalar529.i, %.scalar530.i
  %.scalar532.i = fadd float %i.cp, %i.cr
  %.scalar533.i = fadd float %i.ct, %.scalar531.i
  %.scalar534.i = fadd float %.scalar532.i, %.scalar533.i
  %i.da = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar534.i, i64 0 ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.da, <4 x float> %i.da, <4 x float> %i.cn)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !79, !alias.scope !1688
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.df = load float, ptr %i.de, align 8, !tbaa !79, !alias.scope !1689
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !79, !alias.scope !1690 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.dj = load float, ptr %i.di, align 4, !tbaa !79, !alias.scope !1691
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !79, !alias.scope !1692
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !79, !alias.scope !1693
  %.scalar535.i = fadd float %i.bd, %i.dj         ; 3 uses
  %.scalar536.i = fadd float %i.dl, %i.dn
  %.scalar537.i = fadd float %.scalar535.i, %.scalar536.i
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_AVX2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm:bb.a
  %i.gf = icmp sgt i32 %i.ge, -1
  %.not = icmp ugt i32 %i.z, %i.ge
  %or.cond55 = select i1 %i.gf, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.gg = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.gh = zext nneg i32 %i.ge to i64
  %i.gi = mul i64 %i.e, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gi ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gj, i64 64) ]
  %i.gk = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ae
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.gm, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  store float %.sink, ptr %i.gn, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.go = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.go, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ah
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.gq, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store float %.sink73, ptr %i.gs, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gt = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.gt, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ak
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.gv, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %.sink76, ptr %i.gx, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.gy, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.an
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.ha, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store float %.sink79, ptr %i.hc, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = load i32, ptr %0, align 8, !tbaa !65
  %.not50.4 = icmp ugt i32 %i.hd, %i.aa
  br i1 %.not50.4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ap
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sink82 = phi float [ %i.hf, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store float %.sink82, ptr %i.hh, align 16, !tbaa !58
  br i1 %i.ar, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hi = load i32, ptr %0, align 8, !tbaa !65
  %.not50.5 = icmp ugt i32 %i.hi, %i.aq
  br i1 %.not50.5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.as
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.sink85 = phi float [ %i.hk, %bb.x ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  store float %.sink85, ptr %i.hm, align 4, !tbaa !58
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hn = load i32, ptr %0, align 8, !tbaa !65
  %.not50.6 = icmp ugt i32 %i.hn, %i.at
  br i1 %.not50.6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.av
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sink88 = phi float [ %i.hp, %bb.aa ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store float %.sink88, ptr %i.hr, align 8, !tbaa !58
  br i1 %i.ax, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hs = load i32, ptr %0, align 8, !tbaa !65
  %.not50.7 = icmp ugt i32 %i.hs, %i.aw
  br i1 %.not50.7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ay
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink91 = phi float [ %i.hu, %bb.ad ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  store float %.sink91, ptr %i.hw, align 4, !tbaa !58
  br i1 %i.ba, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = load i32, ptr %0, align 8, !tbaa !65
  %.not50.8 = icmp ugt i32 %i.hx, %i.az
  br i1 %.not50.8, label %bb.ag, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.bb
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink94 = phi float [ %i.hz, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  store float %.sink94, ptr %i.ib, align 16, !tbaa !58
  %i.ic = getelementptr [4 x i8], ptr %i.a, i64 %i.gk
  %i.id = getelementptr i8, ptr %i.ic, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, i8 0, i64 12, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit:   ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 9
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !2009

bb.ah:                                            ; preds = %bb.f, %bb.d
  %.0 = phi float [ %i.v, %bb.d ], [ %i.gc, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden <4 x float> @_ZN3jxl6N_AVX29MaltaUnitIN3hwy6N_AVX24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #41 comdat {
bb.a:
  %i.a = mul nsw i64 %1, 3                        ; 2 uses
  %i.b = load float, ptr %0, align 1, !tbaa !79, !alias.scope !2157 ; 16 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.d = load float, ptr %i.c, align 1, !tbaa !79, !alias.scope !2158
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.f = load float, ptr %i.e, align 1, !tbaa !79, !alias.scope !2159
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load float, ptr %i.g, align 1, !tbaa !79, !alias.scope !2160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load float, ptr %i.i, align 1, !tbaa !79, !alias.scope !2161
  %.scalar = fadd float %i.h, %i.j
  %.scalar366 = fadd float %i.d, %i.f
  %.scalar367 = fadd float %i.b, %.scalar
  %.scalar368 = fadd float %.scalar366, %.scalar367 ; 2 uses
  %i.k = fmul float %.scalar368, %.scalar368
  %i.l = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.k, i64 0
  %i.m = sub i64 0, %i.a
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = sub i64 0, %1                            ; 7 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = load float, ptr %i.p, align 1, !tbaa !79, !alias.scope !2162
  %2 = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %3 = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o ; 9 uses
  %i.r = load float, ptr %3, align 1, !tbaa !79, !alias.scope !2163
  %4 = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %5 = getelementptr inbounds [4 x i8], ptr %4, i64 %1 ; 9 uses
  %i.s = load float, ptr %5, align 1, !tbaa !79, !alias.scope !2164
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %1 ; 5 uses
  %i.v = load float, ptr %i.u, align 1, !tbaa !79, !alias.scope !2165
  %.scalar369 = fadd float %i.s, %i.v
  %.scalar370 = fadd float %i.q, %i.r
  %.scalar371 = fadd float %i.b, %.scalar369
  %.scalar372 = fadd float %.scalar370, %.scalar371
  %i.w = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar372, i64 0 ; 2 uses
  %i.x = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.w, <4 x float> %i.w, <4 x float> %i.l)
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -12
  %i.z = load float, ptr %i.y, align 1, !tbaa !79, !alias.scope !2166
  %i.aa = getelementptr inbounds i8, ptr %3, i64 -8
  %i.ab = load float, ptr %i.aa, align 1, !tbaa !79, !alias.scope !2167
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load float, ptr %i.ac, align 1, !tbaa !79, !alias.scope !2168
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.af = load float, ptr %i.ae, align 1, !tbaa !79, !alias.scope !2169
  %.scalar373 = fadd float %i.ad, %i.af
  %.scalar374 = fadd float %i.z, %i.ab
  %.scalar375 = fadd float %i.b, %.scalar373
  %.scalar376 = fadd float %.scalar374, %.scalar375
  %i.ag = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar376, i64 0 ; 2 uses
  %i.ah = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ag, <4 x float> %i.ag, <4 x float> %i.x)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.aj = load float, ptr %i.ai, align 1, !tbaa !79, !alias.scope !2170
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load float, ptr %i.ak, align 1, !tbaa !79, !alias.scope !2171
  %i.am = getelementptr inbounds i8, ptr %5, i64 -8
  %i.an = load float, ptr %i.am, align 1, !tbaa !79, !alias.scope !2172
  %i.ao = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.ap = load float, ptr %i.ao, align 1, !tbaa !79, !alias.scope !2173
  %.scalar377 = fadd float %i.an, %i.ap
  %.scalar378 = fadd float %i.aj, %i.al
  %.scalar379 = fadd float %i.b, %.scalar377
  %.scalar380 = fadd float %.scalar378, %.scalar379
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar380, i64 0 ; 2 uses
  %i.ar = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aq, <4 x float> %i.aq, <4 x float> %i.ah)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.at = load float, ptr %i.as, align 1, !tbaa !79, !alias.scope !2174
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.av = load float, ptr %i.au, align 1, !tbaa !79, !alias.scope !2175 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %5, i64 -4
  %i.ax = load float, ptr %i.aw, align 1, !tbaa !79, !alias.scope !2176 ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.az = load float, ptr %i.ay, align 1, !tbaa !79, !alias.scope !2177
  %.scalar381 = fadd float %i.ax, %i.az
  %.scalar382 = fadd float %i.at, %i.av
  %.scalar383 = fadd float %i.b, %.scalar381
  %.scalar384 = fadd float %.scalar382, %.scalar383
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar384, i64 0 ; 2 uses
  %i.bb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ba, <4 x float> %i.ba, <4 x float> %i.ar)
  %i.bc = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.bd = load float, ptr %i.bc, align 1, !tbaa !79, !alias.scope !2178
  %i.be = getelementptr inbounds i8, ptr %3, i64 -4
  %i.bf = load float, ptr %i.be, align 1, !tbaa !79, !alias.scope !2179 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bh = load float, ptr %i.bg, align 1, !tbaa !79, !alias.scope !2180 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bj = load float, ptr %i.bi, align 1, !tbaa !79, !alias.scope !2181
  %.scalar385 = fadd float %i.bh, %i.bj
  %.scalar386 = fadd float %i.bd, %i.bf
  %.scalar387 = fadd float %i.b, %.scalar385
  %.scalar388 = fadd float %.scalar386, %.scalar387
  %i.bk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar388, i64 0 ; 2 uses
  %i.bl = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bk, <4 x float> %i.bk, <4 x float> %i.bb)
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.o
  %i.bn = load float, ptr %i.bm, align 1, !tbaa !79, !alias.scope !2182
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.o
  %i.bp = load float, ptr %i.bo, align 1, !tbaa !79, !alias.scope !2183 ; 3 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  %i.br = load float, ptr %i.bq, align 1, !tbaa !79, !alias.scope !2184 ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %1
  %i.bt = load float, ptr %i.bs, align 1, !tbaa !79, !alias.scope !2185
  %.scalar389 = fadd float %i.br, %i.bt
  %.scalar390 = fadd float %i.bn, %i.bp
  %.scalar391 = fadd float %i.b, %.scalar389
  %.scalar392 = fadd float %.scalar390, %.scalar391
  %i.bu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar392, i64 0 ; 2 uses
  %i.bv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bu, <4 x float> %i.bu, <4 x float> %i.bl)
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %1
  %i.bx = load float, ptr %i.bw, align 1, !tbaa !79, !alias.scope !2186
  %i.by = getelementptr inbounds [4 x i8], ptr %i.e, i64 %1
  %i.bz = load float, ptr %i.by, align 1, !tbaa !79, !alias.scope !2187 ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.o
  %i.cb = load float, ptr %i.ca, align 1, !tbaa !79, !alias.scope !2188 ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o
  %i.cd = load float, ptr %i.cc, align 1, !tbaa !79, !alias.scope !2189
  %.scalar393 = fadd float %i.cb, %i.cd
  %.scalar394 = fadd float %i.bx, %i.bz
  %.scalar395 = fadd float %i.b, %.scalar393
  %.scalar396 = fadd float %.scalar394, %.scalar395
  %i.ce = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar396, i64 0 ; 2 uses
  %i.cf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ce, <4 x float> %i.ce, <4 x float> %i.bv)
  %i.cg = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.ch = load float, ptr %i.cg, align 1, !tbaa !79, !alias.scope !2190
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cj = load float, ptr %i.ci, align 1, !tbaa !79, !alias.scope !2191
  %.scalar397 = fadd float %i.bh, %i.cj
  %.scalar398 = fadd float %i.bf, %i.ch
  %.scalar399 = fadd float %i.b, %.scalar397
  %.scalar400 = fadd float %.scalar398, %.scalar399
  %i.ck = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar400, i64 0 ; 2 uses
  %i.cl = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ck, <4 x float> %i.ck, <4 x float> %i.cf)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cn = load float, ptr %i.cm, align 1, !tbaa !79, !alias.scope !2192
  %i.co = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.cp = load float, ptr %i.co, align 1, !tbaa !79, !alias.scope !2193
  %.scalar401 = fadd float %i.ax, %i.cp
  %.scalar402 = fadd float %i.av, %i.cn
  %.scalar403 = fadd float %i.b, %.scalar401
  %.scalar404 = fadd float %.scalar402, %.scalar403
  %i.cq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar404, i64 0 ; 2 uses
  %i.cr = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cq, <4 x float> %i.cq, <4 x float> %i.cl)
  %i.cs = getelementptr inbounds i8, ptr %3, i64 -12
  %i.ct = load float, ptr %i.cs, align 1, !tbaa !79, !alias.scope !2194
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cv = load float, ptr %i.cu, align 1, !tbaa !79, !alias.scope !2195
  %.scalar405 = fadd float %i.br, %i.cv
  %.scalar406 = fadd float %i.ct, %i.bp
  %.scalar407 = fadd float %i.b, %.scalar405
  %.scalar408 = fadd float %.scalar406, %.scalar407
  %i.cw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar408, i64 0 ; 2 uses
  %i.cx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cw, <4 x float> %i.cw, <4 x float> %i.cr)
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cz = load float, ptr %i.cy, align 1, !tbaa !79, !alias.scope !2196
  %i.da = getelementptr inbounds i8, ptr %5, i64 -12
  %i.db = load float, ptr %i.da, align 1, !tbaa !79, !alias.scope !2197
  %.scalar409 = fadd float %i.bz, %i.db
  %.scalar410 = fadd float %i.cz, %i.cb
  %.scalar411 = fadd float %i.b, %.scalar409
  %.scalar412 = fadd float %.scalar410, %.scalar411
  %i.dc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar412, i64 0 ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dc, <4 x float> %i.dc, <4 x float> %i.cx)
  %i.de = getelementptr inbounds i8, ptr %5, i64 -16
  %i.df = load float, ptr %i.de, align 1, !tbaa !79, !alias.scope !2198
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = load float, ptr %i.dg, align 1, !tbaa !79, !alias.scope !2199
  %.scalar413 = fadd float %i.cb, %i.dh
  %.scalar414 = fadd float %i.bz, %i.df
  %.scalar415 = fadd float %i.b, %.scalar413
  %.scalar416 = fadd float %.scalar414, %.scalar415
  %i.di = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar416, i64 0 ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.di, <4 x float> %i.di, <4 x float> %i.dd)
  %i.dk = getelementptr inbounds i8, ptr %3, i64 -16
  %i.dl = load float, ptr %i.dk, align 1, !tbaa !79, !alias.scope !2200
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dn = load float, ptr %i.dm, align 1, !tbaa !79, !alias.scope !2201
  %.scalar417 = fadd float %i.br, %i.dn
  %.scalar418 = fadd float %i.bp, %i.dl
  %.scalar419 = fadd float %i.b, %.scalar417
  %.scalar420 = fadd float %.scalar418, %.scalar419
  %i.do = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar420, i64 0 ; 2 uses
  %i.dp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.do, <4 x float> %i.do, <4 x float> %i.dj)
  %i.dq = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.dr = load float, ptr %i.dq, align 1, !tbaa !79, !alias.scope !2202
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dt = load float, ptr %i.ds, align 1, !tbaa !79, !alias.scope !2203
  %.scalar421 = fadd float %i.bh, %i.dt
  %.scalar422 = fadd float %i.bf, %i.dr
  %.scalar423 = fadd float %i.b, %.scalar421
  %.scalar424 = fadd float %.scalar422, %.scalar423
  %i.du = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar424, i64 0 ; 2 uses
  %i.dv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.du, <4 x float> %i.du, <4 x float> %i.dp)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dx = load float, ptr %i.dw, align 1, !tbaa !79, !alias.scope !2204
  %i.dy = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.dz = load float, ptr %i.dy, align 1, !tbaa !79, !alias.scope !2205
  %.scalar425 = fadd float %i.ax, %i.dz
  %.scalar426 = fadd float %i.av, %i.dx
  %.scalar427 = fadd float %i.b, %.scalar425
  %.scalar428 = fadd float %.scalar426, %.scalar427
  %i.ea = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar428, i64 0 ; 2 uses
  %i.eb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ea, <4 x float> %i.ea, <4 x float> %i.dv)
  ret <4 x float> %i.eb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #42 {
bb.a:
  %i.a = alloca [108 x float], align 16           ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = mul i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = icmp ugt i64 %1, 3
  %i.j = icmp ugt i64 %2, 3
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !65
  %i.l = zext i32 %i.k to i64
  %i.m = add nsw i64 %i.l, -4
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  %i.q = zext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, -4
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.e, 2
  %i.u = tail call <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl(ptr noundef nonnull %i.h, i64 noundef %i.t) #49
  %i.v = extractelement <4 x float> %i.u, i64 0
  br label %bb.ah

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.w, -4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i64 %1 to i32                     ; 10 uses
  %i.ab = add i32 %i.aa, -4                       ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load i32, ptr %0, align 8
  %.not50 = icmp ule i32 %i.ad, %i.ab
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = add i32 %i.aa, -3                       ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = add i32 %i.aa, -2                       ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = add i32 %i.aa, -1                       ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = icmp slt i32 %i.aa, 0
  %i.ap = and i64 %1, 2147483647
  %i.aq = add i32 %i.aa, 1                        ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = add i32 %i.aa, 2                        ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add i32 %i.aa, 3                        ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = add i32 %i.aa, 4                        ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = zext nneg i32 %i.az to i64
  %brmerge = select i1 %i.ac, i1 true, i1 %.not50
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bd = call <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl(ptr noundef nonnull %i.bc, i64 noundef 12) #49
  %i.be = extractelement <4 x float> %i.bd, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ah

bb.g:                                             ; preds = %bb.e, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %indvar = phi i64 [ 0, %bb.e ], [ %indvar.next, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvar to i32
  %i.bg = add i32 %i.x, %i.bf                     ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  %.not = icmp ugt i32 %i.z, %i.bg
  %or.cond55 = select i1 %i.bh, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.bi = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = mul i64 %i.e, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %i.bm = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ae
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.bo, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  store float %.sink, ptr %i.bp, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.bq, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ah
  %i.bs = load float, ptr %i.br, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.bs, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %.sink73, ptr %i.bu, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.bv, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ak
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.bx, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store float %.sink76, ptr %i.bz, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.ca, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.an
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.cc, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store float %.sink79, ptr %i.ce, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i32, ptr %0, align 8, !tbaa !65
end_hunk_4
begin_hunk_5_@_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm:bb.a
  br label %bb.ah

bb.g:                                             ; preds = %bb.e, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %indvar = phi i64 [ 0, %bb.e ], [ %indvar.next, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit ] ; 4 uses
  %i.gq = trunc nuw nsw i64 %indvar to i32
  %i.gr = add i32 %i.x, %i.gq                     ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, -1
  %.not = icmp ugt i32 %i.z, %i.gr
  %or.cond55 = select i1 %i.gs, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.gt = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.gu = zext nneg i32 %i.gr to i64
  %i.gv = mul i64 %i.e, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gv ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gw, i64 64) ]
  %i.gx = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ae
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.gz, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  store float %.sink, ptr %i.ha, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hb = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.hb, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ah
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.hd, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store float %.sink73, ptr %i.hf, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hg = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.hg, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ak
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.hi, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %.sink76, ptr %i.hk, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hl = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.hl, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.an
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.hn, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store float %.sink79, ptr %i.hp, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hq = load i32, ptr %0, align 8, !tbaa !65
  %.not50.4 = icmp ugt i32 %i.hq, %i.aa
  br i1 %.not50.4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ap
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sink82 = phi float [ %i.hs, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store float %.sink82, ptr %i.hu, align 16, !tbaa !58
  br i1 %i.ar, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = load i32, ptr %0, align 8, !tbaa !65
  %.not50.5 = icmp ugt i32 %i.hv, %i.aq
  br i1 %.not50.5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.as
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.sink85 = phi float [ %i.hx, %bb.x ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  store float %.sink85, ptr %i.hz, align 4, !tbaa !58
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ia = load i32, ptr %0, align 8, !tbaa !65
  %.not50.6 = icmp ugt i32 %i.ia, %i.at
  br i1 %.not50.6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.av
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sink88 = phi float [ %i.ic, %bb.aa ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store float %.sink88, ptr %i.ie, align 8, !tbaa !58
  br i1 %i.ax, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = load i32, ptr %0, align 8, !tbaa !65
  %.not50.7 = icmp ugt i32 %i.if, %i.aw
  br i1 %.not50.7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ay
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink91 = phi float [ %i.ih, %bb.ad ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 28
  store float %.sink91, ptr %i.ij, align 4, !tbaa !58
  br i1 %i.ba, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ik = load i32, ptr %0, align 8, !tbaa !65
  %.not50.8 = icmp ugt i32 %i.ik, %i.az
  br i1 %.not50.8, label %bb.ag, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.bb
  %i.im = load float, ptr %i.il, align 4, !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink94 = phi float [ %i.im, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store float %.sink94, ptr %i.io, align 16, !tbaa !58
  %i.ip = getelementptr [4 x i8], ptr %i.a, i64 %i.gx
  %i.iq = getelementptr i8, ptr %i.ip, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iq, i8 0, i64 12, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit:   ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 9
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !2391

bb.ah:                                            ; preds = %bb.f, %bb.d
  %.0 = phi float [ %i.v, %bb.d ], [ %i.gp, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = mul nsw i64 %1, 3                        ; 2 uses
  %i.b = load float, ptr %0, align 1, !tbaa !79, !alias.scope !2509
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.d = load float, ptr %i.c, align 1, !tbaa !79, !alias.scope !2510
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.f = load float, ptr %i.e, align 1, !tbaa !79, !alias.scope !2511
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load float, ptr %i.g, align 1, !tbaa !79, !alias.scope !2512
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load float, ptr %i.i, align 1, !tbaa !79, !alias.scope !2513
  %i.k = sub i64 0, %i.a
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k ; 5 uses
  %i.m = sub i64 0, %1                            ; 7 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m ; 5 uses
  %i.o = load float, ptr %i.n, align 1, !tbaa !79, !alias.scope !2514
  %2 = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m
  %3 = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 9 uses
  %i.p = load float, ptr %3, align 1, !tbaa !79, !alias.scope !2515
  %4 = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %5 = getelementptr inbounds [4 x i8], ptr %4, i64 %1 ; 9 uses
  %i.q = load float, ptr %5, align 1, !tbaa !79, !alias.scope !2516
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 5 uses
  %i.t = load float, ptr %i.s, align 1, !tbaa !79, !alias.scope !2517
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 -12
  %i.v = load float, ptr %i.u, align 1, !tbaa !79, !alias.scope !2518
  %i.w = getelementptr inbounds i8, ptr %3, i64 -8
  %i.x = load float, ptr %i.w, align 1, !tbaa !79, !alias.scope !2519
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load float, ptr %i.y, align 1, !tbaa !79, !alias.scope !2520
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ab = load float, ptr %i.aa, align 1, !tbaa !79, !alias.scope !2521
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ad = load float, ptr %i.ac, align 1, !tbaa !79, !alias.scope !2522
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 1, !tbaa !79, !alias.scope !2523
  %i.ag = getelementptr inbounds i8, ptr %5, i64 -8
  %i.ah = load float, ptr %i.ag, align 1, !tbaa !79, !alias.scope !2524
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.aj = load float, ptr %i.ai, align 1, !tbaa !79, !alias.scope !2525
  %i.ak = insertelement <4 x float> poison, float %i.h, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.q, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.z, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.ah, i64 3
  %i.ao = insertelement <4 x float> poison, float %i.j, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.t, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ab, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.aj, i64 3
  %i.as = fadd <4 x float> %i.an, %i.ar
  %i.at = insertelement <4 x float> poison, float %i.d, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.o, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.v, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.ad, i64 3
  %i.ax = insertelement <4 x float> poison, float %i.f, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.p, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.x, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.af, i64 3
  %i.bb = fadd <4 x float> %i.aw, %i.ba
  %i.bc = insertelement <4 x float> poison, float %i.b, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.be = fadd <4 x float> %i.bd, %i.as
  %i.bf = fadd <4 x float> %i.bb, %i.be           ; 2 uses
  %i.bg = fmul <4 x float> %i.bf, %i.bf           ; 4 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bi = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bj = fadd <4 x float> %i.bh, %i.bi
  %i.bk = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bg, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bl = fadd <4 x float> %i.bj, %i.bk
  %i.bm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bg, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.bn = fadd <4 x float> %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bp = load float, ptr %i.bo, align 1, !tbaa !79, !alias.scope !2526
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = load float, ptr %i.bq, align 1, !tbaa !79, !alias.scope !2527 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %5, i64 -4
  %i.bt = load float, ptr %i.bs, align 1, !tbaa !79, !alias.scope !2528 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.bv = load float, ptr %i.bu, align 1, !tbaa !79, !alias.scope !2529
  %i.bw = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.bx = load float, ptr %i.bw, align 1, !tbaa !79, !alias.scope !2530
  %i.by = getelementptr inbounds i8, ptr %3, i64 -4
  %i.bz = load float, ptr %i.by, align 1, !tbaa !79, !alias.scope !2531 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cb = load float, ptr %i.ca, align 1, !tbaa !79, !alias.scope !2532 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.cd = load float, ptr %i.cc, align 1, !tbaa !79, !alias.scope !2533
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.m
  %i.cf = load float, ptr %i.ce, align 1, !tbaa !79, !alias.scope !2534
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.m
  %i.ch = load float, ptr %i.cg, align 1, !tbaa !79, !alias.scope !2535 ; 3 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  %i.cj = load float, ptr %i.ci, align 1, !tbaa !79, !alias.scope !2536 ; 3 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.i, i64 %1
  %i.cl = load float, ptr %i.ck, align 1, !tbaa !79, !alias.scope !2537
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %1
  %i.cn = load float, ptr %i.cm, align 1, !tbaa !79, !alias.scope !2538
  %i.co = getelementptr inbounds [4 x i8], ptr %i.e, i64 %1
  %i.cp = load float, ptr %i.co, align 1, !tbaa !79, !alias.scope !2539 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.cr = load float, ptr %i.cq, align 1, !tbaa !79, !alias.scope !2540 ; 3 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m
  %i.ct = load float, ptr %i.cs, align 1, !tbaa !79, !alias.scope !2541
  %i.cu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cb, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cj, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.cr, i64 3
  %i.cy = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cd, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.cl, i64 2
  %i.db = insertelement <4 x float> %i.da, float %i.ct, i64 3
  %i.dc = fadd <4 x float> %i.cx, %i.db
  %i.dd = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.bx, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.cf, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.cn, i64 3
  %i.dh = insertelement <4 x float> poison, float %i.br, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.bz, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.ch, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.cp, i64 3
  %i.dl = fadd <4 x float> %i.dg, %i.dk
  %i.dm = fadd <4 x float> %i.bd, %i.dc
  %i.dn = fadd <4 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = fmul <4 x float> %i.dn, %i.dn           ; 4 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dq = fadd <4 x float> %i.bn, %i.dp
  %i.dr = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.do, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ds = fadd <4 x float> %i.dq, %i.dr
  %i.dt = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.do, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.du = fadd <4 x float> %i.ds, %i.dt
  %i.dv = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.do, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.dw = fadd <4 x float> %i.du, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.dy = load float, ptr %i.dx, align 1, !tbaa !79, !alias.scope !2542
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ea = load float, ptr %i.dz, align 1, !tbaa !79, !alias.scope !2543
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ec = load float, ptr %i.eb, align 1, !tbaa !79, !alias.scope !2544
  %i.ed = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ee = load float, ptr %i.ed, align 1, !tbaa !79, !alias.scope !2545
  %i.ef = getelementptr inbounds i8, ptr %3, i64 -12
  %i.eg = load float, ptr %i.ef, align 1, !tbaa !79, !alias.scope !2546
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ei = load float, ptr %i.eh, align 1, !tbaa !79, !alias.scope !2547
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ek = load float, ptr %i.ej, align 1, !tbaa !79, !alias.scope !2548
  %i.el = getelementptr inbounds i8, ptr %5, i64 -12
  %i.em = load float, ptr %i.el, align 1, !tbaa !79, !alias.scope !2549
  %i.en = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.ee, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.cj, i64 2
  %i.eq = insertelement <4 x float> %i.ep, float %i.cp, i64 3
  %i.er = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.bt, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ei, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.em, i64 3
  %i.ev = fadd <4 x float> %i.eq, %i.eu
  %i.ew = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.br, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.eg, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.ek, i64 3
  %i.fa = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.ec, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ch, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.cr, i64 3
  %i.fe = fadd <4 x float> %i.ez, %i.fd
  %i.ff = fadd <4 x float> %i.bd, %i.ev
  %i.fg = fadd <4 x float> %i.fe, %i.ff           ; 2 uses
  %i.fh = fmul <4 x float> %i.fg, %i.fg           ; 4 uses
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fj = fadd <4 x float> %i.dw, %i.fi
  %i.fk = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fl = fadd <4 x float> %i.fj, %i.fk
  %i.fm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fn = fadd <4 x float> %i.fl, %i.fm
  %i.fo = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.fp = fadd <4 x float> %i.fn, %i.fo
  %i.fq = getelementptr inbounds i8, ptr %5, i64 -16
  %i.fr = load float, ptr %i.fq, align 1, !tbaa !79, !alias.scope !2550
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ft = load float, ptr %i.fs, align 1, !tbaa !79, !alias.scope !2551
  %i.fu = getelementptr inbounds i8, ptr %3, i64 -16
  %i.fv = load float, ptr %i.fu, align 1, !tbaa !79, !alias.scope !2552
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fx = load float, ptr %i.fw, align 1, !tbaa !79, !alias.scope !2553
  %i.fy = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.fz = load float, ptr %i.fy, align 1, !tbaa !79, !alias.scope !2554
  %i.ga = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gb = load float, ptr %i.ga, align 1, !tbaa !79, !alias.scope !2555
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gd = load float, ptr %i.gc, align 1, !tbaa !79, !alias.scope !2556
  %i.ge = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.gf = load float, ptr %i.ge, align 1, !tbaa !79, !alias.scope !2557
  %i.gg = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.fx, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.cb, i64 2
  %i.gj = insertelement <4 x float> %i.gi, float %i.bt, i64 3
  %i.gk = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.cj, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.gb, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.gf, i64 3
  %i.go = fadd <4 x float> %i.gj, %i.gn
  %i.gp = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.gq = insertelement <4 x float> %i.gp, float %i.fv, i64 1
  %i.gr = insertelement <4 x float> %i.gq, float %i.bz, i64 2
  %i.gs = insertelement <4 x float> %i.gr, float %i.br, i64 3
  %i.gt = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.ch, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.fz, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.gd, i64 3
  %i.gx = fadd <4 x float> %i.gs, %i.gw
  %i.gy = fadd <4 x float> %i.bd, %i.go
  %i.gz = fadd <4 x float> %i.gx, %i.gy           ; 2 uses
  %i.ha = fmul <4 x float> %i.gz, %i.gz           ; 4 uses
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hc = fadd <4 x float> %i.fp, %i.hb
  %i.hd = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ha, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.he = fadd <4 x float> %i.hc, %i.hd
  %i.hf = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ha, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.hg = fadd <4 x float> %i.he, %i.hf
  %i.hh = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ha, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.hi = fadd <4 x float> %i.hg, %i.hh
  ret <4 x float> %i.hi
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #35 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #36 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #40 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #41 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #45 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #46 = { nounwind }
attributes #47 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #48 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #49 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { "function-inline-cost-multiplier"="2" "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}
!llvm.errno.tbaa = !{!49}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60}
!8 = distinct !{!8, !60}
!9 = distinct !{!9, !60}
!10 = distinct !{!10, !60}
!11 = distinct !{!11, !60}
!12 = distinct !{!12, !60}
!13 = distinct !{!13, !60}
!14 = distinct !{!14, !60}
!15 = distinct !{!15, !60}
!16 = distinct !{!16, !60}
!17 = distinct !{!17, !60}
!18 = distinct !{!18, !60}
!19 = distinct !{!19, !60}
!20 = distinct !{!20, !60}
!21 = distinct !{!21, !60}
!22 = distinct !{!22, !60}
!23 = distinct !{!23, !60}
!24 = distinct !{!24, !60}
!25 = distinct !{!25, !60}
!26 = distinct !{!26, !60}
!27 = distinct !{!27, !60}
!28 = distinct !{!28, !60}
!29 = distinct !{!29, !60}
!30 = distinct !{!30, !60}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60}
!33 = distinct !{!33, !60}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !60}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !60}
!39 = distinct !{!39, !60}
!40 = distinct !{ptr @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, null, null, null}
!41 = !{i32 8, !"PIC Level", i32 2}
end_hunk_5
