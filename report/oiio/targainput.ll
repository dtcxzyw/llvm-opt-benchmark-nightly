inline.NumInlined: 3090
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18TGAInput7readimgEv:bb.a
  %i.qg = icmp sgt i32 %i.qf, 3
  br i1 %i.qg, label %bb.bi, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bi:                                            ; preds = %bb.bh
  %.lobit.i177 = ashr i8 %i.pt, 7
  store i8 %.lobit.i177, ptr %.sroa.0201.3..sroa_idx560, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bj:                                            ; preds = %bb.bg
  %i.qh = load i8, ptr %i.gi, align 1, !tbaa !16
  store i8 %i.qh, ptr %.sroa.0201, align 4, !tbaa !16
  %i.qi = load i8, ptr %i.gj, align 1, !tbaa !16
  store i8 %i.qi, ptr %.sroa.0201.1..sroa_idx538, align 1, !tbaa !16
  %i.qj = load i8, ptr %i.gg, align 1, !tbaa !16
  store i8 %i.qj, ptr %.sroa.0201.2..sroa_idx552, align 2, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bk:                                            ; preds = %bb.bg
  %i.qk = load <4 x i8>, ptr %i.gg, align 1, !tbaa !16
  %i.ql = shufflevector <4 x i8> %i.qk, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.ql, ptr %.sroa.0201, align 4, !tbaa !16
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

bb.bl:                                            ; preds = %bb.az, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0201, ptr nonnull align 1 %i.gg, i64 %i.gh, i1 false)
  br label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread: ; preds = %bb.bl, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bh, %bb.bi, %bb.bk, %bb.bj, %bb.bg, %bb.az, %.preheader334
  %.6129 = phi i64 [ %.4127374, %.preheader334 ], [ %.5128, %bb.az ], [ %.5128, %bb.bg ], [ %.5128, %bb.bj ], [ %.5128, %bb.bk ], [ %.5128, %bb.bi ], [ %.5128, %bb.bh ], [ %.5128, %bb.bc ], [ %.5128, %bb.bd ], [ %.5128, %bb.be ], [ %.5128, %bb.bf ], [ %.5128, %bb.bl ] ; 2 uses
  %.6120 = phi i64 [ %.4118375, %.preheader334 ], [ %.5119, %bb.az ], [ %.5119, %bb.bg ], [ %.5119, %bb.bj ], [ %.5119, %bb.bk ], [ %.5119, %bb.bi ], [ %.5119, %bb.bh ], [ %.5119, %bb.bc ], [ %.5119, %bb.bd ], [ %.5119, %bb.be ], [ %.5119, %bb.bf ], [ %.5119, %bb.bl ] ; 2 uses
  %i.qm = add nuw nsw i32 %.0112376, 1
  %exitcond402.not = icmp eq i32 %.0112376, %i.gt
  br i1 %exitcond402.not, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, label %.preheader334, !llvm.loop !156

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread
  %.8131 = phi i64 [ %.6129, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.3126, %bb.at ] ; 2 uses
  %.8122 = phi i64 [ %.6120, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189.thread ], [ %.2116, %bb.at ]
  %i.qn = add nsw i64 %.8122, 1                   ; 2 uses
  %i.qo = load i32, ptr %i.ge, align 4, !tbaa !149 ; 2 uses
  %i.qp = sext i32 %i.qo to i64
  %i.qq = icmp slt i64 %i.qn, %i.qp
  br i1 %i.qq, label %.lr.ph, label %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, !llvm.loop !157

bb.bm:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %.loopexit345, %.loopexit.split-lp346
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp348, %.loopexit.split-lp346 ], [ %lpad.loopexit347, %.loopexit345 ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.cf

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175: ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189, %.preheader343
  %i.qr = phi i32 [ %i.go, %.preheader343 ], [ %i.qo, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ]
  %.9132314 = phi i64 [ %.0123379, %.preheader343 ], [ %.8131, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit189 ] ; 2 uses
  %i.qs = add nsw i64 %.9132314, -1
  %i.qt = icmp slt i64 %.9132314, 1
  br i1 %i.qt, label %.critedge156, label %.preheader343, !llvm.loop !158

_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307: ; preds = %bb.ac, %bb.ay, %bb.bb, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.critedge154:                                     ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bn

.critedge156:                                     ; preds = %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175, %bb.ar, %bb.av, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge156, %.critedge154
  %i.qu = load i8, ptr %i.l, align 1, !tbaa !68
  %i.qv = and i8 %i.qu, 16
  %.not146 = icmp eq i8 %i.qv, 0
  br i1 %.not146, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !148 ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph388, label %._crit_edge389

.lr.ph388:                                        ; preds = %bb.bo
  %i.rb = load i32, ptr %i.qx, align 4, !tbaa !149 ; 2 uses
  %i.rc = load i32, ptr %i.qw, align 4, !tbaa !71 ; 2 uses
  %i.rd = mul nsw i32 %i.rb, %i.rc
  %i.re = sext i32 %i.rd to i64
  %i.rf = sext i32 %i.rc to i64                   ; 3 uses
  br label %bb.bp

._crit_edge389:                                   ; preds = %._crit_edge, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph388, %._crit_edge
  %i.rg = phi i32 [ %i.qz, %.lr.ph388 ], [ %i.rm, %._crit_edge ]
  %i.rh = phi i32 [ %i.rb, %.lr.ph388 ], [ %i.rn, %._crit_edge ] ; 3 uses
  %.0104386 = phi i64 [ 0, %.lr.ph388 ], [ %i.ro, %._crit_edge ] ; 2 uses
  %i.ri = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.rj = mul nsw i64 %.0104386, %i.re
  %i.rk = getelementptr inbounds i8, ptr %i.ri, i64 %i.rj ; 2 uses
  %i.rl = icmp sgt i32 %i.rh, 1
  br i1 %i.rl, label %.lr.ph385, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph385
  %.pre447 = load i32, ptr %i.qy, align 8, !tbaa !148
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bp
  %i.rm = phi i32 [ %.pre447, %._crit_edge.loopexit ], [ %i.rg, %bb.bp ] ; 2 uses
  %i.rn = phi i32 [ %i.sc, %._crit_edge.loopexit ], [ %i.rh, %bb.bp ]
  %i.ro = add nuw nsw i64 %.0104386, 1            ; 2 uses
  %i.rp = sext i32 %i.rm to i64
  %i.rq = icmp slt i64 %i.ro, %i.rp
  br i1 %i.rq, label %bb.bp, label %._crit_edge389, !llvm.loop !159

.lr.ph385:                                        ; preds = %bb.bp, %.lr.ph385
  %i.rr = phi i32 [ %i.sc, %.lr.ph385 ], [ %i.rh, %bb.bp ]
  %.099384 = phi i64 [ %i.sb, %.lr.ph385 ], [ 0, %bb.bp ] ; 3 uses
  %i.rs = load i32, ptr %i.qw, align 4, !tbaa !71
  %i.rt = sext i32 %i.rs to i64                   ; 2 uses
  %i.ru = mul nsw i64 %.099384, %i.rt
  %i.rv = getelementptr inbounds i8, ptr %i.rk, i64 %i.ru ; 2 uses
  %i.rw = add nsw i32 %i.rr, -1
  %i.rx = sext i32 %i.rw to i64
  %i.ry = sub nsw i64 %i.rx, %.099384
  %i.rz = mul nsw i64 %i.ry, %i.rt
  %i.sa = getelementptr inbounds i8, ptr %i.rk, i64 %i.rz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %i.rv, i64 %i.rf, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rv, ptr align 1 %i.sa, i64 %i.rf, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sa, ptr nonnull align 4 %.sroa.0, i64 %i.rf, i1 false)
  %i.sb = add nuw nsw i64 %.099384, 1             ; 2 uses
  %i.sc = load i32, ptr %i.qx, align 4, !tbaa !149 ; 3 uses
  %i.sd = sdiv i32 %i.sc, 2
  %i.se = sext i32 %i.sd to i64
  %i.sf = icmp slt i64 %i.sb, %i.se
  br i1 %i.sf, label %.lr.ph385, label %._crit_edge.loopexit, !llvm.loop !160

bb.bq:                                            ; preds = %._crit_edge389, %bb.bn
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !74
  %.not147 = icmp eq i32 %i.sh, -1
  br i1 %.not147, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !75, !range !76, !noundef !77
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !18
  %.not148 = icmp eq i32 %i.sm, 4
  br i1 %.not148, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !59
  %i.sp = icmp eq i16 %i.so, 1
  %i.sq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.n) #30 ; 4 uses
  %i.sr = icmp sgt i64 %i.sq, 0                   ; 3 uses
  br i1 %i.sr, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %bb.bt
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !71
  %i.su = sext i32 %i.st to i64
  %i.sv = load i32, ptr %i.sg, align 8, !tbaa !74
  %i.sw = sext i32 %i.sv to i64
  %i.sx = load ptr, ptr %i.m, align 8, !tbaa !17
  %invariant.gep = getelementptr i8, ptr %i.sx, i64 %i.sw
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bv
  %i.sy = add nuw nsw i64 %.093390, 1             ; 2 uses
  %exitcond403.not = icmp eq i64 %i.sy, %i.sq
  br i1 %exitcond403.not, label %._crit_edge393, label %bb.bv, !llvm.loop !161

bb.bv:                                            ; preds = %.lr.ph392, %bb.bu
  %.093390 = phi i64 [ 0, %.lr.ph392 ], [ %i.sy, %bb.bu ] ; 2 uses
  %i.sz = mul nsw i64 %.093390, %i.su
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.sz
  %i.ta = load i8, ptr %gep, align 1, !tbaa !16
  %.not149 = icmp eq i8 %i.ta, 0
  br i1 %.not149, label %bb.bu, label %.critedge158

._crit_edge393:                                   ; preds = %bb.bu, %bb.bt
  br i1 %i.sp, label %.loopexit, label %.critedge158

.critedge158:                                     ; preds = %bb.bv, %._crit_edge393
  store ptr @.str.36, ptr %1, align 8, !tbaa !61
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.tb, align 8, !tbaa !63
  %i.tc = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull dead_on_return %1, float noundef 1.000000e+00)
          to label %bb.bw unwind label %bb.ce     ; 2 uses

bb.bw:                                            ; preds = %.critedge158
  %i.td = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !71 ; 10 uses
  %i.tg = load i32, ptr %i.sg, align 8, !tbaa !74 ; 4 uses
  %i.th = fcmp oeq float %i.tc, 1.000000e+00
  br i1 %i.th, label %.preheader58.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.bw
  br i1 %i.sr, label %.lr.ph64.i, label %.loopexit

.lr.ph64.i:                                       ; preds = %.preheader59.i
  %i.ti = sext i32 %i.tg to i64
  %i.tj = icmp sgt i32 %i.tf, 0
  %i.tk = sext i32 %i.tf to i64
  br i1 %i.tj, label %.lr.ph.preheader.i190, label %.loopexit

.lr.ph.preheader.i190:                            ; preds = %.lr.ph64.i
  %i.tl = zext i32 %i.tg to i64                   ; 3 uses
  %wide.trip.count.i191 = zext nneg i32 %i.tf to i64 ; 2 uses
  %xtraiter516 = and i64 %wide.trip.count.i191, 1
  %i.tm = icmp eq i32 %i.tf, 1
  %unroll_iter520 = and i64 %wide.trip.count.i191, 2147483646
  %lcmp.mod518.not = icmp eq i64 %xtraiter516, 0
  %lcmp.mod519 = trunc i32 %i.tf to i1
  br label %.lr.ph.i192

.preheader58.i:                                   ; preds = %bb.bw
  br i1 %i.sr, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader58.i
  %i.tn = icmp sgt i32 %i.tf, 0
  %i.to = sext i32 %i.tg to i64
  %i.tp = sext i32 %i.tf to i64
  br i1 %i.tn, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.tq = zext i32 %i.tg to i64                   ; 3 uses
  %wide.trip.count76.i = zext nneg i32 %i.tf to i64 ; 2 uses
  %xtraiter523 = and i64 %wide.trip.count76.i, 1
  %2 = icmp eq i32 %i.tf, 1
  %unroll_iter527 = and i64 %wide.trip.count76.i, 2147483646
  %lcmp.mod525.not = icmp eq i64 %xtraiter523, 0
  %lcmp.mod526 = trunc i32 %i.tf to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge67.i, %.preheader.preheader.i
  %.03669.i = phi ptr [ %i.tt, %._crit_edge67.i ], [ %i.td, %.preheader.preheader.i ] ; 5 uses
  %.03868.i = phi i64 [ %i.ts, %._crit_edge67.i ], [ 0, %.preheader.preheader.i ]
  %i.tr = getelementptr inbounds i8, ptr %.03669.i, i64 %i.to ; 3 uses
  br i1 %2, label %.epil.preheader522, label %.preheader.i.new

._crit_edge67.i.unr-lcssa:                        ; preds = %bb.by
  br i1 %lcmp.mod525.not, label %._crit_edge67.i, label %.epil.preheader522

.epil.preheader522:                               ; preds = %._crit_edge67.i.unr-lcssa, %.preheader.i
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next74.i.1, %._crit_edge67.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod526)
  %.not43.i.epil = icmp eq i64 %indvars.iv73.i.epil.init, %i.tq
  br i1 %.not43.i.epil, label %._crit_edge67.i, label %3

3:                                                ; preds = %.epil.preheader522
  %4 = getelementptr inbounds nuw i8, ptr %.03669.i, i64 %indvars.iv73.i.epil.init ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !16
  %6 = zext i8 %5 to i16
  %7 = load i8, ptr %i.tr, align 1, !tbaa !16
  %8 = zext i8 %7 to i16
  %9 = mul nuw i16 %8, %6
  %10 = udiv i16 %9, 255
  %11 = trunc nuw i16 %10 to i8
  store i8 %11, ptr %4, align 1, !tbaa !16
  br label %._crit_edge67.i

._crit_edge67.i:                                  ; preds = %.epil.preheader522, %3, %._crit_edge67.i.unr-lcssa
  %i.ts = add nuw nsw i64 %.03868.i, 1            ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.03669.i, i64 %i.tp
  %exitcond78.not.i = icmp eq i64 %i.ts, %i.sq
  br i1 %exitcond78.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !162

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.by
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i.1, %bb.by ], [ 0, %.preheader.i ] ; 4 uses
  %niter528 = phi i64 [ %niter528.next.1, %bb.by ], [ 0, %.preheader.i ]
  %.not43.i = icmp eq i64 %indvars.iv73.i, %i.tq
  br i1 %.not43.i, label %21, label %12

12:                                               ; preds = %.preheader.i.new
  %13 = getelementptr inbounds nuw i8, ptr %.03669.i, i64 %indvars.iv73.i ; 2 uses
  %14 = load i8, ptr %13, align 1, !tbaa !16
  %15 = zext i8 %14 to i16
  %16 = load i8, ptr %i.tr, align 1, !tbaa !16
  %17 = zext i8 %16 to i16
  %18 = mul nuw i16 %17, %15
  %19 = udiv i16 %18, 255
  %20 = trunc nuw i16 %19 to i8
  store i8 %20, ptr %13, align 1, !tbaa !16
  br label %21

21:                                               ; preds = %12, %.preheader.i.new
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %.not43.i.1 = icmp eq i64 %indvars.iv.next74.i, %i.tq
  br i1 %.not43.i.1, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %21
  %i.tu = getelementptr inbounds nuw i8, ptr %.03669.i, i64 %indvars.iv.next74.i ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !16
  %i.tw = zext i8 %i.tv to i16
  %i.tx = load i8, ptr %i.tr, align 1, !tbaa !16
  %i.ty = zext i8 %i.tx to i16
  %i.tz = mul nuw i16 %i.ty, %i.tw
  %i.ua = udiv i16 %i.tz, 255
  %i.ub = trunc nuw i16 %i.ua to i8
  store i8 %i.ub, ptr %i.tu, align 1, !tbaa !16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %21
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter528.next.1 = add i64 %niter528, 2         ; 2 uses
  %niter528.ncmp.1 = icmp eq i64 %niter528.next.1, %unroll_iter527
  br i1 %niter528.ncmp.1, label %._crit_edge67.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !163

.lr.ph.i192:                                      ; preds = %._crit_edge.i196, %.lr.ph.preheader.i190
  %.163.i = phi ptr [ %i.wi, %._crit_edge.i196 ], [ %i.td, %.lr.ph.preheader.i190 ] ; 5 uses
  %.03762.i = phi i64 [ %i.wh, %._crit_edge.i196 ], [ 0, %.lr.ph.preheader.i190 ]
  %i.uc = getelementptr inbounds i8, ptr %.163.i, i64 %i.ti
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !16
  %i.ue = uitofp i8 %i.ud to float
  %i.uf = fmul nnan float %i.ue, f0x3B808081      ; 2 uses
  %.inv.i = fcmp oge float %i.uf, f0x00800000
  %.0.i.i = select i1 %.inv.i, float %i.uf, float f0x00800000 ; 2 uses
  %i.ug = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.uh = bitcast float %.0.i.i to i32
  %i.ui = select i1 %i.ug, i32 2139095039, i32 %i.uh ; 2 uses
  %i.uj = lshr i32 %i.ui, 23
  %i.uk = add nsw i32 %i.uj, -127
  %i.ul = and i32 %i.ui, 8388607
  %i.um = or disjoint i32 %i.ul, 1065353216
  %i.un = bitcast i32 %i.um to float
  %i.uo = fadd float %i.un, -1.000000e+00         ; 9 uses
  %i.up = fmul float %i.uo, %i.uo                 ; 2 uses
  %i.uq = fmul float %i.up, %i.up
  %i.ur = fmul nnan contract float %i.uo, f0x3C188B0D
  %i.us = fsub nnan contract float f0x3D5541C9, %i.ur
  %i.ut = fmul nnan contract float %i.uo, f0x3EF5162D
  %i.uu = fadd nnan contract float %i.ut, f0xBF389E54
  %i.uv = fmul contract float %i.uo, %i.us
  %i.uw = fadd contract float %i.uv, f0xBE0CD4FD
  %i.ux = fmul contract float %i.uo, %i.uw
  %i.uy = fadd contract float %i.ux, f0x3E77ADBD
  %i.uz = fmul contract float %i.uo, %i.uy
  %i.va = fadd contract float %i.uz, f0xBEB1D206
  %i.vb = fmul contract float %i.uo, %i.uu
  %i.vc = fadd contract float %i.vb, f0x3FB8AA10
  %i.vd = fmul float %i.uo, %i.vc
  %i.ve = call float @llvm.fmuladd.f32(float %i.uq, float %i.va, float %i.vd)
  %i.vf = sitofp i32 %i.uk to float
  %i.vg = fadd float %i.ve, %i.vf
  %i.vh = fmul float %i.tc, %i.vg                 ; 2 uses
  %.inv57.i = fcmp oge float %i.vh, -1.260000e+02
  %.0.i44.i = select i1 %.inv57.i, float %i.vh, float -1.260000e+02 ; 2 uses
  %i.vi = fcmp ogt float %.0.i44.i, 1.260000e+02
  %.1.i45.i = select i1 %i.vi, float 1.260000e+02, float %.0.i44.i ; 2 uses
  %i.vj = fptosi float %.1.i45.i to i32           ; 2 uses
  %i.vk = sitofp i32 %i.vj to float
  %i.vl = fsub float %i.vk, %.1.i45.i
  %i.vm = fadd float %i.vl, 1.000000e+00
  %i.vn = fsub float 1.000000e+00, %i.vm          ; 5 uses
  %i.vo = fmul contract float %i.vn, f0x3AAEC44E
  %i.vp = fadd contract float %i.vo, f0x3C20BB9A
  %i.vq = fmul contract float %i.vn, %i.vp
  %i.vr = fadd contract float %i.vq, f0x3D636733
  %i.vs = fmul contract float %i.vn, %i.vr
  %i.vt = fadd contract float %i.vs, f0x3E75F192
  %i.vu = fmul contract float %i.vn, %i.vt
  %i.vv = fadd contract float %i.vu, f0x3F3171F1
  %i.vw = fmul contract float %i.vn, %i.vv
  %i.vx = fadd contract float %i.vw, 1.000000e+00
  %i.vy = bitcast float %i.vx to i32
  %i.vz = shl i32 %i.vj, 23
  %i.wa = add i32 %i.vz, %i.vy
  %i.wb = bitcast i32 %i.wa to float              ; 3 uses
  br i1 %i.tm, label %.epil.preheader, label %.lr.ph.i192.new

._crit_edge.i196.unr-lcssa:                       ; preds = %bb.cd
  br i1 %lcmp.mod518.not, label %._crit_edge.i196, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i196.unr-lcssa, %.lr.ph.i192
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i192 ], [ %indvars.iv.next.i194.1, %._crit_edge.i196.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod519)
  %.not.i.epil = icmp eq i64 %indvars.iv.i193.epil.init, %i.tl
  br i1 %.not.i.epil, label %._crit_edge.i196, label %bb.bz

bb.bz:                                            ; preds = %.epil.preheader
  %i.wc = getelementptr inbounds nuw i8, ptr %.163.i, i64 %indvars.iv.i193.epil.init ; 2 uses
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !16
  %i.we = uitofp i8 %i.wd to float
  %i.wf = fmul float %i.wb, %i.we
  %i.wg = fptoui float %i.wf to i8
  store i8 %i.wg, ptr %i.wc, align 1, !tbaa !16
  br label %._crit_edge.i196

._crit_edge.i196:                                 ; preds = %.epil.preheader, %bb.bz, %._crit_edge.i196.unr-lcssa
  %i.wh = add nuw nsw i64 %.03762.i, 1            ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.163.i, i64 %i.tk
  %exitcond72.not.i = icmp eq i64 %i.wh, %i.sq
  br i1 %exitcond72.not.i, label %.loopexit, label %.lr.ph.i192, !llvm.loop !164

.lr.ph.i192.new:                                  ; preds = %.lr.ph.i192, %bb.cd
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.1, %bb.cd ], [ 0, %.lr.ph.i192 ] ; 4 uses
  %niter521 = phi i64 [ %niter521.next.1, %bb.cd ], [ 0, %.lr.ph.i192 ]
  %.not.i = icmp eq i64 %indvars.iv.i193, %i.tl
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i192.new
  %i.wj = getelementptr inbounds nuw i8, ptr %.163.i, i64 %indvars.iv.i193 ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !16
  %i.wl = uitofp i8 %i.wk to float
  %i.wm = fmul float %i.wb, %i.wl
  %i.wn = fptoui float %i.wm to i8
  store i8 %i.wn, ptr %i.wj, align 1, !tbaa !16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i192.new
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i194, %i.tl
  br i1 %.not.i.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wo = getelementptr inbounds nuw i8, ptr %.163.i, i64 %indvars.iv.next.i194 ; 2 uses
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !16
  %i.wq = uitofp i8 %i.wp to float
  %i.wr = fmul float %i.wb, %i.wq
  %i.ws = fptoui float %i.wr to i8
  store i8 %i.ws, ptr %i.wo, align 1, !tbaa !16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.next.i194.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter521.next.1 = add i64 %niter521, 2         ; 2 uses
  %niter521.ncmp.1 = icmp eq i64 %niter521.next.1, %unroll_iter520
  br i1 %niter521.ncmp.1, label %._crit_edge.i196.unr-lcssa, label %.lr.ph.i192.new, !llvm.loop !165

bb.ce:                                            ; preds = %.critedge158
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bm, %bb.m
  %.pn150 = phi { ptr, i32 } [ %i.wt, %bb.ce ], [ %lpad.phi, %bb.m ], [ %.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0201)
  br label %bb.cg

.loopexit:                                        ; preds = %._crit_edge.i196, %._crit_edge67.i, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307, %._crit_edge393, %bb.bs, %bb.br, %bb.bq, %.preheader59.i, %.lr.ph64.i, %.preheader58.i, %.preheader.lr.ph.i
  %.9 = phi i1 [ false, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307 ], [ false, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit ], [ true, %._crit_edge393 ], [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %.preheader59.i ], [ true, %.lr.ph64.i ], [ true, %.preheader58.i ], [ true, %.preheader.lr.ph.i ], [ true, %._crit_edge67.i ], [ true, %._crit_edge.i196 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0201)
  %.not.i197 = icmp eq ptr %.sroa.0289.1, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.h, %.loopexit
  %.10324 = phi i1 [ %.9, %.loopexit ], [ false, %bb.h ]
  %.sroa.0289.2323 = phi ptr [ %.sroa.0289.1, %.loopexit ], [ %i.aj, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0289.2323) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.cg:                                            ; preds = %bb.cf, %bb.i
  %.sroa.0289.3 = phi ptr [ %.sroa.0289.1, %bb.cf ], [ %.sroa.0289.0, %bb.i ] ; 2 uses
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.cf ], [ %i.an, %bb.i ] ; 2 uses
  %.not.i198 = icmp eq ptr %.sroa.0289.3, null
  br i1 %.not.i198, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199: ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0289.3) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit, %bb.e
  %.11 = phi i1 [ false, %bb.e ], [ %.9, %.loopexit ], [ %.10324, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ]
  ret i1 %.11

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199, %bb.cg, %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.t, %bb.c ], [ %.pn150.pn, %bb.cg ], [ %.pn150.pn, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199 ]
  resume { ptr, i32 } %.merged

bb.ch:                                            ; preds = %bb.f
  %i.wu = landingpad { ptr, i32 }
          catch ptr null
  %i.wv = extractvalue { ptr, i32 } %i.wu, 0
  tail call void @__clang_call_terminate(ptr %i.wv) #33
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.114", align 16 ; 8 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !172
  store i32 %i.b, ptr %6, align 16, !tbaa !16, !alias.scope !169, !noalias !166
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !172
  store i32 %i.d, ptr %i.c, align 16, !tbaa !16, !alias.scope !169, !noalias !166
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !172
  store i32 %i.f, ptr %i.e, align 16, !tbaa !16, !alias.scope !169, !noalias !166
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = load ptr, ptr %5, align 8, !tbaa !60, !noalias !166
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13, !noalias !166
end_hunk_0
