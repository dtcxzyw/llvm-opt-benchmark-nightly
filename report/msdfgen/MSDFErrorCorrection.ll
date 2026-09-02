Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/MSDFErrorCorrection?download=true
inline.NumInlined: 699
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE:bb.a
  %i.hg = load i8, ptr %i.gy, align 1, !tbaa !31
  %i.hh = or i8 %i.hg, 2
  store i8 %i.hh, ptr %i.gy, align 1, !tbaa !31
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit154.a

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit154.a: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph202
  %i.hi = getelementptr inbounds nuw i8, ptr %.0135197, i64 12
  %i.hj = getelementptr inbounds nuw i8, ptr %.0134198, i64 12
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.hk = load i32, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next228, %i.hl
  br i1 %i.hm, label %.lr.ph202, label %.loopexit188.loopexit, !llvm.loop !126

.loopexit.loopexit:                               ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170
  %.pre242 = load i32, ptr %i.z, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph221.split
  %i.hn = phi i32 [ %.pre242, %.loopexit.loopexit ], [ %i.hr, %.lr.ph221.split ] ; 2 uses
  %i.ho = phi i32 [ %i.mt, %.loopexit.loopexit ], [ %i.hs, %.lr.ph221.split ]
  %i.hp = add nsw i32 %i.hn, -1
  %i.hq = icmp slt i32 %i.ht, %i.hp
  br i1 %i.hq, label %.lr.ph221.split, label %._crit_edge222, !llvm.loop !127

._crit_edge222:                                   ; preds = %.loopexit, %.lr.ph221, %._crit_edge206
  ret void

.lr.ph221.split:                                  ; preds = %.lr.ph221, %.loopexit
  %i.hr = phi i32 [ %i.hn, %.loopexit ], [ %i.eh, %.lr.ph221 ]
  %i.hs = phi i32 [ %i.ho, %.loopexit ], [ %i.em, %.lr.ph221 ] ; 2 uses
  %.0132219 = phi i32 [ %i.ht, %.loopexit ], [ 0, %.lr.ph221 ] ; 4 uses
  %i.ht = add nuw nsw i32 %.0132219, 1            ; 5 uses
  %i.hu = icmp sgt i32 %i.hs, 1
  br i1 %i.hu, label %.lr.ph218.preheader, label %.loopexit

.lr.ph218.preheader:                              ; preds = %.lr.ph221.split
  %i.hv = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.hw = load i32, ptr %i.ej, align 8, !tbaa !26 ; 2 uses
  %i.hx = mul nsw i32 %i.hw, %i.ht
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hy
  %i.ia = mul nsw i32 %i.hw, %.0132219
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ib
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170
  %indvars.iv230 = phi i64 [ 0, %.lr.ph218.preheader ], [ %indvars.iv.next231, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 5 uses
  %.pn186213 = phi ptr [ %i.hz, %.lr.ph218.preheader ], [ %.0128215, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 8 uses
  %.pn210 = phi ptr [ %i.ic, %.lr.ph218.preheader ], [ %.0130216, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 7 uses
  %.0128215 = getelementptr i8, ptr %.pn186213, i64 12 ; 3 uses
  %.0130216 = getelementptr i8, ptr %.pn210, i64 12 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.pn210, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn210, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %.pn210, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pn210, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn186213, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.pn186213, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %.pn186213, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn186213, i64 20
  %i.il = load <4 x float>, ptr %.pn210, align 4, !tbaa !30 ; 4 uses
  %i.im = load float, ptr %i.ie, align 4, !tbaa !30
  %i.in = load float, ptr %i.id, align 4, !tbaa !30
  %i.io = load <2 x float>, ptr %i.if, align 4, !tbaa !30
  %i.ip = load <4 x float>, ptr %.pn186213, align 4, !tbaa !30 ; 3 uses
  %i.iq = load <2 x float>, ptr %i.ij, align 4, !tbaa !30
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> %i.ip, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.it = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 4 uses
  %i.iw = shufflevector <4 x float> %i.ip, <4 x float> %i.il, <4 x i32> <i32 3, i32 0, i32 7, i32 4> ; 4 uses
  %i.ix = fcmp olt <4 x float> %i.iv, %i.iw
  %i.iy = select <4 x i1> %i.ix, <4 x float> %i.iv, <4 x float> %i.iw ; 5 uses
  %i.iz = fcmp olt <4 x float> %i.iw, %i.iv
  %i.ja = select <4 x i1> %i.iz, <4 x float> %i.iv, <4 x float> %i.iw ; 2 uses
  %i.jb = shufflevector <4 x float> %i.ir, <4 x float> %i.ip, <4 x i32> <i32 1, i32 6, i32 poison, i32 poison>
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %i.je = fcmp olt <4 x float> %i.jd, %i.ja
  %i.jf = select <4 x i1> %i.je, <4 x float> %i.jd, <4 x float> %i.ja ; 5 uses
  %i.jg = fcmp olt <4 x float> %i.iy, %i.jf       ; 4 uses
  %i.jh = extractelement <4 x i1> %i.jg, i64 3
  %i.ji = extractelement <4 x float> %i.iy, i64 3
  %i.jj = extractelement <4 x float> %i.jf, i64 3
  %i.jk = select i1 %i.jh, float %i.jj, float %i.ji ; 4 uses
  %i.jl = extractelement <4 x i1> %i.jg, i64 2
  %i.jm = extractelement <4 x float> %i.iy, i64 2
  %i.jn = extractelement <4 x float> %i.jf, i64 2
  %i.jo = select i1 %i.jl, float %i.jn, float %i.jm ; 4 uses
  %i.jp = extractelement <4 x i1> %i.jg, i64 1
  %i.jq = extractelement <4 x float> %i.iy, i64 1
  %i.jr = extractelement <4 x float> %i.jf, i64 1
  %i.js = select i1 %i.jp, float %i.jr, float %i.jq ; 4 uses
  %i.jt = extractelement <4 x i1> %i.jg, i64 0
  %i.ju = extractelement <4 x float> %i.iy, i64 0
  %i.jv = extractelement <4 x float> %i.jf, i64 0
  %i.jw = select i1 %i.jt, float %i.jv, float %i.ju ; 4 uses
  %i.jx = fadd float %i.jk, -5.000000e-01
  %i.jy = call float @llvm.fabs.f32(float %i.jx)
  %i.jz = fadd float %i.jw, -5.000000e-01
  %i.ka = call float @llvm.fabs.f32(float %i.jz)
  %i.kb = fadd float %i.jy, %i.ka
  %i.kc = fcmp olt float %i.kb, %i.eg
  br i1 %i.kc, label %bb.w, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

bb.w:                                             ; preds = %.lr.ph218
  %i.kd = call fastcc noundef i32 @_ZN7msdfgenL17edgeBetweenTexelsEPKfS1_(ptr noundef nonnull %.pn210, ptr noundef nonnull %.0128215) ; 5 uses
  %i.ke = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.kf = load i32, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.kg = mul nsw i32 %i.kf, %.0132219
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %indvars.iv230 ; 2 uses
  %.not.i155.a = trunc i32 %i.kd to i1            ; 2 uses
  %i.kk = extractelement <4 x float> %i.il, i64 0
  %i.kl = fcmp une float %i.kk, %i.jk
  %or.cond183 = select i1 %.not.i155.a, i1 %i.kl, i1 false
  br i1 %or.cond183, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.km = and i32 %i.kd, 2
  %.not9.i156.a = icmp ne i32 %i.km, 0
  %i.kn = fcmp une float %i.in, %i.jk
  %or.cond184 = select i1 %.not9.i156.a, i1 %i.kn, i1 false
  br i1 %or.cond184, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not10.i157 = icmp samesign ugt i32 %i.kd, 3
  %i.ko = fcmp une float %i.im, %i.jk
  %or.cond185 = select i1 %.not10.i157, i1 %i.ko, i1 false
  br i1 %or.cond185, label %bb.z, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.kp = load i8, ptr %i.kj, align 1, !tbaa !31
  %i.kq = or i8 %i.kp, 2
  store i8 %i.kq, ptr %i.kj, align 1, !tbaa !31
  %.pre238 = load ptr, ptr %0, align 8, !tbaa !18
  %.pre239 = load i32, ptr %i.el, align 8, !tbaa !16
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158: ; preds = %bb.y, %bb.z
  %i.kr = phi i32 [ %i.kf, %bb.y ], [ %.pre239, %bb.z ]
  %i.ks = phi ptr [ %i.ke, %bb.y ], [ %.pre238, %bb.z ]
  %i.kt = mul nsw i32 %i.kr, %i.ht
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.ks, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %indvars.iv230
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1 ; 2 uses
  br i1 %.not.i155.a, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158
  %i.ky = load float, ptr %.0128215, align 4, !tbaa !30
  %i.kz = fcmp une float %i.ky, %i.jw
  br i1 %i.kz, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158
  %i.la = and i32 %i.kd, 2
  %.not9.i160 = icmp eq i32 %i.la, 0
  br i1 %.not9.i160, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lb = load float, ptr %i.ij, align 4, !tbaa !30
  %i.lc = fcmp une float %i.lb, %i.jw
  br i1 %i.lc, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not10.i161 = icmp samesign ult i32 %i.kd, 4
  br i1 %.not10.i161, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ld = load float, ptr %i.ik, align 4, !tbaa !30
  %i.le = fcmp une float %i.ld, %i.jw
  br i1 %i.le, label %bb.af, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.aa
  %i.lf = load i8, ptr %i.kx, align 1, !tbaa !31
  %i.lg = or i8 %i.lf, 2
  store i8 %i.lg, ptr %i.kx, align 1, !tbaa !31
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162: ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph218
  %i.lh = fadd float %i.jo, -5.000000e-01
  %i.li = call float @llvm.fabs.f32(float %i.lh)
  %i.lj = fadd float %i.js, -5.000000e-01
  %i.lk = call float @llvm.fabs.f32(float %i.lj)
  %i.ll = fadd float %i.li, %i.lk
  %i.lm = fcmp olt float %i.ll, %i.eg
  br i1 %i.lm, label %bb.ag, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

bb.ag:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162
  %i.ln = call fastcc noundef i32 @_ZN7msdfgenL17edgeBetweenTexelsEPKfS1_(ptr noundef nonnull %.0130216, ptr noundef nonnull %.pn186213) ; 5 uses
  %i.lo = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.lp = load i32, ptr %i.el, align 8, !tbaa !16 ; 3 uses
  %i.lq = mul nsw i32 %i.lp, %.0132219
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds i8, ptr %i.lo, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %indvars.iv230
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 2 uses
  %5 = and i32 %i.ln, 1
  %.not.i163 = icmp eq i32 %5, 0                  ; 2 uses
  br i1 %.not.i163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lv = load float, ptr %.0130216, align 4, !tbaa !30
  %i.lw = fcmp une float %i.lv, %i.jo
  br i1 %i.lw, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.lx = and i32 %i.ln, 2
  %.not9.i164 = icmp eq i32 %i.lx, 0
  br i1 %.not9.i164, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ly = load float, ptr %i.if, align 4, !tbaa !30
  %i.lz = fcmp une float %i.ly, %i.jo
  br i1 %i.lz, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not10.i165 = icmp samesign ult i32 %i.ln, 4
  br i1 %.not10.i165, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ma = load float, ptr %i.ig, align 4, !tbaa !30
  %i.mb = fcmp une float %i.ma, %i.jo
  br i1 %i.mb, label %bb.am, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ah
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !31
  %i.md = or i8 %i.mc, 2
  store i8 %i.md, ptr %i.lu, align 1, !tbaa !31
  %.pre240 = load ptr, ptr %0, align 8, !tbaa !18
  %.pre241 = load i32, ptr %i.el, align 8, !tbaa !16
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166: ; preds = %bb.ak, %bb.al, %bb.am
  %i.me = phi i32 [ %i.lp, %bb.ak ], [ %i.lp, %bb.al ], [ %.pre241, %bb.am ]
  %i.mf = phi ptr [ %i.lo, %bb.ak ], [ %i.lo, %bb.al ], [ %.pre240, %bb.am ]
  %i.mg = mul nsw i32 %i.me, %i.ht
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds i8, ptr %i.mf, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %indvars.iv230 ; 2 uses
  br i1 %.not.i163, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166
  %i.mk = load float, ptr %.pn186213, align 4, !tbaa !30
  %i.ml = fcmp une float %i.mk, %i.js
  br i1 %i.ml, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166
  %i.mm = and i32 %i.ln, 2
  %.not9.i168 = icmp eq i32 %i.mm, 0
  br i1 %.not9.i168, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mn = load float, ptr %i.ih, align 4, !tbaa !30
  %i.mo = fcmp une float %i.mn, %i.js
  br i1 %i.mo, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not10.i169 = icmp samesign ult i32 %i.ln, 4
  br i1 %.not10.i169, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mp = load float, ptr %i.ii, align 4, !tbaa !30
  %i.mq = fcmp une float %i.mp, %i.js
  br i1 %i.mq, label %bb.as, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %i.mr = load i8, ptr %i.mj, align 1, !tbaa !31
  %i.ms = or i8 %i.mr, 2
  store i8 %i.ms, ptr %i.mj, align 1, !tbaa !31
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170: ; preds = %bb.as, %bb.ar, %bb.aq, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.mt = load i32, ptr %i.ek, align 8, !tbaa !24 ; 2 uses
  %i.mu = add nsw i32 %i.mt, -1
  %i.mv = sext i32 %i.mu to i64
  %i.mw = icmp slt i64 %indvars.iv.next231, %i.mv
  br i1 %i.mw, label %.lr.ph218, label %.loopexit.loopexit, !llvm.loop !128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16), double) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 8) i32 @_ZN7msdfgenL17edgeBetweenTexelsEPKfS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !30   ; 2 uses
  %i.b = fpext float %i.a to double               ; 4 uses
  %i.c = fadd double %i.b, -5.000000e-01
  %i.d = load float, ptr %1, align 4, !tbaa !30   ; 4 uses
  %i.e = fsub float %i.a, %i.d
  %i.f = fpext float %i.e to double
  %i.g = fdiv double %i.c, %i.f                   ; 5 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = fcmp olt double %i.g, 1.000000e+00
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.b, label %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge

._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !30 ; 2 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre24 = load float, ptr %.phi.trans.insert23, align 4, !tbaa !30
  %.pre29 = fpext float %.pre to double
  br label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit

bb.b:                                             ; preds = %bb.a
  %i.j = fsub double 1.000000e+00, %i.g           ; 2 uses
  %i.k = fpext float %i.d to double
  %i.l = fmul double %i.g, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.j, double %i.b, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30 ; 2 uses
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30 ; 2 uses
  %i.s = fpext <2 x float> %i.q to <2 x double>   ; 2 uses
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.g, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.j, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai
  %i.am = fcmp oeq float %i.al, %i.n
  %i.an = zext i1 %i.am to i32
  %i.ao = extractelement <2 x double> %i.s, i64 0
  %i.ap = extractelement <2 x float> %i.q, i64 0
  %i.aq = extractelement <2 x float> %i.r, i64 0
  br label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit

_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit: ; preds = %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge, %bb.b
  %.pre-phi = phi double [ %.pre29, %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge ], [ %i.ao, %bb.b ] ; 3 uses
  %i.ar = phi float [ %.pre24, %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge ], [ %i.aq, %bb.b ] ; 3 uses
  %i.as = phi float [ %.pre, %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge ], [ %i.ap, %bb.b ]
  %.0.i = phi i32 [ 0, %._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit_crit_edge ], [ %i.an, %bb.b ] ; 2 uses
  %i.at = fadd double %.pre-phi, -5.000000e-01
  %i.au = fsub float %i.as, %i.ar
  %i.av = fpext float %i.au to double
  %i.aw = fdiv double %i.at, %i.av                ; 5 uses
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  %i.ay = fcmp olt double %i.aw, 1.000000e+00
  %or.cond.i6 = and i1 %i.ax, %i.ay
  br i1 %or.cond.i6, label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8, label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge

_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge: ; preds = %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre26 = load float, ptr %.phi.trans.insert25, align 4, !tbaa !30 ; 2 uses
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28 = load float, ptr %.phi.trans.insert27, align 4, !tbaa !30
  %.pre30 = fpext float %.pre26 to double
  br label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread

_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8: ; preds = %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit
  %i.az = fsub double 1.000000e+00, %i.aw         ; 2 uses
  %i.ba = fpext float %i.d to double
  %i.bb = fmul double %i.aw, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.b, double %i.bb)
  %i.bd = fptrunc double %i.bc to float           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !30 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !30 ; 2 uses
  %i.bi = fpext float %i.bf to double             ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.bl
  %i.bp = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> poison, double %.pre-phi, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bi, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bs, <2 x double> %i.bo)
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float> ; 3 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0 ; 3 uses
  %i.bw = fcmp ogt float %i.bv, %i.bd
  %i.bx = select i1 %i.bw, float %i.bv, float %i.bd
  %i.by = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bx, i64 1 ; 2 uses
  %i.ca = fcmp ogt <2 x float> %i.bz, %i.bu
  %i.cb = select <2 x i1> %i.ca, <2 x float> %i.bu, <2 x float> %i.bz ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.ce = fcmp olt float %i.cc, %i.cd
  %i.cf = select i1 %i.ce, float %i.cd, float %i.cc
  %i.cg = fcmp oeq float %i.cf, %i.bv
  %cond.fr = freeze i1 %i.cg
  %spec.select = select i1 %cond.fr, i32 2, i32 0
  %i.ch = or disjoint i32 %spec.select, %.0.i
  br label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread

_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread: ; preds = %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8
  %.pre-phi31 = phi double [ %.pre30, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge ], [ %i.bi, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8 ] ; 2 uses
  %i.ci = phi float [ %.pre28, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge ], [ %i.bh, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8 ] ; 2 uses
  %i.cj = phi float [ %.pre26, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge ], [ %i.bf, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8 ]
  %i.ck = phi i32 [ %.0.i, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit._ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread_crit_edge ], [ %i.ch, %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8 ] ; 2 uses
  %i.cl = fadd double %.pre-phi31, -5.000000e-01
  %i.cm = fsub float %i.cj, %i.ci
  %i.cn = fpext float %i.cm to double
  %i.co = fdiv double %i.cl, %i.cn                ; 5 uses
  %i.cp = fcmp ogt double %i.co, 0.000000e+00
  %i.cq = fcmp olt double %i.co, 1.000000e+00
  %or.cond.i9 = and i1 %i.cp, %i.cq
  br i1 %or.cond.i9, label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit11, label %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit11.thread

_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit11: ; preds = %_ZN7msdfgenL24edgeBetweenTexelsChannelEPKfS1_i.exit8.thread
  %i.cr = fsub double 1.000000e+00, %i.co         ; 2 uses
  %i.cs = fpext float %i.d to double
  %i.ct = fmul double %i.co, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.b, double %i.ct)
  %i.cv = fptrunc double %i.cu to float           ; 3 uses
  %i.cw = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.ci, i64 1
  %i.cy = fpext <2 x float> %i.cx to <2 x double>
  %i.cz = insertelement <2 x double> poison, double %i.co, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %.0135197, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.0134198, i64 16
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.hk = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next228, %i.hl
  br i1 %i.hm, label %.lr.ph202, label %.loopexit188.loopexit, !llvm.loop !132

.loopexit.loopexit:                               ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170
  %.pre242 = load i32, ptr %i.z, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph221.split
  %i.hn = phi i32 [ %.pre242, %.loopexit.loopexit ], [ %i.hr, %.lr.ph221.split ] ; 2 uses
  %i.ho = phi i32 [ %i.mz, %.loopexit.loopexit ], [ %i.hs, %.lr.ph221.split ]
  %i.hp = add nsw i32 %i.hn, -1
  %i.hq = icmp slt i32 %i.ht, %i.hp
  br i1 %i.hq, label %.lr.ph221.split, label %._crit_edge222, !llvm.loop !133

._crit_edge222:                                   ; preds = %.loopexit, %.lr.ph221, %._crit_edge206
  ret void

.lr.ph221.split:                                  ; preds = %.lr.ph221, %.loopexit
  %i.hr = phi i32 [ %i.hn, %.loopexit ], [ %i.eh, %.lr.ph221 ]
  %i.hs = phi i32 [ %i.ho, %.loopexit ], [ %i.em, %.lr.ph221 ] ; 2 uses
  %.0132219 = phi i32 [ %i.ht, %.loopexit ], [ 0, %.lr.ph221 ] ; 4 uses
  %i.ht = add nuw nsw i32 %.0132219, 1            ; 5 uses
  %i.hu = icmp sgt i32 %i.hs, 1
  br i1 %i.hu, label %.lr.ph218.preheader, label %.loopexit

.lr.ph218.preheader:                              ; preds = %.lr.ph221.split
  %i.hv = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.hw = load i32, ptr %i.ej, align 8, !tbaa !37 ; 2 uses
  %i.hx = mul nsw i32 %i.hw, %i.ht
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hy
  %i.ia = mul nsw i32 %i.hw, %.0132219
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ib
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170
  %indvars.iv230 = phi i64 [ 0, %.lr.ph218.preheader ], [ %indvars.iv.next231, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 5 uses
  %.pn186213 = phi ptr [ %i.hz, %.lr.ph218.preheader ], [ %.0128215, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 8 uses
  %.pn210 = phi ptr [ %i.ic, %.lr.ph218.preheader ], [ %.0130216, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170 ] ; 7 uses
  %.0128215 = getelementptr i8, ptr %.pn186213, i64 16 ; 4 uses
  %.0130216 = getelementptr i8, ptr %.pn210, i64 16 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.pn210, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn210, i64 8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !30 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pn210, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn210, i64 24 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %.pn186213, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn186213, i64 8 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !30
  %i.im = getelementptr inbounds nuw i8, ptr %.pn186213, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %.pn186213, i64 24 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !30
  %i.ip = load <2 x float>, ptr %.pn210, align 4, !tbaa !30 ; 2 uses
  %i.iq = load float, ptr %i.id, align 4, !tbaa !30
  %i.ir = load <2 x float>, ptr %.0130216, align 4, !tbaa !30
  %i.is = load <2 x float>, ptr %.pn186213, align 4, !tbaa !30 ; 2 uses
  %i.it = load <2 x float>, ptr %.0128215, align 4, !tbaa !30 ; 2 uses
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> %i.is, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.iv = shufflevector <2 x float> %i.ir, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ix = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iy = shufflevector <4 x float> %i.iw, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 4 uses
  %i.iz = shufflevector <2 x float> %i.it, <2 x float> %i.is, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 4 uses
  %i.jc = fcmp olt <4 x float> %i.iy, %i.jb
  %i.jd = select <4 x i1> %i.jc, <4 x float> %i.iy, <4 x float> %i.jb ; 5 uses
  %i.je = fcmp olt <4 x float> %i.jb, %i.iy
  %i.jf = select <4 x i1> %i.je, <4 x float> %i.iy, <4 x float> %i.jb ; 2 uses
  %i.jg = insertelement <4 x float> poison, float %i.io, i64 0
  %i.jh = insertelement <4 x float> %i.jg, float %i.il, i64 1
  %i.ji = insertelement <4 x float> %i.jh, float %i.ii, i64 2
  %i.jj = insertelement <4 x float> %i.ji, float %i.if, i64 3 ; 2 uses
  %i.jk = fcmp olt <4 x float> %i.jj, %i.jf
  %i.jl = select <4 x i1> %i.jk, <4 x float> %i.jj, <4 x float> %i.jf ; 5 uses
  %i.jm = fcmp olt <4 x float> %i.jd, %i.jl       ; 4 uses
  %i.jn = extractelement <4 x i1> %i.jm, i64 3
  %i.jo = extractelement <4 x float> %i.jd, i64 3
  %i.jp = extractelement <4 x float> %i.jl, i64 3
  %i.jq = select i1 %i.jn, float %i.jp, float %i.jo ; 4 uses
  %i.jr = extractelement <4 x i1> %i.jm, i64 2
  %i.js = extractelement <4 x float> %i.jd, i64 2
  %i.jt = extractelement <4 x float> %i.jl, i64 2
  %i.ju = select i1 %i.jr, float %i.jt, float %i.js ; 4 uses
  %i.jv = extractelement <4 x i1> %i.jm, i64 1
  %i.jw = extractelement <4 x float> %i.jd, i64 1
  %i.jx = extractelement <4 x float> %i.jl, i64 1
  %i.jy = select i1 %i.jv, float %i.jx, float %i.jw ; 4 uses
  %i.jz = extractelement <4 x i1> %i.jm, i64 0
  %i.ka = extractelement <4 x float> %i.jd, i64 0
  %i.kb = extractelement <4 x float> %i.jl, i64 0
  %i.kc = select i1 %i.jz, float %i.kb, float %i.ka ; 4 uses
  %i.kd = fadd float %i.jq, -5.000000e-01
  %i.ke = call float @llvm.fabs.f32(float %i.kd)
  %i.kf = fadd float %i.kc, -5.000000e-01
  %i.kg = call float @llvm.fabs.f32(float %i.kf)
  %i.kh = fadd float %i.ke, %i.kg
  %i.ki = fcmp olt float %i.kh, %i.eg
  br i1 %i.ki, label %bb.w, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

bb.w:                                             ; preds = %.lr.ph218
  %i.kj = call fastcc noundef i32 @_ZN7msdfgenL17edgeBetweenTexelsEPKfS1_(ptr noundef nonnull %.pn210, ptr noundef nonnull %.0128215) ; 5 uses
  %i.kk = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.kl = load i32, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.km = mul nsw i32 %i.kl, %.0132219
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.kk, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv230 ; 2 uses
  %.not.i155.a = trunc i32 %i.kj to i1            ; 2 uses
  %i.kq = extractelement <2 x float> %i.ip, i64 0
  %i.kr = fcmp une float %i.kq, %i.jq
  %or.cond183 = select i1 %.not.i155.a, i1 %i.kr, i1 false
  br i1 %or.cond183, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ks = and i32 %i.kj, 2
  %.not9.i156.a = icmp ne i32 %i.ks, 0
  %i.kt = fcmp une float %i.iq, %i.jq
  %or.cond184 = select i1 %.not9.i156.a, i1 %i.kt, i1 false
  br i1 %or.cond184, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not10.i157 = icmp samesign ugt i32 %i.kj, 3
  %i.ku = fcmp une float %i.if, %i.jq
  %or.cond185 = select i1 %.not10.i157, i1 %i.ku, i1 false
  br i1 %or.cond185, label %bb.z, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.kv = load i8, ptr %i.kp, align 1, !tbaa !31
  %i.kw = or i8 %i.kv, 2
  store i8 %i.kw, ptr %i.kp, align 1, !tbaa !31
  %.pre238 = load ptr, ptr %0, align 8, !tbaa !18
  %.pre239 = load i32, ptr %i.el, align 8, !tbaa !16
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158: ; preds = %bb.y, %bb.z
  %i.kx = phi i32 [ %i.kl, %bb.y ], [ %.pre239, %bb.z ]
  %i.ky = phi ptr [ %i.kk, %bb.y ], [ %.pre238, %bb.z ]
  %i.kz = mul nsw i32 %i.kx, %i.ht
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds i8, ptr %i.ky, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv230
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  br i1 %.not.i155.a, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158
  %i.le = load float, ptr %.0128215, align 4, !tbaa !30
  %i.lf = fcmp une float %i.le, %i.kc
  br i1 %i.lf, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit158
  %i.lg = and i32 %i.kj, 2
  %.not9.i160 = icmp eq i32 %i.lg, 0
  br i1 %.not9.i160, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lh = load float, ptr %i.im, align 4, !tbaa !30
  %i.li = fcmp une float %i.lh, %i.kc
  br i1 %i.li, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not10.i161 = icmp samesign ult i32 %i.kj, 4
  br i1 %.not10.i161, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lj = load float, ptr %i.in, align 4, !tbaa !30
  %i.lk = fcmp une float %i.lj, %i.kc
  br i1 %i.lk, label %bb.af, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.aa
  %i.ll = load i8, ptr %i.ld, align 1, !tbaa !31
  %i.lm = or i8 %i.ll, 2
  store i8 %i.lm, ptr %i.ld, align 1, !tbaa !31
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162: ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph218
  %i.ln = fadd float %i.ju, -5.000000e-01
  %i.lo = call float @llvm.fabs.f32(float %i.ln)
  %i.lp = fadd float %i.jy, -5.000000e-01
  %i.lq = call float @llvm.fabs.f32(float %i.lp)
  %i.lr = fadd float %i.lo, %i.lq
  %i.ls = fcmp olt float %i.lr, %i.eg
  br i1 %i.ls, label %bb.ag, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

bb.ag:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162
  %i.lt = call fastcc noundef i32 @_ZN7msdfgenL17edgeBetweenTexelsEPKfS1_(ptr noundef nonnull %.0130216, ptr noundef nonnull %.pn186213) ; 5 uses
  %i.lu = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.lv = load i32, ptr %i.el, align 8, !tbaa !16 ; 3 uses
  %i.lw = mul nsw i32 %i.lv, %.0132219
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds i8, ptr %i.lu, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %indvars.iv230
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  %5 = and i32 %i.lt, 1
  %.not.i163 = icmp eq i32 %5, 0                  ; 2 uses
  br i1 %.not.i163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mb = load float, ptr %.0130216, align 4, !tbaa !30
  %i.mc = fcmp une float %i.mb, %i.ju
  br i1 %i.mc, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.md = and i32 %i.lt, 2
  %.not9.i164 = icmp eq i32 %i.md, 0
  br i1 %.not9.i164, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.me = load float, ptr %i.ig, align 4, !tbaa !30
  %i.mf = fcmp une float %i.me, %i.ju
  br i1 %i.mf, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not10.i165 = icmp samesign ult i32 %i.lt, 4
  br i1 %.not10.i165, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mg = load float, ptr %i.ih, align 4, !tbaa !30
  %i.mh = fcmp une float %i.mg, %i.ju
  br i1 %i.mh, label %bb.am, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ah
  %i.mi = load i8, ptr %i.ma, align 1, !tbaa !31
  %i.mj = or i8 %i.mi, 2
  store i8 %i.mj, ptr %i.ma, align 1, !tbaa !31
  %.pre240 = load ptr, ptr %0, align 8, !tbaa !18
  %.pre241 = load i32, ptr %i.el, align 8, !tbaa !16
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166: ; preds = %bb.ak, %bb.al, %bb.am
  %i.mk = phi i32 [ %i.lv, %bb.ak ], [ %i.lv, %bb.al ], [ %.pre241, %bb.am ]
  %i.ml = phi ptr [ %i.lu, %bb.ak ], [ %i.lu, %bb.al ], [ %.pre240, %bb.am ]
  %i.mm = mul nsw i32 %i.mk, %i.ht
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %indvars.iv230 ; 2 uses
  br i1 %.not.i163, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166
  %i.mq = load float, ptr %.pn186213, align 4, !tbaa !30
  %i.mr = fcmp une float %i.mq, %i.jy
  br i1 %i.mr, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit166
  %i.ms = and i32 %i.lt, 2
  %.not9.i168 = icmp eq i32 %i.ms, 0
  br i1 %.not9.i168, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mt = load float, ptr %i.ij, align 4, !tbaa !30
  %i.mu = fcmp une float %i.mt, %i.jy
  br i1 %i.mu, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not10.i169 = icmp samesign ult i32 %i.lt, 4
  br i1 %.not10.i169, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mv = load float, ptr %i.ik, align 4, !tbaa !30
  %i.mw = fcmp une float %i.mv, %i.jy
  br i1 %i.mw, label %bb.as, label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %i.mx = load i8, ptr %i.mp, align 1, !tbaa !31
  %i.my = or i8 %i.mx, 2
  store i8 %i.my, ptr %i.mp, align 1, !tbaa !31
  br label %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170

_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit170: ; preds = %bb.as, %bb.ar, %bb.aq, %_ZN7msdfgenL22protectExtremeChannelsEPhPKffi.exit162
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.mz = load i32, ptr %i.ek, align 8, !tbaa !35 ; 2 uses
  %i.na = add nsw i32 %i.mz, -1
  %i.nb = sext i32 %i.na to i64
  %i.nc = icmp slt i64 %indvars.iv.next231, %i.nb
  br i1 %i.nc, label %.lr.ph218, label %.loopexit.loopexit, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.msdfgen::Vector2", align 8 ; 5 uses
  %3 = alloca %"struct.msdfgen::Vector2", align 8 ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 8 ; 5 uses
  %5 = alloca %"class.msdfgen::BaseArtifactClassifier", align 8 ; 5 uses
  %6 = alloca %"class.msdfgen::BaseArtifactClassifier", align 8 ; 5 uses
  %7 = alloca %"class.msdfgen::BaseArtifactClassifier", align 8 ; 5 uses
  %8 = alloca %"class.msdfgen::BaseArtifactClassifier", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.d, %i.b
  br i1 %.not.i, label %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %i.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %0, align 8, !tbaa !18
  %i.n = sub nsw i32 0, %i.f
  store i32 %i.n, ptr %i.e, align 8, !tbaa !16
  store i32 %i.b, ptr %i.c, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = tail call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, double 1.000000e+00)
  store double %i.s, ptr %2, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !22
  %i.u = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.v = extractvalue { double, double } %i.u, 0
  %i.w = extractvalue { double, double } %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.x = load double, ptr %i.o, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.y = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, double 1.000000e+00)
  store double 0.000000e+00, ptr %3, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !22
  %i.aa = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.ab = extractvalue { double, double } %i.aa, 0
  %i.ac = extractvalue { double, double } %i.aa, 1
  %i.ad = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ab, i64 1 ; 2 uses
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ah, <2 x double> %i.af)
  %i.aj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ai) ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = fmul double %i.p, %i.ak                 ; 10 uses
  %i.am = extractelement <2 x double> %i.aj, i64 1
  %i.an = fmul double %i.x, %i.am                 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ao = load double, ptr %i.o, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ap = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, double 1.000000e+00) ; 2 uses
  store double %i.ap, ptr %4, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !22
  %i.ar = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.as = extractvalue { double, double } %i.ar, 0 ; 2 uses
  %i.at = extractvalue { double, double } %i.ar, 1 ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.au)
  %sqrt.i119 = call noundef double @llvm.sqrt.f64(double %i.av)
  %i.aw = fmul double %i.ao, %sqrt.i119           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.lr.ph, label %._crit_edge226

.preheader.lr.ph:                                 ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader, label %._crit_edge226

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bj = phi i32 [ %i.bp, %._crit_edge ], [ %i.ay, %.preheader.lr.ph ]
  %i.bk = phi i32 [ %i.bq, %._crit_edge ], [ %i.bh, %.preheader.lr.ph ] ; 3 uses
  %.0110225 = phi i32 [ %.pre-phi235, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 10 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre234 = add nuw nsw i32 %.0110225, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bm = icmp ne i32 %.0110225, 0                ; 3 uses
  %i.bn = add nsw i32 %.0110225, -1               ; 3 uses
  %i.bo = add nuw nsw i32 %.0110225, 1            ; 4 uses
  br label %bb.c

._crit_edge226:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_22BaseArtifactClassifierEEEbRKT_fPKfS6_.exit.thread
  %.pre230 = load i32, ptr %i.ax, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi235 = phi i32 [ %.pre234, %.preheader.._crit_edge_crit_edge ], [ %i.bo, %._crit_edge.loopexit ] ; 2 uses
  %i.bp = phi i32 [ %i.bj, %.preheader.._crit_edge_crit_edge ], [ %.pre230, %._crit_edge.loopexit ] ; 2 uses
  %i.bq = phi i32 [ %i.bk, %.preheader.._crit_edge_crit_edge ], [ %i.aah, %._crit_edge.loopexit ]
  %i.br = icmp slt i32 %.pre-phi235, %i.bp
  br i1 %i.br, label %.preheader, label %._crit_edge226, !llvm.loop !135

bb.c:                                             ; preds = %.lr.ph, %_ZN7msdfgenL17hasLinearArtifactINS_22BaseArtifactClassifierEEEbRKT_fPKfS6_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7msdfgenL17hasLinearArtifactINS_22BaseArtifactClassifierEEEbRKT_fPKfS6_.exit.thread ] ; 14 uses
  %i.bs = phi i32 [ %i.bk, %.lr.ph ], [ %i.aah, %_ZN7msdfgenL17hasLinearArtifactINS_22BaseArtifactClassifierEEEbRKT_fPKfS6_.exit.thread ]
  %i.bt = load ptr, ptr %1, align 8, !tbaa !25    ; 4 uses
  %i.bu = load i32, ptr %i.bb, align 8, !tbaa !26 ; 4 uses
  %i.bv = mul nsw i32 %i.bu, %.0110225
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw ; 3 uses
  %i.by = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by ; 11 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !30 ; 18 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !30 ; 14 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 10 uses
  %i.ce = fcmp olt float %i.ca, %i.cd
  %i.cf = select i1 %i.ce, float %i.cd, float %i.ca
  %i.cg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.cf, i64 1 ; 2 uses
  %i.ci = fcmp olt <2 x float> %i.cc, %i.ch
  %i.cj = select <2 x i1> %i.ci, <2 x float> %i.cc, <2 x float> %i.ch ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0 ; 2 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 1 ; 2 uses
  %i.cm = fcmp olt float %i.ck, %i.cl
  %i.cn = select i1 %i.cm, float %i.cl, float %i.ck ; 62 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !18
  %i.cp = load i32, ptr %i.bc, align 8, !tbaa !16
  %i.cq = mul nsw i32 %i.cp, %.0110225
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv
end_hunk_1
begin_hunk_2_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ae = tail call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00)
  store double %i.ae, ptr %6, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !22
  %i.ag = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0
  %i.ai = extractvalue { double, double } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.aj = load double, ptr %i.aa, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ak = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00)
  store double 0.000000e+00, ptr %7, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ak, ptr %i.al, align 8, !tbaa !22
  %i.am = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.an, i64 1 ; 2 uses
  %i.au = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %i.ar)
  %i.av = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fmul double %i.ab, %i.aw                ; 4 uses
  %i.ay = extractelement <2 x double> %i.av, i64 1
  %i.az = fmul double %i.aj, %i.ay                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ba = load double, ptr %i.aa, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bb = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00) ; 2 uses
  store double %i.bb, ptr %8, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.bb, ptr %i.bc, align 8, !tbaa !22
  %i.bd = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.be = extractvalue { double, double } %i.bd, 0 ; 2 uses
  %i.bf = extractvalue { double, double } %i.bd, 1 ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.bq = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.br = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bs = sext i32 %i.br to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store double %i.bk, ptr %i.bu, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bv = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit143
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit143 ], [ %i.bw, %bb.e ], [ %i.bw, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ce = extractvalue { double, double } %i.bv, 0
  %i.cf = extractvalue { double, double } %i.bv, 1
  store double %i.ce, ptr %i.bt, align 8, !tbaa !50
  store double %i.cf, ptr %i.cd, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !23 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dp = load i32, ptr %i.cj, align 8, !tbaa !24 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph236.split.preheader, label %._crit_edge237

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = add nsw i32 %i.dp, -1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add nsw i32 %i.ch, -1
  br label %.lr.ph

._crit_edge237:                                   ; preds = %._crit_edge, %.lr.ph236, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i125, label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge237
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !69
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit: ; preds = %._crit_edge237, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph236.split.preheader
  %.0111235 = phi i32 [ %i.eh, %._crit_edge ], [ 0, %.lr.ph236.split.preheader ] ; 9 uses
  %.0112234 = phi i32 [ %i.el, %._crit_edge ], [ 1, %.lr.ph236.split.preheader ] ; 3 uses
  %i.eb = icmp slt i32 %.0112234, 0
  %i.ec = select i1 %i.eb, i32 %i.dr, i32 0
  %i.ed = uitofp nneg i32 %.0111235 to double
  %i.ee = fadd double %i.ed, 5.000000e-01         ; 3 uses
  %i.ef = icmp ne i32 %.0111235, 0                ; 3 uses
  %i.eg = add nsw i32 %.0111235, -1               ; 3 uses
  %i.eh = add nuw nsw i32 %.0111235, 1            ; 5 uses
  %i.ei = zext nneg i32 %i.ec to i64
  %i.ej = sext i32 %.0112234 to i64
  %i.ek = icmp slt i32 %.0111235, %i.du           ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ay
  %i.el = sub nsw i32 0, %.0112234
  %i.em = icmp slt i32 %i.eh, %i.ch
  br i1 %i.em, label %.lr.ph, label %._crit_edge237, !llvm.loop !139

bb.g:                                             ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ei, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 12 uses
  %.0109233 = phi i32 [ 0, %.lr.ph ], [ %i.yr, %bb.ay ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !18
  %i.eo = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.ep = mul nsw i32 %i.eo, %.0111235
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !31
  %19 = and i8 %i.et, 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.eu = load ptr, ptr %1, align 8, !tbaa !25    ; 7 uses
  %i.ev = load i32, ptr %i.cl, align 8, !tbaa !26 ; 7 uses
  %i.ew = mul nsw i32 %i.ev, %.0111235
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ex ; 3 uses
  %i.ez = mul nsw i64 %indvars.iv, 3              ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fb = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fadd double %i.fc, 5.000000e-01         ; 3 uses
  store double %i.fd, ptr %10, align 8, !tbaa !21
  store double %i.ee, ptr %i.cm, align 8, !tbaa !22
  %i.fe = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.az      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ff = extractvalue { double, double } %i.fe, 0
  %i.fg = extractvalue { double, double } %i.fe, 1
  store double %i.ff, ptr %9, align 8, !tbaa !50
  store double %i.fg, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fd, ptr %i.cn, align 8, !tbaa !50
  store double %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fa, ptr %i.co, align 8, !tbaa !70
  %i.fh = load ptr, ptr %0, align 8, !tbaa !18
  %i.fi = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.fj = mul nsw i32 %i.fi, %.0111235
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %indvars.iv
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !31
  %i.fo = lshr i8 %i.fn, 1                        ; 2 uses
  %.lobit = and i8 %i.fo, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cp, align 8, !tbaa !157
  %i.fp = load float, ptr %i.fa, align 4, !tbaa !30 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 9 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !30 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 9 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !30 ; 2 uses
  %i.fu = fcmp olt float %i.fr, %i.fp
  %i.fv = select i1 %i.fu, float %i.fr, float %i.fp ; 2 uses
  %i.fw = fcmp olt float %i.fp, %i.fr
  %i.fx = select i1 %i.fw, float %i.fr, float %i.fp ; 2 uses
  %i.fy = fcmp olt float %i.ft, %i.fx
  %i.fz = select i1 %i.fy, float %i.ft, float %i.fx ; 2 uses
  %i.ga = fcmp olt float %i.fv, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fv ; 38 uses
  %i.gc = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gc, label %bb.j, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

bb.j:                                             ; preds = %bb.i
  %i.gd = mul i64 %indvars.iv, 3
  %i.ge = add i64 %i.gd, 4294967293
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gf ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !158
  store i8 %.lobit, ptr %i.cq, align 8, !tbaa !46, !alias.scope !158
  store ptr %9, ptr %i.cr, align 8, !tbaa !73, !alias.scope !158
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !30 ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load <2 x float>, ptr %i.gi, align 4, !tbaa !30 ; 7 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0 ; 3 uses
  %i.gm = fcmp olt float %i.gh, %i.gl
  %i.gn = select i1 %i.gm, float %i.gl, float %i.gh
  %i.go = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gn, i64 1 ; 2 uses
  %i.gq = fcmp olt <2 x float> %i.gk, %i.gp
  %i.gr = select <2 x i1> %i.gq, <2 x float> %i.gk, <2 x float> %i.gp ; 2 uses
  %i.gs = extractelement <2 x float> %i.gr, i64 0 ; 2 uses
  %i.gt = extractelement <2 x float> %i.gr, i64 1 ; 2 uses
  %i.gu = fcmp olt float %i.gs, %i.gt
  %i.gv = select i1 %i.gu, float %i.gt, float %i.gs ; 16 uses
  %i.gw = fadd float %i.gb, -5.000000e-01
  %i.gx = call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fadd float %i.gv, -5.000000e-01
  %i.gz = call float @llvm.fabs.f32(float %i.gy)
  %i.ha = fcmp ult float %i.gx, %i.gz
  br i1 %i.ha, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hb = load float, ptr %i.fa, align 4, !tbaa !30 ; 5 uses
  %i.hc = fsub float %i.gl, %i.gh
  %i.hd = load <2 x float>, ptr %i.fq, align 4, !tbaa !30 ; 5 uses
  %i.he = extractelement <2 x float> %i.hd, i64 0
  %i.hf = fsub float %i.he, %i.hb                 ; 2 uses
  %i.hg = fpext float %i.hf to double
  %i.hh = fsub float %i.hf, %i.hc
  %i.hi = fpext float %i.hh to double
  %i.hj = fdiv double %i.hg, %i.hi                ; 8 uses
  %i.hk = fcmp ogt double %i.hj, 1.000000e-02
  %i.hl = fcmp olt double %i.hj, f0x3FEFAE147AE147AE
  %or.cond.i145 = and i1 %i.hk, %i.hl
  br i1 %or.cond.i145, label %bb.l, label %.noexc.thread

bb.l:                                             ; preds = %bb.k
  %i.hm = fsub double 1.000000e+00, %i.hj         ; 4 uses
  %i.hn = fpext float %i.hb to double
  %i.ho = fpext float %i.gh to double
  %i.hp = fmul double %i.hj, %i.ho
  %i.hq = call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hp)
  %i.hr = fptrunc double %i.hq to float           ; 3 uses
  %i.hs = fpext <2 x float> %i.hd to <2 x double>
  %i.ht = fpext <2 x float> %i.gk to <2 x double>
  %i.hu = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.hv, %i.ht
  %i.hx = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hs, <2 x double> %i.hw)
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float> ; 3 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = fcmp ogt float %i.ib, %i.hr
  %i.id = select i1 %i.ic, float %i.ib, float %i.hr
  %i.ie = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.id, i64 1 ; 2 uses
  %i.ig = fcmp ogt <2 x float> %i.if, %i.ia
  %i.ih = select <2 x i1> %i.ig, <2 x float> %i.ia, <2 x float> %i.if ; 2 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  %i.ij = extractelement <2 x float> %i.ih, i64 1 ; 2 uses
  %i.ik = fcmp olt float %i.ii, %i.ij
  %i.il = select i1 %i.ik, float %i.ij, float %i.ii ; 6 uses
  %i.im = fcmp ogt float %i.gb, 5.000000e-01
  %i.in = fcmp ogt float %i.gv, 5.000000e-01
  %or.cond.i.i147 = and i1 %i.im, %i.in
  %i.io = fcmp ole float %i.il, 5.000000e-01
  %or.cond3.i.i148 = and i1 %or.cond.i.i147, %i.io
  br i1 %or.cond3.i.i148, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ip = fcmp olt float %i.gb, 5.000000e-01
  %i.iq = fcmp olt float %i.gv, 5.000000e-01
  %or.cond5.i.i149 = and i1 %i.ip, %i.iq
  %i.ir = fcmp oge float %i.il, 5.000000e-01
  %or.cond7.i.i150 = and i1 %or.cond5.i.i149, %i.ir
  br i1 %or.cond7.i.i150, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.is = trunc i8 %i.fo to i1
  br i1 %i.is, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = fcmp olt float %i.gv, %i.gb
  %i.iu = select i1 %i.it, float %i.gv, float %i.gb ; 2 uses
  %i.iv = fcmp olt float %i.gb, %i.gv
  %i.iw = select i1 %i.iv, float %i.gv, float %i.gb ; 2 uses
  %i.ix = fcmp olt float %i.il, %i.iw
  %i.iy = select i1 %i.ix, float %i.il, float %i.iw ; 2 uses
  %i.iz = fcmp olt float %i.iu, %i.iy
  %i.ja = select i1 %i.iz, float %i.iy, float %i.iu
  %i.jb = fcmp une float %i.ja, %i.il
  br i1 %i.jb, label %bb.p, label %.noexc.thread

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.jc = fmul double %i.ax, %i.hj                ; 2 uses
  %i.jd = fpext float %i.il to double             ; 4 uses
  %i.je = fpext float %i.gb to double             ; 2 uses
  %i.jf = fsub double %i.je, %i.jc
  %i.jg = fcmp ugt double %i.jf, %i.jd
  %i.jh = fadd double %i.jc, %i.je
  %i.ji = fcmp ult double %i.jh, %i.jd
  %or.cond36.i.i153 = or i1 %i.jg, %i.ji
  br i1 %or.cond36.i.i153, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151: ; preds = %bb.p
  %i.jj = fpext float %i.gv to double             ; 2 uses
  %i.jk = fmul double %i.ax, %i.hm                ; 2 uses
  %i.jl = fsub double %i.jj, %i.jk
  %i.jm = fcmp ole double %i.jl, %i.jd
  %i.jn = fadd double %i.jk, %i.jj
  %i.jo = fcmp oge double %i.jn, %i.jd
  %or.cond38.i.i154.not = and i1 %i.jm, %i.jo
  br i1 %or.cond38.i.i154.not, label %bb.q, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.q:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jp = fsub double %i.fd, %i.hj
  invoke void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, double %i.jp, double %i.ee)
          to label %.noexc174 unwind label %bb.ba

.noexc174:                                        ; preds = %bb.q
  %i.jq = load ptr, ptr %i.cr, align 8, !tbaa !73 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !70 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !30 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.jw = fpext float %i.jv to double
end_hunk_2
begin_hunk_3_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ae = tail call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00)
  store double %i.ae, ptr %6, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !22
  %i.ag = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0
  %i.ai = extractvalue { double, double } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.aj = load double, ptr %i.aa, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ak = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00)
  store double 0.000000e+00, ptr %7, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ak, ptr %i.al, align 8, !tbaa !22
  %i.am = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.an, i64 1 ; 2 uses
  %i.au = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %i.ar)
  %i.av = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fmul double %i.ab, %i.aw                ; 4 uses
  %i.ay = extractelement <2 x double> %i.av, i64 1
  %i.az = fmul double %i.aj, %i.ay                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ba = load double, ptr %i.aa, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bb = call noundef double @_ZNK7msdfgen15DistanceMappingclENS0_5DeltaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, double 1.000000e+00) ; 2 uses
  store double %i.bb, ptr %8, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.bb, ptr %i.bc, align 8, !tbaa !22
  %i.bd = call { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.be = extractvalue { double, double } %i.bd, 0 ; 2 uses
  %i.bf = extractvalue { double, double } %i.bd, 1 ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.bq = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.br = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bs = sext i32 %i.br to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store double %i.bk, ptr %i.bu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bv = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit143
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit143 ], [ %i.bw, %bb.e ], [ %i.bw, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ce = extractvalue { double, double } %i.bv, 0
  %i.cf = extractvalue { double, double } %i.bv, 1
  store double %i.ce, ptr %i.bt, align 8, !tbaa !50
  store double %i.cf, ptr %i.cd, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dp = load i32, ptr %i.cj, align 8, !tbaa !35 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph236.split.preheader, label %._crit_edge237

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = add nsw i32 %i.dp, -1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add nsw i32 %i.ch, -1
  br label %.lr.ph

._crit_edge237:                                   ; preds = %._crit_edge, %.lr.ph236, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i125, label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge237
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !69
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit: ; preds = %._crit_edge237, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph236.split.preheader
  %.0111235 = phi i32 [ %i.eh, %._crit_edge ], [ 0, %.lr.ph236.split.preheader ] ; 9 uses
  %.0112234 = phi i32 [ %i.el, %._crit_edge ], [ 1, %.lr.ph236.split.preheader ] ; 3 uses
  %i.eb = icmp slt i32 %.0112234, 0
  %i.ec = select i1 %i.eb, i32 %i.dr, i32 0
  %i.ed = uitofp nneg i32 %.0111235 to double
  %i.ee = fadd double %i.ed, 5.000000e-01         ; 3 uses
  %i.ef = icmp ne i32 %.0111235, 0                ; 3 uses
  %i.eg = add nsw i32 %.0111235, -1               ; 3 uses
  %i.eh = add nuw nsw i32 %.0111235, 1            ; 5 uses
  %i.ei = zext nneg i32 %i.ec to i64
  %i.ej = sext i32 %.0112234 to i64
  %i.ek = icmp slt i32 %.0111235, %i.du           ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ay
  %i.el = sub nsw i32 0, %.0112234
  %i.em = icmp slt i32 %i.eh, %i.ch
  br i1 %i.em, label %.lr.ph, label %._crit_edge237, !llvm.loop !166

bb.g:                                             ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ei, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 10 uses
  %.0109233 = phi i32 [ 0, %.lr.ph ], [ %i.yt, %bb.ay ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !18
  %i.eo = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.ep = mul nsw i32 %i.eo, %.0111235
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !31
  %19 = and i8 %i.et, 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.eu = load ptr, ptr %1, align 8, !tbaa !36    ; 7 uses
  %i.ev = load i32, ptr %i.cl, align 8, !tbaa !37 ; 7 uses
  %i.ew = mul nsw i32 %i.ev, %.0111235
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ex ; 3 uses
  %i.ez = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fb = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fadd double %i.fc, 5.000000e-01         ; 3 uses
  store double %i.fd, ptr %10, align 8, !tbaa !21
  store double %i.ee, ptr %i.cm, align 8, !tbaa !22
  %i.fe = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.az      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ff = extractvalue { double, double } %i.fe, 0
  %i.fg = extractvalue { double, double } %i.fe, 1
  store double %i.ff, ptr %9, align 8, !tbaa !50
  store double %i.fg, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fd, ptr %i.cn, align 8, !tbaa !50
  store double %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fa, ptr %i.co, align 8, !tbaa !78
  %i.fh = load ptr, ptr %0, align 8, !tbaa !18
  %i.fi = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.fj = mul nsw i32 %i.fi, %.0111235
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %indvars.iv
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !31
  %i.fo = lshr i8 %i.fn, 1                        ; 2 uses
  %.lobit = and i8 %i.fo, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cp, align 8, !tbaa !184
  %i.fp = load float, ptr %i.fa, align 4, !tbaa !30 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 9 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !30 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 9 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !30 ; 2 uses
  %i.fu = fcmp olt float %i.fr, %i.fp
  %i.fv = select i1 %i.fu, float %i.fr, float %i.fp ; 2 uses
  %i.fw = fcmp olt float %i.fp, %i.fr
  %i.fx = select i1 %i.fw, float %i.fr, float %i.fp ; 2 uses
  %i.fy = fcmp olt float %i.ft, %i.fx
  %i.fz = select i1 %i.fy, float %i.ft, float %i.fx ; 2 uses
  %i.ga = fcmp olt float %i.fv, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fv ; 38 uses
  %i.gc = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gc, label %bb.j, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

bb.j:                                             ; preds = %bb.i
  %i.gd = shl i64 %indvars.iv, 2
  %i.ge = add i64 %i.gd, 4294967292
  %i.gf = and i64 %i.ge, 4294967292
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gf ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !185
  store i8 %.lobit, ptr %i.cq, align 8, !tbaa !46, !alias.scope !185
  store ptr %9, ptr %i.cr, align 8, !tbaa !81, !alias.scope !185
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !30 ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load <2 x float>, ptr %i.gi, align 4, !tbaa !30 ; 7 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0 ; 3 uses
  %i.gm = fcmp olt float %i.gh, %i.gl
  %i.gn = select i1 %i.gm, float %i.gl, float %i.gh
  %i.go = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gn, i64 1 ; 2 uses
  %i.gq = fcmp olt <2 x float> %i.gk, %i.gp
  %i.gr = select <2 x i1> %i.gq, <2 x float> %i.gk, <2 x float> %i.gp ; 2 uses
  %i.gs = extractelement <2 x float> %i.gr, i64 0 ; 2 uses
  %i.gt = extractelement <2 x float> %i.gr, i64 1 ; 2 uses
  %i.gu = fcmp olt float %i.gs, %i.gt
  %i.gv = select i1 %i.gu, float %i.gt, float %i.gs ; 16 uses
  %i.gw = fadd float %i.gb, -5.000000e-01
  %i.gx = call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fadd float %i.gv, -5.000000e-01
  %i.gz = call float @llvm.fabs.f32(float %i.gy)
  %i.ha = fcmp ult float %i.gx, %i.gz
  br i1 %i.ha, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hb = load float, ptr %i.fa, align 4, !tbaa !30 ; 5 uses
  %i.hc = fsub float %i.gl, %i.gh
  %i.hd = load <2 x float>, ptr %i.fq, align 4, !tbaa !30 ; 5 uses
  %i.he = extractelement <2 x float> %i.hd, i64 0
  %i.hf = fsub float %i.he, %i.hb                 ; 2 uses
  %i.hg = fpext float %i.hf to double
  %i.hh = fsub float %i.hf, %i.hc
  %i.hi = fpext float %i.hh to double
  %i.hj = fdiv double %i.hg, %i.hi                ; 8 uses
  %i.hk = fcmp ogt double %i.hj, 1.000000e-02
  %i.hl = fcmp olt double %i.hj, f0x3FEFAE147AE147AE
  %or.cond.i145 = and i1 %i.hk, %i.hl
  br i1 %or.cond.i145, label %bb.l, label %.noexc.thread

bb.l:                                             ; preds = %bb.k
  %i.hm = fsub double 1.000000e+00, %i.hj         ; 4 uses
  %i.hn = fpext float %i.hb to double
  %i.ho = fpext float %i.gh to double
  %i.hp = fmul double %i.hj, %i.ho
  %i.hq = call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hp)
  %i.hr = fptrunc double %i.hq to float           ; 3 uses
  %i.hs = fpext <2 x float> %i.hd to <2 x double>
  %i.ht = fpext <2 x float> %i.gk to <2 x double>
  %i.hu = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.hv, %i.ht
  %i.hx = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hs, <2 x double> %i.hw)
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float> ; 3 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = fcmp ogt float %i.ib, %i.hr
  %i.id = select i1 %i.ic, float %i.ib, float %i.hr
  %i.ie = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.id, i64 1 ; 2 uses
  %i.ig = fcmp ogt <2 x float> %i.if, %i.ia
  %i.ih = select <2 x i1> %i.ig, <2 x float> %i.ia, <2 x float> %i.if ; 2 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  %i.ij = extractelement <2 x float> %i.ih, i64 1 ; 2 uses
  %i.ik = fcmp olt float %i.ii, %i.ij
  %i.il = select i1 %i.ik, float %i.ij, float %i.ii ; 6 uses
  %i.im = fcmp ogt float %i.gb, 5.000000e-01
  %i.in = fcmp ogt float %i.gv, 5.000000e-01
  %or.cond.i.i147 = and i1 %i.im, %i.in
  %i.io = fcmp ole float %i.il, 5.000000e-01
  %or.cond3.i.i148 = and i1 %or.cond.i.i147, %i.io
  br i1 %or.cond3.i.i148, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ip = fcmp olt float %i.gb, 5.000000e-01
  %i.iq = fcmp olt float %i.gv, 5.000000e-01
  %or.cond5.i.i149 = and i1 %i.ip, %i.iq
  %i.ir = fcmp oge float %i.il, 5.000000e-01
  %or.cond7.i.i150 = and i1 %or.cond5.i.i149, %i.ir
  br i1 %or.cond7.i.i150, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.is = trunc i8 %i.fo to i1
  br i1 %i.is, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = fcmp olt float %i.gv, %i.gb
  %i.iu = select i1 %i.it, float %i.gv, float %i.gb ; 2 uses
  %i.iv = fcmp olt float %i.gb, %i.gv
  %i.iw = select i1 %i.iv, float %i.gv, float %i.gb ; 2 uses
  %i.ix = fcmp olt float %i.il, %i.iw
  %i.iy = select i1 %i.ix, float %i.il, float %i.iw ; 2 uses
  %i.iz = fcmp olt float %i.iu, %i.iy
  %i.ja = select i1 %i.iz, float %i.iy, float %i.iu
  %i.jb = fcmp une float %i.ja, %i.il
  br i1 %i.jb, label %bb.p, label %.noexc.thread

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.jc = fmul double %i.ax, %i.hj                ; 2 uses
  %i.jd = fpext float %i.il to double             ; 4 uses
  %i.je = fpext float %i.gb to double             ; 2 uses
  %i.jf = fsub double %i.je, %i.jc
  %i.jg = fcmp ugt double %i.jf, %i.jd
  %i.jh = fadd double %i.jc, %i.je
  %i.ji = fcmp ult double %i.jh, %i.jd
  %or.cond36.i.i153 = or i1 %i.jg, %i.ji
  br i1 %or.cond36.i.i153, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151: ; preds = %bb.p
  %i.jj = fpext float %i.gv to double             ; 2 uses
  %i.jk = fmul double %i.ax, %i.hm                ; 2 uses
  %i.jl = fsub double %i.jj, %i.jk
  %i.jm = fcmp ole double %i.jl, %i.jd
  %i.jn = fadd double %i.jk, %i.jj
  %i.jo = fcmp oge double %i.jn, %i.jd
  %or.cond38.i.i154.not = and i1 %i.jm, %i.jo
  br i1 %or.cond38.i.i154.not, label %bb.q, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.q:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jp = fsub double %i.fd, %i.hj
  invoke void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, double %i.jp, double %i.ee)
          to label %.noexc174 unwind label %bb.ba

.noexc174:                                        ; preds = %bb.q
  %i.jq = load ptr, ptr %i.cr, align 8, !tbaa !81 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !78 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !30 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.jw = fpext float %i.jv to double
end_hunk_3
begin_hunk_4_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bm, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bo = invoke noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.bq = sext i32 %i.bo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i unwind label %bb.f

bb.e:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %.pn.i.i, %bb.g ], [ %i.by, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.bs, %bb.f ], [ %i.br, %bb.e ]
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bn) #18
  br label %common.resume

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 168
  store <2 x double> %i.bj, ptr %i.bu, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store double %i.bl, ptr %i.bw, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bx = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bm) #18
  br label %common.resume

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ca = extractvalue { double, double } %i.bx, 0
  %i.cb = extractvalue { double, double } %i.bx, 1
  store double %i.ca, ptr %i.bv, align 8, !tbaa !50
  store double %i.cb, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dl = load i32, ptr %i.cf, align 8, !tbaa !24 ; 4 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph231.split.preheader, label %._crit_edge232

.lr.ph231.split.preheader:                        ; preds = %.lr.ph231
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = add nsw i32 %i.dl, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nsw i32 %i.cd, -1
  br label %.lr.ph

._crit_edge232:                                   ; preds = %._crit_edge, %.lr.ph231, %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge232
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #19
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i: ; preds = %bb.i, %._crit_edge232
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #19
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !99
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph231.split.preheader
  %.0111230 = phi i32 [ %i.er, %._crit_edge ], [ 0, %.lr.ph231.split.preheader ] ; 9 uses
  %.0112229 = phi i32 [ %i.ev, %._crit_edge ], [ 1, %.lr.ph231.split.preheader ] ; 3 uses
  %i.el = icmp slt i32 %.0112229, 0
  %i.em = select i1 %i.el, i32 %i.dn, i32 0
  %i.en = uitofp nneg i32 %.0111230 to double
  %i.eo = fadd double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = icmp ne i32 %.0111230, 0                ; 3 uses
  %i.eq = add nsw i32 %.0111230, -1               ; 3 uses
  %i.er = add nuw nsw i32 %.0111230, 1            ; 5 uses
  %i.es = zext nneg i32 %i.em to i64
  %i.et = sext i32 %.0112229 to i64
  %i.eu = icmp slt i32 %.0111230, %i.dq           ; 3 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.bd
  %i.ev = sub nsw i32 0, %.0112229
  %i.ew = icmp slt i32 %i.er, %i.cd
  br i1 %i.ew, label %.lr.ph, label %._crit_edge232, !llvm.loop !193

bb.l:                                             ; preds = %.lr.ph, %bb.bd
  %indvars.iv = phi i64 [ %i.es, %.lr.ph ], [ %indvars.iv.next, %bb.bd ] ; 12 uses
  %.0109228 = phi i32 [ 0, %.lr.ph ], [ %i.zb, %bb.bd ]
  %i.ex = load ptr, ptr %0, align 8, !tbaa !18
  %i.ey = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ez = mul nsw i32 %i.ey, %.0111230
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %indvars.iv
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %19 = and i8 %i.fd, 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %bb.m, label %bb.bd

bb.m:                                             ; preds = %bb.l
  %i.fe = load ptr, ptr %1, align 8, !tbaa !25    ; 7 uses
  %i.ff = load i32, ptr %i.ch, align 8, !tbaa !26 ; 7 uses
  %i.fg = mul nsw i32 %i.ff, %.0111230
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fh ; 3 uses
  %i.fj = mul nsw i64 %indvars.iv, 3              ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fl = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.fm = sitofp i32 %i.fl to double
  %i.fn = fadd double %i.fm, 5.000000e-01         ; 3 uses
  store double %i.fn, ptr %10, align 8, !tbaa !21
  store double %i.eo, ptr %i.ci, align 8, !tbaa !22
  %i.fo = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.n unwind label %bb.be      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.fp = extractvalue { double, double } %i.fo, 0
  %i.fq = extractvalue { double, double } %i.fo, 1
  store double %i.fp, ptr %9, align 8, !tbaa !50
  store double %i.fq, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fn, ptr %i.cj, align 8, !tbaa !50
  store double %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fk, ptr %i.ck, align 8, !tbaa !100
  %i.fr = load ptr, ptr %0, align 8, !tbaa !18
  %i.fs = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ft = mul nsw i32 %i.fs, %.0111230
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %indvars.iv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !31
  %i.fy = lshr i8 %i.fx, 1                        ; 2 uses
  %.lobit = and i8 %i.fy, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cl, align 8, !tbaa !211
  %i.fz = load float, ptr %i.fk, align 4, !tbaa !30 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 9 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !30 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 9 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !30 ; 2 uses
  %i.ge = fcmp olt float %i.gb, %i.fz
  %i.gf = select i1 %i.ge, float %i.gb, float %i.fz ; 2 uses
  %i.gg = fcmp olt float %i.fz, %i.gb
  %i.gh = select i1 %i.gg, float %i.gb, float %i.fz ; 2 uses
  %i.gi = fcmp olt float %i.gd, %i.gh
  %i.gj = select i1 %i.gi, float %i.gd, float %i.gh ; 2 uses
  %i.gk = fcmp olt float %i.gf, %i.gj
  %i.gl = select i1 %i.gk, float %i.gj, float %i.gf ; 38 uses
  %i.gm = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gm, label %bb.o, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

bb.o:                                             ; preds = %bb.n
  %i.gn = mul i64 %indvars.iv, 3
  %i.go = add i64 %i.gn, 4294967293
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gp ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !212
  store i8 %.lobit, ptr %i.cm, align 8, !tbaa !46, !alias.scope !212
  store ptr %9, ptr %i.cn, align 8, !tbaa !103, !alias.scope !212
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.co, align 8, !tbaa !50
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !30 ; 8 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load <2 x float>, ptr %i.gs, align 4, !tbaa !30 ; 7 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0 ; 3 uses
  %i.gw = fcmp olt float %i.gr, %i.gv
  %i.gx = select i1 %i.gw, float %i.gv, float %i.gr
  %i.gy = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gx, i64 1 ; 2 uses
  %i.ha = fcmp olt <2 x float> %i.gu, %i.gz
  %i.hb = select <2 x i1> %i.ha, <2 x float> %i.gu, <2 x float> %i.gz ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 0 ; 2 uses
  %i.hd = extractelement <2 x float> %i.hb, i64 1 ; 2 uses
  %i.he = fcmp olt float %i.hc, %i.hd
  %i.hf = select i1 %i.he, float %i.hd, float %i.hc ; 16 uses
  %i.hg = fadd float %i.gl, -5.000000e-01
  %i.hh = call float @llvm.fabs.f32(float %i.hg)
  %i.hi = fadd float %i.hf, -5.000000e-01
  %i.hj = call float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp ult float %i.hh, %i.hj
  br i1 %i.hk, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hl = load float, ptr %i.fk, align 4, !tbaa !30 ; 5 uses
  %i.hm = fsub float %i.gv, %i.gr
  %i.hn = load <2 x float>, ptr %i.ga, align 4, !tbaa !30 ; 5 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 0
  %i.hp = fsub float %i.ho, %i.hl                 ; 2 uses
  %i.hq = fpext float %i.hp to double
  %i.hr = fsub float %i.hp, %i.hm
  %i.hs = fpext float %i.hr to double
  %i.ht = fdiv double %i.hq, %i.hs                ; 8 uses
  %i.hu = fcmp ogt double %i.ht, 1.000000e-02
  %i.hv = fcmp olt double %i.ht, f0x3FEFAE147AE147AE
  %or.cond.i140 = and i1 %i.hu, %i.hv
  br i1 %or.cond.i140, label %bb.q, label %.noexc.thread

bb.q:                                             ; preds = %bb.p
  %i.hw = fsub double 1.000000e+00, %i.ht         ; 4 uses
  %i.hx = fpext float %i.hl to double
  %i.hy = fpext float %i.gr to double
  %i.hz = fmul double %i.ht, %i.hy
  %i.ia = call double @llvm.fmuladd.f64(double %i.hw, double %i.hx, double %i.hz)
  %i.ib = fptrunc double %i.ia to float           ; 3 uses
  %i.ic = fpext <2 x float> %i.hn to <2 x double>
  %i.id = fpext <2 x float> %i.gu to <2 x double>
  %i.ie = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.if, %i.id
  %i.ih = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ic, <2 x double> %i.ig)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float> ; 3 uses
  %i.il = extractelement <2 x float> %i.ik, i64 0 ; 2 uses
  %i.im = fcmp ogt float %i.il, %i.ib
  %i.in = select i1 %i.im, float %i.il, float %i.ib
  %i.io = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %i.in, i64 1 ; 2 uses
  %i.iq = fcmp ogt <2 x float> %i.ip, %i.ik
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.ik, <2 x float> %i.ip ; 2 uses
  %i.is = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.it = extractelement <2 x float> %i.ir, i64 1 ; 2 uses
  %i.iu = fcmp olt float %i.is, %i.it
  %i.iv = select i1 %i.iu, float %i.it, float %i.is ; 6 uses
  %i.iw = fcmp ogt float %i.gl, 5.000000e-01
  %i.ix = fcmp ogt float %i.hf, 5.000000e-01
  %or.cond.i.i142 = and i1 %i.iw, %i.ix
  %i.iy = fcmp ole float %i.iv, 5.000000e-01
  %or.cond3.i.i143 = and i1 %or.cond.i.i142, %i.iy
  br i1 %or.cond3.i.i143, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iz = fcmp olt float %i.gl, 5.000000e-01
  %i.ja = fcmp olt float %i.hf, 5.000000e-01
  %or.cond5.i.i144 = and i1 %i.iz, %i.ja
  %i.jb = fcmp oge float %i.iv, 5.000000e-01
  %or.cond7.i.i145 = and i1 %or.cond5.i.i144, %i.jb
  br i1 %or.cond7.i.i145, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jc = trunc i8 %i.fy to i1
  br i1 %i.jc, label %.noexc.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jd = fcmp olt float %i.hf, %i.gl
  %i.je = select i1 %i.jd, float %i.hf, float %i.gl ; 2 uses
  %i.jf = fcmp olt float %i.gl, %i.hf
  %i.jg = select i1 %i.jf, float %i.hf, float %i.gl ; 2 uses
  %i.jh = fcmp olt float %i.iv, %i.jg
  %i.ji = select i1 %i.jh, float %i.iv, float %i.jg ; 2 uses
  %i.jj = fcmp olt float %i.je, %i.ji
  %i.jk = select i1 %i.jj, float %i.ji, float %i.je
  %i.jl = fcmp une float %i.jk, %i.iv
  br i1 %i.jl, label %bb.u, label %.noexc.thread

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.jm = fmul double %i.ax, %i.ht                ; 2 uses
  %i.jn = fpext float %i.iv to double             ; 4 uses
  %i.jo = fpext float %i.gl to double             ; 2 uses
  %i.jp = fsub double %i.jo, %i.jm
  %i.jq = fcmp ugt double %i.jp, %i.jn
  %i.jr = fadd double %i.jm, %i.jo
  %i.js = fcmp ult double %i.jr, %i.jn
  %or.cond36.i.i148 = or i1 %i.jq, %i.js
  br i1 %or.cond36.i.i148, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146: ; preds = %bb.u
  %i.jt = fpext float %i.hf to double             ; 2 uses
  %i.ju = fmul double %i.ax, %i.hw                ; 2 uses
  %i.jv = fsub double %i.jt, %i.ju
  %i.jw = fcmp ole double %i.jv, %i.jn
  %i.jx = fadd double %i.ju, %i.jt
  %i.jy = fcmp oge double %i.jx, %i.jn
  %or.cond38.i.i149.not = and i1 %i.jw, %i.jy
  br i1 %or.cond38.i.i149.not, label %bb.v, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.v:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jz = fsub double %i.fn, %i.ht
  invoke void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, double %i.jz, double %i.eo)
          to label %.noexc169 unwind label %bb.bf

.noexc169:                                        ; preds = %bb.v
  %i.ka = load ptr, ptr %i.cn, align 8, !tbaa !103 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !100 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !30 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kf = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.kg = fpext float %i.kf to double
end_hunk_4
begin_hunk_5_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bm, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bo = invoke noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.bq = sext i32 %i.bo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i unwind label %bb.f

bb.e:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %.pn.i.i, %bb.g ], [ %i.by, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.bs, %bb.f ], [ %i.br, %bb.e ]
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bn) #18
  br label %common.resume

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 168
  store <2 x double> %i.bj, ptr %i.bu, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store double %i.bl, ptr %i.bw, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bx = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bm) #18
  br label %common.resume

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ca = extractvalue { double, double } %i.bx, 0
  %i.cb = extractvalue { double, double } %i.bx, 1
  store double %i.ca, ptr %i.bv, align 8, !tbaa !50
  store double %i.cb, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !34 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dl = load i32, ptr %i.cf, align 8, !tbaa !35 ; 4 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph231.split.preheader, label %._crit_edge232

.lr.ph231.split.preheader:                        ; preds = %.lr.ph231
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = add nsw i32 %i.dl, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nsw i32 %i.cd, -1
  br label %.lr.ph

._crit_edge232:                                   ; preds = %._crit_edge, %.lr.ph231, %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge232
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #19
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i: ; preds = %bb.i, %._crit_edge232
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #19
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !99
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph231.split.preheader
  %.0111230 = phi i32 [ %i.er, %._crit_edge ], [ 0, %.lr.ph231.split.preheader ] ; 9 uses
  %.0112229 = phi i32 [ %i.ev, %._crit_edge ], [ 1, %.lr.ph231.split.preheader ] ; 3 uses
  %i.el = icmp slt i32 %.0112229, 0
  %i.em = select i1 %i.el, i32 %i.dn, i32 0
  %i.en = uitofp nneg i32 %.0111230 to double
  %i.eo = fadd double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = icmp ne i32 %.0111230, 0                ; 3 uses
  %i.eq = add nsw i32 %.0111230, -1               ; 3 uses
  %i.er = add nuw nsw i32 %.0111230, 1            ; 5 uses
  %i.es = zext nneg i32 %i.em to i64
  %i.et = sext i32 %.0112229 to i64
  %i.eu = icmp slt i32 %.0111230, %i.dq           ; 3 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.bd
  %i.ev = sub nsw i32 0, %.0112229
  %i.ew = icmp slt i32 %i.er, %i.cd
  br i1 %i.ew, label %.lr.ph, label %._crit_edge232, !llvm.loop !220

bb.l:                                             ; preds = %.lr.ph, %bb.bd
  %indvars.iv = phi i64 [ %i.es, %.lr.ph ], [ %indvars.iv.next, %bb.bd ] ; 10 uses
  %.0109228 = phi i32 [ 0, %.lr.ph ], [ %i.zd, %bb.bd ]
  %i.ex = load ptr, ptr %0, align 8, !tbaa !18
  %i.ey = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ez = mul nsw i32 %i.ey, %.0111230
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %indvars.iv
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %19 = and i8 %i.fd, 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %bb.m, label %bb.bd

bb.m:                                             ; preds = %bb.l
  %i.fe = load ptr, ptr %1, align 8, !tbaa !36    ; 7 uses
  %i.ff = load i32, ptr %i.ch, align 8, !tbaa !37 ; 7 uses
  %i.fg = mul nsw i32 %i.ff, %.0111230
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fh ; 3 uses
  %i.fj = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fl = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  %i.fm = sitofp i32 %i.fl to double
  %i.fn = fadd double %i.fm, 5.000000e-01         ; 3 uses
  store double %i.fn, ptr %10, align 8, !tbaa !21
  store double %i.eo, ptr %i.ci, align 8, !tbaa !22
  %i.fo = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.n unwind label %bb.be      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.fp = extractvalue { double, double } %i.fo, 0
  %i.fq = extractvalue { double, double } %i.fo, 1
  store double %i.fp, ptr %9, align 8, !tbaa !50
  store double %i.fq, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fn, ptr %i.cj, align 8, !tbaa !50
  store double %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fk, ptr %i.ck, align 8, !tbaa !106
  %i.fr = load ptr, ptr %0, align 8, !tbaa !18
  %i.fs = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ft = mul nsw i32 %i.fs, %.0111230
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %indvars.iv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !31
  %i.fy = lshr i8 %i.fx, 1                        ; 2 uses
  %.lobit = and i8 %i.fy, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cl, align 8, !tbaa !238
  %i.fz = load float, ptr %i.fk, align 4, !tbaa !30 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 9 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !30 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 9 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !30 ; 2 uses
  %i.ge = fcmp olt float %i.gb, %i.fz
  %i.gf = select i1 %i.ge, float %i.gb, float %i.fz ; 2 uses
  %i.gg = fcmp olt float %i.fz, %i.gb
  %i.gh = select i1 %i.gg, float %i.gb, float %i.fz ; 2 uses
  %i.gi = fcmp olt float %i.gd, %i.gh
  %i.gj = select i1 %i.gi, float %i.gd, float %i.gh ; 2 uses
  %i.gk = fcmp olt float %i.gf, %i.gj
  %i.gl = select i1 %i.gk, float %i.gj, float %i.gf ; 38 uses
  %i.gm = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gm, label %bb.o, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

bb.o:                                             ; preds = %bb.n
  %i.gn = shl i64 %indvars.iv, 2
  %i.go = add i64 %i.gn, 4294967292
  %i.gp = and i64 %i.go, 4294967292
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gp ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !239
  store i8 %.lobit, ptr %i.cm, align 8, !tbaa !46, !alias.scope !239
  store ptr %9, ptr %i.cn, align 8, !tbaa !109, !alias.scope !239
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.co, align 8, !tbaa !50
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !30 ; 8 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load <2 x float>, ptr %i.gs, align 4, !tbaa !30 ; 7 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0 ; 3 uses
  %i.gw = fcmp olt float %i.gr, %i.gv
  %i.gx = select i1 %i.gw, float %i.gv, float %i.gr
  %i.gy = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gx, i64 1 ; 2 uses
  %i.ha = fcmp olt <2 x float> %i.gu, %i.gz
  %i.hb = select <2 x i1> %i.ha, <2 x float> %i.gu, <2 x float> %i.gz ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 0 ; 2 uses
  %i.hd = extractelement <2 x float> %i.hb, i64 1 ; 2 uses
  %i.he = fcmp olt float %i.hc, %i.hd
  %i.hf = select i1 %i.he, float %i.hd, float %i.hc ; 16 uses
  %i.hg = fadd float %i.gl, -5.000000e-01
  %i.hh = call float @llvm.fabs.f32(float %i.hg)
  %i.hi = fadd float %i.hf, -5.000000e-01
  %i.hj = call float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp ult float %i.hh, %i.hj
  br i1 %i.hk, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hl = load float, ptr %i.fk, align 4, !tbaa !30 ; 5 uses
  %i.hm = fsub float %i.gv, %i.gr
  %i.hn = load <2 x float>, ptr %i.ga, align 4, !tbaa !30 ; 5 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 0
  %i.hp = fsub float %i.ho, %i.hl                 ; 2 uses
  %i.hq = fpext float %i.hp to double
  %i.hr = fsub float %i.hp, %i.hm
  %i.hs = fpext float %i.hr to double
  %i.ht = fdiv double %i.hq, %i.hs                ; 8 uses
  %i.hu = fcmp ogt double %i.ht, 1.000000e-02
  %i.hv = fcmp olt double %i.ht, f0x3FEFAE147AE147AE
  %or.cond.i140 = and i1 %i.hu, %i.hv
  br i1 %or.cond.i140, label %bb.q, label %.noexc.thread

bb.q:                                             ; preds = %bb.p
  %i.hw = fsub double 1.000000e+00, %i.ht         ; 4 uses
  %i.hx = fpext float %i.hl to double
  %i.hy = fpext float %i.gr to double
  %i.hz = fmul double %i.ht, %i.hy
  %i.ia = call double @llvm.fmuladd.f64(double %i.hw, double %i.hx, double %i.hz)
  %i.ib = fptrunc double %i.ia to float           ; 3 uses
  %i.ic = fpext <2 x float> %i.hn to <2 x double>
  %i.id = fpext <2 x float> %i.gu to <2 x double>
  %i.ie = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.if, %i.id
  %i.ih = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ic, <2 x double> %i.ig)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float> ; 3 uses
  %i.il = extractelement <2 x float> %i.ik, i64 0 ; 2 uses
  %i.im = fcmp ogt float %i.il, %i.ib
  %i.in = select i1 %i.im, float %i.il, float %i.ib
  %i.io = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %i.in, i64 1 ; 2 uses
  %i.iq = fcmp ogt <2 x float> %i.ip, %i.ik
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.ik, <2 x float> %i.ip ; 2 uses
  %i.is = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.it = extractelement <2 x float> %i.ir, i64 1 ; 2 uses
  %i.iu = fcmp olt float %i.is, %i.it
  %i.iv = select i1 %i.iu, float %i.it, float %i.is ; 6 uses
  %i.iw = fcmp ogt float %i.gl, 5.000000e-01
  %i.ix = fcmp ogt float %i.hf, 5.000000e-01
  %or.cond.i.i142 = and i1 %i.iw, %i.ix
  %i.iy = fcmp ole float %i.iv, 5.000000e-01
  %or.cond3.i.i143 = and i1 %or.cond.i.i142, %i.iy
  br i1 %or.cond3.i.i143, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iz = fcmp olt float %i.gl, 5.000000e-01
  %i.ja = fcmp olt float %i.hf, 5.000000e-01
  %or.cond5.i.i144 = and i1 %i.iz, %i.ja
  %i.jb = fcmp oge float %i.iv, 5.000000e-01
  %or.cond7.i.i145 = and i1 %or.cond5.i.i144, %i.jb
  br i1 %or.cond7.i.i145, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jc = trunc i8 %i.fy to i1
  br i1 %i.jc, label %.noexc.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jd = fcmp olt float %i.hf, %i.gl
  %i.je = select i1 %i.jd, float %i.hf, float %i.gl ; 2 uses
  %i.jf = fcmp olt float %i.gl, %i.hf
  %i.jg = select i1 %i.jf, float %i.hf, float %i.gl ; 2 uses
  %i.jh = fcmp olt float %i.iv, %i.jg
  %i.ji = select i1 %i.jh, float %i.iv, float %i.jg ; 2 uses
  %i.jj = fcmp olt float %i.je, %i.ji
  %i.jk = select i1 %i.jj, float %i.ji, float %i.je
  %i.jl = fcmp une float %i.jk, %i.iv
  br i1 %i.jl, label %bb.u, label %.noexc.thread

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.jm = fmul double %i.ax, %i.ht                ; 2 uses
  %i.jn = fpext float %i.iv to double             ; 4 uses
  %i.jo = fpext float %i.gl to double             ; 2 uses
  %i.jp = fsub double %i.jo, %i.jm
  %i.jq = fcmp ugt double %i.jp, %i.jn
  %i.jr = fadd double %i.jm, %i.jo
  %i.js = fcmp ult double %i.jr, %i.jn
  %or.cond36.i.i148 = or i1 %i.jq, %i.js
  br i1 %or.cond36.i.i148, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146: ; preds = %bb.u
  %i.jt = fpext float %i.hf to double             ; 2 uses
  %i.ju = fmul double %i.ax, %i.hw                ; 2 uses
  %i.jv = fsub double %i.jt, %i.ju
  %i.jw = fcmp ole double %i.jv, %i.jn
  %i.jx = fadd double %i.ju, %i.jt
  %i.jy = fcmp oge double %i.jx, %i.jn
  %or.cond38.i.i149.not = and i1 %i.jw, %i.jy
  br i1 %or.cond38.i.i149.not, label %bb.v, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.v:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jz = fsub double %i.fn, %i.ht
  invoke void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, double %i.jz, double %i.eo)
          to label %.noexc169 unwind label %bb.bf

.noexc169:                                        ; preds = %bb.v
  %i.ka = load ptr, ptr %i.cn, align 8, !tbaa !109 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !106 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !30 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kf = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.kg = fpext float %i.kf to double
end_hunk_5
begin_hunk_6_@_ZN7msdfgenL19hasDiagonalArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_S9_S9_:bb.a
  %i.an = fsub <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = fneg <2 x float> %i.aj
  %i.ap = fsub <2 x float> %i.ao, %i.an           ; 2 uses
  store <2 x float> %i.ap, ptr %i.ai, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.aq = fadd float %i.c, %i.z                   ; 2 uses
  store float %i.aq, ptr %i.b, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = fadd <2 x float> %i.f, %i.an            ; 2 uses
  store <2 x float> %i.as, ptr %i.ar, align 4, !tbaa !30
  %i.at = fpext float %i.ah to double
  %i.au = fmul double %i.at, -5.000000e-01
  %i.av = fpext float %i.aq to double
  %i.aw = fdiv double %i.au, %i.av                ; 2 uses
  %i.ax = fpext <2 x float> %i.ap to <2 x double>
  %i.ay = fmul <2 x double> %i.ax, splat (double -5.000000e-01)
  %i.az = fpext <2 x float> %i.as to <2 x double>
  %i.ba = fdiv <2 x double> %i.ay, %i.az          ; 2 uses
  %i.bb = extractelement <2 x float> %i.aj, i64 0
  %i.bc = fsub float %i.bb, %i.v
  %i.bd = extractelement <2 x float> %i.ak, i64 0
  %i.be = fsub float %i.bd, %i.w
  %i.bf = extractelement <2 x float> %i.am, i64 0
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fsub float %i.bg, %i.y
  %i.bi = fsub float %i.g, %i.c
  %i.bj = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bk = call fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %i.p, ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef %i.b, float noundef %i.bc, float noundef %i.bh, float noundef %i.bi, double noundef %i.aw, double noundef %i.bj)
  br i1 %i.bk, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = load float, ptr %i.ad, align 4, !tbaa !30
  %i.bm = load float, ptr %i.aa, align 4, !tbaa !30
  %i.bn = fsub float %i.bl, %i.bm
  %i.bo = load float, ptr %i.ae, align 4, !tbaa !30
  %i.bp = load float, ptr %i.ab, align 4, !tbaa !30
  %i.bq = fsub float %i.bo, %i.bp
  %i.br = load float, ptr %i.af, align 4, !tbaa !30
  %i.bs = fadd float %i.bq, %i.br
  %i.bt = load float, ptr %i.ac, align 4, !tbaa !30
  %i.bu = fsub float %i.bs, %i.bt
  %i.bv = load float, ptr %i.e, align 4, !tbaa !30
  %i.bw = load float, ptr %i.d, align 4, !tbaa !30
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = extractelement <2 x double> %i.ba, i64 1 ; 2 uses
  %i.bz = call fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %i.p, ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef %i.b, float noundef %i.bn, float noundef %i.bu, float noundef %i.bx, double noundef %i.bj, double noundef %i.by)
  br i1 %i.bz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = load float, ptr %2, align 4, !tbaa !30
  %i.cb = load float, ptr %i.ad, align 4, !tbaa !30
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = load float, ptr %3, align 4, !tbaa !30
  %i.ce = load float, ptr %i.ae, align 4, !tbaa !30
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = load float, ptr %4, align 4, !tbaa !30
  %i.ch = fadd float %i.cf, %i.cg
  %i.ci = load float, ptr %i.af, align 4, !tbaa !30
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = load float, ptr %5, align 4, !tbaa !30
  %i.cl = load float, ptr %i.e, align 4, !tbaa !30
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = call fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %i.p, ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef %i.b, float noundef %i.cc, float noundef %i.cj, float noundef %i.cm, double noundef %i.by, double noundef %i.aw)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.co = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ %i.cn, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i1 [ %i.co, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #19
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi3EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef byval(%"struct.msdfgen::BitmapSection.20") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !250
  %.not.i = icmp eq i32 %i.d, %i.b
  br i1 %.not.i, label %._ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !251
  br label %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !252  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !251  ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %i.f
  %i.k = load ptr, ptr %1, align 8, !tbaa !253
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !253
  %i.n = sub nsw i32 0, %i.f
  store i32 %i.n, ptr %i.e, align 8, !tbaa !252
  br label %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.b ] ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge31.split

.preheader.lr.ph:                                 ; preds = %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !254  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !252
  %i.y = sext i32 %i.x to i64
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge31.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !112
  %i.aa = load ptr, ptr %1, align 8, !tbaa !253
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.030 = phi ptr [ %i.ab, %._crit_edge ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %.02329 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02428 = phi ptr [ %i.ac, %._crit_edge ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  br label %bb.c

._crit_edge31.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  ret void

._crit_edge:                                      ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.030, i64 %i.v
  %i.ac = getelementptr inbounds [4 x i8], ptr %.02428, i64 %i.y
  %i.ad = add nuw nsw i32 %.02329, 1              ; 2 uses
  %exitcond32.not = icmp eq i32 %i.ad, %i.o
  br i1 %exitcond32.not, label %._crit_edge31.split, label %.preheader, !llvm.loop !247

bb.c:                                             ; preds = %.preheader, %bb.e
  %.02027 = phi i32 [ 0, %.preheader ], [ %i.au, %bb.e ]
  %.02126 = phi ptr [ %.02428, %.preheader ], [ %i.at, %bb.e ] ; 5 uses
  %.02225 = phi ptr [ %.030, %.preheader ], [ %i.as, %bb.e ] ; 2 uses
  %i.ae = load i8, ptr %.02225, align 1, !tbaa !31
  %2 = and i8 %i.ae, 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load float, ptr %.02126, align 4, !tbaa !30 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02126, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !30 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02126, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !30 ; 2 uses
  %i.ak = fcmp olt float %i.ah, %i.af
  %i.al = select i1 %i.ak, float %i.ah, float %i.af ; 2 uses
  %i.am = fcmp olt float %i.af, %i.ah
  %i.an = select i1 %i.am, float %i.ah, float %i.af ; 2 uses
  %i.ao = fcmp olt float %i.aj, %i.an
  %i.ap = select i1 %i.ao, float %i.aj, float %i.an ; 2 uses
  %i.aq = fcmp olt float %i.al, %i.ap
  %i.ar = select i1 %i.aq, float %i.ap, float %i.al ; 3 uses
  store float %i.ar, ptr %.02126, align 4, !tbaa !30
  store float %i.ar, ptr %i.ag, align 4, !tbaa !30
  store float %i.ar, ptr %i.ai, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.02225, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.02126, i64 12
  %i.au = add nuw nsw i32 %.02027, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !248
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi4EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef byval(%"struct.msdfgen::BitmapSection.21") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !258
  %.not.i = icmp eq i32 %i.d, %i.b
  br i1 %.not.i, label %._ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !259
  br label %_ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !259  ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %i.f
  %i.k = load ptr, ptr %1, align 8, !tbaa !261
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !261
  %i.n = sub nsw i32 0, %i.f
  store i32 %i.n, ptr %i.e, align 8, !tbaa !260
  br label %_ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.o = phi i32 [ %.pre, %._ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.h, %bb.b ] ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge31.split

.preheader.lr.ph:                                 ; preds = %_ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !262  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !260
  %i.y = sext i32 %i.x to i64
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge31.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !112
  %i.aa = load ptr, ptr %1, align 8, !tbaa !261
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.030 = phi ptr [ %i.ab, %._crit_edge ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %.02329 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02428 = phi ptr [ %i.ac, %._crit_edge ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  br label %bb.c

._crit_edge31.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN7msdfgen13BitmapSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit
  ret void

._crit_edge:                                      ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.030, i64 %i.v
  %i.ac = getelementptr inbounds [4 x i8], ptr %.02428, i64 %i.y
  %i.ad = add nuw nsw i32 %.02329, 1              ; 2 uses
  %exitcond32.not = icmp eq i32 %i.ad, %i.o
  br i1 %exitcond32.not, label %._crit_edge31.split, label %.preheader, !llvm.loop !255

bb.c:                                             ; preds = %.preheader, %bb.e
  %.02027 = phi i32 [ 0, %.preheader ], [ %i.au, %bb.e ]
  %.02126 = phi ptr [ %.02428, %.preheader ], [ %i.at, %bb.e ] ; 5 uses
  %.02225 = phi ptr [ %.030, %.preheader ], [ %i.as, %bb.e ] ; 2 uses
  %i.ae = load i8, ptr %.02225, align 1, !tbaa !31
  %2 = and i8 %i.ae, 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load float, ptr %.02126, align 4, !tbaa !30 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02126, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !30 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02126, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !30 ; 2 uses
  %i.ak = fcmp olt float %i.ah, %i.af
  %i.al = select i1 %i.ak, float %i.ah, float %i.af ; 2 uses
  %i.am = fcmp olt float %i.af, %i.ah
  %i.an = select i1 %i.am, float %i.ah, float %i.af ; 2 uses
  %i.ao = fcmp olt float %i.aj, %i.an
  %i.ap = select i1 %i.ao, float %i.aj, float %i.an ; 2 uses
  %i.aq = fcmp olt float %i.al, %i.ap
  %i.ar = select i1 %i.aq, float %i.ap, float %i.al ; 3 uses
  store float %i.ar, ptr %.02126, align 4, !tbaa !30
  store float %i.ar, ptr %i.ag, align 4, !tbaa !30
  store float %i.ar, ptr %i.ai, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.02225, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.02126, i64 16
  %i.au = add nuw nsw i32 %.02027, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !256
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19MSDFErrorCorrectionC2Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN7msdfgen10ProjectionC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN7msdfgen15DistanceMappingC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7msdfgen19MSDFErrorCorrectionC2ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !265
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> splat (double f0x3FF1C71C71C71C72), ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ]  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !18
  %i.i = load i32, ptr %i.f, align 8, !tbaa !16
  %i.j = mul nsw i32 %i.i, %.08
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = load i32, ptr %i.g, align 8, !tbaa !266
  %i.n = sext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 0, i64 %i.n, i1 false)
  %i.o = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !17
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((72, 80)) %0, double noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %1, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen19MSDFErrorCorrection18setMinImproveRatioEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((80, 88)) %0, double noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %1, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19MSDFErrorCorrection14protectCornersERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.msdfgen::Vector2", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.c, %i.a
  br i1 %.not.i, label %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %i.h = add nsw i32 %i.g, -1
  %i.i = mul nsw i32 %i.h, %i.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !18
  %i.m = sub nsw i32 0, %i.e
  store i32 %i.m, ptr %i.d, align 8, !tbaa !16
  store i32 %i.a, ptr %i.b, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %.not5156 = icmp eq ptr %i.n, %i.p
  br i1 %.not5156, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  ret void

bb.c:                                             ; preds = %.lr.ph58, %.loopexit
  %.sroa.045.057 = phi ptr [ %i.n, %.lr.ph58 ], [ %i.df, %.loopexit ] ; 4 uses
  %i.v = load ptr, ptr %.sroa.045.057, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.045.057, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ab = load ptr, ptr %.sroa.045.057, align 8, !tbaa !116 ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !116
  %.not5253 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not5253, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.q
  %.055 = phi ptr [ %i.dc, %bb.q ], [ %i.aa, %bb.d ]
  %.sroa.039.054 = phi ptr [ %i.dd, %bb.q ], [ %i.ab, %bb.d ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !271
  %i.af = call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.039.054)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !271
  %i.ai = and i32 %i.ah, %i.ae
  %i.aj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %.not = icmp samesign ult i32 %i.aj, 2
  br i1 %.not, label %bb.e, label %bb.q

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ak = call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.039.054) ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !273
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call { double, double } %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, double noundef 0.000000e+00) ; 2 uses
  %i.ap = extractvalue { double, double } %i.ao, 0
  store double %i.ap, ptr %2, align 8
  %i.aq = extractvalue { double, double } %i.ao, 1
  store double %i.aq, ptr %i.r, align 8
  %i.ar = call { double, double } @_ZNK7msdfgen10Projection7projectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.as = extractvalue { double, double } %i.ar, 0
  %i.at = extractvalue { double, double } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.au = fadd double %i.as, -5.000000e-01
  %i.av = call double @llvm.floor.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32              ; 6 uses
  %i.ax = fadd double %i.at, -5.000000e-01
  %i.ay = call double @llvm.floor.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32              ; 6 uses
  %i.ba = add nsw i32 %i.aw, 1                    ; 4 uses
  %i.bb = add nsw i32 %i.az, 1                    ; 4 uses
  %i.bc = load i32, ptr %i.s, align 8, !tbaa !117 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.t, align 4, !tbaa !118
  %i.bf = icmp sgt i32 %i.be, %i.az
  %i.bg = icmp sgt i32 %i.aw, -2
  %or.cond = and i1 %i.bg, %i.bf
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_:bb.a
  br label %.loopexit

_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 56
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !283
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !69
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit ]
  invoke void @_ZN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !282

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #18 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !283
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %5 = and i32 %3, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !50
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !50
  %i.n = fadd <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  call void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, double %i.o, double %i.p)
  %i.q = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l)
  %i.r = fsub <2 x double> splat (double 1.000000e+00), %i.q ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.r, %shift ; 2 uses
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !73   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !30 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.z = fpext float %i.y to double
  %i.aa = load <2 x float>, ptr %i.x, align 4, !tbaa !30 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 4 uses
  %i.ac = fcmp olt float %i.ab, %i.w
  %i.ad = select i1 %i.ac, float %i.ab, float %i.w ; 2 uses
  %i.ae = fcmp olt float %i.w, %i.ab
  %i.af = select i1 %i.ae, float %i.ab, float %i.w ; 2 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.af
  %i.ai = select i1 %i.ah, float %i.ag, float %i.af ; 2 uses
  %i.aj = fcmp olt float %i.ad, %i.ai
  %i.ak = select i1 %i.aj, float %i.ai, float %i.ad ; 2 uses
  %i.al = fsub float %i.ak, %i.w
  %i.am = fpext float %i.al to double
  %i.an = call double @llvm.fmuladd.f64(double %i.s, double %i.am, double %i.z)
  %i.ao = fptrunc double %i.an to float           ; 3 uses
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %i.as, %i.aa
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.au, <2 x double> %i.aq)
  %i.ax = fptrunc <2 x double> %i.aw to <2 x float> ; 3 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 0 ; 4 uses
  %i.az = fcmp olt float %i.ay, %i.y
  %i.ba = select i1 %i.az, float %i.ay, float %i.y ; 2 uses
  %i.bb = fcmp olt float %i.y, %i.ay
  %i.bc = select i1 %i.bb, float %i.ay, float %i.y ; 2 uses
  %i.bd = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.bc
  %i.bf = select i1 %i.be, float %i.bd, float %i.bc ; 2 uses
  %i.bg = fcmp olt float %i.ba, %i.bf
  %i.bh = select i1 %i.bg, float %i.bf, float %i.ba
  %i.bi = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, %i.ao
  %i.bk = select i1 %i.bj, float %i.bi, float %i.ao
  %i.bl = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1 ; 2 uses
  %i.bn = fcmp ogt <2 x float> %i.bm, %i.ax
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.ax, <2 x float> %i.bm ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.br = fcmp olt float %i.bp, %i.bq
  %i.bs = select i1 %i.br, float %i.bq, float %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bv = load <2 x double>, ptr %i.t, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !50
  %i.by = fmul <2 x double> %i.l, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by
  store <2 x double> %i.bz, ptr %4, align 16
  %i.ca = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cb = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, double noundef %i.ca)
  %i.cc = fptrunc double %i.cb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 200
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !67
  %i.cg = fsub float %i.bs, %i.cc
  %i.ch = call float @llvm.fabs.f32(float %i.cg)
  %i.ci = fpext float %i.ch to double
  %i.cj = fmul double %i.cf, %i.ci
  %i.ck = fsub float %i.bh, %i.cc
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fpext float %i.cl to double
  %i.cn = fcmp olt double %i.cj, %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.cn, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %2, double %3) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = insertelement <2 x double> poison, double %2, i64 0
  %i.c = insertelement <2 x double> %i.b, double %3, i64 1 ; 3 uses
  %i.d = fcmp ult <2 x double> %i.c, zeroinitializer
  %i.e = fcmp ogt double %2, 0.000000e+00
  %i.f = fcmp ogt double %3, 0.000000e+00
  %i.g = load <2 x i32>, ptr %i.a, align 8, !tbaa !52 ; 3 uses
  %i.h = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.i = fcmp ugt <2 x double> %i.c, %i.h
  %i.j = or <2 x i1> %i.d, %i.i
  %i.k = uitofp i1 %i.e to double
  %i.l = uitofp i1 %i.f to double
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = fmul nnan <2 x double> %i.n, %i.h
  %i.p = select <2 x i1> %i.j, <2 x double> %i.o, <2 x double> %i.c
  %i.q = fadd <2 x double> %i.p, splat (double -5.000000e-01) ; 3 uses
  %i.r = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.q)
  %i.s = fptosi <2 x double> %i.r to <2 x i32>    ; 3 uses
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.u = extractelement <2 x i32> %i.s, i64 0     ; 5 uses
  %i.v = add nsw i32 %i.u, 1
  %i.w = extractelement <2 x i32> %i.s, i64 1     ; 5 uses
  %i.x = add nsw i32 %i.w, 1
  %i.y = shufflevector <4 x i32> %i.t, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.q, %shift ; 2 uses
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift52 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x double> %shift52, %i.z ; 2 uses
  %i.ab = extractelement <2 x double> %foldExtExtBinop53, i64 0 ; 3 uses
  %i.ac = extractelement <2 x i32> %i.g, i64 0    ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1                   ; 3 uses
  %.not.i = icmp sle i32 %i.ac, %i.u
  %i.ae = icmp slt <4 x i32> %i.t, <i32 -1, i32 -1, i32 0, i32 0> ; 4 uses
  %i.af = extractelement <4 x i1> %i.ae, i64 3    ; 2 uses
  %or.cond.i37 = or i1 %i.af, %.not.i
  %i.ag = icmp sgt i32 %i.u, 0
  %i.ah = select i1 %i.ag, i32 %i.ad, i32 0
  %i.ai = select i1 %or.cond.i37, i32 %i.ah, i32 %i.u
  %.not.i38 = icmp sle i32 %i.ad, %i.u
  %i.aj = extractelement <4 x i1> %i.ae, i64 1
  %or.cond.i39 = or i1 %i.aj, %.not.i38
  %i.ak = select i1 %i.af, i32 0, i32 %i.ad
  %i.al = select i1 %or.cond.i39, i32 %i.ak, i32 %i.v
  %i.am = extractelement <2 x i32> %i.g, i64 1    ; 2 uses
  %i.an = add nsw i32 %i.am, -1                   ; 3 uses
  %.not.i40 = icmp sle i32 %i.am, %i.w
  %i.ao = extractelement <4 x i1> %i.ae, i64 2    ; 2 uses
  %or.cond.i41 = or i1 %i.ao, %.not.i40
  %i.ap = icmp sgt i32 %i.w, 0
  %i.aq = select i1 %i.ap, i32 %i.an, i32 0
  %i.ar = select i1 %or.cond.i41, i32 %i.aq, i32 %i.w
  %.not.i42 = icmp sle i32 %i.an, %i.w
  %i.as = extractelement <4 x i1> %i.ae, i64 0
  %or.cond.i43 = or i1 %i.as, %.not.i42
  %i.at = select i1 %i.ao, i32 0, i32 %i.an
  %i.au = select i1 %or.cond.i43, i32 %i.at, i32 %i.x
  %i.av = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.ar
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = mul nsw i32 %i.ai, 3
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bc ; 3 uses
  %i.be = mul nsw i32 %i.al, 3
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bf ; 3 uses
  %i.bh = fsub double 1.000000e+00, %i.aa
  %i.bi = mul nsw i32 %i.ax, %i.au
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bc ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bf ; 3 uses
  %i.bn = fsub double 1.000000e+00, %i.ab         ; 3 uses
  %i.bo = load float, ptr %i.bd, align 4, !tbaa !30
  %i.bp = load float, ptr %i.bg, align 4, !tbaa !30
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !30
  %i.br = load float, ptr %i.bm, align 4, !tbaa !30
  %i.bs = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bq, i64 1
  %i.bu = fpext <2 x float> %i.bt to <2 x double>
end_hunk_7
begin_hunk_8_@_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd:bb.a
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !287

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %5 = and i32 %3, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !50
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !50
  %i.n = fadd <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  call void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, double %i.o, double %i.p)
  %i.q = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l)
  %i.r = fsub <2 x double> splat (double 1.000000e+00), %i.q ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.r, %shift ; 2 uses
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !81   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !30 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.z = fpext float %i.y to double
  %i.aa = load <2 x float>, ptr %i.x, align 4, !tbaa !30 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 4 uses
  %i.ac = fcmp olt float %i.ab, %i.w
  %i.ad = select i1 %i.ac, float %i.ab, float %i.w ; 2 uses
  %i.ae = fcmp olt float %i.w, %i.ab
  %i.af = select i1 %i.ae, float %i.ab, float %i.w ; 2 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.af
  %i.ai = select i1 %i.ah, float %i.ag, float %i.af ; 2 uses
  %i.aj = fcmp olt float %i.ad, %i.ai
  %i.ak = select i1 %i.aj, float %i.ai, float %i.ad ; 2 uses
  %i.al = fsub float %i.ak, %i.w
  %i.am = fpext float %i.al to double
  %i.an = call double @llvm.fmuladd.f64(double %i.s, double %i.am, double %i.z)
  %i.ao = fptrunc double %i.an to float           ; 3 uses
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %i.as, %i.aa
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.au, <2 x double> %i.aq)
  %i.ax = fptrunc <2 x double> %i.aw to <2 x float> ; 3 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 0 ; 4 uses
  %i.az = fcmp olt float %i.ay, %i.y
  %i.ba = select i1 %i.az, float %i.ay, float %i.y ; 2 uses
  %i.bb = fcmp olt float %i.y, %i.ay
  %i.bc = select i1 %i.bb, float %i.ay, float %i.y ; 2 uses
  %i.bd = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.bc
  %i.bf = select i1 %i.be, float %i.bd, float %i.bc ; 2 uses
  %i.bg = fcmp olt float %i.ba, %i.bf
  %i.bh = select i1 %i.bg, float %i.bf, float %i.ba
  %i.bi = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, %i.ao
  %i.bk = select i1 %i.bj, float %i.bi, float %i.ao
  %i.bl = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1 ; 2 uses
  %i.bn = fcmp ogt <2 x float> %i.bm, %i.ax
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.ax, <2 x float> %i.bm ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.br = fcmp olt float %i.bp, %i.bq
  %i.bs = select i1 %i.br, float %i.bq, float %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bv = load <2 x double>, ptr %i.t, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !50
  %i.by = fmul <2 x double> %i.l, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by
  store <2 x double> %i.bz, ptr %4, align 16
  %i.ca = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cb = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, double noundef %i.ca)
  %i.cc = fptrunc double %i.cb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 200
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !77
  %i.cg = fsub float %i.bs, %i.cc
  %i.ch = call float @llvm.fabs.f32(float %i.cg)
  %i.ci = fpext float %i.ch to double
  %i.cj = fmul double %i.cf, %i.ci
  %i.ck = fsub float %i.bh, %i.cc
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fpext float %i.cl to double
  %i.cn = fcmp olt double %i.cj, %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.cn, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %2, double %3) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = insertelement <2 x double> poison, double %2, i64 0
  %i.c = insertelement <2 x double> %i.b, double %3, i64 1 ; 3 uses
  %i.d = fcmp ult <2 x double> %i.c, zeroinitializer
  %i.e = fcmp ogt double %2, 0.000000e+00
  %i.f = fcmp ogt double %3, 0.000000e+00
  %i.g = load <2 x i32>, ptr %i.a, align 8, !tbaa !52 ; 3 uses
  %i.h = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.i = fcmp ugt <2 x double> %i.c, %i.h
  %i.j = or <2 x i1> %i.d, %i.i
  %i.k = uitofp i1 %i.e to double
  %i.l = uitofp i1 %i.f to double
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = fmul nnan <2 x double> %i.n, %i.h
  %i.p = select <2 x i1> %i.j, <2 x double> %i.o, <2 x double> %i.c
  %i.q = fadd <2 x double> %i.p, splat (double -5.000000e-01) ; 3 uses
  %i.r = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.q)
  %i.s = fptosi <2 x double> %i.r to <2 x i32>    ; 3 uses
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.u = extractelement <2 x i32> %i.s, i64 0     ; 5 uses
  %i.v = add nsw i32 %i.u, 1
  %i.w = extractelement <2 x i32> %i.s, i64 1     ; 5 uses
  %i.x = add nsw i32 %i.w, 1
  %i.y = shufflevector <4 x i32> %i.t, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.q, %shift ; 2 uses
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift52 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x double> %shift52, %i.z ; 3 uses
  %i.ab = extractelement <2 x double> %foldExtExtBinop53, i64 0 ; 3 uses
  %i.ac = extractelement <2 x i32> %i.g, i64 0    ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1                   ; 3 uses
  %.not.i = icmp sle i32 %i.ac, %i.u
  %i.ae = icmp slt <4 x i32> %i.t, <i32 -1, i32 -1, i32 0, i32 0> ; 4 uses
  %i.af = extractelement <4 x i1> %i.ae, i64 3    ; 2 uses
  %or.cond.i37 = or i1 %i.af, %.not.i
  %i.ag = icmp sgt i32 %i.u, 0
  %i.ah = select i1 %i.ag, i32 %i.ad, i32 0
  %i.ai = select i1 %or.cond.i37, i32 %i.ah, i32 %i.u
  %.not.i38 = icmp sle i32 %i.ad, %i.u
  %i.aj = extractelement <4 x i1> %i.ae, i64 1
  %or.cond.i39 = or i1 %i.aj, %.not.i38
  %i.ak = select i1 %i.af, i32 0, i32 %i.ad
  %i.al = select i1 %or.cond.i39, i32 %i.ak, i32 %i.v
  %i.am = extractelement <2 x i32> %i.g, i64 1    ; 2 uses
  %i.an = add nsw i32 %i.am, -1                   ; 3 uses
  %.not.i40 = icmp sle i32 %i.am, %i.w
  %i.ao = extractelement <4 x i1> %i.ae, i64 2    ; 2 uses
  %or.cond.i41 = or i1 %i.ao, %.not.i40
  %i.ap = icmp sgt i32 %i.w, 0
  %i.aq = select i1 %i.ap, i32 %i.an, i32 0
  %i.ar = select i1 %or.cond.i41, i32 %i.aq, i32 %i.w
  %.not.i42 = icmp sle i32 %i.an, %i.w
  %i.as = extractelement <4 x i1> %i.ae, i64 0
  %or.cond.i43 = or i1 %i.as, %.not.i42
  %i.at = select i1 %i.ao, i32 0, i32 %i.an
  %i.au = select i1 %or.cond.i43, i32 %i.at, i32 %i.x
  %i.av = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.ar
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = shl nsw i32 %i.ai, 2
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bc ; 4 uses
  %i.be = shl nsw i32 %i.al, 2
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bf ; 4 uses
  %i.bh = fsub double 1.000000e+00, %i.aa
  %i.bi = mul nsw i32 %i.ax, %i.au
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bc ; 4 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bf ; 4 uses
  %i.bn = fsub double 1.000000e+00, %i.ab         ; 4 uses
  %i.bo = load float, ptr %i.bd, align 4, !tbaa !30
  %i.bp = load float, ptr %i.bg, align 4, !tbaa !30
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !30
  %i.br = load float, ptr %i.bm, align 4, !tbaa !30
  %i.bs = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bq, i64 1
  %i.bu = fpext <2 x float> %i.bt to <2 x double>
end_hunk_8
begin_hunk_9_@_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd:bb.a
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !288

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

declare void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %5 = and i32 %3, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !50
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !50
  %i.n = fadd <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  call void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, double %i.o, double %i.p)
  %i.q = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l)
  %i.r = fsub <2 x double> splat (double 1.000000e+00), %i.q ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.r, %shift ; 2 uses
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !103  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !30 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.z = fpext float %i.y to double
  %i.aa = load <2 x float>, ptr %i.x, align 4, !tbaa !30 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 4 uses
  %i.ac = fcmp olt float %i.ab, %i.w
  %i.ad = select i1 %i.ac, float %i.ab, float %i.w ; 2 uses
  %i.ae = fcmp olt float %i.w, %i.ab
  %i.af = select i1 %i.ae, float %i.ab, float %i.w ; 2 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.af
  %i.ai = select i1 %i.ah, float %i.ag, float %i.af ; 2 uses
  %i.aj = fcmp olt float %i.ad, %i.ai
  %i.ak = select i1 %i.aj, float %i.ai, float %i.ad ; 2 uses
  %i.al = fsub float %i.ak, %i.w
  %i.am = fpext float %i.al to double
  %i.an = call double @llvm.fmuladd.f64(double %i.s, double %i.am, double %i.z)
  %i.ao = fptrunc double %i.an to float           ; 3 uses
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %i.as, %i.aa
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.au, <2 x double> %i.aq)
  %i.ax = fptrunc <2 x double> %i.aw to <2 x float> ; 3 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 0 ; 4 uses
  %i.az = fcmp olt float %i.ay, %i.y
  %i.ba = select i1 %i.az, float %i.ay, float %i.y ; 2 uses
  %i.bb = fcmp olt float %i.y, %i.ay
  %i.bc = select i1 %i.bb, float %i.ay, float %i.y ; 2 uses
  %i.bd = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.bc
  %i.bf = select i1 %i.be, float %i.bd, float %i.bc ; 2 uses
  %i.bg = fcmp olt float %i.ba, %i.bf
  %i.bh = select i1 %i.bg, float %i.bf, float %i.ba
  %i.bi = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, %i.ao
  %i.bk = select i1 %i.bj, float %i.bi, float %i.ao
  %i.bl = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1 ; 2 uses
  %i.bn = fcmp ogt <2 x float> %i.bm, %i.ax
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.ax, <2 x float> %i.bm ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.br = fcmp olt float %i.bp, %i.bq
  %i.bs = select i1 %i.br, float %i.bq, float %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bv = load <2 x double>, ptr %i.t, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !50
  %i.by = fmul <2 x double> %i.l, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by
  store <2 x double> %i.bz, ptr %4, align 16
  %i.ca = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cb = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, double noundef %i.ca)
  %i.cc = fptrunc double %i.cb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 200
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !95
  %i.cg = fsub float %i.bs, %i.cc
  %i.ch = call float @llvm.fabs.f32(float %i.cg)
  %i.ci = fpext float %i.ch to double
  %i.cj = fmul double %i.cf, %i.ci
  %i.ck = fsub float %i.bh, %i.cc
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fpext float %i.cl to double
  %i.cn = fcmp olt double %i.cj, %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.cn, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !291, !nonnull !75, !align !119 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %.not35 = icmp eq ptr %i.c, %i.e
  br i1 %.not35, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %.lr.ph38

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.h = tail call noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret double %i.h

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.loopexit
  %i.i = phi ptr [ %i.am, %.loopexit ], [ %i.b, %.lr.ph38.preheader ]
  %.037 = phi ptr [ %.2, %.loopexit ], [ %i.g, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.019.036 = phi ptr [ %i.al, %.loopexit ], [ %i.c, %.lr.ph38.preheader ] ; 6 uses
  %i.j = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph38
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.o = ptrtoint ptr %.sroa.019.036 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.s)
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.v = load ptr, ptr %.sroa.019.036, align 8, !tbaa !122 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %spec.select = select i1 %i.z, ptr %i.aa, ptr %i.v
  %i.ab = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116 ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not2930 = icmp eq ptr %i.af, %i.ag
  br i1 %.not2930, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.134 = phi ptr [ %i.ai, %.lr.ph ], [ %.037, %bb.b ] ; 2 uses
  %.0933 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %.01032 = phi ptr [ %.0933, %.lr.ph ], [ %i.ab, %bb.b ]
  %.sroa.011.031 = phi ptr [ %i.aj, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.ah = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.134, i64 56 ; 2 uses
  tail call void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %.134, ptr noundef %.01032, ptr noundef %.0933, ptr noundef %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.031, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not29 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not29, label %.loopexit, label %.lr.ph, !llvm.loop !289

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph38
  %.2 = phi ptr [ %.037, %.lr.ph38 ], [ %.037, %bb.b ], [ %i.ai, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 24 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !291, !nonnull !75, !align !119 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %.not = icmp eq ptr %i.al, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !290
}

declare void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
end_hunk_9
begin_hunk_10_@_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd:bb.a
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !292

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %5 = and i32 %3, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 2
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !50
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !50
  %i.n = fadd <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  call void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, double %i.o, double %i.p)
  %i.q = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l)
  %i.r = fsub <2 x double> splat (double 1.000000e+00), %i.q ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.r, %shift ; 2 uses
  %i.s = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !30 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.z = fpext float %i.y to double
  %i.aa = load <2 x float>, ptr %i.x, align 4, !tbaa !30 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 4 uses
  %i.ac = fcmp olt float %i.ab, %i.w
  %i.ad = select i1 %i.ac, float %i.ab, float %i.w ; 2 uses
  %i.ae = fcmp olt float %i.w, %i.ab
  %i.af = select i1 %i.ae, float %i.ab, float %i.w ; 2 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.af
  %i.ai = select i1 %i.ah, float %i.ag, float %i.af ; 2 uses
  %i.aj = fcmp olt float %i.ad, %i.ai
  %i.ak = select i1 %i.aj, float %i.ai, float %i.ad ; 2 uses
  %i.al = fsub float %i.ak, %i.w
  %i.am = fpext float %i.al to double
  %i.an = call double @llvm.fmuladd.f64(double %i.s, double %i.am, double %i.z)
  %i.ao = fptrunc double %i.an to float           ; 3 uses
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %i.as, %i.aa
  %i.au = fpext <2 x float> %i.at to <2 x double>
  %i.av = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.au, <2 x double> %i.aq)
  %i.ax = fptrunc <2 x double> %i.aw to <2 x float> ; 3 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 0 ; 4 uses
  %i.az = fcmp olt float %i.ay, %i.y
  %i.ba = select i1 %i.az, float %i.ay, float %i.y ; 2 uses
  %i.bb = fcmp olt float %i.y, %i.ay
  %i.bc = select i1 %i.bb, float %i.ay, float %i.y ; 2 uses
  %i.bd = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.bc
  %i.bf = select i1 %i.be, float %i.bd, float %i.bc ; 2 uses
  %i.bg = fcmp olt float %i.ba, %i.bf
  %i.bh = select i1 %i.bg, float %i.bf, float %i.ba
  %i.bi = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, %i.ao
  %i.bk = select i1 %i.bj, float %i.bi, float %i.ao
  %i.bl = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1 ; 2 uses
  %i.bn = fcmp ogt <2 x float> %i.bm, %i.ax
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.ax, <2 x float> %i.bm ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.br = fcmp olt float %i.bp, %i.bq
  %i.bs = select i1 %i.br, float %i.bq, float %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bv = load <2 x double>, ptr %i.t, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.bx = load <2 x double>, ptr %i.bw, align 8, !tbaa !50
  %i.by = fmul <2 x double> %i.l, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by
  store <2 x double> %i.bz, ptr %4, align 16
  %i.ca = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cb = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, double noundef %i.ca)
  %i.cc = fptrunc double %i.cb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 200
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !105
  %i.cg = fsub float %i.bs, %i.cc
  %i.ch = call float @llvm.fabs.f32(float %i.cg)
  %i.ci = fpext float %i.ch to double
  %i.cj = fmul double %i.cf, %i.ci
  %i.ck = fsub float %i.bh, %i.cc
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fpext float %i.cl to double
  %i.cn = fcmp olt double %i.cj, %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.cn, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 14 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 13 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
end_hunk_10
