Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_aac_sbr_apply_fixed:bb.a
  %.sroa.7.0.extract.trunc11.i1294.i = trunc nuw i64 %.sroa.5.0.i.i1289.i to i32
  %i.cas = icmp eq i32 %.sroa.0.0.i.i1290.i, 0
  %i.cat = icmp slt i32 %.sroa.7.0.extract.trunc11.i1294.i, -149
  %or.cond.i1295.i = select i1 %i.cas, i1 true, i1 %i.cat
  %..i1296.i = select i1 %or.cond.i1295.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1293.i
  store i64 %..i1296.i, ptr %i.cah, align 8, !tbaa !14
  %i.cau = getelementptr inbounds [8 x i8], ptr %i.aew, i64 %indvars.iv1577.i ; 2 uses
  %i.cav = load i64, ptr %i.cau, align 8          ; 2 uses
  %i.caw = shl i64 %i.cav, 32
  %i.cax = ashr exact i64 %i.caw, 32
  %i.cay = mul nsw i64 %i.cax, %i.bzo
  %i.caz = lshr i64 %i.cay, 29
  %.sroa.0.0.insert.insert.i1298.i = add i64 %i.cav, %i.bzp
  %.sroa.0.0.extract.trunc.i.i1299.i = trunc i64 %i.caz to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i1300.i = lshr i64 %.sroa.0.0.insert.insert.i1298.i, 32 ; 2 uses
  %i.cba = add i32 %.sroa.0.0.extract.trunc.i.i1299.i, 1073741824
  %i.cbb = icmp slt i32 %i.cba, 1                 ; 2 uses
  %i.cbc = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i1300.i, 1
  %i.cbd = and i64 %i.cbc, 4294967295
  %.sroa.5.0.i.i1301.i = select i1 %i.cbb, i64 %i.cbd, i64 %.sroa.5.0.extract.shift.i.i1300.i ; 2 uses
  %i.cbe = zext i1 %i.cbb to i32
  %.sroa.0.0.i.i1302.i = ashr i32 %.sroa.0.0.extract.trunc.i.i1299.i, %i.cbe ; 2 uses
  %.sroa.2.0.insert.shift.i.i1303.i = shl nuw i64 %.sroa.5.0.i.i1301.i, 32
  %.sroa.02.0.insert.ext.i.i1304.i = zext i32 %.sroa.0.0.i.i1302.i to i64
  %.sroa.02.0.insert.insert.i.i1305.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i1303.i, %.sroa.02.0.insert.ext.i.i1304.i
  %.sroa.7.0.extract.trunc11.i1306.i = trunc nuw i64 %.sroa.5.0.i.i1301.i to i32
  %i.cbf = icmp eq i32 %.sroa.0.0.i.i1302.i, 0
  %i.cbg = icmp slt i32 %.sroa.7.0.extract.trunc11.i1306.i, -149
  %or.cond.i1307.i = select i1 %i.cbf, i1 true, i1 %i.cbg
  %..i1308.i = select i1 %or.cond.i1307.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i1305.i
  store i64 %..i1308.i, ptr %i.cau, align 8, !tbaa !14
  %indvars.iv.next1578.i = add nsw i64 %indvars.iv1577.i, 1 ; 2 uses
  %i.cbh = load i32, ptr %i.lb, align 8, !tbaa !14 ; 2 uses
  %i.cbi = sub nsw i32 %i.afm, %i.cbh
  %i.cbj = sext i32 %i.cbi to i64
  %i.cbk = icmp slt i64 %indvars.iv.next1578.i, %i.cbj
  br i1 %i.cbk, label %bb.fu, label %.loopexit.i232, !llvm.loop !197

._crit_edge1473.loopexit.i:                       ; preds = %.loopexit.i232
  %.pre1586.i = load i32, ptr %i.ot, align 8, !tbaa !69
  br label %._crit_edge1473.i

._crit_edge1473.i:                                ; preds = %._crit_edge1473.loopexit.i, %bb.bo
  %i.cbl = phi i32 [ %.pre1586.i, %._crit_edge1473.loopexit.i ], [ %i.aej, %bb.bo ] ; 2 uses
  %indvars.iv.next1584.i = add nuw nsw i64 %indvars.iv1583.i, 1 ; 2 uses
  %i.cbm = sext i32 %i.cbl to i64
  %i.cbn = icmp slt i64 %indvars.iv.next1584.i, %i.cbm
  br i1 %i.cbn, label %bb.bm, label %sbr_gain_calc.exit, !llvm.loop !198

sbr_gain_calc.exit:                               ; preds = %._crit_edge1473.i, %.preheader151.i, %.preheader154.i, %sbr_env_estimate.exit
  %i.cbo = load ptr, ptr %i.me, align 8, !tbaa !212
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.ml, i64 31008
  %i.cbq = load i32, ptr %i.mo, align 16, !tbaa !203
  %i.cbr = sext i32 %i.cbq to i64
  %i.cbs = getelementptr inbounds [19456 x i8], ptr %i.cbp, i64 %i.cbr
  tail call void %i.cbo(ptr noundef nonnull %i.cbs, ptr noundef nonnull %i.la, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ml, ptr noundef nonnull %i.rf) #12
  br label %bb.fv

bb.fv:                                            ; preds = %sbr_mapping.exit, %sbr_gain_calc.exit, %sbr_qmf_analysis.exit
  %i.cbt = load ptr, ptr %i.mf, align 16, !tbaa !213
  %i.cbu = getelementptr inbounds nuw [19456 x i8], ptr %i.mg, i64 %indvars.iv
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.ml, i64 31008 ; 2 uses
  %i.cbw = load i32, ptr %i.mo, align 16, !tbaa !203 ; 2 uses
  %i.cbx = sub nsw i32 1, %i.cbw
  %i.cby = sext i32 %i.cbx to i64
  %i.cbz = getelementptr inbounds [19456 x i8], ptr %i.cbv, i64 %i.cby
  %i.cca = sext i32 %i.cbw to i64
  %i.ccb = getelementptr inbounds [19456 x i8], ptr %i.cbv, i64 %i.cca
  %i.ccc = trunc nuw nsw i64 %indvars.iv to i32
  %i.ccd = tail call i32 %i.cbt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cbu, ptr noundef nonnull %i.cbz, ptr noundef nonnull %i.ccb, ptr noundef nonnull %i.ku, i32 noundef %i.ccc, i32 noundef %i.h) #12 ; 0 uses
  %i.cce = and i1 %i.g, %.not165
  br i1 %i.cce, label %bb.z, label %bb.fw, !llvm.loop !199

bb.fw:                                            ; preds = %bb.fv
  %i.ccf = getelementptr inbounds nuw i8, ptr %0, i64 23296
  %i.ccg = load i32, ptr %i.ccf, align 16, !tbaa !74
  %i.cch = icmp eq i32 %i.ccg, 1
  br i1 %i.cch, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.cci = getelementptr inbounds nuw i8, ptr %1, i64 422528 ; 2 uses
  %i.ccj = load i32, ptr %i.cci, align 16, !tbaa !214
  %.not164 = icmp eq i32 %i.ccj, 0
  %i.cck = getelementptr inbounds nuw i8, ptr %1, i64 607168 ; 2 uses
  br i1 %.not164, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ccl = load i32, ptr %i.lb, align 8, !tbaa !14
  %i.ccm = load i32, ptr %i.li, align 16, !tbaa !14
  %i.ccn = add nsw i32 %i.ccm, %i.ccl
  %i.cco = tail call i32 @ff_ps_apply_fixed(ptr noundef nonnull %i.cci, ptr noundef nonnull %i.mg, ptr noundef nonnull %i.cck, i32 noundef %i.ccn) #12 ; 0 uses
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19456) %i.cck, ptr noundef nonnull align 16 dereferenceable(19456) %i.mg, i64 19456, i1 false)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz, %bb.fw
  %.0 = phi i1 [ %i.g, %bb.fw ], [ true, %bb.fz ], [ true, %bb.fy ]
  %i.ccp = getelementptr inbounds nuw i8, ptr %1, i64 647760 ; 2 uses
  %i.ccq = load ptr, ptr %i.ccp, align 16, !tbaa !215
  %i.ccr = getelementptr inbounds nuw i8, ptr %1, i64 647768 ; 2 uses
  %i.ccs = load ptr, ptr %i.ccr, align 8, !tbaa !216
  %i.cct = load ptr, ptr %i.kg, align 16, !tbaa !13
  %i.ccu = getelementptr inbounds nuw i8, ptr %1, i64 209296
  %i.ccv = getelementptr inbounds nuw i8, ptr %1, i64 223760
  tail call fastcc void @sbr_qmf_synthesis(ptr noundef %i.ccq, ptr noundef %i.ccs, ptr noundef nonnull %i.kj, ptr noundef %i.cct, ptr noundef %4, ptr noundef nonnull %i.mg, ptr noundef nonnull %i.kl, ptr noundef nonnull %i.ccu, ptr noundef nonnull %i.ccv, i32 noundef %i.h, i32 noundef %i.f)
  br i1 %.0, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ccw = load ptr, ptr %i.ccp, align 16, !tbaa !215
  %i.ccx = load ptr, ptr %i.ccr, align 8, !tbaa !216
  %i.ccy = load ptr, ptr %i.kg, align 16, !tbaa !13
  %i.ccz = getelementptr inbounds nuw i8, ptr %1, i64 607168
  %i.cda = getelementptr inbounds nuw i8, ptr %1, i64 315968
  %i.cdb = getelementptr inbounds nuw i8, ptr %1, i64 330432
  tail call fastcc void @sbr_qmf_synthesis(ptr noundef %i.ccw, ptr noundef %i.ccx, ptr noundef nonnull %i.kj, ptr noundef %i.ccy, ptr noundef %5, ptr noundef nonnull %i.ccz, ptr noundef nonnull %i.kl, ptr noundef nonnull %i.cda, ptr noundef nonnull %i.cdb, i32 noundef %i.h, i32 noundef %i.f)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_ps_apply_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sbr_qmf_synthesis(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) %8, i32 noundef range(i32 15, 17) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %10, 0                      ; 2 uses
  %i.a = select i1 %.not, ptr @sbr_qmf_window_us, ptr @sbr_qmf_window_ds ; 10 uses
  %i.b = lshr exact i32 128, %10                  ; 3 uses
  %i.c = shl nuw nsw i32 %9, 1
  %i.d = lshr exact i32 1152, %10                 ; 2 uses
  %i.e = sub nuw nsw i32 2304, %i.d               ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.f
  %i.h = shl nuw nsw i32 %i.d, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 9728
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = lshr exact i32 64, %10                   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 9 uses
  %i.r = lshr exact i32 192, %10
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = lshr exact i32 256, %10
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = zext nneg i32 %i.b to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = lshr exact i32 448, %10
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.ac = lshr exact i32 512, %10
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w
  %i.af = lshr exact i32 704, %10
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr exact i32 320, %10
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai
  %i.ak = lshr exact i32 768, %10
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr exact i32 384, %10
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = lshr exact i32 960, %10
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa
  %i.as = lshr exact i32 1024, %10
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.av = lshr exact i32 1216, %10
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr exact i32 576, %10
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0143 = phi ptr [ %4, %bb.a ], [ %i.ee, %bb.f ] ; 20 uses
  %i.ba = load i32, ptr %8, align 4, !tbaa !14    ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.b
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %7, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi i32 [ %i.e, %bb.c ], [ %i.ba, %bb.b ]
  %storemerge = sub nsw i32 %.pn, %i.b            ; 2 uses
  store i32 %storemerge, ptr %8, align 4, !tbaa !14
  %11 = sext i32 %storemerge to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %11 ; 12 uses
  %i.bd = getelementptr inbounds nuw [256 x i8], ptr %i.j, i64 %indvars.iv ; 10 uses
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %5, i64 %indvars.iv ; 18 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load <4 x i32>, ptr %i.be, align 4, !tbaa !14
  %i.bh = sub nsw <4 x i32> zeroinitializer, %i.bg
  store <4 x i32> %i.bh, ptr %i.be, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bj = load <4 x i32>, ptr %i.bi, align 4, !tbaa !14
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.bk, ptr %i.bf, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.bn = load <4 x i32>, ptr %i.bl, align 4, !tbaa !14
  %i.bo = sub nsw <4 x i32> zeroinitializer, %i.bn
  store <4 x i32> %i.bo, ptr %i.bl, align 4, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bq = load <4 x i32>, ptr %i.bp, align 4, !tbaa !14
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.br, ptr %i.bm, align 4, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.bu = load <4 x i32>, ptr %i.bs, align 4, !tbaa !14
  %i.bv = sub nsw <4 x i32> zeroinitializer, %i.bu
  store <4 x i32> %i.bv, ptr %i.bs, align 4, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bx = load <4 x i32>, ptr %i.bw, align 4, !tbaa !14
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.by, ptr %i.bt, align 4, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %i.cb = load <4 x i32>, ptr %i.bz, align 4, !tbaa !14
  %i.cc = sub nsw <4 x i32> zeroinitializer, %i.cb
  store <4 x i32> %i.cc, ptr %i.bz, align 4, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.ce = load <4 x i32>, ptr %i.cd, align 4, !tbaa !14
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cf, ptr %i.ca, align 4, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.ci = load <4 x i32>, ptr %i.cg, align 4, !tbaa !14
  %i.cj = sub nsw <4 x i32> zeroinitializer, %i.ci
  store <4 x i32> %i.cj, ptr %i.cg, align 4, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cl = load <4 x i32>, ptr %i.ck, align 4, !tbaa !14
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cm, ptr %i.ch, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.cp = load <4 x i32>, ptr %i.cn, align 4, !tbaa !14
  %i.cq = sub nsw <4 x i32> zeroinitializer, %i.cp
  store <4 x i32> %i.cq, ptr %i.cn, align 4, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.cs = load <4 x i32>, ptr %i.cr, align 4, !tbaa !14
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.ct, ptr %i.co, align 4, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.cw = load <4 x i32>, ptr %i.cu, align 4, !tbaa !14
  %i.cx = sub nsw <4 x i32> zeroinitializer, %i.cw
  store <4 x i32> %i.cx, ptr %i.cu, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cz = load <4 x i32>, ptr %i.cy, align 4, !tbaa !14
  %i.da = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.da, ptr %i.cv, align 4, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.dd = load <4 x i32>, ptr %i.db, align 4, !tbaa !14
  %i.de = sub nsw <4 x i32> zeroinitializer, %i.dd
  store <4 x i32> %i.de, ptr %i.db, align 4, !tbaa !14
  %i.df = load <4 x i32>, ptr %i.bd, align 4, !tbaa !14
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.dg, ptr %i.dc, align 4, !tbaa !14
  tail call void %1(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %i.be, i64 noundef 4) #12
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !218
  tail call void %i.dh(ptr noundef %i.bc, ptr noundef %6) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !219
  tail call void %i.di(ptr noundef nonnull %i.bd) #12
  %i.dj = getelementptr inbounds nuw [256 x i8], ptr %5, i64 %indvars.iv
  tail call void %1(ptr noundef %0, ptr noundef %6, ptr noundef %i.dj, i64 noundef 4) #12
  tail call void %1(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.bd, i64 noundef 4) #12
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !220
  tail call void %i.dk(ptr noundef %i.bc, ptr noundef nonnull %i.m, ptr noundef %6) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader
  %i.dl = load ptr, ptr %i.o, align 8, !tbaa !221
  tail call void %i.dl(ptr noundef %.0143, ptr noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef %i.p) #12
  %i.dm = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.s
  tail call void %i.dm(ptr noundef %.0143, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.u, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.w
  tail call void %i.do(ptr noundef %.0143, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.y, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aa
  tail call void %i.dq(ptr noundef %.0143, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ab, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ds = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ad
  tail call void %i.ds(ptr noundef %.0143, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.ae, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ag
  tail call void %i.du(ptr noundef %.0143, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.aj, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.al
  tail call void %i.dw(ptr noundef %.0143, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ao, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.dy = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aq
  tail call void %i.dy(ptr noundef %.0143, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ar, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.at
  tail call void %i.ea(ptr noundef %.0143, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.au, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ec = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aw
  tail call void %i.ec(ptr noundef %.0143, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.az, ptr noundef %.0143, i32 noundef %i.p) #12
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0143, i64 %i.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !217

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @ff_psdsp_init_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sbr_make_f_tablelim(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [7 x i16], align 2                ; 11 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @sbr_make_f_tablelim.bands_warped, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 347842 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 347844 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = trunc i32 %i.l to i16                    ; 3 uses
  store i16 %i.m, ptr %i.a, align 2, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 347904 ; 3 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !64  ; 3 uses
  %.not190235 = icmp slt i32 %i.o, 1
  br i1 %.not190235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr i8, ptr %0, i64 347907     ; 5 uses
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = icmp ult i32 %i.o, 4
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.q, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.s = phi i16 [ %i.m, %.lr.ph.new ], [ %i.al, %bb.c ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.t = getelementptr i8, ptr %i.p, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i16
  %i.w = add i16 %i.s, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.w, ptr %i.x, align 2, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %indvars.iv.next
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i16
  %i.ab = add i16 %i.w, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %indvars.iv.next.1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = zext i8 %i.ae to i16
  %i.ag = add i16 %i.ab, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i16
end_hunk_0
