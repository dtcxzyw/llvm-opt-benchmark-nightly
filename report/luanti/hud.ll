Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEE:bb.a

"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit96": ; preds = %bb.t, %bb.u
  %.sroa.6.1.i88 = phi i64 [ %i.cb, %bb.u ], [ %.sroa.07.0.i86, %bb.t ]
  %.sroa.17.1.i89 = phi i32 [ %i.by, %bb.u ], [ %i.az, %bb.t ]
  %.sroa.17.8.insert.ext.i91 = zext i32 %.sroa.17.1.i89 to i64
  %.sroa.17.8.insert.shift.i92 = shl nuw i64 %.sroa.17.8.insert.ext.i91, 32
  %.sroa.11.8.insert.ext.i93 = zext i32 %.sroa.11.0.i87 to i64
  %.sroa.11.8.insert.insert.i94 = or disjoint i64 %.sroa.17.8.insert.shift.i92, %.sroa.11.8.insert.ext.i93
  store i64 %.sroa.6.1.i88, ptr %12, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.11.8.insert.insert.i94, ptr %.sroa.410.0..sroa_idx, align 8
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit96"
  %i.cc = sdiv i32 %.sroa.0223.0, 2               ; 2 uses
  %i.cd = add nsw i32 %i.bj, %i.cc
  %i.ce = zext i32 %i.cc to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit96"
  %.sroa.07.0.i109 = phi i64 [ %i.ce, %bb.v ], [ 0, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit96" ] ; 2 uses
  %.sroa.11.0.i110 = phi i32 [ %i.cd, %bb.v ], [ %i.bj, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit96" ]
  br i1 %i.an, label %bb.x, label %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119"

bb.x:                                             ; preds = %bb.w
  %i.cf = sdiv i32 %.sroa.12.0, 2                 ; 2 uses
  %i.cg = add nsw i32 %i.bl, %i.cf
  %i.ch = zext i32 %i.cf to i64
  %i.ci = shl nuw i64 %i.ch, 32
  %i.cj = or disjoint i64 %.sroa.07.0.i109, %i.ci
  br label %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119"

"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119": ; preds = %bb.w, %bb.x
  %.sroa.6.1.i111 = phi i64 [ %i.cj, %bb.x ], [ %.sroa.07.0.i109, %bb.w ]
  %.sroa.17.1.i112 = phi i32 [ %i.cg, %bb.x ], [ %i.bl, %bb.w ]
  %.sroa.17.8.insert.ext.i114 = zext i32 %.sroa.17.1.i112 to i64
  %.sroa.17.8.insert.shift.i115 = shl nuw i64 %.sroa.17.8.insert.ext.i114, 32
  %.sroa.11.8.insert.ext.i116 = zext i32 %.sroa.11.0.i110 to i64
  %.sroa.11.8.insert.insert.i117 = or disjoint i64 %.sroa.17.8.insert.shift.i115, %.sroa.11.8.insert.ext.i116
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119"
  %.sroa.0160.0 = phi i64 [ %.sroa.6.1.i69, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119" ], [ 0, %bb.k ] ; 4 uses
  %.sroa.6.0 = phi i64 [ %.sroa.11.8.insert.insert.i75, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119" ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.6.1.i111, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119" ], [ 0, %bb.k ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.11.8.insert.insert.i117, %"_ZZN3Hud11drawStatbarEN4core8vector2dIiEEttRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iiS2_NS1_IfEEENK3$_0clENS0_11dimension2dIiEES2_.exit119" ], [ 0, %bb.k ] ; 2 uses
  %i.ck = mul nsw i32 %.sroa.0171.0, %.sroa.0223.0 ; 3 uses
  %i.cl = mul nsw i32 %.sroa.16.0, %.sroa.12.0    ; 3 uses
  %i.cm = sdiv i32 %6, 2                          ; 2 uses
  %i.cn = icmp sgt i32 %6, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br label %bb.z

._crit_edge:                                      ; preds = %bb.z, %bb.y
  %.sroa.0198.1.lcssa = phi i32 [ %i.ak, %bb.y ], [ %i.cx, %bb.z ] ; 7 uses
  %.sroa.20.1.lcssa = phi i32 [ %i.al, %bb.y ], [ %i.cy, %bb.z ] ; 7 uses
  br i1 %i.ar, label %bb.aa, label %._crit_edge._crit_edge

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.048272 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %bb.z ]
  %.sroa.20.1271 = phi i32 [ %i.al, %.lr.ph ], [ %i.cy, %bb.z ] ; 3 uses
  %.sroa.0198.1270 = phi i32 [ %i.ak, %.lr.ph ], [ %i.cx, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  store <4 x i32> %i.ct, ptr %13, align 16, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  store i32 %.sroa.0198.1270, ptr %14, align 4, !tbaa !472
  store i32 %.sroa.20.1271, ptr %i.co, align 4, !tbaa !473
  %i.cu = add nsw i32 %.sroa.0198.1270, %.sroa.0223.0
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !472
  %i.cv = add nsw i32 %.sroa.20.1271, %.sroa.12.0
  store i32 %i.cv, ptr %i.cq, align 4, !tbaa !473
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !78
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.cw, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  %i.cx = add nsw i32 %.sroa.0198.1270, %i.ck     ; 2 uses
  %i.cy = add nsw i32 %.sroa.20.1271, %i.cl       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.cz = add nuw nsw i32 %.048272, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cz, %i.cm
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !496

bb.aa:                                            ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0160.0 to i32
  %.sroa.0.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0160.0, 32
  %.sroa.0.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i to i32
  %i.dc = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i
  %i.dd = add nsw i32 %.sroa.20.1.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i
  %.sroa.8.8.extract.trunc.i = trunc i64 %.sroa.6.0 to i32
  %i.de = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.8.8.extract.trunc.i
  %.sroa.8.8.insert.ext.i = zext i32 %i.de to i64
  %.sroa.8.12.extract.shift.i = lshr i64 %.sroa.6.0, 32
  %.sroa.8.12.extract.trunc.i = trunc nuw i64 %.sroa.8.12.extract.shift.i to i32
  %i.df = add nsw i32 %.sroa.20.1.lcssa, %.sroa.8.12.extract.trunc.i
  %.sroa.8.12.insert.ext.i = zext i32 %i.df to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.dd to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.dc to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %15, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.8.12.insert.insert.i, ptr %i.dg, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.db, ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %.not54 = icmp ne ptr %.049, null
  %i.dh = icmp sgt i32 %7, %6
  %or.cond57 = and i1 %i.dh, %.not54
  br i1 %or.cond57, label %bb.ab, label %._crit_edge._crit_edge

bb.ab:                                            ; preds = %bb.aa
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %.sroa.0.sroa.0.0.extract.trunc.i123 = trunc i64 %.sroa.0.0 to i32
  %.sroa.0.sroa.6.0.extract.shift.i124 = lshr i64 %.sroa.0.0, 32
  %.sroa.0.sroa.6.0.extract.trunc.i125 = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i124 to i32
  %i.dj = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i123
  %i.dk = add nsw i32 %.sroa.20.1.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i125
  %.sroa.8.8.extract.trunc.i128 = trunc i64 %.sroa.5.0 to i32
  %i.dl = add nsw i32 %.sroa.0198.1.lcssa, %.sroa.8.8.extract.trunc.i128
  %.sroa.8.8.insert.ext.i129 = zext i32 %i.dl to i64
  %.sroa.8.12.extract.shift.i130 = lshr i64 %.sroa.5.0, 32
  %.sroa.8.12.extract.trunc.i131 = trunc nuw i64 %.sroa.8.12.extract.shift.i130 to i32
  %i.dm = add nsw i32 %.sroa.20.1.lcssa, %.sroa.8.12.extract.trunc.i131
  %.sroa.8.12.insert.ext.i132 = zext i32 %i.dm to i64
  %.sroa.8.12.insert.shift.i133 = shl nuw i64 %.sroa.8.12.insert.ext.i132, 32
  %.sroa.8.12.insert.insert.i134 = or disjoint i64 %.sroa.8.12.insert.shift.i133, %.sroa.8.8.insert.ext.i129
  %.sroa.0.sroa.6.0.insert.ext.i135 = zext i32 %i.dk to i64
  %.sroa.0.sroa.6.0.insert.shift.i136 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i135, 32
  %.sroa.0.sroa.0.0.insert.ext.i137 = zext i32 %i.dj to i64
  %.sroa.0.sroa.0.0.insert.insert.i138 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i136, %.sroa.0.sroa.0.0.insert.ext.i137
  store i64 %.sroa.0.sroa.0.0.insert.insert.i138, ptr %16, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.8.12.insert.insert.i134, ptr %i.dn, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.di, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.do = add nsw i32 %.sroa.0198.1.lcssa, %i.ck
  %i.dp = add nsw i32 %.sroa.20.1.lcssa, %i.cl
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.aa, %bb.ab
  %.sroa.0198.2 = phi i32 [ %i.do, %bb.ab ], [ %.sroa.0198.1.lcssa, %bb.aa ], [ %.sroa.0198.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.20.2 = phi i32 [ %i.dp, %bb.ab ], [ %.sroa.20.1.lcssa, %bb.aa ], [ %.sroa.20.1.lcssa, %._crit_edge ] ; 2 uses
  %.not55 = icmp ne ptr %.049, null
  %i.dq = icmp sgt i32 %7, %6
  %or.cond58 = and i1 %i.dq, %.not55
  br i1 %or.cond58, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %._crit_edge._crit_edge
  %i.dr = zext i1 %i.ar to i32
  %.047 = add nuw nsw i32 %i.cm, %i.dr            ; 2 uses
  %i.ds = sdiv i32 %7, 2                          ; 2 uses
  %i.dt = icmp slt i32 %.047, %i.ds
  br i1 %i.dt, label %.lr.ph279, label %._crit_edge280

.lr.ph279:                                        ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dy = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br label %bb.ad

._crit_edge280:                                   ; preds = %bb.ad, %bb.ac
  %.sroa.0198.3.lcssa = phi i32 [ %.sroa.0198.2, %bb.ac ], [ %i.ed, %bb.ad ] ; 2 uses
  %.sroa.20.3.lcssa = phi i32 [ %.sroa.20.2, %bb.ac ], [ %i.ee, %bb.ad ] ; 2 uses
  br i1 %i.at, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.lr.ph279, %bb.ad
  %.0277 = phi i32 [ %.047, %.lr.ph279 ], [ %i.ef, %bb.ad ]
  %.sroa.20.3276 = phi i32 [ %.sroa.20.2, %.lr.ph279 ], [ %i.ee, %bb.ad ] ; 3 uses
  %.sroa.0198.3275 = phi i32 [ %.sroa.0198.2, %.lr.ph279 ], [ %i.ed, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  store <4 x i32> %i.dz, ptr %17, align 16, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  store i32 %.sroa.0198.3275, ptr %18, align 4, !tbaa !472
  store i32 %.sroa.20.3276, ptr %i.du, align 4, !tbaa !473
  %i.ea = add nsw i32 %.sroa.0198.3275, %.sroa.0223.0
  store i32 %i.ea, ptr %i.dv, align 4, !tbaa !472
  %i.eb = add nsw i32 %.sroa.20.3276, %.sroa.12.0
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !473
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !78
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.ec, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  %i.ed = add nsw i32 %.sroa.0198.3275, %i.ck     ; 2 uses
  %i.ee = add nsw i32 %.sroa.20.3276, %i.cl       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.ef = add nsw i32 %.0277, 1                   ; 2 uses
  %exitcond286.not = icmp eq i32 %i.ef, %i.ds
  br i1 %exitcond286.not, label %._crit_edge280, label %bb.ad, !llvm.loop !497

bb.ae:                                            ; preds = %._crit_edge280
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %.sroa.0.sroa.0.0.extract.trunc.i142 = trunc i64 %.sroa.0160.0 to i32
  %.sroa.0.sroa.6.0.extract.shift.i143 = lshr i64 %.sroa.0160.0, 32
  %.sroa.0.sroa.6.0.extract.trunc.i144 = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift.i143 to i32
  %i.ei = add nsw i32 %.sroa.0198.3.lcssa, %.sroa.0.sroa.0.0.extract.trunc.i142
  %i.ej = add nsw i32 %.sroa.20.3.lcssa, %.sroa.0.sroa.6.0.extract.trunc.i144
  %.sroa.8.8.extract.trunc.i147 = trunc i64 %.sroa.6.0 to i32
  %i.ek = add nsw i32 %.sroa.0198.3.lcssa, %.sroa.8.8.extract.trunc.i147
  %.sroa.8.8.insert.ext.i148 = zext i32 %i.ek to i64
  %.sroa.8.12.extract.shift.i149 = lshr i64 %.sroa.6.0, 32
  %.sroa.8.12.extract.trunc.i150 = trunc nuw i64 %.sroa.8.12.extract.shift.i149 to i32
  %i.el = add nsw i32 %.sroa.20.3.lcssa, %.sroa.8.12.extract.trunc.i150
  %.sroa.8.12.insert.ext.i151 = zext i32 %i.el to i64
  %.sroa.8.12.insert.shift.i152 = shl nuw i64 %.sroa.8.12.insert.ext.i151, 32
  %.sroa.8.12.insert.insert.i153 = or disjoint i64 %.sroa.8.12.insert.shift.i152, %.sroa.8.8.insert.ext.i148
  %.sroa.0.sroa.6.0.insert.ext.i154 = zext i32 %i.ej to i64
  %.sroa.0.sroa.6.0.insert.shift.i155 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i154, 32
  %.sroa.0.sroa.0.0.insert.ext.i156 = zext i32 %i.ei to i64
  %.sroa.0.sroa.0.0.insert.insert.i157 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i155, %.sroa.0.sroa.0.0.insert.ext.i156
  store i64 %.sroa.0.sroa.0.0.insert.insert.i157, ptr %19, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.8.12.insert.insert.i153, ptr %i.em, align 8
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %i.eh, ptr noundef nonnull %.049, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null, ptr noundef nonnull %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge280, %bb.ae, %._crit_edge._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret void
}

declare noundef ptr @_ZN9Inventory7getListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud17drawCompassRotateEP10HudElementPN5video8ITextureERKN4core4rectIiEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.core::rect", align 4        ; 4 uses
  %6 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %7 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %8 = alloca %"class.core::CMatrix4", align 8    ; 10 uses
  %9 = alloca %"class.core::CMatrix4", align 4    ; 8 uses
  %10 = alloca %"class.core::CMatrix4", align 4   ; 8 uses
  %11 = alloca %"class.core::CMatrix4", align 4   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(16) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.k, i64 64, i1 false), !tbaa.struct !498
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.p, i64 64, i1 false), !tbaa.struct !498
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !54
  %i.t = sitofp nsz i32 %4 to float
  %i.u = fmul nnan nsz float %i.t, f0x3C8EFA35
  %i.v = fpext nsz float %i.u to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.v) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 3 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 3 uses
  %i.w = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.x = insertelement <2 x double> %i.w, double %sin40.i.i, i64 1 ; 2 uses
  %i.y = fptrunc <2 x double> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %8, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float -0.000000e+00, ptr %i.z, align 8, !tbaa !54
  %i.aa = fneg nsz double %sin40.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %cos41.i.i, i64 1
  %i.ae = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> zeroinitializer, <2 x double> %i.ad)
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %i.ab, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ah = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %cos41.i.i, i64 1 ; 2 uses
  %i.aj = fmul nsz <2 x double> %i.ai, <double 0.000000e+00, double -0.000000e+00>
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> zeroinitializer, <2 x double> %i.aj)
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %i.ag, align 8, !tbaa !54
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !54
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.as, i8 0, i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 60
  store float 1.000000e+00, ptr %i.at, align 4, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !54
  store float 1.000000e+00, ptr %9, align 4, !tbaa !54
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ba, i8 0, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 60
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40
  store float 1.000000e+00, ptr %i.bc, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !54
  store float 1.000000e+00, ptr %10, align 4, !tbaa !54
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %8)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %2, ptr %i.bn, align 8, !tbaa !55
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(127) %i.bn)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 448
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bt)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.by, i8 0, i64 56, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 60
  store float 1.000000e+00, ptr %i.bz, align 4, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 40
  store float 1.000000e+00, ptr %i.ca, align 4, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 20
  store float 1.000000e+00, ptr %i.cb, align 4, !tbaa !54
  store float 1.000000e+00, ptr %11, align 4, !tbaa !54
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %6)
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 344
end_hunk_0
