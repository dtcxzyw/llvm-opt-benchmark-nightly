Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody13predictMotionEf:bb.a
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 240
  store i8 1, ptr %i.ob, align 8, !tbaa !160
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 220
  store i32 0, ptr %i.oc, align 4, !tbaa !162
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 272
  store i8 1, ptr %i.od, align 8, !tbaa !160
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 252
  store i32 0, ptr %i.oe, align 4, !tbaa !162
  %i.of = getelementptr inbounds nuw i8, ptr %5, i64 304
  store i8 1, ptr %i.of, align 8, !tbaa !156
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 284
  store i32 0, ptr %i.og, align 4, !tbaa !158
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 336
  store i8 1, ptr %i.oh, align 8, !tbaa !336
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 316
  store i32 0, ptr %i.oi, align 4, !tbaa !338
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 384
  store i8 1, ptr %i.oj, align 8, !tbaa !160
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 364
  store i32 0, ptr %i.ok, align 4, !tbaa !162
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 416
  store i8 1, ptr %i.ol, align 8, !tbaa !160
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 396
  store i32 0, ptr %i.om, align 4, !tbaa !162
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 448
  store i8 1, ptr %i.on, align 8, !tbaa !160
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 428
  store i32 0, ptr %i.oo, align 4, !tbaa !162
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 480
  store i8 1, ptr %i.op, align 8, !tbaa !160
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 460
  store i32 0, ptr %i.oq, align 4, !tbaa !162
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 512
  store i8 1, ptr %i.or, align 8, !tbaa !156
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 492
  store i32 0, ptr %i.os, align 4, !tbaa !158
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i8 1, ptr %i.ot, align 8, !tbaa !336
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 524
  store i32 0, ptr %i.ou, align 4, !tbaa !338
  %i.ov = getelementptr inbounds nuw i8, ptr %5, i64 592
  store i8 1, ptr %i.ov, align 8, !tbaa !160
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 572
  store i32 0, ptr %i.ow, align 4, !tbaa !162
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 624
  store i8 1, ptr %i.ox, align 8, !tbaa !160
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 604
  store i32 0, ptr %i.oy, align 4, !tbaa !162
  %i.oz = getelementptr inbounds nuw i8, ptr %5, i64 656
  store i8 1, ptr %i.oz, align 8, !tbaa !160
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 636
  store i32 0, ptr %i.pa, align 4, !tbaa !162
  %i.pb = getelementptr inbounds nuw i8, ptr %5, i64 688
  store i8 1, ptr %i.pb, align 8, !tbaa !160
  %i.pc = getelementptr inbounds nuw i8, ptr %5, i64 668
  store i32 0, ptr %i.pc, align 4, !tbaa !162
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 720
  store i8 1, ptr %i.pd, align 8, !tbaa !156
  %i.pe = getelementptr inbounds nuw i8, ptr %5, i64 700
  store i32 0, ptr %i.pe, align 4, !tbaa !158
  %i.pf = getelementptr inbounds nuw i8, ptr %5, i64 752
  store i8 1, ptr %i.pf, align 8, !tbaa !336
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 732
  store i32 0, ptr %i.pg, align 4, !tbaa !338
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.nw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(808) %5)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %.loopexit
  %i.ph = getelementptr inbounds nuw i8, ptr %5, i64 568
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ph) #40
  %i.pi = getelementptr inbounds nuw i8, ptr %5, i64 360
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.pi) #40
  %i.pj = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.pj) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1412 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !223 ; 3 uses
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %bb.s, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit

bb.s:                                             ; preds = %bb.r
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !224
  %i.pp = icmp slt i32 %i.po, 0
  br i1 %i.pp, label %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i, label %.lr.ph.i99

_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i: ; preds = %bb.s
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !222 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !221, !range !262, !noundef !263
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.u, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.pr)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i: ; preds = %bb.u, %bb.t, %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store i8 1, ptr %i.pv, align 8, !tbaa !221
  store ptr null, ptr %i.pq, align 8, !tbaa !222
  store i32 0, ptr %i.pn, align 8, !tbaa !224
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i, %bb.s
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 5 uses
  %i.px = sext i32 %i.pl to i64                   ; 3 uses
  %i.py = sub nsw i64 0, %i.px
  %xtraiter194 = and i64 %i.py, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i99, %.prol.preheader
  %indvars.iv.i100.prol = phi i64 [ %indvars.iv.next.i101.prol, %.prol.preheader ], [ %i.px, %.lr.ph.i99 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i99 ]
  %i.pz = load ptr, ptr %i.pw, align 8, !tbaa !222
  %i.qa = getelementptr inbounds [64 x i8], ptr %i.pz, i64 %indvars.iv.i100.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qa, i8 0, i64 64, i1 false)
  %indvars.iv.next.i101.prol = add nsw i64 %indvars.iv.i100.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter194
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1029

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i99
  %indvars.iv.i100.unr = phi i64 [ %i.px, %.lr.ph.i99 ], [ %indvars.iv.next.i101.prol, %.prol.preheader ]
  %i.qb = icmp ugt i32 %i.pl, -4
  br i1 %i.qb, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit, label %.lr.ph.i99.new

.lr.ph.i99.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i99.new
  %indvars.iv.i100 = phi i64 [ %indvars.iv.next.i101.3, %.lr.ph.i99.new ], [ %indvars.iv.i100.unr, %.prol.loopexit ] ; 5 uses
  %i.qc = load ptr, ptr %i.pw, align 8, !tbaa !222
  %i.qd = getelementptr inbounds [64 x i8], ptr %i.qc, i64 %indvars.iv.i100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qd, i8 0, i64 64, i1 false)
  %i.qe = load ptr, ptr %i.pw, align 8, !tbaa !222
  %i.qf = getelementptr [64 x i8], ptr %i.qe, i64 %indvars.iv.i100
  %i.qg = getelementptr i8, ptr %i.qf, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qg, i8 0, i64 64, i1 false)
  %i.qh = load ptr, ptr %i.pw, align 8, !tbaa !222
  %i.qi = getelementptr [64 x i8], ptr %i.qh, i64 %indvars.iv.i100
  %i.qj = getelementptr i8, ptr %i.qi, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qj, i8 0, i64 64, i1 false)
  %i.qk = load ptr, ptr %i.pw, align 8, !tbaa !222
  %i.ql = getelementptr [64 x i8], ptr %i.qk, i64 %indvars.iv.i100
  %i.qm = getelementptr i8, ptr %i.ql, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qm, i8 0, i64 64, i1 false)
  %indvars.iv.next.i101.3 = add nsw i64 %indvars.iv.i100, 4 ; 2 uses
  %exitcond.not.i102.3 = icmp eq i64 %indvars.iv.next.i101.3, 0
  br i1 %exitcond.not.i102.3, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit, label %.lr.ph.i99.new, !llvm.loop !1030

_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i99.new, %bb.r
  store i32 0, ptr %i.pk, align 4, !tbaa !223
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 1544
  call void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64) %i.qn, i32 noundef 1)
  call void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ic, i32 noundef 1)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 1680
  call void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64) %i.qo, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.v:                                             ; preds = %.loopexit
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10btSoftBody8RContactD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.qp
}

declare void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody11applyForcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load float, ptr %i.a, align 8, !tbaa !392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.d = load float, ptr %i.c, align 4, !tbaa !393
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.f = load float, ptr %i.e, align 4, !tbaa !462
  %.fr65 = freeze float %i.f                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.h = load float, ptr %i.g, align 8, !tbaa !463
  %.fr = freeze float %i.h                        ; 2 uses
  %i.i = fcmp ogt float %i.b, 0.000000e+00
  %i.j = fcmp ogt float %i.d, 0.000000e+00
  %i.k = fcmp une float %.fr65, 0.000000e+00      ; 2 uses
  %i.l = fcmp ogt float %.fr, 0.000000e+00        ; 3 uses
  %i.m = select i1 %i.i, i1 true, i1 %i.j
  %.fr60 = freeze i1 %i.m                         ; 3 uses
  %i.n = or i1 %i.k, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.p = load i32, ptr %i.o, align 4, !tbaa !171  ; 5 uses
  br i1 %i.n, label %bb.b, label %._crit_edge81

bb.b:                                             ; preds = %bb.a
  %2 = icmp sgt i32 %i.p, 0
  br i1 %2, label %bb.c, label %_ZNK10btSoftBody9getVolumeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.027.0.copyload.i = load float, ptr %i.s, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.v = load i32, ptr %i.u, align 4, !tbaa !183  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  %i.z = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.aa = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.035.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bu, %bb.d ]
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !253
  %i.ag = fsub float %i.af, %.sroa.027.0.copyload.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !253
  %i.aj = fsub <2 x float> %i.ai, %i.t            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !316 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !253
  %i.ao = fsub float %i.an, %.sroa.027.0.copyload.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !253
  %i.ar = fsub float %i.aq, %i.z                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !253
  %i.au = fsub float %i.at, %i.aa                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !316 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !253
  %i.az = fsub float %i.ay, %.sroa.027.0.copyload.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !253
  %i.bc = fsub float %i.bb, %i.z                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !253
  %i.bf = fsub float %i.be, %i.aa                 ; 2 uses
  %i.bg = fneg float %i.bc
  %i.bh = fmul float %i.au, %i.bg
  %i.bi = call float @llvm.fmuladd.f32(float %i.ar, float %i.bf, float %i.bh)
  %i.bj = fneg float %i.bf
  %i.bk = fmul float %i.ao, %i.bj
  %i.bl = call float @llvm.fmuladd.f32(float %i.au, float %i.az, float %i.bk)
  %i.bm = fneg float %i.az
  %i.bn = fmul float %i.ar, %i.bm
  %i.bo = call float @llvm.fmuladd.f32(float %i.ao, float %i.bc, float %i.bn)
  %i.bp = extractelement <2 x float> %i.aj, i64 0
  %i.bq = fmul float %i.bp, %i.bl
  %i.br = call float @llvm.fmuladd.f32(float %i.ag, float %i.bi, float %i.bq)
  %i.bs = extractelement <2 x float> %i.aj, i64 1
  %i.bt = call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bo, float %i.br)
  %i.bu = fadd float %.035.i, %i.bt               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bu, %bb.d ]
  %i.bv = fdiv float %.0.lcssa.i, 6.000000e+00
  br label %_ZNK10btSoftBody9getVolumeEv.exit

_ZNK10btSoftBody9getVolumeEv.exit:                ; preds = %._crit_edge.i, %bb.b
  %.1.i = phi float [ %i.bv, %._crit_edge.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.bw = call noundef float @llvm.fabs.f32(float %.1.i)
  %i.bx = fdiv float 1.000000e+00, %i.bw
  %i.by = fmul float %.fr65, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !279
  %i.cb = fsub float %i.ca, %.1.i
  %i.cc = fmul float %.fr, %i.cb
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.a, %_ZNK10btSoftBody9getVolumeEv.exit
  %.043 = phi float [ %i.by, %_ZNK10btSoftBody9getVolumeEv.exit ], [ 0.000000e+00, %bb.a ]
  %.042 = phi float [ %i.cc, %_ZNK10btSoftBody9getVolumeEv.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %3 = icmp sgt i32 %i.p, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge81
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 3 uses
  br i1 %i.k, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count78 = zext nneg i32 %i.p to i64
  %.pre87 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.i
  %i.cf = phi ptr [ %.pre87, %.lr.ph.split.us.preheader ], [ %i.dk, %bb.i ] ; 3 uses
  %indvars.iv75 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next76, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [256 x i8], ptr %i.cf, i64 %indvars.iv75 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !268
  %i.cj = fcmp ogt float %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.split.us
  br i1 %.fr60, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = trunc nuw nsw i64 %indvars.iv75 to i32
  call void @_ZN10btSoftBody18addAeroForceToNodeERK9btVector3i(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i32 noundef %i.ck)
  %.pre86 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cl = phi ptr [ %.pre86, %bb.f ], [ %i.cf, %bb.e ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 116
  %i.co = load float, ptr %i.cn, align 4, !tbaa !397 ; 2 uses
  %i.cp = fmul float %.043, %i.co                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !253 ; 2 uses
  %i.cs = fmul float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 3 uses
  %i.cu = load <2 x float>, ptr %i.cm, align 8, !tbaa !253 ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = load <2 x float>, ptr %i.ct, align 8, !tbaa !253
  %i.cz = fadd <2 x float> %i.cx, %i.cy           ; 2 uses
  store <2 x float> %i.cz, ptr %i.ct, align 8, !tbaa !253
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 3 uses
  %i.db = load float, ptr %i.da, align 8, !tbaa !253
  %i.dc = fadd float %i.cs, %i.db                 ; 2 uses
  store float %i.dc, ptr %i.da, align 8, !tbaa !253
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dd = fmul float %.042, %i.co                 ; 2 uses
  %i.de = fmul float %i.dd, %i.cr
  %i.df = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.cu, %i.dg
  %i.di = fadd <2 x float> %i.dh, %i.cz
  store <2 x float> %i.di, ptr %i.ct, align 8, !tbaa !253
  %i.dj = fadd float %i.de, %i.dc
  store float %i.dj, ptr %i.da, align 8, !tbaa !253
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.split.us
  %i.dk = phi ptr [ %i.cl, %bb.h ], [ %i.cl, %bb.g ], [ %i.cf, %.lr.ph.split.us ]
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1037

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.l, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count73 = zext nneg i32 %i.p to i64
  %.pre85 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.m
  %i.dl = phi ptr [ %.pre85, %.lr.ph.split.split.us.preheader ], [ %i.ej, %bb.m ] ; 3 uses
  %indvars.iv70 = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next71, %bb.m ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [256 x i8], ptr %i.dl, i64 %indvars.iv70 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  %i.do = load float, ptr %i.dn, align 8, !tbaa !268
  %i.dp = fcmp ogt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.split.split.us
  br i1 %.fr60, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dq = trunc nuw nsw i64 %indvars.iv70 to i32
  call void @_ZN10btSoftBody18addAeroForceToNodeERK9btVector3i(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i32 noundef %i.dq)
  %.pre84 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dr = phi ptr [ %.pre84, %bb.k ], [ %i.dl, %bb.j ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 116
  %i.du = load float, ptr %i.dt, align 4, !tbaa !397
  %i.dv = fmul float %.042, %i.du                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !253
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 80 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.ds, align 8, !tbaa !253
  %i.eb = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = load <2 x float>, ptr %i.dz, align 8, !tbaa !253
  %i.ef = fadd <2 x float> %i.ed, %i.ee
  store <2 x float> %i.ef, ptr %i.dz, align 8, !tbaa !253
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 88 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !253
  %i.ei = fadd float %i.dy, %i.eh
  store float %i.ei, ptr %i.eg, align 8, !tbaa !253
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us
  %i.ej = phi ptr [ %i.dr, %bb.l ], [ %i.dl, %.lr.ph.split.split.us ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !1037

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.fr60, label %.lr.ph.split.split.split.us.preheader, label %._crit_edge

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %wide.trip.count = zext nneg i32 %i.p to i64
  %.pre83 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.preheader, %bb.o
  %i.ek = phi ptr [ %.pre83, %.lr.ph.split.split.split.us.preheader ], [ %i.eq, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.el = getelementptr inbounds nuw [256 x i8], ptr %i.ek, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load float, ptr %i.em, align 8, !tbaa !268
  %i.eo = fcmp ogt float %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.split.split.us
  %i.ep = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZN10btSoftBody18addAeroForceToNodeERK9btVector3i(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i32 noundef %i.ep)
  %.pre82 = load ptr, ptr %i.cd, align 8, !tbaa !170
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.split.split.us
  %i.eq = phi ptr [ %.pre82, %bb.n ], [ %i.ek, %.lr.ph.split.split.split.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !1037

._crit_edge:                                      ; preds = %bb.o, %bb.m, %bb.i, %.lr.ph.split.split, %._crit_edge81
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.es = load i32, ptr %i.er, align 4, !tbaa !183 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2008
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph63, %bb.p
  %.161 = phi i32 [ 0, %.lr.ph63 ], [ %i.ev, %bb.p ] ; 2 uses
  call void @_ZN10btSoftBody18addAeroForceToFaceERK9btVector3i(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.eu, i32 noundef %.161)
  %i.ev = add nuw nsw i32 %.161, 1                ; 2 uses
  %exitcond80.not = icmp eq i32 %i.ev, %i.es
  br i1 %exitcond80.not, label %._crit_edge64, label %bb.p, !llvm.loop !1038

._crit_edge64:                                    ; preds = %bb.p, %._crit_edge
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void
}

declare noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10updatePoseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btMatrix3x3, align 8         ; 16 uses
  %2 = alloca %class.btMatrix3x3, align 8         ; 13 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.b = load i8, ptr %i.a, align 1, !tbaa !278, !range !262, !noundef !263
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171  ; 5 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.f, label %.lr.ph.i, label %_ZNK10btSoftBody11evaluateComEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %.sroa.7.020.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %.sroa.7.8.vec.insert18.i.1, %bb.c ] ; 2 uses
  %.sroa.07.019.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !253 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !253
  %i.r = fmul float %i.o, %i.q
  %i.s = load <2 x float>, ptr %i.m, align 4, !tbaa !253
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = fadd <2 x float> %.sroa.07.019.i, %i.v
  %.sroa.7.8.vec.extract.i = extractelement <2 x float> %.sroa.7.020.i, i64 0
  %i.x = fadd float %.sroa.7.8.vec.extract.i, %i.r
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %indvars.iv.next.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !253 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !253
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %i.z, align 4, !tbaa !253
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = fadd <2 x float> %i.w, %i.ai            ; 3 uses
  %i.ak = fadd float %i.x, %i.ae
  %.sroa.7.8.vec.insert18.i.1 = insertelement <2 x float> %.sroa.7.020.i, float %i.ak, i64 0 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK10btSoftBody11evaluateComEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.020.i.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.7.8.vec.insert18.i.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.07.019.i.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.aj, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod95 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.ao = load float, ptr %i.an, align 4, !tbaa !253 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !253
  %i.ar = fmul float %i.ao, %i.aq
  %i.as = load <2 x float>, ptr %i.am, align 4, !tbaa !253
  %i.at = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as
  %i.aw = fadd <2 x float> %.sroa.07.019.i.epil.init, %i.av
  %.sroa.7.8.vec.extract.i.epil = extractelement <2 x float> %.sroa.7.020.i.epil.init, i64 0
  %i.ax = fadd float %.sroa.7.8.vec.extract.i.epil, %i.ar
  %.sroa.7.8.vec.insert18.i.epil = insertelement <2 x float> %.sroa.7.020.i.epil.init, float %i.ax, i64 0
  br label %_ZNK10btSoftBody11evaluateComEv.exit

_ZNK10btSoftBody11evaluateComEv.exit:             ; preds = %.epil.preheader, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.07.1.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.aj, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 3 uses
  %.sroa.7.1.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.7.8.vec.insert18.i.1, %_ZNK10btSoftBody11evaluateComEv.exit.loopexit.unr-lcssa ], [ %.sroa.7.8.vec.insert18.i.epil, %.epil.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.07.1.i, ptr %i.ay, align 8
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.7.1.i, ptr %.sroa.683.0..sroa_idx, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bb, i8 0, i64 44, i1 false)
  store float f0x34000000, ptr %1, align 8, !tbaa !253
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float f0x34800000, ptr %i.bc, align 4, !tbaa !253
  store float f0x34C00000, ptr %.sroa.580.0..sroa_idx, align 8, !tbaa !253
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK10btSoftBody11evaluateComEv.exit
  %.promoted84 = load float, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !161
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !170
  %.sroa.082.4.vec.extract = extractelement <2 x float> %.sroa.07.1.i, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !157
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.promoted88 = load float, ptr %i.bj, align 4, !tbaa !253
  %.promoted89 = load float, ptr %i.bk, align 8, !tbaa !253
  %.promoted90 = load float, ptr %i.bl, align 8, !tbaa !253
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.bm = insertelement <2 x float> <float f0x34000000, float poison>, float %.promoted88, i64 1
  %i.bn = insertelement <2 x float> <float poison, float f0x34800000>, float %.promoted84, i64 0
  %i.bo = insertelement <2 x float> <float poison, float f0x34C00000>, float %.promoted89, i64 0
  %i.bp = shufflevector <2 x float> %.sroa.07.1.i, <2 x float> %.sroa.7.1.i, <2 x i32> <i32 0, i32 2>
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %_ZNK10btSoftBody11evaluateComEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.bq = load atomic i8, ptr @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit, !prof !359

bb.d:                                             ; preds = %._crit_edge
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #40
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN20btPolarDecompositionC1Efj(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, float noundef f0x38D1B717, i32 noundef 16)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #40
  br label %_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit

bb.g:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #40
  resume { ptr, i32 } %i.bu

_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit:    ; preds = %._crit_edge, %bb.d, %bb.f
  %i.bv = call noundef i32 @_ZNK20btPolarDecomposition9decomposeERK11btMatrix3x3RS0_S3_(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !260
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !260
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !260
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 832
end_hunk_0
