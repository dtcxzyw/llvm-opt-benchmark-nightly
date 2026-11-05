Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZN2cv12cpu_baselineL14MulTransposedRIhfEEvRKNS_3MatES4_S4_d:bb.a
  %i.ny = phi <4 x float> [ %i.nx, %._crit_edge298.loopexit ], [ %i.cz, %.lr.ph305 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %indvars.iv389
  store <4 x float> %i.ny, ptr %i.nz, align 4, !tbaa !22
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 4 ; 2 uses
  %i.oa = trunc nuw i64 %indvars.iv.next390 to i32 ; 2 uses
  %.not261 = icmp slt i32 %i.cj, %i.oa
  br i1 %.not261, label %.preheader273, label %.lr.ph305, !llvm.loop !379

.lr.ph316.split:                                  ; preds = %.lr.ph316.split.preheader593, %.lr.ph316.split
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %.lr.ph316.split ], [ %indvars.iv392.ph, %.lr.ph316.split.preheader593 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %indvars.iv392
  store float %i.cl, ptr %i.ob, align 4, !tbaa !22
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.oc = trunc nuw i64 %indvars.iv.next393 to i32
  %i.od = icmp sgt i32 %i.al, %i.oc
  br i1 %i.od, label %.lr.ph316.split, label %._crit_edge317, !llvm.loop !380

._crit_edge317:                                   ; preds = %.lr.ph316.split, %._crit_edge313.us, %middle.block, %.preheader273
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %i.l
  %exitcond405.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count404
  br i1 %exitcond405.not, label %.loopexit, label %bb.t, !llvm.loop !381

.loopexit:                                        ; preds = %._crit_edge317, %._crit_edge352, %.preheader278, %.preheader272
  %.not.i.i262 = icmp eq ptr %i.bi, %i.au
  br i1 %.not.i.i262, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.v:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn255 = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.of = load ptr, ptr %6, align 8, !tbaa !51    ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.of, %i.au
  %i.og = icmp eq ptr %i.of, null
  %or.cond.i265 = or i1 %.not.i.i264, %i.og
  br i1 %or.cond.i265, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.of) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267:         ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL14MulTransposedLIhfEEvRKNS_3MatES4_S4_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, double noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %"class.cv::AutoBuffer.3", align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load i64, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !38
  %i.m = lshr i64 %i.l, 2                         ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48
  %i.p = icmp sgt i32 %i.o, 1
  %i.q = load i64, ptr %i.j, align 8
  %i.r = lshr i64 %i.q, 2
  %i.s = select i1 %i.p, i64 %i.r, i64 0          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41   ; 6 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.y

bb.e:                                             ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ag = icmp eq i32 %i.w, 2
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.w, 0
  %i.al = zext i1 %i.ak to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %i.aj, %bb.f ], [ %i.al, %bb.g ] ; 21 uses
  %i.an = icmp eq i32 %i.w, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp sgt i32 %i.w, -1
  %i.ar = zext i1 %i.aq to i32
  %i.as = select i1 %i.an, i32 %i.ap, i32 %i.ar   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader160, label %bb.k

.preheader160:                                    ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %.preheader160
  %.not155189 = icmp slt i32 %i.am, 4
  %i.au = fmul double %3, 0.000000e+00
  %i.av = fptrunc double %i.au to float           ; 2 uses
  br i1 %.not155189, label %.preheader159.lr.ph.split.us, label %.preheader159.preheader

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.aw = add nsw i32 %i.am, -4                   ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = and i32 %i.aw, -4
  %i.az = add nuw nsw i32 %i.ay, 4
  %i.ba = and i32 %i.aw, -4                       ; 2 uses
  %i.bb = add nuw nsw i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %wide.trip.count255 = zext nneg i32 %i.as to i64 ; 2 uses
  %i.bd = icmp slt i32 %i.az, %i.am
  %i.be = add nsw i32 %i.am, -5
  %xtraiter341 = and i32 %i.am, 1
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %indvars.iv.next245.prol = or disjoint i64 %i.bc, 1
  %i.bf = icmp eq i32 %i.be, %i.ba
  br label %.preheader159

.preheader159.lr.ph.split.us:                     ; preds = %.preheader159.lr.ph
  %i.bg = icmp sgt i32 %i.am, 0
  %wide.trip.count280 = zext nneg i32 %i.as to i64 ; 5 uses
  br i1 %i.bg, label %.preheader159.us.us.preheader, label %.preheader159.us.preheader

.preheader159.us.preheader:                       ; preds = %.preheader159.lr.ph.split.us
  %broadcast.splatinsert324 = insertelement <4 x float> poison, float %i.av, i64 0
  %broadcast.splat325 = shufflevector <4 x float> %broadcast.splatinsert324, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader159.us

.preheader159.us.us.preheader:                    ; preds = %.preheader159.lr.ph.split.us
  %exitcond271.not = icmp eq i32 %i.am, 1
  %exitcond271.not.1 = icmp eq i32 %i.am, 2
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %.split.us.split.us.us.us
  %indvars.iv272 = phi i64 [ 0, %.preheader159.us.us.preheader ], [ %indvars.iv.next273, %.split.us.split.us.us.us ] ; 3 uses
  %.0145204.us.us = phi ptr [ %i.f, %.preheader159.us.us.preheader ], [ %i.cg, %.split.us.split.us.us.us ] ; 2 uses
  %i.bh = mul i64 %i.k, %indvars.iv272
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge199.us.us.us.us, %.preheader159.us.us
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %._crit_edge199.us.us.us.us ], [ %indvars.iv272, %.preheader159.us.us ] ; 3 uses
  %i.bl = mul i64 %i.k, %indvars.iv274
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl ; 3 uses
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !23
  %i.bo = uitofp i8 %i.bn to double
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bq = uitofp i8 %i.bp to double
  %7 = fmul nnan double %i.bo, %i.bq              ; 2 uses
  br i1 %exitcond271.not, label %._crit_edge199.us.us.us.us, label %bb.h

bb.h:                                             ; preds = %.preheader.us.us.us.us
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bs = uitofp i8 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = uitofp i8 %i.bu to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bv, double %7) ; 2 uses
  br i1 %exitcond271.not.1, label %._crit_edge199.us.us.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.by = uitofp i8 %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.cb = uitofp i8 %i.ca to double
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cb, double %i.bw)
  br label %._crit_edge199.us.us.us.us

._crit_edge199.us.us.us.us:                       ; preds = %bb.i, %bb.h, %.preheader.us.us.us.us
  %.lcssa = phi double [ %7, %.preheader.us.us.us.us ], [ %i.bw, %bb.h ], [ %i.cc, %bb.i ]
  %i.cd = fmul double %3, %.lcssa
  %i.ce = fptrunc double %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us.us, i64 %indvars.iv274
  store float %i.ce, ptr %i.cf, align 4, !tbaa !22
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count280
  br i1 %exitcond278.not, label %.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !386

.split.us.split.us.us.us:                         ; preds = %._crit_edge199.us.us.us.us
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us.us, i64 %i.m
  %exitcond281.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count280
  br i1 %exitcond281.not, label %.loopexit, label %.preheader159.us.us, !llvm.loop !387

.preheader159.us:                                 ; preds = %.preheader159.us.preheader, %.split.us.split.us209
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.split.us.split.us209 ], [ 0, %.preheader159.us.preheader ] ; 5 uses
  %.0145204.us = phi ptr [ %i.co, %.split.us.split.us209 ], [ %i.f, %.preheader159.us.preheader ] ; 3 uses
  %i.ch = sub nsw i64 %wide.trip.count280, %indvars.iv257 ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.ch, 8
  br i1 %min.iters.check321, label %.preheader.us.us207.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.preheader159.us
  %n.vec323 = and i64 %i.ch, -8                   ; 3 uses
  %i.ci = add i64 %indvars.iv257, %n.vec323
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %indvars.iv257
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph322
  %index327 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body326 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index327 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %broadcast.splat325, ptr %i.ck, align 4, !tbaa !22
  store <4 x float> %broadcast.splat325, ptr %i.cl, align 4, !tbaa !22
  %index.next328 = add nuw i64 %index327, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.cm, label %middle.block329, label %vector.body326, !llvm.loop !388

middle.block329:                                  ; preds = %vector.body326
  %cmp.n330 = icmp eq i64 %i.ch, %n.vec323
  br i1 %cmp.n330, label %.split.us.split.us209, label %.preheader.us.us207.preheader

.preheader.us.us207.preheader:                    ; preds = %.preheader159.us, %middle.block329
  %indvars.iv259.ph = phi i64 [ %indvars.iv257, %.preheader159.us ], [ %i.ci, %middle.block329 ]
  br label %.preheader.us.us207

.preheader.us.us207:                              ; preds = %.preheader.us.us207.preheader, %.preheader.us.us207
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.preheader.us.us207 ], [ %indvars.iv259.ph, %.preheader.us.us207.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %indvars.iv259
  store float %i.av, ptr %i.cn, align 4, !tbaa !22
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count280
  br i1 %exitcond263.not, label %.split.us.split.us209, label %.preheader.us.us207, !llvm.loop !389

.split.us.split.us209:                            ; preds = %.preheader.us.us207, %middle.block329
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %i.m
  %exitcond266.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count280
  br i1 %exitcond266.not, label %.loopexit, label %.preheader159.us, !llvm.loop !387

.preheader159:                                    ; preds = %.preheader159.preheader, %.split
  %indvars.iv247 = phi i64 [ 0, %.preheader159.preheader ], [ %indvars.iv.next248, %.split ] ; 3 uses
  %.0145204 = phi ptr [ %i.f, %.preheader159.preheader ], [ %i.ez, %.split ] ; 2 uses
  %i.cp = mul i64 %i.k, %indvars.iv247
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.bc
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader159, %._crit_edge199
  %indvars.iv249 = phi i64 [ %indvars.iv247, %.preheader159 ], [ %indvars.iv.next250, %._crit_edge199 ] ; 3 uses
  %i.cs = mul i64 %i.k, %indvars.iv249
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cs ; 7 uses
  br label %bb.j

..preheader_crit_edge:                            ; preds = %bb.j
  br i1 %i.bd, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %lcmp.mod342.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader
  %i.cu = load i8, ptr %i.cr, align 1, !tbaa !23
  %i.cv = uitofp i8 %i.cu to double
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bc
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23
  %i.cy = uitofp i8 %i.cx to double
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cy, double %i.ef) ; 2 uses
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv244.unr = phi i64 [ %i.bc, %.lr.ph198.preheader ], [ %indvars.iv.next245.prol, %.lr.ph198.prol ]
  %.1144197.unr = phi double [ %i.ef, %.lr.ph198.preheader ], [ %i.cz, %.lr.ph198.prol ]
  %.lcssa335.unr = phi double [ poison, %.lr.ph198.preheader ], [ %i.cz, %.lr.ph198.prol ]
  br i1 %i.bf, label %._crit_edge199, label %.lr.ph198

bb.j:                                             ; preds = %.lr.ph193, %bb.j
  %indvars.iv241 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next242, %bb.j ] ; 6 uses
  %.0143191 = phi double [ 0.000000e+00, %.lr.ph193 ], [ %i.ef, %bb.j ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv241
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %i.dc = uitofp i8 %i.db to double
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv241
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !23
  %i.df = uitofp i8 %i.de to double
  %i.dg = or disjoint i64 %indvars.iv241, 1       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !23
  %i.dj = uitofp i8 %i.di to double
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  %i.dm = uitofp i8 %i.dl to double
  %i.dn = fmul nnan double %i.dj, %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.df, double %i.dn)
  %i.dp = or disjoint i64 %indvars.iv241, 2       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !23
  %i.ds = uitofp i8 %i.dr to double
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dp
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = uitofp i8 %i.du to double
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dv, double %i.do)
  %i.dx = or disjoint i64 %indvars.iv241, 3       ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !23
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dx
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !23
  %i.ed = uitofp i8 %i.ec to double
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ed, double %i.dw)
  %i.ef = fadd double %.0143191, %i.ee            ; 4 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next242, %i.ax
  br i1 %.not155, label %..preheader_crit_edge, label %bb.j, !llvm.loop !390

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph198 ], [ %indvars.iv244.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %.1144197 = phi double [ %i.et, %.lr.ph198 ], [ %.1144197.unr, %.lr.ph198.prol.loopexit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv244
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !23
  %i.ei = uitofp i8 %i.eh to double
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv244
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !23
  %i.el = uitofp i8 %i.ek to double
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.el, double %.1144197)
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next245
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !23
  %i.ep = uitofp i8 %i.eo to double
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.next245
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !23
  %i.es = uitofp i8 %i.er to double
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.es, double %i.em) ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv.next245.1 to i32
  %i.ev = icmp sgt i32 %i.am, %i.eu
  br i1 %i.ev, label %.lr.ph198, label %._crit_edge199, !llvm.loop !391

._crit_edge199:                                   ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %..preheader_crit_edge
  %.1144.lcssa = phi double [ %i.ef, %..preheader_crit_edge ], [ %.lcssa335.unr, %.lr.ph198.prol.loopexit ], [ %i.et, %.lr.ph198 ]
  %i.ew = fmul double %3, %.1144.lcssa
  %i.ex = fptrunc double %i.ew to float
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0145204, i64 %indvars.iv249
  store float %i.ex, ptr %i.ey, align 4, !tbaa !22
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond253.not, label %.split, label %.lr.ph193, !llvm.loop !386

.split:                                           ; preds = %._crit_edge199
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0145204, i64 %i.m
  %exitcond256.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.preheader159, !llvm.loop !387

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0.insert.ext.i = zext i32 %i.am to i64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.fa = icmp eq i32 %i.u, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %sext = shl nuw i64 %.sroa.0.0.insert.ext.i, 32
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL14MulTransposedRIhdEEvRKNS_3MatES4_S4_d:bb.a
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.1244318, i64 %indvars.iv398 ; 2 uses
  store <2 x double> %i.oa, ptr %i.oc, align 8, !tbaa !29
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store <2 x double> %i.ob, ptr %i.od, align 8, !tbaa !29
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 4 ; 2 uses
  %i.oe = trunc nuw i64 %indvars.iv.next399 to i32 ; 2 uses
  %.not261 = icmp slt i32 %i.cm, %i.oe
  br i1 %.not261, label %.preheader273, label %.lr.ph305, !llvm.loop !424

.lr.ph316.split:                                  ; preds = %.lr.ph316.split.preheader604, %.lr.ph316.split
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %.lr.ph316.split ], [ %indvars.iv401.ph, %.lr.ph316.split.preheader604 ] ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.1244318, i64 %indvars.iv401
  store double %i.cn, ptr %i.of, align 8, !tbaa !29
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.og = trunc nuw i64 %indvars.iv.next402 to i32
  %i.oh = icmp sgt i32 %i.al, %i.og
  br i1 %i.oh, label %.lr.ph316.split, label %._crit_edge317, !llvm.loop !425

._crit_edge317:                                   ; preds = %.lr.ph316.split, %._crit_edge313.us, %middle.block, %.preheader273
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.1244318, i64 %i.l
  %exitcond414.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count413
  br i1 %exitcond414.not, label %.loopexit, label %bb.u, !llvm.loop !426

.loopexit:                                        ; preds = %._crit_edge317, %._crit_edge352, %._crit_edge352.us, %.preheader278, %.preheader272
  %.not.i.i262 = icmp eq ptr %i.bi, %i.au
  br i1 %.not.i.i262, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn255 = phi { ptr, i32 } [ %i.cb, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.oj = load ptr, ptr %6, align 8, !tbaa !51    ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.oj, %i.au
  %i.ok = icmp eq ptr %i.oj, null
  %or.cond.i265 = or i1 %.not.i.i264, %i.ok
  br i1 %or.cond.i265, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.oj) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267:         ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL14MulTransposedLIhdEEvRKNS_3MatES4_S4_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, double noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [4 x double], align 16            ; 5 uses
  %6 = alloca %"class.cv::AutoBuffer.3", align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load i64, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !38
  %i.m = lshr i64 %i.l, 3                         ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48
  %i.p = icmp sgt i32 %i.o, 1
  %i.q = load i64, ptr %i.j, align 8
  %i.r = lshr i64 %i.q, 3
  %i.s = select i1 %i.p, i64 %i.r, i64 0          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41   ; 6 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.y

bb.e:                                             ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ag = icmp eq i32 %i.w, 2
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.w, 0
  %i.al = zext i1 %i.ak to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %i.aj, %bb.f ], [ %i.al, %bb.g ] ; 21 uses
  %i.an = icmp eq i32 %i.w, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp sgt i32 %i.w, -1
  %i.ar = zext i1 %i.aq to i32
  %i.as = select i1 %i.an, i32 %i.ap, i32 %i.ar   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader160, label %bb.k

.preheader160:                                    ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %.preheader160
  %.not155189 = icmp slt i32 %i.am, 4
  %i.au = fmul double %3, 0.000000e+00            ; 2 uses
  br i1 %.not155189, label %.preheader159.lr.ph.split.us, label %.preheader159.preheader

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.av = add nsw i32 %i.am, -4                   ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i32 %i.av, -4
  %i.ay = add nuw nsw i32 %i.ax, 4
  %i.az = and i32 %i.av, -4                       ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, 4
  %i.bb = zext nneg i32 %i.ba to i64              ; 4 uses
  %wide.trip.count255 = zext nneg i32 %i.as to i64 ; 2 uses
  %i.bc = icmp slt i32 %i.ay, %i.am
  %i.bd = add nsw i32 %i.am, -5
  %xtraiter341 = and i32 %i.am, 1
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %indvars.iv.next245.prol = or disjoint i64 %i.bb, 1
  %i.be = icmp eq i32 %i.bd, %i.az
  br label %.preheader159

.preheader159.lr.ph.split.us:                     ; preds = %.preheader159.lr.ph
  %i.bf = icmp sgt i32 %i.am, 0
  %wide.trip.count280 = zext nneg i32 %i.as to i64 ; 5 uses
  br i1 %i.bf, label %.preheader159.us.us.preheader, label %.preheader159.us.preheader

.preheader159.us.preheader:                       ; preds = %.preheader159.lr.ph.split.us
  %broadcast.splatinsert324 = insertelement <2 x double> poison, double %i.au, i64 0
  %broadcast.splat325 = shufflevector <2 x double> %broadcast.splatinsert324, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader159.us

.preheader159.us.us.preheader:                    ; preds = %.preheader159.lr.ph.split.us
  %exitcond271.not = icmp eq i32 %i.am, 1
  %exitcond271.not.1 = icmp eq i32 %i.am, 2
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %.split.us.split.us.us.us
  %indvars.iv272 = phi i64 [ 0, %.preheader159.us.us.preheader ], [ %indvars.iv.next273, %.split.us.split.us.us.us ] ; 3 uses
  %.0145204.us.us = phi ptr [ %i.f, %.preheader159.us.us.preheader ], [ %i.ce, %.split.us.split.us.us.us ] ; 2 uses
  %i.bg = mul i64 %i.k, %indvars.iv272
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge199.us.us.us.us, %.preheader159.us.us
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %._crit_edge199.us.us.us.us ], [ %indvars.iv272, %.preheader159.us.us ] ; 3 uses
  %i.bk = mul i64 %i.k, %indvars.iv274
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk ; 3 uses
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !23
  %i.bn = uitofp i8 %i.bm to double
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bp = uitofp i8 %i.bo to double
  %7 = fmul nnan double %i.bn, %i.bp              ; 2 uses
  br i1 %exitcond271.not, label %._crit_edge199.us.us.us.us, label %bb.h

bb.h:                                             ; preds = %.preheader.us.us.us.us
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !23
  %i.br = uitofp i8 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bu, double %7) ; 2 uses
  br i1 %exitcond271.not.1, label %._crit_edge199.us.us.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bx = uitofp i8 %i.bw to double
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23
  %i.ca = uitofp i8 %i.bz to double
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.ca, double %i.bv)
  br label %._crit_edge199.us.us.us.us

._crit_edge199.us.us.us.us:                       ; preds = %bb.i, %bb.h, %.preheader.us.us.us.us
  %.lcssa = phi double [ %7, %.preheader.us.us.us.us ], [ %i.bv, %bb.h ], [ %i.cb, %bb.i ]
  %i.cc = fmul double %3, %.lcssa
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us.us, i64 %indvars.iv274
  store double %i.cc, ptr %i.cd, align 8, !tbaa !29
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count280
  br i1 %exitcond278.not, label %.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !431

.split.us.split.us.us.us:                         ; preds = %._crit_edge199.us.us.us.us
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us.us, i64 %i.m
  %exitcond281.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count280
  br i1 %exitcond281.not, label %.loopexit, label %.preheader159.us.us, !llvm.loop !432

.preheader159.us:                                 ; preds = %.preheader159.us.preheader, %.split.us.split.us209
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.split.us.split.us209 ], [ 0, %.preheader159.us.preheader ] ; 5 uses
  %.0145204.us = phi ptr [ %i.cm, %.split.us.split.us209 ], [ %i.f, %.preheader159.us.preheader ] ; 3 uses
  %i.cf = sub nsw i64 %wide.trip.count280, %indvars.iv257 ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.cf, 4
  br i1 %min.iters.check321, label %.preheader.us.us207.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.preheader159.us
  %n.vec323 = and i64 %i.cf, -4                   ; 3 uses
  %i.cg = add i64 %indvars.iv257, %n.vec323
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %indvars.iv257
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph322
  %index327 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body326 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index327 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> %broadcast.splat325, ptr %i.ci, align 8, !tbaa !29
  store <2 x double> %broadcast.splat325, ptr %i.cj, align 8, !tbaa !29
  %index.next328 = add nuw i64 %index327, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.ck, label %middle.block329, label %vector.body326, !llvm.loop !433

middle.block329:                                  ; preds = %vector.body326
  %cmp.n330 = icmp eq i64 %i.cf, %n.vec323
  br i1 %cmp.n330, label %.split.us.split.us209, label %.preheader.us.us207.preheader

.preheader.us.us207.preheader:                    ; preds = %.preheader159.us, %middle.block329
  %indvars.iv259.ph = phi i64 [ %indvars.iv257, %.preheader159.us ], [ %i.cg, %middle.block329 ]
  br label %.preheader.us.us207

.preheader.us.us207:                              ; preds = %.preheader.us.us207.preheader, %.preheader.us.us207
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.preheader.us.us207 ], [ %indvars.iv259.ph, %.preheader.us.us207.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %indvars.iv259
  store double %i.au, ptr %i.cl, align 8, !tbaa !29
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count280
  br i1 %exitcond263.not, label %.split.us.split.us209, label %.preheader.us.us207, !llvm.loop !434

.split.us.split.us209:                            ; preds = %.preheader.us.us207, %middle.block329
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %i.m
  %exitcond266.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count280
  br i1 %exitcond266.not, label %.loopexit, label %.preheader159.us, !llvm.loop !432

.preheader159:                                    ; preds = %.preheader159.preheader, %.split
  %indvars.iv247 = phi i64 [ 0, %.preheader159.preheader ], [ %indvars.iv.next248, %.split ] ; 3 uses
  %.0145204 = phi ptr [ %i.f, %.preheader159.preheader ], [ %i.ew, %.split ] ; 2 uses
  %i.cn = mul i64 %i.k, %indvars.iv247
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cn ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bb
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader159, %._crit_edge199
  %indvars.iv249 = phi i64 [ %indvars.iv247, %.preheader159 ], [ %indvars.iv.next250, %._crit_edge199 ] ; 3 uses
  %i.cq = mul i64 %i.k, %indvars.iv249
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq ; 7 uses
  br label %bb.j

..preheader_crit_edge:                            ; preds = %bb.j
  br i1 %i.bc, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %lcmp.mod342.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader
  %i.cs = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.ct = uitofp i8 %i.cs to double
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bb
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.cw = uitofp i8 %i.cv to double
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cw, double %i.ed) ; 2 uses
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv244.unr = phi i64 [ %i.bb, %.lr.ph198.preheader ], [ %indvars.iv.next245.prol, %.lr.ph198.prol ]
  %.1144197.unr = phi double [ %i.ed, %.lr.ph198.preheader ], [ %i.cx, %.lr.ph198.prol ]
  %.lcssa335.unr = phi double [ poison, %.lr.ph198.preheader ], [ %i.cx, %.lr.ph198.prol ]
  br i1 %i.be, label %._crit_edge199, label %.lr.ph198

bb.j:                                             ; preds = %.lr.ph193, %bb.j
  %indvars.iv241 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next242, %bb.j ] ; 6 uses
  %.0143191 = phi double [ 0.000000e+00, %.lr.ph193 ], [ %i.ed, %bb.j ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv241
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %i.da = uitofp i8 %i.cz to double
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv241
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %i.dd = uitofp i8 %i.dc to double
  %i.de = or disjoint i64 %indvars.iv241, 1       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dh = uitofp i8 %i.dg to double
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !23
  %i.dk = uitofp i8 %i.dj to double
  %i.dl = fmul nnan double %i.dh, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dd, double %i.dl)
  %i.dn = or disjoint i64 %indvars.iv241, 2       ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = uitofp i8 %i.dp to double
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !23
  %i.dt = uitofp i8 %i.ds to double
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dt, double %i.dm)
  %i.dv = or disjoint i64 %indvars.iv241, 3       ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %i.dy = uitofp i8 %i.dx to double
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = uitofp i8 %i.ea to double
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.eb, double %i.du)
  %i.ed = fadd double %.0143191, %i.ec            ; 4 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next242, %i.aw
  br i1 %.not155, label %..preheader_crit_edge, label %bb.j, !llvm.loop !435

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph198 ], [ %indvars.iv244.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %.1144197 = phi double [ %i.er, %.lr.ph198 ], [ %.1144197.unr, %.lr.ph198.prol.loopexit ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv244
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !23
  %i.eg = uitofp i8 %i.ef to double
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv244
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !23
  %i.ej = uitofp i8 %i.ei to double
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.ej, double %.1144197)
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next245
  %i.em = load i8, ptr %i.el, align 1, !tbaa !23
  %i.en = uitofp i8 %i.em to double
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next245
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !23
  %i.eq = uitofp i8 %i.ep to double
  %i.er = tail call double @llvm.fmuladd.f64(double %i.en, double %i.eq, double %i.ek) ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next245.1 to i32
  %i.et = icmp sgt i32 %i.am, %i.es
  br i1 %i.et, label %.lr.ph198, label %._crit_edge199, !llvm.loop !436

._crit_edge199:                                   ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %..preheader_crit_edge
  %.1144.lcssa = phi double [ %i.ed, %..preheader_crit_edge ], [ %.lcssa335.unr, %.lr.ph198.prol.loopexit ], [ %i.er, %.lr.ph198 ]
  %i.eu = fmul double %3, %.1144.lcssa
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0145204, i64 %indvars.iv249
  store double %i.eu, ptr %i.ev, align 8, !tbaa !29
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond253.not, label %.split, label %.lr.ph193, !llvm.loop !431

.split:                                           ; preds = %._crit_edge199
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.0145204, i64 %i.m
  %exitcond256.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.preheader159, !llvm.loop !432

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0.insert.ext.i = zext i32 %i.am to i64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ex = icmp eq i32 %i.u, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %sext = shl nuw i64 %.sroa.0.0.insert.ext.i, 32
  %i.ey = ashr exact i64 %sext, 29                ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baselineL14MulTransposedRItfEEvRKNS_3MatES4_S4_d:bb.a
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %indvars.iv389
  store <4 x float> %i.op, ptr %i.oq, align 4, !tbaa !22
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 4 ; 2 uses
  %i.or = trunc nuw i64 %indvars.iv.next390 to i32 ; 2 uses
  %.not261 = icmp slt i32 %i.ck, %i.or
  br i1 %.not261, label %.preheader273, label %.lr.ph305, !llvm.loop !463

.lr.ph316.split:                                  ; preds = %.lr.ph316.split.preheader578, %.lr.ph316.split
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %.lr.ph316.split ], [ %indvars.iv392.ph, %.lr.ph316.split.preheader578 ] ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %indvars.iv392
  store float %i.cm, ptr %i.os, align 4, !tbaa !22
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.ot = trunc nuw i64 %indvars.iv.next393 to i32
  %i.ou = icmp sgt i32 %i.am, %i.ot
  br i1 %i.ou, label %.lr.ph316.split, label %._crit_edge317, !llvm.loop !464

._crit_edge317:                                   ; preds = %.lr.ph316.split, %._crit_edge313.us, %middle.block, %.preheader273
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.1244318, i64 %i.m
  %exitcond405.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count404
  br i1 %exitcond405.not, label %.loopexit, label %bb.t, !llvm.loop !465

.loopexit:                                        ; preds = %._crit_edge317, %._crit_edge352, %.preheader278, %.preheader272
  %.not.i.i262 = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i.i262, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.v:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn255 = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ow = load ptr, ptr %6, align 8, !tbaa !51    ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.ow, %i.av
  %i.ox = icmp eq ptr %i.ow, null
  %or.cond.i265 = or i1 %.not.i.i264, %i.ox
  br i1 %or.cond.i265, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ow) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267:         ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL14MulTransposedLItfEEvRKNS_3MatES4_S4_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, double noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %"class.cv::AutoBuffer.3", align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load i64, ptr %i.d, align 8, !tbaa !38
  %i.l = lshr i64 %i.k, 1                         ; 6 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !38
  %i.n = lshr i64 %i.m, 2                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp sgt i32 %i.p, 1
  %i.r = load i64, ptr %i.j, align 8
  %i.s = lshr i64 %i.r, 2
  %i.t = select i1 %i.q, i64 %i.s, i64 0          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 6 uses
  %i.y = icmp slt i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.a
  %i.af = icmp sgt i32 %i.x, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ah = icmp eq i32 %i.x, 2
  %i.ai = zext i1 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.al = icmp eq i32 %i.x, 0
  %i.am = zext i1 %i.al to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.an = phi i32 [ %i.ak, %bb.f ], [ %i.am, %bb.g ] ; 21 uses
  %i.ao = icmp eq i32 %i.x, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp sgt i32 %i.x, -1
  %i.as = zext i1 %i.ar to i32
  %i.at = select i1 %i.ao, i32 %i.aq, i32 %i.as   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader160, label %bb.k

.preheader160:                                    ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %.preheader160
  %.not155189 = icmp slt i32 %i.an, 4
  %i.av = fmul double %3, 0.000000e+00
  %i.aw = fptrunc double %i.av to float           ; 2 uses
  br i1 %.not155189, label %.preheader159.lr.ph.split.us, label %.preheader159.preheader

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.ax = add nsw i32 %i.an, -4                   ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = and i32 %i.ax, -4
  %i.ba = add nuw nsw i32 %i.az, 4
  %i.bb = and i32 %i.ax, -4                       ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 4
  %i.bd = zext nneg i32 %i.bc to i64              ; 4 uses
  %wide.trip.count255 = zext nneg i32 %i.at to i64 ; 2 uses
  %i.be = icmp slt i32 %i.ba, %i.an
  %i.bf = add nsw i32 %i.an, -5
  %xtraiter341 = and i32 %i.an, 1
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %indvars.iv.next245.prol = or disjoint i64 %i.bd, 1
  %i.bg = icmp eq i32 %i.bf, %i.bb
  br label %.preheader159

.preheader159.lr.ph.split.us:                     ; preds = %.preheader159.lr.ph
  %i.bh = icmp sgt i32 %i.an, 0
  %wide.trip.count280 = zext nneg i32 %i.at to i64 ; 5 uses
  br i1 %i.bh, label %.preheader159.us.us.preheader, label %.preheader159.us.preheader

.preheader159.us.preheader:                       ; preds = %.preheader159.lr.ph.split.us
  %broadcast.splatinsert324 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat325 = shufflevector <4 x float> %broadcast.splatinsert324, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader159.us

.preheader159.us.us.preheader:                    ; preds = %.preheader159.lr.ph.split.us
  %exitcond271.not = icmp eq i32 %i.an, 1
  %exitcond271.not.1 = icmp eq i32 %i.an, 2
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %.split.us.split.us.us.us
  %indvars.iv272 = phi i64 [ 0, %.preheader159.us.us.preheader ], [ %indvars.iv.next273, %.split.us.split.us.us.us ] ; 3 uses
  %.0145204.us.us = phi ptr [ %i.f, %.preheader159.us.us.preheader ], [ %i.ch, %.split.us.split.us.us.us ] ; 2 uses
  %i.bi = mul i64 %i.l, %indvars.iv272
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bi ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !27
  %i.bl = uitofp i16 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge199.us.us.us.us, %.preheader159.us.us
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %._crit_edge199.us.us.us.us ], [ %indvars.iv272, %.preheader159.us.us ] ; 3 uses
  %i.bo = mul i64 %i.l, %indvars.iv274
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bo ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !27
  %i.br = uitofp i16 %i.bq to double
  %7 = fmul nnan double %i.bl, %i.br              ; 2 uses
  br i1 %exitcond271.not, label %._crit_edge199.us.us.us.us, label %bb.h

bb.h:                                             ; preds = %.preheader.us.us.us.us
  %i.bs = load i16, ptr %i.bm, align 2, !tbaa !27
  %i.bt = uitofp i16 %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !27
  %i.bw = uitofp i16 %i.bv to double
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bw, double %7) ; 2 uses
  br i1 %exitcond271.not.1, label %._crit_edge199.us.us.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = load i16, ptr %i.bn, align 2, !tbaa !27
  %i.bz = uitofp i16 %i.by to double
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !27
  %i.cc = uitofp i16 %i.cb to double
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cc, double %i.bx)
  br label %._crit_edge199.us.us.us.us

._crit_edge199.us.us.us.us:                       ; preds = %bb.i, %bb.h, %.preheader.us.us.us.us
  %.lcssa = phi double [ %7, %.preheader.us.us.us.us ], [ %i.bx, %bb.h ], [ %i.cd, %bb.i ]
  %i.ce = fmul double %3, %.lcssa
  %i.cf = fptrunc double %i.ce to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us.us, i64 %indvars.iv274
  store float %i.cf, ptr %i.cg, align 4, !tbaa !22
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count280
  br i1 %exitcond278.not, label %.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !466

.split.us.split.us.us.us:                         ; preds = %._crit_edge199.us.us.us.us
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us.us, i64 %i.n
  %exitcond281.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count280
  br i1 %exitcond281.not, label %.loopexit, label %.preheader159.us.us, !llvm.loop !467

.preheader159.us:                                 ; preds = %.preheader159.us.preheader, %.split.us.split.us209
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.split.us.split.us209 ], [ 0, %.preheader159.us.preheader ] ; 5 uses
  %.0145204.us = phi ptr [ %i.cp, %.split.us.split.us209 ], [ %i.f, %.preheader159.us.preheader ] ; 3 uses
  %i.ci = sub nsw i64 %wide.trip.count280, %indvars.iv257 ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check321, label %.preheader.us.us207.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.preheader159.us
  %n.vec323 = and i64 %i.ci, -8                   ; 3 uses
  %i.cj = add i64 %indvars.iv257, %n.vec323
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %indvars.iv257
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph322
  %index327 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body326 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index327 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x float> %broadcast.splat325, ptr %i.cl, align 4, !tbaa !22
  store <4 x float> %broadcast.splat325, ptr %i.cm, align 4, !tbaa !22
  %index.next328 = add nuw i64 %index327, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.cn, label %middle.block329, label %vector.body326, !llvm.loop !468

middle.block329:                                  ; preds = %vector.body326
  %cmp.n330 = icmp eq i64 %i.ci, %n.vec323
  br i1 %cmp.n330, label %.split.us.split.us209, label %.preheader.us.us207.preheader

.preheader.us.us207.preheader:                    ; preds = %.preheader159.us, %middle.block329
  %indvars.iv259.ph = phi i64 [ %indvars.iv257, %.preheader159.us ], [ %i.cj, %middle.block329 ]
  br label %.preheader.us.us207

.preheader.us.us207:                              ; preds = %.preheader.us.us207.preheader, %.preheader.us.us207
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.preheader.us.us207 ], [ %indvars.iv259.ph, %.preheader.us.us207.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %indvars.iv259
  store float %i.aw, ptr %i.co, align 4, !tbaa !22
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count280
  br i1 %exitcond263.not, label %.split.us.split.us209, label %.preheader.us.us207, !llvm.loop !469

.split.us.split.us209:                            ; preds = %.preheader.us.us207, %middle.block329
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0145204.us, i64 %i.n
  %exitcond266.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count280
  br i1 %exitcond266.not, label %.loopexit, label %.preheader159.us, !llvm.loop !467

.preheader159:                                    ; preds = %.preheader159.preheader, %.split
  %indvars.iv247 = phi i64 [ 0, %.preheader159.preheader ], [ %indvars.iv.next248, %.split ] ; 3 uses
  %.0145204 = phi ptr [ %i.f, %.preheader159.preheader ], [ %i.fa, %.split ] ; 2 uses
  %i.cq = mul i64 %i.l, %indvars.iv247
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cq ; 7 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.bd
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader159, %._crit_edge199
  %indvars.iv249 = phi i64 [ %indvars.iv247, %.preheader159 ], [ %indvars.iv.next250, %._crit_edge199 ] ; 3 uses
  %i.ct = mul i64 %i.l, %indvars.iv249
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ct ; 7 uses
  br label %bb.j

..preheader_crit_edge:                            ; preds = %bb.j
  br i1 %i.be, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %lcmp.mod342.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader
  %i.cv = load i16, ptr %i.cs, align 2, !tbaa !27
  %i.cw = uitofp i16 %i.cv to double
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.bd
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !27
  %i.cz = uitofp i16 %i.cy to double
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cz, double %i.eg) ; 2 uses
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv244.unr = phi i64 [ %i.bd, %.lr.ph198.preheader ], [ %indvars.iv.next245.prol, %.lr.ph198.prol ]
  %.1144197.unr = phi double [ %i.eg, %.lr.ph198.preheader ], [ %i.da, %.lr.ph198.prol ]
  %.lcssa335.unr = phi double [ poison, %.lr.ph198.preheader ], [ %i.da, %.lr.ph198.prol ]
  br i1 %i.bg, label %._crit_edge199, label %.lr.ph198

bb.j:                                             ; preds = %.lr.ph193, %bb.j
  %indvars.iv241 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next242, %bb.j ] ; 6 uses
  %.0143191 = phi double [ 0.000000e+00, %.lr.ph193 ], [ %i.eg, %bb.j ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv241
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !27
  %i.dd = uitofp i16 %i.dc to double
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv241
  %i.df = load i16, ptr %i.de, align 2, !tbaa !27
  %i.dg = uitofp i16 %i.df to double
  %i.dh = or disjoint i64 %indvars.iv241, 1       ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !27
  %i.dk = uitofp i16 %i.dj to double
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.dh
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !27
  %i.dn = uitofp i16 %i.dm to double
  %i.do = fmul nnan double %i.dk, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dg, double %i.do)
  %i.dq = or disjoint i64 %indvars.iv241, 2       ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !27
  %i.dt = uitofp i16 %i.ds to double
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.dq
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !27
  %i.dw = uitofp i16 %i.dv to double
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dw, double %i.dp)
  %i.dy = or disjoint i64 %indvars.iv241, 3       ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !27
  %i.eb = uitofp i16 %i.ea to double
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.dy
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !27
  %i.ee = uitofp i16 %i.ed to double
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ee, double %i.dx)
  %i.eg = fadd double %.0143191, %i.ef            ; 4 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next242, %i.ay
  br i1 %.not155, label %..preheader_crit_edge, label %bb.j, !llvm.loop !470

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph198 ], [ %indvars.iv244.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %.1144197 = phi double [ %i.eu, %.lr.ph198 ], [ %.1144197.unr, %.lr.ph198.prol.loopexit ]
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv244
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !27
  %i.ej = uitofp i16 %i.ei to double
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv244
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !27
  %i.em = uitofp i16 %i.el to double
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.em, double %.1144197)
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv.next245
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !27
  %i.eq = uitofp i16 %i.ep to double
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next245
  %i.es = load i16, ptr %i.er, align 2, !tbaa !27
  %i.et = uitofp i16 %i.es to double
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.et, double %i.en) ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.ev = trunc nuw i64 %indvars.iv.next245.1 to i32
  %i.ew = icmp sgt i32 %i.an, %i.ev
  br i1 %i.ew, label %.lr.ph198, label %._crit_edge199, !llvm.loop !471

._crit_edge199:                                   ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %..preheader_crit_edge
  %.1144.lcssa = phi double [ %i.eg, %..preheader_crit_edge ], [ %.lcssa335.unr, %.lr.ph198.prol.loopexit ], [ %i.eu, %.lr.ph198 ]
  %i.ex = fmul double %3, %.1144.lcssa
  %i.ey = fptrunc double %i.ex to float
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0145204, i64 %indvars.iv249
  store float %i.ey, ptr %i.ez, align 4, !tbaa !22
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond253.not, label %.split, label %.lr.ph193, !llvm.loop !466

.split:                                           ; preds = %._crit_edge199
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0145204, i64 %i.n
  %exitcond256.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.preheader159, !llvm.loop !467

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.fb = icmp eq i32 %i.v, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %sext = shl nuw i64 %.sroa.0.0.insert.ext.i, 32
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baselineL14MulTransposedRItdEEvRKNS_3MatES4_S4_d:bb.a
  store <2 x double> %i.nr, ptr %i.nt, align 8, !tbaa !29
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <2 x double> %i.ns, ptr %i.nu, align 8, !tbaa !29
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 4 ; 2 uses
  %i.nv = trunc nuw i64 %indvars.iv.next399 to i32 ; 2 uses
  %.not261 = icmp slt i32 %i.cn, %i.nv
  br i1 %.not261, label %.preheader273, label %.lr.ph305, !llvm.loop !499

.lr.ph316.split:                                  ; preds = %.lr.ph316.split.preheader579, %.lr.ph316.split
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %.lr.ph316.split ], [ %indvars.iv401.ph, %.lr.ph316.split.preheader579 ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.1244318, i64 %indvars.iv401
  store double %i.co, ptr %i.nw, align 8, !tbaa !29
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.nx = trunc nuw i64 %indvars.iv.next402 to i32
  %i.ny = icmp sgt i32 %i.am, %i.nx
  br i1 %i.ny, label %.lr.ph316.split, label %._crit_edge317, !llvm.loop !500

._crit_edge317:                                   ; preds = %.lr.ph316.split, %._crit_edge313.us, %middle.block, %.preheader273
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.1244318, i64 %i.m
  %exitcond414.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count413
  br i1 %exitcond414.not, label %.loopexit, label %bb.v, !llvm.loop !501

.loopexit:                                        ; preds = %._crit_edge317, %._crit_edge352, %._crit_edge352.us, %.preheader278, %.preheader272
  %.not.i.i262 = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i.i262, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.x:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn255 = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.oa = load ptr, ptr %6, align 8, !tbaa !51    ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.oa, %i.av
  %i.ob = icmp eq ptr %i.oa, null
  %or.cond.i265 = or i1 %.not.i.i264, %i.ob
  br i1 %or.cond.i265, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.oa) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit267:         ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL14MulTransposedLItdEEvRKNS_3MatES4_S4_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, double noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [4 x double], align 16            ; 5 uses
  %6 = alloca %"class.cv::AutoBuffer.3", align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load i64, ptr %i.d, align 8, !tbaa !38
  %i.l = lshr i64 %i.k, 1                         ; 6 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !38
  %i.n = lshr i64 %i.m, 3                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp sgt i32 %i.p, 1
  %i.r = load i64, ptr %i.j, align 8
  %i.s = lshr i64 %i.r, 3
  %i.t = select i1 %i.q, i64 %i.s, i64 0          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 6 uses
  %i.y = icmp slt i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.a
  %i.af = icmp sgt i32 %i.x, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ah = icmp eq i32 %i.x, 2
  %i.ai = zext i1 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.al = icmp eq i32 %i.x, 0
  %i.am = zext i1 %i.al to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.an = phi i32 [ %i.ak, %bb.f ], [ %i.am, %bb.g ] ; 21 uses
  %i.ao = icmp eq i32 %i.x, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp sgt i32 %i.x, -1
  %i.as = zext i1 %i.ar to i32
  %i.at = select i1 %i.ao, i32 %i.aq, i32 %i.as   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader160, label %bb.k

.preheader160:                                    ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %.preheader160
  %.not155189 = icmp slt i32 %i.an, 4
  %i.av = fmul double %3, 0.000000e+00            ; 2 uses
  br i1 %.not155189, label %.preheader159.lr.ph.split.us, label %.preheader159.preheader

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.aw = add nsw i32 %i.an, -4                   ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = and i32 %i.aw, -4
  %i.az = add nuw nsw i32 %i.ay, 4
  %i.ba = and i32 %i.aw, -4                       ; 2 uses
  %i.bb = add nuw nsw i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %wide.trip.count255 = zext nneg i32 %i.at to i64 ; 2 uses
  %i.bd = icmp slt i32 %i.az, %i.an
  %i.be = add nsw i32 %i.an, -5
  %xtraiter341 = and i32 %i.an, 1
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %indvars.iv.next245.prol = or disjoint i64 %i.bc, 1
  %i.bf = icmp eq i32 %i.be, %i.ba
  br label %.preheader159

.preheader159.lr.ph.split.us:                     ; preds = %.preheader159.lr.ph
  %i.bg = icmp sgt i32 %i.an, 0
  %wide.trip.count280 = zext nneg i32 %i.at to i64 ; 5 uses
  br i1 %i.bg, label %.preheader159.us.us.preheader, label %.preheader159.us.preheader

.preheader159.us.preheader:                       ; preds = %.preheader159.lr.ph.split.us
  %broadcast.splatinsert324 = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat325 = shufflevector <2 x double> %broadcast.splatinsert324, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader159.us

.preheader159.us.us.preheader:                    ; preds = %.preheader159.lr.ph.split.us
  %exitcond271.not = icmp eq i32 %i.an, 1
  %exitcond271.not.1 = icmp eq i32 %i.an, 2
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %.split.us.split.us.us.us
  %indvars.iv272 = phi i64 [ 0, %.preheader159.us.us.preheader ], [ %indvars.iv.next273, %.split.us.split.us.us.us ] ; 3 uses
  %.0145204.us.us = phi ptr [ %i.f, %.preheader159.us.us.preheader ], [ %i.cf, %.split.us.split.us.us.us ] ; 2 uses
  %i.bh = mul i64 %i.l, %indvars.iv272
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bh ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !27
  %i.bk = uitofp i16 %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge199.us.us.us.us, %.preheader159.us.us
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %._crit_edge199.us.us.us.us ], [ %indvars.iv272, %.preheader159.us.us ] ; 3 uses
  %i.bn = mul i64 %i.l, %indvars.iv274
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bn ; 3 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !27
  %i.bq = uitofp i16 %i.bp to double
  %7 = fmul nnan double %i.bk, %i.bq              ; 2 uses
  br i1 %exitcond271.not, label %._crit_edge199.us.us.us.us, label %bb.h

bb.h:                                             ; preds = %.preheader.us.us.us.us
  %i.br = load i16, ptr %i.bl, align 2, !tbaa !27
  %i.bs = uitofp i16 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !27
  %i.bv = uitofp i16 %i.bu to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bv, double %7) ; 2 uses
  br i1 %exitcond271.not.1, label %._crit_edge199.us.us.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i16, ptr %i.bm, align 2, !tbaa !27
  %i.by = uitofp i16 %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !27
  %i.cb = uitofp i16 %i.ca to double
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cb, double %i.bw)
  br label %._crit_edge199.us.us.us.us

._crit_edge199.us.us.us.us:                       ; preds = %bb.i, %bb.h, %.preheader.us.us.us.us
  %.lcssa = phi double [ %7, %.preheader.us.us.us.us ], [ %i.bw, %bb.h ], [ %i.cc, %bb.i ]
  %i.cd = fmul double %3, %.lcssa
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us.us, i64 %indvars.iv274
  store double %i.cd, ptr %i.ce, align 8, !tbaa !29
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count280
  br i1 %exitcond278.not, label %.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !502

.split.us.split.us.us.us:                         ; preds = %._crit_edge199.us.us.us.us
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us.us, i64 %i.n
  %exitcond281.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count280
  br i1 %exitcond281.not, label %.loopexit, label %.preheader159.us.us, !llvm.loop !503

.preheader159.us:                                 ; preds = %.preheader159.us.preheader, %.split.us.split.us209
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.split.us.split.us209 ], [ 0, %.preheader159.us.preheader ] ; 5 uses
  %.0145204.us = phi ptr [ %i.cn, %.split.us.split.us209 ], [ %i.f, %.preheader159.us.preheader ] ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count280, %indvars.iv257 ; 3 uses
  %min.iters.check321 = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check321, label %.preheader.us.us207.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.preheader159.us
  %n.vec323 = and i64 %i.cg, -4                   ; 3 uses
  %i.ch = add i64 %indvars.iv257, %n.vec323
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %indvars.iv257
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph322
  %index327 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body326 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index327 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x double> %broadcast.splat325, ptr %i.cj, align 8, !tbaa !29
  store <2 x double> %broadcast.splat325, ptr %i.ck, align 8, !tbaa !29
  %index.next328 = add nuw i64 %index327, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.cl, label %middle.block329, label %vector.body326, !llvm.loop !504

middle.block329:                                  ; preds = %vector.body326
  %cmp.n330 = icmp eq i64 %i.cg, %n.vec323
  br i1 %cmp.n330, label %.split.us.split.us209, label %.preheader.us.us207.preheader

.preheader.us.us207.preheader:                    ; preds = %.preheader159.us, %middle.block329
  %indvars.iv259.ph = phi i64 [ %indvars.iv257, %.preheader159.us ], [ %i.ch, %middle.block329 ]
  br label %.preheader.us.us207

.preheader.us.us207:                              ; preds = %.preheader.us.us207.preheader, %.preheader.us.us207
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.preheader.us.us207 ], [ %indvars.iv259.ph, %.preheader.us.us207.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %indvars.iv259
  store double %i.av, ptr %i.cm, align 8, !tbaa !29
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count280
  br i1 %exitcond263.not, label %.split.us.split.us209, label %.preheader.us.us207, !llvm.loop !505

.split.us.split.us209:                            ; preds = %.preheader.us.us207, %middle.block329
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0145204.us, i64 %i.n
  %exitcond266.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count280
  br i1 %exitcond266.not, label %.loopexit, label %.preheader159.us, !llvm.loop !503

.preheader159:                                    ; preds = %.preheader159.preheader, %.split
  %indvars.iv247 = phi i64 [ 0, %.preheader159.preheader ], [ %indvars.iv.next248, %.split ] ; 3 uses
  %.0145204 = phi ptr [ %i.f, %.preheader159.preheader ], [ %i.ex, %.split ] ; 2 uses
  %i.co = mul i64 %i.l, %indvars.iv247
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.co ; 7 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.bc
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader159, %._crit_edge199
  %indvars.iv249 = phi i64 [ %indvars.iv247, %.preheader159 ], [ %indvars.iv.next250, %._crit_edge199 ] ; 3 uses
  %i.cr = mul i64 %i.l, %indvars.iv249
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cr ; 7 uses
  br label %bb.j

..preheader_crit_edge:                            ; preds = %bb.j
  br i1 %i.bd, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %lcmp.mod342.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader
  %i.ct = load i16, ptr %i.cq, align 2, !tbaa !27
  %i.cu = uitofp i16 %i.ct to double
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.bc
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !27
  %i.cx = uitofp i16 %i.cw to double
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cx, double %i.ee) ; 2 uses
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv244.unr = phi i64 [ %i.bc, %.lr.ph198.preheader ], [ %indvars.iv.next245.prol, %.lr.ph198.prol ]
  %.1144197.unr = phi double [ %i.ee, %.lr.ph198.preheader ], [ %i.cy, %.lr.ph198.prol ]
  %.lcssa335.unr = phi double [ poison, %.lr.ph198.preheader ], [ %i.cy, %.lr.ph198.prol ]
  br i1 %i.bf, label %._crit_edge199, label %.lr.ph198

bb.j:                                             ; preds = %.lr.ph193, %bb.j
  %indvars.iv241 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next242, %bb.j ] ; 6 uses
  %.0143191 = phi double [ 0.000000e+00, %.lr.ph193 ], [ %i.ee, %bb.j ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv241
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !27
  %i.db = uitofp i16 %i.da to double
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv241
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = uitofp i16 %i.dd to double
  %i.df = or disjoint i64 %indvars.iv241, 1       ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !27
  %i.di = uitofp i16 %i.dh to double
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.df
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27
  %i.dl = uitofp i16 %i.dk to double
  %i.dm = fmul nnan double %i.di, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.db, double %i.de, double %i.dm)
  %i.do = or disjoint i64 %indvars.iv241, 2       ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !27
  %i.dr = uitofp i16 %i.dq to double
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.do
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !27
  %i.du = uitofp i16 %i.dt to double
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.du, double %i.dn)
  %i.dw = or disjoint i64 %indvars.iv241, 3       ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !27
  %i.dz = uitofp i16 %i.dy to double
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.dw
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !27
  %i.ec = uitofp i16 %i.eb to double
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ec, double %i.dv)
  %i.ee = fadd double %.0143191, %i.ed            ; 4 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next242, %i.ax
  br i1 %.not155, label %..preheader_crit_edge, label %bb.j, !llvm.loop !506

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph198 ], [ %indvars.iv244.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %.1144197 = phi double [ %i.es, %.lr.ph198 ], [ %.1144197.unr, %.lr.ph198.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv244
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !27
  %i.eh = uitofp i16 %i.eg to double
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv244
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !27
  %i.ek = uitofp i16 %i.ej to double
  %i.el = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ek, double %.1144197)
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.next245
  %i.en = load i16, ptr %i.em, align 2, !tbaa !27
  %i.eo = uitofp i16 %i.en to double
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv.next245
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !27
  %i.er = uitofp i16 %i.eq to double
  %i.es = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.er, double %i.el) ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv.next245.1 to i32
  %i.eu = icmp sgt i32 %i.an, %i.et
  br i1 %i.eu, label %.lr.ph198, label %._crit_edge199, !llvm.loop !507

._crit_edge199:                                   ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %..preheader_crit_edge
  %.1144.lcssa = phi double [ %i.ee, %..preheader_crit_edge ], [ %.lcssa335.unr, %.lr.ph198.prol.loopexit ], [ %i.es, %.lr.ph198 ]
  %i.ev = fmul double %3, %.1144.lcssa
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.0145204, i64 %indvars.iv249
  store double %i.ev, ptr %i.ew, align 8, !tbaa !29
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond253.not, label %.split, label %.lr.ph193, !llvm.loop !502

.split:                                           ; preds = %._crit_edge199
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0145204, i64 %i.n
  %exitcond256.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.preheader159, !llvm.loop !503

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ey = icmp eq i32 %i.v, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %sext = shl nuw i64 %.sroa.0.0.insert.ext.i, 32
  %i.ez = ashr exact i64 %sext, 29                ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
end_hunk_3
