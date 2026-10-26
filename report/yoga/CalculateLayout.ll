Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL19hasPercentageLengthERKNS0_5StyleE:bb.a
  br i1 %i.jy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138

bb.br:                                            ; preds = %bb.bp
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.kb = add nsw i64 %i.jx, -4                   ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !104
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !105 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 2                 ; 2 uses
  %.not.i.i.i.i.i136 = icmp ult i64 %i.kb, %i.ki
  br i1 %.not.i.i.i.i.i136, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.kb, i64 noundef %i.ki) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137:          ; preds = %bb.br
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137, %bb.bq
  %.0.in.i.i.i139 = phi ptr [ %i.jz, %bb.bq ], [ %i.kj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137 ]
  %.0.i11.i.i140 = load float, ptr %.0.in.i.i.i139, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit

bb.bt:                                            ; preds = %bb.bo
  %i.kk = and i16 %i.jw, 2047
  %i.kl = zext nneg i16 %i.kk to i32              ; 2 uses
  %i.km = sub nsw i32 0, %i.kl
  %.not.i10.i.i145 = icmp slt i16 %.sroa.0.0.copyload.i132, 0
  %i.kn = select i1 %.not.i10.i.i145, i32 %i.km, i32 %i.kl
  %i.ko = sitofp i32 %i.kn to float
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit:   ; preds = %bb.bt, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138
  %i.kp = phi float [ %.0.i11.i.i140, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138 ], [ %i.ko, %bb.bt ]
  %i.kq = icmp ne i16 %i.ju, 1
  %i.kr = tail call float @llvm.fabs.f32(float %i.kp)
  %or.cond.i3.i.i141 = fcmp one float %i.kr, +inf
  %i.ks = select i1 %i.kq, i1 %or.cond.i3.i.i141, i1 false
  br i1 %i.ks, label %.critedge, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread: ; preds = %bb.bn, %bb.bn, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 87
  %.sroa.0.0.copyload.i146 = load i16, ptr %i.kt, align 1, !tbaa !12 ; 5 uses
  %i.ku = and i16 %.sroa.0.0.copyload.i146, 7     ; 2 uses
  switch i16 %i.ku, label %bb.bu [
    i16 0, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
    i16 4, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  ]

bb.bu:                                            ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread
  %i.kv = and i16 %.sroa.0.0.copyload.i146, 8
  %.not.i.i149 = icmp eq i16 %i.kv, 0
  %i.kw = lshr i16 %.sroa.0.0.copyload.i146, 4    ; 2 uses
  br i1 %.not.i.i149, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kx = zext nneg i16 %i.kw to i64              ; 2 uses
  %i.ky = icmp ult i16 %.sroa.0.0.copyload.i146, 64
  br i1 %i.ky, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152

bb.bx:                                            ; preds = %bb.bv
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.lb = add nsw i64 %i.kx, -4                   ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !104
  %i.le = load ptr, ptr %i.la, align 8, !tbaa !105 ; 2 uses
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 2                 ; 2 uses
  %.not.i.i.i.i.i150 = icmp ult i64 %i.lb, %i.li
  br i1 %.not.i.i.i.i.i150, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.lb, i64 noundef %i.li) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151:          ; preds = %bb.bx
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151, %bb.bw
  %.0.in.i.i.i153 = phi ptr [ %i.kz, %bb.bw ], [ %i.lj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151 ]
  %.0.i11.i.i154 = load float, ptr %.0.in.i.i.i153, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160

bb.bz:                                            ; preds = %bb.bu
  %i.lk = and i16 %i.kw, 2047
  %i.ll = zext nneg i16 %i.lk to i32              ; 2 uses
  %i.lm = sub nsw i32 0, %i.ll
  %.not.i10.i.i159 = icmp slt i16 %.sroa.0.0.copyload.i146, 0
  %i.ln = select i1 %.not.i10.i.i159, i32 %i.lm, i32 %i.ll
  %i.lo = sitofp i32 %i.ln to float
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160: ; preds = %bb.bz, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152
  %i.lp = phi float [ %.0.i11.i.i154, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152 ], [ %i.lo, %bb.bz ]
  %i.lq = icmp ne i16 %i.ku, 1
  %i.lr = tail call float @llvm.fabs.f32(float %i.lp)
  %or.cond.i3.i.i155 = fcmp one float %i.lr, +inf
  %i.ls = select i1 %i.lq, i1 %or.cond.i3.i.i155, i1 false
  br i1 %i.ls, label %.critedge, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread: ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 89
  %.sroa.0.0.copyload.i161 = load i16, ptr %i.lt, align 1, !tbaa !12 ; 5 uses
  %i.lu = and i16 %.sroa.0.0.copyload.i161, 7     ; 2 uses
  switch i16 %i.lu, label %bb.ca [
    i16 0, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175
    i16 4, label %.fold.split.i.i162
  ]

bb.ca:                                            ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  %i.lv = and i16 %.sroa.0.0.copyload.i161, 8
  %.not.i.i164 = icmp eq i16 %i.lv, 0
  %i.lw = lshr i16 %.sroa.0.0.copyload.i161, 4    ; 2 uses
  br i1 %.not.i.i164, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lx = zext nneg i16 %i.lw to i64              ; 2 uses
  %i.ly = icmp ult i16 %.sroa.0.0.copyload.i161, 64
  br i1 %i.ly, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167

bb.cd:                                            ; preds = %bb.cb
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.mb = add nsw i64 %i.lx, -4                   ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !104
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !105 ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = ashr exact i64 %i.mh, 2                 ; 2 uses
  %.not.i.i.i.i.i165 = icmp ult i64 %i.mb, %i.mi
  br i1 %.not.i.i.i.i.i165, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.mb, i64 noundef %i.mi) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166:          ; preds = %bb.cd
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166, %bb.cc
  %.0.in.i.i.i168 = phi ptr [ %i.lz, %bb.cc ], [ %i.mj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166 ]
  %.0.i11.i.i169 = load float, ptr %.0.in.i.i.i168, align 4, !tbaa !17
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ca
  %i.mk = and i16 %i.lw, 2047
  %i.ml = zext nneg i16 %i.mk to i32              ; 2 uses
  %i.mm = sub nsw i32 0, %i.ml
  %.not.i10.i.i174 = icmp slt i16 %.sroa.0.0.copyload.i161, 0
  %i.mn = select i1 %.not.i10.i.i174, i32 %i.mm, i32 %i.ml
  %i.mo = sitofp i32 %i.mn to float
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167
  %i.mp = phi float [ %.0.i11.i.i169, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167 ], [ %i.mo, %bb.cf ]
  %i.mq = icmp eq i16 %i.lu, 1
  %i.mr = tail call float @llvm.fabs.f32(float %i.mp) ; 2 uses
  br i1 %i.mq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %or.cond.i.i.i172 = fcmp one float %i.mr, +inf
  %.sroa.03.0.insert.ext.i.i.i173 = select i1 %or.cond.i.i.i172, i64 4294967296, i64 2143289344
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

bb.ci:                                            ; preds = %bb.cg
  %or.cond.i3.i.i170 = fcmp ueq float %i.mr, +inf
  %.sroa.03.0.insert.ext.i4.i.i171 = select i1 %or.cond.i3.i.i170, i64 2143289344, i64 8589934592
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

.fold.split.i.i162:                               ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175: ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread, %bb.ch, %bb.ci, %.fold.split.i.i162
  %.sroa.0.1.in.i.i163 = phi i64 [ %.sroa.03.0.insert.ext.i4.i.i171, %bb.ci ], [ 2143289344, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread ], [ %.sroa.03.0.insert.ext.i.i.i173, %bb.ch ], [ 15028191232, %.fold.split.i.i162 ]
  %i.ms = and i64 %.sroa.0.1.in.i.i163, 12884901888
  %i.mt = icmp eq i64 %i.ms, 8589934592
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga5Style6borderENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style6marginENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style7paddingENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit, %.critedge51.1, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit
  %.7 = phi i1 [ true, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit ], [ true, %.critedge51.1 ], [ %i.mt, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175 ], [ true, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160 ], [ true, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style7paddingENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style6marginENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style6borderENS0_4EdgeE.exit ]
  ret i1 %.7
}

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config14useWebDefaultsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !95   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.k) #14
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !23 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !85
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
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
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !23  ; 5 uses
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
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !74

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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
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
  br i1 %i.c, label %bb.o, label %bb.b

end_hunk_0
