Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_dither?download=true
inline.NumInlined: 106
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process:bb.a
  %i.ob = select reassoc nsz arcp contract afn <8 x i1> %i.oa, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.oc = select reassoc nsz arcp contract afn <8 x i1> %i.nx, <8 x float> %i.ob, <8 x float> %i.nz ; 3 uses
  %wide.gep117 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oc, <8 x ptr> align 4 %wide.gep117, <8 x i1> splat (i1 true)), !tbaa !88, !alias.scope !143, !noalias !146
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.nq, %broadcast.splat100
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.nw, %broadcast.splat102
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %broadcast.splat
  %i.og = fadd reassoc nsz arcp contract afn <8 x float> %i.oe, %i.od
  %i.oh = fadd reassoc nsz arcp contract afn <8 x float> %i.og, %i.of
  %i.oi = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, splat (float -5.000000e-01)
  %i.oj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.oi)
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %broadcast.splat106 ; 4 uses
  %wide.gep118 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep111, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep118, <8 x i1> %broadcast.splat104, <8 x float> poison), !tbaa !88, !alias.scope !146, !noalias !138 ; 4 uses
  %i.ol = fcmp reassoc nsz arcp contract afn ult <8 x float> %wide.masked.gather, zeroinitializer
  %i.om = fcmp ord <8 x float> %wide.masked.gather, zeroinitializer
  %i.on = select reassoc nsz arcp contract afn <8 x i1> %i.om, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.oo = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, splat (float 1.000000e+00)
  %i.op = select reassoc nsz arcp contract afn <8 x i1> %i.oo, <8 x float> %wide.masked.gather, <8 x float> splat (float 1.000000e+00)
  %i.oq = select reassoc nsz arcp contract afn <8 x i1> %i.ol, <8 x float> %i.on, <8 x float> %i.op
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %i.nq, %broadcast.splat108
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.or, splat (float -5.000000e-01)
  %i.ot = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.os)
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.ot, %broadcast.splat106
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %i.nw, %broadcast.splat108
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.ov, splat (float -5.000000e-01)
  %i.ox = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.ow)
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %i.ox, %broadcast.splat106
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %broadcast.splat108
  %i.pa = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, splat (float -5.000000e-01)
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pa)
  %i.pc = fmul reassoc nsz arcp contract afn <8 x float> %i.pb, %broadcast.splat106
  %i.pd = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %broadcast.splat108
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pd, splat (float -5.000000e-01)
  %i.pf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pe)
  %i.pg = fmul reassoc nsz arcp contract afn <8 x float> %i.pf, %broadcast.splat106
  %predphi = select i1 %.2.i181.i, <8 x float> %i.ou, <8 x float> %i.ok
  %predphi119 = select i1 %.2.i181.i, <8 x float> %i.oy, <8 x float> %i.ok
  %predphi120 = select i1 %.2.i181.i, <8 x float> %i.pc, <8 x float> %i.ok
  %predphi121 = select i1 %.2.i181.i, <8 x float> %i.pg, <8 x float> %i.ok
  %i.ph = shufflevector <8 x float> %predphi, <8 x float> %predphi119, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pi = shufflevector <8 x float> %predphi120, <8 x float> %predphi121, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec122 = shufflevector <16 x float> %i.ph, <16 x float> %i.pi, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec122, ptr %i.nj, align 4, !tbaa !88, !alias.scope !148, !noalias !151
  %index.next123 = add nuw i64 %index110, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.pj = icmp eq i64 %index.next123, %n.vec98
  br i1 %i.pj, label %scalar.ph95.preheader, label %vector.body109, !llvm.loop !153

scalar.ph95.preheader:                            ; preds = %vector.body109, %vector.memcheck89, %.lr.ph315.i
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.lr.ph315.i ], [ %n.vec98, %vector.body109 ]
  %i.pk = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.preheader, %_nearest_color.exit.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i, %_nearest_color.exit.i ], [ %indvars.iv351.i.ph, %scalar.ph95.preheader ] ; 2 uses
  %i.po = shl nuw nsw i64 %indvars.iv351.i, 2     ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.po ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.po ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.ps = fcmp reassoc nsz arcp contract afn ult float %i.pr, 0.000000e+00
  %i.pt = fcmp reassoc nsz arcp contract afn olt float %i.pr, 1.000000e+00
  %i.pu = select reassoc nsz arcp contract afn i1 %i.pt, float %i.pr, float 1.000000e+00
  %i.pv = fcmp ord float %i.pr, 0.000000e+00
  %i.pw = select reassoc nsz arcp contract afn i1 %i.pv, float 0.000000e+00, float 5.000000e-01
  %i.px = select reassoc nsz arcp contract afn i1 %i.ps, float %i.pw, float %i.pu ; 3 uses
  store float %i.px, ptr %i.pp, align 4, !tbaa !88, !alias.scope !138, !noalias !141
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.qa = load <2 x float>, ptr %i.py, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.qb = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.qa, zeroinitializer
  %i.qc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.qa, splat (float 1.000000e+00)
  %i.qd = select <2 x i1> %i.qc, <2 x float> %i.qa, <2 x float> splat (float 1.000000e+00)
  %i.qe = fcmp ord <2 x float> %i.qa, zeroinitializer
  %i.qf = select <2 x i1> %i.qe, <2 x float> zeroinitializer, <2 x float> splat (float 5.000000e-01)
  %i.qg = select <2 x i1> %i.qb, <2 x float> %i.qf, <2 x float> %i.qd ; 3 uses
  store <2 x float> %i.qg, ptr %i.pz, align 4, !tbaa !88, !alias.scope !138, !noalias !141
  br i1 %.2.i181.i, label %.preheader.preheader.i.i, label %.loopexit.loopexit32.i.i

.preheader.preheader.i.i:                         ; preds = %scalar.ph95
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.qj = fcmp reassoc nsz arcp contract afn ult float %i.qi, 0.000000e+00
  %i.qk = fcmp ord float %i.qi, 0.000000e+00
  %i.ql = select reassoc nsz arcp contract afn i1 %i.qk, float 0.000000e+00, float 5.000000e-01
  %i.qm = fcmp reassoc nsz arcp contract afn olt float %i.qi, 1.000000e+00
  %i.qn = select reassoc nsz arcp contract afn i1 %i.qm, float %i.qi, float 1.000000e+00
  %i.qo = select reassoc nsz arcp contract afn i1 %i.qj, float %i.ql, float %i.qn
  %i.qp = insertelement <4 x float> poison, float %i.px, i64 0
  %i.qq = shufflevector <2 x float> %i.qg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qs = insertelement <4 x float> %i.qr, float %i.qo, i64 3
  %i.qt = fmul reassoc nsz arcp contract afn <4 x float> %i.qs, %i.pl
  %i.qu = fadd reassoc nsz arcp contract afn <4 x float> %i.qt, splat (float -5.000000e-01)
  %i.qv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.qu)
  %i.qw = fmul reassoc nsz arcp contract afn <4 x float> %i.qv, %i.pn
  br label %_nearest_color.exit.i

.loopexit.loopexit32.i.i:                         ; preds = %scalar.ph95
  %.reass311.i.reass = fmul reassoc nsz arcp contract afn float %i.px, %factor.op.fmul50
  %i.qx = fmul reassoc nsz arcp contract afn <2 x float> %i.qg, %i.nd ; 2 uses
  %i.qy = extractelement <2 x float> %i.qx, i64 0
  %reass.add = fadd reassoc nsz arcp contract afn float %i.qy, %.reass311.i.reass
  %i.qz = extractelement <2 x float> %i.qx, i64 1
  %reass.add48 = fadd reassoc nsz arcp contract afn float %reass.add, %i.qz
  %i.ra = fadd reassoc nsz arcp contract afn float %reass.add48, -5.000000e-01
  %i.rb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ra)
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.mw
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit.i

_nearest_color.exit.i:                            ; preds = %.loopexit.loopexit32.i.i, %.preheader.preheader.i.i
  %i.rf = phi <4 x float> [ %i.qw, %.preheader.preheader.i.i ], [ %i.re, %.loopexit.loopexit32.i.i ]
  store <4 x float> %i.rf, ptr %i.pp, align 4, !tbaa !88, !alias.scope !148, !noalias !151
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count354.i
  br i1 %exitcond355.not.i, label %_process_floyd_steinberg.exit, label %scalar.ph95, !llvm.loop !154

bb.w:                                             ; preds = %_get_dither_parameters.exit.thread.i
  %wide.trip.count321.i = zext nneg i32 %i.iw to i64 ; 10 uses
  %min.iters.check74 = icmp ult i32 %i.iw, 8
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %bb.w
  %i.rg = shl nuw nsw i64 %wide.trip.count321.i, 4 ; 2 uses
  %scevgep68 = getelementptr i8, ptr %3, i64 %i.rg
  %scevgep69 = getelementptr i8, ptr %2, i64 %i.rg
  %bound070 = icmp ult ptr %3, %scevgep69
  %bound171 = icmp ult ptr %2, %scevgep68
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck67
  %n.vec76 = and i64 %wide.trip.count321.i, 2147483640 ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next85, %vector.body77 ] ; 2 uses
  %i.rh = shl nuw nsw i64 %index78, 2             ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rh
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %wide.vec79 = load <32 x float>, ptr %i.rj, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.rk = fcmp reassoc nsz arcp contract afn ult <32 x float> %wide.vec79, zeroinitializer
  %i.rl = fcmp ord <32 x float> %wide.vec79, zeroinitializer
  %i.rm = select reassoc nsz arcp contract afn <32 x i1> %i.rl, <32 x float> zeroinitializer, <32 x float> splat (float 5.000000e-01)
  %i.rn = fcmp reassoc nsz arcp contract afn olt <32 x float> %wide.vec79, splat (float 1.000000e+00)
  %i.ro = select reassoc nsz arcp contract afn <32 x i1> %i.rn, <32 x float> %wide.vec79, <32 x float> splat (float 1.000000e+00)
  %interleaved.vec84 = select reassoc nsz arcp contract afn <32 x i1> %i.rk, <32 x float> %i.rm, <32 x float> %i.ro
  store <32 x float> %interleaved.vec84, ptr %i.ri, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %index.next85 = add nuw i64 %index78, 8         ; 2 uses
  %i.rp = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.rp, label %middle.block86, label %vector.body77, !llvm.loop !160

middle.block86:                                   ; preds = %vector.body77
  %cmp.n87 = icmp eq i64 %n.vec76, %wide.trip.count321.i
  br i1 %cmp.n87, label %.loopexit, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck67, %bb.w, %middle.block86
  %indvars.iv318.i.ph = phi i64 [ 0, %vector.memcheck67 ], [ 0, %bb.w ], [ %n.vec76, %middle.block86 ] ; 3 uses
  %xtraiter130 = and i64 %wide.trip.count321.i, 3 ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol

scalar.ph73.prol:                                 ; preds = %scalar.ph73.preheader, %scalar.ph73.prol
  %indvars.iv318.i.prol = phi i64 [ %indvars.iv.next319.i.prol, %scalar.ph73.prol ], [ %indvars.iv318.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %prol.iter132 = phi i64 [ %prol.iter132.next, %scalar.ph73.prol ], [ 0, %scalar.ph73.preheader ]
  %i.rq = shl nuw nsw i64 %indvars.iv318.i.prol, 2 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.rt = load <4 x float>, ptr %i.rs, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.ru = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.rt, zeroinitializer
  %i.rv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.rt, splat (float 1.000000e+00)
  %i.rw = select <4 x i1> %i.rv, <4 x float> %i.rt, <4 x float> splat (float 1.000000e+00)
  %i.rx = fcmp ord <4 x float> %i.rt, zeroinitializer
  %i.ry = select <4 x i1> %i.rx, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.rz = select <4 x i1> %i.ru, <4 x float> %i.ry, <4 x float> %i.rw
  store <4 x float> %i.rz, ptr %i.rr, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %indvars.iv.next319.i.prol = add nuw nsw i64 %indvars.iv318.i.prol, 1 ; 2 uses
  %prol.iter132.next = add i64 %prol.iter132, 1   ; 2 uses
  %prol.iter132.cmp.not = icmp eq i64 %prol.iter132.next, %xtraiter130
  br i1 %prol.iter132.cmp.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol, !llvm.loop !161

scalar.ph73.prol.loopexit:                        ; preds = %scalar.ph73.prol, %scalar.ph73.preheader
  %indvars.iv318.i.unr = phi i64 [ %indvars.iv318.i.ph, %scalar.ph73.preheader ], [ %indvars.iv.next319.i.prol, %scalar.ph73.prol ]
  %i.sa = sub nsw i64 %indvars.iv318.i.ph, %wide.trip.count321.i
  %i.sb = icmp ugt i64 %i.sa, -4
  br i1 %i.sb, label %.loopexit, label %scalar.ph73

.loopexit:                                        ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73, %middle.block86
  %i.sc = add nsw i32 %i.iw, -1                   ; 2 uses
  %i.sd = shl nuw nsw i32 %i.sc, 2
  %i.se = zext nneg i32 %i.sd to i64              ; 17 uses
  %i.sf = shl i32 %i.iw, 2                        ; 2 uses
  %i.sg = zext nneg i32 %i.sf to i64              ; 18 uses
  %i.sh = add i32 %i.sf, 4
  %i.si = zext nneg i32 %i.sh to i64              ; 18 uses
  %.not.i39 = icmp eq i32 %i.iu, 0
  %wide.trip.count339.i = zext nneg i32 %i.sc to i64 ; 4 uses
  br i1 %.not.i39, label %.lr.ph297.i, label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.loopexit
  %i.sj = add nsw i32 %i.iy, -2
  %factor.op.fmul227.i = fmul reassoc nnan nsz arcp contract afn float %i.mv, 3.000000e-01 ; 11 uses
  %i.sk = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.sm = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.sl, <float 5.900000e-01, float 1.100000e-01> ; 4 uses
  %i.sn = extractelement <2 x float> %i.sm, i64 1 ; 9 uses
  %i.so = extractelement <2 x float> %i.sm, i64 0 ; 9 uses
  %i.sp = zext nneg i32 %i.sj to i64              ; 2 uses
  %i.sq = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.ss = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.su = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sw = shufflevector <2 x float> %i.sm, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.sx = insertelement <4 x float> %i.sw, float 1.000000e+00, i64 3
  %i.sy = insertelement <4 x float> %i.sx, float %factor.op.fmul227.i, i64 0
  br label %bb.x

.lr.ph297.i:                                      ; preds = %.loopexit
  %factor.op.fmul284.i = fmul reassoc nnan nsz arcp contract afn float %i.mv, 1.100000e-01 ; 4 uses
  %factor.op.fmul286.i = fmul reassoc nnan nsz arcp contract afn float %i.mv, 3.000000e-01 ; 4 uses
  %factor.op.fmul288.i = fmul reassoc nnan nsz arcp contract afn float %i.mv, 5.900000e-01 ; 4 uses
  %i.sz = add nsw i32 %i.iy, -1
  %wide.trip.count344.i = zext nneg i32 %i.sz to i64
  %i.ta = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.tc = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.td = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %bb.z

scalar.ph73:                                      ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i.3, %scalar.ph73 ], [ %indvars.iv318.i.unr, %scalar.ph73.prol.loopexit ] ; 5 uses
  %i.te = shl nuw nsw i64 %indvars.iv318.i, 2     ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.te
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.te
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.th = load <4 x float>, ptr %i.tg, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.ti = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.th, zeroinitializer
  %i.tj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.th, splat (float 1.000000e+00)
  %i.tk = select <4 x i1> %i.tj, <4 x float> %i.th, <4 x float> splat (float 1.000000e+00)
  %i.tl = fcmp ord <4 x float> %i.th, zeroinitializer
  %i.tm = select <4 x i1> %i.tl, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.tn = select <4 x i1> %i.ti, <4 x float> %i.tm, <4 x float> %i.tk
  store <4 x float> %i.tn, ptr %i.tf, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %indvars.iv.next319.i = shl i64 %indvars.iv318.i, 2
  %i.to = add i64 %indvars.iv.next319.i, 4        ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.to
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.to
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.tr = load <4 x float>, ptr %i.tq, align 4, !tbaa !88, !alias.scope !164, !noalias !162 ; 4 uses
  %i.ts = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.tr, zeroinitializer
  %i.tt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.tr, splat (float 1.000000e+00)
  %i.tu = select <4 x i1> %i.tt, <4 x float> %i.tr, <4 x float> splat (float 1.000000e+00)
  %i.tv = fcmp ord <4 x float> %i.tr, zeroinitializer
  %i.tw = select <4 x i1> %i.tv, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.tx = select <4 x i1> %i.ts, <4 x float> %i.tw, <4 x float> %i.tu
  store <4 x float> %i.tx, ptr %i.tp, align 4, !tbaa !88, !alias.scope !162, !noalias !164
  %indvars.iv.next319.i.1 = shl i64 %indvars.iv318.i, 2
  %i.ty = add i64 %indvars.iv.next319.i.1, 8      ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ty
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ty
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ub = load <4 x float>, ptr %i.ua, align 4, !tbaa !88, !alias.scope !168, !noalias !166 ; 4 uses
  %i.uc = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ub, zeroinitializer
  %i.ud = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ub, splat (float 1.000000e+00)
  %i.ue = select <4 x i1> %i.ud, <4 x float> %i.ub, <4 x float> splat (float 1.000000e+00)
  %i.uf = fcmp ord <4 x float> %i.ub, zeroinitializer
  %i.ug = select <4 x i1> %i.uf, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.uh = select <4 x i1> %i.uc, <4 x float> %i.ug, <4 x float> %i.ue
  store <4 x float> %i.uh, ptr %i.tz, align 4, !tbaa !88, !alias.scope !166, !noalias !168
  %indvars.iv.next319.i.2 = shl i64 %indvars.iv318.i, 2
  %i.ui = add i64 %indvars.iv.next319.i.2, 12     ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ui
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ul = load <4 x float>, ptr %i.uk, align 4, !tbaa !88, !alias.scope !172, !noalias !170 ; 4 uses
  %i.um = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ul, zeroinitializer
  %i.un = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ul, splat (float 1.000000e+00)
  %i.uo = select <4 x i1> %i.un, <4 x float> %i.ul, <4 x float> splat (float 1.000000e+00)
  %i.up = fcmp ord <4 x float> %i.ul, zeroinitializer
  %i.uq = select <4 x i1> %i.up, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ur = select <4 x i1> %i.um, <4 x float> %i.uq, <4 x float> %i.uo
  store <4 x float> %i.ur, ptr %i.uj, align 4, !tbaa !88, !alias.scope !170, !noalias !172
  %indvars.iv.next319.i.3 = add nuw nsw i64 %indvars.iv318.i, 4 ; 2 uses
  %exitcond322.not.i.3 = icmp eq i64 %indvars.iv.next319.i.3, %wide.trip.count321.i
  br i1 %exitcond322.not.i.3, label %.loopexit, label %scalar.ph73, !llvm.loop !174

._crit_edge263.i:                                 ; preds = %_nearest_color.exit363.i
  %i.us = and i32 %i.iy, 1
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.y, label %.lr.ph306.i

bb.x:                                             ; preds = %_nearest_color.exit363.i, %.lr.ph262.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph262.i ], [ %indvars.iv.next329.i, %_nearest_color.exit363.i ] ; 2 uses
  %i.uu = shl nuw nsw i64 %indvars.iv328.i, 2
  %i.uv = mul nuw i64 %i.uu, %wide.trip.count321.i ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uv ; 5 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uv ; 15 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i342.i, label %.loopexit.loopexit32.i341.i

.preheader.preheader.i342.i:                      ; preds = %bb.x
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.vb = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vc = insertelement <2 x float> %i.vb, float %i.va, i64 1
  %i.vd = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, %i.sl
  %i.ve = fadd reassoc nsz arcp contract afn <2 x float> %i.vd, splat (float -5.000000e-01)
  %i.vf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ve)
  %i.vg = fmul reassoc nsz arcp contract afn <2 x float> %i.vf, %i.sr ; 3 uses
  %i.vh = extractelement <2 x float> %i.vg, i64 1
  %i.vi = fsub reassoc nsz arcp contract afn float %i.va, %i.vh
  store <2 x float> %i.vg, ptr %i.ux, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.vk = load <2 x float>, ptr %i.vj, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.vl = fmul reassoc nsz arcp contract afn <2 x float> %i.vk, %i.sl
  %i.vm = fadd reassoc nsz arcp contract afn <2 x float> %i.vl, splat (float -5.000000e-01)
  %i.vn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.vm)
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vn, %i.sr ; 2 uses
  %i.vp = fsub reassoc nsz arcp contract afn <2 x float> %i.vk, %i.vo
  store <2 x float> %i.vo, ptr %i.vj, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  %i.vq = extractelement <2 x float> %i.vg, i64 0
  br label %_nearest_color.exit343.i

.loopexit.loopexit32.i341.i:                      ; preds = %bb.x
  %.reass228.i = fmul reassoc nsz arcp contract afn float %i.uy, %factor.op.fmul227.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !88, !alias.scope !180, !noalias !178 ; 2 uses
  %.reass230.i = fmul reassoc nsz arcp contract afn float %i.vs, %i.so
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vu = fadd reassoc nsz arcp contract afn float %.reass228.i, -5.000000e-01
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vu, %.reass230.i
  %i.vw = load <2 x float>, ptr %i.vt, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.vx = extractelement <2 x float> %i.vw, i64 0
  %.reass226.i = fmul reassoc nsz arcp contract afn float %i.vx, %i.sn
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vv, %.reass226.i
  %i.vz = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.vy)
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, %i.mw ; 4 uses
  %i.wb = fsub reassoc nsz arcp contract afn float %i.vs, %i.wa
  %i.wc = insertelement <2 x float> poison, float %i.wa, i64 0
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.we = fsub reassoc nsz arcp contract afn <2 x float> %i.vw, %i.wd
  %i.wf = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.wg, ptr %i.ux, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  br label %_nearest_color.exit343.i

_nearest_color.exit343.i:                         ; preds = %.loopexit.loopexit32.i341.i, %.preheader.preheader.i342.i
  %.sroa.81.0.i = phi nsz float [ %i.vi, %.preheader.preheader.i342.i ], [ %i.wb, %.loopexit.loopexit32.i341.i ]
  %.pn184.i = phi float [ %i.vq, %.preheader.preheader.i342.i ], [ %i.wa, %.loopexit.loopexit32.i341.i ]
  %i.wh = phi <2 x float> [ %i.vp, %.preheader.preheader.i342.i ], [ %i.we, %.loopexit.loopexit32.i341.i ]
  %.sroa.0.0.i = fsub reassoc nsz arcp contract afn float %i.uy, %.pn184.i
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.sg ; 10 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.sg ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  %i.wm = load <4 x float>, ptr %i.wj, align 4, !tbaa !88, !alias.scope !186, !noalias !183 ; 4 uses
  %i.wn = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wm, zeroinitializer
  %i.wo = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wm, splat (float 1.000000e+00)
  %i.wp = select <4 x i1> %i.wo, <4 x float> %i.wm, <4 x float> splat (float 1.000000e+00)
  %i.wq = fcmp ord <4 x float> %i.wm, zeroinitializer
  %i.wr = select <4 x i1> %i.wq, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ws = select <4 x i1> %i.wn, <4 x float> %i.wr, <4 x float> %i.wp
  store <4 x float> %i.ws, ptr %i.wi, align 4, !tbaa !88, !alias.scope !183, !noalias !186
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.si ; 3 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.wv = load <4 x float>, ptr %i.wu, align 4, !tbaa !88, !alias.scope !191, !noalias !188 ; 4 uses
  %i.ww = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wv, zeroinitializer
  %i.wx = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wv, splat (float 1.000000e+00)
  %i.wy = select <4 x i1> %i.wx, <4 x float> %i.wv, <4 x float> splat (float 1.000000e+00)
  %i.wz = fcmp ord <4 x float> %i.wv, zeroinitializer
  %i.xa = select <4 x i1> %i.wz, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.xb = select <4 x i1> %i.ww, <4 x float> %i.xa, <4 x float> %i.wy
  store <4 x float> %i.xb, ptr %i.wt, align 4, !tbaa !88, !alias.scope !188, !noalias !191
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ux, i64 16 ; 7 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ux, i64 20 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ux, i64 24 ; 2 uses
  %i.xf = insertelement <4 x float> poison, float %.sroa.0.0.i, i64 0
  %i.xg = insertelement <4 x float> %i.xf, float %.sroa.81.0.i, i64 1
  %i.xh = shufflevector <2 x float> %i.wh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xi = shufflevector <4 x float> %i.xg, <4 x float> %i.xh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.yo = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.yn)
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yo, %i.mw ; 3 uses
  %i.yq = fsub reassoc nsz arcp contract afn float %i.yi, %i.yp
  %i.yr = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fsub reassoc nsz arcp contract afn <2 x float> %i.yl, %i.ys
  %i.yu = insertelement <4 x float> poison, float %i.yp, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit347.i

_nearest_color.exit347.i:                         ; preds = %.loopexit.loopexit32.i345.i, %.preheader.preheader.i346.i
  %.sroa.81.1.i = phi nsz float [ %i.yf, %.preheader.preheader.i346.i ], [ %i.yq, %.loopexit.loopexit32.i345.i ]
  %i.yw = phi <4 x float> [ %i.yc, %.preheader.preheader.i346.i ], [ %i.yv, %.loopexit.loopexit32.i345.i ] ; 2 uses
  %i.yx = phi <2 x float> [ %i.yh, %.preheader.preheader.i346.i ], [ %i.yt, %.loopexit.loopexit32.i345.i ]
  %i.yy = extractelement <4 x float> %i.yw, i64 0
  %.sroa.0.1.i = fsub reassoc nsz arcp contract afn float %i.xs, %i.yy
  store <4 x float> %i.yw, ptr %i.xc, align 4, !tbaa !88, !alias.scope !208, !noalias !211
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.si ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.zc = load <4 x float>, ptr %i.zb, align 4, !tbaa !88, !alias.scope !219, !noalias !216 ; 4 uses
  %i.zd = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.zc, zeroinitializer
  %i.ze = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.zc, splat (float 1.000000e+00)
  %i.zf = select <4 x i1> %i.ze, <4 x float> %i.zc, <4 x float> splat (float 1.000000e+00)
  %i.zg = fcmp ord <4 x float> %i.zc, zeroinitializer
  %i.zh = select <4 x i1> %i.zg, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.zi = select <4 x i1> %i.zd, <4 x float> %i.zh, <4 x float> %i.zf
  store <4 x float> %i.zi, ptr %i.yz, align 4, !tbaa !88, !alias.scope !216, !noalias !219
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ux, i64 32 ; 2 uses
  %i.zk = insertelement <4 x float> poison, float %.sroa.0.1.i, i64 0
  %i.zl = insertelement <4 x float> %i.zk, float %.sroa.81.1.i, i64 1
  %i.zm = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zn = shufflevector <4 x float> %i.zl, <4 x float> %i.zm, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.zo = fmul reassoc nsz arcp contract afn <4 x float> %i.zn, splat (float 4.375000e-01)
  %i.zp = load <4 x float>, ptr %i.zj, align 4, !tbaa !88, !alias.scope !221, !noalias !224
  %i.zq = fadd reassoc nsz arcp contract afn <4 x float> %i.zp, %i.zo
  store <4 x float> %i.zq, ptr %i.zj, align 4, !tbaa !88, !alias.scope !221, !noalias !224
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.se ; 2 uses
  %i.zs = fmul reassoc nsz arcp contract afn <4 x float> %i.zn, splat (float 1.875000e-01)
  %i.zt = load <4 x float>, ptr %i.zr, align 4, !tbaa !88, !alias.scope !226, !noalias !229
  %i.zu = fadd reassoc nsz arcp contract afn <4 x float> %i.zt, %i.zs
  store <4 x float> %i.zu, ptr %i.zr, align 4, !tbaa !88, !alias.scope !226, !noalias !229
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.sg ; 2 uses
  %i.zw = fmul reassoc nsz arcp contract afn <4 x float> %i.zn, splat (float 3.125000e-01)
  %i.zx = load <4 x float>, ptr %i.zv, align 4, !tbaa !88, !alias.scope !231, !noalias !234
  %i.zy = fadd reassoc nsz arcp contract afn <4 x float> %i.zx, %i.zw
  store <4 x float> %i.zy, ptr %i.zv, align 4, !tbaa !88, !alias.scope !231, !noalias !234
  %i.zz = fmul reassoc nsz arcp contract afn <4 x float> %i.zn, splat (float 6.250000e-02)
  %i.aaa = load <4 x float>, ptr %i.yz, align 4, !tbaa !88, !alias.scope !236, !noalias !239
  %i.aab = fadd reassoc nsz arcp contract afn <4 x float> %i.aaa, %i.zz
  store <4 x float> %i.aab, ptr %i.yz, align 4, !tbaa !88, !alias.scope !236, !noalias !239
  %i.aac = load float, ptr %i.wi, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i350.i, label %.loopexit.loopexit32.i349.i

.preheader.preheader.i350.i:                      ; preds = %_nearest_color.exit347.i
  %i.aad = load <2 x float>, ptr %i.wk, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aae = load <2 x float>, ptr %i.wl, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aaf = shufflevector <2 x float> %i.aad, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aag = insertelement <4 x float> %i.aaf, float %i.aac, i64 0
  %i.aah = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aai = shufflevector <4 x float> %i.aag, <4 x float> %i.aah, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aaj = fmul reassoc nsz arcp contract afn <4 x float> %i.aai, %i.sv
  %i.aak = fadd reassoc nsz arcp contract afn <4 x float> %i.aaj, splat (float -5.000000e-01)
  %i.aal = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aak)
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.st ; 3 uses
  %i.aan = extractelement <4 x float> %i.aam, i64 1
  %i.aao = extractelement <2 x float> %i.aad, i64 0
  %i.aap = fsub reassoc nsz arcp contract afn float %i.aao, %i.aan
  %i.aaq = shufflevector <4 x float> %i.aam, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aar = fsub reassoc nsz arcp contract afn <2 x float> %i.aae, %i.aaq
  br label %.lr.ph224.preheader.i

.loopexit.loopexit32.i349.i:                      ; preds = %_nearest_color.exit347.i
  %.reass240.i = fmul reassoc nsz arcp contract afn float %i.aac, %factor.op.fmul227.i
  %i.aas = load float, ptr %i.wk, align 4, !tbaa !88, !alias.scope !246, !noalias !244 ; 2 uses
  %.reass242.i = fmul reassoc nsz arcp contract afn float %i.aas, %i.so
  %i.aat = fadd reassoc nsz arcp contract afn float %.reass240.i, -5.000000e-01
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aat, %.reass242.i
  %i.aav = load <2 x float>, ptr %i.wl, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aaw = extractelement <2 x float> %i.aav, i64 0
  %.reass238.i = fmul reassoc nsz arcp contract afn float %i.aaw, %i.sn
  %i.aax = fadd reassoc nsz arcp contract afn float %i.aau, %.reass238.i
  %i.aay = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aax)
  %i.aaz = fmul reassoc nsz arcp contract afn float %i.aay, %i.mw ; 3 uses
  %i.aba = fsub reassoc nsz arcp contract afn float %i.aas, %i.aaz
  %i.abb = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abd = fsub reassoc nsz arcp contract afn <2 x float> %i.aav, %i.abc
  %i.abe = insertelement <4 x float> poison, float %i.aaz, i64 0
  %i.abf = shufflevector <4 x float> %i.abe, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph224.preheader.i

.lr.ph224.preheader.i:                            ; preds = %.loopexit.loopexit32.i349.i, %.preheader.preheader.i350.i
  %.sroa.81.2.i = phi nsz float [ %i.aap, %.preheader.preheader.i350.i ], [ %i.aba, %.loopexit.loopexit32.i349.i ]
  %i.abg = phi <4 x float> [ %i.aam, %.preheader.preheader.i350.i ], [ %i.abf, %.loopexit.loopexit32.i349.i ] ; 2 uses
  %i.abh = phi <2 x float> [ %i.aar, %.preheader.preheader.i350.i ], [ %i.abd, %.loopexit.loopexit32.i349.i ]
  %i.abi = extractelement <4 x float> %i.abg, i64 0
  %.sroa.0.2.i = fsub reassoc nsz arcp contract afn float %i.aac, %i.abi
  store <4 x float> %i.abg, ptr %i.wi, align 4, !tbaa !88, !alias.scope !241, !noalias !244
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.sg ; 3 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.sg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.abl = load <4 x float>, ptr %i.abk, align 4, !tbaa !88, !alias.scope !252, !noalias !249 ; 4 uses
  %i.abm = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abl, zeroinitializer
  %i.abn = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abl, splat (float 1.000000e+00)
  %i.abo = select <4 x i1> %i.abn, <4 x float> %i.abl, <4 x float> splat (float 1.000000e+00)
  %i.abp = fcmp ord <4 x float> %i.abl, zeroinitializer
  %i.abq = select <4 x i1> %i.abp, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.abr = select <4 x i1> %i.abm, <4 x float> %i.abq, <4 x float> %i.abo
  store <4 x float> %i.abr, ptr %i.abj, align 4, !tbaa !88, !alias.scope !249, !noalias !252
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.si ; 3 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.abu = load <4 x float>, ptr %i.abt, align 4, !tbaa !88, !alias.scope !257, !noalias !254 ; 4 uses
  %i.abv = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abu, zeroinitializer
  %i.abw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abu, splat (float 1.000000e+00)
  %i.abx = select <4 x i1> %i.abw, <4 x float> %i.abu, <4 x float> splat (float 1.000000e+00)
  %i.aby = fcmp ord <4 x float> %i.abu, zeroinitializer
  %i.abz = select <4 x i1> %i.aby, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aca = select <4 x i1> %i.abv, <4 x float> %i.abz, <4 x float> %i.abx
  store <4 x float> %i.aca, ptr %i.abs, align 4, !tbaa !88, !alias.scope !254, !noalias !257
  %i.acb = getelementptr inbounds nuw i8, ptr %i.wi, i64 16 ; 2 uses
  %i.acc = insertelement <4 x float> poison, float %.sroa.0.2.i, i64 0
  %i.acd = insertelement <4 x float> %i.acc, float %.sroa.81.2.i, i64 1
  %i.ace = shufflevector <2 x float> %i.abh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acf = shufflevector <4 x float> %i.acd, <4 x float> %i.ace, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.acg = fmul reassoc nsz arcp contract afn <4 x float> %i.acf, splat (float 4.375000e-01)
  %i.ach = load <4 x float>, ptr %i.acb, align 4, !tbaa !88, !alias.scope !259, !noalias !262
  %i.aci = fadd reassoc nsz arcp contract afn <4 x float> %i.ach, %i.acg
  store <4 x float> %i.aci, ptr %i.acb, align 4, !tbaa !88, !alias.scope !259, !noalias !262
  %i.acj = fmul reassoc nsz arcp contract afn <4 x float> %i.acf, splat (float 3.125000e-01)
  %i.ack = load <4 x float>, ptr %i.abj, align 4, !tbaa !88, !alias.scope !264, !noalias !267
  %i.acl = fadd reassoc nsz arcp contract afn <4 x float> %i.ack, %i.acj
  store <4 x float> %i.acl, ptr %i.abj, align 4, !tbaa !88, !alias.scope !264, !noalias !267
  %i.acm = fmul reassoc nsz arcp contract afn <4 x float> %i.acf, splat (float 6.250000e-02)
  %i.acn = load <4 x float>, ptr %i.abs, align 4, !tbaa !88, !alias.scope !269, !noalias !272
  %i.aco = fadd reassoc nsz arcp contract afn <4 x float> %i.acn, %i.acm
  store <4 x float> %i.aco, ptr %i.abs, align 4, !tbaa !88, !alias.scope !269, !noalias !272
  br label %.lr.ph224.i

._crit_edge.i:                                    ; preds = %_nearest_color.exit371.i
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.se ; 9 uses
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i354.i, label %.loopexit.loopexit32.i353.i

.preheader.preheader.i354.i:                      ; preds = %._crit_edge.i
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.act = insertelement <2 x float> poison, float %i.acq, i64 0
  %i.acu = insertelement <2 x float> %i.act, float %i.acs, i64 1
  %i.acv = fmul reassoc nsz arcp contract afn <2 x float> %i.acu, %i.sl
  %i.acw = fadd reassoc nsz arcp contract afn <2 x float> %i.acv, splat (float -5.000000e-01)
  %i.acx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.acw)
  %i.acy = fmul reassoc nsz arcp contract afn <2 x float> %i.acx, %i.sr ; 3 uses
  %i.acz = extractelement <2 x float> %i.acy, i64 1
  %i.ada = fsub reassoc nsz arcp contract afn float %i.acs, %i.acz
  store <2 x float> %i.acy, ptr %i.acp, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acp, i64 8 ; 2 uses
  %i.adc = load <2 x float>, ptr %i.adb, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.add = fmul reassoc nsz arcp contract afn <2 x float> %i.adc, %i.sl
  %i.ade = fadd reassoc nsz arcp contract afn <2 x float> %i.add, splat (float -5.000000e-01)
  %i.adf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ade)
  %i.adg = fmul reassoc nsz arcp contract afn <2 x float> %i.adf, %i.sr ; 2 uses
  %i.adh = fsub reassoc nsz arcp contract afn <2 x float> %i.adc, %i.adg
  store <2 x float> %i.adg, ptr %i.adb, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  %i.adi = extractelement <2 x float> %i.acy, i64 0
  br label %_nearest_color.exit355.i

.loopexit.loopexit32.i353.i:                      ; preds = %._crit_edge.i
  %.reass246.i = fmul reassoc nsz arcp contract afn float %i.acq, %factor.op.fmul227.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !88, !alias.scope !279, !noalias !277 ; 2 uses
  %.reass248.i = fmul reassoc nsz arcp contract afn float %i.adk, %i.so
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.adm = fadd reassoc nsz arcp contract afn float %.reass246.i, -5.000000e-01
  %i.adn = fadd reassoc nsz arcp contract afn float %i.adm, %.reass248.i
  %i.ado = load <2 x float>, ptr %i.adl, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.adp = extractelement <2 x float> %i.ado, i64 0
  %.reass244.i = fmul reassoc nsz arcp contract afn float %i.adp, %i.sn
  %i.adq = fadd reassoc nsz arcp contract afn float %i.adn, %.reass244.i
  %i.adr = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.adq)
  %i.ads = fmul reassoc nsz arcp contract afn float %i.adr, %i.mw ; 4 uses
  %i.adt = fsub reassoc nsz arcp contract afn float %i.adk, %i.ads
  %i.adu = insertelement <2 x float> poison, float %i.ads, i64 0
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adw = fsub reassoc nsz arcp contract afn <2 x float> %i.ado, %i.adv
  %i.adx = insertelement <4 x float> poison, float %i.ads, i64 0
  %i.ady = shufflevector <4 x float> %i.adx, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ady, ptr %i.acp, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  br label %_nearest_color.exit355.i

_nearest_color.exit355.i:                         ; preds = %.loopexit.loopexit32.i353.i, %.preheader.preheader.i354.i
  %.sroa.81.3.i = phi nsz float [ %i.ada, %.preheader.preheader.i354.i ], [ %i.adt, %.loopexit.loopexit32.i353.i ]
  %.pn188.i = phi float [ %i.adi, %.preheader.preheader.i354.i ], [ %i.ads, %.loopexit.loopexit32.i353.i ]
  %i.adz = phi <2 x float> [ %i.adh, %.preheader.preheader.i354.i ], [ %i.adw, %.loopexit.loopexit32.i353.i ]
  %.sroa.0.3.i = fsub reassoc nsz arcp contract afn float %i.acq, %.pn188.i
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.se ; 7 uses
  %i.aeb = insertelement <4 x float> poison, float %.sroa.0.3.i, i64 0
  %i.aec = insertelement <4 x float> %i.aeb, float %.sroa.81.3.i, i64 1
  %i.aed = shufflevector <2 x float> %i.adz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aee = shufflevector <4 x float> %i.aec, <4 x float> %i.aed, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aef = fmul reassoc nsz arcp contract afn <4 x float> %i.aee, splat (float 1.875000e-01)
  %i.aeg = load <4 x float>, ptr %i.aea, align 4, !tbaa !88, !alias.scope !282, !noalias !285
  %i.aeh = fadd reassoc nsz arcp contract afn <4 x float> %i.aef, %i.aeg ; 5 uses
  store <4 x float> %i.aeh, ptr %i.aea, align 4, !tbaa !88, !alias.scope !282, !noalias !285
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.sg ; 8 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 4 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 8 ; 3 uses
  %i.ael = fmul reassoc nsz arcp contract afn <4 x float> %i.aee, splat (float 3.125000e-01)
  %i.aem = load <4 x float>, ptr %i.aei, align 4, !tbaa !88, !alias.scope !287, !noalias !290
  %i.aen = fadd reassoc nsz arcp contract afn <4 x float> %i.aem, %i.ael
  store <4 x float> %i.aen, ptr %i.aei, align 4, !tbaa !88, !alias.scope !287, !noalias !290
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.se
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.se
  br i1 %.2.i181.i, label %.preheader.preheader.i358.i, label %.loopexit.loopexit32.i357.i

.preheader.preheader.i358.i:                      ; preds = %_nearest_color.exit355.i
  %i.aeq = fmul reassoc nsz arcp contract afn <4 x float> %i.aeh, %i.sv
  %i.aer = fadd reassoc nsz arcp contract afn <4 x float> %i.aeq, splat (float -5.000000e-01)
  %i.aes = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aer)
  %i.aet = fmul reassoc nsz arcp contract afn <4 x float> %i.aes, %i.st
  br label %_nearest_color.exit359.i

.loopexit.loopexit32.i357.i:                      ; preds = %_nearest_color.exit355.i
  %i.aeu = extractelement <4 x float> %i.aeh, i64 0
  %.reass252.i = fmul reassoc nsz arcp contract afn float %i.aeu, %factor.op.fmul227.i
  %i.aev = shufflevector <4 x float> %i.aeh, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aew = fmul reassoc nsz arcp contract afn <2 x float> %i.aev, %i.sm ; 2 uses
  %i.aex = fadd reassoc nsz arcp contract afn float %.reass252.i, -5.000000e-01
  %i.aey = extractelement <2 x float> %i.aew, i64 0
  %i.aez = fadd reassoc nsz arcp contract afn float %i.aex, %i.aey
  %i.afa = extractelement <2 x float> %i.aew, i64 1
  %i.afb = fadd reassoc nsz arcp contract afn float %i.aez, %i.afa
  %i.afc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.afb)
  %i.afd = fmul reassoc nsz arcp contract afn float %i.afc, %i.mw
  %i.afe = insertelement <4 x float> poison, float %i.afd, i64 0
  %i.aff = shufflevector <4 x float> %i.afe, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit359.i

_nearest_color.exit359.i:                         ; preds = %.loopexit.loopexit32.i357.i, %.preheader.preheader.i358.i
  %i.afg = phi <4 x float> [ %i.aet, %.preheader.preheader.i358.i ], [ %i.aff, %.loopexit.loopexit32.i357.i ] ; 2 uses
  %i.afh = fsub reassoc nsz arcp contract afn <4 x float> %i.aeh, %i.afg ; 4 uses
  store <4 x float> %i.afg, ptr %i.aea, align 4, !tbaa !88, !alias.scope !292, !noalias !295
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.si ; 3 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.afk = load <4 x float>, ptr %i.afj, align 4, !tbaa !88, !alias.scope !300, !noalias !297 ; 4 uses
  %i.afl = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.afk, zeroinitializer
  %i.afm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.afk, splat (float 1.000000e+00)
  %i.afn = select <4 x i1> %i.afm, <4 x float> %i.afk, <4 x float> splat (float 1.000000e+00)
  %i.afo = fcmp ord <4 x float> %i.afk, zeroinitializer
  %i.afp = select <4 x i1> %i.afo, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.afq = select <4 x i1> %i.afl, <4 x float> %i.afp, <4 x float> %i.afn
  store <4 x float> %i.afq, ptr %i.afi, align 4, !tbaa !88, !alias.scope !297, !noalias !300
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 2 uses
  %i.afs = fmul reassoc nsz arcp contract afn <4 x float> %i.afh, splat (float 4.375000e-01)
  %i.aft = load <4 x float>, ptr %i.afr, align 4, !tbaa !88, !alias.scope !302, !noalias !305
  %i.afu = fadd reassoc nsz arcp contract afn <4 x float> %i.aft, %i.afs
  store <4 x float> %i.afu, ptr %i.afr, align 4, !tbaa !88, !alias.scope !302, !noalias !305
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.se ; 2 uses
  %i.afw = fmul reassoc nsz arcp contract afn <4 x float> %i.afh, splat (float 1.875000e-01)
  %i.afx = load <4 x float>, ptr %i.afv, align 4, !tbaa !88, !alias.scope !307, !noalias !310
  %i.afy = fadd reassoc nsz arcp contract afn <4 x float> %i.afx, %i.afw
  store <4 x float> %i.afy, ptr %i.afv, align 4, !tbaa !88, !alias.scope !307, !noalias !310
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.sg ; 2 uses
  %i.aga = fmul reassoc nsz arcp contract afn <4 x float> %i.afh, splat (float 3.125000e-01)
  %i.agb = load <4 x float>, ptr %i.afz, align 4, !tbaa !88, !alias.scope !312, !noalias !315
  %i.agc = fadd reassoc nsz arcp contract afn <4 x float> %i.agb, %i.aga
  store <4 x float> %i.agc, ptr %i.afz, align 4, !tbaa !88, !alias.scope !312, !noalias !315
  %i.agd = fmul reassoc nsz arcp contract afn <4 x float> %i.afh, splat (float 6.250000e-02)
  %i.age = load <4 x float>, ptr %i.afi, align 4, !tbaa !88, !alias.scope !317, !noalias !320
  %i.agf = fadd reassoc nsz arcp contract afn <4 x float> %i.age, %i.agd
  store <4 x float> %i.agf, ptr %i.afi, align 4, !tbaa !88, !alias.scope !317, !noalias !320
  %i.agg = load float, ptr %i.aei, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i362.i, label %.loopexit.loopexit32.i361.i

.preheader.preheader.i362.i:                      ; preds = %_nearest_color.exit359.i
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agg, %i.mv
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, -5.000000e-01
  %i.agj = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agi)
  %i.agk = fmul reassoc nsz arcp contract afn float %i.agj, %i.mw
  %i.agl = load float, ptr %i.aej, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %i.mv
  %i.agn = fadd reassoc nsz arcp contract afn float %i.agm, -5.000000e-01
  %i.ago = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agn)
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.mw ; 2 uses
  %i.agq = fsub reassoc nsz arcp contract afn float %i.agl, %i.agp
  %i.agr = load <2 x float>, ptr %i.aek, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.ags = fmul reassoc nsz arcp contract afn <2 x float> %i.agr, %i.sl
  %i.agt = fadd reassoc nsz arcp contract afn <2 x float> %i.ags, splat (float -5.000000e-01)
  %i.agu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.agt)
  %i.agv = fmul reassoc nsz arcp contract afn <2 x float> %i.agu, %i.sr ; 2 uses
  %i.agw = fsub reassoc nsz arcp contract afn <2 x float> %i.agr, %i.agv
  br label %_nearest_color.exit363.i

.loopexit.loopexit32.i361.i:                      ; preds = %_nearest_color.exit359.i
  %.reass258.i = fmul reassoc nsz arcp contract afn float %i.agg, %factor.op.fmul227.i
  %i.agx = load float, ptr %i.aej, align 4, !tbaa !88, !alias.scope !327, !noalias !325 ; 2 uses
  %.reass260.i = fmul reassoc nsz arcp contract afn float %i.agx, %i.so
  %i.agy = fadd reassoc nsz arcp contract afn float %.reass258.i, -5.000000e-01
  %i.agz = fadd reassoc nsz arcp contract afn float %i.agy, %.reass260.i
  %i.aha = load <2 x float>, ptr %i.aek, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.ahb = extractelement <2 x float> %i.aha, i64 0
  %.reass256.i = fmul reassoc nsz arcp contract afn float %i.ahb, %i.sn
  %i.ahc = fadd reassoc nsz arcp contract afn float %i.agz, %.reass256.i
  %i.ahd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ahc)
  %i.ahe = fmul reassoc nsz arcp contract afn float %i.ahd, %i.mw ; 4 uses
  %i.ahf = fsub reassoc nsz arcp contract afn float %i.agx, %i.ahe
  %i.ahg = insertelement <2 x float> poison, float %i.ahe, i64 0
  %i.ahh = shufflevector <2 x float> %i.ahg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahi = fsub reassoc nsz arcp contract afn <2 x float> %i.aha, %i.ahh
  br label %_nearest_color.exit363.i

_nearest_color.exit363.i:                         ; preds = %.loopexit.loopexit32.i361.i, %.preheader.preheader.i362.i
  %.sink369.i = phi float [ %i.agk, %.preheader.preheader.i362.i ], [ %i.ahe, %.loopexit.loopexit32.i361.i ] ; 2 uses
  %.sink368.i = phi float [ %i.agp, %.preheader.preheader.i362.i ], [ %i.ahe, %.loopexit.loopexit32.i361.i ]
  %.sroa.81.5.i = phi nsz float [ %i.agq, %.preheader.preheader.i362.i ], [ %i.ahf, %.loopexit.loopexit32.i361.i ]
  %i.ahj = phi <2 x float> [ %i.agw, %.preheader.preheader.i362.i ], [ %i.ahi, %.loopexit.loopexit32.i361.i ]
  %i.ahk = phi <2 x float> [ %i.agv, %.preheader.preheader.i362.i ], [ %i.ahh, %.loopexit.loopexit32.i361.i ]
  store float %.sink369.i, ptr %i.aei, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  store float %.sink368.i, ptr %i.aej, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  %.sroa.0.5.i = fsub reassoc nsz arcp contract afn float %i.agg, %.sink369.i
  store <2 x float> %i.ahk, ptr %i.aek, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.se ; 2 uses
  %i.ahm = insertelement <4 x float> poison, float %.sroa.0.5.i, i64 0
  %i.ahn = insertelement <4 x float> %i.ahm, float %.sroa.81.5.i, i64 1
  %i.aho = shufflevector <2 x float> %i.ahj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahp = shufflevector <4 x float> %i.ahn, <4 x float> %i.aho, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ahq = fmul reassoc nsz arcp contract afn <4 x float> %i.ahp, splat (float 1.875000e-01)
  %i.ahr = load <4 x float>, ptr %i.ahl, align 4, !tbaa !88, !alias.scope !330, !noalias !333
  %i.ahs = fadd reassoc nsz arcp contract afn <4 x float> %i.ahr, %i.ahq
  store <4 x float> %i.ahs, ptr %i.ahl, align 4, !tbaa !88, !alias.scope !330, !noalias !333
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.sg ; 2 uses
  %i.ahu = fmul reassoc nsz arcp contract afn <4 x float> %i.ahp, splat (float 3.125000e-01)
  %i.ahv = load <4 x float>, ptr %i.aht, align 4, !tbaa !88, !alias.scope !335, !noalias !338
  %i.ahw = fadd reassoc nsz arcp contract afn <4 x float> %i.ahv, %i.ahu
  store <4 x float> %i.ahw, ptr %i.aht, align 4, !tbaa !88, !alias.scope !335, !noalias !338
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 2 ; 2 uses
  %i.ahx = icmp samesign ult i64 %indvars.iv.next329.i, %i.sp
  br i1 %i.ahx, label %bb.x, label %._crit_edge263.i

.lr.ph224.i:                                      ; preds = %_nearest_color.exit371.i, %.lr.ph224.preheader.i
  %indvars.iv323.i = phi i64 [ 1, %.lr.ph224.preheader.i ], [ %indvars.iv.next324.i, %_nearest_color.exit371.i ] ; 2 uses
  %i.ahy = shl nuw nsw i64 %indvars.iv323.i, 2    ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ahy ; 11 uses
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i366.i, label %.loopexit.loopexit32.i365.i

.preheader.preheader.i366.i:                      ; preds = %.lr.ph224.i
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.aid = insertelement <2 x float> poison, float %i.aia, i64 0
  %i.aie = insertelement <2 x float> %i.aid, float %i.aic, i64 1
  %i.aif = fmul reassoc nsz arcp contract afn <2 x float> %i.aie, %i.sl
  %i.aig = fadd reassoc nsz arcp contract afn <2 x float> %i.aif, splat (float -5.000000e-01)
  %i.aih = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aig)
  %i.aii = fmul reassoc nsz arcp contract afn <2 x float> %i.aih, %i.sr ; 3 uses
  %i.aij = extractelement <2 x float> %i.aii, i64 1
  %i.aik = fsub reassoc nsz arcp contract afn float %i.aic, %i.aij
  store <2 x float> %i.aii, ptr %i.ahz, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8 ; 2 uses
  %i.aim = load <2 x float>, ptr %i.ail, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.ain = fmul reassoc nsz arcp contract afn <2 x float> %i.aim, %i.sl
  %i.aio = fadd reassoc nsz arcp contract afn <2 x float> %i.ain, splat (float -5.000000e-01)
  %i.aip = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aio)
  %i.aiq = fmul reassoc nsz arcp contract afn <2 x float> %i.aip, %i.sr ; 2 uses
  %i.air = fsub reassoc nsz arcp contract afn <2 x float> %i.aim, %i.aiq
  store <2 x float> %i.aiq, ptr %i.ail, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  %i.ais = extractelement <2 x float> %i.aii, i64 0
  br label %_nearest_color.exit367.i

.loopexit.loopexit32.i365.i:                      ; preds = %.lr.ph224.i
  %.reass214.i = fmul reassoc nsz arcp contract afn float %i.aia, %factor.op.fmul227.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !88, !alias.scope !345, !noalias !343 ; 2 uses
  %.reass216.i = fmul reassoc nsz arcp contract afn float %i.aiu, %i.so
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aiw = fadd reassoc nsz arcp contract afn float %.reass214.i, -5.000000e-01
  %i.aix = fadd reassoc nsz arcp contract afn float %i.aiw, %.reass216.i
  %i.aiy = load <2 x float>, ptr %i.aiv, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.aiz = extractelement <2 x float> %i.aiy, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.aiz, %i.sn
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aix, %.reass.i
  %i.ajb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aja)
  %i.ajc = fmul reassoc nsz arcp contract afn float %i.ajb, %i.mw ; 4 uses
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.aiu, %i.ajc
  %i.aje = insertelement <2 x float> poison, float %i.ajc, i64 0
  %i.ajf = shufflevector <2 x float> %i.aje, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajg = fsub reassoc nsz arcp contract afn <2 x float> %i.aiy, %i.ajf
  %i.ajh = insertelement <4 x float> poison, float %i.ajc, i64 0
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aji, ptr %i.ahz, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  br label %_nearest_color.exit367.i

_nearest_color.exit367.i:                         ; preds = %.loopexit.loopexit32.i365.i, %.preheader.preheader.i366.i
  %.sroa.81.6.i = phi nsz float [ %i.aik, %.preheader.preheader.i366.i ], [ %i.ajd, %.loopexit.loopexit32.i365.i ]
  %.pn196.i = phi float [ %i.ais, %.preheader.preheader.i366.i ], [ %i.ajc, %.loopexit.loopexit32.i365.i ]
  %i.ajj = phi <2 x float> [ %i.air, %.preheader.preheader.i366.i ], [ %i.ajg, %.loopexit.loopexit32.i365.i ]
  %.sroa.0.6.i = fsub reassoc nsz arcp contract afn float %i.aia, %.pn196.i
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.si ; 3 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ahy ; 2 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ajn = load <4 x float>, ptr %i.ajm, align 4, !tbaa !88, !alias.scope !351, !noalias !348 ; 4 uses
  %i.ajo = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ajn, zeroinitializer
  %i.ajp = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ajn, splat (float 1.000000e+00)
  %i.ajq = select <4 x i1> %i.ajp, <4 x float> %i.ajn, <4 x float> splat (float 1.000000e+00)
  %i.ajr = fcmp ord <4 x float> %i.ajn, zeroinitializer
  %i.ajs = select <4 x i1> %i.ajr, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ajt = select <4 x i1> %i.ajo, <4 x float> %i.ajs, <4 x float> %i.ajq
  store <4 x float> %i.ajt, ptr %i.ajk, align 4, !tbaa !88, !alias.scope !348, !noalias !351
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  %i.ajv = insertelement <4 x float> poison, float %.sroa.0.6.i, i64 0
  %i.ajw = insertelement <4 x float> %i.ajv, float %.sroa.81.6.i, i64 1
  %i.ajx = shufflevector <2 x float> %i.ajj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajy = shufflevector <4 x float> %i.ajw, <4 x float> %i.ajx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ajz = fmul reassoc nsz arcp contract afn <4 x float> %i.ajy, splat (float 4.375000e-01)
  %i.aka = load <4 x float>, ptr %i.aju, align 4, !tbaa !88, !alias.scope !353, !noalias !356
  %i.akb = fadd reassoc nsz arcp contract afn <4 x float> %i.aka, %i.ajz
  store <4 x float> %i.akb, ptr %i.aju, align 4, !tbaa !88, !alias.scope !353, !noalias !356
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.se ; 7 uses
  %i.akd = fmul reassoc nsz arcp contract afn <4 x float> %i.ajy, splat (float 1.875000e-01)
  %i.ake = load <4 x float>, ptr %i.akc, align 4, !tbaa !88, !alias.scope !358, !noalias !361
  %i.akf = fadd reassoc nsz arcp contract afn <4 x float> %i.ake, %i.akd ; 4 uses
  store <4 x float> %i.akf, ptr %i.akc, align 4, !tbaa !88, !alias.scope !358, !noalias !361
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.sg ; 2 uses
  %i.akh = fmul reassoc nsz arcp contract afn <4 x float> %i.ajy, splat (float 3.125000e-01)
  %i.aki = load <4 x float>, ptr %i.akg, align 4, !tbaa !88, !alias.scope !363, !noalias !366
  %i.akj = fadd reassoc nsz arcp contract afn <4 x float> %i.aki, %i.akh
  store <4 x float> %i.akj, ptr %i.akg, align 4, !tbaa !88, !alias.scope !363, !noalias !366
  %i.akk = fmul reassoc nsz arcp contract afn <4 x float> %i.ajy, splat (float 6.250000e-02)
  %i.akl = load <4 x float>, ptr %i.ajk, align 4, !tbaa !88, !alias.scope !368, !noalias !371
  %i.akm = fadd reassoc nsz arcp contract afn <4 x float> %i.akl, %i.akk
  store <4 x float> %i.akm, ptr %i.ajk, align 4, !tbaa !88, !alias.scope !368, !noalias !371
  br i1 %.2.i181.i, label %.preheader.preheader.i370.i, label %.loopexit.loopexit32.i369.i

.preheader.preheader.i370.i:                      ; preds = %_nearest_color.exit367.i
  %i.akn = fmul reassoc nsz arcp contract afn <4 x float> %i.akf, %i.sv
  %i.ako = fadd reassoc nsz arcp contract afn <4 x float> %i.akn, splat (float -5.000000e-01)
  %i.akp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ako)
  %i.akq = fmul reassoc nsz arcp contract afn <4 x float> %i.akp, %i.st
  br label %_nearest_color.exit371.i

.loopexit.loopexit32.i369.i:                      ; preds = %_nearest_color.exit367.i
  %i.akr = insertelement <4 x float> %i.akf, float -5.000000e-01, i64 3
  %i.aks = fmul reassoc nsz arcp contract afn <4 x float> %i.akr, %i.sy
  %i.akt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aks)
  %i.aku = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.akt)
  %i.akv = fmul reassoc nsz arcp contract afn float %i.aku, %i.mw
  %i.akw = insertelement <4 x float> poison, float %i.akv, i64 0
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit371.i

_nearest_color.exit371.i:                         ; preds = %.loopexit.loopexit32.i369.i, %.preheader.preheader.i370.i
  %i.aky = phi <4 x float> [ %i.akq, %.preheader.preheader.i370.i ], [ %i.akx, %.loopexit.loopexit32.i369.i ] ; 2 uses
  %i.akz = fsub reassoc nsz arcp contract afn <4 x float> %i.akf, %i.aky ; 4 uses
  store <4 x float> %i.aky, ptr %i.akc, align 4, !tbaa !88, !alias.scope !373, !noalias !376
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.si ; 3 uses
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.se
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ald = load <4 x float>, ptr %i.alc, align 4, !tbaa !88, !alias.scope !381, !noalias !378 ; 4 uses
  %i.ale = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ald, zeroinitializer
  %i.alf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ald, splat (float 1.000000e+00)
  %i.alg = select <4 x i1> %i.alf, <4 x float> %i.ald, <4 x float> splat (float 1.000000e+00)
  %i.alh = fcmp ord <4 x float> %i.ald, zeroinitializer
  %i.ali = select <4 x i1> %i.alh, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.alj = select <4 x i1> %i.ale, <4 x float> %i.ali, <4 x float> %i.alg
  store <4 x float> %i.alj, ptr %i.ala, align 4, !tbaa !88, !alias.scope !378, !noalias !381
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akc, i64 16 ; 2 uses
  %i.all = fmul reassoc nsz arcp contract afn <4 x float> %i.akz, splat (float 4.375000e-01)
  %i.alm = load <4 x float>, ptr %i.alk, align 4, !tbaa !88, !alias.scope !383, !noalias !386
  %i.aln = fadd reassoc nsz arcp contract afn <4 x float> %i.alm, %i.all
  store <4 x float> %i.aln, ptr %i.alk, align 4, !tbaa !88, !alias.scope !383, !noalias !386
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.se ; 2 uses
  %i.alp = fmul reassoc nsz arcp contract afn <4 x float> %i.akz, splat (float 1.875000e-01)
  %i.alq = load <4 x float>, ptr %i.alo, align 4, !tbaa !88, !alias.scope !388, !noalias !391
  %i.alr = fadd reassoc nsz arcp contract afn <4 x float> %i.alq, %i.alp
  store <4 x float> %i.alr, ptr %i.alo, align 4, !tbaa !88, !alias.scope !388, !noalias !391
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.sg ; 2 uses
  %i.alt = fmul reassoc nsz arcp contract afn <4 x float> %i.akz, splat (float 3.125000e-01)
  %i.alu = load <4 x float>, ptr %i.als, align 4, !tbaa !88, !alias.scope !393, !noalias !396
  %i.alv = fadd reassoc nsz arcp contract afn <4 x float> %i.alu, %i.alt
  store <4 x float> %i.alv, ptr %i.als, align 4, !tbaa !88, !alias.scope !393, !noalias !396
  %i.alw = fmul reassoc nsz arcp contract afn <4 x float> %i.akz, splat (float 6.250000e-02)
  %i.alx = load <4 x float>, ptr %i.ala, align 4, !tbaa !88, !alias.scope !398, !noalias !401
  %i.aly = fadd reassoc nsz arcp contract afn <4 x float> %i.alx, %i.alw
  store <4 x float> %i.aly, ptr %i.ala, align 4, !tbaa !88, !alias.scope !398, !noalias !401
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next324.i, %wide.trip.count339.i
  br i1 %exitcond327.not.i, label %._crit_edge.i, label %.lr.ph224.i

bb.y:                                             ; preds = %._crit_edge263.i
  %i.alz = shl nuw nsw i64 %i.sp, 2
  %i.ama = mul nuw i64 %i.alz, %wide.trip.count321.i ; 2 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ama ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ama ; 12 uses
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i374.i, label %.loopexit.loopexit32.i373.i

.preheader.preheader.i374.i:                      ; preds = %bb.y
  %i.ame = fmul reassoc nsz arcp contract afn float %i.amd, %i.mv
  %i.amf = fadd reassoc nsz arcp contract afn float %i.ame, -5.000000e-01
  %i.amg = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.amf)
  %i.amh = fmul reassoc nsz arcp contract afn float %i.amg, %i.mw ; 2 uses
  store float %i.amh, ptr %i.amc, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amc, i64 4 ; 2 uses
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.amk = fmul reassoc nsz arcp contract afn float %i.amj, %i.mv
  %i.aml = fadd reassoc nsz arcp contract afn float %i.amk, -5.000000e-01
  %i.amm = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aml)
  %i.amn = fmul reassoc nsz arcp contract afn float %i.amm, %i.mw ; 2 uses
  %i.amo = fsub reassoc nsz arcp contract afn float %i.amj, %i.amn
  store float %i.amn, ptr %i.ami, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 2 uses
  %i.amq = load <2 x float>, ptr %i.amp, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.amr = fmul reassoc nsz arcp contract afn <2 x float> %i.amq, %i.sl
  %i.ams = fadd reassoc nsz arcp contract afn <2 x float> %i.amr, splat (float -5.000000e-01)
  %i.amt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ams)
  %i.amu = fmul reassoc nsz arcp contract afn <2 x float> %i.amt, %i.sr ; 2 uses
  %i.amv = fsub reassoc nsz arcp contract afn <2 x float> %i.amq, %i.amu
  store <2 x float> %i.amu, ptr %i.amp, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  br label %.lr.ph271.preheader.i

.loopexit.loopexit32.i373.i:                      ; preds = %bb.y
  %i.amw = fmul reassoc nsz arcp contract afn float %i.amd, 3.000000e-01
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amc, i64 4
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !88, !alias.scope !408, !noalias !406 ; 2 uses
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amy, 5.900000e-01
  %i.ana = fadd reassoc nsz arcp contract afn float %i.amz, %i.amw
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.anc = load <2 x float>, ptr %i.anb, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.and = extractelement <2 x float> %i.anc, i64 0
  %i.ane = fmul reassoc nsz arcp contract afn float %i.and, 1.100000e-01
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ana, %i.ane
  %i.ang = fmul reassoc nsz arcp contract afn float %i.anf, %i.mv
  %i.anh = fadd reassoc nsz arcp contract afn float %i.ang, -5.000000e-01
  %i.ani = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.anh)
  %i.anj = fmul reassoc nsz arcp contract afn float %i.ani, %i.mw ; 4 uses
  %i.ank = fsub reassoc nsz arcp contract afn float %i.amy, %i.anj
  %i.anl = insertelement <2 x float> poison, float %i.anj, i64 0
  %i.anm = shufflevector <2 x float> %i.anl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ann = fsub reassoc nsz arcp contract afn <2 x float> %i.anc, %i.anm
  %i.ano = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.anp, ptr %i.amc, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  br label %.lr.ph271.preheader.i

.lr.ph271.preheader.i:                            ; preds = %.loopexit.loopexit32.i373.i, %.preheader.preheader.i374.i
  %.sroa.81.8.i = phi nsz float [ %i.amo, %.preheader.preheader.i374.i ], [ %i.ank, %.loopexit.loopexit32.i373.i ]
  %.pn.i = phi float [ %i.amh, %.preheader.preheader.i374.i ], [ %i.anj, %.loopexit.loopexit32.i373.i ]
  %i.anq = phi <2 x float> [ %i.amv, %.preheader.preheader.i374.i ], [ %i.ann, %.loopexit.loopexit32.i373.i ]
  %.sroa.0.8.i = fsub reassoc nsz arcp contract afn float %i.amd, %.pn.i
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.sg ; 3 uses
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %i.sg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ant = load <4 x float>, ptr %i.ans, align 4, !tbaa !88, !alias.scope !414, !noalias !411 ; 4 uses
  %i.anu = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ant, zeroinitializer
  %i.anv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ant, splat (float 1.000000e+00)
  %i.anw = select <4 x i1> %i.anv, <4 x float> %i.ant, <4 x float> splat (float 1.000000e+00)
  %i.anx = fcmp ord <4 x float> %i.ant, zeroinitializer
  %i.any = select <4 x i1> %i.anx, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.anz = select <4 x i1> %i.anu, <4 x float> %i.any, <4 x float> %i.anw
  store <4 x float> %i.anz, ptr %i.anr, align 4, !tbaa !88, !alias.scope !411, !noalias !414
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.si ; 3 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %i.si ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.aoc = load <4 x float>, ptr %i.aob, align 4, !tbaa !88, !alias.scope !419, !noalias !416 ; 4 uses
  %i.aod = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.aoc, zeroinitializer
  %i.aoe = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aoc, splat (float 1.000000e+00)
  %i.aof = select <4 x i1> %i.aoe, <4 x float> %i.aoc, <4 x float> splat (float 1.000000e+00)
  %i.aog = fcmp ord <4 x float> %i.aoc, zeroinitializer
  %i.aoh = select <4 x i1> %i.aog, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aoi = select <4 x i1> %i.aod, <4 x float> %i.aoh, <4 x float> %i.aof
  store <4 x float> %i.aoi, ptr %i.aoa, align 4, !tbaa !88, !alias.scope !416, !noalias !419
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.amc, i64 16 ; 2 uses
  %i.aok = insertelement <4 x float> poison, float %.sroa.0.8.i, i64 0
  %i.aol = insertelement <4 x float> %i.aok, float %.sroa.81.8.i, i64 1
  %i.aom = shufflevector <2 x float> %i.anq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aon = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.aoo = fmul reassoc nsz arcp contract afn <4 x float> %i.aon, splat (float 4.375000e-01)
  %i.aop = load <4 x float>, ptr %i.aoj, align 4, !tbaa !88, !alias.scope !421, !noalias !424
  %i.aoq = fadd reassoc nsz arcp contract afn <4 x float> %i.aop, %i.aoo
  store <4 x float> %i.aoq, ptr %i.aoj, align 4, !tbaa !88, !alias.scope !421, !noalias !424
  %i.aor = fmul reassoc nsz arcp contract afn <4 x float> %i.aon, splat (float 3.125000e-01)
  %i.aos = load <4 x float>, ptr %i.anr, align 4, !tbaa !88, !alias.scope !426, !noalias !429
  %i.aot = fadd reassoc nsz arcp contract afn <4 x float> %i.aos, %i.aor
  store <4 x float> %i.aot, ptr %i.anr, align 4, !tbaa !88, !alias.scope !426, !noalias !429
  %i.aou = fmul reassoc nsz arcp contract afn <4 x float> %i.aon, splat (float 6.250000e-02)
  %i.aov = load <4 x float>, ptr %i.aoa, align 4, !tbaa !88, !alias.scope !431, !noalias !434
  %i.aow = fadd reassoc nsz arcp contract afn <4 x float> %i.aov, %i.aou
  store <4 x float> %i.aow, ptr %i.aoa, align 4, !tbaa !88, !alias.scope !431, !noalias !434
  br label %.lr.ph271.i

._crit_edge272.i:                                 ; preds = %_nearest_color.exit383.i
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.se ; 9 uses
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i378.i, label %.loopexit.loopexit32.i377.i

.preheader.preheader.i378.i:                      ; preds = %._crit_edge272.i
  %i.aoz = fmul reassoc nsz arcp contract afn float %i.aoy, %i.mv
  %i.apa = fadd reassoc nsz arcp contract afn float %i.aoz, -5.000000e-01
  %i.apb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.apa)
  %i.apc = fmul reassoc nsz arcp contract afn float %i.apb, %i.mw ; 2 uses
  store float %i.apc, ptr %i.aox, align 4, !tbaa !88, !alias.scope !436, !noalias !439
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aox, i64 4 ; 2 uses
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 2 uses
  %i.apf = fmul reassoc nsz arcp contract afn float %i.ape, %i.mv
  %i.apg = fadd reassoc nsz arcp contract afn float %i.apf, -5.000000e-01
  %i.aph = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.apg)
  %i.api = fmul reassoc nsz arcp contract afn float %i.aph, %i.mw ; 2 uses
  %i.apj = fsub reassoc nsz arcp contract afn float %i.ape, %i.api
  store float %i.api, ptr %i.apd, align 4, !tbaa !88, !alias.scope !436, !noalias !439
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aox, i64 8 ; 2 uses
  %i.apl = load <2 x float>, ptr %i.apk, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 2 uses
  %i.apm = fmul reassoc nsz arcp contract afn <2 x float> %i.apl, %i.sl
  %i.apn = fadd reassoc nsz arcp contract afn <2 x float> %i.apm, splat (float -5.000000e-01)
  %i.apo = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.apn)
  %i.app = fmul reassoc nsz arcp contract afn <2 x float> %i.apo, %i.sr ; 2 uses
  %i.apq = fsub reassoc nsz arcp contract afn <2 x float> %i.apl, %i.app
  store <2 x float> %i.app, ptr %i.apk, align 4, !tbaa !88, !alias.scope !436, !noalias !439
  br label %_nearest_color.exit379.i
end_hunk_1
