Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stackblur?download=true
inline.NumInlined: 296
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK2cv23ParallelStackBlurColumnItiEclERKNS_5RangeE:bb.a
  %invariant.gep205 = getelementptr [2 x i8], ptr %i.aj, i64 %i.fw ; 4 uses
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.us175
  %scevgep218 = getelementptr i8, ptr %.0126170.us, i64 %i.eu ; 3 uses
  %i.fx = shl nsw i64 %i.fv, 1
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.fx ; 3 uses
  %scevgep222 = getelementptr i8, ptr %.3.us, i64 %i.eu ; 2 uses
  %i.fy = shl nsw i64 %i.fw, 1
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 %i.fy ; 2 uses
  %bound0228 = icmp ult ptr %.0126170.us, %scevgep221
  %bound1229 = icmp ult ptr %invariant.gep203, %scevgep218
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult ptr %.0126170.us, %scevgep222
  %bound1232 = icmp ult ptr %.3.us, %scevgep218
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  %bound0235 = icmp ult ptr %.0126170.us, %scevgep224
  %bound1236 = icmp ult ptr %invariant.gep205, %scevgep218
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %invariant.gep203, %scevgep222
  %bound1240 = icmp ult ptr %.3.us, %scevgep221
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %invariant.gep203, %scevgep224
  %bound1244 = icmp ult ptr %invariant.gep205, %scevgep221
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %conflict.rdx258.reass = or i1 %conflict.rdx246, %invariant.op284
  br i1 %conflict.rdx258.reass, label %scalar.ph259.preheader, label %vector.body265

vector.body265:                                   ; preds = %vector.memcheck217, %vector.body265
  %index266 = phi i64 [ %index.next274, %vector.body265 ], [ 0, %vector.memcheck217 ] ; 8 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index266 ; 2 uses
  %wide.load267 = load <4 x i32>, ptr %i.fz, align 16, !tbaa !22, !alias.scope !323 ; 2 uses
  %i.ga = sitofp <4 x i32> %wide.load267 to <4 x float>
  %i.gb = fmul <4 x float> %broadcast.splat264, %i.ga
  %i.gc = fptoui <4 x float> %i.gb to <4 x i16>
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %index266
  store <4 x i16> %i.gc, ptr %i.gd, align 2, !tbaa !43, !alias.scope !324, !noalias !325
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index266 ; 4 uses
  %wide.load268 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !22, !alias.scope !326, !noalias !327 ; 2 uses
  %i.gf = sub nsw <4 x i32> %wide.load267, %wide.load268
  %i.gg = getelementptr [2 x i8], ptr %invariant.gep203, i64 %index266 ; 2 uses
  %wide.load269 = load <4 x i16>, ptr %i.gg, align 2, !tbaa !43, !alias.scope !328, !noalias !329
  %i.gh = zext <4 x i16> %wide.load269 to <4 x i32>
  %i.gi = sub nsw <4 x i32> %wide.load268, %i.gh
  store <4 x i32> %i.gi, ptr %i.ge, align 4, !tbaa !22, !alias.scope !326, !noalias !327
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %index266
  %wide.load270 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !43, !alias.scope !330 ; 2 uses
  store <4 x i16> %wide.load270, ptr %i.gg, align 2, !tbaa !43, !alias.scope !328, !noalias !329
  %i.gk = zext <4 x i16> %wide.load270 to <4 x i32>
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index266 ; 3 uses
  %wide.load271 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !22, !alias.scope !331, !noalias !323
  %i.gm = add nsw <4 x i32> %wide.load271, %i.gk  ; 3 uses
  store <4 x i32> %i.gm, ptr %i.gl, align 4, !tbaa !22, !alias.scope !331, !noalias !323
  %i.gn = add nsw <4 x i32> %i.gf, %i.gm
  store <4 x i32> %i.gn, ptr %i.fz, align 16, !tbaa !22, !alias.scope !323
  %i.go = getelementptr [2 x i8], ptr %invariant.gep205, i64 %index266
  %wide.load272 = load <4 x i16>, ptr %i.go, align 2, !tbaa !43, !alias.scope !332
  %i.gp = zext <4 x i16> %wide.load272 to <4 x i32> ; 2 uses
  %wide.load273 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !22, !alias.scope !326, !noalias !327
  %i.gq = add nsw <4 x i32> %wide.load273, %i.gp
  store <4 x i32> %i.gq, ptr %i.ge, align 4, !tbaa !22, !alias.scope !326, !noalias !327
  %i.gr = sub nsw <4 x i32> %i.gm, %i.gp
  store <4 x i32> %i.gr, ptr %i.gl, align 4, !tbaa !22, !alias.scope !331, !noalias !323
  %index.next274 = add nuw i64 %index266, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next274, %n.vec262
  br i1 %i.gs, label %middle.block275, label %vector.body265, !llvm.loop !314

middle.block275:                                  ; preds = %vector.body265
  br i1 %cmp.n276, label %._crit_edge166.us, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %vector.memcheck217, %.lr.ph.us175, %middle.block275
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.us175 ], [ %n.vec262, %middle.block275 ]
  br label %scalar.ph259

scalar.ph259:                                     ; preds = %scalar.ph259.preheader, %scalar.ph259
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph259 ], [ %indvars.iv189.ph, %scalar.ph259.preheader ] ; 8 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv189 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !22 ; 2 uses
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fmul float %i.et, %i.gv
  %i.gx = fptoui float %i.gw to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %indvars.iv189
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !43
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv189 ; 4 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !22 ; 2 uses
  %i.hb = sub nsw i32 %i.gu, %i.ha
  %gep204 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %indvars.iv189 ; 2 uses
  %i.hc = load i16, ptr %gep204, align 2, !tbaa !43
  %i.hd = zext i16 %i.hc to i32
  %i.he = sub nsw i32 %i.ha, %i.hd
  store i32 %i.he, ptr %i.gz, align 4, !tbaa !22
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %indvars.iv189
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !43 ; 2 uses
  store i16 %i.hg, ptr %gep204, align 2, !tbaa !43
  %i.hh = zext i16 %i.hg to i32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv189 ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !22
  %i.hk = add nsw i32 %i.hj, %i.hh                ; 3 uses
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !22
  %i.hl = add nsw i32 %i.hb, %i.hk
  store i32 %i.hl, ptr %i.gt, align 4, !tbaa !22
  %gep206 = getelementptr [2 x i8], ptr %invariant.gep205, i64 %indvars.iv189
  %i.hm = load i16, ptr %gep206, align 2, !tbaa !43
  %i.hn = zext i16 %i.hm to i32                   ; 2 uses
  %i.ho = load i32, ptr %i.gz, align 4, !tbaa !22
  %i.hp = add nsw i32 %i.ho, %i.hn
  store i32 %i.hp, ptr %i.gz, align 4, !tbaa !22
  %i.hq = sub nsw i32 %i.hk, %i.hn
  store i32 %i.hq, ptr %i.hi, align 4, !tbaa !22
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge166.us, label %scalar.ph259, !llvm.loop !315

._crit_edge166.us:                                ; preds = %scalar.ph259, %middle.block275
  %i.hr = load i32, ptr %i.er, align 4, !tbaa !66
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %.0126170.us, i64 %i.hs
  %i.hu = add nuw nsw i32 %.0124171.us, 1         ; 2 uses
  %i.hv = load i32, ptr %i.eo, align 8, !tbaa !67
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.f, label %._crit_edge174, !llvm.loop !316

._crit_edge174:                                   ; preds = %._crit_edge166.us, %.lr.ph173, %._crit_edge163
  %i.hx = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.hx, %i.y
  %i.hy = icmp eq ptr %i.hx, null
  %or.cond.i = or i1 %.not.i.i150, %i.hy
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge174
  call void @_ZdaPv(ptr noundef nonnull %i.hx) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge174, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv20ParallelStackBlurRowIffED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv20ParallelStackBlurRowIffEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 4 uses
  %i.e = icmp slt i32 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72   ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.d
  %or.cond675 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond675, label %.preheader355, label %._crit_edge617

.preheader355:                                    ; preds = %bb.a
  %.not307434 = icmp slt i32 %i.b, 0              ; 3 uses
  br i1 %.not307434, label %._crit_edge440, label %.lr.ph439

._crit_edge440.loopexit:                          ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.i = ptrtoint ptr %.sroa.19.1 to i64
  br label %._crit_edge440

._crit_edge440:                                   ; preds = %._crit_edge440.loopexit, %.preheader355
  %.sroa.19.0.lcssa = phi i64 [ 0, %.preheader355 ], [ %i.i, %._crit_edge440.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader355 ], [ %.sroa.0.1, %._crit_edge440.loopexit ] ; 10 uses
  %i.j = sdiv i32 %i.d, 2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 4 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph484, label %._crit_edge485

.lr.ph484:                                        ; preds = %._crit_edge440
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402, !nonnull !88, !align !89 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !86   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !403, !nonnull !88, !align !89 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !90   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !86 ; 8 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !71  ; 9 uses
  %i.ad = icmp slt i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !72  ; 4 uses
  %i.ah = sub i32 %i.ag, %i.ac
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !75 ; 18 uses
  %i.aj = mul i32 %i.ah, %i.ai                    ; 7 uses
  %i.ak = mul i32 %i.ai, %i.ac                    ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  %.not309457 = icmp slt i32 %i.ac, 1
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax549 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.ao = sext i32 %i.ai to i64                   ; 7 uses
  %i.ap = add i32 %i.ac, 1                        ; 2 uses
  %i.aq = sext i32 %i.ak to i64                   ; 6 uses
  %i.ar = sext i32 %i.m to i64                    ; 4 uses
  %wide.trip.count615 = sext i32 %i.o to i64      ; 2 uses
  %i.as = icmp slt i32 %i.ai, 1
  %i.at = zext i32 %i.ai to i64                   ; 12 uses
  %wide.trip.count560 = zext i32 %i.ac to i64     ; 2 uses
  %i.au = zext nneg i32 %i.ai to i64              ; 2 uses
  %wide.trip.count570 = zext nneg i32 %i.ac to i64
  %wide.trip.count580 = sext i32 %i.aj to i64     ; 5 uses
  %wide.trip.count575 = zext i32 %i.ap to i64
  %wide.trip.count585 = sext i32 %i.aj to i64
  %wide.trip.count600 = sext i32 %i.ag to i64     ; 2 uses
  %wide.trip.count595 = zext nneg i32 %i.ai to i64
  %wide.trip.count610 = sext i32 %i.ag to i64
  %wide.trip.count605 = zext nneg i32 %i.ai to i64
  %i.av = shl nsw i64 %i.ao, 2
  %3 = shl nsw i64 %wide.trip.count600, 2
  %4 = add nsw i64 %3, -4
  %5 = mul i64 %4, %i.ao
  %i.aw = mul i64 %i.ab, %i.ar                    ; 2 uses
  %i.ax = shl nuw nsw i64 %i.at, 2
  %scevgep909 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ay = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.z, i64 %i.aw
  %scevgep926 = getelementptr i8, ptr %i.az, i64 %i.ay ; 2 uses
  %i.ba = add nsw i64 %wide.trip.count615, -1     ; 2 uses
  %i.bb = mul i64 %i.ab, %i.ba
  %i.bc = shl nsw i64 %wide.trip.count580, 2      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.z, i64 %i.bb
  %scevgep927 = getelementptr i8, ptr %i.bd, i64 %i.bc ; 2 uses
  %i.be = mul i64 %i.v, %i.ar
  %i.bf = getelementptr i8, ptr %i.t, i64 %i.be
  %scevgep928 = getelementptr i8, ptr %i.bf, i64 %i.ay
  %i.bg = mul i64 %i.v, %i.ba
  %i.bh = getelementptr i8, ptr %i.t, i64 %i.bg
  %scevgep929 = getelementptr i8, ptr %i.bh, i64 %i.bc
  %scevgep930 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bi = mul nuw i64 %wide.trip.count560, %i.at
  %i.bj = shl i64 %i.bi, 2
  %i.bk = mul i64 %i.ab, %i.ar
  %i.bl = zext nneg i32 %smax549 to i64           ; 2 uses
  %i.bm = add nsw i64 %wide.trip.count575, -1     ; 3 uses
  %i.bn = getelementptr i8, ptr %i.z, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bk
  %i.bp = getelementptr i8, ptr %i.z, i64 %5
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.aw
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.ax
  %brmerge678 = select i1 %i.ad, i1 true, i1 %i.as
  %i.bs = icmp eq i32 %i.b, 0
  %min.iters.check962 = icmp ult i32 %i.ai, 8
  %n.vec964 = and i64 %i.at, 2147483640           ; 3 uses
  %cmp.n971 = icmp eq i64 %n.vec964, %i.at
  %xtraiter1007 = and i64 %i.at, 3                ; 2 uses
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1007, 0
  %xtraiter1011 = and i64 %i.bm, 1
  %i.bt = icmp eq i32 %i.ap, 2
  %unroll_iter1015 = and i64 %i.bm, -2
  %lcmp.mod1012.not = icmp eq i64 %xtraiter1011, 0
  %lcmp.mod1014 = trunc i64 %i.bm to i1
  %i.bu = sub nsw i64 %wide.trip.count580, %i.aq  ; 3 uses
  %min.iters.check941 = icmp ult i64 %i.bu, 8
  %bound0931 = icmp ult ptr %scevgep926, %scevgep929
  %bound1932 = icmp ult ptr %scevgep928, %scevgep927
  %found.conflict933 = and i1 %bound0931, %bound1932
  %i.bv = or i64 %i.v, %i.ab
  %i.bw = icmp slt i64 %i.bv, 0
  %i.bx = or i1 %found.conflict933, %i.bw
  %bound0935 = icmp ult ptr %scevgep926, %scevgep930
  %bound1936 = icmp ult ptr %i.af, %scevgep927
  %found.conflict937 = and i1 %bound0935, %bound1936
  %stride.check938 = icmp slt i64 %i.ab, 0
  %i.by = or i1 %found.conflict937, %stride.check938
  %conflict.rdx939 = or i1 %i.bx, %i.by
  %n.vec943 = and i64 %i.bu, -8                   ; 3 uses
  %i.bz = add nsw i64 %n.vec943, %i.aq
  %cmp.n954 = icmp eq i64 %i.bu, %n.vec943
  %i.ca = add nsw i64 %wide.trip.count580, -1
  %i.cb = icmp eq i32 %i.b, 0
  %min.iters.check914 = icmp ult i32 %i.ai, 8
  %n.vec916 = and i64 %i.at, 2147483640           ; 3 uses
  %cmp.n923 = icmp eq i64 %n.vec916, %i.at
  %xtraiter1027 = and i64 %i.at, 3                ; 2 uses
  %lcmp.mod1028.not = icmp eq i64 %xtraiter1027, 0
  br label %bb.q

.lr.ph439:                                        ; preds = %.preheader355, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0290438 = phi i32 [ %i.dp, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader355 ] ; 5 uses
  %.sroa.0.0437 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 13 uses
  %.sroa.13.0436 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 9 uses
  %.sroa.19.0435 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 4 uses
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %.not311 = icmp sgt i32 %.0290438, %i.cc
  br i1 %.not311, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph439
  %i.cd = trunc i32 %.0290438 to i16
  %i.ce = add i16 %i.cd, 1                        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0436, %.sroa.19.0435
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.ce, ptr %.sroa.13.0436, align 2, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.13.0436, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.cg = ptrtoint ptr %.sroa.13.0436 to i64
  %i.ch = ptrtoint ptr %.sroa.0.0437 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 6 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775806
  br i1 %i.cj, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ck = ashr exact i64 %i.ci, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add i64 %.sroa.speculated.i.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 4611686018427387903)
  %i.co = select i1 %i.cm, i64 4611686018427387903, i64 %i.cn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #21
          to label %.noexc313 unwind label %.loopexit ; 4 uses

.noexc313:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci ; 2 uses
  store i16 %i.ce, ptr %i.cr, align 2, !tbaa !43
  %i.cs = icmp sgt i64 %i.ci, 0
  br i1 %i.cs, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cq, ptr align 2 %.sroa.0.0437, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc313
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0437, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0437, i64 noundef %i.ci) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.co
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph439
  %i.cv = shl nsw i32 %i.cc, 1
  %i.cw = sub nsw i32 %i.cv, %.0290438
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = add i16 %i.cx, 1                        ; 2 uses
  %.not.i.i314 = icmp eq ptr %.sroa.13.0436, %.sroa.19.0435
  br i1 %.not.i.i314, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.cy, ptr %.sroa.13.0436, align 2, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.13.0436, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.j:                                             ; preds = %bb.h
  %i.da = ptrtoint ptr %.sroa.13.0436 to i64
  %i.db = ptrtoint ptr %.sroa.0.0437 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775806
  br i1 %i.dd, label %bb.k, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc321 unwind label %.loopexit.split-lp357

.noexc321:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315: ; preds = %bb.j
  %i.de = ashr exact i64 %i.dc, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i316 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add i64 %.sroa.speculated.i.i.i.i316, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 4611686018427387903)
  %i.di = select i1 %i.dg, i64 4611686018427387903, i64 %i.dh ; 3 uses
  %.not.i.i.i.i317 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i317)
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #21
          to label %.noexc322 unwind label %.loopexit356 ; 4 uses

.noexc322:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i16 %i.cy, ptr %i.dl, align 2, !tbaa !43
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

bb.l:                                             ; preds = %.noexc322
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dk, ptr align 2 %.sroa.0.0437, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318: ; preds = %bb.l, %.noexc322
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %.not.i17.i.i.i319 = icmp eq ptr %.sroa.0.0437, null
  br i1 %.not.i17.i.i.i319, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0437, i64 noundef %i.dc) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.di
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit356:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315
  %lpad.loopexit358 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp357:                            ; preds = %bb.k
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.i, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, %bb.c, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.sroa.19.1 = phi ptr [ %.sroa.19.0435, %bb.c ], [ %i.cu, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.do, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.19.0435, %bb.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.cf, %bb.c ], [ %i.ct, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dn, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %i.cz, %bb.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0437, %bb.c ], [ %i.cq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dk, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.0.0437, %bb.i ] ; 2 uses
  %i.dp = add nuw nsw i32 %.0290438, 1
  %exitcond545.not = icmp eq i32 %.0290438, %i.c
  br i1 %exitcond545.not, label %._crit_edge440.loopexit, label %.lr.ph439, !llvm.loop !333
end_hunk_0
