inline.NumInlined: 945
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv8ximgproc2rl5paintERKNS_17_InputOutputArrayERKNS_11_InputArrayERKNS_7Scalar_IdEE:bb.a
  %cmp.n250 = icmp eq i64 %i.ej, %n.vec242
  br i1 %cmp.n250, label %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block249
  %.06.i.i.i.i.ph = phi ptr [ %i.ed, %iter.check237 ], [ %i.em, %vec.epilog.iter.check239 ], [ %i.er, %vec.epilog.middle.block249 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i16 %i.df, ptr %.06.i.i.i.i, align 2, !tbaa !71
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.eu, %i.eb
  br i1 %.not.i.i.i.i65, label %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZSt4fillIPttEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i, %middle.block233, %vec.epilog.middle.block249, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.01828.i58, i64 12
  %i.ew = add nuw nsw i32 %.029.i57, 1
  %exitcond.not.i61 = icmp eq i32 %.029.i57, %i.do
  br i1 %exitcond.not.i61, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ad, !llvm.loop !79

.lr.ph.i66:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.ex = fptosi double %i.k to i16               ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = add nsw i32 %i.f, -2
  %broadcast.splatinsert204 = insertelement <8 x i16> poison, i16 %i.ex, i64 0
  %broadcast.splat205 = shufflevector <8 x i16> %broadcast.splatinsert204, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert214 = insertelement <4 x i16> poison, i16 %i.ex, i64 0
  %broadcast.splat215 = shufflevector <4 x i16> %broadcast.splatinsert214, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, %.lr.ph.i66
  %.029.i67 = phi i32 [ 0, %.lr.ph.i66 ], [ %i.go, %_ZSt4fillIPssEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01828.i68 = phi ptr [ %.0.i, %.lr.ph.i66 ], [ %i.gn, %_ZSt4fillIPssEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !51 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  %.not.i69 = icmp slt i32 %i.fi, %i.ez
  %or.cond.i70 = select i1 %i.fj, i1 %.not.i69, i1 false
  br i1 %or.cond.i70, label %bb.ai, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fk = load i32, ptr %.01828.i68, align 4, !tbaa !67 ; 2 uses
  %.not20.i72 = icmp slt i32 %i.fk, %i.fb
  br i1 %.not20.i72, label %bb.aj, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !68 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = zext nneg i32 %i.fi to i64
  %i.fp = mul i64 %i.ff, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fp ; 2 uses
  %.sroa.speculated24.i73 = call i32 @llvm.smax.i32(i32 %i.fk, i32 0) ; 2 uses
  %i.fr = add nuw nsw i32 %i.fm, 1
  %.sroa.speculated.i74 = call i32 @llvm.smin.i32(i32 %i.fb, i32 %i.fr) ; 2 uses
  %i.fs = sext i32 %.sroa.speculated.i74 to i64   ; 2 uses
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fs
  %.not5.i.i.i.i75 = icmp eq i32 %.sroa.speculated24.i73, %.sroa.speculated.i74
  br i1 %.not5.i.i.i.i75, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %i.fu = zext nneg i32 %.sroa.speculated24.i73 to i64 ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fu ; 5 uses
  %i.fw = shl nsw i64 %i.fs, 1
  %i.fx = add nsw i64 %i.fw, -2
  %i.fy = shl nuw nsw i64 %i.fu, 1
  %i.fz = sub nsw i64 %i.fx, %i.fy                ; 3 uses
  %i.ga = lshr exact i64 %i.fz, 1
  %i.gb = add nuw i64 %i.ga, 1                    ; 5 uses
  %min.iters.check200 = icmp ult i64 %i.fz, 6
  br i1 %min.iters.check200, label %.lr.ph.i.i.i.i77.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check201 = icmp ult i64 %i.fz, 30
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph202

vector.ph202:                                     ; preds = %vector.main.loop.iter.check
  %i.gc = and i64 %i.gb, 12
  %n.vec203 = and i64 %i.gb, -16                  ; 4 uses
  %i.gd = shl i64 %n.vec203, 1
  %i.ge = getelementptr i8, ptr %i.fv, i64 %i.gd
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next209, %vector.body206 ] ; 2 uses
  %i.gf = shl i64 %index207, 1
  %next.gep208 = getelementptr i8, ptr %i.fv, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep208, i64 16
  store <8 x i16> %broadcast.splat205, ptr %next.gep208, align 2, !tbaa !71
  store <8 x i16> %broadcast.splat205, ptr %i.gg, align 2, !tbaa !71
  %index.next209 = add nuw i64 %index207, 16      ; 2 uses
  %i.gh = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.gh, label %middle.block210, label %vector.body206, !llvm.loop !80

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %i.gb, %n.vec203
  br i1 %cmp.n211, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block210
  %min.epilog.iters.check = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i77.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec203, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec213 = and i64 %i.gb, -4                   ; 3 uses
  %i.gi = shl i64 %n.vec213, 1
  %i.gj = getelementptr i8, ptr %i.fv, i64 %i.gi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 2 uses
  %i.gk = shl i64 %index216, 1
  %next.gep217 = getelementptr i8, ptr %i.fv, i64 %i.gk
  store <4 x i16> %broadcast.splat215, ptr %next.gep217, align 2, !tbaa !71
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n219 = icmp eq i64 %i.gb, %n.vec213
  br i1 %cmp.n219, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i77.preheader

.lr.ph.i.i.i.i77.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i78.ph = phi ptr [ %i.fv, %iter.check ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.06.i.i.i.i78 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i77 ], [ %.06.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 2 uses
  store i16 %i.ex, ptr %.06.i.i.i.i78, align 2, !tbaa !71
  %i.gm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i78, i64 2 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.gm, %i.ft
  br i1 %.not.i.i.i.i79, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i77, !llvm.loop !82

_ZSt4fillIPssEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i77, %middle.block210, %vec.epilog.middle.block, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 12
  %i.go = add nuw nsw i32 %.029.i67, 1
  %exitcond.not.i71 = icmp eq i32 %.029.i67, %i.fg
  br i1 %exitcond.not.i71, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ah, !llvm.loop !83

.lr.ph.i80:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.gp = fptosi double %i.k to i32               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = add nsw i32 %i.f, -2
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.gp, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, %.lr.ph.i80
  %.029.i81 = phi i32 [ 0, %.lr.ph.i80 ], [ %i.hx, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01828.i82 = phi ptr [ %.0.i, %.lr.ph.i80 ], [ %i.hw, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !51 ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, -1
  %i.ha = load i32, ptr %i.gq, align 8
  %.not.i83 = icmp slt i32 %i.gy, %i.ha
  %or.cond118 = select i1 %i.gz, i1 %.not.i83, i1 false
  br i1 %or.cond118, label %bb.am, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.hb = load i32, ptr %.01828.i82, align 4, !tbaa !67 ; 2 uses
  %i.hc = load i32, ptr %i.gr, align 4, !tbaa !28 ; 2 uses
  %.not20.i85 = icmp slt i32 %i.hb, %i.hc
  br i1 %.not20.i85, label %bb.an, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i

bb.an:                                            ; preds = %bb.am
  %i.hd = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !68 ; 2 uses
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hg = zext nneg i32 %i.gy to i64
  %i.hh = mul i64 %i.gv, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hh ; 2 uses
  %.sroa.speculated24.i86 = call i32 @llvm.smax.i32(i32 %i.hb, i32 0) ; 2 uses
  %i.hj = add nuw nsw i32 %i.he, 1
  %.sroa.speculated.i87 = call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hj) ; 2 uses
  %i.hk = sext i32 %.sroa.speculated.i87 to i64   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.hk
  %.not5.i.i.i.i88 = icmp eq i32 %.sroa.speculated24.i86, %.sroa.speculated.i87
  br i1 %.not5.i.i.i.i88, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i89

.lr.ph.i.i.i.preheader.i89:                       ; preds = %bb.ao
  %i.hm = zext nneg i32 %.sroa.speculated24.i86 to i64 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hm ; 3 uses
  %8 = shl nsw i64 %i.hk, 2
  %i.ho = add nsw i64 %8, -4
  %9 = shl nuw nsw i64 %i.hm, 2
  %10 = sub nsw i64 %i.ho, %9                     ; 2 uses
  %11 = lshr exact i64 %10, 2
  %i.hp = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check187 = icmp ult i64 %10, 28
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i90.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.i.i.i.preheader.i89
  %n.vec189 = and i64 %i.hp, 9223372036854775800  ; 3 uses
  %i.hq = shl i64 %n.vec189, 2
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hq
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.hs = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %i.hn, i64 %i.hs ; 2 uses
  %i.ht = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %broadcast.splat191, ptr %next.gep194, align 4, !tbaa !50
  store <4 x i32> %broadcast.splat191, ptr %i.ht, align 4, !tbaa !50
  %index.next195 = add nuw i64 %index193, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.hu, label %middle.block196, label %vector.body192, !llvm.loop !84

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.hp, %n.vec189
  br i1 %cmp.n197, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i90.preheader

.lr.ph.i.i.i.i90.preheader:                       ; preds = %.lr.ph.i.i.i.preheader.i89, %middle.block196
  %.06.i.i.i.i91.ph = phi ptr [ %i.hn, %.lr.ph.i.i.i.preheader.i89 ], [ %i.hr, %middle.block196 ]
  br label %.lr.ph.i.i.i.i90

.lr.ph.i.i.i.i90:                                 ; preds = %.lr.ph.i.i.i.i90.preheader, %.lr.ph.i.i.i.i90
  %.06.i.i.i.i91 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i90 ], [ %.06.i.i.i.i91.ph, %.lr.ph.i.i.i.i90.preheader ] ; 2 uses
  store i32 %i.gp, ptr %.06.i.i.i.i91, align 4, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i91, i64 4 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.hv, %i.hl
  br i1 %.not.i.i.i.i92, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i90, !llvm.loop !85

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i90, %middle.block196, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.hw = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 12
  %i.hx = add nuw nsw i32 %.029.i81, 1
  %exitcond.not.i84 = icmp eq i32 %.029.i81, %i.gw
  br i1 %exitcond.not.i84, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.al, !llvm.loop !86

.lr.ph.i93:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.hy = fptrunc double %i.k to float            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ic = load i32, ptr %i.ib, align 4            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = add nsw i32 %i.f, -2
  %broadcast.splatinsert177 = insertelement <4 x float> poison, float %i.hy, i64 0
  %broadcast.splat178 = shufflevector <4 x float> %broadcast.splatinsert177, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, %.lr.ph.i93
  %.028.i = phi i32 [ 0, %.lr.ph.i93 ], [ %i.jg, %_ZSt4fillIPffEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01827.i = phi ptr [ %.0.i, %.lr.ph.i93 ], [ %i.jf, %_ZSt4fillIPffEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01827.i, i64 8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !51 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, -1
  %.not.i94 = icmp slt i32 %i.ij, %i.ia
  %or.cond.i95 = select i1 %i.ik, i1 %.not.i94, i1 false
  br i1 %or.cond.i95, label %bb.aq, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.il = load i32, ptr %.01827.i, align 4, !tbaa !67 ; 2 uses
  %.not20.i97 = icmp slt i32 %i.il, %i.ic
  br i1 %.not20.i97, label %bb.ar, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.im = getelementptr inbounds nuw i8, ptr %.01827.i, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !68 ; 2 uses
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ip = zext nneg i32 %i.ij to i64
  %i.iq = mul i64 %i.ig, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.iq ; 2 uses
  %.sroa.speculated24.i98 = call i32 @llvm.smax.i32(i32 %i.il, i32 0) ; 2 uses
  %i.is = add nuw nsw i32 %i.in, 1
  %.sroa.speculated.i99 = call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.is) ; 2 uses
  %i.it = sext i32 %.sroa.speculated.i99 to i64   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it
  %.not6.i.i.i.i = icmp eq i32 %.sroa.speculated24.i98, %.sroa.speculated.i99
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i100

.lr.ph.i.i.i.preheader.i100:                      ; preds = %bb.as
  %i.iv = zext nneg i32 %.sroa.speculated24.i98 to i64 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iv ; 3 uses
  %12 = shl nsw i64 %i.it, 2
  %i.ix = add nsw i64 %12, -4
  %13 = shl nuw nsw i64 %i.iv, 2
  %14 = sub nsw i64 %i.ix, %13                    ; 2 uses
  %15 = lshr exact i64 %14, 2
  %i.iy = add nuw nsw i64 %15, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %14, 28
  br i1 %min.iters.check174, label %.lr.ph.i.i.i.i101.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph.i.i.i.preheader.i100
  %n.vec176 = and i64 %i.iy, 9223372036854775800  ; 3 uses
  %i.iz = shl i64 %n.vec176, 2
  %i.ja = getelementptr i8, ptr %i.iw, i64 %i.iz
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body179 ] ; 2 uses
  %i.jb = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %i.iw, i64 %i.jb ; 2 uses
  %i.jc = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %broadcast.splat178, ptr %next.gep181, align 4, !tbaa !87
  store <4 x float> %broadcast.splat178, ptr %i.jc, align 4, !tbaa !87
  %index.next182 = add nuw i64 %index180, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.jd, label %middle.block183, label %vector.body179, !llvm.loop !89

middle.block183:                                  ; preds = %vector.body179
  %cmp.n184 = icmp eq i64 %i.iy, %n.vec176
  br i1 %cmp.n184, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i101.preheader

.lr.ph.i.i.i.i101.preheader:                      ; preds = %.lr.ph.i.i.i.preheader.i100, %middle.block183
  %.07.i.i.i.i.ph = phi ptr [ %i.iw, %.lr.ph.i.i.i.preheader.i100 ], [ %i.ja, %middle.block183 ]
  br label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.lr.ph.i.i.i.i101.preheader, %.lr.ph.i.i.i.i101
  %.07.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i101 ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i101.preheader ] ; 2 uses
  store float %i.hy, ptr %.07.i.i.i.i, align 4, !tbaa !87
  %i.je = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.je, %i.iu
  br i1 %.not.i.i.i.i102, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i101, !llvm.loop !90

_ZSt4fillIPffEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i101, %middle.block183, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.jf = getelementptr inbounds nuw i8, ptr %.01827.i, i64 12
  %i.jg = add nuw nsw i32 %.028.i, 1
  %exitcond.not.i96 = icmp eq i32 %.028.i, %i.ih
  br i1 %exitcond.not.i96, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ap, !llvm.loop !91

.lr.ph.i103:                                      ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ji = load i32, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.jk = load i32, ptr %i.jj, align 4            ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = add nsw i32 %i.f, -2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.k, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, %.lr.ph.i103
  %.028.i104 = phi i32 [ 0, %.lr.ph.i103 ], [ %i.ko, %_ZSt4fillIPddEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01827.i105 = phi ptr [ %.0.i, %.lr.ph.i103 ], [ %i.kn, %_ZSt4fillIPddEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 8
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !51 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, -1
  %.not.i106 = icmp slt i32 %i.jr, %i.ji
  %or.cond.i107 = select i1 %i.js, i1 %.not.i106, i1 false
  br i1 %or.cond.i107, label %bb.au, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i

bb.au:                                            ; preds = %bb.at
  %i.jt = load i32, ptr %.01827.i105, align 4, !tbaa !67 ; 2 uses
  %.not20.i109 = icmp slt i32 %i.jt, %i.jk
  br i1 %.not20.i109, label %bb.av, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ju = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !68 ; 2 uses
  %i.jw = icmp slt i32 %i.jv, 0
  br i1 %i.jw, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jx = zext nneg i32 %i.jr to i64
  %i.jy = mul i64 %i.jo, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jy ; 2 uses
  %.sroa.speculated24.i110 = call i32 @llvm.smax.i32(i32 %i.jt, i32 0) ; 2 uses
  %i.ka = add nuw nsw i32 %i.jv, 1
  %.sroa.speculated.i111 = call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.ka) ; 2 uses
  %i.kb = sext i32 %.sroa.speculated.i111 to i64  ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kb
  %.not6.i.i.i.i112 = icmp eq i32 %.sroa.speculated24.i110, %.sroa.speculated.i111
  br i1 %.not6.i.i.i.i112, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i113

.lr.ph.i.i.i.preheader.i113:                      ; preds = %bb.aw
  %i.kd = zext nneg i32 %.sroa.speculated24.i110 to i64 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kd ; 3 uses
  %16 = shl nsw i64 %i.kb, 3
  %i.kf = add nsw i64 %16, -8
  %17 = shl nuw nsw i64 %i.kd, 3
  %18 = sub nsw i64 %i.kf, %17                    ; 2 uses
  %19 = lshr exact i64 %18, 3
  %i.kg = add nuw nsw i64 %19, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %18, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i114.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i113
  %n.vec = and i64 %i.kg, 4611686018427387900     ; 3 uses
  %i.kh = shl i64 %n.vec, 3
  %i.ki = getelementptr i8, ptr %i.ke, i64 %i.kh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ke, i64 %i.kj ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !62
  store <2 x double> %broadcast.splat, ptr %i.kk, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kg, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i114.preheader

.lr.ph.i.i.i.i114.preheader:                      ; preds = %.lr.ph.i.i.i.preheader.i113, %middle.block
  %.07.i.i.i.i115.ph = phi ptr [ %i.ke, %.lr.ph.i.i.i.preheader.i113 ], [ %i.ki, %middle.block ]
  br label %.lr.ph.i.i.i.i114

.lr.ph.i.i.i.i114:                                ; preds = %.lr.ph.i.i.i.i114.preheader, %.lr.ph.i.i.i.i114
  %.07.i.i.i.i115 = phi ptr [ %i.km, %.lr.ph.i.i.i.i114 ], [ %.07.i.i.i.i115.ph, %.lr.ph.i.i.i.i114.preheader ] ; 2 uses
  store double %i.k, ptr %.07.i.i.i.i115, align 8, !tbaa !62
  %i.km = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i115, i64 8 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.km, %i.kc
  br i1 %.not.i.i.i.i116, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i114, !llvm.loop !93

_ZSt4fillIPddEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i114, %middle.block, %bb.aw, %bb.av, %bb.au, %bb.at
  %i.kn = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 12
  %i.ko = add nuw nsw i32 %.028.i104, 1
  %exitcond.not.i108 = icmp eq i32 %.028.i104, %i.jp
  br i1 %exitcond.not.i108, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.at, !llvm.loop !94

bb.ax:                                            ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8ximgproc2rl5paintERKNS_17_InputOutputArrayERKNS_11_InputArrayERKNS_7Scalar_IdEE, ptr noundef nonnull @.str.1, i32 noundef 210) #16
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bb:                                            ; preds = %bb.ay
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bb
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !27
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ba
  %.pn34 = phi { ptr, i32 } [ %i.kp, %bb.ba ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kq, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %bb.bd

_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit: ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, %_ZSt4fillIPaaEvT_S1_RKT0_.exit.i, %_ZSt4fillIPhhEvT_S1_RKT0_.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bc

bb.bc:                                            ; preds = %bb.e, %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.be, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.i, %bb.bd, %bb.h
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %.pn34.pn.pn, %bb.bd ], [ %i.j, %bb.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc2rl21getStructuringElementEiNS_5Size_IiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cv21getStructuringElementEiNS_5Size_IiEENS_6Point_IiEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, i32 noundef %1, i64 %2, i64 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cv8ximgproc2rlL10_thresholdERNS_3MatERSt6vectorINS1_6rlTypeESaIS5_EEdi(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef 0.000000e+00, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.neg = sdiv i32 %i.b, -2
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %.neg20 = sdiv i32 %i.d, -2
  %.val13 = load ptr, ptr %4, align 8, !tbaa !95  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val14 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.not6.i = icmp eq ptr %.val13, %.val14
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.f = insertelement <2 x i32> poison, i32 %.neg, i64 0
  %i.g = shufflevector <2 x i32> %i.f, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.01.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.val13, %.lr.ph.i.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51
  %i.j = add nsw i32 %i.i, %.neg20
  store i32 %i.j, ptr %i.h, align 4, !tbaa !51
  %i.k = load <2 x i32>, ptr %.sroa.01.07.i, align 4, !tbaa !50
  %i.l = add nsw <2 x i32> %i.k, %i.g
  store <2 x i32> %i.l, ptr %.sroa.01.07.i, align 4, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %.val14
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !96

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #15
  %i.n = load i32, ptr %i.a, align 4, !tbaa !28
  %i.o = load i32, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !97
  store ptr %0, ptr %i.p, align 8, !tbaa !8
  %.sroa.2.0.insert.ext = zext i32 %i.o to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.n to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke fastcc void @_ZN2cv8ximgproc2rlL20convertToOutputArrayERSt6vectorINS1_6rlTypeESaIS3_EENS_5Size_IiEERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %.sroa.0.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.r = load ptr, ptr %4, align 8, !tbaa !30     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #17
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #15
end_hunk_0
