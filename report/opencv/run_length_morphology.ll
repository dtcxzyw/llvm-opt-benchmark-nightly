Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/run_length_morphology?download=true
inline.NumInlined: 945
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8ximgproc2rl5paintERKNS_17_InputOutputArrayERKNS_11_InputArrayERKNS_7Scalar_IdEE:bb.a
  br i1 %min.iters.check214, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check229
  %min.iters.check216 = icmp ult i64 %i.ej, 30
  br i1 %min.iters.check216, label %vec.epilog.ph233, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.em = and i64 %i.el, 12
  %n.vec218 = and i64 %i.el, -16                  ; 4 uses
  %i.en = shl i64 %n.vec218, 1
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.en
  br label %vector.body221

vector.body221:                                   ; preds = %vector.ph217, %vector.body221
  %index222 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body221 ] ; 2 uses
  %i.ep = shl i64 %index222, 1
  %next.gep223 = getelementptr i8, ptr %i.ef, i64 %i.ep ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep223, i64 16
  store <8 x i16> %broadcast.splat220, ptr %next.gep223, align 2, !tbaa !50
  store <8 x i16> %broadcast.splat220, ptr %i.eq, align 2, !tbaa !50
  %index.next224 = add nuw i64 %index222, 16      ; 2 uses
  %i.er = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.er, label %middle.block225, label %vector.body221, !llvm.loop !81

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.el, %n.vec218
  br i1 %cmp.n226, label %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, label %vec.epilog.iter.check231

vec.epilog.iter.check231:                         ; preds = %middle.block225
  %min.epilog.iters.check232 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check232, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph233, !prof !101

vec.epilog.ph233:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check231
  %vec.epilog.resume.val227 = phi i64 [ %n.vec218, %vec.epilog.iter.check231 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec234 = and i64 %i.el, -4                   ; 3 uses
  %i.es = shl i64 %n.vec234, 1
  %i.et = getelementptr i8, ptr %i.ef, i64 %i.es
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph233
  %index238 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph233 ], [ %index.next240, %vec.epilog.vector.body237 ] ; 2 uses
  %i.eu = shl i64 %index238, 1
  %next.gep239 = getelementptr i8, ptr %i.ef, i64 %i.eu
  store <4 x i16> %broadcast.splat236, ptr %next.gep239, align 2, !tbaa !50
  %index.next240 = add nuw i64 %index238, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next240, %n.vec234
  br i1 %i.ev, label %vec.epilog.middle.block241, label %vec.epilog.vector.body237, !llvm.loop !82

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body237
  %cmp.n242 = icmp eq i64 %i.el, %n.vec234
  br i1 %cmp.n242, label %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check229, %vec.epilog.iter.check231, %vec.epilog.middle.block241
  %.06.i.i.i.i.ph = phi ptr [ %i.ef, %iter.check229 ], [ %i.eo, %vec.epilog.iter.check231 ], [ %i.et, %vec.epilog.middle.block241 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i16 %i.dh, ptr %.06.i.i.i.i, align 2, !tbaa !50
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ew, %i.ed
  br i1 %.not.i.i.i.i65, label %_ZSt4fillIPttEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !83

_ZSt4fillIPttEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i, %middle.block225, %vec.epilog.middle.block241, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %.01828.i58, i64 12
  %i.ey = add nuw nsw i32 %.029.i57, 1
  %exitcond.not.i61 = icmp eq i32 %.029.i57, %i.dq
  br i1 %exitcond.not.i61, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ad, !llvm.loop !84

.lr.ph.i66:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.ez = fptosi double %i.k to i16               ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.fd = load i32, ptr %i.fc, align 4            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add nsw i32 %i.f, -2
  %broadcast.splatinsert196 = insertelement <8 x i16> poison, i16 %i.ez, i64 0
  %broadcast.splat197 = shufflevector <8 x i16> %broadcast.splatinsert196, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.ez, i64 0
  %broadcast.splat207 = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, %.lr.ph.i66
  %.029.i67 = phi i32 [ 0, %.lr.ph.i66 ], [ %i.gq, %_ZSt4fillIPssEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01828.i68 = phi ptr [ %.0.i, %.lr.ph.i66 ], [ %i.gp, %_ZSt4fillIPssEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !43 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  %.not.i69 = icmp slt i32 %i.fk, %i.fb
  %or.cond.i70 = select i1 %i.fl, i1 %.not.i69, i1 false
  br i1 %or.cond.i70, label %bb.ai, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fm = load i32, ptr %.01828.i68, align 4, !tbaa !47 ; 2 uses
  %.not20.i72 = icmp slt i32 %i.fm, %i.fd
  br i1 %.not20.i72, label %bb.aj, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !48 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = zext nneg i32 %i.fk to i64
  %i.fr = mul i64 %i.fh, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fr ; 2 uses
  %.sroa.speculated24.i73 = call i32 @llvm.smax.i32(i32 %i.fm, i32 0) ; 2 uses
  %i.ft = add nuw nsw i32 %i.fo, 1
  %.sroa.speculated.i74 = call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.ft) ; 2 uses
  %i.fu = sext i32 %.sroa.speculated.i74 to i64   ; 2 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.fs, i64 %i.fu
  %.not5.i.i.i.i75 = icmp eq i32 %.sroa.speculated24.i73, %.sroa.speculated.i74
  br i1 %.not5.i.i.i.i75, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %i.fw = zext nneg i32 %.sroa.speculated24.i73 to i64 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fw ; 5 uses
  %i.fy = shl nsw i64 %i.fu, 1
  %i.fz = add nsw i64 %i.fy, -2
  %i.ga = shl nuw nsw i64 %i.fw, 1
  %i.gb = sub nsw i64 %i.fz, %i.ga                ; 3 uses
  %i.gc = lshr exact i64 %i.gb, 1
  %i.gd = add nuw i64 %i.gc, 1                    ; 5 uses
  %min.iters.check192 = icmp ult i64 %i.gb, 6
  br i1 %min.iters.check192, label %.lr.ph.i.i.i.i77.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check193 = icmp ult i64 %i.gb, 30
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check
  %i.ge = and i64 %i.gd, 12
  %n.vec195 = and i64 %i.gd, -16                  ; 4 uses
  %i.gf = shl i64 %n.vec195, 1
  %i.gg = getelementptr i8, ptr %i.fx, i64 %i.gf
  br label %vector.body198

vector.body198:                                   ; preds = %vector.ph194, %vector.body198
  %index199 = phi i64 [ 0, %vector.ph194 ], [ %index.next201, %vector.body198 ] ; 2 uses
  %i.gh = shl i64 %index199, 1
  %next.gep200 = getelementptr i8, ptr %i.fx, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep200, i64 16
  store <8 x i16> %broadcast.splat197, ptr %next.gep200, align 2, !tbaa !50
  store <8 x i16> %broadcast.splat197, ptr %i.gi, align 2, !tbaa !50
  %index.next201 = add nuw i64 %index199, 16      ; 2 uses
  %i.gj = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.gj, label %middle.block202, label %vector.body198, !llvm.loop !85

middle.block202:                                  ; preds = %vector.body198
  %cmp.n203 = icmp eq i64 %i.gd, %n.vec195
  br i1 %cmp.n203, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block202
  %min.epilog.iters.check = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i77.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec195, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.gd, -4                   ; 3 uses
  %i.gk = shl i64 %n.vec205, 1
  %i.gl = getelementptr i8, ptr %i.fx, i64 %i.gk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 2 uses
  %i.gm = shl i64 %index208, 1
  %next.gep209 = getelementptr i8, ptr %i.fx, i64 %i.gm
  store <4 x i16> %broadcast.splat207, ptr %next.gep209, align 2, !tbaa !50
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %i.gd, %n.vec205
  br i1 %cmp.n211, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i77.preheader

.lr.ph.i.i.i.i77.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i78.ph = phi ptr [ %i.fx, %iter.check ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.06.i.i.i.i78 = phi ptr [ %i.go, %.lr.ph.i.i.i.i77 ], [ %.06.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 2 uses
  store i16 %i.ez, ptr %.06.i.i.i.i78, align 2, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i78, i64 2 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.go, %i.fv
  br i1 %.not.i.i.i.i79, label %_ZSt4fillIPssEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i77, !llvm.loop !87

_ZSt4fillIPssEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i77, %middle.block202, %vec.epilog.middle.block, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %.01828.i68, i64 12
  %i.gq = add nuw nsw i32 %.029.i67, 1
  %exitcond.not.i71 = icmp eq i32 %.029.i67, %i.fi
  br i1 %exitcond.not.i71, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ah, !llvm.loop !88

.lr.ph.i80:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.gr = fptosi double %i.k to i32               ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = add nsw i32 %i.f, -2
  %.pre131 = load i32, ptr %i.gs, align 8
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, %.lr.ph.i80
  %8 = phi i32 [ %.pre131, %.lr.ph.i80 ], [ %9, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 5 uses
  %.029.i81 = phi i32 [ 0, %.lr.ph.i80 ], [ %i.ic, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01828.i82 = phi ptr [ %.0.i, %.lr.ph.i80 ], [ %i.ib, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !43 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  %.not.i83 = icmp slt i32 %i.ha, %8
  %or.cond118 = select i1 %i.hb, i1 %.not.i83, i1 false
  br i1 %or.cond118, label %bb.am, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.hc = load i32, ptr %.01828.i82, align 4, !tbaa !47 ; 2 uses
  %i.hd = load i32, ptr %i.gt, align 4, !tbaa !28 ; 2 uses
  %.not20.i85 = icmp slt i32 %i.hc, %i.hd
  br i1 %.not20.i85, label %bb.an, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i

bb.an:                                            ; preds = %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !48 ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = zext nneg i32 %i.ha to i64
  %i.hi = mul i64 %i.gx, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hi ; 2 uses
  %.sroa.speculated24.i86 = call i32 @llvm.smax.i32(i32 %i.hc, i32 0) ; 2 uses
  %i.hk = add nuw nsw i32 %i.hf, 1
  %.sroa.speculated.i87 = call i32 @llvm.smin.i32(i32 %i.hd, i32 %i.hk) ; 2 uses
  %i.hl = sext i32 %.sroa.speculated.i87 to i64   ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %.not5.i.i.i.i88 = icmp eq i32 %.sroa.speculated24.i86, %.sroa.speculated.i87
  br i1 %.not5.i.i.i.i88, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i89

.lr.ph.i.i.i.preheader.i89:                       ; preds = %bb.ao
  %i.hn = zext nneg i32 %.sroa.speculated24.i86 to i64 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hn ; 3 uses
  %i.hp = shl nsw i64 %i.hl, 2
  %i.hq = shl nuw nsw i64 %i.hn, 2
  %i.hr = add nsw i64 %i.hp, -4
  %i.hs = sub nsw i64 %i.hr, %i.hq                ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 2
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.hs, 28
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i90.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.i.i.i.preheader.i89
  %n.vec181 = and i64 %i.hu, 9223372036854775800  ; 3 uses
  %i.hv = shl i64 %n.vec181, 2
  %i.hw = getelementptr i8, ptr %i.ho, i64 %i.hv
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph180
  %index185 = phi i64 [ 0, %vector.ph180 ], [ %index.next187, %vector.body184 ] ; 2 uses
  %i.hx = shl i64 %index185, 2
  %next.gep186 = getelementptr i8, ptr %i.ho, i64 %i.hx ; 2 uses
  %i.hy = getelementptr i8, ptr %next.gep186, i64 16
  store <4 x i32> %broadcast.splat183, ptr %next.gep186, align 4, !tbaa !41
  store <4 x i32> %broadcast.splat183, ptr %i.hy, align 4, !tbaa !41
  %index.next187 = add nuw i64 %index185, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next187, %n.vec181
  br i1 %i.hz, label %middle.block188, label %vector.body184, !llvm.loop !89

middle.block188:                                  ; preds = %vector.body184
  %cmp.n189 = icmp eq i64 %i.hu, %n.vec181
  br i1 %cmp.n189, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.loopexit, label %.lr.ph.i.i.i.i90.preheader

.lr.ph.i.i.i.i90.preheader:                       ; preds = %.lr.ph.i.i.i.preheader.i89, %middle.block188
  %.06.i.i.i.i91.ph = phi ptr [ %i.ho, %.lr.ph.i.i.i.preheader.i89 ], [ %i.hw, %middle.block188 ]
  br label %.lr.ph.i.i.i.i90

.lr.ph.i.i.i.i90:                                 ; preds = %.lr.ph.i.i.i.i90.preheader, %.lr.ph.i.i.i.i90
  %.06.i.i.i.i91 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i90 ], [ %.06.i.i.i.i91.ph, %.lr.ph.i.i.i.i90.preheader ] ; 2 uses
  store i32 %i.gr, ptr %.06.i.i.i.i91, align 4, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i91, i64 4 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ia, %i.hm
  br i1 %.not.i.i.i.i92, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.loopexit, label %.lr.ph.i.i.i.i90, !llvm.loop !90

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.loopexit:        ; preds = %.lr.ph.i.i.i.i90, %middle.block188
  %.pre = load i32, ptr %i.gs, align 8
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i:                 ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.loopexit, %bb.ao, %bb.an, %bb.am, %bb.al
  %9 = phi i32 [ %.pre, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.loopexit ], [ %8, %bb.ao ], [ %8, %bb.an ], [ %8, %bb.am ], [ %8, %bb.al ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.01828.i82, i64 12
  %i.ic = add nuw nsw i32 %.029.i81, 1
  %exitcond.not.i84 = icmp eq i32 %.029.i81, %i.gy
  br i1 %exitcond.not.i84, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.al, !llvm.loop !91

.lr.ph.i93:                                       ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.id = fptrunc double %i.k to float            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ih = load i32, ptr %i.ig, align 4            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = add nsw i32 %i.f, -2
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.id, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, %.lr.ph.i93
  %.028.i = phi i32 [ 0, %.lr.ph.i93 ], [ %i.jp, %_ZSt4fillIPffEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01827.i = phi ptr [ %.0.i, %.lr.ph.i93 ], [ %i.jo, %_ZSt4fillIPffEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.01827.i, i64 8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !43 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, -1
  %.not.i94 = icmp slt i32 %i.io, %i.if
  %or.cond.i95 = select i1 %i.ip, i1 %.not.i94, i1 false
  br i1 %or.cond.i95, label %bb.aq, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.iq = load i32, ptr %.01827.i, align 4, !tbaa !47 ; 2 uses
  %.not20.i97 = icmp slt i32 %i.iq, %i.ih
  br i1 %.not20.i97, label %bb.ar, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ir = getelementptr inbounds nuw i8, ptr %.01827.i, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !48 ; 2 uses
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iu = zext nneg i32 %i.io to i64
  %i.iv = mul i64 %i.il, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.iv ; 2 uses
  %.sroa.speculated24.i98 = call i32 @llvm.smax.i32(i32 %i.iq, i32 0) ; 2 uses
  %i.ix = add nuw nsw i32 %i.is, 1
  %.sroa.speculated.i99 = call i32 @llvm.smin.i32(i32 %i.ih, i32 %i.ix) ; 2 uses
  %i.iy = sext i32 %.sroa.speculated.i99 to i64   ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.iy
  %.not6.i.i.i.i = icmp eq i32 %.sroa.speculated24.i98, %.sroa.speculated.i99
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i100

.lr.ph.i.i.i.preheader.i100:                      ; preds = %bb.as
  %i.ja = zext nneg i32 %.sroa.speculated24.i98 to i64 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ja ; 3 uses
  %i.jc = shl nsw i64 %i.iy, 2
  %i.jd = shl nuw nsw i64 %i.ja, 2
  %i.je = add nsw i64 %i.jc, -4
  %i.jf = sub nsw i64 %i.je, %i.jd                ; 2 uses
  %i.jg = lshr exact i64 %i.jf, 2
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jf, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i101.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i100
  %n.vec = and i64 %i.jh, 9223372036854775800     ; 3 uses
  %i.ji = shl i64 %n.vec, 2
  %i.jj = getelementptr i8, ptr %i.jb, i64 %i.ji
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.jb, i64 %i.jk ; 2 uses
  %i.jl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !52
  store <4 x float> %broadcast.splat, ptr %i.jl, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jh, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i101.preheader

.lr.ph.i.i.i.i101.preheader:                      ; preds = %.lr.ph.i.i.i.preheader.i100, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.jb, %.lr.ph.i.i.i.preheader.i100 ], [ %i.jj, %middle.block ]
  br label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.lr.ph.i.i.i.i101.preheader, %.lr.ph.i.i.i.i101
  %.07.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i101 ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i101.preheader ] ; 2 uses
  store float %i.id, ptr %.07.i.i.i.i, align 4, !tbaa !52
  %i.jn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.jn, %i.iz
  br i1 %.not.i.i.i.i102, label %_ZSt4fillIPffEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i101, !llvm.loop !93

_ZSt4fillIPffEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i101, %middle.block, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.jo = getelementptr inbounds nuw i8, ptr %.01827.i, i64 12
  %i.jp = add nuw nsw i32 %.028.i, 1
  %exitcond.not.i96 = icmp eq i32 %.028.i, %i.im
  br i1 %exitcond.not.i96, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.ap, !llvm.loop !94

.lr.ph.i103:                                      ; preds = %_ZN2cv3Mat2atINS_7Point3_IiEEEERT_i.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jr = load i32, ptr %i.jq, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.jt = load i32, ptr %i.js, align 4            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = add nsw i32 %i.f, -2
  br label %bb.at

bb.at:                                            ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, %.lr.ph.i103
  %.028.i104 = phi i32 [ 0, %.lr.ph.i103 ], [ %i.kq, %_ZSt4fillIPddEvT_S1_RKT0_.exit.i ] ; 2 uses
  %.01827.i105 = phi ptr [ %.0.i, %.lr.ph.i103 ], [ %i.kp, %_ZSt4fillIPddEvT_S1_RKT0_.exit.i ] ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !43 ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, -1
  %.not.i106 = icmp slt i32 %i.ka, %i.jr
  %or.cond.i107 = select i1 %i.kb, i1 %.not.i106, i1 false
  br i1 %or.cond.i107, label %bb.au, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i

bb.au:                                            ; preds = %bb.at
  %i.kc = load i32, ptr %.01827.i105, align 4, !tbaa !47 ; 2 uses
  %.not20.i109 = icmp slt i32 %i.kc, %i.jt
  br i1 %.not20.i109, label %bb.av, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !48 ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kg = zext nneg i32 %i.ka to i64
  %i.kh = mul i64 %i.jx, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.kh ; 2 uses
  %.sroa.speculated24.i110 = call i32 @llvm.smax.i32(i32 %i.kc, i32 0) ; 2 uses
  %i.kj = add nuw nsw i32 %i.ke, 1
  %.sroa.speculated.i111 = call i32 @llvm.smin.i32(i32 %i.jt, i32 %i.kj) ; 2 uses
  %i.kk = sext i32 %.sroa.speculated.i111 to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.kk
  %.not6.i.i.i.i112 = icmp eq i32 %.sroa.speculated24.i110, %.sroa.speculated.i111
  br i1 %.not6.i.i.i.i112, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.preheader.i113

.lr.ph.i.i.i.preheader.i113:                      ; preds = %bb.aw
  %i.km = zext nneg i32 %.sroa.speculated24.i110 to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.km
  br label %.lr.ph.i.i.i.i114

.lr.ph.i.i.i.i114:                                ; preds = %.lr.ph.i.i.i.i114, %.lr.ph.i.i.i.preheader.i113
  %.07.i.i.i.i115 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i114 ], [ %i.kn, %.lr.ph.i.i.i.preheader.i113 ] ; 2 uses
  store double %i.k, ptr %.07.i.i.i.i115, align 8, !tbaa !46
  %i.ko = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i115, i64 8 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.ko, %i.kl
  br i1 %.not.i.i.i.i116, label %_ZSt4fillIPddEvT_S1_RKT0_.exit.i, label %.lr.ph.i.i.i.i114, !llvm.loop !95

_ZSt4fillIPddEvT_S1_RKT0_.exit.i:                 ; preds = %.lr.ph.i.i.i.i114, %bb.aw, %bb.av, %bb.au, %bb.at
  %i.kp = getelementptr inbounds nuw i8, ptr %.01827.i105, i64 12
  %i.kq = add nuw nsw i32 %.028.i104, 1
  %exitcond.not.i108 = icmp eq i32 %.028.i104, %i.jy
  br i1 %exitcond.not.i108, label %_ZN2cv8ximgproc2rl10paint_implIhEEvRNS_3MatEPNS1_6rlTypeEiT_.exit, label %bb.at, !llvm.loop !96

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
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bb:                                            ; preds = %bb.ay
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bb
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !27
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ba
  %.pn34 = phi { ptr, i32 } [ %i.kr, %bb.ba ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ks, %bb.bb ]
end_hunk_0
