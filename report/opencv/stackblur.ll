inline.NumInlined: 296
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK2cv23ParallelStackBlurColumnIhiEclERKNS_5RangeE:bb.a
  %bound0330 = icmp ult ptr %invariant.gep203, %scevgep246
  %bound1331 = icmp ult ptr %invariant.gep205, %scevgep241
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %i.ag, %scevgep244
  %bound1339 = icmp ult ptr %.3.us, %scevgep242
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %i.ag, %scevgep246
  %bound1343 = icmp ult ptr %invariant.gep205, %scevgep242
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  br i1 %conflict.rdx345, label %scalar.ph346.preheader, label %vector.ph348

vector.ph348:                                     ; preds = %vector.memcheck235
  %i.ff = load float, ptr %i.eb, align 4, !tbaa !55, !alias.scope !177
  %broadcast.splatinsert353 = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat354 = shufflevector <4 x float> %broadcast.splatinsert353, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph348
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next364, %vector.body350 ] ; 8 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index351 ; 5 uses
  %wide.load352 = load <4 x i32>, ptr %i.fg, align 16, !tbaa !129, !alias.scope !180, !noalias !182
  %i.fh = sitofp <4 x i32> %wide.load352 to <4 x float>
  %i.fi = fmul <4 x float> %broadcast.splat354, %i.fh
  %i.fj = fptoui <4 x float> %i.fi to <4 x i8>
  %i.fk = getelementptr inbounds nuw i8, ptr %.0126170.us, i64 %index351
  store <4 x i8> %i.fj, ptr %i.fk, align 1, !tbaa !14, !alias.scope !188, !noalias !190
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index351 ; 4 uses
  %wide.load355 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !129, !alias.scope !191, !noalias !192 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %i.fg, align 16, !tbaa !129, !alias.scope !180, !noalias !182
  %i.fm = sub nsw <4 x i32> %wide.load356, %wide.load355
  store <4 x i32> %i.fm, ptr %i.fg, align 16, !tbaa !129, !alias.scope !180, !noalias !182
  %i.fn = getelementptr i8, ptr %invariant.gep203, i64 %index351 ; 2 uses
  %wide.load357 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !14, !alias.scope !193, !noalias !194
  %i.fo = zext <4 x i8> %wide.load357 to <4 x i32>
  %i.fp = sub nsw <4 x i32> %wide.load355, %i.fo
  store <4 x i32> %i.fp, ptr %i.fl, align 4, !tbaa !129, !alias.scope !191, !noalias !192
  %i.fq = getelementptr inbounds nuw i8, ptr %.3.us, i64 %index351
  %wide.load358 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !14, !alias.scope !195 ; 2 uses
  store <4 x i8> %wide.load358, ptr %i.fn, align 1, !tbaa !14, !alias.scope !193, !noalias !194
  %i.fr = zext <4 x i8> %wide.load358 to <4 x i32>
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index351 ; 3 uses
  %wide.load359 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !129, !alias.scope !196, !noalias !197
  %i.ft = add nsw <4 x i32> %wide.load359, %i.fr  ; 3 uses
  store <4 x i32> %i.ft, ptr %i.fs, align 4, !tbaa !129, !alias.scope !196, !noalias !197
  %wide.load360 = load <4 x i32>, ptr %i.fg, align 16, !tbaa !129, !alias.scope !180, !noalias !182
  %i.fu = add nsw <4 x i32> %wide.load360, %i.ft
  store <4 x i32> %i.fu, ptr %i.fg, align 16, !tbaa !129, !alias.scope !180, !noalias !182
  %i.fv = getelementptr i8, ptr %invariant.gep205, i64 %index351
  %wide.load361 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !14, !alias.scope !198 ; 2 uses
  %i.fw = zext <4 x i8> %wide.load361 to <4 x i32>
  %wide.load362 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !129, !alias.scope !191, !noalias !192
  %i.fx = add nsw <4 x i32> %wide.load362, %i.fw
  store <4 x i32> %i.fx, ptr %i.fl, align 4, !tbaa !129, !alias.scope !191, !noalias !192
  %i.fy = zext <4 x i8> %wide.load361 to <4 x i32>
  %i.fz = sub nsw <4 x i32> %i.ft, %i.fy
  store <4 x i32> %i.fz, ptr %i.fs, align 4, !tbaa !129, !alias.scope !196, !noalias !197
  %index.next364 = add nuw i64 %index351, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next364, %n.vec349
  br i1 %i.ga, label %middle.block365, label %vector.body350, !llvm.loop !199

middle.block365:                                  ; preds = %vector.body350
  br i1 %cmp.n366, label %._crit_edge166.us, label %scalar.ph346.preheader

scalar.ph346.preheader:                           ; preds = %vector.memcheck235, %.lr.ph.us175, %middle.block365
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck235 ], [ 0, %.lr.ph.us175 ], [ %n.vec349, %middle.block365 ]
  br label %scalar.ph346

scalar.ph346:                                     ; preds = %scalar.ph346.preheader, %scalar.ph346
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph346 ], [ %indvars.iv189.ph, %scalar.ph346.preheader ] ; 8 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv189 ; 5 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !129
  %i.gd = sitofp i32 %i.gc to float
  %i.ge = load float, ptr %i.eb, align 4, !tbaa !55
  %i.gf = fmul float %i.ge, %i.gd
  %i.gg = fptoui float %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.0126170.us, i64 %indvars.iv189
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !14
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv189 ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !129 ; 2 uses
  %i.gk = load i32, ptr %i.gb, align 4, !tbaa !129
  %i.gl = sub nsw i32 %i.gk, %i.gj
  store i32 %i.gl, ptr %i.gb, align 4, !tbaa !129
  %gep204 = getelementptr i8, ptr %invariant.gep203, i64 %indvars.iv189 ; 2 uses
  %i.gm = load i8, ptr %gep204, align 1, !tbaa !14
  %i.gn = zext i8 %i.gm to i32
  %i.go = sub nsw i32 %i.gj, %i.gn
  store i32 %i.go, ptr %i.gi, align 4, !tbaa !129
  %i.gp = getelementptr inbounds nuw i8, ptr %.3.us, i64 %indvars.iv189
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !14  ; 2 uses
  store i8 %i.gq, ptr %gep204, align 1, !tbaa !14
  %i.gr = zext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv189 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !129
  %i.gu = add nsw i32 %i.gt, %i.gr                ; 3 uses
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !129
  %i.gv = load i32, ptr %i.gb, align 4, !tbaa !129
  %i.gw = add nsw i32 %i.gv, %i.gu
  store i32 %i.gw, ptr %i.gb, align 4, !tbaa !129
  %gep206 = getelementptr i8, ptr %invariant.gep205, i64 %indvars.iv189 ; 2 uses
  %i.gx = load i8, ptr %gep206, align 1, !tbaa !14
  %i.gy = zext i8 %i.gx to i32
  %i.gz = load i32, ptr %i.gi, align 4, !tbaa !129
  %i.ha = add nsw i32 %i.gz, %i.gy
  store i32 %i.ha, ptr %i.gi, align 4, !tbaa !129
  %i.hb = load i8, ptr %gep206, align 1, !tbaa !14
  %i.hc = zext i8 %i.hb to i32
  %i.hd = sub nsw i32 %i.gu, %i.hc
  store i32 %i.hd, ptr %i.gs, align 4, !tbaa !129
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge166.us, label %scalar.ph346, !llvm.loop !200

._crit_edge166.us:                                ; preds = %scalar.ph346, %middle.block365
  %i.he = load i32, ptr %i.ea, align 4, !tbaa !52
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %.0126170.us, i64 %i.hf
  %i.hh = add nuw nsw i32 %.0124171.us, 1         ; 2 uses
  %i.hi = load i32, ptr %i.dx, align 8, !tbaa !53
  %i.hj = icmp slt i32 %i.hh, %i.hi
  br i1 %i.hj, label %.lr.ph173.split.us, label %._crit_edge174, !llvm.loop !201

._crit_edge174:                                   ; preds = %._crit_edge166.us, %.lr.ph173, %._crit_edge163
  %i.hk = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.hk, %i.x
  %i.hl = icmp eq ptr %i.hk, null
  %or.cond.i = or i1 %.not.i.i150, %i.hl
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge174
  call void @_ZdaPv(ptr noundef nonnull %i.hk) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge174, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv20ParallelStackBlurRowIsiED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv20ParallelStackBlurRowIsiEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 4 uses
  %i.e = icmp slt i32 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.d
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %.preheader372, label %._crit_edge613

.preheader372:                                    ; preds = %bb.a
  %.not312460 = icmp slt i32 %i.b, 0              ; 3 uses
  br i1 %.not312460, label %._crit_edge466, label %.lr.ph465

._crit_edge466.loopexit:                          ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.i = ptrtoint ptr %.sroa.19.1 to i64
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %.preheader372
  %.sroa.19.0.lcssa = phi i64 [ 0, %.preheader372 ], [ %i.i, %._crit_edge466.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader372 ], [ %.sroa.0.1, %._crit_edge466.loopexit ] ; 10 uses
  %i.j = sdiv i32 %i.d, 2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 5 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !34     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %._crit_edge466
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !202, !nonnull !114, !align !115 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !203, !nonnull !114, !align !115 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !60  ; 9 uses
  %i.ad = icmp slt i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !62  ; 5 uses
  %i.ah = sub i32 %i.ag, %i.ac
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !65 ; 19 uses
  %i.aj = mul i32 %i.ah, %i.ai                    ; 3 uses
  %i.ak = mul i32 %i.ai, %i.ac                    ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  %.not314484 = icmp slt i32 %i.ac, 1
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax558 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %3 = zext nneg i32 %i.ac to i64
  %4 = sext i32 %i.m to i64                       ; 2 uses
  %i.ao = shl nuw nsw i64 %3, 1
  %i.ap = sext i32 %i.ai to i64                   ; 4 uses
  %i.aq = add i32 %i.ac, 1                        ; 2 uses
  %i.ar = sext i32 %i.ak to i64
  %i.as = zext i32 %i.ai to i64                   ; 5 uses
  %i.at = shl nuw nsw i64 %i.as, 1                ; 5 uses
  %i.au = sub i32 %i.o, %i.m
  %i.av = icmp slt i32 %i.ai, 1
  %wide.trip.count570 = zext nneg i32 %i.ac to i64
  %i.aw = mul nuw nsw i64 %i.ao, %i.as
  %wide.trip.count585 = sext i32 %i.aj to i64
  %wide.trip.count580 = zext i32 %i.aq to i64     ; 4 uses
  %wide.trip.count600 = sext i32 %i.ag to i64
  %i.ax = zext nneg i32 %smax558 to i64           ; 2 uses
  %brmerge700 = select i1 %i.ad, i1 true, i1 %i.av
  %i.ay = icmp eq i32 %i.b, 0
  %i.az = add nsw i64 %wide.trip.count580, -1     ; 2 uses
  %min.iters.check736 = icmp ugt i32 %i.aq, 8
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond753 = select i1 %min.iters.check736, i1 %ident.check.not, i1 false
  %n.vec738 = and i64 %i.az, -8                   ; 3 uses
  %i.ba = or disjoint i64 %n.vec738, 1
  %cmp.n751 = icmp eq i64 %i.az, %n.vec738
  %i.bb = and i64 %wide.trip.count580, 1
  %lcmp.mod789.not.not = icmp eq i64 %i.bb, 0
  %i.bc = add nsw i64 %wide.trip.count580, -1
  %i.bd = icmp eq i32 %i.b, 0
  br label %bb.q

.lr.ph465:                                        ; preds = %.preheader372, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0265464 = phi i32 [ %i.cr, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader372 ] ; 5 uses
  %.sroa.0.0463 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 13 uses
  %.sroa.13.0462 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 9 uses
  %.sroa.19.0461 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 4 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %.not316 = icmp sgt i32 %.0265464, %i.be
  br i1 %.not316, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph465
  %i.bf = trunc i32 %.0265464 to i16
  %i.bg = add i16 %i.bf, 1                        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0462, %.sroa.19.0461
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.bg, ptr %.sroa.13.0462, align 2, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0462, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.bi = ptrtoint ptr %.sroa.13.0462 to i64
  %i.bj = ptrtoint ptr %.sroa.0.0463 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775806
  br i1 %i.bl, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bm = ashr exact i64 %i.bk, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 4611686018427387903)
  %i.bq = select i1 %i.bo, i64 4611686018427387903, i64 %i.bp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #21
          to label %.noexc320 unwind label %.loopexit ; 4 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store i16 %i.bg, ptr %i.bt, align 2, !tbaa !56
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc320
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bs, ptr align 2 %.sroa.0.0463, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc320
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.bk) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph465
  %i.bx = shl nsw i32 %i.be, 1
  %i.by = sub nsw i32 %i.bx, %.0265464
  %i.bz = trunc i32 %i.by to i16
  %i.ca = add i16 %i.bz, 1                        ; 2 uses
  %.not.i.i321 = icmp eq ptr %.sroa.13.0462, %.sroa.19.0461
  br i1 %.not.i.i321, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.ca, ptr %.sroa.13.0462, align 2, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.13.0462, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.j:                                             ; preds = %bb.h
  %i.cc = ptrtoint ptr %.sroa.13.0462 to i64
  %i.cd = ptrtoint ptr %.sroa.0.0463 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775806
  br i1 %i.cf, label %bb.k, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc328 unwind label %.loopexit.split-lp374

.noexc328:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322: ; preds = %bb.j
  %i.cg = ashr exact i64 %i.ce, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i323 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add i64 %.sroa.speculated.i.i.i.i323, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 4611686018427387903)
  %i.ck = select i1 %i.ci, i64 4611686018427387903, i64 %i.cj ; 3 uses
  %.not.i.i.i.i324 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i324)
  %i.cl = shl nuw nsw i64 %i.ck, 1
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc329 unwind label %.loopexit373 ; 4 uses

.noexc329:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i16 %i.ca, ptr %i.cn, align 2, !tbaa !56
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325

bb.l:                                             ; preds = %.noexc329
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cm, ptr align 2 %.sroa.0.0463, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325: ; preds = %bb.l, %.noexc329
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %.not.i17.i.i.i326 = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i17.i.i.i326, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit373:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322
  %lpad.loopexit375 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp374:                            ; preds = %bb.k
  %lpad.loopexit.split-lp376 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.i, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327, %bb.c, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.sroa.19.1 = phi ptr [ %.sroa.19.0461, %bb.c ], [ %i.bw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %.sroa.19.0461, %bb.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.bh, %bb.c ], [ %i.bv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %i.cb, %bb.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0463, %bb.c ], [ %i.bs, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %.sroa.0.0463, %bb.i ] ; 2 uses
  %i.cr = add nuw nsw i32 %.0265464, 1
  %exitcond554.not = icmp eq i32 %.0265464, %i.c
  br i1 %exitcond554.not, label %._crit_edge466.loopexit, label %.lr.ph465, !llvm.loop !204

bb.n:                                             ; preds = %.loopexit373, %.loopexit.split-lp374, %.loopexit, %.loopexit.split-lp
  %.pn317 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit375, %.loopexit373 ], [ %lpad.loopexit.split-lp376, %.loopexit.split-lp374 ]
  %.not.i.i.i = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = ptrtoint ptr %.sroa.13.0462 to i64
  %i.ct = ptrtoint ptr %.sroa.0.0463 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.cu) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit

._crit_edge511:                                   ; preds = %._crit_edge505.split, %._crit_edge466
  %.not.i.i.i331 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorItSaItEED2Ev.exit332, label %bb.p

bb.p:                                             ; preds = %._crit_edge511
  %i.cv = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cw = sub i64 %.sroa.19.0.lcssa, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.cw) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit332

bb.q:                                             ; preds = %.lr.ph510, %._crit_edge505.split
  %indvars.iv609 = phi i64 [ %4, %.lr.ph510 ], [ %indvars.iv.next610, %._crit_edge505.split ] ; 3 uses
  %indvar.a = phi i64 [ 0, %.lr.ph510 ], [ %indvar.next, %._crit_edge505.split ] ; 2 uses
  %i.cx = add i64 %indvar.a, %4
  %i.cy = mul i64 %i.ab, %i.cx
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.cy ; 6 uses
  %i.cz = mul i64 %i.v, %indvars.iv609
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cz ; 8 uses
  %i.db = mul i64 %i.ab, %indvars.iv609
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.db ; 3 uses
  br i1 %brmerge700, label %._crit_edge478.split, label %.preheader371.lr.ph.split

.preheader371.lr.ph.split:                        ; preds = %bb.q
  %i.dd = load float, ptr %i.af, align 8, !tbaa !64
  br i1 %.not312460, label %.preheader371.us.preheader, label %.preheader371

.preheader371.us.preheader:                       ; preds = %.preheader371.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.aw, i1 false), !tbaa !56
  br label %._crit_edge478.split

.preheader371:                                    ; preds = %.preheader371.lr.ph.split, %._crit_edge476.split
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %._crit_edge476.split ], [ 0, %.preheader371.lr.ph.split ] ; 3 uses
  %i.de = mul nuw nsw i64 %indvars.iv565, %i.as
  %i.df = trunc i64 %indvars.iv565 to i32
  %i.dg = sub i32 %i.df, %i.ac                    ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.de
  br label %.preheader369

._crit_edge478.split:                             ; preds = %._crit_edge476.split, %bb.q, %.preheader371.us.preheader
  br i1 %i.al, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %._crit_edge478.split
  %i.di = load float, ptr %i.af, align 8, !tbaa !64
  br label %bb.r

.preheader369:                                    ; preds = %.preheader371, %._crit_edge473.epilog-lcssa
  %indvars.iv560 = phi i64 [ 0, %.preheader371 ], [ %indvars.iv.next561, %._crit_edge473.epilog-lcssa ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv560 ; 3 uses
  br i1 %i.ay, label %._crit_edge473.epilog-lcssa, label %.preheader369.new

._crit_edge476.split:                             ; preds = %._crit_edge473.epilog-lcssa
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count570
  br i1 %exitcond569.not, label %._crit_edge478.split, label %.preheader371, !llvm.loop !205

._crit_edge473.epilog-lcssa:                      ; preds = %.preheader369, %.preheader369.new
  %indvars.iv555.epil.init = phi i64 [ 0, %.preheader369 ], [ %indvars.iv.next556.1, %.preheader369.new ] ; 2 uses
  %.0293471.epil.init = phi i32 [ 0, %.preheader369 ], [ %i.ex, %.preheader369.new ]
  %i.dk = trunc nuw nsw i64 %indvars.iv555.epil.init to i32
  %i.dl = add i32 %i.dg, %i.dk
  %.sroa.speculated341.epil = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dm = mul nuw nsw i32 %.sroa.speculated341.epil, %i.ai
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !56
  %i.dq = sext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv555.epil.init
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !56
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, %i.dq
  %i.dv = add nsw i32 %i.du, %.0293471.epil.init
  %i.dw = sitofp i32 %i.dv to float
  %i.dx = fmul float %i.dd, %i.dw
  %i.dy = fptosi float %i.dx to i16
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv560
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !56
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %exitcond564.not = icmp eq i64 %indvars.iv.next561, %i.as
  br i1 %exitcond564.not, label %._crit_edge476.split, label %.preheader369, !llvm.loop !206

.preheader369.new:                                ; preds = %.preheader369, %.preheader369.new
  %indvars.iv555 = phi i64 [ %indvars.iv.next556.1, %.preheader369.new ], [ 0, %.preheader369 ] ; 4 uses
  %.0293471 = phi i32 [ %i.ex, %.preheader369.new ], [ 0, %.preheader369 ]
  %niter = phi i64 [ %niter.next.1, %.preheader369.new ], [ 0, %.preheader369 ]
  %i.ea = trunc nuw nsw i64 %indvars.iv555 to i32
  %i.eb = add i32 %i.dg, %i.ea
  %.sroa.speculated341 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %i.ec = mul nuw nsw i32 %.sroa.speculated341, %i.ai
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !56
  %i.eg = sext i16 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv555
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !56
  %i.ej = zext i16 %i.ei to i32
  %i.ek = mul nsw i32 %i.ej, %i.eg
  %i.el = add nsw i32 %i.ek, %.0293471
  %indvars.iv.next556 = or disjoint i64 %indvars.iv555, 1 ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv.next556 to i32
  %i.en = add i32 %i.dg, %i.em
  %.sroa.speculated341.1 = tail call i32 @llvm.smax.i32(i32 %i.en, i32 0)
  %i.eo = mul nuw nsw i32 %.sroa.speculated341.1, %i.ai
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !56
  %i.es = sext i16 %i.er to i32
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next556
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !56
  %i.ev = zext i16 %i.eu to i32
  %i.ew = mul nsw i32 %i.ev, %i.es
  %i.ex = add nsw i32 %i.ew, %i.el                ; 2 uses
  %indvars.iv.next556.1 = add nuw nsw i64 %indvars.iv555, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.ax
  br i1 %niter.ncmp.1, label %._crit_edge473.epilog-lcssa, label %.preheader369.new, !llvm.loop !207

bb.r:                                             ; preds = %.lr.ph493, %._crit_edge489
  %indvars.iv582 = phi i64 [ %i.ar, %.lr.ph493 ], [ %indvars.iv.next583, %._crit_edge489 ] ; 8 uses
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.da, i64 %indvars.iv582
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !56
  %i.fa = sext i16 %i.ez to i32
  %i.fb = load i16, ptr %i.l, align 2, !tbaa !56
  %i.fc = zext i16 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.fa                ; 3 uses
  br i1 %.not314484, label %._crit_edge489, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %bb.r
  %invariant.gep = getelementptr [2 x i8], ptr %i.da, i64 %indvars.iv582 ; 4 uses
  br i1 %or.cond753, label %vector.ph737, label %.lr.ph488.preheader754

vector.ph737:                                     ; preds = %.lr.ph488.preheader
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fd, i64 0
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph737
  %index740 = phi i64 [ 0, %vector.ph737 ], [ %index.next749, %vector.body739 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fe, %vector.ph737 ], [ %i.fy, %vector.body739 ]
  %vec.phi741 = phi <4 x i32> [ zeroinitializer, %vector.ph737 ], [ %i.fz, %vector.body739 ]
  %i.ff = or disjoint i64 %index740, 1            ; 3 uses
  %i.fg = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %wide.load742.a = load <4 x i16>, ptr %i.fg, align 2, !tbaa !56
  %wide.load743 = load <4 x i16>, ptr %i.fh, align 2, !tbaa !56
  %i.fi = sext <4 x i16> %wide.load742.a to <4 x i32>
  %i.fj = sext <4 x i16> %wide.load743 to <4 x i32>
  %i.fk = sub nsw i64 %indvars.iv582, %i.ff
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -6
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -14
  %wide.load744.a = load <4 x i16>, ptr %i.fm, align 2, !tbaa !56
  %wide.load745.a = load <4 x i16>, ptr %i.fn, align 2, !tbaa !56
  %reverse = shufflevector <4 x i16> %wide.load744.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse746 = shufflevector <4 x i16> %wide.load745.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fo = sext <4 x i16> %reverse to <4 x i32>
  %i.fp = sext <4 x i16> %reverse746 to <4 x i32>
  %i.fq = add nsw <4 x i32> %i.fo, %i.fi
  %i.fr = add nsw <4 x i32> %i.fp, %i.fj
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ff ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %wide.load747 = load <4 x i16>, ptr %i.fs, align 2, !tbaa !56
  %wide.load748 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !56
  %i.fu = zext <4 x i16> %wide.load747 to <4 x i32>
  %i.fv = zext <4 x i16> %wide.load748 to <4 x i32>
  %i.fw = mul nsw <4 x i32> %i.fq, %i.fu
  %i.fx = mul nsw <4 x i32> %i.fr, %i.fv
  %i.fy = add <4 x i32> %i.fw, %vec.phi           ; 2 uses
  %i.fz = add <4 x i32> %i.fx, %vec.phi741        ; 2 uses
  %index.next749 = add nuw i64 %index740, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next749, %n.vec738
  br i1 %i.ga, label %middle.block750, label %vector.body739, !llvm.loop !208

middle.block750:                                  ; preds = %vector.body739
  %bin.rdx = add <4 x i32> %i.fz, %i.fy
  %i.gb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n751, label %._crit_edge489, label %.lr.ph488.preheader754

.lr.ph488.preheader754:                           ; preds = %.lr.ph488.preheader, %middle.block750
  %indvars.iv577.ph = phi i64 [ 1, %.lr.ph488.preheader ], [ %i.ba, %middle.block750 ] ; 5 uses
  %.1294486.ph = phi i32 [ %i.fd, %.lr.ph488.preheader ], [ %i.gb, %middle.block750 ] ; 2 uses
  br i1 %lcmp.mod789.not.not, label %.lr.ph488.prol, label %.lr.ph488.prol.loopexit

.lr.ph488.prol:                                   ; preds = %.lr.ph488.preheader754
  %i.gc = mul nsw i64 %indvars.iv577.ph, %i.ap    ; 2 uses
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gc
  %i.gd = load i16, ptr %gep.prol, align 2, !tbaa !56
  %i.ge = sext i16 %i.gd to i32
  %i.gf = sub nsw i64 %indvars.iv582, %i.gc
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !56
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add nsw i32 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv577.ph
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !56
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nsw i32 %i.gj, %i.gm
  %i.go = add nsw i32 %i.gn, %.1294486.ph         ; 2 uses
  %indvars.iv.next578.prol = add nuw nsw i64 %indvars.iv577.ph, 1
  br label %.lr.ph488.prol.loopexit

.lr.ph488.prol.loopexit:                          ; preds = %.lr.ph488.prol, %.lr.ph488.preheader754
  %.lcssa758.unr = phi i32 [ poison, %.lr.ph488.preheader754 ], [ %i.go, %.lr.ph488.prol ]
  %indvars.iv577.unr = phi i64 [ %indvars.iv577.ph, %.lr.ph488.preheader754 ], [ %indvars.iv.next578.prol, %.lr.ph488.prol ]
  %.1294486.unr = phi i32 [ %.1294486.ph, %.lr.ph488.preheader754 ], [ %i.go, %.lr.ph488.prol ]
  %i.gp = icmp eq i64 %indvars.iv577.ph, %i.bc
  br i1 %i.gp, label %._crit_edge489, label %.lr.ph488

._crit_edge489:                                   ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488, %middle.block750, %bb.r
  %.1294.lcssa = phi i32 [ %i.fd, %bb.r ], [ %i.gb, %middle.block750 ], [ %.lcssa758.unr, %.lr.ph488.prol.loopexit ], [ %i.ht, %.lr.ph488 ]
  %i.gq = sitofp i32 %.1294.lcssa to float
  %i.gr = fmul float %i.di, %i.gq
  %i.gs = fptosi float %i.gr to i16
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %indvars.iv582
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !56
  %indvars.iv.next583 = add nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge494, label %bb.r, !llvm.loop !209

.lr.ph488:                                        ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488
  %indvars.iv577 = phi i64 [ %indvars.iv.next578.1, %.lr.ph488 ], [ %indvars.iv577.unr, %.lr.ph488.prol.loopexit ] ; 4 uses
  %.1294486 = phi i32 [ %i.ht, %.lr.ph488 ], [ %.1294486.unr, %.lr.ph488.prol.loopexit ]
  %i.gu = mul nsw i64 %indvars.iv577, %i.ap       ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gu
  %i.gv = load i16, ptr %gep, align 2, !tbaa !56
  %i.gw = sext i16 %i.gv to i32
  %i.gx = sub nsw i64 %indvars.iv582, %i.gu
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !56
  %i.ha = sext i16 %i.gz to i32
  %i.hb = add nsw i32 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv577
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !56
  %i.he = zext i16 %i.hd to i32
  %i.hf = mul nsw i32 %i.hb, %i.he
  %i.hg = add nsw i32 %i.hf, %.1294486
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv.next578, %i.ap  ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hh
  %i.hi = load i16, ptr %gep.1, align 2, !tbaa !56
  %i.hj = sext i16 %i.hi to i32
  %i.hk = sub nsw i64 %indvars.iv582, %i.hh
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !56
  %i.hn = sext i16 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, %i.hj
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next578
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !56
  %i.hr = zext i16 %i.hq to i32
  %i.hs = mul nsw i32 %i.ho, %i.hr
  %i.ht = add nsw i32 %i.hs, %i.hg                ; 2 uses
  %indvars.iv.next578.1 = add nuw nsw i64 %indvars.iv577, 2 ; 2 uses
  %exitcond581.not.1 = icmp eq i64 %indvars.iv.next578.1, %wide.trip.count580
  br i1 %exitcond581.not.1, label %._crit_edge489, label %.lr.ph488, !llvm.loop !210

end_hunk_0
begin_hunk_1_@_ZNK2cv23ParallelStackBlurColumnIsiEclERKNS_5RangeE:bb.a
  br i1 %min.iters.check261, label %scalar.ph260.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.us175
  %scevgep219 = getelementptr i8, ptr %.0126170.us, i64 %i.ex ; 3 uses
  %i.ga = shl nsw i64 %i.fy, 1
  %scevgep222 = getelementptr i8, ptr %scevgep221, i64 %i.ga ; 3 uses
  %scevgep223 = getelementptr i8, ptr %.3.us, i64 %i.ex ; 2 uses
  %i.gb = shl nsw i64 %i.fz, 1
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %i.gb ; 2 uses
  %bound0229 = icmp ult ptr %.0126170.us, %scevgep222
  %bound1230 = icmp ult ptr %invariant.gep203, %scevgep219
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0232 = icmp ult ptr %.0126170.us, %scevgep223
  %bound1233 = icmp ult ptr %.3.us, %scevgep219
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %.0126170.us, %scevgep225
  %bound1237 = icmp ult ptr %invariant.gep205, %scevgep219
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %invariant.gep203, %scevgep223
  %bound1241 = icmp ult ptr %.3.us, %scevgep222
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %invariant.gep203, %scevgep225
  %bound1245 = icmp ult ptr %invariant.gep205, %scevgep222
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %conflict.rdx259.reass = or i1 %conflict.rdx247, %invariant.op284
  br i1 %conflict.rdx259.reass, label %scalar.ph260.preheader, label %vector.body266

vector.body266:                                   ; preds = %vector.memcheck218, %vector.body266
  %index267 = phi i64 [ %index.next275, %vector.body266 ], [ 0, %vector.memcheck218 ] ; 8 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index267 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %i.gc, align 16, !tbaa !129, !alias.scope !246 ; 2 uses
  %i.gd = sitofp <4 x i32> %wide.load268 to <4 x float>
  %i.ge = fmul <4 x float> %broadcast.splat265, %i.gd
  %i.gf = fptosi <4 x float> %i.ge to <4 x i16>
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %index267
  store <4 x i16> %i.gf, ptr %i.gg, align 2, !tbaa !56, !alias.scope !249, !noalias !251
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index267 ; 4 uses
  %wide.load269 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !129, !alias.scope !255, !noalias !257 ; 2 uses
  %i.gi = sub nsw <4 x i32> %wide.load268, %wide.load269
  %i.gj = getelementptr [2 x i8], ptr %invariant.gep203, i64 %index267 ; 2 uses
  %wide.load270 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !56, !alias.scope !259, !noalias !260
  %i.gk = sext <4 x i16> %wide.load270 to <4 x i32>
  %i.gl = sub nsw <4 x i32> %wide.load269, %i.gk
  store <4 x i32> %i.gl, ptr %i.gh, align 4, !tbaa !129, !alias.scope !255, !noalias !257
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %index267
  %wide.load271 = load <4 x i16>, ptr %i.gm, align 2, !tbaa !56, !alias.scope !261 ; 2 uses
  store <4 x i16> %wide.load271, ptr %i.gj, align 2, !tbaa !56, !alias.scope !259, !noalias !260
  %i.gn = sext <4 x i16> %wide.load271 to <4 x i32>
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index267 ; 3 uses
  %wide.load272 = load <4 x i32>, ptr %i.go, align 4, !tbaa !129, !alias.scope !262, !noalias !246
  %i.gp = add nsw <4 x i32> %wide.load272, %i.gn  ; 3 uses
  store <4 x i32> %i.gp, ptr %i.go, align 4, !tbaa !129, !alias.scope !262, !noalias !246
  %i.gq = add nsw <4 x i32> %i.gi, %i.gp
  store <4 x i32> %i.gq, ptr %i.gc, align 16, !tbaa !129, !alias.scope !246
  %i.gr = getelementptr [2 x i8], ptr %invariant.gep205, i64 %index267
  %wide.load273 = load <4 x i16>, ptr %i.gr, align 2, !tbaa !56, !alias.scope !263
  %i.gs = sext <4 x i16> %wide.load273 to <4 x i32> ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !129, !alias.scope !255, !noalias !257
  %i.gt = add nsw <4 x i32> %wide.load274, %i.gs
  store <4 x i32> %i.gt, ptr %i.gh, align 4, !tbaa !129, !alias.scope !255, !noalias !257
  %i.gu = sub nsw <4 x i32> %i.gp, %i.gs
  store <4 x i32> %i.gu, ptr %i.go, align 4, !tbaa !129, !alias.scope !262, !noalias !246
  %index.next275 = add nuw i64 %index267, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next275, %n.vec263
  br i1 %i.gv, label %middle.block276, label %vector.body266, !llvm.loop !264

middle.block276:                                  ; preds = %vector.body266
  br i1 %cmp.n277, label %._crit_edge166.us, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %vector.memcheck218, %.lr.ph.us175, %middle.block276
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck218 ], [ 0, %.lr.ph.us175 ], [ %n.vec263, %middle.block276 ]
  br label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.preheader, %scalar.ph260
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph260 ], [ %indvars.iv189.ph, %scalar.ph260.preheader ] ; 8 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv189 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !129 ; 2 uses
  %i.gy = sitofp i32 %i.gx to float
  %i.gz = fmul float %i.ew, %i.gy
  %i.ha = fptosi float %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %indvars.iv189
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !56
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv189 ; 4 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !129 ; 2 uses
  %i.he = sub nsw i32 %i.gx, %i.hd
  %gep204 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %indvars.iv189 ; 2 uses
  %i.hf = load i16, ptr %gep204, align 2, !tbaa !56
  %i.hg = sext i16 %i.hf to i32
  %i.hh = sub nsw i32 %i.hd, %i.hg
  store i32 %i.hh, ptr %i.hc, align 4, !tbaa !129
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %indvars.iv189
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !56 ; 2 uses
  store i16 %i.hj, ptr %gep204, align 2, !tbaa !56
  %i.hk = sext i16 %i.hj to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv189 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !129
  %i.hn = add nsw i32 %i.hm, %i.hk                ; 3 uses
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !129
  %i.ho = add nsw i32 %i.he, %i.hn
  store i32 %i.ho, ptr %i.gw, align 4, !tbaa !129
  %gep206 = getelementptr [2 x i8], ptr %invariant.gep205, i64 %indvars.iv189
  %i.hp = load i16, ptr %gep206, align 2, !tbaa !56
  %i.hq = sext i16 %i.hp to i32                   ; 2 uses
  %i.hr = load i32, ptr %i.hc, align 4, !tbaa !129
  %i.hs = add nsw i32 %i.hr, %i.hq
  store i32 %i.hs, ptr %i.hc, align 4, !tbaa !129
  %i.ht = sub nsw i32 %i.hn, %i.hq
  store i32 %i.ht, ptr %i.hl, align 4, !tbaa !129
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge166.us, label %scalar.ph260, !llvm.loop !265

._crit_edge166.us:                                ; preds = %scalar.ph260, %middle.block276
  %i.hu = load i32, ptr %i.eu, align 4, !tbaa !69
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %.0126170.us, i64 %i.hv
  %i.hx = add nuw nsw i32 %.0124171.us, 1         ; 2 uses
  %i.hy = load i32, ptr %i.er, align 8, !tbaa !70
  %i.hz = icmp slt i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.f, label %._crit_edge174, !llvm.loop !266

._crit_edge174:                                   ; preds = %._crit_edge166.us, %.lr.ph173, %._crit_edge163
  %i.ia = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ia, %i.y
  %i.ib = icmp eq ptr %i.ia, null
  %or.cond.i = or i1 %.not.i.i150, %i.ib
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge174
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge174, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv20ParallelStackBlurRowItiED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv20ParallelStackBlurRowItiEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 4 uses
  %i.e = icmp slt i32 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.d
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %.preheader372, label %._crit_edge613

.preheader372:                                    ; preds = %bb.a
  %.not312460 = icmp slt i32 %i.b, 0              ; 3 uses
  br i1 %.not312460, label %._crit_edge466, label %.lr.ph465

._crit_edge466.loopexit:                          ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.i = ptrtoint ptr %.sroa.19.1 to i64
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %.preheader372
  %.sroa.19.0.lcssa = phi i64 [ 0, %.preheader372 ], [ %i.i, %._crit_edge466.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader372 ], [ %.sroa.0.1, %._crit_edge466.loopexit ] ; 10 uses
  %i.j = sdiv i32 %i.d, 2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 5 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !34     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %._crit_edge466
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !267, !nonnull !114, !align !115 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !268, !nonnull !114, !align !115 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !75  ; 9 uses
  %i.ad = icmp slt i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !77  ; 5 uses
  %i.ah = sub i32 %i.ag, %i.ac
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !80 ; 19 uses
  %i.aj = mul i32 %i.ah, %i.ai                    ; 3 uses
  %i.ak = mul i32 %i.ai, %i.ac                    ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  %.not314484 = icmp slt i32 %i.ac, 1
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax558 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %3 = zext nneg i32 %i.ac to i64
  %4 = sext i32 %i.m to i64                       ; 2 uses
  %i.ao = shl nuw nsw i64 %3, 1
  %i.ap = sext i32 %i.ai to i64                   ; 4 uses
  %i.aq = add i32 %i.ac, 1                        ; 2 uses
  %i.ar = sext i32 %i.ak to i64
  %i.as = zext i32 %i.ai to i64                   ; 5 uses
  %i.at = shl nuw nsw i64 %i.as, 1                ; 5 uses
  %i.au = sub i32 %i.o, %i.m
  %i.av = icmp slt i32 %i.ai, 1
  %wide.trip.count570 = zext nneg i32 %i.ac to i64
  %i.aw = mul nuw nsw i64 %i.ao, %i.as
  %wide.trip.count585 = sext i32 %i.aj to i64
  %wide.trip.count580 = zext i32 %i.aq to i64     ; 4 uses
  %wide.trip.count600 = sext i32 %i.ag to i64
  %i.ax = zext nneg i32 %smax558 to i64           ; 2 uses
  %brmerge700 = select i1 %i.ad, i1 true, i1 %i.av
  %i.ay = icmp eq i32 %i.b, 0
  %i.az = add nsw i64 %wide.trip.count580, -1     ; 2 uses
  %min.iters.check736 = icmp ugt i32 %i.aq, 8
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond753 = select i1 %min.iters.check736, i1 %ident.check.not, i1 false
  %n.vec738 = and i64 %i.az, -8                   ; 3 uses
  %i.ba = or disjoint i64 %n.vec738, 1
  %cmp.n751 = icmp eq i64 %i.az, %n.vec738
  %i.bb = and i64 %wide.trip.count580, 1
  %lcmp.mod789.not.not = icmp eq i64 %i.bb, 0
  %i.bc = add nsw i64 %wide.trip.count580, -1
  %i.bd = icmp eq i32 %i.b, 0
  br label %bb.q

.lr.ph465:                                        ; preds = %.preheader372, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0265464 = phi i32 [ %i.cr, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader372 ] ; 5 uses
  %.sroa.0.0463 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 13 uses
  %.sroa.13.0462 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 9 uses
  %.sroa.19.0461 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader372 ] ; 4 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %.not316 = icmp sgt i32 %.0265464, %i.be
  br i1 %.not316, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph465
  %i.bf = trunc i32 %.0265464 to i16
  %i.bg = add i16 %i.bf, 1                        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0462, %.sroa.19.0461
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.bg, ptr %.sroa.13.0462, align 2, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0462, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.bi = ptrtoint ptr %.sroa.13.0462 to i64
  %i.bj = ptrtoint ptr %.sroa.0.0463 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775806
  br i1 %i.bl, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bm = ashr exact i64 %i.bk, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 4611686018427387903)
  %i.bq = select i1 %i.bo, i64 4611686018427387903, i64 %i.bp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #21
          to label %.noexc320 unwind label %.loopexit ; 4 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store i16 %i.bg, ptr %i.bt, align 2, !tbaa !56
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc320
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bs, ptr align 2 %.sroa.0.0463, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc320
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.bk) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph465
  %i.bx = shl nsw i32 %i.be, 1
  %i.by = sub nsw i32 %i.bx, %.0265464
  %i.bz = trunc i32 %i.by to i16
  %i.ca = add i16 %i.bz, 1                        ; 2 uses
  %.not.i.i321 = icmp eq ptr %.sroa.13.0462, %.sroa.19.0461
  br i1 %.not.i.i321, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.ca, ptr %.sroa.13.0462, align 2, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.13.0462, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.j:                                             ; preds = %bb.h
  %i.cc = ptrtoint ptr %.sroa.13.0462 to i64
  %i.cd = ptrtoint ptr %.sroa.0.0463 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775806
  br i1 %i.cf, label %bb.k, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc328 unwind label %.loopexit.split-lp374

.noexc328:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322: ; preds = %bb.j
  %i.cg = ashr exact i64 %i.ce, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i323 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add i64 %.sroa.speculated.i.i.i.i323, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 4611686018427387903)
  %i.ck = select i1 %i.ci, i64 4611686018427387903, i64 %i.cj ; 3 uses
  %.not.i.i.i.i324 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i324)
  %i.cl = shl nuw nsw i64 %i.ck, 1
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc329 unwind label %.loopexit373 ; 4 uses

.noexc329:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i16 %i.ca, ptr %i.cn, align 2, !tbaa !56
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325

bb.l:                                             ; preds = %.noexc329
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cm, ptr align 2 %.sroa.0.0463, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325: ; preds = %bb.l, %.noexc329
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %.not.i17.i.i.i326 = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i17.i.i.i326, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i325
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit373:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i322
  %lpad.loopexit375 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp374:                            ; preds = %bb.k
  %lpad.loopexit.split-lp376 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.i, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327, %bb.c, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.sroa.19.1 = phi ptr [ %.sroa.19.0461, %bb.c ], [ %i.bw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %.sroa.19.0461, %bb.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.bh, %bb.c ], [ %i.bv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %i.cb, %bb.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0463, %bb.c ], [ %i.bs, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.cm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i327 ], [ %.sroa.0.0463, %bb.i ] ; 2 uses
  %i.cr = add nuw nsw i32 %.0265464, 1
  %exitcond554.not = icmp eq i32 %.0265464, %i.c
  br i1 %exitcond554.not, label %._crit_edge466.loopexit, label %.lr.ph465, !llvm.loop !269

bb.n:                                             ; preds = %.loopexit373, %.loopexit.split-lp374, %.loopexit, %.loopexit.split-lp
  %.pn317 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit375, %.loopexit373 ], [ %lpad.loopexit.split-lp376, %.loopexit.split-lp374 ]
  %.not.i.i.i = icmp eq ptr %.sroa.0.0463, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = ptrtoint ptr %.sroa.13.0462 to i64
  %i.ct = ptrtoint ptr %.sroa.0.0463 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0463, i64 noundef %i.cu) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit

._crit_edge511:                                   ; preds = %._crit_edge505.split, %._crit_edge466
  %.not.i.i.i331 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorItSaItEED2Ev.exit332, label %bb.p

bb.p:                                             ; preds = %._crit_edge511
  %i.cv = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cw = sub i64 %.sroa.19.0.lcssa, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.cw) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit332

bb.q:                                             ; preds = %.lr.ph510, %._crit_edge505.split
  %indvars.iv609 = phi i64 [ %4, %.lr.ph510 ], [ %indvars.iv.next610, %._crit_edge505.split ] ; 3 uses
  %indvar.a = phi i64 [ 0, %.lr.ph510 ], [ %indvar.next, %._crit_edge505.split ] ; 2 uses
  %i.cx = add i64 %indvar.a, %4
  %i.cy = mul i64 %i.ab, %i.cx
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.cy ; 6 uses
  %i.cz = mul i64 %i.v, %indvars.iv609
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cz ; 8 uses
  %i.db = mul i64 %i.ab, %indvars.iv609
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.db ; 3 uses
  br i1 %brmerge700, label %._crit_edge478.split, label %.preheader371.lr.ph.split

.preheader371.lr.ph.split:                        ; preds = %bb.q
  %i.dd = load float, ptr %i.af, align 8, !tbaa !79
  br i1 %.not312460, label %.preheader371.us.preheader, label %.preheader371

.preheader371.us.preheader:                       ; preds = %.preheader371.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.aw, i1 false), !tbaa !56
  br label %._crit_edge478.split

.preheader371:                                    ; preds = %.preheader371.lr.ph.split, %._crit_edge476.split
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %._crit_edge476.split ], [ 0, %.preheader371.lr.ph.split ] ; 3 uses
  %i.de = mul nuw nsw i64 %indvars.iv565, %i.as
  %i.df = trunc i64 %indvars.iv565 to i32
  %i.dg = sub i32 %i.df, %i.ac                    ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.de
  br label %.preheader369

._crit_edge478.split:                             ; preds = %._crit_edge476.split, %bb.q, %.preheader371.us.preheader
  br i1 %i.al, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %._crit_edge478.split
  %i.di = load float, ptr %i.af, align 8, !tbaa !79
  br label %bb.r

.preheader369:                                    ; preds = %.preheader371, %._crit_edge473.epilog-lcssa
  %indvars.iv560 = phi i64 [ 0, %.preheader371 ], [ %indvars.iv.next561, %._crit_edge473.epilog-lcssa ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv560 ; 3 uses
  br i1 %i.ay, label %._crit_edge473.epilog-lcssa, label %.preheader369.new

._crit_edge476.split:                             ; preds = %._crit_edge473.epilog-lcssa
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count570
  br i1 %exitcond569.not, label %._crit_edge478.split, label %.preheader371, !llvm.loop !270

._crit_edge473.epilog-lcssa:                      ; preds = %.preheader369, %.preheader369.new
  %indvars.iv555.epil.init = phi i64 [ 0, %.preheader369 ], [ %indvars.iv.next556.1, %.preheader369.new ] ; 2 uses
  %.0293471.epil.init = phi i32 [ 0, %.preheader369 ], [ %i.ex, %.preheader369.new ]
  %i.dk = trunc nuw nsw i64 %indvars.iv555.epil.init to i32
  %i.dl = add i32 %i.dg, %i.dk
  %.sroa.speculated341.epil = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dm = mul nuw nsw i32 %.sroa.speculated341.epil, %i.ai
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !56
  %i.dq = zext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv555.epil.init
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !56
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw nsw i32 %i.dt, %i.dq
  %i.dv = add nuw nsw i32 %i.du, %.0293471.epil.init
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = fmul float %i.dd, %i.dw
  %i.dy = fptoui float %i.dx to i16
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv560
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !56
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %exitcond564.not = icmp eq i64 %indvars.iv.next561, %i.as
  br i1 %exitcond564.not, label %._crit_edge476.split, label %.preheader369, !llvm.loop !271

.preheader369.new:                                ; preds = %.preheader369, %.preheader369.new
  %indvars.iv555 = phi i64 [ %indvars.iv.next556.1, %.preheader369.new ], [ 0, %.preheader369 ] ; 4 uses
  %.0293471 = phi i32 [ %i.ex, %.preheader369.new ], [ 0, %.preheader369 ]
  %niter = phi i64 [ %niter.next.1, %.preheader369.new ], [ 0, %.preheader369 ]
  %i.ea = trunc nuw nsw i64 %indvars.iv555 to i32
  %i.eb = add i32 %i.dg, %i.ea
  %.sroa.speculated341 = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %i.ec = mul nuw nsw i32 %.sroa.speculated341, %i.ai
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !56
  %i.eg = zext i16 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv555
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !56
  %i.ej = zext i16 %i.ei to i32
  %i.ek = mul nuw nsw i32 %i.ej, %i.eg
  %i.el = add nuw nsw i32 %i.ek, %.0293471
  %indvars.iv.next556 = or disjoint i64 %indvars.iv555, 1 ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv.next556 to i32
  %i.en = add i32 %i.dg, %i.em
  %.sroa.speculated341.1 = tail call i32 @llvm.smax.i32(i32 %i.en, i32 0)
  %i.eo = mul nuw nsw i32 %.sroa.speculated341.1, %i.ai
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !56
  %i.es = zext i16 %i.er to i32
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next556
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !56
  %i.ev = zext i16 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ev, %i.es
  %i.ex = add nuw nsw i32 %i.ew, %i.el            ; 2 uses
  %indvars.iv.next556.1 = add nuw nsw i64 %indvars.iv555, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.ax
  br i1 %niter.ncmp.1, label %._crit_edge473.epilog-lcssa, label %.preheader369.new, !llvm.loop !272

bb.r:                                             ; preds = %.lr.ph493, %._crit_edge489
  %indvars.iv582 = phi i64 [ %i.ar, %.lr.ph493 ], [ %indvars.iv.next583, %._crit_edge489 ] ; 8 uses
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.da, i64 %indvars.iv582
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !56
  %i.fa = zext i16 %i.ez to i32
  %i.fb = load i16, ptr %i.l, align 2, !tbaa !56
  %i.fc = zext i16 %i.fb to i32
  %i.fd = mul nuw nsw i32 %i.fc, %i.fa            ; 3 uses
  br i1 %.not314484, label %._crit_edge489, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %bb.r
  %invariant.gep = getelementptr [2 x i8], ptr %i.da, i64 %indvars.iv582 ; 4 uses
  br i1 %or.cond753, label %vector.ph737, label %.lr.ph488.preheader754

vector.ph737:                                     ; preds = %.lr.ph488.preheader
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fd, i64 0
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph737
  %index740 = phi i64 [ 0, %vector.ph737 ], [ %index.next749, %vector.body739 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fe, %vector.ph737 ], [ %i.fy, %vector.body739 ]
  %vec.phi741 = phi <4 x i32> [ zeroinitializer, %vector.ph737 ], [ %i.fz, %vector.body739 ]
  %i.ff = or disjoint i64 %index740, 1            ; 3 uses
  %i.fg = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %wide.load742.a = load <4 x i16>, ptr %i.fg, align 2, !tbaa !56
  %wide.load743 = load <4 x i16>, ptr %i.fh, align 2, !tbaa !56
  %i.fi = zext <4 x i16> %wide.load742.a to <4 x i32>
  %i.fj = zext <4 x i16> %wide.load743 to <4 x i32>
  %i.fk = sub nsw i64 %indvars.iv582, %i.ff
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -6
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -14
  %wide.load744.a = load <4 x i16>, ptr %i.fm, align 2, !tbaa !56
  %wide.load745.a = load <4 x i16>, ptr %i.fn, align 2, !tbaa !56
  %reverse = shufflevector <4 x i16> %wide.load744.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse746 = shufflevector <4 x i16> %wide.load745.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fo = zext <4 x i16> %reverse to <4 x i32>
  %i.fp = zext <4 x i16> %reverse746 to <4 x i32>
  %i.fq = add nuw nsw <4 x i32> %i.fo, %i.fi
  %i.fr = add nuw nsw <4 x i32> %i.fp, %i.fj
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ff ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %wide.load747 = load <4 x i16>, ptr %i.fs, align 2, !tbaa !56
  %wide.load748 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !56
  %i.fu = zext <4 x i16> %wide.load747 to <4 x i32>
  %i.fv = zext <4 x i16> %wide.load748 to <4 x i32>
  %i.fw = mul nuw nsw <4 x i32> %i.fq, %i.fu
  %i.fx = mul nuw nsw <4 x i32> %i.fr, %i.fv
  %i.fy = add <4 x i32> %i.fw, %vec.phi           ; 2 uses
  %i.fz = add <4 x i32> %i.fx, %vec.phi741        ; 2 uses
  %index.next749 = add nuw i64 %index740, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next749, %n.vec738
  br i1 %i.ga, label %middle.block750, label %vector.body739, !llvm.loop !273

middle.block750:                                  ; preds = %vector.body739
  %bin.rdx = add <4 x i32> %i.fz, %i.fy
  %i.gb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n751, label %._crit_edge489, label %.lr.ph488.preheader754

.lr.ph488.preheader754:                           ; preds = %.lr.ph488.preheader, %middle.block750
  %indvars.iv577.ph = phi i64 [ 1, %.lr.ph488.preheader ], [ %i.ba, %middle.block750 ] ; 5 uses
  %.1294486.ph = phi i32 [ %i.fd, %.lr.ph488.preheader ], [ %i.gb, %middle.block750 ] ; 2 uses
  br i1 %lcmp.mod789.not.not, label %.lr.ph488.prol, label %.lr.ph488.prol.loopexit

.lr.ph488.prol:                                   ; preds = %.lr.ph488.preheader754
  %i.gc = mul nsw i64 %indvars.iv577.ph, %i.ap    ; 2 uses
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gc
  %i.gd = load i16, ptr %gep.prol, align 2, !tbaa !56
  %i.ge = zext i16 %i.gd to i32
  %i.gf = sub nsw i64 %indvars.iv582, %i.gc
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !56
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add nuw nsw i32 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv577.ph
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !56
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gj, %i.gm
  %i.go = add nuw nsw i32 %i.gn, %.1294486.ph     ; 2 uses
  %indvars.iv.next578.prol = add nuw nsw i64 %indvars.iv577.ph, 1
  br label %.lr.ph488.prol.loopexit

.lr.ph488.prol.loopexit:                          ; preds = %.lr.ph488.prol, %.lr.ph488.preheader754
  %.lcssa758.unr = phi i32 [ poison, %.lr.ph488.preheader754 ], [ %i.go, %.lr.ph488.prol ]
  %indvars.iv577.unr = phi i64 [ %indvars.iv577.ph, %.lr.ph488.preheader754 ], [ %indvars.iv.next578.prol, %.lr.ph488.prol ]
  %.1294486.unr = phi i32 [ %.1294486.ph, %.lr.ph488.preheader754 ], [ %i.go, %.lr.ph488.prol ]
  %i.gp = icmp eq i64 %indvars.iv577.ph, %i.bc
  br i1 %i.gp, label %._crit_edge489, label %.lr.ph488

._crit_edge489:                                   ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488, %middle.block750, %bb.r
  %.1294.lcssa = phi i32 [ %i.fd, %bb.r ], [ %i.gb, %middle.block750 ], [ %.lcssa758.unr, %.lr.ph488.prol.loopexit ], [ %i.ht, %.lr.ph488 ]
  %i.gq = uitofp nneg i32 %.1294.lcssa to float
  %i.gr = fmul float %i.di, %i.gq
  %i.gs = fptoui float %i.gr to i16
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %indvars.iv582
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !56
  %indvars.iv.next583 = add nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge494, label %bb.r, !llvm.loop !274

.lr.ph488:                                        ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488
  %indvars.iv577 = phi i64 [ %indvars.iv.next578.1, %.lr.ph488 ], [ %indvars.iv577.unr, %.lr.ph488.prol.loopexit ] ; 4 uses
  %.1294486 = phi i32 [ %i.ht, %.lr.ph488 ], [ %.1294486.unr, %.lr.ph488.prol.loopexit ]
  %i.gu = mul nsw i64 %indvars.iv577, %i.ap       ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gu
  %i.gv = load i16, ptr %gep, align 2, !tbaa !56
  %i.gw = zext i16 %i.gv to i32
  %i.gx = sub nsw i64 %indvars.iv582, %i.gu
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !56
  %i.ha = zext i16 %i.gz to i32
  %i.hb = add nuw nsw i32 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv577
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !56
  %i.he = zext i16 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.hb, %i.he
  %i.hg = add nuw nsw i32 %i.hf, %.1294486
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv.next578, %i.ap  ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hh
  %i.hi = load i16, ptr %gep.1, align 2, !tbaa !56
  %i.hj = zext i16 %i.hi to i32
  %i.hk = sub nsw i64 %indvars.iv582, %i.hh
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !56
  %i.hn = zext i16 %i.hm to i32
  %i.ho = add nuw nsw i32 %i.hn, %i.hj
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next578
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !56
  %i.hr = zext i16 %i.hq to i32
  %i.hs = mul nuw nsw i32 %i.ho, %i.hr
  %i.ht = add nuw nsw i32 %i.hs, %i.hg            ; 2 uses
  %indvars.iv.next578.1 = add nuw nsw i64 %indvars.iv577, 2 ; 2 uses
  %exitcond581.not.1 = icmp eq i64 %indvars.iv.next578.1, %wide.trip.count580
  br i1 %exitcond581.not.1, label %._crit_edge489, label %.lr.ph488, !llvm.loop !275

end_hunk_1
begin_hunk_2_@_ZNK2cv23ParallelStackBlurColumnItiEclERKNS_5RangeE:bb.a
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %.0126170.us, %scevgep225
  %bound1237 = icmp ult ptr %invariant.gep205, %scevgep219
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %invariant.gep203, %scevgep223
  %bound1241 = icmp ult ptr %.3.us, %scevgep222
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %invariant.gep203, %scevgep225
  %bound1245 = icmp ult ptr %invariant.gep205, %scevgep222
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %conflict.rdx259.reass = or i1 %conflict.rdx247, %invariant.op284
  br i1 %conflict.rdx259.reass, label %scalar.ph260.preheader, label %vector.body266

vector.body266:                                   ; preds = %vector.memcheck218, %vector.body266
  %index267 = phi i64 [ %index.next275, %vector.body266 ], [ 0, %vector.memcheck218 ] ; 8 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index267 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %i.gc, align 16, !tbaa !129, !alias.scope !311 ; 2 uses
  %i.gd = sitofp <4 x i32> %wide.load268 to <4 x float>
  %i.ge = fmul <4 x float> %broadcast.splat265, %i.gd
  %i.gf = fptoui <4 x float> %i.ge to <4 x i16>
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %index267
  store <4 x i16> %i.gf, ptr %i.gg, align 2, !tbaa !56, !alias.scope !314, !noalias !316
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index267 ; 4 uses
  %wide.load269 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !129, !alias.scope !320, !noalias !322 ; 2 uses
  %i.gi = sub nsw <4 x i32> %wide.load268, %wide.load269
  %i.gj = getelementptr [2 x i8], ptr %invariant.gep203, i64 %index267 ; 2 uses
  %wide.load270 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !56, !alias.scope !324, !noalias !325
  %i.gk = zext <4 x i16> %wide.load270 to <4 x i32>
  %i.gl = sub nsw <4 x i32> %wide.load269, %i.gk
  store <4 x i32> %i.gl, ptr %i.gh, align 4, !tbaa !129, !alias.scope !320, !noalias !322
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %index267
  %wide.load271 = load <4 x i16>, ptr %i.gm, align 2, !tbaa !56, !alias.scope !326 ; 2 uses
  store <4 x i16> %wide.load271, ptr %i.gj, align 2, !tbaa !56, !alias.scope !324, !noalias !325
  %i.gn = zext <4 x i16> %wide.load271 to <4 x i32>
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index267 ; 3 uses
  %wide.load272 = load <4 x i32>, ptr %i.go, align 4, !tbaa !129, !alias.scope !327, !noalias !311
  %i.gp = add nsw <4 x i32> %wide.load272, %i.gn  ; 3 uses
  store <4 x i32> %i.gp, ptr %i.go, align 4, !tbaa !129, !alias.scope !327, !noalias !311
  %i.gq = add nsw <4 x i32> %i.gi, %i.gp
  store <4 x i32> %i.gq, ptr %i.gc, align 16, !tbaa !129, !alias.scope !311
  %i.gr = getelementptr [2 x i8], ptr %invariant.gep205, i64 %index267
  %wide.load273 = load <4 x i16>, ptr %i.gr, align 2, !tbaa !56, !alias.scope !328
  %i.gs = zext <4 x i16> %wide.load273 to <4 x i32> ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !129, !alias.scope !320, !noalias !322
  %i.gt = add nsw <4 x i32> %wide.load274, %i.gs
  store <4 x i32> %i.gt, ptr %i.gh, align 4, !tbaa !129, !alias.scope !320, !noalias !322
  %i.gu = sub nsw <4 x i32> %i.gp, %i.gs
  store <4 x i32> %i.gu, ptr %i.go, align 4, !tbaa !129, !alias.scope !327, !noalias !311
  %index.next275 = add nuw i64 %index267, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next275, %n.vec263
  br i1 %i.gv, label %middle.block276, label %vector.body266, !llvm.loop !329

middle.block276:                                  ; preds = %vector.body266
  br i1 %cmp.n277, label %._crit_edge166.us, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %vector.memcheck218, %.lr.ph.us175, %middle.block276
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck218 ], [ 0, %.lr.ph.us175 ], [ %n.vec263, %middle.block276 ]
  br label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.preheader, %scalar.ph260
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph260 ], [ %indvars.iv189.ph, %scalar.ph260.preheader ] ; 8 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv189 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !129 ; 2 uses
  %i.gy = sitofp i32 %i.gx to float
  %i.gz = fmul float %i.ew, %i.gy
  %i.ha = fptoui float %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0126170.us, i64 %indvars.iv189
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !56
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv189 ; 4 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !129 ; 2 uses
  %i.he = sub nsw i32 %i.gx, %i.hd
  %gep204 = getelementptr [2 x i8], ptr %invariant.gep203, i64 %indvars.iv189 ; 2 uses
  %i.hf = load i16, ptr %gep204, align 2, !tbaa !56
  %i.hg = zext i16 %i.hf to i32
  %i.hh = sub nsw i32 %i.hd, %i.hg
  store i32 %i.hh, ptr %i.hc, align 4, !tbaa !129
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.3.us, i64 %indvars.iv189
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !56 ; 2 uses
  store i16 %i.hj, ptr %gep204, align 2, !tbaa !56
  %i.hk = zext i16 %i.hj to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv189 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !129
  %i.hn = add nsw i32 %i.hm, %i.hk                ; 3 uses
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !129
  %i.ho = add nsw i32 %i.he, %i.hn
  store i32 %i.ho, ptr %i.gw, align 4, !tbaa !129
  %gep206 = getelementptr [2 x i8], ptr %invariant.gep205, i64 %indvars.iv189
  %i.hp = load i16, ptr %gep206, align 2, !tbaa !56
  %i.hq = zext i16 %i.hp to i32                   ; 2 uses
  %i.hr = load i32, ptr %i.hc, align 4, !tbaa !129
  %i.hs = add nsw i32 %i.hr, %i.hq
  store i32 %i.hs, ptr %i.hc, align 4, !tbaa !129
  %i.ht = sub nsw i32 %i.hn, %i.hq
  store i32 %i.ht, ptr %i.hl, align 4, !tbaa !129
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge166.us, label %scalar.ph260, !llvm.loop !330

._crit_edge166.us:                                ; preds = %scalar.ph260, %middle.block276
  %i.hu = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %.0126170.us, i64 %i.hv
  %i.hx = add nuw nsw i32 %.0124171.us, 1         ; 2 uses
  %i.hy = load i32, ptr %i.er, align 8, !tbaa !85
  %i.hz = icmp slt i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.f, label %._crit_edge174, !llvm.loop !331

._crit_edge174:                                   ; preds = %._crit_edge166.us, %.lr.ph173, %._crit_edge163
  %i.ia = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ia, %i.y
  %i.ib = icmp eq ptr %i.ia, null
  %or.cond.i = or i1 %.not.i.i150, %i.ib
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge174
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #19
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90   ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 4 uses
  %i.e = icmp slt i32 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92   ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.d
  %or.cond670 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond670, label %.preheader353, label %._crit_edge615

.preheader353:                                    ; preds = %bb.a
  %.not307432 = icmp slt i32 %i.b, 0              ; 3 uses
  br i1 %.not307432, label %._crit_edge438, label %.lr.ph437

._crit_edge438.loopexit:                          ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.i = ptrtoint ptr %.sroa.19.1 to i64
  br label %._crit_edge438

._crit_edge438:                                   ; preds = %._crit_edge438.loopexit, %.preheader353
  %.sroa.19.0.lcssa = phi i64 [ 0, %.preheader353 ], [ %i.i, %._crit_edge438.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader353 ], [ %.sroa.0.1, %._crit_edge438.loopexit ] ; 10 uses
  %i.j = sdiv i32 %i.d, 2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k ; 4 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !34     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %._crit_edge438
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !332, !nonnull !114, !align !115 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !333, !nonnull !114, !align !115 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109 ; 9 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !90  ; 9 uses
  %i.ad = icmp slt i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !92  ; 4 uses
  %i.ah = sub i32 %i.ag, %i.ac
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !95 ; 18 uses
  %i.aj = mul i32 %i.ah, %i.ai                    ; 7 uses
  %i.ak = mul i32 %i.ai, %i.ac                    ; 3 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  %.not309455 = icmp slt i32 %i.ac, 1
  %i.am = icmp slt i32 %i.ai, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax547 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %3 = sext i32 %i.ac to i64                      ; 2 uses
  %i.ao = sext i32 %i.ai to i64                   ; 7 uses
  %i.ap = add i32 %i.ac, 1                        ; 2 uses
  %i.aq = sext i32 %i.ak to i64                   ; 6 uses
  %i.ar = sext i32 %i.m to i64                    ; 5 uses
  %wide.trip.count613 = sext i32 %i.o to i64      ; 2 uses
  %i.as = icmp slt i32 %i.ai, 1
  %wide.trip.count558 = zext i32 %i.ai to i64     ; 12 uses
  %i.at = zext nneg i32 %i.ac to i64
  %wide.trip.count568 = zext nneg i32 %i.ai to i64 ; 2 uses
  %wide.trip.count578 = sext i32 %i.aj to i64     ; 5 uses
  %wide.trip.count573 = zext i32 %i.ap to i64
  %wide.trip.count583 = sext i32 %i.aj to i64
  %wide.trip.count598 = sext i32 %i.ag to i64     ; 2 uses
  %wide.trip.count593 = zext nneg i32 %i.ai to i64
  %wide.trip.count608 = sext i32 %i.ag to i64
  %wide.trip.count603 = zext nneg i32 %i.ai to i64
  %i.au = mul i64 %i.ab, %i.ar                    ; 2 uses
  %i.av = shl nsw i64 %i.ao, 2
  %i.aw = shl nsw i64 %wide.trip.count598, 2
  %i.ax = add nsw i64 %i.aw, -4
  %i.ay = mul i64 %i.ax, %i.ao
  %i.az = shl nuw nsw i64 %wide.trip.count558, 2
  %scevgep905 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ba = mul i64 %i.ab, %i.ar
  %i.bb = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.bc = getelementptr i8, ptr %i.z, i64 %i.ba
  %scevgep922.a = getelementptr i8, ptr %i.bc, i64 %i.bb ; 2 uses
  %i.bd = add nsw i64 %wide.trip.count613, -1     ; 2 uses
  %i.be = mul i64 %i.ab, %i.bd
  %i.bf = shl nsw i64 %wide.trip.count578, 2      ; 2 uses
  %i.bg = getelementptr i8, ptr %i.z, i64 %i.be
  %scevgep923 = getelementptr i8, ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bh = mul i64 %i.v, %i.ar
  %i.bi = getelementptr i8, ptr %i.t, i64 %i.bh
  %scevgep924 = getelementptr i8, ptr %i.bi, i64 %i.bb
  %i.bj = mul i64 %i.v, %i.bd
  %i.bk = getelementptr i8, ptr %i.t, i64 %i.bj
  %scevgep925 = getelementptr i8, ptr %i.bk, i64 %i.bf
  %scevgep926 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bl = mul i64 %i.ab, %i.ar                    ; 2 uses
  %i.bm = mul nsw i64 %3, %wide.trip.count558
  %i.bn = shl i64 %i.bm, 2
  %i.bo = zext nneg i32 %smax547 to i64           ; 2 uses
  %i.bp = add nsw i64 %wide.trip.count573, -1     ; 3 uses
  %i.bq = getelementptr i8, ptr %i.z, i64 %i.bl
  %i.br = getelementptr i8, ptr %i.z, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bl
  %i.bt = getelementptr i8, ptr %i.z, i64 %i.au
  %i.bu = getelementptr i8, ptr %i.z, i64 %i.au
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.ay
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.az
  %brmerge673 = select i1 %i.ad, i1 true, i1 %i.as
  %i.bx = icmp eq i32 %i.b, 0
  %min.iters.check959 = icmp ult i32 %i.ai, 8
  %n.vec961 = and i64 %wide.trip.count558, 2147483640 ; 3 uses
  %cmp.n968 = icmp eq i64 %n.vec961, %wide.trip.count558
  %xtraiter1004.a = and i64 %wide.trip.count558, 3 ; 2 uses
  %lcmp.mod1005.not.a = icmp eq i64 %xtraiter1004.a, 0
  %xtraiter1008 = and i64 %i.bp, 1
  %i.by = icmp eq i32 %i.ap, 2
  %unroll_iter1012 = and i64 %i.bp, -2
  %lcmp.mod1009.not = icmp eq i64 %xtraiter1008, 0
  %lcmp.mod1011 = trunc i64 %i.bp to i1
  %i.bz = sub nsw i64 %wide.trip.count578, %i.aq  ; 3 uses
  %min.iters.check937 = icmp ult i64 %i.bz, 8
  %bound0927.a = icmp ult ptr %scevgep922.a, %scevgep925
  %bound1928.a = icmp ult ptr %scevgep924, %scevgep923
  %found.conflict929.a = and i1 %bound0927.a, %bound1928.a
  %i.ca = or i64 %i.v, %i.ab
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = or i1 %found.conflict929.a, %i.cb
  %bound0931 = icmp ult ptr %scevgep922.a, %scevgep926
  %bound1932 = icmp ult ptr %i.af, %scevgep923
  %found.conflict933 = and i1 %bound0931, %bound1932
  %stride.check934 = icmp slt i64 %i.ab, 0
  %i.cd = or i1 %found.conflict933, %stride.check934
  %conflict.rdx935 = or i1 %i.cc, %i.cd
  %n.vec939 = and i64 %i.bz, -8                   ; 3 uses
  %i.ce = add nsw i64 %n.vec939, %i.aq
  %cmp.n950 = icmp eq i64 %i.bz, %n.vec939
  %i.cf = add nsw i64 %wide.trip.count578, -1
  %i.cg = icmp eq i32 %i.b, 0
  %min.iters.check910 = icmp ult i32 %i.ai, 8
  %n.vec912 = and i64 %wide.trip.count558, 2147483640 ; 3 uses
  %cmp.n919 = icmp eq i64 %n.vec912, %wide.trip.count558
  %xtraiter1024 = and i64 %wide.trip.count558, 3  ; 2 uses
  %lcmp.mod1025.not = icmp eq i64 %xtraiter1024, 0
  br label %bb.q

.lr.ph437:                                        ; preds = %.preheader353, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0265436 = phi i32 [ %i.du, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader353 ] ; 5 uses
  %.sroa.0.0435 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader353 ] ; 13 uses
  %.sroa.13.0434 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader353 ] ; 9 uses
  %.sroa.19.0433 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ null, %.preheader353 ] ; 4 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %.not311 = icmp sgt i32 %.0265436, %i.ch
  br i1 %.not311, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph437
  %i.ci = trunc i32 %.0265436 to i16
  %i.cj = add i16 %i.ci, 1                        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0434, %.sroa.19.0433
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.cj, ptr %.sroa.13.0434, align 2, !tbaa !56
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.13.0434, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.cl = ptrtoint ptr %.sroa.13.0434 to i64
  %i.cm = ptrtoint ptr %.sroa.0.0435 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775806
  br i1 %i.co, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cp = ashr exact i64 %i.cn, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add i64 %.sroa.speculated.i.i.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 4611686018427387903)
  %i.ct = select i1 %i.cr, i64 4611686018427387903, i64 %i.cs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #21
          to label %.noexc313 unwind label %.loopexit ; 4 uses

.noexc313:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  store i16 %i.cj, ptr %i.cw, align 2, !tbaa !56
  %i.cx = icmp sgt i64 %i.cn, 0
  br i1 %i.cx, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cv, ptr align 2 %.sroa.0.0435, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc313
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0435, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0435, i64 noundef %i.cn) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph437
  %i.da = shl nsw i32 %i.ch, 1
  %i.db = sub nsw i32 %i.da, %.0265436
  %i.dc = trunc i32 %i.db to i16
  %i.dd = add i16 %i.dc, 1                        ; 2 uses
  %.not.i.i314 = icmp eq ptr %.sroa.13.0434, %.sroa.19.0433
  br i1 %.not.i.i314, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.dd, ptr %.sroa.13.0434, align 2, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.13.0434, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.j:                                             ; preds = %bb.h
  %i.df = ptrtoint ptr %.sroa.13.0434 to i64
  %i.dg = ptrtoint ptr %.sroa.0.0435 to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 6 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775806
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc321 unwind label %.loopexit.split-lp355

.noexc321:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i316 = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add i64 %.sroa.speculated.i.i.i.i316, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 4611686018427387903)
  %i.dn = select i1 %i.dl, i64 4611686018427387903, i64 %i.dm ; 3 uses
  %.not.i.i.i.i317 = icmp ne i64 %i.dn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i317)
  %i.do = shl nuw nsw i64 %i.dn, 1
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #21
          to label %.noexc322 unwind label %.loopexit354 ; 4 uses

.noexc322:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store i16 %i.dd, ptr %i.dq, align 2, !tbaa !56
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

bb.l:                                             ; preds = %.noexc322
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dp, ptr align 2 %.sroa.0.0435, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318: ; preds = %bb.l, %.noexc322
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %.not.i17.i.i.i319 = icmp eq ptr %.sroa.0.0435, null
  br i1 %.not.i17.i.i.i319, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0435, i64 noundef %i.dh) #19
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i318
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dn
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

.loopexit354:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i315
  %lpad.loopexit356 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp355:                            ; preds = %bb.k
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.i, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320, %bb.c, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %.sroa.19.1 = phi ptr [ %.sroa.19.0433, %bb.c ], [ %i.cz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dt, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.19.0433, %bb.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.ck, %bb.c ], [ %i.cy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.ds, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %i.de, %bb.i ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0435, %bb.c ], [ %i.cv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i320 ], [ %.sroa.0.0435, %bb.i ] ; 2 uses
  %i.du = add nuw nsw i32 %.0265436, 1
  %exitcond543.not = icmp eq i32 %.0265436, %i.c
  br i1 %exitcond543.not, label %._crit_edge438.loopexit, label %.lr.ph437, !llvm.loop !334

bb.n:                                             ; preds = %.loopexit354, %.loopexit.split-lp355, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit356, %.loopexit354 ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp355 ]
  %.not.i.i.i = icmp eq ptr %.sroa.0.0435, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = ptrtoint ptr %.sroa.13.0434 to i64
  %i.dw = ptrtoint ptr %.sroa.0.0435 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0435, i64 noundef %i.dx) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn

._crit_edge483:                                   ; preds = %._crit_edge477.split, %._crit_edge438
  %.not.i.i.i324 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorItSaItEED2Ev.exit325, label %bb.p

bb.p:                                             ; preds = %._crit_edge483
  %i.dy = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.dz = sub i64 %.sroa.19.0.lcssa, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.dz) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit325

bb.q:                                             ; preds = %.lr.ph482, %._crit_edge477.split
  %indvar900 = phi i64 [ 0, %.lr.ph482 ], [ %indvar.next901, %._crit_edge477.split ] ; 3 uses
  %indvars.iv610 = phi i64 [ %i.ar, %.lr.ph482 ], [ %indvars.iv.next611, %._crit_edge477.split ] ; 3 uses
  %i.ea = mul i64 %i.ab, %indvar900               ; 2 uses
  %scevgep953 = getelementptr i8, ptr %i.bq, i64 %i.ea
  %scevgep954 = getelementptr i8, ptr %i.bs, i64 %i.ea
  %i.eb = mul i64 %i.ab, %indvar900               ; 2 uses
  %scevgep902 = getelementptr i8, ptr %i.bt, i64 %i.eb
  %scevgep904 = getelementptr i8, ptr %i.bw, i64 %i.eb
  %i.ec = mul i64 %i.v, %indvars.iv610
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ec ; 11 uses
  %i.ee = mul i64 %i.ab, %indvars.iv610
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ee ; 9 uses
  br i1 %brmerge673, label %._crit_edge449.split, label %.preheader352.lr.ph.split

.preheader352.lr.ph.split:                        ; preds = %bb.q
  br i1 %.not307432, label %.preheader352.us.preheader, label %.preheader352

.preheader352.us.preheader:                       ; preds = %.preheader352.lr.ph.split
  %bound0955 = icmp ult ptr %scevgep953, %scevgep926
  %bound1956 = icmp ult ptr %i.af, %scevgep954
  %found.conflict957 = and i1 %bound0955, %bound1956
  br label %.preheader352.us

.preheader352.us:                                 ; preds = %.preheader352.us.preheader, %._crit_edge447.split.us.us
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %._crit_edge447.split.us.us ], [ 0, %.preheader352.us.preheader ] ; 2 uses
  %i.eg = mul nuw nsw i64 %indvars.iv565, %wide.trip.count568
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg ; 6 uses
  %brmerge1046 = select i1 %min.iters.check959, i1 true, i1 %found.conflict957
  br i1 %brmerge1046, label %.preheader350.us.us.preheader, label %vector.ph960

vector.ph960:                                     ; preds = %.preheader352.us
  %i.ei = load float, ptr %i.af, align 8, !tbaa !94, !alias.scope !335
  %i.ej = fmul float %i.ei, 0.000000e+00
  %broadcast.splatinsert964 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat965 = shufflevector <4 x float> %broadcast.splatinsert964, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next966, %vector.body962 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index963 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x float> %broadcast.splat965, ptr %i.ek, align 4, !tbaa !338, !alias.scope !339, !noalias !335
  store <4 x float> %broadcast.splat965, ptr %i.el, align 4, !tbaa !338, !alias.scope !339, !noalias !335
  %index.next966 = add nuw i64 %index963, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next966, %n.vec961
  br i1 %i.em, label %middle.block967, label %vector.body962, !llvm.loop !341

middle.block967:                                  ; preds = %vector.body962
  br i1 %cmp.n968, label %._crit_edge447.split.us.us, label %.preheader350.us.us.preheader

.preheader350.us.us.preheader:                    ; preds = %.preheader352.us, %middle.block967
  %indvars.iv560.ph = phi i64 [ %n.vec961, %middle.block967 ], [ 0, %.preheader352.us ] ; 3 uses
  br i1 %lcmp.mod1005.not.a, label %.preheader350.us.us.prol.loopexit, label %.preheader350.us.us.prol

.preheader350.us.us.prol:                         ; preds = %.preheader350.us.us.preheader, %.preheader350.us.us.prol
  %indvars.iv560.prol = phi i64 [ %indvars.iv.next561.prol, %.preheader350.us.us.prol ], [ %indvars.iv560.ph, %.preheader350.us.us.preheader ] ; 2 uses
  %prol.iter1006 = phi i64 [ %prol.iter1006.next, %.preheader350.us.us.prol ], [ 0, %.preheader350.us.us.preheader ]
  %i.en = load float, ptr %i.af, align 8, !tbaa !94
  %i.eo = fmul float %i.en, 0.000000e+00
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv560.prol
  store float %i.eo, ptr %i.ep, align 4, !tbaa !338
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.prol, 1 ; 2 uses
  %prol.iter1006.next = add i64 %prol.iter1006, 1 ; 2 uses
  %prol.iter1006.cmp.not = icmp eq i64 %prol.iter1006.next, %xtraiter1004.a
  br i1 %prol.iter1006.cmp.not, label %.preheader350.us.us.prol.loopexit, label %.preheader350.us.us.prol, !llvm.loop !342

.preheader350.us.us.prol.loopexit:                ; preds = %.preheader350.us.us.prol, %.preheader350.us.us.preheader
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %.preheader350.us.us.preheader ], [ %indvars.iv.next561.prol, %.preheader350.us.us.prol ]
  %i.eq = sub nsw i64 %indvars.iv560.ph, %wide.trip.count558
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %._crit_edge447.split.us.us, label %.preheader350.us.us

.preheader350.us.us:                              ; preds = %.preheader350.us.us.prol.loopexit, %.preheader350.us.us
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.3, %.preheader350.us.us ], [ %indvars.iv560.unr, %.preheader350.us.us.prol.loopexit ] ; 5 uses
  %i.es = load float, ptr %i.af, align 8, !tbaa !94
  %i.et = fmul float %i.es, 0.000000e+00
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv560
  store float %i.et, ptr %i.eu, align 4, !tbaa !338
  %i.ev = load float, ptr %i.af, align 8, !tbaa !94
  %i.ew = fmul float %i.ev, 0.000000e+00
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv560
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store float %i.ew, ptr %i.ey, align 4, !tbaa !338
  %i.ez = load float, ptr %i.af, align 8, !tbaa !94
  %i.fa = fmul float %i.ez, 0.000000e+00
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv560
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float %i.fa, ptr %i.fc, align 4, !tbaa !338
  %i.fd = load float, ptr %i.af, align 8, !tbaa !94
  %i.fe = fmul float %i.fd, 0.000000e+00
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv560
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store float %i.fe, ptr %i.fg, align 4, !tbaa !338
  %indvars.iv.next561.3 = add nuw nsw i64 %indvars.iv560, 4 ; 2 uses
  %exitcond564.not.3 = icmp eq i64 %indvars.iv.next561.3, %wide.trip.count568
  br i1 %exitcond564.not.3, label %._crit_edge447.split.us.us, label %.preheader350.us.us, !llvm.loop !343

._crit_edge447.split.us.us:                       ; preds = %.preheader350.us.us.prol.loopexit, %.preheader350.us.us, %middle.block967
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %3
  br i1 %exitcond569.not, label %._crit_edge449.split, label %.preheader352.us, !llvm.loop !344

.preheader352:                                    ; preds = %.preheader352.lr.ph.split, %._crit_edge447.split
  %indvars.iv555 = phi i64 [ %indvars.iv.next556, %._crit_edge447.split ], [ 0, %.preheader352.lr.ph.split ] ; 3 uses
  %i.fh = mul nuw nsw i64 %indvars.iv555, %wide.trip.count558
  %i.fi = trunc i64 %indvars.iv555 to i32
  %i.fj = sub i32 %i.fi, %i.ac                    ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fh
  br label %.preheader350

._crit_edge449.split:                             ; preds = %._crit_edge447.split, %._crit_edge447.split.us.us, %bb.q
  br i1 %i.al, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %._crit_edge449.split
  %i.fl = load i16, ptr %i.l, align 2, !tbaa !56
  %i.fm = uitofp i16 %i.fl to float               ; 5 uses
  br i1 %.not309455, label %.lr.ph464.split.us.preheader, label %.lr.ph459

.lr.ph464.split.us.preheader:                     ; preds = %.lr.ph464
  %brmerge1047 = select i1 %min.iters.check937, i1 true, i1 %conflict.rdx935
  br i1 %brmerge1047, label %.lr.ph464.split.us.preheader971, label %vector.ph938

vector.ph938:                                     ; preds = %.lr.ph464.split.us.preheader
  %i.fn = load float, ptr %i.af, align 8, !tbaa !94, !alias.scope !345
  %broadcast.splatinsert946 = insertelement <4 x float> poison, float %i.fn, i64 0
  %broadcast.splat947 = shufflevector <4 x float> %broadcast.splatinsert946, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert940 = insertelement <4 x float> poison, float %i.fm, i64 0
  %broadcast.splat941 = shufflevector <4 x float> %broadcast.splatinsert940, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph938
  %index943 = phi i64 [ 0, %vector.ph938 ], [ %index.next948, %vector.body942 ] ; 2 uses
  %i.fo = add i64 %index943, %i.aq                ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load944 = load <4 x float>, ptr %i.fp, align 4, !tbaa !338, !alias.scope !348
  %wide.load945 = load <4 x float>, ptr %i.fq, align 4, !tbaa !338, !alias.scope !348
  %i.fr = fmul <4 x float> %wide.load944, %broadcast.splat941
  %i.fs = fmul <4 x float> %wide.load945, %broadcast.splat941
  %i.ft = fmul <4 x float> %i.fr, %broadcast.splat947
  %i.fu = fmul <4 x float> %i.fs, %broadcast.splat947
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fo ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x float> %i.ft, ptr %i.fv, align 4, !tbaa !338, !alias.scope !350, !noalias !352
  store <4 x float> %i.fu, ptr %i.fw, align 4, !tbaa !338, !alias.scope !350, !noalias !352
  %index.next948 = add nuw i64 %index943, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next948, %n.vec939
  br i1 %i.fx, label %middle.block949, label %vector.body942, !llvm.loop !353

middle.block949:                                  ; preds = %vector.body942
  br i1 %cmp.n950, label %._crit_edge465, label %.lr.ph464.split.us.preheader971

.lr.ph464.split.us.preheader971:                  ; preds = %.lr.ph464.split.us.preheader, %middle.block949
  %indvars.iv580.ph = phi i64 [ %i.ce, %middle.block949 ], [ %i.aq, %.lr.ph464.split.us.preheader ] ; 6 uses
  %i.fy = sub nsw i64 %wide.trip.count578, %indvars.iv580.ph
  %xtraiter1014 = and i64 %i.fy, 1
  %lcmp.mod1015.not = icmp eq i64 %xtraiter1014, 0
  br i1 %lcmp.mod1015.not, label %.lr.ph464.split.us.prol.loopexit, label %.lr.ph464.split.us.prol

.lr.ph464.split.us.prol:                          ; preds = %.lr.ph464.split.us.preheader971
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv580.ph
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !338
  %i.gb = fmul float %i.ga, %i.fm
  %i.gc = load float, ptr %i.af, align 8, !tbaa !94
  %i.gd = fmul float %i.gb, %i.gc
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv580.ph
  store float %i.gd, ptr %i.ge, align 4, !tbaa !338
  %indvars.iv.next581.prol = add nsw i64 %indvars.iv580.ph, 1
  br label %.lr.ph464.split.us.prol.loopexit

.lr.ph464.split.us.prol.loopexit:                 ; preds = %.lr.ph464.split.us.prol, %.lr.ph464.split.us.preheader971
  %indvars.iv580.unr = phi i64 [ %indvars.iv580.ph, %.lr.ph464.split.us.preheader971 ], [ %indvars.iv.next581.prol, %.lr.ph464.split.us.prol ]
  %i.gf = icmp eq i64 %indvars.iv580.ph, %i.cf
  br i1 %i.gf, label %._crit_edge465, label %.lr.ph464.split.us

.lr.ph464.split.us:                               ; preds = %.lr.ph464.split.us.prol.loopexit, %.lr.ph464.split.us
  %indvars.iv580 = phi i64 [ %indvars.iv.next581.1, %.lr.ph464.split.us ], [ %indvars.iv580.unr, %.lr.ph464.split.us.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv580
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !338
  %i.gi = fmul float %i.gh, %i.fm
  %i.gj = load float, ptr %i.af, align 8, !tbaa !94
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv580
  store float %i.gk, ptr %i.gl, align 4, !tbaa !338
  %indvars.iv.next581 = add nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv.next581
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !338
  %i.go = fmul float %i.gn, %i.fm
  %i.gp = load float, ptr %i.af, align 8, !tbaa !94
  %i.gq = fmul float %i.go, %i.gp
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.next581
  store float %i.gq, ptr %i.gr, align 4, !tbaa !338
  %indvars.iv.next581.1 = add nsw i64 %indvars.iv580, 2 ; 2 uses
  %exitcond584.not.1 = icmp eq i64 %indvars.iv.next581.1, %wide.trip.count583
  br i1 %exitcond584.not.1, label %._crit_edge465, label %.lr.ph464.split.us, !llvm.loop !354

.preheader350:                                    ; preds = %.preheader352, %._crit_edge444.epilog-lcssa
  %indvars.iv550 = phi i64 [ 0, %.preheader352 ], [ %indvars.iv.next551, %._crit_edge444.epilog-lcssa ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv550 ; 3 uses
  br i1 %i.bx, label %._crit_edge444.epilog-lcssa, label %.preheader350.new

._crit_edge447.split:                             ; preds = %._crit_edge444.epilog-lcssa
  %indvars.iv.next556 = add nuw nsw i64 %indvars.iv555, 1 ; 2 uses
  %exitcond559.not = icmp eq i64 %indvars.iv.next556, %i.at
  br i1 %exitcond559.not, label %._crit_edge449.split, label %.preheader352, !llvm.loop !344

._crit_edge444.epilog-lcssa:                      ; preds = %.preheader350, %.preheader350.new
  %indvars.iv544.epil.init = phi i64 [ 0, %.preheader350 ], [ %indvars.iv.next545.1, %.preheader350.new ] ; 2 uses
  %.0289442.epil.init = phi float [ 0.000000e+00, %.preheader350 ], [ %i.hz, %.preheader350.new ]
  %i.gt = trunc nuw nsw i64 %indvars.iv544.epil.init to i32
  %i.gu = add i32 %i.fj, %i.gt
  %.sroa.speculated331.epil = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %i.gv = mul nuw nsw i32 %.sroa.speculated331.epil, %i.ai
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !338
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv544.epil.init
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !56
  %i.hb = uitofp i16 %i.ha to float
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.hb, float %.0289442.epil.init)
  %i.hd = load float, ptr %i.af, align 8, !tbaa !94
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv550
  store float %i.he, ptr %i.hf, align 4, !tbaa !338
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next551, %wide.trip.count558
  br i1 %exitcond554.not, label %._crit_edge447.split, label %.preheader350, !llvm.loop !355

.preheader350.new:                                ; preds = %.preheader350, %.preheader350.new
  %indvars.iv544 = phi i64 [ %indvars.iv.next545.1, %.preheader350.new ], [ 0, %.preheader350 ] ; 4 uses
  %.0289442 = phi float [ %i.hz, %.preheader350.new ], [ 0.000000e+00, %.preheader350 ]
  %niter = phi i64 [ %niter.next.1, %.preheader350.new ], [ 0, %.preheader350 ]
  %i.hg = trunc nuw nsw i64 %indvars.iv544 to i32
  %i.hh = add i32 %i.fj, %i.hg
  %.sroa.speculated331 = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 0)
  %i.hi = mul nuw nsw i32 %.sroa.speculated331, %i.ai
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !338
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv544
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !56
  %i.ho = uitofp i16 %i.hn to float
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.ho, float %.0289442)
  %indvars.iv.next545 = or disjoint i64 %indvars.iv544, 1 ; 2 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv.next545 to i32
  %i.hr = add i32 %i.fj, %i.hq
  %.sroa.speculated331.1 = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.hs = mul nuw nsw i32 %.sroa.speculated331.1, %i.ai
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !338
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next545
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !56
  %i.hy = uitofp i16 %i.hx to float
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hy, float %i.hp) ; 2 uses
  %indvars.iv.next545.1 = add nuw nsw i64 %indvars.iv544, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.bo
  br i1 %niter.ncmp.1, label %._crit_edge444.epilog-lcssa, label %.preheader350.new, !llvm.loop !356

.lr.ph459:                                        ; preds = %.lr.ph464, %._crit_edge460
  %indvars.iv575 = phi i64 [ %indvars.iv.next576, %._crit_edge460 ], [ %i.aq, %.lr.ph464 ] ; 7 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv575
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !338
  %i.ic = fmul float %i.ib, %i.fm                 ; 2 uses
  %invariant.gep664 = getelementptr [4 x i8], ptr %i.ed, i64 %indvars.iv575 ; 3 uses
  br i1 %i.by, label %.epil.preheader1007, label %.lr.ph459.new

._crit_edge460.unr-lcssa:                         ; preds = %.lr.ph459.new
  br i1 %lcmp.mod1009.not, label %._crit_edge460, label %.epil.preheader1007

.epil.preheader1007:                              ; preds = %._crit_edge460.unr-lcssa, %.lr.ph459
  %indvars.iv570.epil.init = phi i64 [ 1, %.lr.ph459 ], [ %indvars.iv.next571.1, %._crit_edge460.unr-lcssa ] ; 2 uses
  %.1290457.epil.init = phi float [ %i.ic, %.lr.ph459 ], [ %i.jj, %._crit_edge460.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1011)
  %i.id = mul nsw i64 %indvars.iv570.epil.init, %i.ao ; 2 uses
  %gep665.epil = getelementptr [4 x i8], ptr %invariant.gep664, i64 %i.id
  %i.ie = load float, ptr %gep665.epil, align 4, !tbaa !338
  %i.if = sub nsw i64 %indvars.iv575, %i.id
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !338
  %i.ii = fadd float %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv570.epil.init
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !56
  %i.il = uitofp i16 %i.ik to float
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.il, float %.1290457.epil.init)
  br label %._crit_edge460

._crit_edge460:                                   ; preds = %._crit_edge460.unr-lcssa, %.epil.preheader1007
  %.lcssa974 = phi float [ %i.jj, %._crit_edge460.unr-lcssa ], [ %i.im, %.epil.preheader1007 ]
  %i.in = load float, ptr %i.af, align 8, !tbaa !94
  %i.io = fmul float %.lcssa974, %i.in
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv575
  store float %i.io, ptr %i.ip, align 4, !tbaa !338
  %indvars.iv.next576 = add nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count578
  br i1 %exitcond579.not, label %._crit_edge465, label %.lr.ph459, !llvm.loop !357

.lr.ph459.new:                                    ; preds = %.lr.ph459, %.lr.ph459.new
  %indvars.iv570 = phi i64 [ %indvars.iv.next571.1, %.lr.ph459.new ], [ 1, %.lr.ph459 ] ; 4 uses
  %.1290457 = phi float [ %i.jj, %.lr.ph459.new ], [ %i.ic, %.lr.ph459 ]
  %niter1013 = phi i64 [ %niter1013.next.1, %.lr.ph459.new ], [ 0, %.lr.ph459 ]
  %i.iq = mul nsw i64 %indvars.iv570, %i.ao       ; 2 uses
  %gep665 = getelementptr [4 x i8], ptr %invariant.gep664, i64 %i.iq
  %i.ir = load float, ptr %gep665, align 4, !tbaa !338
  %i.is = sub nsw i64 %indvars.iv575, %i.iq
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !338
  %i.iv = fadd float %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv570
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !56
  %i.iy = uitofp i16 %i.ix to float
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.iy, float %.1290457)
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.ja = mul nsw i64 %indvars.iv.next571, %i.ao  ; 2 uses
  %gep665.1 = getelementptr [4 x i8], ptr %invariant.gep664, i64 %i.ja
  %i.jb = load float, ptr %gep665.1, align 4, !tbaa !338
  %i.jc = sub nsw i64 %indvars.iv575, %i.ja
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.jc
  %i.je = load float, ptr %i.jd, align 4, !tbaa !338
  %i.jf = fadd float %i.jb, %i.je
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next571
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !56
  %i.ji = uitofp i16 %i.jh to float
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.ji, float %i.iz) ; 3 uses
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %niter1013.next.1 = add nuw i64 %niter1013, 2   ; 2 uses
  %niter1013.ncmp.1 = icmp eq i64 %niter1013.next.1, %unroll_iter1012
  br i1 %niter1013.ncmp.1, label %._crit_edge460.unr-lcssa, label %.lr.ph459.new, !llvm.loop !358

._crit_edge465:                                   ; preds = %._crit_edge460, %.lr.ph464.split.us.prol.loopexit, %.lr.ph464.split.us, %middle.block949, %._crit_edge449.split
  %.0295.lcssa = phi i32 [ %i.ak, %._crit_edge449.split ], [ %i.aj, %middle.block949 ], [ %i.aj, %.lr.ph464.split.us.prol.loopexit ], [ %i.aj, %.lr.ph464.split.us ], [ %i.aj, %._crit_edge460 ]
  %i.jk = sdiv i32 %.0295.lcssa, %i.ai            ; 3 uses
  %i.jl = icmp sge i32 %i.jk, %i.ag
  %brmerge = or i1 %i.jl, %i.am
  br i1 %brmerge, label %._crit_edge477.split, label %.preheader351.lr.ph.split

.preheader351.lr.ph.split:                        ; preds = %._crit_edge465
  br i1 %.not307432, label %.preheader351.us.preheader, label %.preheader351.lr.ph.split.split

.preheader351.us.preheader:                       ; preds = %.preheader351.lr.ph.split
  %i.jm = sext i32 %i.jk to i64                   ; 2 uses
  %i.jn = mul i64 %i.av, %i.jm
  %scevgep903 = getelementptr i8, ptr %scevgep902, i64 %i.jn
  %bound0906 = icmp ult ptr %scevgep903, %scevgep905
  %bound1907 = icmp ult ptr %i.af, %scevgep904
  %found.conflict908 = and i1 %bound0906, %bound1907
  br label %.preheader351.us

.preheader351.us:                                 ; preds = %.preheader351.us.preheader, %._crit_edge475.split.us.us
  %indvars.iv605 = phi i64 [ %i.jm, %.preheader351.us.preheader ], [ %indvars.iv.next606, %._crit_edge475.split.us.us ] ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv605, %i.ao
  %invariant.gep668 = getelementptr [4 x i8], ptr %i.ef, i64 %i.jo ; 6 uses
  %brmerge1048 = select i1 %min.iters.check910, i1 true, i1 %found.conflict908
  br i1 %brmerge1048, label %.preheader.us.us.preheader, label %vector.ph911

vector.ph911:                                     ; preds = %.preheader351.us
  %i.jp = load float, ptr %i.af, align 8, !tbaa !94, !alias.scope !359
  %i.jq = fmul float %i.jp, 0.000000e+00
  %broadcast.splatinsert915 = insertelement <4 x float> poison, float %i.jq, i64 0
  %broadcast.splat916 = shufflevector <4 x float> %broadcast.splatinsert915, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph911
  %index914 = phi i64 [ 0, %vector.ph911 ], [ %index.next917, %vector.body913 ] ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep668, i64 %index914 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  store <4 x float> %broadcast.splat916, ptr %i.jr, align 4, !tbaa !338, !alias.scope !362, !noalias !359
  store <4 x float> %broadcast.splat916, ptr %i.js, align 4, !tbaa !338, !alias.scope !362, !noalias !359
  %index.next917 = add nuw i64 %index914, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next917, %n.vec912
  br i1 %i.jt, label %middle.block918, label %vector.body913, !llvm.loop !364

middle.block918:                                  ; preds = %vector.body913
  br i1 %cmp.n919, label %._crit_edge475.split.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader351.us, %middle.block918
  %indvars.iv600.ph = phi i64 [ %n.vec912, %middle.block918 ], [ 0, %.preheader351.us ] ; 3 uses
  br i1 %lcmp.mod1025.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol

.preheader.us.us.prol:                            ; preds = %.preheader.us.us.preheader, %.preheader.us.us.prol
  %indvars.iv600.prol = phi i64 [ %indvars.iv.next601.prol, %.preheader.us.us.prol ], [ %indvars.iv600.ph, %.preheader.us.us.preheader ] ; 2 uses
  %prol.iter1026 = phi i64 [ %prol.iter1026.next, %.preheader.us.us.prol ], [ 0, %.preheader.us.us.preheader ]
  %i.ju = load float, ptr %i.af, align 8, !tbaa !94
  %i.jv = fmul float %i.ju, 0.000000e+00
  %gep669.prol = getelementptr [4 x i8], ptr %invariant.gep668, i64 %indvars.iv600.prol
  store float %i.jv, ptr %gep669.prol, align 4, !tbaa !338
  %indvars.iv.next601.prol = add nuw nsw i64 %indvars.iv600.prol, 1 ; 2 uses
  %prol.iter1026.next = add i64 %prol.iter1026, 1 ; 2 uses
  %prol.iter1026.cmp.not = icmp eq i64 %prol.iter1026.next, %xtraiter1024
  br i1 %prol.iter1026.cmp.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol, !llvm.loop !365

.preheader.us.us.prol.loopexit:                   ; preds = %.preheader.us.us.prol, %.preheader.us.us.preheader
  %indvars.iv600.unr = phi i64 [ %indvars.iv600.ph, %.preheader.us.us.preheader ], [ %indvars.iv.next601.prol, %.preheader.us.us.prol ]
  %i.jw = sub nsw i64 %indvars.iv600.ph, %wide.trip.count558
  %i.jx = icmp ugt i64 %i.jw, -4
  br i1 %i.jx, label %._crit_edge475.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us
  %indvars.iv600 = phi i64 [ %indvars.iv.next601.3, %.preheader.us.us ], [ %indvars.iv600.unr, %.preheader.us.us.prol.loopexit ] ; 5 uses
  %i.jy = load float, ptr %i.af, align 8, !tbaa !94
  %i.jz = fmul float %i.jy, 0.000000e+00
  %gep669 = getelementptr [4 x i8], ptr %invariant.gep668, i64 %indvars.iv600
  store float %i.jz, ptr %gep669, align 4, !tbaa !338
  %i.ka = load float, ptr %i.af, align 8, !tbaa !94
  %i.kb = fmul float %i.ka, 0.000000e+00
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep668, i64 %indvars.iv600
  %gep669.1 = getelementptr i8, ptr %i.kc, i64 4
  store float %i.kb, ptr %gep669.1, align 4, !tbaa !338
  %i.kd = load float, ptr %i.af, align 8, !tbaa !94
  %i.ke = fmul float %i.kd, 0.000000e+00
  %i.kf = getelementptr [4 x i8], ptr %invariant.gep668, i64 %indvars.iv600
  %gep669.2 = getelementptr i8, ptr %i.kf, i64 8
  store float %i.ke, ptr %gep669.2, align 4, !tbaa !338
  %i.kg = load float, ptr %i.af, align 8, !tbaa !94
  %i.kh = fmul float %i.kg, 0.000000e+00
  %i.ki = getelementptr [4 x i8], ptr %invariant.gep668, i64 %indvars.iv600
  %gep669.3 = getelementptr i8, ptr %i.ki, i64 12
  store float %i.kh, ptr %gep669.3, align 4, !tbaa !338
  %indvars.iv.next601.3 = add nuw nsw i64 %indvars.iv600, 4 ; 2 uses
  %exitcond604.not.3 = icmp eq i64 %indvars.iv.next601.3, %wide.trip.count603
  br i1 %exitcond604.not.3, label %._crit_edge475.split.us.us, label %.preheader.us.us, !llvm.loop !366

._crit_edge475.split.us.us:                       ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us, %middle.block918
  %indvars.iv.next606 = add nsw i64 %indvars.iv605, 1 ; 2 uses
  %exitcond609.not = icmp eq i64 %indvars.iv.next606, %wide.trip.count608
  br i1 %exitcond609.not, label %._crit_edge477.split, label %.preheader351.us, !llvm.loop !367

.preheader351.lr.ph.split.split:                  ; preds = %.preheader351.lr.ph.split
  %i.kj = load i32, ptr %i.an, align 8, !tbaa !129 ; 3 uses
  %i.kk = sext i32 %i.jk to i64
  br label %.preheader351

.preheader351:                                    ; preds = %.preheader351.lr.ph.split.split, %._crit_edge475.split
  %indvars.iv595 = phi i64 [ %i.kk, %.preheader351.lr.ph.split.split ], [ %indvars.iv.next596, %._crit_edge475.split ] ; 3 uses
  %i.kl = trunc nsw i64 %indvars.iv595 to i32
  %i.km = sub i32 %i.kl, %i.ac                    ; 3 uses
  %i.kn = mul nsw i64 %indvars.iv595, %i.ao
  %invariant.gep666 = getelementptr [4 x i8], ptr %i.ef, i64 %i.kn
  br label %.preheader

._crit_edge477.split:                             ; preds = %._crit_edge475.split, %._crit_edge475.split.us.us, %._crit_edge465
  %indvars.iv.next611 = add nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count613
  %indvar.next901 = add i64 %indvar900, 1
  br i1 %exitcond614.not, label %._crit_edge483, label %bb.q, !llvm.loop !368

.preheader:                                       ; preds = %.preheader351, %._crit_edge472.epilog-lcssa
  %indvars.iv590 = phi i64 [ 0, %.preheader351 ], [ %indvars.iv.next591, %._crit_edge472.epilog-lcssa ] ; 3 uses
  %i.ko = getelementptr [4 x i8], ptr %i.ed, i64 %indvars.iv590 ; 3 uses
  br i1 %i.cg, label %._crit_edge472.epilog-lcssa, label %.preheader.new

._crit_edge475.split:                             ; preds = %._crit_edge472.epilog-lcssa
  %indvars.iv.next596 = add nsw i64 %indvars.iv595, 1 ; 2 uses
  %exitcond599.not = icmp eq i64 %indvars.iv.next596, %wide.trip.count598
  br i1 %exitcond599.not, label %._crit_edge477.split, label %.preheader351, !llvm.loop !367

._crit_edge472.epilog-lcssa:                      ; preds = %.preheader, %.preheader.new
  %indvars.iv585.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next586.1, %.preheader.new ] ; 2 uses
  %.2291470.epil.init = phi float [ 0.000000e+00, %.preheader ], [ %i.lu, %.preheader.new ]
  %i.kp = trunc nuw nsw i64 %indvars.iv585.epil.init to i32
  %i.kq = add i32 %i.km, %i.kp
  %.sroa.speculated.epil = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %i.kq)
  %i.kr = mul nsw i32 %.sroa.speculated.epil, %i.ai
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr [4 x i8], ptr %i.ko, i64 %i.ks
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !338
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv585.epil.init
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !56
  %i.kx = uitofp i16 %i.kw to float
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.kx, float %.2291470.epil.init)
  %i.kz = load float, ptr %i.af, align 8, !tbaa !94
  %i.la = fmul float %i.ky, %i.kz
  %gep667 = getelementptr [4 x i8], ptr %invariant.gep666, i64 %indvars.iv590
  store float %i.la, ptr %gep667, align 4, !tbaa !338
  %indvars.iv.next591 = add nuw nsw i64 %indvars.iv590, 1 ; 2 uses
  %exitcond594.not = icmp eq i64 %indvars.iv.next591, %wide.trip.count593
  br i1 %exitcond594.not, label %._crit_edge475.split, label %.preheader, !llvm.loop !369

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv585 = phi i64 [ %indvars.iv.next586.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %.2291470 = phi float [ %i.lu, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %niter1023 = phi i64 [ %niter1023.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.lb = trunc nuw nsw i64 %indvars.iv585 to i32
  %i.lc = add i32 %i.km, %i.lb
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %i.lc)
  %i.ld = mul nsw i32 %.sroa.speculated, %i.ai
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr [4 x i8], ptr %i.ko, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !338
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv585
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !56
  %i.lj = uitofp i16 %i.li to float
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.lj, float %.2291470)
  %indvars.iv.next586 = or disjoint i64 %indvars.iv585, 1 ; 2 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv.next586 to i32
  %i.lm = add i32 %i.km, %i.ll
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %i.lm)
  %i.ln = mul nsw i32 %.sroa.speculated.1, %i.ai
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr [4 x i8], ptr %i.ko, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !338
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next586
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !56
  %i.lt = uitofp i16 %i.ls to float
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.lt, float %i.lk) ; 2 uses
  %indvars.iv.next586.1 = add nuw nsw i64 %indvars.iv585, 2 ; 2 uses
  %niter1023.next.1 = add nuw nsw i64 %niter1023, 2 ; 2 uses
  %niter1023.ncmp.1 = icmp eq i64 %niter1023.next.1, %i.bo
  br i1 %niter1023.ncmp.1, label %._crit_edge472.epilog-lcssa, label %.preheader.new, !llvm.loop !370

._crit_edge615:                                   ; preds = %bb.a
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !95 ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ly = add nsw i32 %i.g, %i.d
  %i.lz = mul nsw i32 %i.ly, %i.lw
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i32 %i.lw, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = add nsw i64 %i.ma, %i.mc
  %i.me = shl nsw i64 %i.md, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.mf = add nsw i64 %i.me, 16                   ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.mg, ptr %2, align 8, !tbaa !132
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i327 = icmp ugt i64 %i.mf, 1032
  store i64 %i.mf, ptr %i.mh, align 8, !tbaa !134
  br i1 %.not.i.i327, label %bb.r, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.r:                                             ; preds = %._crit_edge615
  %i.mi = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mf) #21 ; 2 uses
  store ptr %i.mi, ptr %2, align 8, !tbaa !132
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %._crit_edge615, %bb.r
  %i.mj = phi ptr [ %i.mg, %._crit_edge615 ], [ %i.mi, %bb.r ] ; 2 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = add i64 %i.mk, 15
  %i.mm = and i64 %i.ml, -16                      ; 3 uses
  %i.mn = inttoptr i64 %i.mm to ptr               ; 45 uses
  %i.mo = sext i32 %i.lw to i64                   ; 6 uses
  %i.mp = getelementptr [4 x i8], ptr %i.mn, i64 %i.mo ; 31 uses
  %i.mq = getelementptr [4 x i8], ptr %i.mp, i64 %i.mo ; 6 uses
  %i.mr = xor i32 %i.b, -1
  %i.ms = add i32 %i.g, %i.mr
  %i.mt = mul i32 %i.ms, %i.lw                    ; 9 uses
  %i.mu = load i32, ptr %1, align 4, !tbaa !34    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !36
  %i.mx = icmp slt i32 %i.mu, %i.mw
  br i1 %i.mx, label %.lr.ph430, label %._crit_edge431

.lr.ph430:                                        ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.my = add i32 %i.b, 1
  %i.mz = mul i32 %i.lw, %i.my                    ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nd = icmp sgt i32 %i.mt, 0
  %i.ne = sext i32 %i.mz to i64                   ; 10 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mp, i64 12 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 6 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 6 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mn, i64 12 ; 3 uses
  %i.nm = sub nsw i32 0, %i.mz
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %i.no = sub nsw i32 1, %i.mz
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = sub nsw i32 2, %i.mz
  %i.nr = sext i32 %i.nq to i64                   ; 2 uses
  %i.ns = sub nsw i32 3, %i.mz
  %i.nt = sext i32 %i.ns to i64
  %i.nu = sext i32 %i.mu to i64
  %i.nv = shl nsw i64 %i.mo, 2
  %scevgep696.a = getelementptr i8, ptr %i.mn, i64 %i.nv
  %scevgep699.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.nw = shl nsw i64 %i.mo, 3                    ; 3 uses
  %scevgep700 = getelementptr i8, ptr %i.mn, i64 %i.nw
  %i.nx = shl nsw i64 %i.ne, 2
  %i.ny = sub nsw i64 %i.nw, %i.nx                ; 2 uses
  %scevgep702 = getelementptr i8, ptr %i.mn, i64 %i.ny
  %scevgep704 = getelementptr i8, ptr %i.mn, i64 %i.ny
  %scevgep756 = getelementptr i8, ptr %i.mn, i64 %i.nw
  %i.nz = shl nsw i64 %i.mo, 3                    ; 3 uses
  %i.oa = add i64 %i.mm, %i.nz
  %i.ob = add i64 %i.mm, %i.nz
  %i.oc = shl nsw i64 %i.ne, 2
  %scevgep816.a = getelementptr i8, ptr %i.mn, i64 %i.nz
  %i.od = shl nsw i64 %i.mo, 2                    ; 2 uses
  %scevgep819.a = getelementptr i8, ptr %i.mn, i64 %i.od
end_hunk_2
