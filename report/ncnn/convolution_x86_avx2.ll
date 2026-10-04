Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 88
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
vec.epilog.scalar.ph824.preheader:                ; preds = %iter.check823, %vec.epilog.iter.check825, %vec.epilog.middle.block835
  %indvars.iv5810.i.ph = phi i64 [ 0, %iter.check823 ], [ %n.vec803, %vec.epilog.iter.check825 ], [ %n.vec828, %vec.epilog.middle.block835 ]
  %.55294.us.i.ph = phi ptr [ %.45301.us.i, %iter.check823 ], [ %i.fyb, %vec.epilog.iter.check825 ], [ %i.ghn, %vec.epilog.middle.block835 ]
  %.313955293.us.i.ph = phi i32 [ %.213945300.us.i, %iter.check823 ], [ %i.ghm, %vec.epilog.iter.check825 ], [ %i.gjx, %vec.epilog.middle.block835 ]
  br label %vec.epilog.scalar.ph824

vec.epilog.scalar.ph824:                          ; preds = %vec.epilog.scalar.ph824.preheader, %vec.epilog.scalar.ph824
  %indvars.iv5810.i = phi i64 [ %indvars.iv.next5811.i, %vec.epilog.scalar.ph824 ], [ %indvars.iv5810.i.ph, %vec.epilog.scalar.ph824.preheader ] ; 2 uses
  %.55294.us.i = phi ptr [ %i.gki, %vec.epilog.scalar.ph824 ], [ %.55294.us.i.ph, %vec.epilog.scalar.ph824.preheader ] ; 2 uses
  %.313955293.us.i = phi i32 [ %i.gkh, %vec.epilog.scalar.ph824 ], [ %.313955293.us.i.ph, %vec.epilog.scalar.ph824.preheader ]
  %i.gjy = getelementptr inbounds nuw [4 x i8], ptr %i.fxx, i64 %indvars.iv5810.i
  %i.gjz = load i32, ptr %i.gjy, align 4, !tbaa !24
  %i.gka = sext i32 %i.gjz to i64
  %i.gkb = getelementptr inbounds i8, ptr %gep5309.us.i, i64 %i.gka
  %i.gkc = load i8, ptr %i.gkb, align 1, !tbaa !18
  %i.gkd = sext i8 %i.gkc to i32
  %i.gke = load i8, ptr %.55294.us.i, align 1, !tbaa !18
  %i.gkf = sext i8 %i.gke to i32
  %i.gkg = mul nsw i32 %i.gkf, %i.gkd
  %i.gkh = add nsw i32 %i.gkg, %.313955293.us.i   ; 2 uses
  %i.gki = getelementptr inbounds nuw i8, ptr %.55294.us.i, i64 1
  %indvars.iv.next5811.i = add nuw nsw i64 %indvars.iv5810.i, 1 ; 2 uses
  %exitcond5816.not.i = icmp eq i64 %indvars.iv.next5811.i, %i.fxz
  br i1 %exitcond5816.not.i, label %._crit_edge5297.us.i, label %vec.epilog.scalar.ph824, !llvm.loop !275

._crit_edge5297.us.i:                             ; preds = %vec.epilog.scalar.ph824, %vec.epilog.middle.block835, %middle.block815
  %.lcssa518 = phi i32 [ %i.gjx, %vec.epilog.middle.block835 ], [ %i.ghm, %middle.block815 ], [ %i.gkh, %vec.epilog.scalar.ph824 ] ; 2 uses
  %i.gkj = getelementptr i8, ptr %.45301.us.i, i64 %i.fxz
  %indvars.iv.next5818.i = add nuw nsw i64 %indvars.iv5817.i, 1 ; 2 uses
  %i.gkk = trunc nuw i64 %indvars.iv.next5818.i to i32
  %i.gkl = icmp sgt i32 %i.ffv, %i.gkk
  br i1 %i.gkl, label %iter.check823, label %._crit_edge5303.i, !llvm.loop !276

._crit_edge5303.i:                                ; preds = %._crit_edge5297.us.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, %.preheader.i
  %.21394.lcssa.i = phi i32 [ %.01392.lcssa.i, %.preheader.i ], [ %.01392.lcssa.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %.lcssa518, %._crit_edge5297.us.i ]
  store i32 %.21394.lcssa.i, ptr %.215975311.i, align 4, !tbaa !24
  %i.gkm = getelementptr inbounds nuw i8, ptr %.215975311.i, i64 4
  %i.gkn = add nuw nsw i32 %.215945312.i, 1       ; 2 uses
  %exitcond5820.not.i = icmp eq i32 %i.gkn, %i.asl
  br i1 %exitcond5820.not.i, label %._crit_edge5313.i, label %_ZN4ncnn3MatD2Ev.exit1921.i, !llvm.loop !277

._crit_edge5313.i:                                ; preds = %._crit_edge5303.i, %.preheader4300.i
  %indvars.iv.next5822.i = add nsw i64 %indvars.iv5821.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next5822.i, %i.asx
  br i1 %exitcond.not, label %._crit_edge5315.i, label %.noexc.i, !llvm.loop !278

_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit: ; preds = %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #2

declare void @_ZN4ncnn31convolution_packed_int8_avxvnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.h = load i32, ptr %0, align 4, !tbaa !24     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !24
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !24
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not1900 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1900, label %._crit_edge1902, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge1899
  %.01901 = phi i32 [ %i.k, %.noexc.lr.ph ], [ %i.aqw, %._crit_edge1899 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !24
  %i.v = shl nsw i32 %.01901, 3
  %i.w = add nsw i32 %i.u, %i.v                   ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !25   ; 5 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !28
  %i.z = load i64, ptr %i.n, align 8, !tbaa !16
  %i.aa = load i32, ptr %6, align 4, !tbaa !24
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab                     ; 10 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.ae = load i32, ptr %7, align 4, !tbaa !24    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af                    ; 24 uses
  %i.ah = sdiv i32 %i.w, %i.ae
  %i.ai = load ptr, ptr %4, align 8, !tbaa !15, !noalias !366
  %i.aj = sext i32 %i.ah to i64
  %i.ak = mul i64 %i.ad, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !17, !noalias !366
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = mul nsw i32 %i.y, %i.x                  ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit666.lr.ph, label %.preheader1555

_ZN4ncnn3MatD2Ev.exit666.lr.ph:                   ; preds = %.noexc
  %i.aq = sdiv i32 %i.w, 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = trunc i64 %i.ac to i32
  %i.at = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = mul <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx1544 = shl i64 %i.ag, 3
  %.idx1545 = mul i64 %i.ag, 12
  %.idx1546 = shl i64 %i.ag, 4
  %.idx1547 = mul i64 %i.ag, 20
  %.idx1548 = mul i64 %i.ag, 24
  %.idx1549 = mul i64 %i.ag, 28
  %i.aw = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit666

.preheader1555:                                   ; preds = %bb.n, %.noexc
  %.0610.lcssa = phi i32 [ 0, %.noexc ], [ %i.sq, %bb.n ] ; 3 uses
  %.0604.lcssa = phi ptr [ %i.an, %.noexc ], [ %.3607, %bb.n ] ; 2 uses
  %i.ay = or disjoint i32 %.0610.lcssa, 1         ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.ao
  br i1 %i.az, label %_ZN4ncnn3MatD2Ev.exit653.lr.ph, label %.preheader1554

_ZN4ncnn3MatD2Ev.exit653.lr.ph:                   ; preds = %.preheader1555
  %i.ba = sdiv i32 %i.w, 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = trunc i64 %i.ac to i32
  %i.bd = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %i.be = shufflevector <8 x i32> %i.bd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bf = mul <8 x i32> %i.be, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx1538 = shl i64 %i.ag, 3
  %.idx1539 = mul i64 %i.ag, 12
  %.idx1540 = shl i64 %i.ag, 4
  %.idx1541 = mul i64 %i.ag, 20
  %.idx1542 = mul i64 %i.ag, 24
  %.idx1543 = mul i64 %i.ag, 28
  %i.bg = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.bh = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %_ZN4ncnn3MatD2Ev.exit653

_ZN4ncnn3MatD2Ev.exit666:                         ; preds = %_ZN4ncnn3MatD2Ev.exit666.lr.ph, %bb.n
  %.06041718 = phi ptr [ %i.an, %_ZN4ncnn3MatD2Ev.exit666.lr.ph ], [ %.3607, %bb.n ] ; 6 uses
  %.06101717 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit666.lr.ph ], [ %i.sq, %bb.n ] ; 4 uses
  %i.bi = insertelement <2 x i32> poison, i32 %.06101717, i64 0
  %i.bj = or disjoint i32 %.06101717, 1
  %i.bk = insertelement <4 x i32> poison, i32 %.06101717, i64 0
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bj, i64 1
  %i.bm = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bn = or disjoint <4 x i32> %i.bm, <i32 2, i32 3, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x i32> %i.bl, <4 x i32> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.frozen = freeze <4 x i32> %i.bo               ; 2 uses
  %.frozen2245 = freeze <4 x i32> %i.ax           ; 2 uses
  %i.bp = sdiv <4 x i32> %.frozen, %.frozen2245   ; 4 uses
  %i.bq = mul <4 x i32> %i.bp, %.frozen2245
  %.decomposed = sub <4 x i32> %.frozen, %i.bq    ; 3 uses
  %i.br = load ptr, ptr %8, align 8, !tbaa !15, !noalias !367
  %i.bs = load i64, ptr %i.q, align 8, !tbaa !16, !noalias !367
  %i.bt = mul i64 %i.bs, %i.ar
  %i.bu = load i64, ptr %i.r, align 8, !tbaa !17, !noalias !367
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %9, align 4, !tbaa !24    ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 7
  br i1 %i.by, label %_ZN4ncnn3MatD2Ev.exit665.lr.ph, label %.preheader1553

_ZN4ncnn3MatD2Ev.exit665.lr.ph:                   ; preds = %_ZN4ncnn3MatD2Ev.exit666
  %i.bz = load i32, ptr %6, align 4, !tbaa !24    ; 2 uses
  %i.ca = load i32, ptr %i.s, align 4, !tbaa !25, !noalias !368
  %i.cb = load ptr, ptr %5, align 8, !tbaa !15, !noalias !368 ; 4 uses
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !368
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !368 ; 2 uses
  %factor.op.mul = mul i64 %i.cc, %i.cd
  %i.ce = sext i32 %i.ca to i64
  %i.cf = load i32, ptr %10, align 4, !tbaa !24
  %i.cg = mul i64 %i.cd, %i.ce
  %i.ch = load i32, ptr %11, align 4, !tbaa !24   ; 4 uses
  %i.ci = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ck = mul nsw <4 x i32> %i.cj, %i.bp
  %i.cl = sext <4 x i32> %i.ck to <4 x i64>
  %i.cm = insertelement <4 x i64> poison, i64 %i.cg, i64 0
  %i.cn = shufflevector <4 x i64> %i.cm, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.co = mul <4 x i64> %i.cn, %i.cl              ; 4 uses
  %i.cp = extractelement <4 x i64> %i.co, i64 0
  %invariant.gep = getelementptr i8, ptr %i.cb, i64 %i.cp
  %i.cq = extractelement <4 x i64> %i.co, i64 1
  %invariant.gep1606 = getelementptr i8, ptr %i.cb, i64 %i.cq
  %i.cr = extractelement <4 x i64> %i.co, i64 2
  %invariant.gep1611 = getelementptr i8, ptr %i.cb, i64 %i.cr
  %i.cs = extractelement <4 x i64> %i.co, i64 3
  %invariant.gep1616 = getelementptr i8, ptr %i.cb, i64 %i.cs
  %i.ct = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %14 = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = mul <4 x i32> %14, %.decomposed         ; 4 uses
  %15 = extractelement <4 x i32> %i.cu, i64 0
  %16 = mul i32 %15, %i.ch
  %17 = sext i32 %16 to i64
  %18 = extractelement <4 x i32> %i.cu, i64 1
  %19 = mul i32 %18, %i.ch
  %i.cv = sext i32 %19 to i64
  %i.cw = extractelement <4 x i32> %i.cu, i64 2
  %20 = mul i32 %i.cw, %i.ch
  %i.cx = sext i32 %20 to i64
  %invariant.gep1602 = getelementptr i8, ptr %invariant.gep, i64 %17
  %invariant.gep1607 = getelementptr i8, ptr %invariant.gep1606, i64 %i.cv
  %invariant.gep1612 = getelementptr i8, ptr %invariant.gep1611, i64 %i.cx
  %i.cy = extractelement <4 x i32> %i.cu, i64 3
  %21 = mul i32 %i.cy, %i.ch
  %i.cz = sext i32 %21 to i64
  %invariant.gep1617 = getelementptr i8, ptr %invariant.gep1616, i64 %i.cz
  %i.da = load i32, ptr %12, align 4, !tbaa !24   ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  %i.dc = add i32 %i.da, -1
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 6
  %wide.trip.count = zext nneg i32 %i.da to i64
  br label %_ZN4ncnn3MatD2Ev.exit665

.preheader1553.loopexit:                          ; preds = %._crit_edge
  %i.df = and i32 %i.bx, 2147483640
  %.pre = load i32, ptr %9, align 4, !tbaa !24
  br label %.preheader1553

.preheader1553:                                   ; preds = %.preheader1553.loopexit, %_ZN4ncnn3MatD2Ev.exit666
  %i.dg = phi i32 [ %i.bx, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.pre, %.preheader1553.loopexit ] ; 5 uses
  %.01508.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11509.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %.01502.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11503.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %.01496.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11497.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %.01490.lcssa = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.11491.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %.0631.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit666 ], [ %i.df, %.preheader1553.loopexit ] ; 5 uses
  %.0625.lcssa = phi ptr [ %i.bw, %_ZN4ncnn3MatD2Ev.exit666 ], [ %.1626.lcssa, %.preheader1553.loopexit ] ; 3 uses
  %i.dh = or disjoint i32 %.0631.lcssa, 1
  %i.di = icmp slt i32 %i.dh, %i.dg
  br i1 %i.di, label %_ZN4ncnn3MatD2Ev.exit661.lr.ph, label %.preheader1552

_ZN4ncnn3MatD2Ev.exit661.lr.ph:                   ; preds = %.preheader1553
  %i.dj = load i32, ptr %i.s, align 4, !tbaa !25, !noalias !369
  %i.dk = load ptr, ptr %5, align 8, !tbaa !15, !noalias !369 ; 4 uses
  %i.dl = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !369
  %i.dm = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !369 ; 2 uses
  %factor.op.mul1644 = mul i64 %i.dl, %i.dm
  %i.dn = sext i32 %i.dj to i64
  %i.do = load i32, ptr %10, align 4, !tbaa !24
  %i.dp = mul i64 %i.dm, %i.dn
  %i.dq = load i32, ptr %11, align 4, !tbaa !24
  %i.dr = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dt = mul nsw <4 x i32> %i.ds, %i.bp
  %i.du = sext <4 x i32> %i.dt to <4 x i64>
  %i.dv = insertelement <4 x i64> poison, i64 %i.dp, i64 0
  %i.dw = shufflevector <4 x i64> %i.dv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dx = mul <4 x i64> %i.dw, %i.du              ; 4 uses
  %i.dy = extractelement <4 x i64> %i.dx, i64 0
  %invariant.gep1646 = getelementptr i8, ptr %i.dk, i64 %i.dy
  %i.dz = extractelement <4 x i64> %i.dx, i64 1
  %invariant.gep1651 = getelementptr i8, ptr %i.dk, i64 %i.dz
  %i.ea = extractelement <4 x i64> %i.dx, i64 2
  %invariant.gep1656 = getelementptr i8, ptr %i.dk, i64 %i.ea
  %i.eb = extractelement <4 x i64> %i.dx, i64 3
  %invariant.gep1661 = getelementptr i8, ptr %i.dk, i64 %i.eb
  %i.ec = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ee = mul nsw <4 x i32> %i.ed, %.decomposed   ; 4 uses
  %i.ef = extractelement <4 x i32> %i.ee, i64 0
  %i.eg = sext i32 %i.ef to i64
  %i.eh = extractelement <4 x i32> %i.ee, i64 1
  %i.ei = sext i32 %i.eh to i64
  %i.ej = extractelement <4 x i32> %i.ee, i64 2
  %i.ek = sext i32 %i.ej to i64
  %invariant.gep1647 = getelementptr i8, ptr %invariant.gep1646, i64 %i.eg
  %invariant.gep1652 = getelementptr i8, ptr %invariant.gep1651, i64 %i.ei
  %invariant.gep1657 = getelementptr i8, ptr %invariant.gep1656, i64 %i.ek
  %i.el = extractelement <4 x i32> %i.ee, i64 3
  %i.em = sext i32 %i.el to i64
  %invariant.gep1662 = getelementptr i8, ptr %invariant.gep1661, i64 %i.em
  %i.en = load i32, ptr %12, align 4, !tbaa !24   ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us, label %_ZN4ncnn3MatD2Ev.exit661.preheader

_ZN4ncnn3MatD2Ev.exit661.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit661.lr.ph
  %i.ep = or disjoint i32 %.0631.lcssa, 2
  %i.eq = add nsw i32 %i.dg, -2
  %i.er = sub nsw i32 %i.eq, %.0631.lcssa
  %i.es = and i32 %i.er, -2
  %i.et = add i32 %i.ep, %i.es
  br label %.preheader1552

_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us:          ; preds = %_ZN4ncnn3MatD2Ev.exit661.lr.ph
  %i.eu = load ptr, ptr %13, align 8, !tbaa !29
  %i.ev = add nsw i32 %i.en, -1
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 4
  %i.ey = zext nneg i32 %.0631.lcssa to i64
  %i.ez = bitcast <4 x i64> %.01490.lcssa to <8 x i32>
  %i.fa = bitcast <4 x i64> %.01496.lcssa to <8 x i32>
  %i.fb = bitcast <4 x i64> %.01502.lcssa to <8 x i32>
  %i.fc = bitcast <4 x i64> %.01508.lcssa to <8 x i32>
  %wide.trip.count1986 = zext nneg i32 %i.en to i64
  br label %_ZN4ncnn3MatD2Ev.exit661.us

_ZN4ncnn3MatD2Ev.exit661.us:                      ; preds = %._crit_edge1626.us, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us
  %indvars.iv1988 = phi i64 [ %indvars.iv.next1989, %._crit_edge1626.us ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ] ; 2 uses
  %.26271637.us = phi ptr [ %scevgep1984, %._crit_edge1626.us ], [ %.0625.lcssa, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ] ; 2 uses
  %.214921635.us = phi <8 x i32> [ %i.gq, %._crit_edge1626.us ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ]
  %.214981634.us = phi <8 x i32> [ %i.gt, %._crit_edge1626.us ], [ %i.fa, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ]
  %.215041633.us = phi <8 x i32> [ %i.gw, %._crit_edge1626.us ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ]
  %.215101632.us = phi <8 x i32> [ %i.gz, %._crit_edge1626.us ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit661.lr.ph.split.us ]
  %.reass1645.us = mul i64 %factor.op.mul1644, %indvars.iv1988 ; 4 uses
  %gep1648.us = getelementptr i8, ptr %invariant.gep1647, i64 %.reass1645.us
  %gep1653.us = getelementptr i8, ptr %invariant.gep1652, i64 %.reass1645.us
  %gep1658.us = getelementptr i8, ptr %invariant.gep1657, i64 %.reass1645.us
  %gep1663.us = getelementptr i8, ptr %invariant.gep1662, i64 %.reass1645.us
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit661.us, %bb.c
  %indvars.iv1981 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %indvars.iv.next1982, %bb.c ] ; 2 uses
  %.36281624.us = phi ptr [ %.26271637.us, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %i.ha, %bb.c ] ; 2 uses
  %.314931622.us = phi <8 x i32> [ %.214921635.us, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %i.gq, %bb.c ]
  %.314991621.us = phi <8 x i32> [ %.214981634.us, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %i.gt, %bb.c ]
  %.315051620.us = phi <8 x i32> [ %.215041633.us, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %i.gw, %bb.c ]
  %.315111619.us = phi <8 x i32> [ %.215101632.us, %_ZN4ncnn3MatD2Ev.exit661.us ], [ %i.gz, %bb.c ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv1981
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !24
  %i.ff = sext i32 %i.fe to i64                   ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %gep1648.us, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %gep1658.us, i64 %i.ff ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %gep1663.us, i64 %i.ff ; 2 uses
  %i.fj = load i8, ptr %i.fg, align 1, !tbaa !18
  %i.fk = sext i8 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ac
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !18
  %i.fn = sext i8 %i.fm to i16
  %i.fo = insertelement <8 x i16> poison, i16 %i.fk, i64 0
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fn, i64 1
  %i.fq = getelementptr inbounds i8, ptr %gep1653.us, i64 %i.ff ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18
  %i.fs = sext i8 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ac
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !18
  %i.fv = sext i8 %i.fu to i16
  %i.fw = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fv, i64 1
  %i.fy = load i8, ptr %i.fh, align 1, !tbaa !18
  %i.fz = sext i8 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ac
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !18
  %i.gc = sext i8 %i.gb to i16
  %i.gd = insertelement <8 x i16> poison, i16 %i.fz, i64 0
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.gc, i64 1
  %i.gf = load i8, ptr %i.fi, align 1, !tbaa !18
  %i.gg = sext i8 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ac
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !18
  %i.gj = sext i8 %i.gi to i16
  %i.gk = insertelement <8 x i16> poison, i16 %i.gg, i64 0
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gj, i64 1
  %i.gm = load <16 x i8>, ptr %.36281624.us, align 16, !tbaa !18
  %i.gn = sext <16 x i8> %i.gm to <16 x i16>      ; 4 uses
  %i.go = shufflevector <8 x i16> %i.fp, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gp = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.go, <16 x i16> %i.gn)
  %i.gq = add <8 x i32> %i.gp, %.314931622.us     ; 3 uses
  %i.gr = shufflevector <8 x i16> %i.fx, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gs = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gr, <16 x i16> %i.gn)
  %i.gt = add <8 x i32> %i.gs, %.314991621.us     ; 3 uses
  %i.gu = shufflevector <8 x i16> %i.ge, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gv = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gu, <16 x i16> %i.gn)
  %i.gw = add <8 x i32> %i.gv, %.315051620.us     ; 3 uses
  %i.gx = shufflevector <8 x i16> %i.gl, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.gy = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gx, <16 x i16> %i.gn)
  %i.gz = add <8 x i32> %i.gy, %.315111619.us     ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.36281624.us, i64 16
  %indvars.iv.next1982 = add nuw nsw i64 %indvars.iv1981, 1 ; 2 uses
  %exitcond1987.not = icmp eq i64 %indvars.iv.next1982, %wide.trip.count1986
  br i1 %exitcond1987.not, label %._crit_edge1626.us, label %bb.c, !llvm.loop !327

._crit_edge1626.us:                               ; preds = %bb.c
  %scevgep1983 = getelementptr i8, ptr %.26271637.us, i64 16
  %scevgep1984 = getelementptr i8, ptr %scevgep1983, i64 %i.ex ; 2 uses
  %indvars.iv.next1989 = add nuw nsw i64 %indvars.iv1988, 2 ; 3 uses
  %i.hb = trunc i64 %indvars.iv.next1989 to i32
  %i.hc = or i32 %i.hb, 1
  %i.hd = icmp slt i32 %i.hc, %i.dg
  br i1 %i.hd, label %_ZN4ncnn3MatD2Ev.exit661.us, label %.preheader1552.loopexit, !llvm.loop !328

_ZN4ncnn3MatD2Ev.exit665:                         ; preds = %_ZN4ncnn3MatD2Ev.exit665.lr.ph, %._crit_edge
  %.06251595 = phi ptr [ %i.bw, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %.1626.lcssa, %._crit_edge ] ; 3 uses
  %.06311594 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %i.hr, %._crit_edge ] ; 2 uses
  %.014901593 = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %.11491.lcssa, %._crit_edge ] ; 2 uses
  %.014961592 = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %.11497.lcssa, %._crit_edge ] ; 2 uses
  %.015021591 = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %.11503.lcssa, %._crit_edge ] ; 2 uses
  %.015081590 = phi <4 x i64> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit665.lr.ph ], [ %.11509.lcssa, %._crit_edge ] ; 2 uses
  %i.he = sdiv i32 %.06311594, %i.bz
  %i.hf = sext i32 %i.he to i64
  %.reass = mul i64 %factor.op.mul, %i.hf         ; 4 uses
  %gep1603 = getelementptr i8, ptr %invariant.gep1602, i64 %.reass
  %gep1608 = getelementptr i8, ptr %invariant.gep1607, i64 %.reass
  %gep1613 = getelementptr i8, ptr %invariant.gep1612, i64 %.reass
  %gep1618 = getelementptr i8, ptr %invariant.gep1617, i64 %.reass
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit665
  %i.hg = load ptr, ptr %13, align 8, !tbaa !29
  %i.hh = load i32, ptr %6, align 4, !tbaa !24
  %i.hi = icmp eq i32 %i.hh, 8
  %i.hj = bitcast <4 x i64> %.014901593 to <8 x i32>
  %i.hk = bitcast <4 x i64> %.014961592 to <8 x i32>
  %i.hl = bitcast <4 x i64> %.015021591 to <8 x i32>
  %i.hm = bitcast <4 x i64> %.015081590 to <8 x i32>
  br label %bb.d
end_hunk_0
