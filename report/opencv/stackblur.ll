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
  %or.cond666 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond666, label %.preheader355, label %._crit_edge608

.preheader355:                                    ; preds = %bb.a
  %.not307425 = icmp slt i32 %i.b, 0              ; 3 uses
  br i1 %.not307425, label %._crit_edge431, label %.lr.ph430

._crit_edge431.loopexit:                          ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.i = ptrtoint ptr %.sroa.19.1 to i64
  br label %._crit_edge431

._crit_edge431:                                   ; preds = %._crit_edge431.loopexit, %.preheader355
  %.sroa.19.0.lcssa = phi i64 [ 0, %.preheader355 ], [ %i.i, %._crit_edge431.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader355 ], [ %.sroa.0.1, %._crit_edge431.loopexit ] ; 10 uses
  %i.j = sdiv i32 %i.d, 2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 4 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph475, label %._crit_edge476

.lr.ph475:                                        ; preds = %._crit_edge431
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
  %.not309448 = icmp slt i32 %i.ac, 1
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax540 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.ao = sext i32 %i.ai to i64                   ; 7 uses
  %i.ap = add i32 %i.ac, 1                        ; 2 uses
  %i.aq = sext i32 %i.ak to i64                   ; 6 uses
  %i.ar = sext i32 %i.m to i64                    ; 4 uses
  %wide.trip.count606 = sext i32 %i.o to i64      ; 2 uses
  %i.as = icmp slt i32 %i.ai, 1
  %i.at = zext i32 %i.ai to i64                   ; 12 uses
  %wide.trip.count551 = zext i32 %i.ac to i64     ; 2 uses
  %i.au = zext nneg i32 %i.ai to i64              ; 2 uses
  %wide.trip.count561 = zext nneg i32 %i.ac to i64
  %wide.trip.count571 = sext i32 %i.aj to i64     ; 5 uses
  %wide.trip.count566 = zext i32 %i.ap to i64
  %wide.trip.count576 = sext i32 %i.aj to i64
  %wide.trip.count591 = sext i32 %i.ag to i64     ; 2 uses
  %wide.trip.count586 = zext nneg i32 %i.ai to i64
  %wide.trip.count601 = sext i32 %i.ag to i64
  %wide.trip.count596 = zext nneg i32 %i.ai to i64
  %i.av = shl nsw i64 %i.ao, 2
  %i.aw = shl nsw i64 %wide.trip.count591, 2
  %i.ax = add nsw i64 %i.aw, -4
  %i.ay = mul i64 %i.ax, %i.ao
  %i.az = mul i64 %i.ab, %i.ar                    ; 2 uses
  %i.ba = shl nuw nsw i64 %i.at, 2
  %scevgep900 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bb = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.z, i64 %i.az
  %scevgep917 = getelementptr i8, ptr %i.bc, i64 %i.bb ; 2 uses
  %i.bd = add nsw i64 %wide.trip.count606, -1     ; 2 uses
  %i.be = mul i64 %i.ab, %i.bd
  %i.bf = shl nsw i64 %wide.trip.count571, 2      ; 2 uses
  %i.bg = getelementptr i8, ptr %i.z, i64 %i.be
  %scevgep918 = getelementptr i8, ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bh = mul i64 %i.v, %i.ar
  %i.bi = getelementptr i8, ptr %i.t, i64 %i.bh
  %scevgep919 = getelementptr i8, ptr %i.bi, i64 %i.bb
  %i.bj = mul i64 %i.v, %i.bd
  %i.bk = getelementptr i8, ptr %i.t, i64 %i.bj
  %scevgep920 = getelementptr i8, ptr %i.bk, i64 %i.bf
  %scevgep921 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bl = mul nuw i64 %wide.trip.count551, %i.at
  %i.bm = shl i64 %i.bl, 2
  %i.bn = mul i64 %i.ab, %i.ar
  %i.bo = zext nneg i32 %smax540 to i64           ; 2 uses
  %i.bp = add nsw i64 %wide.trip.count566, -1     ; 3 uses
  %i.bq = getelementptr i8, ptr %i.z, i64 %i.bm
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.z, i64 %i.ay
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.ba
  %brmerge669 = select i1 %i.ad, i1 true, i1 %i.as
  %i.bv = icmp eq i32 %i.b, 0
  %min.iters.check953 = icmp ult i32 %i.ai, 8
  %n.vec955 = and i64 %i.at, 2147483640           ; 3 uses
  %cmp.n962 = icmp eq i64 %n.vec955, %i.at
  %xtraiter995 = and i64 %i.at, 3                 ; 2 uses
  %lcmp.mod996.not = icmp eq i64 %xtraiter995, 0
  %xtraiter999 = and i64 %i.bp, 1
  %i.bw = icmp eq i32 %i.ap, 2
  %unroll_iter1003 = and i64 %i.bp, -2
  %lcmp.mod1000.not = icmp eq i64 %xtraiter999, 0
  %lcmp.mod1002 = trunc i64 %i.bp to i1
  %i.bx = sub nsw i64 %wide.trip.count571, %i.aq  ; 3 uses
  %min.iters.check932 = icmp ult i64 %i.bx, 8
  %bound0922 = icmp ult ptr %scevgep917, %scevgep920
  %bound1923 = icmp ult ptr %scevgep919, %scevgep918
  %found.conflict924 = and i1 %bound0922, %bound1923
  %i.by = or i64 %i.v, %i.ab
  %i.bz = icmp slt i64 %i.by, 0
  %i.ca = or i1 %found.conflict924, %i.bz
  %bound0926 = icmp ult ptr %scevgep917, %scevgep921
  %bound1927 = icmp ult ptr %i.af, %scevgep918
  %found.conflict928 = and i1 %bound0926, %bound1927
  %stride.check929 = icmp slt i64 %i.ab, 0
  %3 = or i1 %found.conflict928, %stride.check929
  %conflict.rdx930 = or i1 %i.ca, %3
  %n.vec934 = and i64 %i.bx, -8                   ; 3 uses
  %i.cb = add nsw i64 %n.vec934, %i.aq
  %cmp.n945 = icmp eq i64 %i.bx, %n.vec934
  %i.cc = add nsw i64 %wide.trip.count571, -1
  %i.cd = icmp eq i32 %i.b, 0
  %min.iters.check905 = icmp ult i32 %i.ai, 8
  %n.vec907 = and i64 %i.at, 2147483640           ; 3 uses
  %cmp.n914 = icmp eq i64 %n.vec907, %i.at
  %xtraiter1015 = and i64 %i.at, 3                ; 2 uses
  %lcmp.mod1016.not = icmp eq i64 %xtraiter1015, 0
  br label %bb.n

.lr.ph430:                                        ; preds = %.preheader355, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0290429 = phi i32 [ %i.dr, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader355 ] ; 5 uses
  %.sroa.0.0428 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 13 uses
  %.sroa.13.0427 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 9 uses
  %.sroa.19.0426 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader355 ] ; 4 uses
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %.not311 = icmp sgt i32 %.0290429, %i.ce
  br i1 %.not311, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph430
  %i.cf = trunc i32 %.0290429 to i16
  %i.cg = add i16 %i.cf, 1                        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0427, %.sroa.19.0426
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.cg, ptr %.sroa.13.0427, align 2, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.13.0427, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.ci = ptrtoint ptr %.sroa.13.0427 to i64
  %i.cj = ptrtoint ptr %.sroa.0.0428 to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 6 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775806
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cm = ashr exact i64 %i.ck, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add i64 %.sroa.speculated.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 4611686018427387903)
  %i.cq = select i1 %i.co, i64 4611686018427387903, i64 %i.cp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #21
          to label %.noexc313 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc313:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store i16 %i.cg, ptr %i.ct, align 2, !tbaa !43
  %i.cu = icmp sgt i64 %i.ck, 0
  br i1 %i.cu, label %bb.e, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr align 2 %.sroa.0.0428, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc313
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0428, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0428, i64 noundef %i.ck) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cq
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.g:                                             ; preds = %.lr.ph430
  %i.cx = shl nsw i32 %i.ce, 1
  %i.cy = sub nsw i32 %i.cx, %.0290429
  %i.cz = trunc i32 %i.cy to i16
  %i.da = add i16 %i.cz, 1                        ; 2 uses
  %.not.i.i314 = icmp eq ptr %.sroa.13.0427, %.sroa.19.0426
  br i1 %.not.i.i314, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 %i.da, ptr %.sroa.13.0427, align 2, !tbaa !43
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.13.0427, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.i:                                             ; preds = %bb.g
  %i.dc = ptrtoint ptr %.sroa.13.0427 to i64
  %i.dd = ptrtoint ptr %.sroa.0.0428 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775806
  br i1 %i.df, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315

.invoke:                                          ; preds = %bb.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315: ; preds = %bb.i
  %i.dg = ashr exact i64 %i.de, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i316 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add i64 %.sroa.speculated.i.i.i.i316, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 4611686018427387903)
  %i.dk = select i1 %i.di, i64 4611686018427387903, i64 %i.dj ; 3 uses
  %.not.i.i.i.i317 = icmp ne i64 %i.dk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i317)
  %i.dl = shl nuw nsw i64 %i.dk, 1
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #21
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc322:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i16 %i.da, ptr %i.dn, align 2, !tbaa !43
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.j, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

bb.j:                                             ; preds = %.noexc322
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dm, ptr align 2 %.sroa.0.0428, i64 %i.de, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318: ; preds = %bb.j, %.noexc322
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %.not.i17.i.i.i319 = icmp eq ptr %.sroa.0.0428, null
  br i1 %.not.i17.i.i.i319, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0428, i64 noundef %i.de) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320: ; preds = %bb.k, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dk
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315, %.invoke
  %lpad.loopexit.split-lp970 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0.0428, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.l

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.h, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, %bb.c, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.sroa.19.1 = phi ptr [ %.sroa.19.0426, %bb.c ], [ %i.cw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.19.0426, %bb.h ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.ch, %bb.c ], [ %i.cv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %i.db, %bb.h ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0428, %bb.c ], [ %i.cs, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.0.0428, %bb.h ] ; 2 uses
  %i.dr = add nuw nsw i32 %.0290429, 1
  %exitcond536.not = icmp eq i32 %.0290429, %i.c
  br i1 %exitcond536.not, label %._crit_edge431.loopexit, label %.lr.ph430, !llvm.loop !333

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.ds = ptrtoint ptr %.sroa.13.0427 to i64
  %i.dt = ptrtoint ptr %.sroa.0.0428 to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0428, i64 noundef %i.du) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.l
  resume { ptr, i32 } %lpad.loopexit.split-lp970

._crit_edge476:                                   ; preds = %._crit_edge470.split, %._crit_edge431
  %.not.i.i.i324 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorItSaItEED2Ev.exit325, label %bb.m

bb.m:                                             ; preds = %._crit_edge476
  %i.dv = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.dw = sub i64 %.sroa.19.0.lcssa, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.dw) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit325

bb.n:                                             ; preds = %.lr.ph475, %._crit_edge470.split
  %indvar897 = phi i64 [ 0, %.lr.ph475 ], [ %indvar.next898, %._crit_edge470.split ] ; 3 uses
  %indvars.iv603 = phi i64 [ %i.ar, %.lr.ph475 ], [ %indvars.iv.next604, %._crit_edge470.split ] ; 3 uses
  %i.dx = mul i64 %i.ab, %indvar897
  %scevgep948 = getelementptr i8, ptr %i.br, i64 %i.dx
  %i.dy = mul i64 %i.ab, %indvar897
  %scevgep899 = getelementptr i8, ptr %i.bu, i64 %i.dy
  %i.dz = mul i64 %i.v, %indvars.iv603
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dz ; 11 uses
  %i.eb = mul i64 %i.ab, %indvars.iv603
  %i.ec = getelementptr i8, ptr %i.z, i64 %i.eb   ; 11 uses
  br i1 %brmerge669, label %._crit_edge442.split, label %.preheader354.lr.ph.split

.preheader354.lr.ph.split:                        ; preds = %bb.n
  br i1 %.not307425, label %.preheader354.us.preheader, label %.preheader354

.preheader354.us.preheader:                       ; preds = %.preheader354.lr.ph.split
  %bound0949 = icmp ult ptr %i.ec, %scevgep921
  %bound1950 = icmp ult ptr %i.af, %scevgep948
  %found.conflict951 = and i1 %bound0949, %bound1950
  br label %.preheader354.us

.preheader354.us:                                 ; preds = %.preheader354.us.preheader, %._crit_edge440.split.us.us
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %._crit_edge440.split.us.us ], [ 0, %.preheader354.us.preheader ] ; 2 uses
  %i.ed = mul nuw nsw i64 %indvars.iv558, %i.au
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ed ; 6 uses
  %brmerge1033.a = select i1 %min.iters.check953, i1 true, i1 %found.conflict951
  br i1 %brmerge1033.a, label %.preheader352.us.us.preheader, label %vector.ph954
end_hunk_0
begin_hunk_1_@_ZNK2cv23ParallelStackBlurColumnIffEclERKNS_5RangeE:bb.a
  br label %.lr.ph162.split.us

.lr.ph162.split.us:                               ; preds = %.lr.ph162.split.us.preheader, %._crit_edge158.us
  %indvars.iv190 = phi i64 [ 1, %.lr.ph162.split.us.preheader ], [ %indvars.iv.next191, %._crit_edge158.us ] ; 4 uses
  %.0133160.us = phi ptr [ %i.aq, %.lr.ph162.split.us.preheader ], [ %.1134.us, %._crit_edge158.us ] ; 2 uses
  %.not148.us = icmp sgt i64 %indvars.iv190, %i.bv
  br i1 %.not148.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph162.split.us
  %i.cr = load i32, ptr %i.bt, align 4, !tbaa !79
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.0133160.us, i64 %i.cs
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d, %.lr.ph162.split.us
  %.1134.us = phi ptr [ %i.ct, %bb.d ], [ %.0133160.us, %.lr.ph162.split.us ] ; 9 uses
  %i.cu = add nuw nsw i64 %indvars.iv190, %i.bw
  %i.cv = mul nuw nsw i64 %i.cu, %i.bx
  %i.cw = trunc nuw nsw i64 %indvars.iv190 to i32
  %i.cx = sub i32 %i.bu, %i.cw
  %i.cy = sitofp i32 %i.cx to float               ; 4 uses
  %invariant.gep209 = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cv ; 4 uses
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.us
  %scevgep246 = getelementptr i8, ptr %.1134.us, i64 %i.cm ; 3 uses
  %bound0254 = icmp ult ptr %scevgep242, %scevgep246
  %bound1255 = icmp ult ptr %.1134.us, %scevgep243
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx261.reass = or i1 %found.conflict256, %invariant.op
  %bound0262 = icmp ugt ptr %scevgep246, %i.ae
  %bound1263 = icmp ult ptr %.1134.us, %scevgep244
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261.reass, %found.conflict264
  %bound0266 = icmp ult ptr %i.ag, %scevgep246
  %bound1267 = icmp ult ptr %.1134.us, %scevgep245
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  br i1 %conflict.rdx269, label %scalar.ph270.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck240
  %broadcast.splatinsert274 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat275 = shufflevector <4 x float> %broadcast.splatinsert274, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next281, %vector.body276 ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.1134.us, i64 %index277
  %wide.load278 = load <4 x float>, ptr %i.cz, align 4, !tbaa !97, !alias.scope !469 ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %index277
  store <4 x float> %wide.load278, ptr %i.da, align 4, !tbaa !97, !alias.scope !470, !noalias !471
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index277 ; 2 uses
  %wide.load279 = load <4 x float>, ptr %i.db, align 16, !tbaa !97, !alias.scope !472, !noalias !473
  %i.dc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load278, <4 x float> %broadcast.splat275, <4 x float> %wide.load279)
  store <4 x float> %i.dc, ptr %i.db, align 16, !tbaa !97, !alias.scope !472, !noalias !473
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index277 ; 2 uses
  %wide.load280 = load <4 x float>, ptr %i.dd, align 4, !tbaa !97, !alias.scope !474, !noalias !469
  %i.de = fadd <4 x float> %wide.load278, %wide.load280
  store <4 x float> %i.de, ptr %i.dd, align 4, !tbaa !97, !alias.scope !474, !noalias !469
  %index.next281 = add nuw i64 %index277, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next281, %n.vec273
  br i1 %i.df, label %middle.block282, label %vector.body276, !llvm.loop !444

middle.block282:                                  ; preds = %vector.body276
  br i1 %cmp.n283, label %._crit_edge158.us, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %vector.memcheck240, %.lr.ph.us, %middle.block282
  %indvars.iv185.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %.lr.ph.us ], [ %n.vec273, %middle.block282 ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol

scalar.ph270.prol:                                ; preds = %scalar.ph270.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.1134.us, i64 %indvars.iv185.ph
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !97 ; 3 uses
  %gep210.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %indvars.iv185.ph
  store float %i.dh, ptr %gep210.prol, align 4, !tbaa !97
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv185.ph ; 2 uses
  %i.dj = load float, ptr %i.di, align 16, !tbaa !97
  %i.dk = call float @llvm.fmuladd.f32(float %i.dh, float %i.cy, float %i.dj)
  store float %i.dk, ptr %i.di, align 16, !tbaa !97
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv185.ph ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !97
  %i.dn = fadd float %i.dh, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !97
  %indvars.iv.next186.prol = or disjoint i64 %indvars.iv185.ph, 1
  br label %scalar.ph270.prol.loopexit

scalar.ph270.prol.loopexit:                       ; preds = %scalar.ph270.prol, %scalar.ph270.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %scalar.ph270.preheader ], [ %indvars.iv.next186.prol, %scalar.ph270.prol ]
  %i.do = icmp eq i64 %indvars.iv185.ph, %i.cq
  br i1 %i.do, label %._crit_edge158.us, label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.1, %scalar.ph270 ], [ %indvars.iv185.unr, %scalar.ph270.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.1134.us, i64 %indvars.iv185
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !97 ; 3 uses
  %gep210 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %indvars.iv185
  store float %i.dq, ptr %gep210, align 4, !tbaa !97
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv185 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !97
  %i.dt = call float @llvm.fmuladd.f32(float %i.dq, float %i.cy, float %i.ds)
  store float %i.dt, ptr %i.dr, align 4, !tbaa !97
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv185 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !97
  %i.dw = fadd float %i.dq, %i.dv
  store float %i.dw, ptr %i.du, align 4, !tbaa !97
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.1134.us, i64 %indvars.iv.next186
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !97 ; 3 uses
  %gep210.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %indvars.iv.next186
  store float %i.dy, ptr %gep210.1, align 4, !tbaa !97
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next186 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !97
  %i.eb = call float @llvm.fmuladd.f32(float %i.dy, float %i.cy, float %i.ea)
  store float %i.eb, ptr %i.dz, align 4, !tbaa !97
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next186 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !97
  %i.ee = fadd float %i.dy, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !tbaa !97
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %exitcond189.not.1 = icmp eq i64 %indvars.iv.next186.1, %i.bx
  br i1 %exitcond189.not.1, label %._crit_edge158.us, label %scalar.ph270, !llvm.loop !445

._crit_edge158.us:                                ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270, %middle.block282
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %._crit_edge163, label %.lr.ph162.split.us, !llvm.loop !446

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.preheader, label %.preheader152, !llvm.loop !447

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !97 ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.eg, ptr %gep, align 4, !tbaa !97
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !97
  %i.ej = call float @llvm.fmuladd.f32(float %i.eg, float %i.bl, float %i.ei)
  store float %i.ej, ptr %i.eh, align 4, !tbaa !97
  %i.ek = load float, ptr %i.ef, align 4, !tbaa !97
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !97
  %i.en = fadd float %i.ek, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !448

._crit_edge163:                                   ; preds = %._crit_edge158.us, %.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !80 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %._crit_edge163
  %i.er = sub i32 %i.e, %i.ar
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !79 ; 2 uses
  %i.ev = sext i32 %i.eu to i64                   ; 3 uses
  br i1 %i.as, label %.lr.ph173.split.us.preheader, label %._crit_edge174

.lr.ph173.split.us.preheader:                     ; preds = %.lr.ph173
  %i.ew = load i64, ptr %i.an, align 8, !tbaa !86
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ar, i32 %.pre) ; 2 uses
  %i.ex = sext i32 %spec.select to i64
  %i.ey = mul i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ap
  %wide.trip.count199 = zext nneg i32 %i.p to i64 ; 6 uses
  %i.fb = add nsw i32 %i.ep, -1
  %i.fc = zext i32 %i.fb to i64
  %i.fd = mul nsw i64 %i.ev, %i.fc
  %i.fe = add i64 %i.fd, %i.ap
  %i.ff = shl nuw nsw i64 %wide.trip.count199, 2  ; 4 uses
  %i.fg = add i64 %i.fe, %wide.trip.count199
  %i.fh = shl i64 %i.fg, 2
  %scevgep286 = getelementptr i8, ptr %i.am, i64 %i.fh ; 7 uses
  %scevgep287 = getelementptr i8, ptr %i.ae, i64 %i.ff ; 7 uses
  %i.fi = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.m)
  %smin288 = sext i32 %i.fi to i64                ; 3 uses
  %i.fj = shl nsw i64 %smin288, 3
  %i.fk = add nsw i64 %i.fj, %i.ff
  %i.fl = sext i32 %i.o to i64                    ; 3 uses
  %i.fm = shl nsw i64 %i.fl, 3
  %i.fn = sub nsw i64 %i.fk, %i.fm
  %scevgep289 = getelementptr i8, ptr %i.ae, i64 %i.fn ; 7 uses
  %i.fo = mul nsw i64 %smin288, 12
  %i.fp = add nsw i64 %i.fo, %i.ff
  %.neg425 = mul nsw i64 %i.fl, -12
  %i.fq = add nsw i64 %.neg425, %i.fp             ; 2 uses
  %scevgep290 = getelementptr i8, ptr %i.ae, i64 %i.fq
  %i.fr = add nsw i64 %smin288, %wide.trip.count199
  %i.fs = sub nsw i64 %i.fr, %i.fl
  %i.ft = shl nsw i64 %i.fs, 2
  %scevgep292 = getelementptr i8, ptr %i.ae, i64 %i.ft ; 7 uses
  %scevgep293 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %scevgep296 = getelementptr i8, ptr %i.ae, i64 %i.fq
  %min.iters.check404 = icmp ult i32 %i.p, 20
  %bound0298 = icmp ult ptr %i.aq, %scevgep287
  %bound1299 = icmp ugt ptr %scevgep286, %i.ae
  %found.conflict300 = and i1 %bound0298, %bound1299
  %bound0301 = icmp ult ptr %i.aq, %scevgep289
  %bound1302 = icmp ult ptr %i.ah, %scevgep286
  %found.conflict303 = and i1 %bound0301, %bound1302
  %stride.check304 = icmp slt i32 %i.eu, 0
  %3 = or i1 %found.conflict303, %stride.check304
  %conflict.rdx305 = or i1 %found.conflict300, %3
  %bound0311 = icmp ult ptr %i.aq, %scevgep292
  %bound1312 = icmp ult ptr %i.ag, %scevgep286
  %found.conflict313 = and i1 %bound0311, %bound1312
  %invariant.op426 = or i1 %conflict.rdx305, %found.conflict313
  %bound0316 = icmp ult ptr %i.aq, %scevgep293
  %bound1317 = icmp ult ptr %i.et, %scevgep286
  %found.conflict318 = and i1 %bound0316, %bound1317
  %invariant.op427 = or i1 %invariant.op426, %found.conflict318
  %bound0331 = icmp ugt ptr %scevgep289, %i.ae
  %bound1332 = icmp ult ptr %i.ah, %scevgep287
  %found.conflict333 = and i1 %bound0331, %bound1332
  %bound0339 = icmp ugt ptr %scevgep292, %i.ae
  %bound1340 = icmp ult ptr %i.ag, %scevgep287
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0343 = icmp ugt ptr %scevgep293, %i.ae
  %bound1344 = icmp ult ptr %i.et, %scevgep287
  %found.conflict345 = and i1 %bound0343, %bound1344
  %invariant.op428 = or i1 %found.conflict341, %found.conflict345
  %bound0359 = icmp ult ptr %i.ah, %scevgep292
  %bound1360 = icmp ult ptr %i.ag, %scevgep289
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0363 = icmp ult ptr %i.ah, %scevgep293
  %bound1364 = icmp ult ptr %i.et, %scevgep289
  %found.conflict365 = and i1 %bound0363, %bound1364
  %invariant.op429 = or i1 %found.conflict361, %found.conflict365
  %bound0391 = icmp ult ptr %i.ag, %scevgep293
  %bound1392 = icmp ult ptr %i.et, %scevgep292
  %found.conflict393 = and i1 %bound0391, %bound1392
  %n.vec406 = and i64 %wide.trip.count199, 2147483644 ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec406, %wide.trip.count199
  br label %.lr.ph173.split.us

.lr.ph173.split.us:                               ; preds = %.lr.ph173.split.us.preheader, %._crit_edge166.us
  %.0124171.us = phi i32 [ %i.hu, %._crit_edge166.us ], [ 0, %.lr.ph173.split.us.preheader ]
  %.0126170.us = phi ptr [ %i.ht, %._crit_edge166.us ], [ %i.aq, %.lr.ph173.split.us.preheader ] ; 3 uses
  %.1169.us = phi i32 [ %.2.us, %._crit_edge166.us ], [ %spec.select, %.lr.ph173.split.us.preheader ] ; 2 uses
  %.0128168.us = phi i32 [ %spec.store.select.us, %._crit_edge166.us ], [ %i.ar, %.lr.ph173.split.us.preheader ] ; 3 uses
  %.2135167.us = phi ptr [ %.3.us, %._crit_edge166.us ], [ %i.fa, %.lr.ph173.split.us.preheader ] ; 2 uses
  %i.fu = add i32 %i.er, %.0128168.us             ; 2 uses
  %.not146.not.us = icmp sgt i32 %i.fu, %i.d
  %i.fv = select i1 %.not146.not.us, i32 %i.e, i32 0
  %spec.select149.us = sub nsw i32 %i.fu, %i.fv
  %i.fw = add nsw i32 %.0128168.us, 1
  %.not147.us = icmp slt i32 %.0128168.us, %i.d
  %spec.store.select.us = select i1 %.not147.us, i32 %i.fw, i32 0 ; 2 uses
  %i.fx = icmp slt i32 %.1169.us, %.pre           ; 2 uses
  %.3.us.idx = select i1 %i.fx, i64 %i.ev, i64 0  ; 2 uses
  %.3.us = getelementptr inbounds [4 x i8], ptr %.2135167.us, i64 %.3.us.idx ; 8 uses
  %i.fy = zext i1 %i.fx to i32
  %.2.us = add nsw i32 %.1169.us, %i.fy
  %i.fz = mul nsw i32 %spec.select149.us, %i.p
  %i.ga = mul i32 %spec.store.select.us, %i.p
  %i.gb = sext i32 %i.fz to i64                   ; 2 uses
  %i.gc = sext i32 %i.ga to i64                   ; 2 uses
  %invariant.gep211 = getelementptr [4 x i8], ptr %i.ai, i64 %i.gb ; 9 uses
  %invariant.gep213 = getelementptr [4 x i8], ptr %i.ai, i64 %i.gc ; 7 uses
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph173.split.us
  %i.gd = shl nsw i64 %i.gb, 2
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.gd ; 7 uses
  %scevgep294 = getelementptr i8, ptr %.2135167.us, i64 %i.ff
  %i.ge = shl nsw i64 %.3.us.idx, 2
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.ge ; 5 uses
  %i.gf = shl nsw i64 %i.gc, 2
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.gf ; 5 uses
  %bound0306 = icmp ult ptr %i.aq, %scevgep291
  %bound1307 = icmp ult ptr %invariant.gep211, %scevgep286
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx320.reass = or i1 %found.conflict308, %invariant.op427
  %bound0321.a = icmp ult ptr %i.aq, %scevgep295
  %bound1322.a = icmp ult ptr %.3.us, %scevgep286
  %found.conflict323.a = and i1 %bound0321.a, %bound1322.a
  %conflict.rdx325 = or i1 %found.conflict323.a, %conflict.rdx320.reass
  %bound0326 = icmp ult ptr %i.aq, %scevgep297
  %bound1327 = icmp ult ptr %invariant.gep213, %scevgep286
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx330 = or i1 %found.conflict328, %conflict.rdx325
  %conflict.rdx334 = or i1 %conflict.rdx330, %found.conflict333
  %bound0335 = icmp ugt ptr %scevgep291, %i.ae
  %bound1336 = icmp ult ptr %invariant.gep211, %scevgep287
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %conflict.rdx334, %found.conflict337
  %conflict.rdx346.reass = or i1 %conflict.rdx338, %invariant.op428
  %bound0347 = icmp ugt ptr %scevgep295, %i.ae
  %bound1348 = icmp ult ptr %.3.us, %scevgep287
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx350 = or i1 %conflict.rdx346.reass, %found.conflict349
  %bound0351 = icmp ugt ptr %scevgep297, %i.ae
  %bound1352 = icmp ult ptr %invariant.gep213, %scevgep287
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx354 = or i1 %conflict.rdx350, %found.conflict353
  %bound0355 = icmp ult ptr %i.ah, %scevgep291
  %bound1356 = icmp ult ptr %invariant.gep211, %scevgep289
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  %conflict.rdx366.reass = or i1 %conflict.rdx358, %invariant.op429
  %bound0367 = icmp ult ptr %i.ah, %scevgep295
  %bound1368 = icmp ult ptr %.3.us, %scevgep289
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366.reass, %found.conflict369
  %bound0371 = icmp ult ptr %i.ah, %scevgep297
  %bound1372 = icmp ult ptr %invariant.gep213, %scevgep289
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %invariant.gep211, %scevgep292
  %bound1376 = icmp ult ptr %i.ag, %scevgep291
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %invariant.gep211, %scevgep293
  %bound1380 = icmp ult ptr %i.et, %scevgep291
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %invariant.gep211, %scevgep295
  %bound1384 = icmp ult ptr %.3.us, %scevgep291
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %invariant.gep211, %scevgep297
  %bound1388 = icmp ult ptr %invariant.gep213, %scevgep291
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %i.ag, %scevgep295
  %bound1396 = icmp ult ptr %.3.us, %scevgep292
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %i.ag, %scevgep297
  %bound1400 = icmp ult ptr %invariant.gep213, %scevgep292
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  br i1 %conflict.rdx402, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck285
  %i.gg = load float, ptr %i.et, align 4, !tbaa !82, !alias.scope !475
  %broadcast.splatinsert410 = insertelement <4 x float> poison, float %i.gg, i64 0
  %broadcast.splat411 = shufflevector <4 x float> %broadcast.splatinsert410, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next421, %vector.body407 ] ; 8 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index408 ; 4 uses
  %wide.load409.a = load <4 x float>, ptr %i.gh, align 16, !tbaa !97, !alias.scope !476, !noalias !477 ; 2 uses
  %i.gi = fmul <4 x float> %wide.load409.a, %broadcast.splat411
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.0126170.us, i64 %index408
  store <4 x float> %i.gi, ptr %i.gj, align 4, !tbaa !97, !alias.scope !478, !noalias !479
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index408 ; 4 uses
  %wide.load412.a = load <4 x float>, ptr %i.gk, align 4, !tbaa !97, !alias.scope !480, !noalias !481 ; 2 uses
  %i.gl = fsub <4 x float> %wide.load409.a, %wide.load412.a
  store <4 x float> %i.gl, ptr %i.gh, align 16, !tbaa !97, !alias.scope !476, !noalias !477
  %i.gm = getelementptr [4 x i8], ptr %invariant.gep211, i64 %index408 ; 2 uses
  %wide.load414 = load <4 x float>, ptr %i.gm, align 4, !tbaa !97, !alias.scope !482, !noalias !483
  %i.gn = fsub <4 x float> %wide.load412.a, %wide.load414
  store <4 x float> %i.gn, ptr %i.gk, align 4, !tbaa !97, !alias.scope !480, !noalias !481
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.3.us, i64 %index408
  %wide.load415 = load <4 x float>, ptr %i.go, align 4, !tbaa !97, !alias.scope !484 ; 2 uses
  store <4 x float> %wide.load415, ptr %i.gm, align 4, !tbaa !97, !alias.scope !482, !noalias !483
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index408 ; 3 uses
  %wide.load416 = load <4 x float>, ptr %i.gp, align 4, !tbaa !97, !alias.scope !485, !noalias !486
  %i.gq = fadd <4 x float> %wide.load415, %wide.load416 ; 3 uses
  store <4 x float> %i.gq, ptr %i.gp, align 4, !tbaa !97, !alias.scope !485, !noalias !486
  %wide.load417 = load <4 x float>, ptr %i.gh, align 16, !tbaa !97, !alias.scope !476, !noalias !477
  %i.gr = fadd <4 x float> %i.gq, %wide.load417
  store <4 x float> %i.gr, ptr %i.gh, align 16, !tbaa !97, !alias.scope !476, !noalias !477
  %i.gs = getelementptr [4 x i8], ptr %invariant.gep213, i64 %index408
  %wide.load418 = load <4 x float>, ptr %i.gs, align 4, !tbaa !97, !alias.scope !487 ; 2 uses
  %wide.load419 = load <4 x float>, ptr %i.gk, align 4, !tbaa !97, !alias.scope !480, !noalias !481
  %i.gt = fadd <4 x float> %wide.load418, %wide.load419
  store <4 x float> %i.gt, ptr %i.gk, align 4, !tbaa !97, !alias.scope !480, !noalias !481
  %i.gu = fsub <4 x float> %i.gq, %wide.load418
  store <4 x float> %i.gu, ptr %i.gp, align 4, !tbaa !97, !alias.scope !485, !noalias !486
  %index.next421 = add nuw i64 %index408, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next421, %n.vec406
  br i1 %i.gv, label %middle.block422, label %vector.body407, !llvm.loop !458

middle.block422:                                  ; preds = %vector.body407
  br i1 %cmp.n423, label %._crit_edge166.us, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %vector.memcheck285, %.lr.ph173.split.us, %middle.block422
  %indvars.iv196.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.lr.ph173.split.us ], [ %n.vec406, %middle.block422 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %scalar.ph403 ], [ %indvars.iv196.ph, %scalar.ph403.preheader ] ; 8 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv196 ; 5 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !97
  %i.gy = load float, ptr %i.et, align 4, !tbaa !82
  %i.gz = fmul float %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.0126170.us, i64 %indvars.iv196
  store float %i.gz, ptr %i.ha, align 4, !tbaa !97
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv196 ; 4 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !97 ; 2 uses
  %i.hd = load float, ptr %i.gw, align 4, !tbaa !97
  %i.he = fsub float %i.hd, %i.hc
  store float %i.he, ptr %i.gw, align 4, !tbaa !97
  %gep212 = getelementptr [4 x i8], ptr %invariant.gep211, i64 %indvars.iv196 ; 2 uses
  %i.hf = load float, ptr %gep212, align 4, !tbaa !97
  %i.hg = fsub float %i.hc, %i.hf
  store float %i.hg, ptr %i.hb, align 4, !tbaa !97
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.3.us, i64 %indvars.iv196
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !97 ; 2 uses
  store float %i.hi, ptr %gep212, align 4, !tbaa !97
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv196 ; 3 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !97
  %i.hl = fadd float %i.hi, %i.hk                 ; 3 uses
  store float %i.hl, ptr %i.hj, align 4, !tbaa !97
  %i.hm = load float, ptr %i.gw, align 4, !tbaa !97
  %i.hn = fadd float %i.hl, %i.hm
  store float %i.hn, ptr %i.gw, align 4, !tbaa !97
  %gep214 = getelementptr [4 x i8], ptr %invariant.gep213, i64 %indvars.iv196 ; 2 uses
  %i.ho = load float, ptr %gep214, align 4, !tbaa !97
  %i.hp = load float, ptr %i.hb, align 4, !tbaa !97
  %i.hq = fadd float %i.ho, %i.hp
  store float %i.hq, ptr %i.hb, align 4, !tbaa !97
  %i.hr = load float, ptr %gep214, align 4, !tbaa !97
  %i.hs = fsub float %i.hl, %i.hr
  store float %i.hs, ptr %i.hj, align 4, !tbaa !97
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %._crit_edge166.us, label %scalar.ph403, !llvm.loop !459

._crit_edge166.us:                                ; preds = %scalar.ph403, %middle.block422
  %i.ht = getelementptr inbounds [4 x i8], ptr %.0126170.us, i64 %i.ev
  %i.hu = add nuw nsw i32 %.0124171.us, 1         ; 2 uses
  %exitcond201.not = icmp eq i32 %i.hu, %i.ep
  br i1 %exitcond201.not, label %._crit_edge174, label %.lr.ph173.split.us, !llvm.loop !460

._crit_edge174:                                   ; preds = %._crit_edge166.us, %.lr.ph162, %.lr.ph173, %._crit_edge163
  %i.hv = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.hv, %i.x
  %i.hw = icmp eq ptr %i.hv, null
  %or.cond.i = or i1 %.not.i.i150, %i.hw
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge174
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge174, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
end_hunk_1
