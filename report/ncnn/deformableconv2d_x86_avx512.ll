Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx512?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn27DeformableConv2D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a

bb.dq:                                            ; preds = %.thread249
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dh
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #9
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.ns, %bb.dr ], [ %i.nr, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ds ], [ %i.nq, %bb.dp ]
  %i.nt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !17 ; 2 uses
  %.not.i100 = icmp eq ptr %i.nu, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nv = atomicrmw add ptr %i.nu, i32 -1 acq_rel, align 4
  %i.nw = icmp eq i32 %i.nv, 1
  br i1 %i.nw, label %bb.dv, label %_ZN4ncnn3MatD2Ev.exit73

bb.dv:                                            ; preds = %bb.du
  %i.nx = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ny = load ptr, ptr %i.nx, align 16, !tbaa !18 ; 3 uses
  %.not3.i101 = icmp eq ptr %i.ny, null
  %i.nz = load ptr, ptr %14, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i101, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oa = load ptr, ptr %i.ny, align 8, !tbaa !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  invoke void %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef %i.nz)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.dz, !inline_history !0

bb.dx:                                            ; preds = %bb.dv
  %.not.i120 = icmp eq ptr %i.nz, null
  br i1 %.not.i120, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.nz) #9
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.dz:                                            ; preds = %bb.dw
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.du, %bb.dt, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.ej

bb.ea:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit74, %_ZN4ncnn3MatD2Ev.exit77.1
  %i.of = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !11
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = invoke noundef i32 %i.oi(ptr noundef nonnull align 8 dereferenceable(208) %i.of, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.eb unwind label %bb.ei     ; 0 uses

bb.eb:                                            ; preds = %bb.ea
  %i.ok = load ptr, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %.not.i104 = icmp eq ptr %i.ok, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit72, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ol = atomicrmw add ptr %i.ok, i32 -1 acq_rel, align 4
  %i.om = icmp eq i32 %i.ol, 1
  br i1 %i.om, label %bb.ed, label %_ZN4ncnn3MatD2Ev.exit72

bb.ed:                                            ; preds = %bb.ec
  %i.on = load ptr, ptr %i.cz, align 16, !tbaa !18 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.on, null
  %i.oo = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i105, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.op = load ptr, ptr %i.on, align 8, !tbaa !11
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  invoke void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef %i.oo)
          to label %_ZN4ncnn3MatD2Ev.exit72 unwind label %bb.eh, !inline_history !0

bb.ef:                                            ; preds = %bb.ed
  %.not.i118 = icmp eq ptr %i.oo, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit72, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @free(ptr noundef nonnull %i.oo) #9
  br label %_ZN4ncnn3MatD2Ev.exit72

bb.eh:                                            ; preds = %bb.ee
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit72:                          ; preds = %bb.ec, %bb.eb, %bb.ee, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.fn

bb.ei:                                            ; preds = %bb.ea
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZN4ncnn3MatD2Ev.exit73, %_ZN4ncnn3MatD2Ev.exit75.1, %_ZN4ncnn3MatD2Ev.exit76
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %_ZN4ncnn3MatD2Ev.exit76 ], [ %i.ou, %bb.ei ], [ %.pn64.pn, %_ZN4ncnn3MatD2Ev.exit75.1 ], [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit73 ]
  %i.ov = load ptr, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %.not.i108 = icmp eq ptr %i.ov, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ow = atomicrmw add ptr %i.ov, i32 -1 acq_rel, align 4
  %i.ox = icmp eq i32 %i.ow, 1
  br i1 %i.ox, label %bb.el, label %_ZN4ncnn3MatD2Ev.exit

bb.el:                                            ; preds = %bb.ek
  %i.oy = load ptr, ptr %i.cz, align 16, !tbaa !18 ; 3 uses
  %.not3.i109 = icmp eq ptr %i.oy, null
  %i.oz = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i109, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.pa = load ptr, ptr %i.oy, align 8, !tbaa !11
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8
  invoke void %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.oy, ptr noundef %i.oz)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ep, !inline_history !0

bb.en:                                            ; preds = %bb.el
  %.not.i116 = icmp eq ptr %i.oz, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @free(ptr noundef nonnull %i.oz) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ep:                                            ; preds = %bb.em
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ek, %bb.ej, %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.az
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %i.en, %bb.az ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %common.resume

bb.er:                                            ; preds = %bb.af
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %.val = load ptr, ptr %i.pf, align 8, !tbaa !19 ; 4 uses
  %i.ph = mul i32 %.fr342, %i.bi
  %i.pi = mul i32 %i.ph, %i.bn
  %i.pj = mul nuw nsw i32 %.056, %.057            ; 2 uses
  %i.pk = sdiv i32 %i.pi, %i.pj
  %i.pl = shl nuw nsw i32 %.057, 2
  %narrow.i = mul nuw nsw i32 %i.pl, %.056
  %i.pm = zext nneg i32 %narrow.i to i64
  call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i32 noundef %i.pk, i64 noundef %i.pm, i32 noundef %i.pj, ptr noundef null)
  %i.pn = load ptr, ptr %i.pg, align 8, !tbaa !19 ; 5 uses
  %i.po = icmp sgt i32 %i.bn, 0
  %i.pp = icmp sgt i32 %i.bh, 0
  %or.cond.i = and i1 %i.pp, %i.po
  br i1 %or.cond.i, label %.preheader2.lr.ph.split.us.i, label %._crit_edge13.i

.preheader2.lr.ph.split.us.i:                     ; preds = %bb.er
  %i.pq = icmp slt i32 %.fr342, 1
  %i.pr = icmp slt i32 %i.bf, 1
  %brmerge.i = or i1 %i.pr, %i.pq
  br i1 %brmerge.i, label %._crit_edge13.i, label %.preheader2.lr.ph.split.us.split.split.i

.preheader2.lr.ph.split.us.split.split.i:         ; preds = %.preheader2.lr.ph.split.us.i
  %i.ps = udiv i32 %.fr342, %.057                 ; 5 uses
  %i.pt = urem i32 %.fr342, %.057
  %i.pu = zext nneg i32 %i.bh to i64              ; 8 uses
  %i.pv = zext nneg i32 %i.bf to i64              ; 11 uses
  %i.pw = zext nneg i32 %.fr342 to i64            ; 12 uses
  %wide.trip.count31.i = zext nneg i32 %i.bn to i64
  %i.px = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.056, i1 true)
  %i.py = add nuw i32 %.056, 2147483647
  %i.pz = add nsw i64 %i.pw, -1                   ; 3 uses
  %i.qa = mul i32 %.057, %i.bh
  %i.qb = mul i32 %i.qa, %i.bf
  %i.qc = mul i32 %i.qb, %i.ps
  %i.qd = mul i32 %.057, %i.bf
  %i.qe = mul i32 %i.qd, %i.ps
  %i.qf = mul nuw nsw i64 %i.pu, %i.pv            ; 2 uses
  %i.qg = shl nuw i64 %i.qf, 2                    ; 2 uses
  %i.qh = mul i64 %i.qf, -4
  %i.qi = mul nuw nsw i64 %i.pu, %i.pv
  %i.qj = mul i64 %i.qi, %i.pw
  %i.qk = shl i64 %i.qj, 2
  %i.ql = shl nuw nsw i64 %i.pv, 2
  %i.qm = mul i32 %.057, %i.bh
  %i.qn = mul i32 %i.qm, %i.bf
  %i.qo = mul i32 %i.qn, %i.ps
  %i.qp = mul i32 %.057, %i.bf
  %i.qq = mul i32 %i.qp, %i.ps
  %i.qr = shl nuw nsw i64 %i.pw, 2
  %scevgep253 = getelementptr i8, ptr %i.pn, i64 %i.qr
  %i.qs = mul nuw nsw i64 %i.pu, %i.pv
  %i.qt = mul i64 %i.qs, %i.pw
  %i.qu = shl i64 %i.qt, 2
  %i.qv = shl nuw nsw i64 %i.pv, 2
  %i.qw = add nuw nsw i64 %i.pw, 4611686018427387903
  %i.qx = mul i64 %i.qw, %i.pu
  %i.qy = mul i64 %i.qx, %i.pv
  %i.qz = shl i64 %i.qy, 2
  %i.ra = getelementptr i8, ptr %.val, i64 %i.qz
  %min.iters.check = icmp ult i32 %.fr342, 4
  %ident.check = icmp ne i32 %.056, 1
  %i.rb = zext i32 %i.qe to i64
  %i.rc = trunc nsw i64 %i.pz to i32
  %i.rd = icmp ugt i64 %i.pz, 4294967295
  %i.re = icmp slt i64 %i.qg, 0                   ; 2 uses
  %i.rf = select i1 %i.re, i64 %i.qh, i64 %i.qg
  %mul251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rf, i64 %i.pz) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul251, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul251, 1
  %i.rg = sub i64 0, %mul.result
  %invariant.op = or i1 %i.rd, %ident.check
  %i.rh = zext i32 %i.qq to i64
  %min.iters.check258 = icmp ult i32 %.fr342, 16
  %i.ri = and i64 %i.pw, 12
  %n.vec = and i64 %i.pw, 2147483632              ; 4 uses
  %broadcast.splatinsert259 = insertelement <16 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat260 = shufflevector <16 x i64> %broadcast.splatinsert259, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat264 = shufflevector <16 x i64> %broadcast.splatinsert263, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.pw
  %min.epilog.iters.check = icmp eq i64 %i.ri, 0
  %n.vec265 = and i64 %i.pw, 2147483644           ; 3 uses
  %broadcast.splatinsert268 = insertelement <4 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat269 = shufflevector <4 x i64> %broadcast.splatinsert268, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert272 = insertelement <4 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat273 = shufflevector <4 x i64> %broadcast.splatinsert272, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n282 = icmp eq i64 %n.vec265, %i.pw
  br label %.preheader2.us.i

.preheader2.us.i:                                 ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.split.split.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %._crit_edge8.us.i ], [ 0, %.preheader2.lr.ph.split.us.split.split.i ] ; 5 uses
  %i.rj = mul i64 %i.qu, %indvars.iv28.i          ; 2 uses
  %i.rk = mul i64 %i.qk, %indvars.iv28.i
  %i.rl = mul nuw nsw i64 %indvars.iv28.i, %i.pw  ; 3 uses
  %i.rm = trunc nuw nsw i64 %indvars.iv28.i to i32 ; 2 uses
  %i.rn = lshr i32 %i.rm, %i.px                   ; 3 uses
  %i.ro = and i32 %i.py, %i.rm                    ; 3 uses
  %i.rp = mul nuw nsw i32 %i.rn, %i.bh
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = mul i32 %i.qc, %i.rn
  %i.rs = add i32 %i.ro, %i.rr
  %i.rt = mul i32 %i.qo, %i.rn
  %i.ru = add i32 %i.ro, %i.rt
  %i.rv = getelementptr i8, ptr %.val, i64 %i.rj
  %i.rw = getelementptr i8, ptr %i.ra, i64 %i.rj
  %i.rx = getelementptr i8, ptr %.val, i64 %i.rk
  %i.ry = zext i32 %i.rs to i64
  %i.rz = zext i32 %i.ru to i64
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.rl, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x i64> poison, i64 %i.rl, i64 0
  %broadcast.splat267 = shufflevector <4 x i64> %broadcast.splatinsert266, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader1.us.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.sa = add nuw nsw i64 %indvars.iv.i, %i.rl
  %i.sb = mul nuw nsw i64 %i.sa, %i.pu
  %i.sc = add nuw nsw i64 %i.sb, %indvars.iv23.i
  %i.sd = mul nuw nsw i64 %i.sc, %i.pv
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sd
  %i.se = load float, ptr %gep.i, align 4, !tbaa !38
  %i.sf = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.sg = udiv i32 %i.sf, %.057
  %i.sh = urem i32 %i.sf, %.057
  %i.si = add nsw i32 %i.sg, %i.su
  %i.sj = mul nsw i32 %i.si, %.057
  %i.sk = add nsw i32 %i.sj, %i.sh
  %i.sl = mul nsw i32 %i.sk, %.056
  %i.sm = add nsw i32 %i.sl, %i.ro
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.sn
  store float %i.se, ptr %i.so, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.pw
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph, !llvm.loop !90

iter.check:                                       ; preds = %._crit_edge.us.i, %.preheader1.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.i ], [ 0, %.preheader1.us.i ] ; 7 uses
  %i.sp = shl nuw nsw i64 %indvars.iv18.i, 2      ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.ut, i64 %i.sp ; 4 uses
  %scevgep256 = getelementptr i8, ptr %i.uu, i64 %i.sp ; 4 uses
  %i.sq = icmp ult ptr %scevgep255, %scevgep256
  %umin = select i1 %i.sq, ptr %scevgep255, ptr %scevgep256
  %i.sr = icmp ugt ptr %scevgep255, %scevgep256
  %umax = select i1 %i.sr, ptr %scevgep255, ptr %scevgep256
  %scevgep257 = getelementptr i8, ptr %umax, i64 4
  %i.ss = add i64 %indvars.iv18.i, %i.us
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv18.i ; 3 uses
  %i.st = trunc i64 %i.ss to i32
  %i.su = mul i32 %i.ps, %i.st                    ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.sv = shl nuw nsw i64 %indvars.iv18.i, 2
  %scevgep = getelementptr i8, ptr %i.uv, i64 %i.sv ; 4 uses
  %i.sw = urem i32 %.fr342, %.057
  %narrow = sub nuw nsw i32 %.fr342, %i.sw
  %i.sx = zext nneg i32 %narrow to i64
  %i.sy = mul i64 %indvars.iv18.i, %i.sx
  %i.sz = add i64 %i.sy, %i.ux
  %i.ta = trunc i64 %i.sz to i32                  ; 2 uses
  %i.tb = add i32 %i.ta, %i.rc
  %i.tc = icmp slt i32 %i.tb, %i.ta
  %i.td = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.te = getelementptr i8, ptr %scevgep, i64 %i.rg
  %i.tf = icmp ult ptr %i.td, %scevgep
  %i.tg = icmp ugt ptr %i.te, %scevgep
  %i.th = select i1 %i.re, i1 %i.tg, i1 %i.tf
  %i.ti = or i1 %i.th, %mul.overflow
  %.reass347 = or i1 %i.tc, %invariant.op
  %i.tj = or i1 %.reass347, %i.ti
  br i1 %i.tj, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %narrow343 = sub nuw nsw i32 %.fr342, %i.pt
  %i.tk = zext nneg i32 %narrow343 to i64
  %i.tl = mul i64 %indvars.iv18.i, %i.tk
  %i.tm = add i64 %i.tl, %i.uz
  %i.tn = shl i64 %i.tm, 32
  %i.to = ashr exact i64 %i.tn, 30                ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.pn, i64 %i.to
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.to
  %bound0 = icmp ult ptr %scevgep252, %scevgep257
  %bound1 = icmp ult ptr %umin, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check258, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check ] ; 2 uses
  %i.tp = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.tq = mul nuw nsw <16 x i64> %i.tp, %broadcast.splat260
  %i.tr = add nuw nsw <16 x i64> %i.tq, %broadcast.splat262
  %i.ts = mul nuw nsw <16 x i64> %i.tr, %broadcast.splat264
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <16 x i64> %i.ts
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !38, !alias.scope !105
  %i.tt = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.tu = udiv i32 %i.tt, %.057
  %i.tv = urem i32 %i.tt, %.057
  %i.tw = add nsw i32 %i.tu, %i.su
  %i.tx = mul nsw i32 %i.tw, %.057
  %i.ty = add nsw i32 %i.tx, %i.tv
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.tz
  store <16 x float> %wide.masked.gather, ptr %i.ua, align 4, !tbaa !38, !alias.scope !106, !noalias !105
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.ub = icmp eq i64 %index.next, %n.vec
  br i1 %i.ub, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert274 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat275 = shufflevector <4 x i64> %broadcast.splatinsert274, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat275, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next280, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind277 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next281, %vec.epilog.vector.body ] ; 2 uses
  %i.uc = add nuw nsw <4 x i64> %vec.ind277, %broadcast.splat267
  %i.ud = mul nuw nsw <4 x i64> %i.uc, %broadcast.splat269
  %i.ue = add nuw nsw <4 x i64> %i.ud, %broadcast.splat271
  %i.uf = mul nuw nsw <4 x i64> %i.ue, %broadcast.splat273
  %wide.gep278 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.uf
  %wide.masked.gather279 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep278, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !38, !alias.scope !105
  %i.ug = trunc nuw nsw i64 %index276 to i32      ; 2 uses
  %i.uh = udiv i32 %i.ug, %.057
  %i.ui = urem i32 %i.ug, %.057
  %i.uj = add nsw i32 %i.uh, %i.su
  %i.uk = mul nsw i32 %i.uj, %.057
  %i.ul = add nsw i32 %i.uk, %i.ui
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.um
  store <4 x float> %wide.masked.gather279, ptr %i.un, align 4, !tbaa !38, !alias.scope !106, !noalias !105
  %index.next280 = add nuw i64 %index276, 4       ; 2 uses
  %vec.ind.next281 = add nuw nsw <4 x i64> %vec.ind277, splat (i64 4)
  %i.uo = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.uo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n282, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec265, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader1.us.i:                                 ; preds = %._crit_edge5.us.i, %.preheader2.us.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader2.us.i ], [ %indvars.iv.next24.i, %._crit_edge5.us.i ] ; 9 uses
  %i.up = mul i64 %i.qv, %indvars.iv23.i          ; 2 uses
  %i.uq = mul i64 %i.ql, %indvars.iv23.i
  %i.ur = add nuw nsw i64 %indvars.iv23.i, %i.rq
  %i.us = mul i64 %i.ur, %i.pv
  %i.ut = getelementptr i8, ptr %i.rv, i64 %i.up
  %i.uu = getelementptr i8, ptr %i.rw, i64 %i.up
  %i.uv = getelementptr i8, ptr %i.rx, i64 %i.uq
  %i.uw = mul i64 %indvars.iv23.i, %i.rb
  %i.ux = add i64 %i.uw, %i.ry
  %i.uy = mul i64 %indvars.iv23.i, %i.rh
  %i.uz = add i64 %i.uy, %i.rz
  %broadcast.splatinsert261 = insertelement <16 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat262 = shufflevector <16 x i64> %broadcast.splatinsert261, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <4 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat271 = shufflevector <4 x i64> %broadcast.splatinsert270, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.pv
  br i1 %exitcond22.not.i, label %._crit_edge5.us.i, label %iter.check, !llvm.loop !96

._crit_edge5.us.i:                                ; preds = %._crit_edge.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %i.pu
  br i1 %exitcond27.not.i, label %._crit_edge8.us.i, label %.preheader1.us.i, !llvm.loop !97

._crit_edge8.us.i:                                ; preds = %._crit_edge5.us.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %._crit_edge13.i, label %.preheader2.us.i, !llvm.loop !98

._crit_edge13.i:                                  ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.i, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.va = sdiv i32 %.fr342, %.057
  %i.vb = sdiv i32 %i.bn, %.056
  call void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i32 noundef %i.va, i32 noundef %i.bi, i32 noundef %i.vb, ptr noundef null)
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !17 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.vd, null
  br i1 %.not.i74.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %._crit_edge13.i
  %i.ve = atomicrmw add ptr %i.vd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %._crit_edge13.i
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vh = atomicrmw add ptr %i.vg, i32 -1 acq_rel, align 4
  %i.vi = icmp eq i32 %i.vh, 1
  br i1 %i.vi, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !18 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.vk, null
  %i.vl = load ptr, ptr %i.pg, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vm = load ptr, ptr %i.vk, align 8, !tbaa !11
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  invoke void %i.vo(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noundef %i.vl)
          to label %bb.ez unwind label %bb.fg, !inline_history !89

bb.ex:                                            ; preds = %bb.ev
  %.not.i18.i.i = icmp eq ptr %i.vl, null
  br i1 %.not.i18.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @free(ptr noundef nonnull %i.vl) #9
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.et
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.vu = load ptr, ptr %i.vc, align 8, !tbaa !17 ; 2 uses
  %i.vv = load <2 x ptr>, ptr %2, align 16, !tbaa !104
  store <2 x ptr> %i.vv, ptr %i.pg, align 8, !tbaa !104
  %i.vw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vx = load i64, ptr %i.vw, align 16, !tbaa !52
  store i64 %i.vx, ptr %i.vp, align 8, !tbaa !52
  %i.vy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !57
  store i32 %i.vz, ptr %i.vq, align 8, !tbaa !57
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 16, !tbaa !18
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.wb, ptr %i.wc, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.we = load <4 x i32>, ptr %i.wd, align 8, !tbaa !58
  store <4 x i32> %i.we, ptr %i.vr, align 8, !tbaa !58
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !59
  store i32 %i.wg, ptr %i.vs, align 8, !tbaa !59
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wi = load i64, ptr %i.wh, align 16, !tbaa !20
  store i64 %i.wi, ptr %i.vt, align 8, !tbaa !20
  %.not.i.i151 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i151, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wj = atomicrmw add ptr %i.vu, i32 -1 acq_rel, align 4
  %i.wk = icmp eq i32 %i.wj, 1
  br i1 %i.wk, label %bb.fb, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.fb:                                            ; preds = %bb.fa
  %i.wl = load ptr, ptr %i.wa, align 16, !tbaa !18 ; 3 uses
  %.not3.i.i152 = icmp eq ptr %i.wl, null
  %i.wm = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i.i152, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wn = load ptr, ptr %i.wl, align 8, !tbaa !11
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8
  invoke void %i.wp(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef %i.wm)
          to label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit unwind label %bb.ff, !inline_history !0

bb.fd:                                            ; preds = %bb.fb
  %.not.i72.i = icmp eq ptr %i.wm, null
  br i1 %.not.i72.i, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.wm) #9
  br label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.ff:                                            ; preds = %bb.fc
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #22
  unreachable

bb.fg:                                            ; preds = %bb.ew
  %i.ws = landingpad { ptr, i32 }
          cleanup
  %i.wt = load ptr, ptr %i.vc, align 8, !tbaa !17 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.wt, null
  br i1 %.not.i67.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wu = atomicrmw add ptr %i.wt, i32 -1 acq_rel, align 4
  %i.wv = icmp eq i32 %i.wu, 1
  br i1 %i.wv, label %bb.fi, label %_ZN4ncnn3MatD2Ev.exit.i

bb.fi:                                            ; preds = %bb.fh
  %i.ww = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.wx = load ptr, ptr %i.ww, align 16, !tbaa !18 ; 3 uses
  %.not3.i68.i = icmp eq ptr %i.wx, null
  %i.wy = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i68.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wz = load ptr, ptr %i.wx, align 8, !tbaa !11
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  %i.xb = load ptr, ptr %i.xa, align 8
  invoke void %i.xb(ptr noundef nonnull align 8 dereferenceable(8) %i.wx, ptr noundef %i.wy)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.fm, !inline_history !0

bb.fk:                                            ; preds = %bb.fi
  %.not.i71.i = icmp eq ptr %i.wy, null
  br i1 %.not.i71.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.wy) #9
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.fm:                                            ; preds = %bb.fj
  %i.xc = landingpad { ptr, i32 }
          catch ptr null
  %i.xd = extractvalue { ptr, i32 } %i.xc, 0
  call void @__clang_call_terminate(ptr %i.xd) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume

_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit: ; preds = %bb.ez, %bb.fa, %bb.fc, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, %_ZN4ncnn3MatD2Ev.exit72
  %i.xe = load i8, ptr %1, align 8, !tbaa !107, !range !47, !noundef !48
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.fo, label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !17 ; 2 uses
  %.not.i112 = icmp eq ptr %i.xi, null
  br i1 %.not.i112, label %_ZN4ncnn3Mat7releaseEv.exit114, label %bb.fp
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bv

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not1020 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1020, label %._crit_edge1023, label %.preheader923.lr.ph

.preheader923.lr.ph:                              ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.v = load i32, ptr %3, align 4, !tbaa !58     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader923.preheader, label %._crit_edge1023

.preheader923.preheader:                          ; preds = %.preheader923.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.preheader923

.preheader923:                                    ; preds = %.preheader923.preheader, %._crit_edge1019
  %i.z = phi i32 [ %i.v, %.preheader923.preheader ], [ %i.af, %._crit_edge1019 ] ; 3 uses
  %i.aa = phi i32 [ %i.v, %.preheader923.preheader ], [ %i.ag, %._crit_edge1019 ] ; 3 uses
  %indvars.iv1096 = phi i64 [ %i.x, %.preheader923.preheader ], [ %indvars.iv.next1097, %._crit_edge1019 ] ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge1019

.lr.ph:                                           ; preds = %.preheader923
  %i.ac = load i32, ptr %8, align 4, !tbaa !58    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split.preheader, label %._crit_edge1019

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ae = trunc nsw i64 %indvars.iv1096 to i32    ; 4 uses
  br label %.lr.ph.split

._crit_edge1019:                                  ; preds = %._crit_edge, %.lr.ph, %.preheader923
  %i.af = phi i32 [ %i.z, %.preheader923 ], [ %i.z, %.lr.ph ], [ %i.at, %._crit_edge ]
  %i.ag = phi i32 [ %i.aa, %.preheader923 ], [ %i.aa, %.lr.ph ], [ %i.at, %._crit_edge ]
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1097 to i32
  %exitcond1099.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond1099.not, label %._crit_edge1023, label %.preheader923, !llvm.loop !171

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ah = phi i32 [ %i.z, %.lr.ph.split.preheader ], [ %i.at, %._crit_edge ]
  %i.ai = phi i32 [ %i.ac, %.lr.ph.split.preheader ], [ %i.au, %._crit_edge ] ; 2 uses
  %indvars.iv1093 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next1094, %._crit_edge ] ; 6 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv1093 to i32 ; 6 uses
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.noexc421.lr.ph, label %._crit_edge

.noexc421.lr.ph:                                  ; preds = %.lr.ph.split
  %i.al = load i32, ptr %6, align 4, !tbaa !58
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = load i32, ptr %7, align 4, !tbaa !58
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = load i32, ptr %4, align 4, !tbaa !58
  %i.aq = mul nsw i32 %i.ap, %i.ae
  %i.ar = load i32, ptr %5, align 4, !tbaa !58
  %i.as = sub i32 %i.aq, %i.ar
  br label %.noexc421

._crit_edge.loopexit:                             ; preds = %bb.bu
  %.pre1102 = load i32, ptr %3, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.at = phi i32 [ %.pre1102, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph.split ] ; 4 uses
  %i.au = phi i32 [ %i.aqa, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph.split ]
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = icmp slt i64 %indvars.iv.next1094, %i.av
  br i1 %i.aw, label %.lr.ph.split, label %._crit_edge1019, !llvm.loop !172

.noexc421:                                        ; preds = %.noexc421.lr.ph, %bb.bu
  %indvars.iv1090 = phi i64 [ 0, %.noexc421.lr.ph ], [ %indvars.iv.next1091, %bb.bu ] ; 7 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !19, !noalias !200
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !200
  %i.az = mul i64 %i.ay, %indvars.iv1090
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !52, !noalias !200
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %10, align 8, !tbaa !19, !noalias !201
  %i.be = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !201
  %i.bf = mul i64 %i.be, %indvars.iv1090
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !201
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh ; 4 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !71   ; 5 uses
  %.not363 = icmp eq ptr %i.bj, null
  br i1 %.not363, label %.thread903, label %bb.c

bb.c:                                             ; preds = %.noexc421
  %i.bk = load i32, ptr %12, align 4, !tbaa !58   ; 2 uses
  %i.bl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bk)
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %.split, label %.thread903

.split:                                           ; preds = %bb.c
  %i.bn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bk, i1 true)
  switch i32 %i.bn, label %.thread903 [
    i32 4, label %.thread
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

.thread:                                          ; preds = %.split
  %.idx1127 = shl nuw nsw i64 %indvars.iv1090, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx1127
  %i.bp = load <16 x float>, ptr %i.bo, align 64, !tbaa !63
  br label %.thread903

bb.d:                                             ; preds = %.split
  %.idx1126 = shl nuw nsw i64 %indvars.iv1090, 5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx1126
  %i.br = load <8 x float>, ptr %i.bq, align 32, !tbaa !63
  br label %.thread903

bb.e:                                             ; preds = %.split
  %.idx = shl nuw nsw i64 %indvars.iv1090, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %i.bt = load <4 x float>, ptr %i.bs, align 16, !tbaa !63
  br label %.thread903

bb.f:                                             ; preds = %.split
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv1090
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !38
  br label %.thread903

.thread903:                                       ; preds = %bb.c, %.split, %bb.d, %.thread, %bb.e, %bb.f, %.noexc421
  %.1887 = phi nsz <8 x float> [ zeroinitializer, %.noexc421 ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %.split ], [ zeroinitializer, %bb.e ], [ zeroinitializer, %.thread ], [ %i.br, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.1880 = phi nsz <4 x float> [ zeroinitializer, %.noexc421 ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %.split ], [ %i.bt, %bb.e ], [ zeroinitializer, %.thread ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.1337 = phi nsz <16 x float> [ zeroinitializer, %.noexc421 ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %.split ], [ zeroinitializer, %bb.e ], [ %i.bp, %.thread ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.0334 = phi nsz float [ 0.000000e+00, %.noexc421 ], [ %i.bv, %bb.f ], [ 0.000000e+00, %.split ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.thread ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.bw = load i32, ptr %13, align 4, !tbaa !58   ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.preheader922.lr.ph, label %._crit_edge984

.preheader922.lr.ph:                              ; preds = %.thread903
  %i.by = load i32, ptr %14, align 4, !tbaa !58   ; 5 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader922.lr.ph.split.us, label %._crit_edge984

.preheader922.lr.ph.split.us:                     ; preds = %.preheader922.lr.ph
  %i.ca = load i8, ptr %15, align 1, !tbaa !61, !range !47, !noundef !48
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i8, ptr %17, align 1, !tbaa !61, !range !47, !noundef !48 ; 4 uses
  %i.cd = trunc nuw i8 %i.cc to i1                ; 5 uses
  %i.ce = load i32, ptr %20, align 4, !tbaa !58
  %i.cf = load i32, ptr %21, align 4, !tbaa !58
  %i.cg = load i32, ptr %24, align 4, !tbaa !58   ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = zext nneg i32 %i.by to i64              ; 2 uses
  %wide.trip.count1088 = zext nneg i32 %i.bw to i64
  %wide.trip.count1078 = zext nneg i32 %i.cg to i64
  %i.cj = trunc nuw i8 %i.cc to i1
  %i.ck = trunc nuw i8 %i.cc to i1
  %i.cl = trunc nuw i8 %i.cc to i1
  br label %.preheader922.us

.preheader922.us:                                 ; preds = %._crit_edge972.us, %.preheader922.lr.ph.split.us
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %._crit_edge972.us ], [ 0, %.preheader922.lr.ph.split.us ] ; 6 uses
  %.1335982.us = phi float [ %.3.lcssa.us, %._crit_edge972.us ], [ %.0334, %.preheader922.lr.ph.split.us ]
  %.2338981.us = phi <16 x float> [ %.4340.lcssa.us, %._crit_edge972.us ], [ %.1337, %.preheader922.lr.ph.split.us ]
  %.0342980.us = phi ptr [ %.2344.lcssa.us, %._crit_edge972.us ], [ %i.bc, %.preheader922.lr.ph.split.us ]
  %.2881979.us = phi <4 x float> [ %.4883.lcssa.us, %._crit_edge972.us ], [ %.1880, %.preheader922.lr.ph.split.us ]
  %.2888978.us = phi <8 x float> [ %.4890.lcssa.us, %._crit_edge972.us ], [ %.1887, %.preheader922.lr.ph.split.us ]
  %i.cm = mul nuw nsw i64 %indvars.iv1085, %i.ci
  %i.cn = trunc i64 %indvars.iv1085 to i32
  %i.co = mul i32 %i.ce, %i.cn
  %i.cp = add i32 %i.co, %i.as
  %i.cq = sitofp fast i32 %i.cp to float
  %i.cr = trunc nuw nsw i64 %indvars.iv1085 to i32
  %i.cs = mul nuw nsw i32 %i.by, %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv1085 to i32
  %i.cu = mul nuw nsw i32 %i.by, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv1085 to i32
  %i.cw = mul nuw nsw i32 %i.by, %i.cv
  br label %bb.g

bb.g:                                             ; preds = %.preheader922.us, %._crit_edge.us
  %indvars.iv1080 = phi i64 [ 0, %.preheader922.us ], [ %indvars.iv.next1081, %._crit_edge.us ] ; 5 uses
  %.2969.us = phi float [ %.1335982.us, %.preheader922.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3339968.us = phi <16 x float> [ %.2338981.us, %.preheader922.us ], [ %.4340.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.1343967.us = phi ptr [ %.0342980.us, %.preheader922.us ], [ %.2344.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3882966.us = phi <4 x float> [ %.2881979.us, %.preheader922.us ], [ %.4883.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3889965.us = phi <8 x float> [ %.2888978.us, %.preheader922.us ], [ %.4890.lcssa.us, %._crit_edge.us ] ; 2 uses
  %i.cx = add nuw nsw i64 %i.cm, %indvars.iv1080
  %i.cy = shl nuw nsw i64 %i.cx, 1                ; 3 uses
  br i1 %i.cb, label %_ZN4ncnn3MatD2Ev.exit369.us, label %_ZN4ncnn3MatD2Ev.exit367.us

_ZN4ncnn3MatD2Ev.exit367.us:                      ; preds = %bb.g
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !57  ; 4 uses
  %i.da = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !202
  %i.db = load ptr, ptr %16, align 8, !tbaa !19, !noalias !202 ; 2 uses
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !202 ; 2 uses
  %i.dd = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !202 ; 3 uses
  %i.de = sext i32 %i.da to i64
  %i.df = mul nsw i64 %indvars.iv1096, %i.de
  %i.dg = mul i64 %i.df, %i.dd                    ; 2 uses
  %i.dh = mul nsw i32 %i.cz, %i.aj                ; 2 uses
  %i.di = trunc i64 %i.cy to i32
  %i.dj = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %i.dk = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dl = trunc nuw i64 %i.cy to i32
  %i.dm = or disjoint <2 x i32> %i.dk, <i32 0, i32 1> ; 2 uses
  %i.dn = insertelement <2 x i32> poison, i32 %i.cz, i64 0
  %i.do = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dp = sdiv <2 x i32> %i.dm, %i.do             ; 2 uses
  %i.dq = extractelement <2 x i32> %i.dp, i64 0
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.dc, %i.dr
  %i.dt = mul i64 %i.ds, %i.dd
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dg
  %i.dw = srem i32 %i.dl, %i.cz
  %i.dx = add nsw i32 %i.dw, %i.dh
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dy
  %i.ea = extractelement <2 x i32> %i.dp, i64 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dc, %i.eb
  %i.ed = mul i64 %i.ec, %i.dd
  %i.ee = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dg
  %i.eg = extractelement <2 x i32> %i.dm, i64 1
  %i.eh = srem i32 %i.eg, %i.cz
  %i.ei = add nsw i32 %i.eh, %i.dh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ej
  br label %bb.h

_ZN4ncnn3MatD2Ev.exit369.us:                      ; preds = %bb.g
  %i.el = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !203
  %i.em = load ptr, ptr %16, align 8, !tbaa !19, !noalias !203 ; 2 uses
  %i.en = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !203 ; 2 uses
  %i.eo = mul i64 %i.en, %i.cy
  %i.ep = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !203 ; 3 uses
  %i.eq = mul i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eq
  %i.es = sext i32 %i.el to i64
  %i.et = mul nsw i64 %indvars.iv1096, %i.es
  %i.eu = mul i64 %i.et, %i.ep                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv1093
  %i.ex = trunc nuw nsw i64 %indvars.iv1080 to i32
  %i.ey = add nuw nsw i32 %i.cs, %i.ex
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = or disjoint i32 %i.ez, 1
  %29 = zext nneg i32 %i.fa to i64
  %i.fb = mul i64 %i.ep, %i.en
  %i.fc = mul i64 %i.fb, %29
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.eu
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv1093
  br label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit369.us, %_ZN4ncnn3MatD2Ev.exit367.us
  %.0331.in.us = phi ptr [ %i.ew, %_ZN4ncnn3MatD2Ev.exit369.us ], [ %i.dz, %_ZN4ncnn3MatD2Ev.exit367.us ]
  %.0330.in.us = phi ptr [ %i.ff, %_ZN4ncnn3MatD2Ev.exit369.us ], [ %i.ek, %_ZN4ncnn3MatD2Ev.exit367.us ]
  %.0330.us = load float, ptr %.0330.in.us, align 4, !tbaa !38
  %.0331.us = load float, ptr %.0331.in.us, align 4, !tbaa !38
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fg = load ptr, ptr %18, align 8, !tbaa !60   ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 144 ; 2 uses
  %i.fi = load i8, ptr %19, align 1, !tbaa !61, !range !47, !noundef !48
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = trunc nuw nsw i64 %indvars.iv1080 to i32 ; 2 uses
  br i1 %i.fj, label %_ZN4ncnn3MatD2Ev.exit365.us, label %_ZN4ncnn3MatD2Ev.exit364.us

_ZN4ncnn3MatD2Ev.exit364.us:                      ; preds = %bb.i
  %i.fl = add nuw nsw i32 %i.cu, %i.fk            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 168
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !57 ; 3 uses
  %i.fo = sdiv i32 %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 188
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !51, !noalias !204
  %i.fr = load ptr, ptr %i.fh, align 8, !tbaa !19, !noalias !204
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !20, !noalias !204
  %i.fu = sext i32 %i.fo to i64
  %i.fv = mul i64 %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 160
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !52, !noalias !204 ; 2 uses
  %i.fy = mul i64 %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fy
  %i.ga = sext i32 %i.fq to i64
  %i.gb = mul nsw i64 %indvars.iv1096, %i.ga
  %i.gc = mul i64 %i.gb, %i.fx
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gc
  %i.ge = mul nsw i32 %i.fn, %i.aj
  %i.gf = srem i32 %i.fl, %i.fn
  %i.gg = add nsw i32 %i.gf, %i.ge
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !38
  br label %bb.j

_ZN4ncnn3MatD2Ev.exit365.us:                      ; preds = %bb.i
  %i.gk = add nuw nsw i32 %i.cw, %i.fk
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 188
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !51, !noalias !205
  %i.gn = load ptr, ptr %i.fh, align 8, !tbaa !19, !noalias !205
  %i.go = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !20, !noalias !205
  %30 = zext nneg i32 %i.gk to i64
  %i.gq = mul i64 %i.gp, %30
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fg, i64 160
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !52, !noalias !205 ; 2 uses
  %i.gt = mul i64 %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt
  %i.gv = sext i32 %i.gm to i64
  %i.gw = mul nsw i64 %indvars.iv1096, %i.gv
  %i.gx = mul i64 %i.gw, %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv1093
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit365.us, %_ZN4ncnn3MatD2Ev.exit364.us, %bb.h
  %.1329.us = phi nsz float [ 1.000000e+00, %bb.h ], [ %i.ha, %_ZN4ncnn3MatD2Ev.exit365.us ], [ %i.gj, %_ZN4ncnn3MatD2Ev.exit364.us ] ; 6 uses
  %i.hb = fadd fast float %.0331.us, %i.cq        ; 4 uses
  %i.hc = trunc i64 %indvars.iv1080 to i32
  %i.hd = mul i32 %i.cf, %i.hc
  %i.he = add i32 %i.hd, %i.ao
  %i.hf = sitofp fast i32 %i.he to float
  %i.hg = fadd fast float %.0330.us, %i.hf        ; 4 uses
  %i.hh = fcmp fast ogt float %i.hb, -1.000000e+00
  %i.hi = fcmp fast ogt float %i.hg, -1.000000e+00
  %or.cond.us = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond.us, label %bb.k, label %.thread908.us

bb.k:                                             ; preds = %bb.j
  %i.hj = load i32, ptr %22, align 4, !tbaa !58   ; 2 uses
  %i.hk = sitofp fast i32 %i.hj to float
  %i.hl = fcmp fast olt float %i.hb, %i.hk
  br i1 %i.hl, label %bb.l, label %.thread908.us

bb.l:                                             ; preds = %bb.k
  %i.hm = load i32, ptr %23, align 4, !tbaa !58   ; 7 uses
  %i.hn = sitofp fast i32 %i.hm to float
  %i.ho = fcmp fast olt float %i.hg, %i.hn
  br i1 %i.ho, label %bb.m, label %.thread908.us

bb.m:                                             ; preds = %bb.l
  %i.hp = call fast float @llvm.floor.f32(float %i.hb)
  %i.hq = fptosi float %i.hp to i32               ; 6 uses
  %i.hr = call fast float @llvm.floor.f32(float %i.hg)
  %i.hs = fptosi float %i.hr to i32               ; 7 uses
  %i.ht = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.hu = add nsw i32 %i.hs, 1                    ; 2 uses
  %i.hv = sitofp fast i32 %i.hq to float
  %i.hw = fsub fast float %i.hb, %i.hv            ; 3 uses
  %i.hx = sitofp fast i32 %i.hs to float
  %i.hy = fsub fast float %i.hg, %i.hx            ; 3 uses
  %i.hz = fsub fast float 1.000000e+00, %i.hw     ; 2 uses
  %i.ia = fsub fast float 1.000000e+00, %i.hy     ; 2 uses
  %i.ib = icmp sgt i32 %i.hq, -1                  ; 2 uses
  %i.ic = icmp sgt i32 %i.hs, -1                  ; 2 uses
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false     ; 2 uses
  %i.ie = add nsw i32 %i.hm, -1
  %i.if = icmp sgt i32 %i.ie, %i.hs
  %i.ig = select i1 %i.ib, i1 %i.if, i1 false     ; 2 uses
  %i.ih = add nsw i32 %i.hj, -1
  %i.ii = icmp sgt i32 %i.ih, %i.hq               ; 2 uses
  %i.ij = select i1 %i.ii, i1 %i.ic, i1 false     ; 2 uses
  %i.ik = add nsw i32 %i.hm, -1
  %i.il = icmp sgt i32 %i.ik, %i.hs
  %i.im = select i1 %i.ii, i1 %i.il, i1 false     ; 2 uses
  %i.in = mul nsw i32 %i.hm, %i.hq
  %i.io = add nsw i32 %i.in, %i.hs
  %.0318.us = select i1 %i.id, i32 %i.io, i32 0
  %i.ip = mul nsw i32 %i.hm, %i.hq
  %i.iq = add nsw i32 %i.ip, %i.hu
  %.0316.us = select i1 %i.ig, i32 %i.iq, i32 0
  %i.ir = mul nsw i32 %i.hm, %i.ht
  %i.is = add nsw i32 %i.ir, %i.hs
  %.0314.us = select i1 %i.ij, i32 %i.is, i32 0
  %i.it = mul nsw i32 %i.hm, %i.ht
  %i.iu = add nsw i32 %i.it, %i.hu
  %.0312.us = select i1 %i.im, i32 %i.iu, i32 0
  %i.iv = fmul fast float %i.ia, %i.hz
  %i.iw = fmul fast float %i.hz, %i.hy
  %i.ix = fmul fast float %i.ia, %i.hw
  %i.iy = fmul fast float %i.hy, %i.hw
  br label %.thread908.us

.thread908.us:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.iz = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ] ; 9 uses
  %.0327.us = phi nsz float [ %i.iv, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.0326.us = phi nsz float [ %i.iw, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.0325.us = phi nsz float [ %i.ix, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.0324.us = phi nsz float [ %i.iy, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ] ; 6 uses
  %.0323.us = phi i1 [ %i.id, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ] ; 9 uses
  %.0322.us = phi i1 [ %i.ig, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ] ; 9 uses
  %.0321.us = phi i1 [ %i.ij, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ] ; 9 uses
  %.0320.us = phi i1 [ %i.im, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ] ; 6 uses
  %.1319.us = phi i32 [ %.0318.us, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.1317.us = phi i32 [ %.0316.us, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.1315.us = phi i32 [ %.0314.us, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.1313.us = phi i32 [ %.0312.us, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  br i1 %i.ch, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %.loopexit.us
  %indvars.iv1075 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1076, %.loopexit.us ] ; 2 uses
  %.3958.us = phi float [ %.2969.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.5.us, %.loopexit.us ] ; 11 uses
  %.4340957.us = phi <16 x float> [ %.3339968.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6.us113011341141, %.loopexit.us ] ; 5 uses
  %.2344956.us = phi ptr [ %.1343967.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.10.us, %.loopexit.us ] ; 7 uses
  %.4883955.us = phi <4 x float> [ %.3882966.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6885.us1142, %.loopexit.us ] ; 9 uses
  %.4890954.us = phi <8 x float> [ %.3889965.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6892.us11351140, %.loopexit.us ] ; 7 uses
  %.reass.us = mul i64 %factor.op.mul.us, %indvars.iv1075
  %i.ja = getelementptr inbounds nuw i8, ptr %i.vh, i64 %.reass.us ; 16 uses
  br i1 %i.vl, label %bb.n, label %.loopexit921.us

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.jb = load i32, ptr %26, align 4, !tbaa !58   ; 11 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %bb.n
  %i.jd = mul nsw i32 %i.jb, %.1319.us
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.je
  %i.jg = mul nsw i32 %i.jb, %.1317.us
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jh
  %i.jj = mul nsw i32 %i.jb, %.1315.us
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jk
  %i.jm = mul nsw i32 %i.jb, %.1313.us
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jn
  br i1 %i.iz, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us989.preheader

.lr.ph.split.us989.preheader:                     ; preds = %.lr.ph.us
  %xtraiter = and i32 %i.jb, 7                    ; 3 uses
  %i.jp = icmp ult i32 %i.jb, 8
  br i1 %i.jp, label %.lr.ph.split.us989.epil.preheader, label %.lr.ph.split.us989.preheader.new

.lr.ph.split.us989.preheader.new:                 ; preds = %.lr.ph.split.us989.preheader
  %unroll_iter = and i32 %i.jb, 2147483640
  br label %.lr.ph.split.us989

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.jb to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us989:                               ; preds = %.lr.ph.split.us989, %.lr.ph.split.us989.preheader.new
  %.5341925.us992 = phi <16 x float> [ %.4340957.us, %.lr.ph.split.us989.preheader.new ], [ %i.km, %.lr.ph.split.us989 ]
  %.3345924.us993 = phi ptr [ %.2344956.us, %.lr.ph.split.us989.preheader.new ], [ %i.kn, %.lr.ph.split.us989 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.split.us989.preheader.new ], [ %niter.next.7, %.lr.ph.split.us989 ]
  %i.jq = load <16 x float>, ptr %.3345924.us993, align 64, !tbaa !63
  %i.jr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.jq, <16 x float> nofpclass(nan inf) %.5341925.us992)
  %i.js = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 64
  %i.jt = load <16 x float>, ptr %i.js, align 64, !tbaa !63
  %i.ju = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.jt, <16 x float> nofpclass(nan inf) %i.jr)
  %i.jv = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 128
  %i.jw = load <16 x float>, ptr %i.jv, align 64, !tbaa !63
  %i.jx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.jw, <16 x float> nofpclass(nan inf) %i.ju)
  %i.jy = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 192
  %i.jz = load <16 x float>, ptr %i.jy, align 64, !tbaa !63
  %i.ka = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.jz, <16 x float> nofpclass(nan inf) %i.jx)
  %i.kb = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 256
  %i.kc = load <16 x float>, ptr %i.kb, align 64, !tbaa !63
  %i.kd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.kc, <16 x float> nofpclass(nan inf) %i.ka)
  %i.ke = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 320
  %i.kf = load <16 x float>, ptr %i.ke, align 64, !tbaa !63
  %i.kg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.kf, <16 x float> nofpclass(nan inf) %i.kd)
  %i.kh = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 384
  %i.ki = load <16 x float>, ptr %i.kh, align 64, !tbaa !63
  %i.kj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.ki, <16 x float> nofpclass(nan inf) %i.kg)
  %i.kk = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 448
  %i.kl = load <16 x float>, ptr %i.kk, align 64, !tbaa !63
  %i.km = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %spec.select910.us990, <16 x float> nofpclass(nan inf) %i.kl, <16 x float> nofpclass(nan inf) %i.kj) ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.3345924.us993, i64 512 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit921.us.loopexit1026.unr-lcssa, label %.lr.ph.split.us989, !llvm.loop !185

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next, %bb.v ] ; 5 uses
  %.5341925.us.us = phi <16 x float> [ %.4340957.us, %.lr.ph.split.us.us.preheader ], [ %i.lm, %bb.v ]
  %.3345924.us.us = phi ptr [ %.2344956.us, %.lr.ph.split.us.us.preheader ], [ %i.ln, %bb.v ] ; 2 uses
  br i1 %.0323.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.us.us
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !38
  %.scalar = fmul fast float %i.kp, %.0327.us
  %i.kq = insertelement <16 x float> poison, float %.scalar, i64 0
  %i.kr = shufflevector <16 x float> %i.kq, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.us.us
  %i.ks = phi <16 x float> [ %i.kr, %bb.o ], [ zeroinitializer, %.lr.ph.split.us.us ]
  br i1 %.0322.us, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !38
  %i.kv = insertelement <16 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <16 x float> %i.kv, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kx = phi fast <16 x float> [ %i.kw, %bb.q ], [ zeroinitializer, %bb.p ]
end_hunk_1
