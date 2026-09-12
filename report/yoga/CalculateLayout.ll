Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1590
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.em, i8 noundef zeroext 0)
  %i.en = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %i.t, float noundef %.076.i, float noundef %7, float noundef %6)
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.en, i8 noundef zeroext 1)
  br label %_ZN8facebook4yogaL26measureNodeWithMeasureFuncEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ffRNS0_10LayoutDataENS0_16LayoutPassReasonE.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  store ptr %17, ptr %16, align 8, !tbaa !83
  call void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.eo = icmp ult i32 %4, 3
  br i1 %i.eo, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #14
  unreachable

switch.lookup:                                    ; preds = %bb.i
  %i.ep = icmp ult i32 %5, 3
  br i1 %i.ep, label %switch.lookup4669, label %bb.k

bb.k:                                             ; preds = %switch.lookup
  call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #14
  unreachable

switch.lookup4669:                                ; preds = %switch.lookup
  %switch.cast = trunc nuw i32 %4 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 131073, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast4670 = trunc nuw i32 %5 to i24
  %switch.shiftamt4671 = shl nuw nsw i24 %switch.cast4670, 3
  %switch.downshift4672 = lshr i24 131073, %switch.shiftamt4671
  %switch.masked4673 = trunc i24 %switch.downshift4672 to i8
  %i.eq = call <2 x float> @_ZN8facebook4yoga4Node7measureEfNS0_11MeasureModeEfS2_(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.ee, i8 noundef zeroext %switch.masked, float noundef %i.ek, i8 noundef zeroext %switch.masked4673) ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !150
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !150
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ev = sext i32 %9 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !19
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store float %i.ee, ptr %18, align 4, !tbaa !154
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.fa = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj.25, i64 %i.fa
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.ez, align 4, !tbaa !155
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %i.ek, ptr %i.fb, align 4, !tbaa !156
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.fd = zext nneg i32 %5 to i64
  %switch.gep4675 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj.25, i64 %i.fd
  %switch.load4676 = load i8, ptr %switch.gep4675, align 1
  %switch.ext4677 = zext i8 %switch.load4676 to i32
  store i32 %switch.ext4677, ptr %i.fc, align 4, !tbaa !157
  %i.fe = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <2 x float> %i.eq, ptr %i.fe, align 4, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 %9, ptr %i.ff, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %18, ptr %15, align 8, !tbaa !83
  call void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.fg = add nsw i32 %4, -1
  %or.cond3.i = icmp ult i32 %i.fg, 2
  %i.fh = add nsw i32 %5, -1
  %or.cond5.i = icmp ult i32 %i.fh, 2
  %i.fi = fadd <2 x float> %i.dy, %i.eq           ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  %i.fk = select i1 %or.cond3.i, float %i.fj, float %.0.i875
  %i.fl = call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext %i.t, float noundef %i.fk, float noundef %6, float noundef %6)
  call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.fl, i8 noundef zeroext 0)
  %i.fm = extractelement <2 x float> %i.fi, i64 1
  %i.fn = select i1 %or.cond5.i, float %i.fm, float %.076.i
  %i.fo = call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %i.t, float noundef %i.fn, float noundef %7, float noundef %6)
  call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.fo, i8 noundef zeroext 1)
  br label %_ZN8facebook4yogaL26measureNodeWithMeasureFuncEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ffRNS0_10LayoutDataENS0_16LayoutPassReasonE.exit

_ZN8facebook4yogaL26measureNodeWithMeasureFuncEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ffRNS0_10LayoutDataENS0_16LayoutPassReasonE.exit: ; preds = %bb.h, %switch.lookup4669
  call void @_ZN8facebook4yoga31cleanupContentsNodesRecursivelyEPNS0_4NodeEb(ptr noundef nonnull %0, i1 noundef zeroext %8)
  br label %bb.uo

bb.l:                                             ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %i.fp = tail call noundef i64 @_ZNK8facebook4yoga4Node19getLayoutChildCountEv(ptr noundef nonnull align 8 dereferenceable(744) %0) ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.fr = fsub float %1, %i.ba
  %i.fs = fsub float %2, %i.bb
  %i.ft = add i32 %4, -1
  %or.cond.i876 = icmp ult i32 %i.ft, 2
  br i1 %or.cond.i876, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !16
  %i.fy = fadd float %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !16
  %i.gb = fadd float %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !16
  %i.ge = fadd float %i.gb, %i.gd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.029.i = phi float [ %i.ge, %bb.n ], [ %i.fr, %bb.m ]
  %i.gf = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext %i.t, float noundef %.029.i, float noundef %6, float noundef %6)
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.gf, i8 noundef zeroext 0)
  %i.gg = add i32 %5, -1
  %or.cond3.i877 = icmp ult i32 %i.gg, 2
  br i1 %or.cond3.i877, label %bb.p, label %_ZN8facebook4yogaL26measureNodeWithoutChildrenEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ff.exit

bb.p:                                             ; preds = %bb.o
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !16
  %i.gl = fadd float %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !16
  %i.go = fadd float %i.gl, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !16
  %i.gr = fadd float %i.go, %i.gq
  br label %_ZN8facebook4yogaL26measureNodeWithoutChildrenEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ff.exit

_ZN8facebook4yogaL26measureNodeWithoutChildrenEPNS0_4NodeENS0_9DirectionEffNS0_10SizingModeES4_ff.exit: ; preds = %bb.o, %bb.p
  %.0.i878 = phi float [ %i.gr, %bb.p ], [ %i.fs, %bb.o ]
  %i.gs = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %i.t, float noundef %.0.i878, float noundef %7, float noundef %6)
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.gs, i8 noundef zeroext 1)
  tail call void @_ZN8facebook4yoga31cleanupContentsNodesRecursivelyEPNS0_4NodeEb(ptr noundef nonnull %0, i1 noundef zeroext %8)
  br label %bb.uo

bb.q:                                             ; preds = %bb.l
  br i1 %8, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gt = fsub float %1, %i.ba                    ; 4 uses
  %i.gu = fsub float %2, %i.bb                    ; 4 uses
  %i.gv = icmp eq i32 %4, 0
  %i.gw = icmp eq i32 %4, 2                       ; 2 uses
  %i.gx = fcmp ole float %i.gt, 0.000000e+00
  %spec.select.i.i = and i1 %i.gw, %i.gx
  %i.gy = or i1 %i.gv, %spec.select.i.i
  br i1 %i.gy, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.gz = icmp eq i32 %5, 0
  %i.ha = icmp eq i32 %5, 2                       ; 2 uses
  %i.hb = fcmp ole float %i.gu, 0.000000e+00
  %spec.select.i25.i = and i1 %i.ha, %i.hb
  %i.hc = or i1 %i.gz, %spec.select.i25.i
  br i1 %i.hc, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.r, %bb.s
  tail call void @_ZN8facebook4yoga4Node21cloneChildrenIfNeededEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.hd = fcmp uno float %i.gt, 0.000000e+00
  %i.he = fcmp olt float %i.gt, 0.000000e+00
  %or.cond.i880 = and i1 %i.gw, %i.he
  %or.cond26.i = or i1 %i.hd, %or.cond.i880
  %i.hf = select i1 %or.cond26.i, float 0.000000e+00, float %i.gt
  %i.hg = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext %i.t, float noundef %i.hf, float noundef %6, float noundef %6)
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.hg, i8 noundef zeroext 0)
  %i.hh = fcmp uno float %i.gu, 0.000000e+00
  %i.hi = fcmp olt float %i.gu, 0.000000e+00
  %or.cond3.i881 = and i1 %i.ha, %i.hi
  %or.cond27.i = or i1 %i.hh, %or.cond3.i881
  %i.hj = select i1 %or.cond27.i, float 0.000000e+00, float %i.gu
  %i.hk = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %i.t, float noundef %i.hj, float noundef %7, float noundef %6)
  tail call void @_ZN8facebook4yoga4Node26setLayoutMeasuredDimensionEfNS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.hk, i8 noundef zeroext 1)
  tail call void @_ZN8facebook4yoga31cleanupContentsNodesRecursivelyEPNS0_4NodeEb(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.uo

bb.u:                                             ; preds = %bb.q
  tail call void @_ZN8facebook4yoga4Node21cloneChildrenIfNeededEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  tail call void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext false)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  tail call void @_ZN8facebook4yoga31cleanupContentsNodesRecursivelyEPNS0_4NodeEb(ptr noundef nonnull %0, i1 noundef zeroext %8)
  %i.hl = load i32, ptr %i.ab, align 8            ; 2 uses
  %26 = lshr i32 %i.hl, 2
  %27 = trunc i32 %26 to i8
  %i.hm = and i8 %27, 3                           ; 2 uses
  br i1 %i.x, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  switch i8 %i.hm, label %bb.z [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883
    i8 3, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883

bb.z:                                             ; preds = %bb.x, %bb.w
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883: ; preds = %bb.x, %bb.y, %bb.z
  %.0.i882 = phi i8 [ %i.hm, %bb.z ], [ 2, %bb.y ], [ 3, %bb.x ] ; 27 uses
  %i.hn = icmp samesign ult i8 %.0.i882, 2        ; 16 uses
  %spec.select.i = select i1 %i.x, i8 3, i8 2     ; 2 uses
  %i.ho = select i1 %i.hn, i8 %spec.select.i, i8 0 ; 38 uses
  %i.hp = icmp samesign ugt i8 %.0.i882, 1        ; 32 uses
  %i.hq = icmp ugt i32 %i.hl, 1073741823          ; 5 uses
  %i.hr = select i1 %i.hp, float %6, float %7     ; 10 uses
  %i.hs = select i1 %i.hp, float %7, float %6     ; 7 uses
  %.0.i.i.i.i = select i1 %i.hp, i32 %i.ac, i32 1 ; 2 uses
  %i.ht = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
  %i.hu = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.ht, float noundef %6)
  %i.hv = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %i.t)
  %i.hw = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.hv, float noundef 0.000000e+00)
  %.0.i.i.i7.i = select i1 %i.hp, i32 %i.ag, i32 3 ; 2 uses
  %i.hx = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
  %i.hy = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.hx, float noundef %6)
  %i.hz = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %i.t)
  %i.ia = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.hz, float noundef 0.000000e+00)
  %i.ib = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.ic = insertelement <4 x float> %i.ib, float %i.hw, i64 1
  %i.id = insertelement <4 x float> %i.ic, float %i.hy, i64 2
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 3 ; 4 uses
  %i.if = fcmp ord <4 x float> %i.ie, zeroinitializer
  %i.ig = fcmp uno <4 x float> %i.ie, zeroinitializer
  %i.ih = fcmp olt <4 x float> %i.ie, zeroinitializer
  %i.ii = select <4 x i1> %i.if, <4 x i1> %i.ih, <4 x i1> %i.ig
  %i.ij = select <4 x i1> %i.ii, <4 x float> zeroinitializer, <4 x float> %i.ie ; 2 uses
  %.0.i.i.i.i884 = select i1 %i.hn, i32 %i.ac, i32 1 ; 2 uses
  %i.ik = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i884, i8 noundef zeroext %i.t)
  %i.il = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.ik, float noundef %6)
  %i.im = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i.i884, i8 noundef zeroext %i.t)
  %i.in = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.im, float noundef 0.000000e+00)
  %.0.i.i.i7.i889 = select i1 %i.hn, i32 %i.ag, i32 3 ; 2 uses
  %i.io = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i889, i8 noundef zeroext %i.t)
  %i.ip = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.io, float noundef %6)
  %i.iq = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i32 noundef %.0.i.i.i7.i889, i8 noundef zeroext %i.t)
  %i.ir = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.iq, float noundef 0.000000e+00)
  %i.is = insertelement <4 x float> poison, float %i.il, i64 0
  %i.it = insertelement <4 x float> %i.is, float %i.in, i64 1
  %i.iu = insertelement <4 x float> %i.it, float %i.ip, i64 2
  %i.iv = insertelement <4 x float> %i.iu, float %i.ir, i64 3 ; 4 uses
  %i.iw = fcmp ord <4 x float> %i.iv, zeroinitializer
  %i.ix = fcmp uno <4 x float> %i.iv, zeroinitializer
  %i.iy = fcmp olt <4 x float> %i.iv, zeroinitializer
  %i.iz = select <4 x i1> %i.iw, <4 x i1> %i.iy, <4 x i1> %i.ix
  %i.ja = select <4 x i1> %i.iz, <4 x float> zeroinitializer, <4 x float> %i.iv ; 2 uses
  %i.jb = shufflevector <4 x float> %i.ij, <4 x float> %i.ja, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jc = shufflevector <4 x float> %i.ij, <4 x float> %i.ja, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jd = fadd <4 x float> %i.jb, %i.jc           ; 4 uses
  %shift = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.jd, %shift
  %i.je = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 8 uses
  %shift4679 = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop4680 = fadd <4 x float> %i.jd, %shift4679
  %i.jf = extractelement <4 x float> %foldExtExtBinop4680, i64 2 ; 15 uses
  %i.jg = tail call noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.ho, i8 noundef zeroext %i.t, float noundef %6) ; 17 uses
  %i.jh = select i1 %i.hp, i32 %4, i32 %5         ; 4 uses
  %i.ji = select i1 %i.hp, i32 %5, i32 %4         ; 6 uses
  %i.jj = select i1 %i.hp, float %i.je, float %i.jf
  %i.jk = select i1 %i.hp, float %i.jf, float %i.je
  %i.jl = fsub float %1, %i.ba                    ; 2 uses
  %i.jm = tail call noundef float @_ZN8facebook4yoga32calculateAvailableInnerDimensionEPKNS0_4NodeENS0_9DirectionENS0_9DimensionEffff(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i8 noundef zeroext 0, float noundef %i.jl, float noundef %i.jj, float noundef %6, float noundef %6) ; 85 uses
  %i.jn = fsub float %2, %i.bb                    ; 2 uses
  %i.jo = tail call noundef float @_ZN8facebook4yoga32calculateAvailableInnerDimensionEPKNS0_4NodeENS0_9DirectionENS0_9DimensionEffff(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i8 noundef zeroext 1, float noundef %i.jn, float noundef %i.jk, float noundef %7, float noundef %6) ; 18 uses
  %i.jp = select i1 %i.hp, float %i.jm, float %i.jo ; 4 uses
  %i.jq = select i1 %i.hp, float %i.jo, float %i.jm ; 21 uses
  %i.jr = icmp eq i32 %i.jh, 0
  br i1 %i.jr, label %bb.aa, label %bb.ap

bb.aa:                                            ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !84, !noalias !159
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !85, !noalias !159 ; 2 uses
  %.not.i1572 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i1572, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %0, ptr %13, align 8, !tbaa !92, !alias.scope !159
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false), !alias.scope !159
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !25, !noalias !159
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 60
  %i.ka = load i8, ptr %i.jz, align 4, !noalias !159
  %i.kb = and i8 %i.ka, 12
  %i.kc = icmp eq i8 %i.kb, 8
  br i1 %i.kc, label %bb.ac, label %.lr.ph, !prof !93

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578_crit_edge unwind label %bb.ad

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578_crit_edge: ; preds = %bb.ac
  %.pre = load ptr, ptr %13, align 8, !tbaa !92
  %.pre3136.a = load i64, ptr %i.jw, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578

bb.ad:                                            ; preds = %bb.ac
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %i.jx, align 8, !tbaa !94, !alias.scope !159 ; 2 uses
  %.not12.i.i.i.i1573 = icmp eq ptr %i.ke, null
  br i1 %.not12.i.i.i.i1573, label %common.resume, label %.lr.ph.i.i.i.i1574

.lr.ph.i.i.i.i1574:                               ; preds = %bb.ad, %.lr.ph.i.i.i.i1574
  %.013.i.i.i.i1575 = phi ptr [ %i.kf, %.lr.ph.i.i.i.i1574 ], [ %i.ke, %bb.ad ] ; 2 uses
  %i.kf = load ptr, ptr %.013.i.i.i.i1575, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1575, i64 noundef 24) #16
  %.not.i.i.i3.i1576 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i3.i1576, label %common.resume, label %.lr.ph.i.i.i.i1574, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i1574, %.lr.ph.i.i.i.i1525, %.lr.ph.i.i.i.i, %bb.ep, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1534, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1398, %bb.as, %bb.ad, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1365
  %common.resume.op = phi { ptr, i32 } [ %.pn843.pn.pn.pn.pn.pn, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1365 ], [ %i.kd, %bb.ad ], [ %i.nn, %bb.as ], [ %.pn67.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1398 ], [ %i.ajf, %.lr.ph.i.i.i.i ], [ %i.nn, %.lr.ph.i.i.i.i1525 ], [ %.pn69.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1534 ], [ %i.ajf, %bb.ep ], [ %i.kd, %.lr.ph.i.i.i.i1574 ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !159
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578_crit_edge, %bb.ae
  %i.kg = phi i64 [ %.pre3136.a, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578_crit_edge ], [ 0, %bb.ae ] ; 2 uses
  %i.kh = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578_crit_edge ], [ null, %bb.ae ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i15712852 = icmp ne ptr %i.kh, null
  %i.kj = icmp ne i64 %i.kg, 0
  %i.kk = select i1 %.not.i15712852, i1 true, i1 %i.kj
  br i1 %i.kk, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549

.lr.ph:                                           ; preds = %bb.ab, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578
  %i.kl = phi ptr [ %i.ki, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578 ], [ %i.jw, %bb.ab ] ; 5 uses
  %i.km = phi ptr [ %i.kh, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578 ], [ %0, %bb.ab ]
  %i.kn = phi i64 [ %i.kg, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578 ], [ 0, %bb.ab ]
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ao
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1539

bb.ag:                                            ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559
  %i.kq = phi i64 [ %i.kn, %.lr.ph ], [ %i.mt, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559 ] ; 3 uses
  %i.kr = phi ptr [ %i.km, %.lr.ph ], [ %i.mu, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559 ] ; 2 uses
  %.058.i2853 = phi ptr [ null, %.lr.ph ], [ %.260.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 696
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 704
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !84
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !85 ; 2 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ashr exact i64 %i.ky, 3                 ; 2 uses
  %.not.i.i.i.i1568 = icmp ult i64 %i.kq, %i.kz
  br i1 %.not.i.i.i.i1568, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.kq, i64 noundef %i.kz) #14
          to label %.noexc1569 unwind label %.loopexit.split-lp2450

.noexc1569:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.kq
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !25 ; 4 uses
  %i.lc = invoke noundef zeroext i1 @_ZN8facebook4yoga4Node14isNodeFlexibleEv(ptr noundef nonnull align 8 dereferenceable(744) %i.lb)
          to label %bb.aj unwind label %.loopexit2449, !inline_history !131

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.lc, label %bb.ak, label %.thread2157

bb.ak:                                            ; preds = %bb.aj
  %.not.i = icmp eq ptr %.058.i2853, null
  br i1 %.not.i, label %bb.al, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549

bb.al:                                            ; preds = %bb.ak
  %i.ld = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.lb)
          to label %bb.am unwind label %.loopexit2449, !inline_history !131

bb.am:                                            ; preds = %bb.al
  %i.le = call float @llvm.fabs.f32(float %i.ld)
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559, %bb.ak, %bb.am, %bb.an, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578
  %.361.i = phi ptr [ null, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1578 ], [ %.260.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1559 ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.ak ]
  %i.mx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1540 = icmp eq ptr %i.my, null
  br i1 %.not12.i.i.i1540, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1544, label %.lr.ph.i.i.i1541

.lr.ph.i.i.i1541:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549, %.lr.ph.i.i.i1541
  %.013.i.i.i1542 = phi ptr [ %i.mz, %.lr.ph.i.i.i1541 ], [ %i.my, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549 ] ; 2 uses
  %i.mz = load ptr, ptr %.013.i.i.i1542, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1542, i64 noundef 24) #16
  %.not.i.i.i1543 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i1543, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1544, label %.lr.ph.i.i.i1541, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1544: ; preds = %.lr.ph.i.i.i1541, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1549
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ap

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1539: ; preds = %.loopexit2449, %.loopexit.split-lp2450, %bb.af
  %.pn69.i = phi { ptr, i32 } [ %i.kp, %bb.af ], [ %lpad.loopexit2451, %.loopexit2449 ], [ %lpad.loopexit.split-lp2452, %.loopexit.split-lp2450 ]
  %i.na = load ptr, ptr %i.ko, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i1530 = icmp eq ptr %i.na, null
  br i1 %.not12.i.i.i1530, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1534, label %.lr.ph.i.i.i1531

.lr.ph.i.i.i1531:                                 ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1539, %.lr.ph.i.i.i1531
  %.013.i.i.i1532 = phi ptr [ %i.nb, %.lr.ph.i.i.i1531 ], [ %i.na, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1539 ] ; 2 uses
  %i.nb = load ptr, ptr %.013.i.i.i1532, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i1532, i64 noundef 24) #16
  %.not.i.i.i1533 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i1533, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1534, label %.lr.ph.i.i.i1531, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1534: ; preds = %.lr.ph.i.i.i1531, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1539
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %common.resume

bb.ap:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1544, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883
  %.4.i = phi ptr [ %.361.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1544 ], [ null, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit883 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !84, !noalias !160
  %i.nf = load ptr, ptr %i.nc, align 8, !tbaa !85, !noalias !160 ; 2 uses
  %.not.i1523 = icmp eq ptr %i.ne, %i.nf
  br i1 %.not.i1523, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %0, ptr %14, align 8, !tbaa !92, !alias.scope !160
  %i.ng = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, i8 0, i64 16, i1 false), !alias.scope !160
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !25, !noalias !160
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 60
  %i.nk = load i8, ptr %i.nj, align 4, !noalias !160
  %i.nl = and i8 %i.nk, 12
  %i.nm = icmp eq i8 %i.nl, 8
  br i1 %i.nm, label %bb.ar, label %.lr.ph2862, !prof !93

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529_crit_edge unwind label %bb.as

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529_crit_edge: ; preds = %bb.ar
  %.pre3139 = load ptr, ptr %14, align 8, !tbaa !92
  %.pre3141 = load i64, ptr %i.ng, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529

bb.as:                                            ; preds = %bb.ar
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = load ptr, ptr %i.nh, align 8, !tbaa !94, !alias.scope !160 ; 2 uses
  %.not12.i.i.i.i1524 = icmp eq ptr %i.no, null
  br i1 %.not12.i.i.i.i1524, label %common.resume, label %.lr.ph.i.i.i.i1525

.lr.ph.i.i.i.i1525:                               ; preds = %bb.as, %.lr.ph.i.i.i.i1525
  %.013.i.i.i.i1526 = phi ptr [ %i.np, %.lr.ph.i.i.i.i1525 ], [ %i.no, %bb.as ] ; 2 uses
  %i.np = load ptr, ptr %.013.i.i.i.i1526, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i1526, i64 noundef 24) #16
  %.not.i.i.i3.i1527 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i3.i1527, label %common.resume, label %.lr.ph.i.i.i.i1525, !llvm.loop !0

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !160
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529_crit_edge, %bb.at
  %i.nq = phi i64 [ %.pre3141, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529_crit_edge ], [ 0, %bb.at ] ; 2 uses
  %i.nr = phi ptr [ %.pre3139, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529_crit_edge ], [ null, %bb.at ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not.i15222860 = icmp ne ptr %i.nr, null
  %i.nt = icmp ne i64 %i.nq, 0
  %i.nu = select i1 %.not.i15222860, i1 true, i1 %i.nt
  br i1 %i.nu, label %.lr.ph2862, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1521

.lr.ph2862:                                       ; preds = %bb.aq, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529
  %i.nv = phi ptr [ %i.ns, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529 ], [ %i.ng, %bb.aq ] ; 5 uses
  %i.nw = phi ptr [ %i.nr, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529 ], [ %0, %bb.aq ]
  %i.nx = phi i64 [ %i.nq, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit1529 ], [ 0, %bb.aq ]
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.old2300 = fcmp ord float %i.jm, 0.000000e+00  ; 3 uses
  %i.nz = fcmp ord float %i.jo, 0.000000e+00      ; 3 uses
  %i.oa = icmp eq i32 %4, 0
  %i.ob = icmp eq i32 %5, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.ek
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1403

bb.av:                                            ; preds = %.lr.ph2862, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1413
  %i.oe = phi i64 [ %i.nx, %.lr.ph2862 ], [ %i.ahx, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1413 ] ; 3 uses
  %i.of = phi ptr [ %i.nw, %.lr.ph2862 ], [ %i.ahy, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1413 ] ; 2 uses
  %.062.i2861 = phi float [ 0.000000e+00, %.lr.ph2862 ], [ %.163.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit1413 ] ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 696
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 704
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !84
  %i.oj = load ptr, ptr %i.og, align 8, !tbaa !85 ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = ashr exact i64 %i.om, 3                 ; 2 uses
  %.not.i.i.i.i1509 = icmp ult i64 %i.oe, %i.on
  br i1 %.not.i.i.i.i1509, label %bb.aw, label %.invoke

bb.aw:                                            ; preds = %bb.av
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.oe
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !25 ; 61 uses
  invoke void @_ZN8facebook4yoga4Node17processDimensionsEv(ptr noundef nonnull align 8 dereferenceable(744) %i.op)
          to label %bb.ax unwind label %.loopexit2443, !inline_history !131

bb.ax:                                            ; preds = %bb.aw
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 56 ; 43 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 60 ; 5 uses
  %i.os = load i8, ptr %i.or, align 4
  %i.ot = and i8 %i.os, 12
  %i.ou = icmp eq i8 %i.ot, 4
  br i1 %i.ou, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %8, label %bb.az, label %bb.ej

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN8facebook4yoga24zeroOutLayoutRecursivelyEPNS0_4NodeE(ptr noundef nonnull %i.op)
          to label %bb.ba unwind label %.loopexit2443, !inline_history !131

bb.ba:                                            ; preds = %bb.az
  %i.ov = load i8, ptr %i.op, align 8
  %i.ow = or i8 %i.ov, 1
  store i8 %i.ow, ptr %i.op, align 8
  invoke void @_ZN8facebook4yoga4Node8setDirtyEb(ptr noundef nonnull align 8 dereferenceable(744) %i.op, i1 noundef zeroext false)
          to label %bb.ej unwind label %.loopexit2443, !inline_history !131

.loopexit2443:                                    ; preds = %.noexc1452.invoke, %bb.aw, %bb.az, %bb.ba, %bb.bh, %bb.bi, %bb.eh, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i, %bb.bq, %bb.bs, %.noexc1445, %.noexc1446, %.noexc1447, %.noexc1448, %.noexc1449, %.noexc1450, %.noexc1451, %bb.bt, %.noexc1454, %.noexc1455, %.noexc1456, %.noexc1457, %.noexc1458, %.noexc1459, %.noexc1460, %bb.bw, %.noexc1462, %.noexc1465, %.noexc1467, %.noexc1469, %.noexc1471, %bb.ca, %.noexc1473, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i.i, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit.i, %.noexc1477, %.noexc1478, %bb.ci, %.noexc1480, %bb.cn, %.noexc1482, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit300.i.thread2173, %.noexc1495, %.noexc1496, %.noexc1497, %.noexc1499, %.noexc1500, %.noexc1501, %.noexc1502, %.noexc1503, %.noexc1504, %.noexc1505, %.noexc1453
  %lpad.loopexit2445 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1403

.loopexit.split-lp2444:                           ; preds = %.invoke
  %lpad.loopexit.split-lp2446 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1403

bb.bb:                                            ; preds = %bb.ax
  br i1 %8, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ox = invoke noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %i.op, i8 noundef zeroext %i.t)
          to label %bb.bd unwind label %bb.be, !inline_history !131

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN8facebook4yoga4Node11setPositionENS0_9DirectionEff(ptr noundef nonnull align 8 dereferenceable(744) %i.op, i8 noundef zeroext %i.ox, float noundef %i.jm, float noundef %i.jo)
          to label %bb.bf unwind label %bb.be, !inline_history !131

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit1403

bb.bf:                                            ; preds = %bb.bd, %bb.bb
  %i.oz = load i32, ptr %i.oq, align 8
  %i.pa = and i32 %i.oz, 805306368
  %i.pb = icmp eq i32 %i.pa, 536870912
  br i1 %i.pb, label %bb.ej, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pc = icmp eq ptr %i.op, %.4.i
  br i1 %i.pc, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN8facebook4yoga4Node36setLayoutComputedFlexBasisGenerationEj(ptr noundef nonnull align 8 dereferenceable(744) %i.op, i32 noundef %12)
          to label %bb.bi unwind label %.loopexit2443, !inline_history !131

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN8facebook4yoga4Node26setLayoutComputedFlexBasisENS0_13FloatOptionalE(ptr noundef nonnull align 8 dereferenceable(744) %i.op, float 0.000000e+00)
          to label %bb.eh unwind label %.loopexit2443, !inline_history !131

bb.bj:                                            ; preds = %bb.bg
  %i.pd = load i32, ptr %i.ab, align 8
  %28 = lshr i32 %i.pd, 2
  %29 = trunc i32 %28 to i8
  %i.pe = and i8 %29, 3                           ; 2 uses
  br i1 %i.x, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  switch i8 %i.pe, label %bb.bm [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i
    i8 3, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.0.i.i1414 = phi i8 [ %i.pe, %bb.bm ], [ 2, %bb.bl ], [ 3, %bb.bk ] ; 3 uses
  %i.pf = icmp samesign ugt i8 %.0.i.i1414, 1     ; 15 uses
  %i.pg = select i1 %i.pf, float %i.jm, float %i.jo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store float +qnan, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store float +qnan, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.ph = invoke float @_ZNK8facebook4yoga4Node16resolveFlexBasisENS0_9DirectionENS0_13FlexDirectionEff(ptr noundef nonnull align 8 dereferenceable(744) %i.op, i8 noundef zeroext %i.t, i8 noundef zeroext %.0.i.i1414, float noundef %i.pg, float noundef %i.jm)
          to label %.noexc1442 unwind label %.loopexit2443, !inline_history !134 ; 5 uses

.noexc1442:                                       ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.op, i64 728 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pi, align 8 ; 2 uses
  %i.pj = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.pk = trunc i64 %i.pj to i8
  %i.pl = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.pm = bitcast i32 %i.pl to float              ; 2 uses
  switch i8 %i.pk, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i
    i8 2, label %bb.bn
  ]

bb.bn:                                            ; preds = %.noexc1442
  %i.pn = fmul float %i.jm, %i.pm
  %i.po = fmul float %i.pn, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i: ; preds = %bb.bn, %.noexc1442
  %.sroa.0.0.i.i.i = phi float [ %i.po, %bb.bn ], [ %i.pm, %.noexc1442 ]
  %i.pp = fcmp oge float %.sroa.0.0.i.i.i, 0.000000e+00
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i, %.noexc1442
  %i.pq = phi i1 [ %i.pp, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i.i ], [ false, %.noexc1442 ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.op, i64 736 ; 3 uses
  %.sroa.0.0.copyload.i.i193.i = load i64, ptr %i.pr, align 8 ; 2 uses
  %i.ps = lshr i64 %.sroa.0.0.copyload.i.i193.i, 32
  %i.pt = trunc i64 %i.ps to i8
  %i.pu = trunc i64 %.sroa.0.0.copyload.i.i193.i to i32
  %i.pv = bitcast i32 %i.pu to float              ; 2 uses
  switch i8 %i.pt, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i
    i8 2, label %bb.bo
  ]

bb.bo:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %i.pw = fmul float %i.jo, %i.pv
  %i.px = fmul float %i.pw, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i: ; preds = %bb.bo, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %.sroa.0.0.i.i195.i = phi float [ %i.px, %bb.bo ], [ %i.pv, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i ]
  %i.py = fcmp oge float %.sroa.0.0.i.i195.i, 0.000000e+00
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i
  %i.pz = phi i1 [ %i.py, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i194.i ], [ false, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.i ] ; 3 uses
  %i.qa = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.qb = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48) %i.qa, i8 noundef zeroext 1)
          to label %.noexc1443 unwind label %.loopexit2443, !inline_history !134

.noexc1443:                                       ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit196.i
  %or.cond2297 = fcmp ord float %i.ph, %i.pg
  br i1 %or.cond2297, label %bb.bp, label %.critedge.i

bb.bp:                                            ; preds = %.noexc1443
  %i.qc = getelementptr inbounds nuw i8, ptr %i.op, i64 336
  %i.qd = getelementptr inbounds nuw i8, ptr %i.op, i64 340
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !161
  %i.qf = fcmp uno float %i.qe, 0.000000e+00
  br i1 %i.qf, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qg = getelementptr inbounds nuw i8, ptr %i.op, i64 720
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !76
  %i.qi = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48) %i.qh, i8 noundef zeroext 0)
          to label %.noexc1444 unwind label %.loopexit2443, !inline_history !134

.noexc1444:                                       ; preds = %bb.bq
  br i1 %i.qi, label %bb.br, label %.noexc1453

bb.br:                                            ; preds = %.noexc1444
  %i.qj = load i32, ptr %i.qc, align 8, !tbaa !162
  %.not192.i = icmp eq i32 %i.qj, %12
  br i1 %.not192.i, label %.noexc1453, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.0.i.i.i.i.i = select i1 %i.pf, i32 %i.ac, i32 1 ; 2 uses
  %i.qk = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %.0.i.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1445 unwind label %.loopexit2443, !inline_history !134

.noexc1445:                                       ; preds = %bb.bs
  %i.ql = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.qk, float noundef %i.jm)
          to label %.noexc1446 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1446:                                       ; preds = %.noexc1445
  %or.cond.i.i.i.i.i = fcmp ord float %i.ql, 0.000000e+00
  %i.qm = fcmp uno float %i.ql, 0.000000e+00
  %i.qn = fcmp olt float %i.ql, 0.000000e+00
  %.sink.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.qn, i1 %i.qm
  %i.qo = select i1 %.sink.i.i.i.i.i, float 0.000000e+00, float %i.ql
  %i.qp = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %.0.i.i.i.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1447 unwind label %.loopexit2443, !inline_history !134

.noexc1447:                                       ; preds = %.noexc1446
  %i.qq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.qp, float noundef 0.000000e+00)
          to label %.noexc1448 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1448:                                       ; preds = %.noexc1447
  %or.cond.i.i6.i.i.i = fcmp ord float %i.qq, 0.000000e+00
  %i.qr = fcmp uno float %i.qq, 0.000000e+00
  %i.qs = fcmp olt float %i.qq, 0.000000e+00
  %.sink.i.i7.i.i.i = select i1 %or.cond.i.i6.i.i.i, i1 %i.qs, i1 %i.qr
  %i.qt = select i1 %.sink.i.i7.i.i.i, float 0.000000e+00, float %i.qq
  %i.qu = fadd float %i.qo, %i.qt
  %.0.i.i.i7.i.i = select i1 %i.pf, i32 %i.ag, i32 3 ; 2 uses
  %i.qv = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %.0.i.i.i7.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1449 unwind label %.loopexit2443, !inline_history !134

.noexc1449:                                       ; preds = %.noexc1448
  %i.qw = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.qv, float noundef %i.jm)
          to label %.noexc1450 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1450:                                       ; preds = %.noexc1449
  %or.cond.i.i.i8.i.i = fcmp ord float %i.qw, 0.000000e+00
  %i.qx = fcmp uno float %i.qw, 0.000000e+00
  %i.qy = fcmp olt float %i.qw, 0.000000e+00
  %.sink.i.i.i9.i.i = select i1 %or.cond.i.i.i8.i.i, i1 %i.qy, i1 %i.qx
  %i.qz = select i1 %.sink.i.i.i9.i.i, float 0.000000e+00, float %i.qw
  %i.ra = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %.0.i.i.i7.i.i, i8 noundef zeroext %i.t)
          to label %.noexc1451 unwind label %.loopexit2443, !inline_history !134

.noexc1451:                                       ; preds = %.noexc1450
  %i.rb = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.ra, float noundef 0.000000e+00)
          to label %.noexc1452 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1452:                                       ; preds = %.noexc1451
  %or.cond.i.i6.i10.i.i = fcmp ord float %i.rb, 0.000000e+00
  %i.rc = fcmp uno float %i.rb, 0.000000e+00
  %i.rd = fcmp olt float %i.rb, 0.000000e+00
  %.sink.i.i7.i11.i.i = select i1 %or.cond.i.i6.i10.i.i, i1 %i.rd, i1 %i.rc
  %i.re = select i1 %.sink.i.i7.i11.i.i, float 0.000000e+00, float %i.rb
  %i.rf = fadd float %i.qz, %i.re
  %i.rg = fadd float %i.qu, %i.rf                 ; 3 uses
  %or.cond.i.i.i1440 = fcmp ord float %i.ph, %i.rg
  %i.rh = fcmp uno float %i.ph, 0.000000e+00
  %i.ri = fcmp olt float %i.ph, %i.rg
  %.sink.i.i.i1441 = select i1 %or.cond.i.i.i1440, i1 %i.ri, i1 %i.rh
  %i.rj = select i1 %.sink.i.i.i1441, float %i.rg, float %i.ph
  br label %.noexc1452.invoke

.noexc1452.invoke:                                ; preds = %.noexc1506, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit227.i, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i, %.noexc1452
  %i.rk = phi float [ %i.rj, %.noexc1452 ], [ %i.sy, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit.i ], [ %i.vg, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit227.i ], [ %i.agh, %.noexc1506 ]
  invoke void @_ZN8facebook4yoga4Node26setLayoutComputedFlexBasisENS0_13FloatOptionalE(ptr noundef nonnull align 8 dereferenceable(744) %i.op, float %i.rk)
          to label %.noexc1453 unwind label %.loopexit2443, !inline_history !134

.critedge.i:                                      ; preds = %.noexc1443
  %or.cond.i1415 = and i1 %i.pf, %i.pq
  br i1 %or.cond.i1415, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %.critedge.i
  %i.rl = invoke i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %i.ac, i8 noundef zeroext %i.t)
          to label %.noexc1454 unwind label %.loopexit2443, !inline_history !134

.noexc1454:                                       ; preds = %bb.bt
  %i.rm = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.rl, float noundef %i.jm)
          to label %.noexc1455 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1455:                                       ; preds = %.noexc1454
  %or.cond.i.i.i.i198.i = fcmp ord float %i.rm, 0.000000e+00
  %i.rn = fcmp uno float %i.rm, 0.000000e+00
  %i.ro = fcmp olt float %i.rm, 0.000000e+00
  %.sink.i.i.i.i199.i = select i1 %or.cond.i.i.i.i198.i, i1 %i.ro, i1 %i.rn
  %i.rp = select i1 %.sink.i.i.i.i199.i, float 0.000000e+00, float %i.rm
  %i.rq = invoke i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %i.ac, i8 noundef zeroext %i.t)
          to label %.noexc1456 unwind label %.loopexit2443, !inline_history !134

.noexc1456:                                       ; preds = %.noexc1455
  %i.rr = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i16 %i.rq, float noundef 0.000000e+00)
          to label %.noexc1457 unwind label %.loopexit2443, !inline_history !134 ; 4 uses

.noexc1457:                                       ; preds = %.noexc1456
end_hunk_1
begin_hunk_2_@_ZN8facebook4yogaL19calculateLayoutImplEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj:bb.a
  invoke void @_ZN8facebook4yoga4Node20setLayoutHadOverflowEb(ptr noundef nonnull align 8 dereferenceable(744) %0, i1 noundef zeroext %i.brq)
          to label %bb.ld unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ld:                                            ; preds = %bb.lc
  %i.brr = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc939 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc939:                                        ; preds = %bb.ld
  %i.brs = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %.0.i882, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc940 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc940:                                        ; preds = %.noexc939
  %.val.i.i.i = load i16, ptr %i.aji, align 1
  %i.brt = load i16, ptr %i.akv, align 1, !tbaa !18 ; 2 uses
  %i.bru = and i16 %i.brt, 7
  %.not.i3.i.i = icmp eq i16 %i.bru, 0
  %.sroa.0.0.i5.i.i = select i1 %.not.i3.i.i, i16 %.val.i.i.i, i16 %i.brt
  %i.brv = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.i5.i.i, float noundef %.37872179)
          to label %.noexc941 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc941:                                        ; preds = %.noexc940
  %or.cond.i.i.i = fcmp ord float %i.brv, 0.000000e+00
  %i.brw = fcmp uno float %i.brv, 0.000000e+00
  %i.brx = fcmp olt float %i.brv, 0.000000e+00
  %.sink.i.i.i = select i1 %or.cond.i.i.i, i1 %i.brx, i1 %i.brw
  %i.bry = select i1 %.sink.i.i.i, float 0.000000e+00, float %i.brv ; 8 uses
  %i.brz = load float, ptr %i.akj, align 8, !tbaa !168 ; 2 uses
  %i.bsa = fcmp ogt float %i.brz, 0.000000e+00
  %or.cond214.i = select i1 %i.akw, i1 %i.bsa, i1 false
  br i1 %or.cond214.i, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i, label %._crit_edge201.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i: ; preds = %.noexc941
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.akx, align 1, !tbaa !12 ; 7 uses
  %i.bsb = and i16 %.sroa.0.0.copyload.i.i, 7     ; 3 uses
  switch i16 %i.bsb, label %bb.le [
    i16 0, label %.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread
  ]

bb.le:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.bsc = icmp eq i16 %i.bsb, 5
  %i.bsd = lshr i16 %.sroa.0.0.copyload.i.i, 4    ; 3 uses
  %i.bse = and i16 %.sroa.0.0.copyload.i.i, -25
  %or.cond.i937 = icmp eq i16 %i.bse, 5
  %i.bsf = icmp eq i16 %i.bsd, 2
  %i.bsg = and i1 %i.bsc, %i.bsf
  %or.cond185.i = or i1 %or.cond.i937, %i.bsg
  br i1 %or.cond185.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bsh = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i938 = icmp eq i16 %i.bsh, 0
  br i1 %.not.i.i.i938, label %bb.lj, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsi = zext nneg i16 %i.bsd to i64            ; 2 uses
  %i.bsj = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.bsj, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.bsi
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.li:                                            ; preds = %bb.lg
  %i.bsl = load ptr, ptr %i.aky, align 8, !tbaa !101 ; 2 uses
  %i.bsm = add nsw i64 %i.bsi, -4                 ; 3 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !104
  %i.bsp = load ptr, ptr %i.bsl, align 8, !tbaa !105 ; 2 uses
  %i.bsq = ptrtoint ptr %i.bso to i64
  %i.bsr = ptrtoint ptr %i.bsp to i64
  %i.bss = sub i64 %i.bsq, %i.bsr
  %i.bst = ashr exact i64 %i.bss, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.bsm, %i.bst
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %.invoke3649

.invoke3649:                                      ; preds = %bb.li, %bb.ho, %bb.hg, %bb.kv, %bb.kq, %bb.jx, %bb.ju, %bb.jr, %bb.jm, %bb.jh
  %i.bsu = phi i64 [ %i.axy, %bb.ho ], [ %i.bos, %bb.kv ], [ %i.biw, %bb.jx ], [ %i.bfj, %bb.jh ], [ %i.bnw, %bb.kq ], [ %i.bih, %bb.ju ], [ %i.bhl, %bb.jr ], [ %i.bgf, %bb.jm ], [ %i.awh, %bb.hg ], [ %i.bsm, %bb.li ]
  %i.bsv = phi i64 [ %i.ayf, %bb.ho ], [ %i.boz, %bb.kv ], [ %i.bjd, %bb.jx ], [ %i.bfq, %bb.jh ], [ %i.bod, %bb.kq ], [ %i.bio, %bb.ju ], [ %i.bhs, %bb.jr ], [ %i.bgm, %bb.jm ], [ %i.awo, %bb.hg ], [ %i.bst, %bb.li ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.bsu, i64 noundef %i.bsv) #14
          to label %.cont3650 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3650:                                        ; preds = %.invoke3649
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.li
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.bsp, i64 %i.bsm
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, %bb.lh
  %.0.in.i.i.i = phi ptr [ %i.bsk, %bb.lh ], [ %i.bsw, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i2.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !19
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

bb.lj:                                            ; preds = %bb.lf
  %i.bsx = and i16 %i.bsd, 2047
  %i.bsy = zext nneg i16 %i.bsx to i32            ; 2 uses
  %i.bsz = sub nsw i32 0, %i.bsy
  %.not.i13.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i.i, 0
  %i.bta = select i1 %.not.i13.i.i.i, i32 %i.bsz, i32 %i.bsy
  %i.btb = sitofp i32 %i.bta to float
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i: ; preds = %bb.lj, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i
  %i.btc = phi float [ %.0.i2.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i ], [ %i.btb, %bb.lj ]
  %i.btd = call float @llvm.fabs.f32(float %i.btc)
  %.sroa.0.1.in.i.i.i = fcmp ueq float %i.btd, +inf
  %i.bte = icmp eq i16 %i.bsb, 0
  %or.cond3657 = or i1 %i.bte, %.sroa.0.1.in.i.i.i
  br i1 %or.cond3657, label %.thread.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread: ; preds = %bb.le, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  %i.btf = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %.sroa.0.0.copyload.i.i, float noundef %i.hr)
          to label %.noexc944 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc944:                                        ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread.i.thread
  %i.btg = load i8, ptr %i.ajy, align 4
  %i.bth = and i8 %i.btg, 16
  %i.bti = icmp ne i8 %i.bth, 0
  %i.btj = fcmp ord float %i.btf, 0.000000e+00
  %or.cond.i.i936 = select i1 %i.bti, i1 %i.btj, i1 false
  br i1 %or.cond.i.i936, label %bb.lk, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

bb.lk:                                            ; preds = %.noexc944
  %i.btk = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akl, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc945 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc945:                                        ; preds = %bb.lk
  %i.btl = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akl, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc946 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc946:                                        ; preds = %.noexc945
  %i.btm = fadd float %i.btk, %i.btl              ; 2 uses
  %i.btn = fcmp ord float %i.btm, 0.000000e+00
  %.sroa.0.0.i.i = select i1 %i.btn, float %i.btm, float 0.000000e+00
  %i.bto = fadd float %i.btf, %.sroa.0.0.i.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i: ; preds = %.noexc946, %.noexc944
  %.sroa.010.1.i.i = phi float [ %i.btf, %.noexc944 ], [ %i.bto, %.noexc946 ]
  %i.btp = fcmp ord float %.sroa.010.1.i.i, 0.000000e+00
  br i1 %i.btp, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i, label %.thread.i

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i: ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i
  %i.btq = load i16, ptr %i.akx, align 1, !tbaa !12 ; 2 uses
  %i.btr = and i16 %i.btq, 7
  %i.bts = icmp eq i16 %i.btr, 0
  br i1 %i.bts, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i, label %bb.ll

bb.ll:                                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i
  %i.btt = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i16 %i.btq, float noundef %i.hr)
          to label %.noexc947 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc947:                                        ; preds = %bb.ll
  %i.btu = load i8, ptr %i.ajy, align 4
  %i.btv = and i8 %i.btu, 16
  %i.btw = icmp ne i8 %i.btv, 0
  %i.btx = fcmp ord float %i.btt, 0.000000e+00
  %or.cond.i141.i = select i1 %i.btw, i1 %i.btx, i1 false
  br i1 %or.cond.i141.i, label %bb.lm, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i

bb.lm:                                            ; preds = %.noexc947
  %i.bty = invoke noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akl, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc948 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc948:                                        ; preds = %bb.lm
  %i.btz = invoke noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, i8 noundef zeroext %i.akl, i8 noundef zeroext %i.t, float noundef %6)
          to label %.noexc949 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc949:                                        ; preds = %.noexc948
  %i.bua = fadd float %i.bty, %i.btz              ; 2 uses
  %i.bub = fcmp ord float %i.bua, 0.000000e+00
  %.sroa.0.0.i143.i = select i1 %i.bub, float %i.bua, float 0.000000e+00
  %i.buc = fadd float %i.btt, %.sroa.0.0.i143.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i: ; preds = %.noexc949, %.noexc947, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i
  %.sroa.010.1.i142.i = phi float [ +qnan, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit140.i ], [ %i.buc, %.noexc949 ], [ %i.btt, %.noexc947 ]
  %i.bud = fsub float %.sroa.010.1.i142.i, %i.brr
  %i.bue = fsub float %i.bud, %i.brs
  %i.buf = load float, ptr %i.akj, align 8, !tbaa !168
  %i.bug = fsub float %.37872179, %i.buf
  %i.buh = fsub float %i.bue, %i.bug              ; 2 uses
  %i.bui = fcmp ogt float %i.buh, 0.000000e+00
  %i.buj = select i1 %i.bui, float %i.buh, float 0.000000e+00 ; 2 uses
  store float %i.buj, ptr %i.akj, align 8, !tbaa !168
  br label %._crit_edge201.i

.thread.i:                                        ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit.i
  store float 0.000000e+00, ptr %i.akj, align 8, !tbaa !168
  br label %bb.ln

._crit_edge201.i:                                 ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i, %.noexc941
  %i.buk = phi float [ %i.brz, %.noexc941 ], [ %i.buj, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit144.i ] ; 3 uses
  %i.bul = fcmp ult float %i.buk, 0.000000e+00
  br i1 %i.bul, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %._crit_edge201.i, %.thread.i
  %i.bum = phi float [ 0.000000e+00, %.thread.i ], [ %i.buk, %._crit_edge201.i ]
  %i.bun = load i32, ptr %i.ab, align 8
  %30 = lshr i32 %i.bun, 4
  %i.buo = trunc i32 %30 to i8
  %31 = and i8 %i.buo, 15
  br label %bb.lp

bb.lo:                                            ; preds = %._crit_edge201.i
  %i.bup = load i32, ptr %i.ab, align 8
  %32 = lshr i32 %i.bup, 4
  %i.buq = trunc i32 %32 to i8
  %33 = and i8 %i.buq, 15                         ; 2 uses
  %.off.i.i = add nsw i8 %33, -4
  %switch.i.i = icmp ult i8 %.off.i.i, 3
  %..i146.i = select i1 %switch.i.i, i8 1, i8 %33
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %i.bur = phi float [ %i.bum, %bb.ln ], [ %i.buk, %bb.lo ] ; 5 uses
  %i.bus = phi i8 [ %31, %bb.ln ], [ %..i146.i, %bb.lo ]
  %i.but = load i64, ptr %i.ala, align 8, !tbaa !170
  %i.buu = icmp eq i64 %i.but, 0
  br i1 %i.buu, label %bb.lq, label %bb.lx

bb.lq:                                            ; preds = %bb.lp
  switch i8 %i.bus, label %bb.lx [
    i8 6, label %bb.lv
    i8 4, label %bb.lt
    i8 3, label %bb.ls
    i8 5, label %bb.lw
    i8 2, label %bb.lr
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.buv = fmul float %i.bur, 5.000000e-01
  br label %bb.lx

bb.ls:                                            ; preds = %bb.lq
  br label %bb.lx

bb.lt:                                            ; preds = %bb.lq
  %i.buw = load ptr, ptr %i.akk, align 8, !tbaa !84
  %i.bux = load ptr, ptr %20, align 8, !tbaa !85
  %i.buy = ptrtoint ptr %i.buw to i64
  %i.buz = ptrtoint ptr %i.bux to i64
  %i.bva = sub i64 %i.buy, %i.buz
  %i.bvb = ashr exact i64 %i.bva, 3               ; 2 uses
  %i.bvc = icmp ugt i64 %i.bvb, 1
  br i1 %i.bvc, label %bb.lu, label %bb.lx

bb.lu:                                            ; preds = %bb.lt
  %i.bvd = add nsw i64 %i.bvb, -1
  %i.bve = uitofp i64 %i.bvd to float
  %i.bvf = fdiv float %i.bur, %i.bve
  %i.bvg = fadd float %i.bry, %i.bvf
  br label %bb.lx

bb.lv:                                            ; preds = %bb.lq
  %i.bvh = load ptr, ptr %i.akk, align 8, !tbaa !84
  %i.bvi = load ptr, ptr %20, align 8, !tbaa !85
  %i.bvj = ptrtoint ptr %i.bvh to i64
  %i.bvk = ptrtoint ptr %i.bvi to i64
  %i.bvl = sub i64 %i.bvj, %i.bvk
  %i.bvm = ashr exact i64 %i.bvl, 3
  %i.bvn = add nsw i64 %i.bvm, 1
  %i.bvo = uitofp i64 %i.bvn to float
  %i.bvp = fdiv float %i.bur, %i.bvo              ; 2 uses
  %i.bvq = fadd float %i.bry, %i.bvp
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lq
  %i.bvr = fmul float %i.bur, 5.000000e-01
  %i.bvs = load ptr, ptr %i.akk, align 8, !tbaa !84
  %i.bvt = load ptr, ptr %20, align 8, !tbaa !85
  %i.bvu = ptrtoint ptr %i.bvs to i64
  %i.bvv = ptrtoint ptr %i.bvt to i64
  %i.bvw = sub i64 %i.bvu, %i.bvv
  %i.bvx = ashr exact i64 %i.bvw, 3
  %i.bvy = uitofp i64 %i.bvx to float
  %i.bvz = fdiv float %i.bvr, %i.bvy              ; 2 uses
  %i.bwa = call float @llvm.fmuladd.f32(float %i.bvz, float 2.000000e+00, float %i.bry)
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp
  %.0132.i = phi float [ 0.000000e+00, %bb.lq ], [ %i.bvp, %bb.lv ], [ 0.000000e+00, %bb.lu ], [ 0.000000e+00, %bb.lt ], [ %i.bur, %bb.ls ], [ %i.bvz, %bb.lw ], [ %i.buv, %bb.lr ], [ 0.000000e+00, %bb.lp ]
  %.0131.i = phi float [ %i.bry, %bb.lq ], [ %i.bvq, %bb.lv ], [ %i.bvg, %bb.lu ], [ %i.bry, %bb.lt ], [ %i.bry, %bb.ls ], [ %i.bwa, %bb.lw ], [ %i.bry, %bb.lr ], [ %i.bry, %bb.lp ]
  %i.bwb = fadd float %i.brr, %.0132.i
  store float %i.bwb, ptr %i.alb, align 4, !tbaa !171
  store float 0.000000e+00, ptr %i.alc, align 8, !tbaa !172
  %i.bwc = invoke noundef zeroext i1 @_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE(ptr noundef nonnull %0)
          to label %.noexc950 unwind label %.loopexit.split-lp2425.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc950:                                        ; preds = %bb.lx
  %i.bwd = load ptr, ptr %20, align 8, !tbaa !23  ; 2 uses
  %i.bwe = load ptr, ptr %i.akk, align 8, !tbaa !23 ; 2 uses
  %i.bwf = icmp eq ptr %i.bwd, %i.bwe
  br i1 %i.bwf, label %._crit_edge.i, label %.lr.ph.split.i

._crit_edge.loopexit.i:                           ; preds = %bb.ng
  %shift4682 = shufflevector <2 x float> %i.ccn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4683 = fadd <2 x float> %i.ccn, %shift4682
  %i.bwg = extractelement <2 x float> %foldExtExtBinop4683, i64 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc950
  %.0129.lcssa.i = phi float [ 0.000000e+00, %.noexc950 ], [ %i.bwg, %._crit_edge.loopexit.i ]
  %i.bwh = load float, ptr %i.alb, align 4, !tbaa !171
  %i.bwi = fadd float %i.brs, %i.bwh
  store float %i.bwi, ptr %i.alb, align 4, !tbaa !171
  br i1 %i.bwc, label %bb.nh, label %_ZN8facebook4yogaL15justifyMainAxisEPNS0_4NodeERNS0_8FlexLineENS0_13FlexDirectionES5_NS0_9DirectionENS0_10SizingModeES7_fffffb.exit

.lr.ph.split.i:                                   ; preds = %.noexc950, %bb.ng
  %.sroa.0161.0196.i = phi ptr [ %i.cco, %bb.ng ], [ %i.bwd, %.noexc950 ] ; 2 uses
  %i.bwj = phi <2 x float> [ %i.ccn, %bb.ng ], [ zeroinitializer, %.noexc950 ] ; 6 uses
  %i.bwk = load ptr, ptr %.sroa.0161.0196.i, align 8, !tbaa !25 ; 46 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 56 ; 4 uses
  switch i8 %.0.i882, label %default.unreachable4246 [
    i8 0, label %bb.md
    i8 1, label %_ZNK8facebook4yoga5Style21flexStartMarginIsAutoENS0_13FlexDirectionENS0_9DirectionE.exit.i
    i8 2, label %bb.ly
    i8 3, label %bb.me
  ]

bb.ly:                                            ; preds = %.lr.ph.split.i
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwk, i64 69
  switch i8 %i.t, label %bb.mb [
    i8 1, label %bb.lz
    i8 2, label %bb.ma
  ]

bb.lz:                                            ; preds = %bb.ly
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwk, i64 77
  %i.bwo = load i16, ptr %i.bwn, align 1, !tbaa !18 ; 2 uses
  %i.bwp = and i16 %i.bwo, 7
  %.not14.i.i1795 = icmp eq i16 %i.bwp, 0
  br i1 %.not14.i.i1795, label %bb.mb, label %.noexc951

bb.ma:                                            ; preds = %bb.ly
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwk, i64 79
  %i.bwr = load i16, ptr %i.bwq, align 1, !tbaa !18 ; 2 uses
  %i.bws = and i16 %i.bwr, 7
  %.not.i.i1791 = icmp eq i16 %i.bws, 0
  br i1 %.not.i.i1791, label %bb.mb, label %.noexc951

bb.mb:                                            ; preds = %bb.ma, %bb.lz, %bb.ly
  %i.bwt = load i16, ptr %i.bwm, align 1, !tbaa !18 ; 2 uses
  %i.bwu = and i16 %i.bwt, 7
  %.not15.i.i1792 = icmp eq i16 %i.bwu, 0
  br i1 %.not15.i.i1792, label %bb.mc, label %.noexc951

bb.mc:                                            ; preds = %bb.mb
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwk, i64 81 ; 2 uses
  %i.bww = load i16, ptr %i.bwv, align 1, !tbaa !18
  %i.bwx = and i16 %i.bww, 7
  %.not16.i.i1793 = icmp eq i16 %i.bwx, 0
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwk, i64 85
  %spec.select.i.i1794 = select i1 %.not16.i.i1793, ptr %i.bwy, ptr %i.bwv
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i1778

bb.md:                                            ; preds = %.lr.ph.split.i
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwk, i64 71 ; 2 uses
  %i.bxa = load i16, ptr %i.bwz, align 1, !tbaa !18
  %i.bxb = and i16 %i.bxa, 7
  %.not.i3.i1787 = icmp eq i16 %i.bxb, 0
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwk, i64 83 ; 2 uses
  %i.bxd = load i16, ptr %i.bxc, align 1
  %i.bxe = and i16 %i.bxd, 7
  %.not7.i.i1788 = icmp eq i16 %i.bxe, 0
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwk, i64 85
  %spec.select.i4.i1789 = select i1 %.not7.i.i1788, ptr %i.bxf, ptr %i.bxc
  %.sroa.0.0.in.i.i1790 = select i1 %.not.i3.i1787, ptr %spec.select.i4.i1789, ptr %i.bwz
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i1778

default.unreachable4246:                          ; preds = %bb.mn, %.lr.ph.split.i
  unreachable

bb.me:                                            ; preds = %.lr.ph.split.i
  switch i8 %i.t, label %bb.mh [
    i8 1, label %bb.mf
    i8 2, label %bb.mg
  ]

bb.mf:                                            ; preds = %bb.me
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bwk, i64 79
  %i.bxh = load i16, ptr %i.bxg, align 1, !tbaa !18 ; 2 uses
  %i.bxi = and i16 %i.bxh, 7
  %.not14.i12.i1786 = icmp eq i16 %i.bxi, 0
  br i1 %.not14.i12.i1786, label %bb.mh, label %.noexc951

bb.mg:                                            ; preds = %bb.me
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bwk, i64 77
  %i.bxk = load i16, ptr %i.bxj, align 1, !tbaa !18 ; 2 uses
  %i.bxl = and i16 %i.bxk, 7
  %.not.i6.i1782 = icmp eq i16 %i.bxl, 0
  br i1 %.not.i6.i1782, label %bb.mh, label %.noexc951

bb.mh:                                            ; preds = %bb.mg, %bb.mf, %bb.me
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bwk, i64 73
  %i.bxn = load i16, ptr %i.bxm, align 1, !tbaa !18 ; 2 uses
  %i.bxo = and i16 %i.bxn, 7
  %.not15.i8.i1783 = icmp eq i16 %i.bxo, 0
  br i1 %.not15.i8.i1783, label %bb.mi, label %.noexc951

bb.mi:                                            ; preds = %bb.mh
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bwk, i64 81 ; 2 uses
  %i.bxq = load i16, ptr %i.bxp, align 1, !tbaa !18
  %i.bxr = and i16 %i.bxq, 7
  %.not16.i9.i1784 = icmp eq i16 %i.bxr, 0
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bwk, i64 85
  %spec.select.i10.i1785 = select i1 %.not16.i9.i1784, ptr %i.bxs, ptr %i.bxp
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i1778

_ZNK8facebook4yoga5Style21flexStartMarginIsAutoENS0_13FlexDirectionENS0_9DirectionE.exit.i: ; preds = %.lr.ph.split.i
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bwk, i64 75 ; 2 uses
  %i.bxu = load i16, ptr %i.bxt, align 1, !tbaa !18
  %i.bxv = and i16 %i.bxu, 7
  %.not.i13.i1774 = icmp eq i16 %i.bxv, 0
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bwk, i64 83 ; 2 uses
  %i.bxx = load i16, ptr %i.bxw, align 1
  %i.bxy = and i16 %i.bxx, 7
end_hunk_2
begin_hunk_3_@_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv:bb.a
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !94
  store ptr %i.x, ptr %i.v, align 8, !tbaa !94
  store ptr %i.v, ptr %i.m, align 8, !tbaa !94
  store ptr %.0.peel, ptr %0, align 8, !tbaa !92
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !25  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !85
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !94
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !94
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !94
  store ptr %.0, ptr %0, align 8, !tbaa !92
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !196

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 0) #14
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !75

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  store ptr %i.q, ptr %0, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !99
  store i64 %i.s, ptr %i.a, align 8, !tbaa !95
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !94
  store ptr %i.t, ptr %i.m, align 8, !tbaa !94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #16
  %i.u = load i64, ptr %i.a, align 8, !tbaa !95
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !85  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !93

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = and i8 %1, -2
  %i.b = icmp eq i8 %i.a, 2                       ; 7 uses
  %storemerge.in.v = select i1 %i.b, i64 32, i64 36
  %storemerge.in = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge.in.v
  %storemerge = load float, ptr %storemerge.in, align 4, !tbaa !16 ; 2 uses
  %i.c = fcmp ord float %storemerge, 0.000000e+00
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  %.not105 = icmp eq ptr %i.g, null
  %i.h = select i1 %i.b, float 0.000000e+00, float +qnan ; 2 uses
  %i.i = select i1 %i.b, i8 2, i8 0               ; 2 uses
  %i.j = select i1 %i.b, float +qnan, float 0.000000e+00 ; 2 uses
  %i.k = select i1 %i.b, i8 0, i8 2               ; 2 uses
  br i1 %.not105, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call <2 x float> @_ZN8facebook4yoga4Node17measureMinContentEfNS0_11MeasureModeEfS2_(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.h, i8 noundef zeroext %i.i, float noundef %i.j, i8 noundef zeroext %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call <2 x float> @_ZN8facebook4yoga4Node7measureEfNS0_11MeasureModeEfS2_(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.h, i8 noundef zeroext %i.i, float noundef %i.j, i8 noundef zeroext %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi <2 x float> [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = tail call noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %0, i8 noundef zeroext %2) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = tail call noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i8 noundef zeroext %1, i8 noundef zeroext %i.n, float noundef %3)
  %i.q = tail call noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i8 noundef zeroext %1, i8 noundef zeroext %i.n, float noundef %3)
  %i.r = fadd float %i.p, %i.q
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.s = select i1 %i.b, float %.sroa.0.0.vec.extract, float %.sroa.0.4.vec.extract
  %i.t = fadd float %i.s, %i.r
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %0, i8 noundef zeroext %2) ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %.fr104 = freeze i32 %i.ab
  %4 = lshr i32 %.fr104, 2
  %5 = trunc i32 %4 to i8                         ; 2 uses
  %i.ac = and i8 %5, 3                            ; 3 uses
  %i.ad = icmp eq i8 %i.z, 2
  br i1 %i.ad, label %bb.i, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.i:                                             ; preds = %bb.h
  switch i8 %i.ac, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread99 [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread
    i8 3, label %bb.j
  ]

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread99: ; preds = %bb.i
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread

bb.j:                                             ; preds = %bb.i
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit: ; preds = %bb.h
  %i.ae = and i8 %5, 2
  %spec.select = xor i8 %i.ae, 2
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread: ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit, %bb.i, %bb.j, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread99
  %.0.i98 = phi i8 [ 2, %bb.j ], [ %i.ac, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ], [ %i.ac, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread99 ], [ 3, %bb.i ] ; 5 uses
  %i.af = phi i8 [ 0, %bb.j ], [ %spec.select, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ], [ 3, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread99 ], [ 0, %bb.i ] ; 4 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !84  ; 2 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !85  ; 2 uses
  %.not110 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not110, label %._crit_edge, label %_ZNK8facebook4yoga4Node8getChildEm.exit

._crit_edge:                                      ; preds = %bb.m, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread
  %.093.lcssa = phi float [ 0.000000e+00, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ], [ %.194, %bb.m ]
  %.087.lcssa = phi float [ 0.000000e+00, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ], [ %.1, %bb.m ]
  %i.ai = tail call noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i8 noundef zeroext %.0.i98, i8 noundef zeroext %i.z, float noundef %3)
  %i.aj = tail call noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i8 noundef zeroext %.0.i98, i8 noundef zeroext %i.z, float noundef %3)
  %i.ak = fadd float %i.ai, %i.aj
  %i.al = fadd float %.087.lcssa, %i.ak
  %i.am = tail call noundef float @_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i8 noundef zeroext %i.af, i8 noundef zeroext %i.z, float noundef %3)
  %i.an = tail call noundef float @_ZNK8facebook4yoga5Style30computeFlexEndPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i8 noundef zeroext %i.af, i8 noundef zeroext %i.z, float noundef %3)
  %i.ao = fadd float %i.am, %i.an
  %i.ap = fadd float %.093.lcssa, %i.ao
  %i.aq = icmp samesign ugt i8 %.0.i98, 1
  %i.ar = xor i1 %i.b, %i.aq
  %i.as = select i1 %i.ar, float %i.ap, float %i.al
  br label %bb.n

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread, %bb.m
  %i.at = phi ptr [ %i.bn, %bb.m ], [ %i.ah, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 3 uses
  %i.au = phi ptr [ %i.bo, %bb.m ], [ %i.ag, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 2 uses
  %.086108 = phi i64 [ %i.bp, %bb.m ], [ 0, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 2 uses
  %.087107 = phi float [ %.1, %bb.m ], [ 0.000000e+00, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 3 uses
  %.093106 = phi float [ %.194, %bb.m ], [ 0.000000e+00, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.086108
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 12
  %i.bb = icmp eq i8 %i.ba, 4
  br i1 %i.bb, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.bc = load i32, ptr %i.ax, align 8
  %i.bd = and i32 %i.bc, 805306368
  %i.be = icmp eq i32 %i.bd, 536870912
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef nonnull %i.aw, i8 noundef zeroext %.0.i98, i8 noundef zeroext %i.z, float noundef %3)
  %i.bg = tail call noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ax, i8 noundef zeroext %.0.i98, float noundef %3)
  %i.bh = fadd float %i.bf, %i.bg
  %i.bi = tail call fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef nonnull %i.aw, i8 noundef zeroext %i.af, i8 noundef zeroext %i.z, float noundef %3)
  %i.bj = tail call noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ax, i8 noundef zeroext %i.af, float noundef %3)
  %i.bk = fadd float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fadd float %.087107, %i.bh
  %i.bm = fcmp olt float %.093106, %i.bk
  %.sroa.speculated = select i1 %i.bm, float %i.bk, float %.093106
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !84
  %.pre111 = load ptr, ptr %i.u, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.k, %bb.l
  %i.bn = phi ptr [ %i.at, %_ZNK8facebook4yoga4Node8getChildEm.exit ], [ %i.at, %bb.k ], [ %.pre111, %bb.l ] ; 2 uses
  %i.bo = phi ptr [ %i.au, %_ZNK8facebook4yoga4Node8getChildEm.exit ], [ %i.au, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %.194 = phi float [ %.093106, %_ZNK8facebook4yoga4Node8getChildEm.exit ], [ %.093106, %bb.k ], [ %.sroa.speculated, %bb.l ] ; 2 uses
  %.1 = phi float [ %.087107, %_ZNK8facebook4yoga4Node8getChildEm.exit ], [ %.087107, %bb.k ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bp = add nuw i64 %.086108, 1                 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = icmp ult i64 %i.bp, %i.bt
  br i1 %i.bu, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %._crit_edge, !llvm.loop !198

bb.n:                                             ; preds = %bb.a, %bb.g, %._crit_edge, %bb.f
  %.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.t, %bb.f ], [ %i.as, %._crit_edge ], [ %storemerge, %bb.a ]
  ret float %.0
}

declare <2 x float> @_ZN8facebook4yoga4Node17measureMinContentEfNS0_11MeasureModeEfS2_(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE9_M_assignISt24_Fwd_list_const_iteratorIS6_EEEvT_SC_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca ptr, align 8                ; 7 uses
  %.sroa.09.024 = load ptr, ptr %0, align 8, !tbaa !94 ; 2 uses
  %i.a = icmp eq ptr %.sroa.09.024, null
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.09.027 = phi ptr [ %.sroa.09.0, %bb.b ], [ %.sroa.09.024, %bb.a ] ; 3 uses
  %.sroa.018.026 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.013.025 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.b = icmp eq ptr %.sroa.018.026, %2
  br i1 %i.b, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.027, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !98
  store ptr %i.e, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.09.027, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !99
  %i.i = load ptr, ptr %.sroa.013.025, align 8, !tbaa !94 ; 2 uses
  %i.j = load ptr, ptr %.sroa.018.026, align 8, !tbaa !94 ; 2 uses
  %.sroa.09.0 = load ptr, ptr %.sroa.09.027, align 8, !tbaa !94 ; 2 uses
  %i.k = icmp eq ptr %.sroa.09.0, null
  br i1 %i.k, label %.critedge, label %.lr.ph, !llvm.loop !199

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.013.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.018.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = icmp eq ptr %.sroa.018.0.lcssa, %2
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store ptr null, ptr %.sroa.0.i, align 8, !tbaa !94
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.m, %.noexc.i.i ], [ %.sroa.0.i, %bb.c ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.p, %.noexc.i.i ], [ %.sroa.018.0.lcssa, %bb.c ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i.i unwind label %bb.d ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store ptr %i.m, ptr %.07.i.i.i, align 8, !tbaa !94
  %i.p = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.q = icmp eq ptr %i.p, %2
  br i1 %i.q, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load ptr, ptr %.sroa.0.i, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, null
  br i1 %.not12.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i: ; preds = %.noexc.i.i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i = load ptr, ptr %.sroa.0.i, align 8, !tbaa !94 ; 3 uses
  %i.t = icmp eq ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, null
  br i1 %i.t, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, %thread-pre-split.i
  %i.u = phi ptr [ %.pr13.i, %thread-pre-split.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i ] ; 2 uses
  %.pr13.i = load ptr, ptr %i.u, align 8, !tbaa !94 ; 2 uses
  %.not14.i.i = icmp eq ptr %.pr13.i, null
  br i1 %.not14.i.i, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i, label %thread-pre-split.i, !llvm.loop !200

.body.i:                                          ; preds = %.lr.ph.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  resume { ptr, i32 } %i.r

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i: ; preds = %thread-pre-split.i
  %i.v = load ptr, ptr %.sroa.013.0.lcssa, align 8, !tbaa !94
  store ptr %i.v, ptr %i.u, align 8, !tbaa !94
  store ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, ptr %.sroa.013.0.lcssa, align 8, !tbaa !94
  br label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit: ; preds = %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.e

.critedge.thread:                                 ; preds = %.lr.ph
  %i.w = load ptr, ptr %.sroa.013.025, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.w, null
  br i1 %.not12.i.i, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE11erase_afterESt24_Fwd_list_const_iteratorIS6_ESA_.exit, label %.lr.ph.i.i
end_hunk_3
