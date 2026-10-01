Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_dither?download=true
inline.NumInlined: 106
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process:bb.a
  %i.oc = select reassoc nsz arcp contract afn <8 x i1> %i.ob, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.od = select reassoc nsz arcp contract afn <8 x i1> %i.ny, <8 x float> %i.oc, <8 x float> %i.oa ; 3 uses
  %wide.gep123 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.od, <8 x ptr> align 4 %wide.gep123, <8 x i1> splat (i1 true)), !tbaa !396, !alias.scope !430, !noalias !431
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.nr, %broadcast.splat106
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.nx, %broadcast.splat108
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %broadcast.splat
  %i.oh = fadd reassoc nsz arcp contract afn <8 x float> %i.of, %i.oe
  %i.oi = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, %i.og
  %i.oj = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, splat (float -5.000000e-01)
  %i.ok = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.oj)
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %broadcast.splat112 ; 4 uses
  %wide.gep124 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep117, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep124, <8 x i1> %broadcast.splat110, <8 x float> poison), !tbaa !396, !alias.scope !431, !noalias !428 ; 4 uses
  %i.om = fcmp reassoc nsz arcp contract afn ult <8 x float> %wide.masked.gather, zeroinitializer
  %i.on = fcmp ord <8 x float> %wide.masked.gather, zeroinitializer
  %i.oo = select reassoc nsz arcp contract afn <8 x i1> %i.on, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.op = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, splat (float 1.000000e+00)
  %i.oq = select reassoc nsz arcp contract afn <8 x i1> %i.op, <8 x float> %wide.masked.gather, <8 x float> splat (float 1.000000e+00)
  %i.or = select reassoc nsz arcp contract afn <8 x i1> %i.om, <8 x float> %i.oo, <8 x float> %i.oq
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.nr, %broadcast.splat114
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.os, splat (float -5.000000e-01)
  %i.ou = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.ot)
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %i.ou, %broadcast.splat112
  %i.ow = fmul reassoc nsz arcp contract afn <8 x float> %i.nx, %broadcast.splat114
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, splat (float -5.000000e-01)
  %i.oy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.ox)
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %i.oy, %broadcast.splat112
  %i.pa = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %broadcast.splat114
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.pa, splat (float -5.000000e-01)
  %i.pc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pb)
  %i.pd = fmul reassoc nsz arcp contract afn <8 x float> %i.pc, %broadcast.splat112
  %i.pe = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %broadcast.splat114
  %i.pf = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, splat (float -5.000000e-01)
  %i.pg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pf)
  %i.ph = fmul reassoc nsz arcp contract afn <8 x float> %i.pg, %broadcast.splat112
  %predphi = select i1 %.2.i181.i, <8 x float> %i.ov, <8 x float> %i.ol
  %predphi125 = select i1 %.2.i181.i, <8 x float> %i.oz, <8 x float> %i.ol
  %predphi126 = select i1 %.2.i181.i, <8 x float> %i.pd, <8 x float> %i.ol
  %predphi127 = select i1 %.2.i181.i, <8 x float> %i.ph, <8 x float> %i.ol
  %i.pi = shufflevector <8 x float> %predphi, <8 x float> %predphi125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pj = shufflevector <8 x float> %predphi126, <8 x float> %predphi127, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec128 = shufflevector <16 x float> %i.pi, <16 x float> %i.pj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec128, ptr %i.nk, align 4, !tbaa !396, !alias.scope !432, !noalias !433
  %index.next129 = add nuw i64 %index116, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.pk = icmp eq i64 %index.next129, %n.vec104
  br i1 %i.pk, label %scalar.ph97.preheader, label %vector.body115, !llvm.loop !126

scalar.ph97.preheader:                            ; preds = %vector.body115, %vector.memcheck99, %.lr.ph315.i
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck99 ], [ 0, %.lr.ph315.i ], [ %n.vec104, %vector.body115 ]
  %i.pl = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pn = insertelement <4 x float> poison, float %i.my, i64 0
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph97

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %_nearest_color.exit.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i, %_nearest_color.exit.i ], [ %indvars.iv351.i.ph, %scalar.ph97.preheader ] ; 2 uses
  %i.pp = shl nuw nsw i64 %indvars.iv351.i, 2     ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pp ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pp ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !396, !alias.scope !429, !noalias !428 ; 4 uses
  %i.pt = fcmp reassoc nsz arcp contract afn ult float %i.ps, 0.000000e+00
  %i.pu = fcmp reassoc nsz arcp contract afn olt float %i.ps, 1.000000e+00
  %i.pv = select reassoc nsz arcp contract afn i1 %i.pu, float %i.ps, float 1.000000e+00
  %i.pw = fcmp ord float %i.ps, 0.000000e+00
  %i.px = select reassoc nsz arcp contract afn i1 %i.pw, float 0.000000e+00, float 5.000000e-01
  %i.py = select reassoc nsz arcp contract afn i1 %i.pt, float %i.px, float %i.pv ; 3 uses
  store float %i.py, ptr %i.pq, align 4, !tbaa !396, !alias.scope !428, !noalias !429
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.qb = load <2 x float>, ptr %i.pz, align 4, !tbaa !396, !alias.scope !429, !noalias !428 ; 4 uses
  %i.qc = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.qb, zeroinitializer
  %i.qd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.qb, splat (float 1.000000e+00)
  %i.qe = select <2 x i1> %i.qd, <2 x float> %i.qb, <2 x float> splat (float 1.000000e+00)
  %i.qf = fcmp ord <2 x float> %i.qb, zeroinitializer
  %i.qg = select <2 x i1> %i.qf, <2 x float> zeroinitializer, <2 x float> splat (float 5.000000e-01)
  %i.qh = select <2 x i1> %i.qc, <2 x float> %i.qg, <2 x float> %i.qe ; 4 uses
  store <2 x float> %i.qh, ptr %i.qa, align 4, !tbaa !396, !alias.scope !428, !noalias !429
  br i1 %.2.i181.i, label %.preheader.preheader.i.i, label %.loopexit.loopexit32.i.i

.preheader.preheader.i.i:                         ; preds = %scalar.ph97
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !396, !alias.scope !429, !noalias !428 ; 4 uses
  %i.qk = fcmp reassoc nsz arcp contract afn ult float %i.qj, 0.000000e+00
  %i.ql = fcmp ord float %i.qj, 0.000000e+00
  %i.qm = select reassoc nsz arcp contract afn i1 %i.ql, float 0.000000e+00, float 5.000000e-01
  %i.qn = fcmp reassoc nsz arcp contract afn olt float %i.qj, 1.000000e+00
  %i.qo = select reassoc nsz arcp contract afn i1 %i.qn, float %i.qj, float 1.000000e+00
  %i.qp = select reassoc nsz arcp contract afn i1 %i.qk, float %i.qm, float %i.qo
  %i.qq = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qr = shufflevector <2 x float> %i.qh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qs = shufflevector <4 x float> %i.qq, <4 x float> %i.qr, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qt = insertelement <4 x float> %i.qs, float %i.qp, i64 3
  %i.qu = fmul reassoc nsz arcp contract afn <4 x float> %i.qt, %i.pm
  %i.qv = fadd reassoc nsz arcp contract afn <4 x float> %i.qu, splat (float -5.000000e-01)
  %i.qw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.qv)
  %i.qx = fmul reassoc nsz arcp contract afn <4 x float> %i.qw, %i.po
  br label %_nearest_color.exit.i

.loopexit.loopexit32.i.i:                         ; preds = %scalar.ph97
  %.reass311.i.reass = fmul reassoc nsz arcp contract afn float %i.py, %factor.op.fmul50
  %i.qy = extractelement <2 x float> %i.qh, i64 0
  %.reass313.i.reass = fmul reassoc nsz arcp contract afn float %i.qy, %factor.op.fmul51
  %i.qz = extractelement <2 x float> %i.qh, i64 1
  %.reass309.i.reass = fmul reassoc nsz arcp contract afn float %i.qz, %factor.op.fmul
  %reass.add = fadd reassoc nsz arcp contract afn float %.reass313.i.reass, %.reass311.i.reass
  %reass.add48 = fadd reassoc nsz arcp contract afn float %reass.add, %.reass309.i.reass
  %i.ra = fadd reassoc nsz arcp contract afn float %reass.add48, -5.000000e-01
  %i.rb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ra)
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.my
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit.i

_nearest_color.exit.i:                            ; preds = %.loopexit.loopexit32.i.i, %.preheader.preheader.i.i
  %i.rf = phi <4 x float> [ %i.qx, %.preheader.preheader.i.i ], [ %i.re, %.loopexit.loopexit32.i.i ]
  store <4 x float> %i.rf, ptr %i.pq, align 4, !tbaa !396, !alias.scope !432, !noalias !433
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count354.i
  br i1 %exitcond355.not.i, label %_process_floyd_steinberg.exit, label %scalar.ph97, !llvm.loop !127

bb.w:                                             ; preds = %_get_dither_parameters.exit.thread.i
  %wide.trip.count321.i = zext nneg i32 %i.iw to i64 ; 10 uses
  %min.iters.check73 = icmp ult i32 %i.iw, 8
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %bb.w
  %i.rg = shl nuw nsw i64 %wide.trip.count321.i, 4 ; 2 uses
  %i.rh = getelementptr i8, ptr %3, i64 %i.rg
  %i.ri = getelementptr i8, ptr %2, i64 %i.rg
  %bound075 = icmp ult ptr %3, %i.ri
  %bound176 = icmp ult ptr %2, %i.rh
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %scalar.ph72.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck74
  %n.vec79 = and i64 %wide.trip.count321.i, 2147483640 ; 3 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next88, %vector.body80 ] ; 2 uses
  %i.rj = shl nuw nsw i64 %index81, 2             ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %wide.vec82 = load <32 x float>, ptr %i.rl, align 4, !tbaa !396, !alias.scope !435, !noalias !434 ; 4 uses
  %i.rm = fcmp reassoc nsz arcp contract afn ult <32 x float> %wide.vec82, zeroinitializer
  %i.rn = fcmp ord <32 x float> %wide.vec82, zeroinitializer
  %i.ro = select reassoc nsz arcp contract afn <32 x i1> %i.rn, <32 x float> zeroinitializer, <32 x float> splat (float 5.000000e-01)
  %i.rp = fcmp reassoc nsz arcp contract afn olt <32 x float> %wide.vec82, splat (float 1.000000e+00)
  %i.rq = select reassoc nsz arcp contract afn <32 x i1> %i.rp, <32 x float> %wide.vec82, <32 x float> splat (float 1.000000e+00)
  %interleaved.vec87 = select reassoc nsz arcp contract afn <32 x i1> %i.rm, <32 x float> %i.ro, <32 x float> %i.rq
  store <32 x float> %interleaved.vec87, ptr %i.rk, align 4, !tbaa !396, !alias.scope !434, !noalias !435
  %index.next88 = add nuw i64 %index81, 8         ; 2 uses
  %i.rr = icmp eq i64 %index.next88, %n.vec79
  br i1 %i.rr, label %middle.block89, label %vector.body80, !llvm.loop !131

middle.block89:                                   ; preds = %vector.body80
  %cmp.n90 = icmp eq i64 %n.vec79, %wide.trip.count321.i
  br i1 %cmp.n90, label %.loopexit, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %vector.memcheck74, %bb.w, %middle.block89
  %indvars.iv318.i.ph = phi i64 [ 0, %vector.memcheck74 ], [ 0, %bb.w ], [ %n.vec79, %middle.block89 ] ; 3 uses
  %xtraiter136 = and i64 %wide.trip.count321.i, 3 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %scalar.ph72.prol.loopexit, label %scalar.ph72.prol

scalar.ph72.prol:                                 ; preds = %scalar.ph72.preheader, %scalar.ph72.prol
  %indvars.iv318.i.prol = phi i64 [ %indvars.iv.next319.i.prol, %scalar.ph72.prol ], [ %indvars.iv318.i.ph, %scalar.ph72.preheader ] ; 2 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %scalar.ph72.prol ], [ 0, %scalar.ph72.preheader ]
  %i.rs = shl nuw nsw i64 %indvars.iv318.i.prol, 2 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rs
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.rv = load <4 x float>, ptr %i.ru, align 4, !tbaa !396, !alias.scope !435, !noalias !434 ; 4 uses
  %i.rw = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.rv, zeroinitializer
  %i.rx = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.rv, splat (float 1.000000e+00)
  %i.ry = select <4 x i1> %i.rx, <4 x float> %i.rv, <4 x float> splat (float 1.000000e+00)
  %i.rz = fcmp ord <4 x float> %i.rv, zeroinitializer
  %i.sa = select <4 x i1> %i.rz, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.sb = select <4 x i1> %i.rw, <4 x float> %i.sa, <4 x float> %i.ry
  store <4 x float> %i.sb, ptr %i.rt, align 4, !tbaa !396, !alias.scope !434, !noalias !435
  %indvars.iv.next319.i.prol = add nuw nsw i64 %indvars.iv318.i.prol, 1 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %scalar.ph72.prol.loopexit, label %scalar.ph72.prol, !llvm.loop !132

scalar.ph72.prol.loopexit:                        ; preds = %scalar.ph72.prol, %scalar.ph72.preheader
  %indvars.iv318.i.unr = phi i64 [ %indvars.iv318.i.ph, %scalar.ph72.preheader ], [ %indvars.iv.next319.i.prol, %scalar.ph72.prol ]
  %i.sc = sub nsw i64 %indvars.iv318.i.ph, %wide.trip.count321.i
  %i.sd = icmp ugt i64 %i.sc, -4
  br i1 %i.sd, label %.loopexit, label %scalar.ph72

.loopexit:                                        ; preds = %scalar.ph72.prol.loopexit, %scalar.ph72, %middle.block89
  %i.se = add nsw i32 %i.iw, -1                   ; 3 uses
  %i.sf = shl nuw nsw i32 %i.se, 2
  %i.sg = zext nneg i32 %i.sf to i64              ; 16 uses
  %i.sh = shl i32 %i.iw, 2                        ; 2 uses
  %i.si = zext nneg i32 %i.sh to i64              ; 18 uses
  %i.sj = add i32 %i.sh, 4
  %i.sk = zext nneg i32 %i.sj to i64              ; 18 uses
  %.not.i39 = icmp eq i32 %i.iu, 0
  br i1 %.not.i39, label %.lr.ph297.i, label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.loopexit
  %i.sl = add nsw i32 %i.iy, -2
  %factor.op.fmul225.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 1.100000e-01 ; 11 uses
  %factor.op.fmul227.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 3.000000e-01 ; 11 uses
  %factor.op.fmul229.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 5.900000e-01 ; 11 uses
  %.idx.i = shl nuw nsw i64 %i.sg, 3
  %6 = zext nneg i32 %i.sl to i64                 ; 2 uses
  %i.sm = zext nneg i32 %i.se to i64              ; 4 uses
  %i.sn = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.sp = insertelement <2 x float> poison, float %i.my, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.sr = insertelement <4 x float> poison, float %i.my, i64 0
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.st = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.x

.lr.ph297.i:                                      ; preds = %.loopexit
  %factor.op.fmul284.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 1.100000e-01 ; 4 uses
  %factor.op.fmul286.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 3.000000e-01 ; 4 uses
  %factor.op.fmul288.i = fmul reassoc nnan nsz arcp contract afn float %i.mx, 5.900000e-01 ; 4 uses
  %i.sv = add nsw i32 %i.iy, -1
  %wide.trip.count344.i = zext nneg i32 %i.sv to i64
  %wide.trip.count344.i.a = zext nneg i32 %i.se to i64 ; 2 uses
  %i.sw = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.sy = insertelement <2 x float> poison, float %i.my, i64 0
  %i.sz = shufflevector <2 x float> %i.sy, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %bb.z

scalar.ph72:                                      ; preds = %scalar.ph72.prol.loopexit, %scalar.ph72
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i.3, %scalar.ph72 ], [ %indvars.iv318.i.unr, %scalar.ph72.prol.loopexit ] ; 5 uses
  %i.ta = shl nuw nsw i64 %indvars.iv318.i, 2     ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ta
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ta
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.td = load <4 x float>, ptr %i.tc, align 4, !tbaa !396, !alias.scope !435, !noalias !434 ; 4 uses
  %i.te = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.td, zeroinitializer
  %i.tf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.td, splat (float 1.000000e+00)
  %i.tg = select <4 x i1> %i.tf, <4 x float> %i.td, <4 x float> splat (float 1.000000e+00)
  %i.th = fcmp ord <4 x float> %i.td, zeroinitializer
  %i.ti = select <4 x i1> %i.th, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.tj = select <4 x i1> %i.te, <4 x float> %i.ti, <4 x float> %i.tg
  store <4 x float> %i.tj, ptr %i.tb, align 4, !tbaa !396, !alias.scope !434, !noalias !435
  %indvars.iv.next319.i = shl i64 %indvars.iv318.i, 2
  %i.tk = add i64 %indvars.iv.next319.i, 4        ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.tk
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.tn = load <4 x float>, ptr %i.tm, align 4, !tbaa !396, !alias.scope !437, !noalias !436 ; 4 uses
  %i.to = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.tn, zeroinitializer
  %i.tp = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.tn, splat (float 1.000000e+00)
  %i.tq = select <4 x i1> %i.tp, <4 x float> %i.tn, <4 x float> splat (float 1.000000e+00)
  %i.tr = fcmp ord <4 x float> %i.tn, zeroinitializer
  %i.ts = select <4 x i1> %i.tr, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.tt = select <4 x i1> %i.to, <4 x float> %i.ts, <4 x float> %i.tq
  store <4 x float> %i.tt, ptr %i.tl, align 4, !tbaa !396, !alias.scope !436, !noalias !437
  %indvars.iv.next319.i.1 = shl i64 %indvars.iv318.i, 2
  %i.tu = add i64 %indvars.iv.next319.i.1, 8      ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.tu
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.tx = load <4 x float>, ptr %i.tw, align 4, !tbaa !396, !alias.scope !439, !noalias !438 ; 4 uses
  %i.ty = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.tx, zeroinitializer
  %i.tz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.tx, splat (float 1.000000e+00)
  %i.ua = select <4 x i1> %i.tz, <4 x float> %i.tx, <4 x float> splat (float 1.000000e+00)
  %i.ub = fcmp ord <4 x float> %i.tx, zeroinitializer
  %i.uc = select <4 x i1> %i.ub, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ud = select <4 x i1> %i.ty, <4 x float> %i.uc, <4 x float> %i.ua
  store <4 x float> %i.ud, ptr %i.tv, align 4, !tbaa !396, !alias.scope !438, !noalias !439
  %indvars.iv.next319.i.2 = shl i64 %indvars.iv318.i, 2
  %i.ue = add i64 %indvars.iv.next319.i.2, 12     ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ue
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ue
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.uh = load <4 x float>, ptr %i.ug, align 4, !tbaa !396, !alias.scope !441, !noalias !440 ; 4 uses
  %i.ui = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.uh, zeroinitializer
  %i.uj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.uh, splat (float 1.000000e+00)
  %i.uk = select <4 x i1> %i.uj, <4 x float> %i.uh, <4 x float> splat (float 1.000000e+00)
  %i.ul = fcmp ord <4 x float> %i.uh, zeroinitializer
  %i.um = select <4 x i1> %i.ul, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.un = select <4 x i1> %i.ui, <4 x float> %i.um, <4 x float> %i.uk
  store <4 x float> %i.un, ptr %i.uf, align 4, !tbaa !396, !alias.scope !440, !noalias !441
  %indvars.iv.next319.i.3 = add nuw nsw i64 %indvars.iv318.i, 4 ; 2 uses
  %exitcond322.not.i.3 = icmp eq i64 %indvars.iv.next319.i.3, %wide.trip.count321.i
  br i1 %exitcond322.not.i.3, label %.loopexit, label %scalar.ph72, !llvm.loop !139

._crit_edge263.i:                                 ; preds = %_nearest_color.exit363.i
  %i.uo = and i32 %i.iy, 1
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %bb.y, label %.lr.ph306.i

bb.x:                                             ; preds = %_nearest_color.exit363.i, %.lr.ph262.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph262.i ], [ %indvars.iv.next329.i, %_nearest_color.exit363.i ] ; 2 uses
  %i.uq = shl nuw nsw i64 %indvars.iv328.i, 2
  %i.ur = mul nuw i64 %i.uq, %wide.trip.count321.i ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ur ; 5 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ur ; 15 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !396, !alias.scope !442, !noalias !443 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i342.i, label %.loopexit.loopexit32.i341.i

.preheader.preheader.i342.i:                      ; preds = %bb.x
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !396, !alias.scope !442, !noalias !443 ; 2 uses
  %i.ux = insertelement <2 x float> poison, float %i.uu, i64 0
  %i.uy = insertelement <2 x float> %i.ux, float %i.uw, i64 1
  %i.uz = fmul reassoc nsz arcp contract afn <2 x float> %i.uy, %i.so
  %i.va = fadd reassoc nsz arcp contract afn <2 x float> %i.uz, splat (float -5.000000e-01)
  %i.vb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.va)
  %i.vc = fmul reassoc nsz arcp contract afn <2 x float> %i.vb, %i.sq ; 3 uses
  %i.vd = extractelement <2 x float> %i.vc, i64 1
  %i.ve = fsub reassoc nsz arcp contract afn float %i.uw, %i.vd
  store <2 x float> %i.vc, ptr %i.ut, align 4, !tbaa !396, !alias.scope !442, !noalias !443
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  %i.vg = load <2 x float>, ptr %i.vf, align 4, !tbaa !396, !alias.scope !442, !noalias !443 ; 2 uses
  %i.vh = fmul reassoc nsz arcp contract afn <2 x float> %i.vg, %i.so
  %i.vi = fadd reassoc nsz arcp contract afn <2 x float> %i.vh, splat (float -5.000000e-01)
  %i.vj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.vi)
  %i.vk = fmul reassoc nsz arcp contract afn <2 x float> %i.vj, %i.sq ; 2 uses
  %i.vl = fsub reassoc nsz arcp contract afn <2 x float> %i.vg, %i.vk
  store <2 x float> %i.vk, ptr %i.vf, align 4, !tbaa !396, !alias.scope !442, !noalias !443
  %i.vm = extractelement <2 x float> %i.vc, i64 0
  br label %_nearest_color.exit343.i

.loopexit.loopexit32.i341.i:                      ; preds = %bb.x
  %.reass228.i = fmul reassoc nsz arcp contract afn float %i.uu, %factor.op.fmul227.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !396, !alias.scope !444, !noalias !443 ; 2 uses
  %.reass230.i = fmul reassoc nsz arcp contract afn float %i.vo, %factor.op.fmul229.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.vq = fadd reassoc nsz arcp contract afn float %.reass228.i, -5.000000e-01
  %i.vr = fadd reassoc nsz arcp contract afn float %i.vq, %.reass230.i
  %i.vs = load <2 x float>, ptr %i.vp, align 4, !tbaa !396, !alias.scope !442, !noalias !443 ; 2 uses
  %i.vt = extractelement <2 x float> %i.vs, i64 0
  %.reass226.i = fmul reassoc nsz arcp contract afn float %i.vt, %factor.op.fmul225.i
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vr, %.reass226.i
  %i.vv = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.vu)
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.my ; 4 uses
  %i.vx = fsub reassoc nsz arcp contract afn float %i.vo, %i.vw
  %i.vy = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.vz = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wa = fsub reassoc nsz arcp contract afn <2 x float> %i.vs, %i.vz
  %i.wb = insertelement <4 x float> poison, float %i.vw, i64 0
  %i.wc = shufflevector <4 x float> %i.wb, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.wc, ptr %i.ut, align 4, !tbaa !396, !alias.scope !442, !noalias !443
  br label %_nearest_color.exit343.i

_nearest_color.exit343.i:                         ; preds = %.loopexit.loopexit32.i341.i, %.preheader.preheader.i342.i
  %.sroa.81.0.i = phi nsz float [ %i.ve, %.preheader.preheader.i342.i ], [ %i.vx, %.loopexit.loopexit32.i341.i ]
  %.pn184.i = phi float [ %i.vm, %.preheader.preheader.i342.i ], [ %i.vw, %.loopexit.loopexit32.i341.i ]
  %i.wd = phi <2 x float> [ %i.vl, %.preheader.preheader.i342.i ], [ %i.wa, %.loopexit.loopexit32.i341.i ]
  %.sroa.0.0.i = fsub reassoc nsz arcp contract afn float %i.uu, %.pn184.i
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.si ; 10 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.si ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %i.wi = load <4 x float>, ptr %i.wf, align 4, !tbaa !396, !alias.scope !446, !noalias !445 ; 4 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wi, zeroinitializer
  %i.wk = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wi, splat (float 1.000000e+00)
  %i.wl = select <4 x i1> %i.wk, <4 x float> %i.wi, <4 x float> splat (float 1.000000e+00)
  %i.wm = fcmp ord <4 x float> %i.wi, zeroinitializer
  %i.wn = select <4 x i1> %i.wm, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.wo = select <4 x i1> %i.wj, <4 x float> %i.wn, <4 x float> %i.wl
  store <4 x float> %i.wo, ptr %i.we, align 4, !tbaa !396, !alias.scope !445, !noalias !446
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.sk ; 3 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.wr = load <4 x float>, ptr %i.wq, align 4, !tbaa !396, !alias.scope !448, !noalias !447 ; 4 uses
  %i.ws = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wr, zeroinitializer
  %i.wt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wr, splat (float 1.000000e+00)
  %i.wu = select <4 x i1> %i.wt, <4 x float> %i.wr, <4 x float> splat (float 1.000000e+00)
  %i.wv = fcmp ord <4 x float> %i.wr, zeroinitializer
  %i.ww = select <4 x i1> %i.wv, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.wx = select <4 x i1> %i.ws, <4 x float> %i.ww, <4 x float> %i.wu
  store <4 x float> %i.wx, ptr %i.wp, align 4, !tbaa !396, !alias.scope !447, !noalias !448
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 7 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ut, i64 20 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ut, i64 24 ; 2 uses
  %i.xb = insertelement <4 x float> poison, float %.sroa.0.0.i, i64 0
  %i.xc = insertelement <4 x float> %i.xb, float %.sroa.81.0.i, i64 1
  %i.xd = shufflevector <2 x float> %i.wd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xe = shufflevector <4 x float> %i.xc, <4 x float> %i.xd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.xf = fmul reassoc nsz arcp contract afn <4 x float> %i.xe, splat (float 4.375000e-01)
  %i.xg = load <4 x float>, ptr %i.wy, align 4, !tbaa !396, !alias.scope !449, !noalias !450
  %i.xh = fadd reassoc nsz arcp contract afn <4 x float> %i.xg, %i.xf
  store <4 x float> %i.xh, ptr %i.wy, align 4, !tbaa !396, !alias.scope !449, !noalias !450
  %i.xi = fmul reassoc nsz arcp contract afn <4 x float> %i.xe, splat (float 3.125000e-01)
  %i.xj = load <4 x float>, ptr %i.we, align 4, !tbaa !396, !alias.scope !451, !noalias !452
  %i.xk = fadd reassoc nsz arcp contract afn <4 x float> %i.xj, %i.xi
  store <4 x float> %i.xk, ptr %i.we, align 4, !tbaa !396, !alias.scope !451, !noalias !452
  %i.xl = fmul reassoc nsz arcp contract afn <4 x float> %i.xe, splat (float 6.250000e-02)
  %i.xm = load <4 x float>, ptr %i.wp, align 4, !tbaa !396, !alias.scope !453, !noalias !454
  %i.xn = fadd reassoc nsz arcp contract afn <4 x float> %i.xm, %i.xl
  store <4 x float> %i.xn, ptr %i.wp, align 4, !tbaa !396, !alias.scope !453, !noalias !454
  %i.xo = load float, ptr %i.wy, align 4, !tbaa !396, !alias.scope !455, !noalias !456 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i346.i, label %.loopexit.loopexit32.i345.i

.preheader.preheader.i346.i:                      ; preds = %_nearest_color.exit343.i
  %i.xp = load <2 x float>, ptr %i.wz, align 4, !tbaa !396, !alias.scope !455, !noalias !456 ; 2 uses
  %i.xq = load <2 x float>, ptr %i.xa, align 4, !tbaa !396, !alias.scope !455, !noalias !456 ; 2 uses
  %i.xr = shufflevector <2 x float> %i.xp, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.xs = insertelement <4 x float> %i.xr, float %i.xo, i64 0
  %i.xt = shufflevector <2 x float> %i.xq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xu = shufflevector <4 x float> %i.xs, <4 x float> %i.xt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.xv = fmul reassoc nsz arcp contract afn <4 x float> %i.xu, %i.su
  %i.xw = fadd reassoc nsz arcp contract afn <4 x float> %i.xv, splat (float -5.000000e-01)
  %i.xx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.xw)
  %i.xy = fmul reassoc nsz arcp contract afn <4 x float> %i.xx, %i.ss ; 3 uses
  %i.xz = extractelement <4 x float> %i.xy, i64 1
  %i.ya = extractelement <2 x float> %i.xp, i64 0
  %i.yb = fsub reassoc nsz arcp contract afn float %i.ya, %i.xz
  %i.yc = shufflevector <4 x float> %i.xy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.yd = fsub reassoc nsz arcp contract afn <2 x float> %i.xq, %i.yc
  br label %_nearest_color.exit347.i

.loopexit.loopexit32.i345.i:                      ; preds = %_nearest_color.exit343.i
  %.reass234.i = fmul reassoc nsz arcp contract afn float %i.xo, %factor.op.fmul227.i
end_hunk_0
begin_hunk_1_@process:bb.a
  store <4 x float> %i.ys, ptr %i.wy, align 4, !tbaa !396, !alias.scope !455, !noalias !456
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.sk ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.yy = load <4 x float>, ptr %i.yx, align 4, !tbaa !396, !alias.scope !459, !noalias !458 ; 4 uses
  %i.yz = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.yy, zeroinitializer
  %i.za = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.yy, splat (float 1.000000e+00)
  %i.zb = select <4 x i1> %i.za, <4 x float> %i.yy, <4 x float> splat (float 1.000000e+00)
  %i.zc = fcmp ord <4 x float> %i.yy, zeroinitializer
  %i.zd = select <4 x i1> %i.zc, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ze = select <4 x i1> %i.yz, <4 x float> %i.zd, <4 x float> %i.zb
  store <4 x float> %i.ze, ptr %i.yv, align 4, !tbaa !396, !alias.scope !458, !noalias !459
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ut, i64 32 ; 2 uses
  %i.zg = insertelement <4 x float> poison, float %.sroa.0.1.i, i64 0
  %i.zh = insertelement <4 x float> %i.zg, float %.sroa.81.1.i, i64 1
  %i.zi = shufflevector <2 x float> %i.yt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zj = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.zk = fmul reassoc nsz arcp contract afn <4 x float> %i.zj, splat (float 4.375000e-01)
  %i.zl = load <4 x float>, ptr %i.zf, align 4, !tbaa !396, !alias.scope !460, !noalias !461
  %i.zm = fadd reassoc nsz arcp contract afn <4 x float> %i.zl, %i.zk
  store <4 x float> %i.zm, ptr %i.zf, align 4, !tbaa !396, !alias.scope !460, !noalias !461
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.sg ; 2 uses
  %i.zo = fmul reassoc nsz arcp contract afn <4 x float> %i.zj, splat (float 1.875000e-01)
  %i.zp = load <4 x float>, ptr %i.zn, align 4, !tbaa !396, !alias.scope !462, !noalias !463
  %i.zq = fadd reassoc nsz arcp contract afn <4 x float> %i.zp, %i.zo
  store <4 x float> %i.zq, ptr %i.zn, align 4, !tbaa !396, !alias.scope !462, !noalias !463
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.si ; 2 uses
  %i.zs = fmul reassoc nsz arcp contract afn <4 x float> %i.zj, splat (float 3.125000e-01)
  %i.zt = load <4 x float>, ptr %i.zr, align 4, !tbaa !396, !alias.scope !464, !noalias !465
  %i.zu = fadd reassoc nsz arcp contract afn <4 x float> %i.zt, %i.zs
  store <4 x float> %i.zu, ptr %i.zr, align 4, !tbaa !396, !alias.scope !464, !noalias !465
  %i.zv = fmul reassoc nsz arcp contract afn <4 x float> %i.zj, splat (float 6.250000e-02)
  %i.zw = load <4 x float>, ptr %i.yv, align 4, !tbaa !396, !alias.scope !466, !noalias !467
  %i.zx = fadd reassoc nsz arcp contract afn <4 x float> %i.zw, %i.zv
  store <4 x float> %i.zx, ptr %i.yv, align 4, !tbaa !396, !alias.scope !466, !noalias !467
  %i.zy = load float, ptr %i.we, align 4, !tbaa !396, !alias.scope !468, !noalias !469 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i350.i, label %.loopexit.loopexit32.i349.i

.preheader.preheader.i350.i:                      ; preds = %_nearest_color.exit347.i
  %i.zz = load <2 x float>, ptr %i.wg, align 4, !tbaa !396, !alias.scope !468, !noalias !469 ; 2 uses
  %i.aaa = load <2 x float>, ptr %i.wh, align 4, !tbaa !396, !alias.scope !468, !noalias !469 ; 2 uses
  %i.aab = shufflevector <2 x float> %i.zz, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aac = insertelement <4 x float> %i.aab, float %i.zy, i64 0
  %i.aad = shufflevector <2 x float> %i.aaa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aae = shufflevector <4 x float> %i.aac, <4 x float> %i.aad, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aaf = fmul reassoc nsz arcp contract afn <4 x float> %i.aae, %i.su
  %i.aag = fadd reassoc nsz arcp contract afn <4 x float> %i.aaf, splat (float -5.000000e-01)
  %i.aah = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aag)
  %i.aai = fmul reassoc nsz arcp contract afn <4 x float> %i.aah, %i.ss ; 3 uses
  %i.aaj = extractelement <4 x float> %i.aai, i64 1
  %i.aak = extractelement <2 x float> %i.zz, i64 0
  %i.aal = fsub reassoc nsz arcp contract afn float %i.aak, %i.aaj
  %i.aam = shufflevector <4 x float> %i.aai, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aan = fsub reassoc nsz arcp contract afn <2 x float> %i.aaa, %i.aam
  br label %.lr.ph224.preheader.i

.loopexit.loopexit32.i349.i:                      ; preds = %_nearest_color.exit347.i
  %.reass240.i = fmul reassoc nsz arcp contract afn float %i.zy, %factor.op.fmul227.i
  %i.aao = load float, ptr %i.wg, align 4, !tbaa !396, !alias.scope !470, !noalias !469 ; 2 uses
  %.reass242.i = fmul reassoc nsz arcp contract afn float %i.aao, %factor.op.fmul229.i
  %i.aap = fadd reassoc nsz arcp contract afn float %.reass240.i, -5.000000e-01
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aap, %.reass242.i
  %i.aar = load <2 x float>, ptr %i.wh, align 4, !tbaa !396, !alias.scope !468, !noalias !469 ; 2 uses
  %i.aas = extractelement <2 x float> %i.aar, i64 0
  %.reass238.i = fmul reassoc nsz arcp contract afn float %i.aas, %factor.op.fmul225.i
  %i.aat = fadd reassoc nsz arcp contract afn float %i.aaq, %.reass238.i
  %i.aau = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aat)
  %i.aav = fmul reassoc nsz arcp contract afn float %i.aau, %i.my ; 3 uses
  %i.aaw = fsub reassoc nsz arcp contract afn float %i.aao, %i.aav
  %i.aax = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.aay = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = fsub reassoc nsz arcp contract afn <2 x float> %i.aar, %i.aay
  %i.aba = insertelement <4 x float> poison, float %i.aav, i64 0
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph224.preheader.i

.lr.ph224.preheader.i:                            ; preds = %.loopexit.loopexit32.i349.i, %.preheader.preheader.i350.i
  %.sroa.81.2.i = phi nsz float [ %i.aal, %.preheader.preheader.i350.i ], [ %i.aaw, %.loopexit.loopexit32.i349.i ]
  %i.abc = phi <4 x float> [ %i.aai, %.preheader.preheader.i350.i ], [ %i.abb, %.loopexit.loopexit32.i349.i ] ; 2 uses
  %i.abd = phi <2 x float> [ %i.aan, %.preheader.preheader.i350.i ], [ %i.aaz, %.loopexit.loopexit32.i349.i ]
  %i.abe = extractelement <4 x float> %i.abc, i64 0
  %.sroa.0.2.i = fsub reassoc nsz arcp contract afn float %i.zy, %i.abe
  store <4 x float> %i.abc, ptr %i.we, align 4, !tbaa !396, !alias.scope !468, !noalias !469
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.si ; 3 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.abh = load <4 x float>, ptr %i.abg, align 4, !tbaa !396, !alias.scope !472, !noalias !471 ; 4 uses
  %i.abi = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abh, zeroinitializer
  %i.abj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abh, splat (float 1.000000e+00)
  %i.abk = select <4 x i1> %i.abj, <4 x float> %i.abh, <4 x float> splat (float 1.000000e+00)
  %i.abl = fcmp ord <4 x float> %i.abh, zeroinitializer
  %i.abm = select <4 x i1> %i.abl, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.abn = select <4 x i1> %i.abi, <4 x float> %i.abm, <4 x float> %i.abk
  store <4 x float> %i.abn, ptr %i.abf, align 4, !tbaa !396, !alias.scope !471, !noalias !472
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.sk ; 3 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.abq = load <4 x float>, ptr %i.abp, align 4, !tbaa !396, !alias.scope !474, !noalias !473 ; 4 uses
  %i.abr = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abq, zeroinitializer
  %i.abs = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abq, splat (float 1.000000e+00)
  %i.abt = select <4 x i1> %i.abs, <4 x float> %i.abq, <4 x float> splat (float 1.000000e+00)
  %i.abu = fcmp ord <4 x float> %i.abq, zeroinitializer
  %i.abv = select <4 x i1> %i.abu, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.abw = select <4 x i1> %i.abr, <4 x float> %i.abv, <4 x float> %i.abt
  store <4 x float> %i.abw, ptr %i.abo, align 4, !tbaa !396, !alias.scope !473, !noalias !474
  %i.abx = getelementptr inbounds nuw i8, ptr %i.we, i64 16 ; 2 uses
  %i.aby = insertelement <4 x float> poison, float %.sroa.0.2.i, i64 0
  %i.abz = insertelement <4 x float> %i.aby, float %.sroa.81.2.i, i64 1
  %i.aca = shufflevector <2 x float> %i.abd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acb = shufflevector <4 x float> %i.abz, <4 x float> %i.aca, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.acc = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, splat (float 4.375000e-01)
  %i.acd = load <4 x float>, ptr %i.abx, align 4, !tbaa !396, !alias.scope !475, !noalias !476
  %i.ace = fadd reassoc nsz arcp contract afn <4 x float> %i.acd, %i.acc
  store <4 x float> %i.ace, ptr %i.abx, align 4, !tbaa !396, !alias.scope !475, !noalias !476
  %i.acf = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, splat (float 3.125000e-01)
  %i.acg = load <4 x float>, ptr %i.abf, align 4, !tbaa !396, !alias.scope !477, !noalias !478
  %i.ach = fadd reassoc nsz arcp contract afn <4 x float> %i.acg, %i.acf
  store <4 x float> %i.ach, ptr %i.abf, align 4, !tbaa !396, !alias.scope !477, !noalias !478
  %i.aci = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, splat (float 6.250000e-02)
  %i.acj = load <4 x float>, ptr %i.abo, align 4, !tbaa !396, !alias.scope !479, !noalias !480
  %i.ack = fadd reassoc nsz arcp contract afn <4 x float> %i.acj, %i.aci
  store <4 x float> %i.ack, ptr %i.abo, align 4, !tbaa !396, !alias.scope !479, !noalias !480
  br label %.lr.ph224.i

._crit_edge.i:                                    ; preds = %_nearest_color.exit371.i
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.sg ; 9 uses
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !396, !alias.scope !481, !noalias !482 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i354.i, label %.loopexit.loopexit32.i353.i

.preheader.preheader.i354.i:                      ; preds = %._crit_edge.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !396, !alias.scope !481, !noalias !482 ; 2 uses
  %i.acp = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.acq = insertelement <2 x float> %i.acp, float %i.aco, i64 1
  %i.acr = fmul reassoc nsz arcp contract afn <2 x float> %i.acq, %i.so
  %i.acs = fadd reassoc nsz arcp contract afn <2 x float> %i.acr, splat (float -5.000000e-01)
  %i.act = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.acs)
  %i.acu = fmul reassoc nsz arcp contract afn <2 x float> %i.act, %i.sq ; 3 uses
  %i.acv = extractelement <2 x float> %i.acu, i64 1
  %i.acw = fsub reassoc nsz arcp contract afn float %i.aco, %i.acv
  store <2 x float> %i.acu, ptr %i.acl, align 4, !tbaa !396, !alias.scope !481, !noalias !482
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 2 uses
  %i.acy = load <2 x float>, ptr %i.acx, align 4, !tbaa !396, !alias.scope !481, !noalias !482 ; 2 uses
  %i.acz = fmul reassoc nsz arcp contract afn <2 x float> %i.acy, %i.so
  %i.ada = fadd reassoc nsz arcp contract afn <2 x float> %i.acz, splat (float -5.000000e-01)
  %i.adb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ada)
  %i.adc = fmul reassoc nsz arcp contract afn <2 x float> %i.adb, %i.sq ; 2 uses
  %i.add = fsub reassoc nsz arcp contract afn <2 x float> %i.acy, %i.adc
  store <2 x float> %i.adc, ptr %i.acx, align 4, !tbaa !396, !alias.scope !481, !noalias !482
  %i.ade = extractelement <2 x float> %i.acu, i64 0
  br label %_nearest_color.exit355.i

.loopexit.loopexit32.i353.i:                      ; preds = %._crit_edge.i
  %.reass246.i = fmul reassoc nsz arcp contract afn float %i.acm, %factor.op.fmul227.i
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !396, !alias.scope !483, !noalias !482 ; 2 uses
  %.reass248.i = fmul reassoc nsz arcp contract afn float %i.adg, %factor.op.fmul229.i
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.adi = fadd reassoc nsz arcp contract afn float %.reass246.i, -5.000000e-01
  %i.adj = fadd reassoc nsz arcp contract afn float %i.adi, %.reass248.i
  %i.adk = load <2 x float>, ptr %i.adh, align 4, !tbaa !396, !alias.scope !481, !noalias !482 ; 2 uses
  %i.adl = extractelement <2 x float> %i.adk, i64 0
  %.reass244.i = fmul reassoc nsz arcp contract afn float %i.adl, %factor.op.fmul225.i
  %i.adm = fadd reassoc nsz arcp contract afn float %i.adj, %.reass244.i
  %i.adn = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.adm)
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adn, %i.my ; 4 uses
  %i.adp = fsub reassoc nsz arcp contract afn float %i.adg, %i.ado
  %i.adq = insertelement <2 x float> poison, float %i.ado, i64 0
  %i.adr = shufflevector <2 x float> %i.adq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ads = fsub reassoc nsz arcp contract afn <2 x float> %i.adk, %i.adr
  %i.adt = insertelement <4 x float> poison, float %i.ado, i64 0
  %i.adu = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.adu, ptr %i.acl, align 4, !tbaa !396, !alias.scope !481, !noalias !482
  br label %_nearest_color.exit355.i

_nearest_color.exit355.i:                         ; preds = %.loopexit.loopexit32.i353.i, %.preheader.preheader.i354.i
  %.sroa.81.3.i = phi nsz float [ %i.acw, %.preheader.preheader.i354.i ], [ %i.adp, %.loopexit.loopexit32.i353.i ]
  %.pn188.i = phi float [ %i.ade, %.preheader.preheader.i354.i ], [ %i.ado, %.loopexit.loopexit32.i353.i ]
  %i.adv = phi <2 x float> [ %i.add, %.preheader.preheader.i354.i ], [ %i.ads, %.loopexit.loopexit32.i353.i ]
  %.sroa.0.3.i = fsub reassoc nsz arcp contract afn float %i.acm, %.pn188.i
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.sg ; 7 uses
  %i.adx = insertelement <4 x float> poison, float %.sroa.0.3.i, i64 0
  %i.ady = insertelement <4 x float> %i.adx, float %.sroa.81.3.i, i64 1
  %i.adz = shufflevector <2 x float> %i.adv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aea = shufflevector <4 x float> %i.ady, <4 x float> %i.adz, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aeb = fmul reassoc nsz arcp contract afn <4 x float> %i.aea, splat (float 1.875000e-01)
  %i.aec = load <4 x float>, ptr %i.adw, align 4, !tbaa !396, !alias.scope !484, !noalias !485
  %i.aed = fadd reassoc nsz arcp contract afn <4 x float> %i.aeb, %i.aec ; 6 uses
  store <4 x float> %i.aed, ptr %i.adw, align 4, !tbaa !396, !alias.scope !484, !noalias !485
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.si ; 8 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 4 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8 ; 3 uses
  %i.aeh = fmul reassoc nsz arcp contract afn <4 x float> %i.aea, splat (float 3.125000e-01)
  %i.aei = load <4 x float>, ptr %i.aee, align 4, !tbaa !396, !alias.scope !486, !noalias !487
  %i.aej = fadd reassoc nsz arcp contract afn <4 x float> %i.aei, %i.aeh
  store <4 x float> %i.aej, ptr %i.aee, align 4, !tbaa !396, !alias.scope !486, !noalias !487
  %7 = getelementptr inbounds nuw i8, ptr %i.us, i64 %.idx.i
  br i1 %.2.i181.i, label %.preheader.preheader.i358.i, label %.loopexit.loopexit32.i357.i

.preheader.preheader.i358.i:                      ; preds = %_nearest_color.exit355.i
  %i.aek = fmul reassoc nsz arcp contract afn <4 x float> %i.aed, %i.su
  %i.ael = fadd reassoc nsz arcp contract afn <4 x float> %i.aek, splat (float -5.000000e-01)
  %i.aem = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ael)
  %i.aen = fmul reassoc nsz arcp contract afn <4 x float> %i.aem, %i.ss
  br label %_nearest_color.exit359.i

.loopexit.loopexit32.i357.i:                      ; preds = %_nearest_color.exit355.i
  %i.aeo = extractelement <4 x float> %i.aed, i64 0
  %.reass252.i = fmul reassoc nsz arcp contract afn float %i.aeo, %factor.op.fmul227.i
  %i.aep = extractelement <4 x float> %i.aed, i64 1
  %.reass254.i = fmul reassoc nsz arcp contract afn float %i.aep, %factor.op.fmul229.i
  %i.aeq = extractelement <4 x float> %i.aed, i64 2
  %.reass250.i = fmul reassoc nsz arcp contract afn float %i.aeq, %factor.op.fmul225.i
  %i.aer = fadd reassoc nsz arcp contract afn float %.reass252.i, -5.000000e-01
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %.reass254.i
  %i.aet = fadd reassoc nsz arcp contract afn float %i.aes, %.reass250.i
  %i.aeu = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aet)
  %i.aev = fmul reassoc nsz arcp contract afn float %i.aeu, %i.my
  %i.aew = insertelement <4 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit359.i

_nearest_color.exit359.i:                         ; preds = %.loopexit.loopexit32.i357.i, %.preheader.preheader.i358.i
  %i.aey = phi <4 x float> [ %i.aen, %.preheader.preheader.i358.i ], [ %i.aex, %.loopexit.loopexit32.i357.i ] ; 2 uses
  %i.aez = fsub reassoc nsz arcp contract afn <4 x float> %i.aed, %i.aey ; 4 uses
  store <4 x float> %i.aey, ptr %i.adw, align 4, !tbaa !396, !alias.scope !488, !noalias !489
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %i.sk ; 3 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.afc = load <4 x float>, ptr %i.afb, align 4, !tbaa !396, !alias.scope !491, !noalias !490 ; 4 uses
  %i.afd = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.afc, zeroinitializer
  %i.afe = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.afc, splat (float 1.000000e+00)
  %i.aff = select <4 x i1> %i.afe, <4 x float> %i.afc, <4 x float> splat (float 1.000000e+00)
  %i.afg = fcmp ord <4 x float> %i.afc, zeroinitializer
  %i.afh = select <4 x i1> %i.afg, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.afi = select <4 x i1> %i.afd, <4 x float> %i.afh, <4 x float> %i.aff
  store <4 x float> %i.afi, ptr %i.afa, align 4, !tbaa !396, !alias.scope !490, !noalias !491
  %i.afj = getelementptr inbounds nuw i8, ptr %i.adw, i64 16 ; 2 uses
  %i.afk = fmul reassoc nsz arcp contract afn <4 x float> %i.aez, splat (float 4.375000e-01)
  %i.afl = load <4 x float>, ptr %i.afj, align 4, !tbaa !396, !alias.scope !492, !noalias !493
  %i.afm = fadd reassoc nsz arcp contract afn <4 x float> %i.afl, %i.afk
  store <4 x float> %i.afm, ptr %i.afj, align 4, !tbaa !396, !alias.scope !492, !noalias !493
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %i.sg ; 2 uses
  %i.afo = fmul reassoc nsz arcp contract afn <4 x float> %i.aez, splat (float 1.875000e-01)
  %i.afp = load <4 x float>, ptr %i.afn, align 4, !tbaa !396, !alias.scope !494, !noalias !495
  %i.afq = fadd reassoc nsz arcp contract afn <4 x float> %i.afp, %i.afo
  store <4 x float> %i.afq, ptr %i.afn, align 4, !tbaa !396, !alias.scope !494, !noalias !495
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %i.si ; 2 uses
  %i.afs = fmul reassoc nsz arcp contract afn <4 x float> %i.aez, splat (float 3.125000e-01)
  %i.aft = load <4 x float>, ptr %i.afr, align 4, !tbaa !396, !alias.scope !496, !noalias !497
  %i.afu = fadd reassoc nsz arcp contract afn <4 x float> %i.aft, %i.afs
  store <4 x float> %i.afu, ptr %i.afr, align 4, !tbaa !396, !alias.scope !496, !noalias !497
  %i.afv = fmul reassoc nsz arcp contract afn <4 x float> %i.aez, splat (float 6.250000e-02)
  %i.afw = load <4 x float>, ptr %i.afa, align 4, !tbaa !396, !alias.scope !498, !noalias !499
  %i.afx = fadd reassoc nsz arcp contract afn <4 x float> %i.afw, %i.afv
  store <4 x float> %i.afx, ptr %i.afa, align 4, !tbaa !396, !alias.scope !498, !noalias !499
  %i.afy = load float, ptr %i.aee, align 4, !tbaa !396, !alias.scope !500, !noalias !501 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i362.i, label %.loopexit.loopexit32.i361.i

.preheader.preheader.i362.i:                      ; preds = %_nearest_color.exit359.i
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afy, %i.mx
  %i.aga = fadd reassoc nsz arcp contract afn float %i.afz, -5.000000e-01
  %i.agb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aga)
  %i.agc = fmul reassoc nsz arcp contract afn float %i.agb, %i.my
  %i.agd = load float, ptr %i.aef, align 4, !tbaa !396, !alias.scope !500, !noalias !501 ; 2 uses
  %i.age = fmul reassoc nsz arcp contract afn float %i.agd, %i.mx
  %i.agf = fadd reassoc nsz arcp contract afn float %i.age, -5.000000e-01
  %i.agg = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agf)
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agg, %i.my ; 2 uses
  %i.agi = fsub reassoc nsz arcp contract afn float %i.agd, %i.agh
  %i.agj = load <2 x float>, ptr %i.aeg, align 4, !tbaa !396, !alias.scope !500, !noalias !501 ; 2 uses
  %i.agk = fmul reassoc nsz arcp contract afn <2 x float> %i.agj, %i.so
  %i.agl = fadd reassoc nsz arcp contract afn <2 x float> %i.agk, splat (float -5.000000e-01)
  %i.agm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.agl)
  %i.agn = fmul reassoc nsz arcp contract afn <2 x float> %i.agm, %i.sq ; 2 uses
  %i.ago = fsub reassoc nsz arcp contract afn <2 x float> %i.agj, %i.agn
  br label %_nearest_color.exit363.i

.loopexit.loopexit32.i361.i:                      ; preds = %_nearest_color.exit359.i
  %.reass258.i = fmul reassoc nsz arcp contract afn float %i.afy, %factor.op.fmul227.i
  %i.agp = load float, ptr %i.aef, align 4, !tbaa !396, !alias.scope !502, !noalias !501 ; 2 uses
  %.reass260.i = fmul reassoc nsz arcp contract afn float %i.agp, %factor.op.fmul229.i
  %i.agq = fadd reassoc nsz arcp contract afn float %.reass258.i, -5.000000e-01
  %i.agr = fadd reassoc nsz arcp contract afn float %i.agq, %.reass260.i
  %i.ags = load <2 x float>, ptr %i.aeg, align 4, !tbaa !396, !alias.scope !500, !noalias !501 ; 2 uses
  %i.agt = extractelement <2 x float> %i.ags, i64 0
  %.reass256.i = fmul reassoc nsz arcp contract afn float %i.agt, %factor.op.fmul225.i
  %i.agu = fadd reassoc nsz arcp contract afn float %i.agr, %.reass256.i
  %i.agv = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agu)
  %i.agw = fmul reassoc nsz arcp contract afn float %i.agv, %i.my ; 4 uses
  %i.agx = fsub reassoc nsz arcp contract afn float %i.agp, %i.agw
  %i.agy = insertelement <2 x float> poison, float %i.agw, i64 0
  %i.agz = shufflevector <2 x float> %i.agy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aha = fsub reassoc nsz arcp contract afn <2 x float> %i.ags, %i.agz
  br label %_nearest_color.exit363.i

_nearest_color.exit363.i:                         ; preds = %.loopexit.loopexit32.i361.i, %.preheader.preheader.i362.i
  %.sink369.i = phi float [ %i.agc, %.preheader.preheader.i362.i ], [ %i.agw, %.loopexit.loopexit32.i361.i ] ; 2 uses
  %.sink368.i = phi float [ %i.agh, %.preheader.preheader.i362.i ], [ %i.agw, %.loopexit.loopexit32.i361.i ]
  %.sroa.81.5.i = phi nsz float [ %i.agi, %.preheader.preheader.i362.i ], [ %i.agx, %.loopexit.loopexit32.i361.i ]
  %i.ahb = phi <2 x float> [ %i.ago, %.preheader.preheader.i362.i ], [ %i.aha, %.loopexit.loopexit32.i361.i ]
  %i.ahc = phi <2 x float> [ %i.agn, %.preheader.preheader.i362.i ], [ %i.agz, %.loopexit.loopexit32.i361.i ]
  store float %.sink369.i, ptr %i.aee, align 4, !tbaa !396, !alias.scope !500, !noalias !501
  store float %.sink368.i, ptr %i.aef, align 4, !tbaa !396, !alias.scope !500, !noalias !501
  %.sroa.0.5.i = fsub reassoc nsz arcp contract afn float %i.afy, %.sink369.i
  store <2 x float> %i.ahc, ptr %i.aeg, align 4, !tbaa !396, !alias.scope !500, !noalias !501
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %i.sg ; 2 uses
  %i.ahe = insertelement <4 x float> poison, float %.sroa.0.5.i, i64 0
  %i.ahf = insertelement <4 x float> %i.ahe, float %.sroa.81.5.i, i64 1
  %i.ahg = shufflevector <2 x float> %i.ahb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahh = shufflevector <4 x float> %i.ahf, <4 x float> %i.ahg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ahi = fmul reassoc nsz arcp contract afn <4 x float> %i.ahh, splat (float 1.875000e-01)
  %i.ahj = load <4 x float>, ptr %i.ahd, align 4, !tbaa !396, !alias.scope !503, !noalias !504
  %i.ahk = fadd reassoc nsz arcp contract afn <4 x float> %i.ahj, %i.ahi
  store <4 x float> %i.ahk, ptr %i.ahd, align 4, !tbaa !396, !alias.scope !503, !noalias !504
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %i.si ; 2 uses
  %i.ahm = fmul reassoc nsz arcp contract afn <4 x float> %i.ahh, splat (float 3.125000e-01)
  %i.ahn = load <4 x float>, ptr %i.ahl, align 4, !tbaa !396, !alias.scope !505, !noalias !506
  %i.aho = fadd reassoc nsz arcp contract afn <4 x float> %i.ahn, %i.ahm
  store <4 x float> %i.aho, ptr %i.ahl, align 4, !tbaa !396, !alias.scope !505, !noalias !506
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 2 ; 2 uses
  %i.ahp = icmp samesign ult i64 %indvars.iv.next329.i, %6
  br i1 %i.ahp, label %bb.x, label %._crit_edge263.i

.lr.ph224.i:                                      ; preds = %_nearest_color.exit371.i, %.lr.ph224.preheader.i
  %indvars.iv323.i = phi i64 [ 1, %.lr.ph224.preheader.i ], [ %indvars.iv.next324.i, %_nearest_color.exit371.i ] ; 2 uses
  %i.ahq = shl nuw nsw i64 %indvars.iv323.i, 2    ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.ahq ; 11 uses
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !396, !alias.scope !507, !noalias !508 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i366.i, label %.loopexit.loopexit32.i365.i

.preheader.preheader.i366.i:                      ; preds = %.lr.ph224.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !396, !alias.scope !507, !noalias !508 ; 2 uses
  %i.ahv = insertelement <2 x float> poison, float %i.ahs, i64 0
  %i.ahw = insertelement <2 x float> %i.ahv, float %i.ahu, i64 1
  %i.ahx = fmul reassoc nsz arcp contract afn <2 x float> %i.ahw, %i.so
  %i.ahy = fadd reassoc nsz arcp contract afn <2 x float> %i.ahx, splat (float -5.000000e-01)
  %i.ahz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ahy)
  %i.aia = fmul reassoc nsz arcp contract afn <2 x float> %i.ahz, %i.sq ; 3 uses
  %i.aib = extractelement <2 x float> %i.aia, i64 1
  %i.aic = fsub reassoc nsz arcp contract afn float %i.ahu, %i.aib
  store <2 x float> %i.aia, ptr %i.ahr, align 4, !tbaa !396, !alias.scope !507, !noalias !508
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 2 uses
  %i.aie = load <2 x float>, ptr %i.aid, align 4, !tbaa !396, !alias.scope !507, !noalias !508 ; 2 uses
  %i.aif = fmul reassoc nsz arcp contract afn <2 x float> %i.aie, %i.so
  %i.aig = fadd reassoc nsz arcp contract afn <2 x float> %i.aif, splat (float -5.000000e-01)
  %i.aih = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aig)
  %i.aii = fmul reassoc nsz arcp contract afn <2 x float> %i.aih, %i.sq ; 2 uses
  %i.aij = fsub reassoc nsz arcp contract afn <2 x float> %i.aie, %i.aii
  store <2 x float> %i.aii, ptr %i.aid, align 4, !tbaa !396, !alias.scope !507, !noalias !508
  %i.aik = extractelement <2 x float> %i.aia, i64 0
  br label %_nearest_color.exit367.i

.loopexit.loopexit32.i365.i:                      ; preds = %.lr.ph224.i
  %.reass214.i = fmul reassoc nsz arcp contract afn float %i.ahs, %factor.op.fmul227.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !396, !alias.scope !509, !noalias !508 ; 2 uses
  %.reass216.i = fmul reassoc nsz arcp contract afn float %i.aim, %factor.op.fmul229.i
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aio = fadd reassoc nsz arcp contract afn float %.reass214.i, -5.000000e-01
  %i.aip = fadd reassoc nsz arcp contract afn float %i.aio, %.reass216.i
  %i.aiq = load <2 x float>, ptr %i.ain, align 4, !tbaa !396, !alias.scope !507, !noalias !508 ; 2 uses
  %i.air = extractelement <2 x float> %i.aiq, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.air, %factor.op.fmul225.i
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aip, %.reass.i
  %i.ait = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ais)
  %i.aiu = fmul reassoc nsz arcp contract afn float %i.ait, %i.my ; 4 uses
  %i.aiv = fsub reassoc nsz arcp contract afn float %i.aim, %i.aiu
  %i.aiw = insertelement <2 x float> poison, float %i.aiu, i64 0
  %i.aix = shufflevector <2 x float> %i.aiw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiy = fsub reassoc nsz arcp contract afn <2 x float> %i.aiq, %i.aix
  %i.aiz = insertelement <4 x float> poison, float %i.aiu, i64 0
  %i.aja = shufflevector <4 x float> %i.aiz, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aja, ptr %i.ahr, align 4, !tbaa !396, !alias.scope !507, !noalias !508
  br label %_nearest_color.exit367.i

_nearest_color.exit367.i:                         ; preds = %.loopexit.loopexit32.i365.i, %.preheader.preheader.i366.i
  %.sroa.81.6.i = phi nsz float [ %i.aic, %.preheader.preheader.i366.i ], [ %i.aiv, %.loopexit.loopexit32.i365.i ]
  %.pn196.i = phi float [ %i.aik, %.preheader.preheader.i366.i ], [ %i.aiu, %.loopexit.loopexit32.i365.i ]
  %i.ajb = phi <2 x float> [ %i.aij, %.preheader.preheader.i366.i ], [ %i.aiy, %.loopexit.loopexit32.i365.i ]
  %.sroa.0.6.i = fsub reassoc nsz arcp contract afn float %i.ahs, %.pn196.i
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.sk ; 3 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ahq ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.ajf = load <4 x float>, ptr %i.aje, align 4, !tbaa !396, !alias.scope !511, !noalias !510 ; 4 uses
  %i.ajg = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ajf, zeroinitializer
  %i.ajh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ajf, splat (float 1.000000e+00)
  %i.aji = select <4 x i1> %i.ajh, <4 x float> %i.ajf, <4 x float> splat (float 1.000000e+00)
  %i.ajj = fcmp ord <4 x float> %i.ajf, zeroinitializer
  %i.ajk = select <4 x i1> %i.ajj, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ajl = select <4 x i1> %i.ajg, <4 x float> %i.ajk, <4 x float> %i.aji
  store <4 x float> %i.ajl, ptr %i.ajc, align 4, !tbaa !396, !alias.scope !510, !noalias !511
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16 ; 2 uses
  %i.ajn = insertelement <4 x float> poison, float %.sroa.0.6.i, i64 0
  %i.ajo = insertelement <4 x float> %i.ajn, float %.sroa.81.6.i, i64 1
  %i.ajp = shufflevector <2 x float> %i.ajb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajq = shufflevector <4 x float> %i.ajo, <4 x float> %i.ajp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ajr = fmul reassoc nsz arcp contract afn <4 x float> %i.ajq, splat (float 4.375000e-01)
  %i.ajs = load <4 x float>, ptr %i.ajm, align 4, !tbaa !396, !alias.scope !512, !noalias !513
  %i.ajt = fadd reassoc nsz arcp contract afn <4 x float> %i.ajs, %i.ajr
  store <4 x float> %i.ajt, ptr %i.ajm, align 4, !tbaa !396, !alias.scope !512, !noalias !513
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.sg ; 7 uses
  %i.ajv = fmul reassoc nsz arcp contract afn <4 x float> %i.ajq, splat (float 1.875000e-01)
  %i.ajw = load <4 x float>, ptr %i.aju, align 4, !tbaa !396, !alias.scope !514, !noalias !515
  %i.ajx = fadd reassoc nsz arcp contract afn <4 x float> %i.ajw, %i.ajv ; 6 uses
  store <4 x float> %i.ajx, ptr %i.aju, align 4, !tbaa !396, !alias.scope !514, !noalias !515
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.si ; 2 uses
  %i.ajz = fmul reassoc nsz arcp contract afn <4 x float> %i.ajq, splat (float 3.125000e-01)
  %i.aka = load <4 x float>, ptr %i.ajy, align 4, !tbaa !396, !alias.scope !516, !noalias !517
  %i.akb = fadd reassoc nsz arcp contract afn <4 x float> %i.aka, %i.ajz
  store <4 x float> %i.akb, ptr %i.ajy, align 4, !tbaa !396, !alias.scope !516, !noalias !517
  %i.akc = fmul reassoc nsz arcp contract afn <4 x float> %i.ajq, splat (float 6.250000e-02)
  %i.akd = load <4 x float>, ptr %i.ajc, align 4, !tbaa !396, !alias.scope !518, !noalias !519
  %i.ake = fadd reassoc nsz arcp contract afn <4 x float> %i.akd, %i.akc
  store <4 x float> %i.ake, ptr %i.ajc, align 4, !tbaa !396, !alias.scope !518, !noalias !519
  br i1 %.2.i181.i, label %.preheader.preheader.i370.i, label %.loopexit.loopexit32.i369.i

.preheader.preheader.i370.i:                      ; preds = %_nearest_color.exit367.i
  %i.akf = fmul reassoc nsz arcp contract afn <4 x float> %i.ajx, %i.su
  %i.akg = fadd reassoc nsz arcp contract afn <4 x float> %i.akf, splat (float -5.000000e-01)
  %i.akh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.akg)
  %i.aki = fmul reassoc nsz arcp contract afn <4 x float> %i.akh, %i.ss
  br label %_nearest_color.exit371.i

.loopexit.loopexit32.i369.i:                      ; preds = %_nearest_color.exit367.i
  %i.akj = extractelement <4 x float> %i.ajx, i64 0
  %.reass220.i = fmul reassoc nsz arcp contract afn float %i.akj, %factor.op.fmul227.i
  %i.akk = extractelement <4 x float> %i.ajx, i64 1
  %.reass222.i = fmul reassoc nsz arcp contract afn float %i.akk, %factor.op.fmul229.i
  %i.akl = extractelement <4 x float> %i.ajx, i64 2
  %.reass218.i = fmul reassoc nsz arcp contract afn float %i.akl, %factor.op.fmul225.i
  %i.akm = fadd reassoc nsz arcp contract afn float %.reass220.i, -5.000000e-01
  %i.akn = fadd reassoc nsz arcp contract afn float %i.akm, %.reass222.i
  %i.ako = fadd reassoc nsz arcp contract afn float %i.akn, %.reass218.i
  %i.akp = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ako)
  %i.akq = fmul reassoc nsz arcp contract afn float %i.akp, %i.my
  %i.akr = insertelement <4 x float> poison, float %i.akq, i64 0
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit371.i

_nearest_color.exit371.i:                         ; preds = %.loopexit.loopexit32.i369.i, %.preheader.preheader.i370.i
  %i.akt = phi <4 x float> [ %i.aki, %.preheader.preheader.i370.i ], [ %i.aks, %.loopexit.loopexit32.i369.i ] ; 2 uses
  %i.aku = fsub reassoc nsz arcp contract afn <4 x float> %i.ajx, %i.akt ; 4 uses
  store <4 x float> %i.akt, ptr %i.aju, align 4, !tbaa !396, !alias.scope !520, !noalias !521
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.sk ; 3 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.sg
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.aky = load <4 x float>, ptr %i.akx, align 4, !tbaa !396, !alias.scope !523, !noalias !522 ; 4 uses
  %i.akz = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.aky, zeroinitializer
  %i.ala = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aky, splat (float 1.000000e+00)
  %i.alb = select <4 x i1> %i.ala, <4 x float> %i.aky, <4 x float> splat (float 1.000000e+00)
  %i.alc = fcmp ord <4 x float> %i.aky, zeroinitializer
  %i.ald = select <4 x i1> %i.alc, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ale = select <4 x i1> %i.akz, <4 x float> %i.ald, <4 x float> %i.alb
  store <4 x float> %i.ale, ptr %i.akv, align 4, !tbaa !396, !alias.scope !522, !noalias !523
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aju, i64 16 ; 2 uses
  %i.alg = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, splat (float 4.375000e-01)
  %i.alh = load <4 x float>, ptr %i.alf, align 4, !tbaa !396, !alias.scope !524, !noalias !525
  %i.ali = fadd reassoc nsz arcp contract afn <4 x float> %i.alh, %i.alg
  store <4 x float> %i.ali, ptr %i.alf, align 4, !tbaa !396, !alias.scope !524, !noalias !525
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.sg ; 2 uses
  %i.alk = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, splat (float 1.875000e-01)
  %i.all = load <4 x float>, ptr %i.alj, align 4, !tbaa !396, !alias.scope !526, !noalias !527
  %i.alm = fadd reassoc nsz arcp contract afn <4 x float> %i.all, %i.alk
  store <4 x float> %i.alm, ptr %i.alj, align 4, !tbaa !396, !alias.scope !526, !noalias !527
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.si ; 2 uses
  %i.alo = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, splat (float 3.125000e-01)
  %i.alp = load <4 x float>, ptr %i.aln, align 4, !tbaa !396, !alias.scope !528, !noalias !529
  %i.alq = fadd reassoc nsz arcp contract afn <4 x float> %i.alp, %i.alo
  store <4 x float> %i.alq, ptr %i.aln, align 4, !tbaa !396, !alias.scope !528, !noalias !529
  %i.alr = fmul reassoc nsz arcp contract afn <4 x float> %i.aku, splat (float 6.250000e-02)
  %i.als = load <4 x float>, ptr %i.akv, align 4, !tbaa !396, !alias.scope !530, !noalias !531
  %i.alt = fadd reassoc nsz arcp contract afn <4 x float> %i.als, %i.alr
  store <4 x float> %i.alt, ptr %i.akv, align 4, !tbaa !396, !alias.scope !530, !noalias !531
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next324.i, %i.sm
  br i1 %exitcond327.not.i, label %._crit_edge.i, label %.lr.ph224.i

bb.y:                                             ; preds = %._crit_edge263.i
  %i.alu = shl nuw nsw i64 %6, 2
  %i.alv = mul nuw i64 %i.alu, %wide.trip.count321.i ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.alv ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alv ; 12 uses
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !396, !alias.scope !532, !noalias !533 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i374.i, label %.loopexit.loopexit32.i373.i

.preheader.preheader.i374.i:                      ; preds = %bb.y
  %i.alz = fmul reassoc nsz arcp contract afn float %i.aly, %i.mx
  %i.ama = fadd reassoc nsz arcp contract afn float %i.alz, -5.000000e-01
  %i.amb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ama)
  %i.amc = fmul reassoc nsz arcp contract afn float %i.amb, %i.my ; 2 uses
  store float %i.amc, ptr %i.alx, align 4, !tbaa !396, !alias.scope !532, !noalias !533
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 4 ; 2 uses
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !396, !alias.scope !532, !noalias !533 ; 2 uses
  %i.amf = fmul reassoc nsz arcp contract afn float %i.ame, %i.mx
  %i.amg = fadd reassoc nsz arcp contract afn float %i.amf, -5.000000e-01
  %i.amh = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.amg)
  %i.ami = fmul reassoc nsz arcp contract afn float %i.amh, %i.my ; 2 uses
  %i.amj = fsub reassoc nsz arcp contract afn float %i.ame, %i.ami
  store float %i.ami, ptr %i.amd, align 4, !tbaa !396, !alias.scope !532, !noalias !533
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alx, i64 8 ; 2 uses
  %i.aml = load <2 x float>, ptr %i.amk, align 4, !tbaa !396, !alias.scope !532, !noalias !533 ; 2 uses
  %i.amm = fmul reassoc nsz arcp contract afn <2 x float> %i.aml, %i.so
  %i.amn = fadd reassoc nsz arcp contract afn <2 x float> %i.amm, splat (float -5.000000e-01)
  %i.amo = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.amn)
  %i.amp = fmul reassoc nsz arcp contract afn <2 x float> %i.amo, %i.sq ; 2 uses
  %i.amq = fsub reassoc nsz arcp contract afn <2 x float> %i.aml, %i.amp
  store <2 x float> %i.amp, ptr %i.amk, align 4, !tbaa !396, !alias.scope !532, !noalias !533
  br label %.lr.ph271.preheader.i

.loopexit.loopexit32.i373.i:                      ; preds = %bb.y
  %i.amr = fmul reassoc nsz arcp contract afn float %i.aly, 3.000000e-01
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alx, i64 4
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !396, !alias.scope !534, !noalias !533 ; 2 uses
  %i.amu = fmul reassoc nsz arcp contract afn float %i.amt, 5.900000e-01
  %i.amv = fadd reassoc nsz arcp contract afn float %i.amu, %i.amr
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.amx = load <2 x float>, ptr %i.amw, align 4, !tbaa !396, !alias.scope !532, !noalias !533 ; 2 uses
  %i.amy = extractelement <2 x float> %i.amx, i64 0
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amy, 1.100000e-01
  %i.ana = fadd reassoc nsz arcp contract afn float %i.amv, %i.amz
  %i.anb = fmul reassoc nsz arcp contract afn float %i.ana, %i.mx
  %i.anc = fadd reassoc nsz arcp contract afn float %i.anb, -5.000000e-01
  %i.and = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.anc)
  %i.ane = fmul reassoc nsz arcp contract afn float %i.and, %i.my ; 4 uses
  %i.anf = fsub reassoc nsz arcp contract afn float %i.amt, %i.ane
  %i.ang = insertelement <2 x float> poison, float %i.ane, i64 0
  %i.anh = shufflevector <2 x float> %i.ang, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ani = fsub reassoc nsz arcp contract afn <2 x float> %i.amx, %i.anh
  %i.anj = insertelement <4 x float> poison, float %i.ane, i64 0
  %i.ank = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ank, ptr %i.alx, align 4, !tbaa !396, !alias.scope !532, !noalias !533
  br label %.lr.ph271.preheader.i

.lr.ph271.preheader.i:                            ; preds = %.loopexit.loopexit32.i373.i, %.preheader.preheader.i374.i
  %.sroa.81.8.i = phi nsz float [ %i.amj, %.preheader.preheader.i374.i ], [ %i.anf, %.loopexit.loopexit32.i373.i ]
  %.pn.i = phi float [ %i.amc, %.preheader.preheader.i374.i ], [ %i.ane, %.loopexit.loopexit32.i373.i ]
  %i.anl = phi <2 x float> [ %i.amq, %.preheader.preheader.i374.i ], [ %i.ani, %.loopexit.loopexit32.i373.i ]
  %.sroa.0.8.i = fsub reassoc nsz arcp contract afn float %i.aly, %.pn.i
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.si ; 3 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ano = load <4 x float>, ptr %i.ann, align 4, !tbaa !396, !alias.scope !536, !noalias !535 ; 4 uses
  %i.anp = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ano, zeroinitializer
  %i.anq = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ano, splat (float 1.000000e+00)
  %i.anr = select <4 x i1> %i.anq, <4 x float> %i.ano, <4 x float> splat (float 1.000000e+00)
  %i.ans = fcmp ord <4 x float> %i.ano, zeroinitializer
  %i.ant = select <4 x i1> %i.ans, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.anu = select <4 x i1> %i.anp, <4 x float> %i.ant, <4 x float> %i.anr
  store <4 x float> %i.anu, ptr %i.anm, align 4, !tbaa !396, !alias.scope !535, !noalias !536
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.sk ; 3 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %i.sk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.anx = load <4 x float>, ptr %i.anw, align 4, !tbaa !396, !alias.scope !538, !noalias !537 ; 4 uses
  %i.any = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.anx, zeroinitializer
  %i.anz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.anx, splat (float 1.000000e+00)
  %i.aoa = select <4 x i1> %i.anz, <4 x float> %i.anx, <4 x float> splat (float 1.000000e+00)
  %i.aob = fcmp ord <4 x float> %i.anx, zeroinitializer
  %i.aoc = select <4 x i1> %i.aob, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aod = select <4 x i1> %i.any, <4 x float> %i.aoc, <4 x float> %i.aoa
  store <4 x float> %i.aod, ptr %i.anv, align 4, !tbaa !396, !alias.scope !537, !noalias !538
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.alx, i64 16 ; 2 uses
  %i.aof = insertelement <4 x float> poison, float %.sroa.0.8.i, i64 0
  %i.aog = insertelement <4 x float> %i.aof, float %.sroa.81.8.i, i64 1
  %i.aoh = shufflevector <2 x float> %i.anl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aoi = shufflevector <4 x float> %i.aog, <4 x float> %i.aoh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.aoj = fmul reassoc nsz arcp contract afn <4 x float> %i.aoi, splat (float 4.375000e-01)
  %i.aok = load <4 x float>, ptr %i.aoe, align 4, !tbaa !396, !alias.scope !539, !noalias !540
  %i.aol = fadd reassoc nsz arcp contract afn <4 x float> %i.aok, %i.aoj
  store <4 x float> %i.aol, ptr %i.aoe, align 4, !tbaa !396, !alias.scope !539, !noalias !540
  %i.aom = fmul reassoc nsz arcp contract afn <4 x float> %i.aoi, splat (float 3.125000e-01)
  %i.aon = load <4 x float>, ptr %i.anm, align 4, !tbaa !396, !alias.scope !541, !noalias !542
  %i.aoo = fadd reassoc nsz arcp contract afn <4 x float> %i.aon, %i.aom
  store <4 x float> %i.aoo, ptr %i.anm, align 4, !tbaa !396, !alias.scope !541, !noalias !542
  %i.aop = fmul reassoc nsz arcp contract afn <4 x float> %i.aoi, splat (float 6.250000e-02)
  %i.aoq = load <4 x float>, ptr %i.anv, align 4, !tbaa !396, !alias.scope !543, !noalias !544
  %i.aor = fadd reassoc nsz arcp contract afn <4 x float> %i.aoq, %i.aop
  store <4 x float> %i.aor, ptr %i.anv, align 4, !tbaa !396, !alias.scope !543, !noalias !544
  br label %.lr.ph271.i

._crit_edge272.i:                                 ; preds = %_nearest_color.exit383.i
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.sg ; 9 uses
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !396, !alias.scope !545, !noalias !546 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i378.i, label %.loopexit.loopexit32.i377.i

.preheader.preheader.i378.i:                      ; preds = %._crit_edge272.i
  %i.aou = fmul reassoc nsz arcp contract afn float %i.aot, %i.mx
  %i.aov = fadd reassoc nsz arcp contract afn float %i.aou, -5.000000e-01
  %i.aow = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aov)
  %i.aox = fmul reassoc nsz arcp contract afn float %i.aow, %i.my ; 2 uses
  store float %i.aox, ptr %i.aos, align 4, !tbaa !396, !alias.scope !545, !noalias !546
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aos, i64 4 ; 2 uses
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !396, !alias.scope !545, !noalias !546 ; 2 uses
  %i.apa = fmul reassoc nsz arcp contract afn float %i.aoz, %i.mx
  %i.apb = fadd reassoc nsz arcp contract afn float %i.apa, -5.000000e-01
  %i.apc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.apb)
  %i.apd = fmul reassoc nsz arcp contract afn float %i.apc, %i.my ; 2 uses
  %i.ape = fsub reassoc nsz arcp contract afn float %i.aoz, %i.apd
  store float %i.apd, ptr %i.aoy, align 4, !tbaa !396, !alias.scope !545, !noalias !546
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aos, i64 8 ; 2 uses
  %i.apg = load <2 x float>, ptr %i.apf, align 4, !tbaa !396, !alias.scope !545, !noalias !546 ; 2 uses
  %i.aph = fmul reassoc nsz arcp contract afn <2 x float> %i.apg, %i.so
  %i.api = fadd reassoc nsz arcp contract afn <2 x float> %i.aph, splat (float -5.000000e-01)
  %i.apj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.api)
  %i.apk = fmul reassoc nsz arcp contract afn <2 x float> %i.apj, %i.sq ; 2 uses
  %i.apl = fsub reassoc nsz arcp contract afn <2 x float> %i.apg, %i.apk
  store <2 x float> %i.apk, ptr %i.apf, align 4, !tbaa !396, !alias.scope !545, !noalias !546
  br label %_nearest_color.exit379.i

.loopexit.loopexit32.i377.i:                      ; preds = %._crit_edge272.i
  %i.apm = fmul reassoc nsz arcp contract afn float %i.aot, 3.000000e-01
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aos, i64 4
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !396, !alias.scope !547, !noalias !546 ; 2 uses
  %i.app = fmul reassoc nsz arcp contract afn float %i.apo, 5.900000e-01
  %i.apq = fadd reassoc nsz arcp contract afn float %i.app, %i.apm
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aps = load <2 x float>, ptr %i.apr, align 4, !tbaa !396, !alias.scope !545, !noalias !546 ; 2 uses
  %i.apt = extractelement <2 x float> %i.aps, i64 0
  %i.apu = fmul reassoc nsz arcp contract afn float %i.apt, 1.100000e-01
  %i.apv = fadd reassoc nsz arcp contract afn float %i.apq, %i.apu
  %i.apw = fmul reassoc nsz arcp contract afn float %i.apv, %i.mx
  %i.apx = fadd reassoc nsz arcp contract afn float %i.apw, -5.000000e-01
  %i.apy = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.apx)
  %i.apz = fmul reassoc nsz arcp contract afn float %i.apy, %i.my ; 4 uses
  %i.aqa = fsub reassoc nsz arcp contract afn float %i.apo, %i.apz
  %i.aqb = insertelement <2 x float> poison, float %i.apz, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqd = fsub reassoc nsz arcp contract afn <2 x float> %i.aps, %i.aqc
  %i.aqe = insertelement <4 x float> poison, float %i.apz, i64 0
  %i.aqf = shufflevector <4 x float> %i.aqe, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aqf, ptr %i.aos, align 4, !tbaa !396, !alias.scope !545, !noalias !546
  br label %_nearest_color.exit379.i

_nearest_color.exit379.i:                         ; preds = %.loopexit.loopexit32.i377.i, %.preheader.preheader.i378.i
  %.sroa.81.9.i = phi nsz float [ %i.ape, %.preheader.preheader.i378.i ], [ %i.aqa, %.loopexit.loopexit32.i377.i ]
  %.pn182.i = phi float [ %i.aox, %.preheader.preheader.i378.i ], [ %i.apz, %.loopexit.loopexit32.i377.i ]
  %i.aqg = phi <2 x float> [ %i.apl, %.preheader.preheader.i378.i ], [ %i.aqd, %.loopexit.loopexit32.i377.i ]
  %.sroa.0.9.i = fsub reassoc nsz arcp contract afn float %i.aot, %.pn182.i
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.sg ; 2 uses
  %i.aqi = insertelement <4 x float> poison, float %.sroa.0.9.i, i64 0
  %i.aqj = insertelement <4 x float> %i.aqi, float %.sroa.81.9.i, i64 1
  %i.aqk = shufflevector <2 x float> %i.aqg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aql = shufflevector <4 x float> %i.aqj, <4 x float> %i.aqk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aqm = fmul reassoc nsz arcp contract afn <4 x float> %i.aql, splat (float 1.875000e-01)
  %i.aqn = load <4 x float>, ptr %i.aqh, align 4, !tbaa !396, !alias.scope !548, !noalias !549
  %i.aqo = fadd reassoc nsz arcp contract afn <4 x float> %i.aqm, %i.aqn
  store <4 x float> %i.aqo, ptr %i.aqh, align 4, !tbaa !396, !alias.scope !548, !noalias !549
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.si ; 2 uses
  %i.aqq = fmul reassoc nsz arcp contract afn <4 x float> %i.aql, splat (float 3.125000e-01)
  %i.aqr = load <4 x float>, ptr %i.aqp, align 4, !tbaa !396, !alias.scope !550, !noalias !551
  %i.aqs = fadd reassoc nsz arcp contract afn <4 x float> %i.aqr, %i.aqq
  store <4 x float> %i.aqs, ptr %i.aqp, align 4, !tbaa !396, !alias.scope !550, !noalias !551
  br label %.lr.ph306.i

.lr.ph271.i:                                      ; preds = %_nearest_color.exit383.i, %.lr.ph271.preheader.i
  %indvars.iv331.i = phi i64 [ 1, %.lr.ph271.preheader.i ], [ %indvars.iv.next332.i, %_nearest_color.exit383.i ] ; 2 uses
  %i.aqt = shl nuw nsw i64 %indvars.iv331.i, 2    ; 2 uses
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.aqt ; 11 uses
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !396, !alias.scope !552, !noalias !553 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i382.i, label %.loopexit.loopexit32.i381.i

.preheader.preheader.i382.i:                      ; preds = %.lr.ph271.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !396, !alias.scope !552, !noalias !553 ; 2 uses
  %i.aqy = insertelement <2 x float> poison, float %i.aqv, i64 0
  %i.aqz = insertelement <2 x float> %i.aqy, float %i.aqx, i64 1
  %i.ara = fmul reassoc nsz arcp contract afn <2 x float> %i.aqz, %i.so
  %i.arb = fadd reassoc nsz arcp contract afn <2 x float> %i.ara, splat (float -5.000000e-01)
  %i.arc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.arb)
  %i.ard = fmul reassoc nsz arcp contract afn <2 x float> %i.arc, %i.sq ; 3 uses
  %i.are = extractelement <2 x float> %i.ard, i64 1
  %i.arf = fsub reassoc nsz arcp contract afn float %i.aqx, %i.are
  store <2 x float> %i.ard, ptr %i.aqu, align 4, !tbaa !396, !alias.scope !552, !noalias !553
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8 ; 2 uses
  %i.arh = load <2 x float>, ptr %i.arg, align 4, !tbaa !396, !alias.scope !552, !noalias !553 ; 2 uses
  %i.ari = fmul reassoc nsz arcp contract afn <2 x float> %i.arh, %i.so
  %i.arj = fadd reassoc nsz arcp contract afn <2 x float> %i.ari, splat (float -5.000000e-01)
  %i.ark = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.arj)
  %i.arl = fmul reassoc nsz arcp contract afn <2 x float> %i.ark, %i.sq ; 2 uses
  %i.arm = fsub reassoc nsz arcp contract afn <2 x float> %i.arh, %i.arl
  store <2 x float> %i.arl, ptr %i.arg, align 4, !tbaa !396, !alias.scope !552, !noalias !553
  %i.arn = extractelement <2 x float> %i.ard, i64 0
  br label %_nearest_color.exit383.i

.loopexit.loopexit32.i381.i:                      ; preds = %.lr.ph271.i
  %.reass267.i = fmul reassoc nsz arcp contract afn float %i.aqv, %factor.op.fmul227.i
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !396, !alias.scope !554, !noalias !553 ; 2 uses
  %.reass269.i = fmul reassoc nsz arcp contract afn float %i.arp, %factor.op.fmul229.i
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  %i.arr = fadd reassoc nsz arcp contract afn float %.reass267.i, -5.000000e-01
  %i.ars = fadd reassoc nsz arcp contract afn float %i.arr, %.reass269.i
  %i.art = load <2 x float>, ptr %i.arq, align 4, !tbaa !396, !alias.scope !552, !noalias !553 ; 2 uses
  %i.aru = extractelement <2 x float> %i.art, i64 0
  %.reass265.i = fmul reassoc nsz arcp contract afn float %i.aru, %factor.op.fmul225.i
  %i.arv = fadd reassoc nsz arcp contract afn float %i.ars, %.reass265.i
  %i.arw = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.arv)
  %i.arx = fmul reassoc nsz arcp contract afn float %i.arw, %i.my ; 4 uses
  %i.ary = fsub reassoc nsz arcp contract afn float %i.arp, %i.arx
  %i.arz = insertelement <2 x float> poison, float %i.arx, i64 0
  %i.asa = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asb = fsub reassoc nsz arcp contract afn <2 x float> %i.art, %i.asa
  %i.asc = insertelement <4 x float> poison, float %i.arx, i64 0
  %i.asd = shufflevector <4 x float> %i.asc, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.asd, ptr %i.aqu, align 4, !tbaa !396, !alias.scope !552, !noalias !553
  br label %_nearest_color.exit383.i

_nearest_color.exit383.i:                         ; preds = %.loopexit.loopexit32.i381.i, %.preheader.preheader.i382.i
  %.sroa.81.10.i = phi nsz float [ %i.arf, %.preheader.preheader.i382.i ], [ %i.ary, %.loopexit.loopexit32.i381.i ]
  %.pn183.i = phi float [ %i.arn, %.preheader.preheader.i382.i ], [ %i.arx, %.loopexit.loopexit32.i381.i ]
  %i.ase = phi <2 x float> [ %i.arm, %.preheader.preheader.i382.i ], [ %i.asb, %.loopexit.loopexit32.i381.i ]
  %.sroa.0.10.i = fsub reassoc nsz arcp contract afn float %i.aqv, %.pn183.i
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.sk ; 3 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.aqt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.asg = load <4 x float>, ptr %gep.i, align 4, !tbaa !396, !alias.scope !556, !noalias !555 ; 4 uses
  %i.ash = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.asg, zeroinitializer
  %i.asi = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.asg, splat (float 1.000000e+00)
  %i.asj = select <4 x i1> %i.asi, <4 x float> %i.asg, <4 x float> splat (float 1.000000e+00)
  %i.ask = fcmp ord <4 x float> %i.asg, zeroinitializer
  %i.asl = select <4 x i1> %i.ask, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.asm = select <4 x i1> %i.ash, <4 x float> %i.asl, <4 x float> %i.asj
  store <4 x float> %i.asm, ptr %i.asf, align 4, !tbaa !396, !alias.scope !555, !noalias !556
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16 ; 2 uses
  %i.aso = insertelement <4 x float> poison, float %.sroa.0.10.i, i64 0
  %i.asp = insertelement <4 x float> %i.aso, float %.sroa.81.10.i, i64 1
  %i.asq = shufflevector <2 x float> %i.ase, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asr = shufflevector <4 x float> %i.asp, <4 x float> %i.asq, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ass = fmul reassoc nsz arcp contract afn <4 x float> %i.asr, splat (float 4.375000e-01)
  %i.ast = load <4 x float>, ptr %i.asn, align 4, !tbaa !396, !alias.scope !557, !noalias !558
  %i.asu = fadd reassoc nsz arcp contract afn <4 x float> %i.ast, %i.ass
  store <4 x float> %i.asu, ptr %i.asn, align 4, !tbaa !396, !alias.scope !557, !noalias !558
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.sg ; 2 uses
  %i.asw = fmul reassoc nsz arcp contract afn <4 x float> %i.asr, splat (float 1.875000e-01)
  %i.asx = load <4 x float>, ptr %i.asv, align 4, !tbaa !396, !alias.scope !559, !noalias !560
  %i.asy = fadd reassoc nsz arcp contract afn <4 x float> %i.asx, %i.asw
  store <4 x float> %i.asy, ptr %i.asv, align 4, !tbaa !396, !alias.scope !559, !noalias !560
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.si ; 2 uses
  %i.ata = fmul reassoc nsz arcp contract afn <4 x float> %i.asr, splat (float 3.125000e-01)
  %i.atb = load <4 x float>, ptr %i.asz, align 4, !tbaa !396, !alias.scope !561, !noalias !562
  %i.atc = fadd reassoc nsz arcp contract afn <4 x float> %i.atb, %i.ata
  store <4 x float> %i.atc, ptr %i.asz, align 4, !tbaa !396, !alias.scope !561, !noalias !562
  %i.atd = fmul reassoc nsz arcp contract afn <4 x float> %i.asr, splat (float 6.250000e-02)
  %i.ate = load <4 x float>, ptr %i.asf, align 4, !tbaa !396, !alias.scope !563, !noalias !564
  %i.atf = fadd reassoc nsz arcp contract afn <4 x float> %i.ate, %i.atd
  store <4 x float> %i.atf, ptr %i.asf, align 4, !tbaa !396, !alias.scope !563, !noalias !564
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 2 uses
  %exitcond335.not.i = icmp eq i64 %indvars.iv.next332.i, %i.sm
  br i1 %exitcond335.not.i, label %._crit_edge272.i, label %.lr.ph271.i

bb.z:                                             ; preds = %_nearest_color.exit391.i, %.lr.ph297.i
  %indvars.iv341.i = phi i64 [ 0, %.lr.ph297.i ], [ %indvars.iv.next342.i, %_nearest_color.exit391.i ] ; 2 uses
  %i.atg = shl nuw nsw i64 %indvars.iv341.i, 2
  %i.ath = mul nuw i64 %i.atg, %wide.trip.count321.i ; 2 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ath ; 2 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ath ; 12 uses
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !396, !alias.scope !565, !noalias !566 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i386.i, label %.loopexit.loopexit32.i385.i

.preheader.preheader.i386.i:                      ; preds = %bb.z
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 4
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !396, !alias.scope !565, !noalias !566 ; 2 uses
  %i.atn = insertelement <2 x float> poison, float %i.atk, i64 0
  %i.ato = insertelement <2 x float> %i.atn, float %i.atm, i64 1
  %i.atp = fmul reassoc nsz arcp contract afn <2 x float> %i.ato, %i.sx
  %i.atq = fadd reassoc nsz arcp contract afn <2 x float> %i.atp, splat (float -5.000000e-01)
  %i.atr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.atq)
  %i.ats = fmul reassoc nsz arcp contract afn <2 x float> %i.atr, %i.sz ; 3 uses
  %i.att = extractelement <2 x float> %i.ats, i64 1
  %i.atu = fsub reassoc nsz arcp contract afn float %i.atm, %i.att
  store <2 x float> %i.ats, ptr %i.atj, align 4, !tbaa !396, !alias.scope !565, !noalias !566
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atj, i64 8 ; 2 uses
  %i.atw = load <2 x float>, ptr %i.atv, align 4, !tbaa !396, !alias.scope !565, !noalias !566 ; 2 uses
  %i.atx = fmul reassoc nsz arcp contract afn <2 x float> %i.atw, %i.sx
  %i.aty = fadd reassoc nsz arcp contract afn <2 x float> %i.atx, splat (float -5.000000e-01)
  %i.atz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aty)
  %i.aua = fmul reassoc nsz arcp contract afn <2 x float> %i.atz, %i.sz ; 2 uses
  %i.aub = fsub reassoc nsz arcp contract afn <2 x float> %i.atw, %i.aua
  store <2 x float> %i.aua, ptr %i.atv, align 4, !tbaa !396, !alias.scope !565, !noalias !566
  %i.auc = extractelement <2 x float> %i.ats, i64 0
  br label %.lr.ph282.preheader.i

.loopexit.loopexit32.i385.i:                      ; preds = %bb.z
  %.reass287.i = fmul reassoc nsz arcp contract afn float %i.atk, %factor.op.fmul286.i
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atj, i64 4
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !396, !alias.scope !567, !noalias !566 ; 2 uses
  %.reass289.i = fmul reassoc nsz arcp contract afn float %i.aue, %factor.op.fmul288.i
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  %i.aug = fadd reassoc nsz arcp contract afn float %.reass287.i, -5.000000e-01
  %i.auh = fadd reassoc nsz arcp contract afn float %i.aug, %.reass289.i
  %i.aui = load <2 x float>, ptr %i.auf, align 4, !tbaa !396, !alias.scope !565, !noalias !566 ; 2 uses
  %i.auj = extractelement <2 x float> %i.aui, i64 0
  %.reass285.i = fmul reassoc nsz arcp contract afn float %i.auj, %factor.op.fmul284.i
  %i.auk = fadd reassoc nsz arcp contract afn float %i.auh, %.reass285.i
  %i.aul = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.auk)
  %i.aum = fmul reassoc nsz arcp contract afn float %i.aul, %i.my ; 4 uses
  %i.aun = fsub reassoc nsz arcp contract afn float %i.aue, %i.aum
  %i.auo = insertelement <2 x float> poison, float %i.aum, i64 0
  %i.aup = shufflevector <2 x float> %i.auo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auq = fsub reassoc nsz arcp contract afn <2 x float> %i.aui, %i.aup
  %i.aur = insertelement <4 x float> poison, float %i.aum, i64 0
  %i.aus = shufflevector <4 x float> %i.aur, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aus, ptr %i.atj, align 4, !tbaa !396, !alias.scope !565, !noalias !566
  br label %.lr.ph282.preheader.i

.lr.ph282.preheader.i:                            ; preds = %.loopexit.loopexit32.i385.i, %.preheader.preheader.i386.i
  %.sroa.81.11.i = phi nsz float [ %i.atu, %.preheader.preheader.i386.i ], [ %i.aun, %.loopexit.loopexit32.i385.i ]
  %.pn203.i = phi float [ %i.auc, %.preheader.preheader.i386.i ], [ %i.aum, %.loopexit.loopexit32.i385.i ]
  %i.aut = phi <2 x float> [ %i.aub, %.preheader.preheader.i386.i ], [ %i.auq, %.loopexit.loopexit32.i385.i ]
  %.sroa.0.11.i = fsub reassoc nsz arcp contract afn float %i.atk, %.pn203.i
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.si ; 3 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.ati, i64 %i.si
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.auw = load <4 x float>, ptr %i.auv, align 4, !tbaa !396, !alias.scope !569, !noalias !568 ; 4 uses
  %i.aux = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.auw, zeroinitializer
  %i.auy = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.auw, splat (float 1.000000e+00)
  %i.auz = select <4 x i1> %i.auy, <4 x float> %i.auw, <4 x float> splat (float 1.000000e+00)
  %i.ava = fcmp ord <4 x float> %i.auw, zeroinitializer
  %i.avb = select <4 x i1> %i.ava, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.avc = select <4 x i1> %i.aux, <4 x float> %i.avb, <4 x float> %i.auz
  store <4 x float> %i.avc, ptr %i.auu, align 4, !tbaa !396, !alias.scope !568, !noalias !569
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.sk ; 3 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.ati, i64 %i.sk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.avf = load <4 x float>, ptr %i.ave, align 4, !tbaa !396, !alias.scope !571, !noalias !570 ; 4 uses
  %i.avg = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.avf, zeroinitializer
  %i.avh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.avf, splat (float 1.000000e+00)
  %i.avi = select <4 x i1> %i.avh, <4 x float> %i.avf, <4 x float> splat (float 1.000000e+00)
  %i.avj = fcmp ord <4 x float> %i.avf, zeroinitializer
  %i.avk = select <4 x i1> %i.avj, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.avl = select <4 x i1> %i.avg, <4 x float> %i.avk, <4 x float> %i.avi
  store <4 x float> %i.avl, ptr %i.avd, align 4, !tbaa !396, !alias.scope !570, !noalias !571
  %i.avm = getelementptr inbounds nuw i8, ptr %i.atj, i64 16 ; 2 uses
  %i.avn = insertelement <4 x float> poison, float %.sroa.0.11.i, i64 0
  %i.avo = insertelement <4 x float> %i.avn, float %.sroa.81.11.i, i64 1
  %i.avp = shufflevector <2 x float> %i.aut, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avq = shufflevector <4 x float> %i.avo, <4 x float> %i.avp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.avr = fmul reassoc nsz arcp contract afn <4 x float> %i.avq, splat (float 4.375000e-01)
  %i.avs = load <4 x float>, ptr %i.avm, align 4, !tbaa !396, !alias.scope !572, !noalias !573
  %i.avt = fadd reassoc nsz arcp contract afn <4 x float> %i.avs, %i.avr
  store <4 x float> %i.avt, ptr %i.avm, align 4, !tbaa !396, !alias.scope !572, !noalias !573
  %i.avu = fmul reassoc nsz arcp contract afn <4 x float> %i.avq, splat (float 3.125000e-01)
  %i.avv = load <4 x float>, ptr %i.auu, align 4, !tbaa !396, !alias.scope !574, !noalias !575
  %i.avw = fadd reassoc nsz arcp contract afn <4 x float> %i.avv, %i.avu
  store <4 x float> %i.avw, ptr %i.auu, align 4, !tbaa !396, !alias.scope !574, !noalias !575
  %i.avx = fmul reassoc nsz arcp contract afn <4 x float> %i.avq, splat (float 6.250000e-02)
  %i.avy = load <4 x float>, ptr %i.avd, align 4, !tbaa !396, !alias.scope !576, !noalias !577
  %i.avz = fadd reassoc nsz arcp contract afn <4 x float> %i.avy, %i.avx
  store <4 x float> %i.avz, ptr %i.avd, align 4, !tbaa !396, !alias.scope !576, !noalias !577
  br label %.lr.ph282.i

._crit_edge283.i:                                 ; preds = %_nearest_color.exit395.i
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.sg ; 9 uses
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !396, !alias.scope !578, !noalias !579 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i390.i, label %.loopexit.loopexit32.i389.i

.preheader.preheader.i390.i:                      ; preds = %._crit_edge283.i
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !396, !alias.scope !578, !noalias !579 ; 2 uses
  %i.awe = insertelement <2 x float> poison, float %i.awb, i64 0
  %i.awf = insertelement <2 x float> %i.awe, float %i.awd, i64 1
  %i.awg = fmul reassoc nsz arcp contract afn <2 x float> %i.awf, %i.sx
  %i.awh = fadd reassoc nsz arcp contract afn <2 x float> %i.awg, splat (float -5.000000e-01)
  %i.awi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.awh)
  %i.awj = fmul reassoc nsz arcp contract afn <2 x float> %i.awi, %i.sz ; 3 uses
  %i.awk = extractelement <2 x float> %i.awj, i64 1
  %i.awl = fsub reassoc nsz arcp contract afn float %i.awd, %i.awk
  store <2 x float> %i.awj, ptr %i.awa, align 4, !tbaa !396, !alias.scope !578, !noalias !579
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awa, i64 8 ; 2 uses
  %i.awn = load <2 x float>, ptr %i.awm, align 4, !tbaa !396, !alias.scope !578, !noalias !579 ; 2 uses
  %i.awo = fmul reassoc nsz arcp contract afn <2 x float> %i.awn, %i.sx
  %i.awp = fadd reassoc nsz arcp contract afn <2 x float> %i.awo, splat (float -5.000000e-01)
  %i.awq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.awp)
  %i.awr = fmul reassoc nsz arcp contract afn <2 x float> %i.awq, %i.sz ; 2 uses
  %i.aws = fsub reassoc nsz arcp contract afn <2 x float> %i.awn, %i.awr
  store <2 x float> %i.awr, ptr %i.awm, align 4, !tbaa !396, !alias.scope !578, !noalias !579
  %i.awt = extractelement <2 x float> %i.awj, i64 0
  br label %_nearest_color.exit391.i

.loopexit.loopexit32.i389.i:                      ; preds = %._crit_edge283.i
  %.reass293.i = fmul reassoc nsz arcp contract afn float %i.awb, %factor.op.fmul286.i
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !396, !alias.scope !580, !noalias !579 ; 2 uses
  %.reass295.i = fmul reassoc nsz arcp contract afn float %i.awv, %factor.op.fmul288.i
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %i.awx = fadd reassoc nsz arcp contract afn float %.reass293.i, -5.000000e-01
  %i.awy = fadd reassoc nsz arcp contract afn float %i.awx, %.reass295.i
  %i.awz = load <2 x float>, ptr %i.aww, align 4, !tbaa !396, !alias.scope !578, !noalias !579 ; 2 uses
  %i.axa = extractelement <2 x float> %i.awz, i64 0
  %.reass291.i = fmul reassoc nsz arcp contract afn float %i.axa, %factor.op.fmul284.i
  %i.axb = fadd reassoc nsz arcp contract afn float %i.awy, %.reass291.i
  %i.axc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.axb)
  %i.axd = fmul reassoc nsz arcp contract afn float %i.axc, %i.my ; 4 uses
  %i.axe = fsub reassoc nsz arcp contract afn float %i.awv, %i.axd
  %i.axf = insertelement <2 x float> poison, float %i.axd, i64 0
  %i.axg = shufflevector <2 x float> %i.axf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axh = fsub reassoc nsz arcp contract afn <2 x float> %i.awz, %i.axg
  %i.axi = insertelement <4 x float> poison, float %i.axd, i64 0
  %i.axj = shufflevector <4 x float> %i.axi, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.axj, ptr %i.awa, align 4, !tbaa !396, !alias.scope !578, !noalias !579
  br label %_nearest_color.exit391.i

_nearest_color.exit391.i:                         ; preds = %.loopexit.loopexit32.i389.i, %.preheader.preheader.i390.i
  %.sroa.81.12.i = phi nsz float [ %i.awl, %.preheader.preheader.i390.i ], [ %i.axe, %.loopexit.loopexit32.i389.i ]
  %.pn204.i = phi float [ %i.awt, %.preheader.preheader.i390.i ], [ %i.axd, %.loopexit.loopexit32.i389.i ]
  %i.axk = phi <2 x float> [ %i.aws, %.preheader.preheader.i390.i ], [ %i.axh, %.loopexit.loopexit32.i389.i ]
  %.sroa.0.12.i = fsub reassoc nsz arcp contract afn float %i.awb, %.pn204.i
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %i.sg ; 2 uses
  %i.axm = insertelement <4 x float> poison, float %.sroa.0.12.i, i64 0
  %i.axn = insertelement <4 x float> %i.axm, float %.sroa.81.12.i, i64 1
  %i.axo = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.axp = shufflevector <4 x float> %i.axn, <4 x float> %i.axo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.axq = fmul reassoc nsz arcp contract afn <4 x float> %i.axp, splat (float 1.875000e-01)
  %i.axr = load <4 x float>, ptr %i.axl, align 4, !tbaa !396, !alias.scope !581, !noalias !582
  %i.axs = fadd reassoc nsz arcp contract afn <4 x float> %i.axq, %i.axr
  store <4 x float> %i.axs, ptr %i.axl, align 4, !tbaa !396, !alias.scope !581, !noalias !582
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %i.si ; 2 uses
  %i.axu = fmul reassoc nsz arcp contract afn <4 x float> %i.axp, splat (float 3.125000e-01)
  %i.axv = load <4 x float>, ptr %i.axt, align 4, !tbaa !396, !alias.scope !583, !noalias !584
  %i.axw = fadd reassoc nsz arcp contract afn <4 x float> %i.axv, %i.axu
  store <4 x float> %i.axw, ptr %i.axt, align 4, !tbaa !396, !alias.scope !583, !noalias !584
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %indvars.iv.next342.i, %wide.trip.count344.i
  br i1 %exitcond345.not.i, label %.lr.ph306.i, label %bb.z

.lr.ph282.i:                                      ; preds = %_nearest_color.exit395.i, %.lr.ph282.preheader.i
  %indvars.iv336.i = phi i64 [ 1, %.lr.ph282.preheader.i ], [ %indvars.iv.next337.i, %_nearest_color.exit395.i ] ; 2 uses
  %i.axx = shl nuw nsw i64 %indvars.iv336.i, 2    ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.axx ; 11 uses
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !396, !alias.scope !585, !noalias !586 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i394.i, label %.loopexit.loopexit32.i393.i

.preheader.preheader.i394.i:                      ; preds = %.lr.ph282.i
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axy, i64 4
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !396, !alias.scope !585, !noalias !586 ; 2 uses
  %i.ayc = insertelement <2 x float> poison, float %i.axz, i64 0
  %i.ayd = insertelement <2 x float> %i.ayc, float %i.ayb, i64 1
  %i.aye = fmul reassoc nsz arcp contract afn <2 x float> %i.ayd, %i.sx
  %i.ayf = fadd reassoc nsz arcp contract afn <2 x float> %i.aye, splat (float -5.000000e-01)
  %i.ayg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ayf)
  %i.ayh = fmul reassoc nsz arcp contract afn <2 x float> %i.ayg, %i.sz ; 3 uses
  %i.ayi = extractelement <2 x float> %i.ayh, i64 1
  %i.ayj = fsub reassoc nsz arcp contract afn float %i.ayb, %i.ayi
  store <2 x float> %i.ayh, ptr %i.axy, align 4, !tbaa !396, !alias.scope !585, !noalias !586
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axy, i64 8 ; 2 uses
  %i.ayl = load <2 x float>, ptr %i.ayk, align 4, !tbaa !396, !alias.scope !585, !noalias !586 ; 2 uses
  %i.aym = fmul reassoc nsz arcp contract afn <2 x float> %i.ayl, %i.sx
  %i.ayn = fadd reassoc nsz arcp contract afn <2 x float> %i.aym, splat (float -5.000000e-01)
  %i.ayo = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ayn)
  %i.ayp = fmul reassoc nsz arcp contract afn <2 x float> %i.ayo, %i.sz ; 2 uses
  %i.ayq = fsub reassoc nsz arcp contract afn <2 x float> %i.ayl, %i.ayp
  store <2 x float> %i.ayp, ptr %i.ayk, align 4, !tbaa !396, !alias.scope !585, !noalias !586
  %i.ayr = extractelement <2 x float> %i.ayh, i64 0
  br label %_nearest_color.exit395.i

.loopexit.loopexit32.i393.i:                      ; preds = %.lr.ph282.i
  %.reass276.i = fmul reassoc nsz arcp contract afn float %i.axz, %factor.op.fmul286.i
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axy, i64 4
  %i.ayt = load float, ptr %i.ays, align 4, !tbaa !396, !alias.scope !587, !noalias !586 ; 2 uses
  %.reass278.i = fmul reassoc nsz arcp contract afn float %i.ayt, %factor.op.fmul288.i
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  %i.ayv = fadd reassoc nsz arcp contract afn float %.reass276.i, -5.000000e-01
  %i.ayw = fadd reassoc nsz arcp contract afn float %i.ayv, %.reass278.i
  %i.ayx = load <2 x float>, ptr %i.ayu, align 4, !tbaa !396, !alias.scope !585, !noalias !586 ; 2 uses
  %i.ayy = extractelement <2 x float> %i.ayx, i64 0
  %.reass274.i = fmul reassoc nsz arcp contract afn float %i.ayy, %factor.op.fmul284.i
  %i.ayz = fadd reassoc nsz arcp contract afn float %i.ayw, %.reass274.i
  %i.aza = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ayz)
  %i.azb = fmul reassoc nsz arcp contract afn float %i.aza, %i.my ; 4 uses
  %i.azc = fsub reassoc nsz arcp contract afn float %i.ayt, %i.azb
  %i.azd = insertelement <2 x float> poison, float %i.azb, i64 0
  %i.aze = shufflevector <2 x float> %i.azd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azf = fsub reassoc nsz arcp contract afn <2 x float> %i.ayx, %i.aze
  %i.azg = insertelement <4 x float> poison, float %i.azb, i64 0
  %i.azh = shufflevector <4 x float> %i.azg, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.azh, ptr %i.axy, align 4, !tbaa !396, !alias.scope !585, !noalias !586
  br label %_nearest_color.exit395.i

_nearest_color.exit395.i:                         ; preds = %.loopexit.loopexit32.i393.i, %.preheader.preheader.i394.i
  %.sroa.81.13.i = phi nsz float [ %i.ayj, %.preheader.preheader.i394.i ], [ %i.azc, %.loopexit.loopexit32.i393.i ]
  %.pn205.i = phi float [ %i.ayr, %.preheader.preheader.i394.i ], [ %i.azb, %.loopexit.loopexit32.i393.i ]
  %i.azi = phi <2 x float> [ %i.ayq, %.preheader.preheader.i394.i ], [ %i.azf, %.loopexit.loopexit32.i393.i ]
  %.sroa.0.13.i = fsub reassoc nsz arcp contract afn float %i.axz, %.pn205.i
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.sk ; 3 uses
  %gep280.i = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.axx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.azk = load <4 x float>, ptr %gep280.i, align 4, !tbaa !396, !alias.scope !589, !noalias !588 ; 4 uses
  %i.azl = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.azk, zeroinitializer
  %i.azm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.azk, splat (float 1.000000e+00)
  %i.azn = select <4 x i1> %i.azm, <4 x float> %i.azk, <4 x float> splat (float 1.000000e+00)
  %i.azo = fcmp ord <4 x float> %i.azk, zeroinitializer
  %i.azp = select <4 x i1> %i.azo, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.azq = select <4 x i1> %i.azl, <4 x float> %i.azp, <4 x float> %i.azn
  store <4 x float> %i.azq, ptr %i.azj, align 4, !tbaa !396, !alias.scope !588, !noalias !589
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axy, i64 16 ; 2 uses
  %i.azs = insertelement <4 x float> poison, float %.sroa.0.13.i, i64 0
  %i.azt = insertelement <4 x float> %i.azs, float %.sroa.81.13.i, i64 1
  %i.azu = shufflevector <2 x float> %i.azi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.azv = shufflevector <4 x float> %i.azt, <4 x float> %i.azu, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.azw = fmul reassoc nsz arcp contract afn <4 x float> %i.azv, splat (float 4.375000e-01)
  %i.azx = load <4 x float>, ptr %i.azr, align 4, !tbaa !396, !alias.scope !590, !noalias !591
  %i.azy = fadd reassoc nsz arcp contract afn <4 x float> %i.azx, %i.azw
  store <4 x float> %i.azy, ptr %i.azr, align 4, !tbaa !396, !alias.scope !590, !noalias !591
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.sg ; 2 uses
  %i.baa = fmul reassoc nsz arcp contract afn <4 x float> %i.azv, splat (float 1.875000e-01)
  %i.bab = load <4 x float>, ptr %i.azz, align 4, !tbaa !396, !alias.scope !592, !noalias !593
  %i.bac = fadd reassoc nsz arcp contract afn <4 x float> %i.bab, %i.baa
  store <4 x float> %i.bac, ptr %i.azz, align 4, !tbaa !396, !alias.scope !592, !noalias !593
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.si ; 2 uses
  %i.bae = fmul reassoc nsz arcp contract afn <4 x float> %i.azv, splat (float 3.125000e-01)
  %i.baf = load <4 x float>, ptr %i.bad, align 4, !tbaa !396, !alias.scope !594, !noalias !595
  %i.bag = fadd reassoc nsz arcp contract afn <4 x float> %i.baf, %i.bae
  store <4 x float> %i.bag, ptr %i.bad, align 4, !tbaa !396, !alias.scope !594, !noalias !595
  %i.bah = fmul reassoc nsz arcp contract afn <4 x float> %i.azv, splat (float 6.250000e-02)
  %i.bai = load <4 x float>, ptr %i.azj, align 4, !tbaa !396, !alias.scope !596, !noalias !597
  %i.baj = fadd reassoc nsz arcp contract afn <4 x float> %i.bai, %i.bah
  store <4 x float> %i.baj, ptr %i.azj, align 4, !tbaa !396, !alias.scope !596, !noalias !597
  %indvars.iv.next337.i = add nuw nsw i64 %indvars.iv336.i, 1 ; 2 uses
  %exitcond340.not.i = icmp eq i64 %indvars.iv.next337.i, %wide.trip.count344.i.a
  br i1 %exitcond340.not.i, label %._crit_edge283.i, label %.lr.ph282.i

.lr.ph306.i:                                      ; preds = %_nearest_color.exit391.i, %_nearest_color.exit379.i, %._crit_edge263.i
  %wide.trip.count349.i.pre-phi = phi i64 [ %i.sm, %._crit_edge263.i ], [ %i.sm, %_nearest_color.exit379.i ], [ %wide.trip.count344.i.a, %_nearest_color.exit391.i ]
  %factor.op.fmul302.pre-phi.i = phi float [ %factor.op.fmul229.i, %._crit_edge263.i ], [ %factor.op.fmul229.i, %_nearest_color.exit379.i ], [ %factor.op.fmul288.i, %_nearest_color.exit391.i ]
  %factor.op.fmul300.pre-phi.i = phi float [ %factor.op.fmul227.i, %._crit_edge263.i ], [ %factor.op.fmul227.i, %_nearest_color.exit379.i ], [ %factor.op.fmul286.i, %_nearest_color.exit391.i ]
  %factor.op.fmul298.pre-phi.i = phi float [ %factor.op.fmul225.i, %._crit_edge263.i ], [ %factor.op.fmul225.i, %_nearest_color.exit379.i ], [ %factor.op.fmul284.i, %_nearest_color.exit391.i ]
  %i.bak = add nsw i32 %i.iy, -1
  %i.bal = zext nneg i32 %i.bak to i64
  %i.bam = shl nuw nsw i64 %wide.trip.count321.i, 2
  %i.ban = mul nuw i64 %i.bam, %i.bal
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ban ; 2 uses
  %i.bap = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.baq = shufflevector <2 x float> %i.bap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bar = insertelement <2 x float> poison, float %i.my, i64 0
  %i.bas = shufflevector <2 x float> %i.bar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.aa

._crit_edge307.i:                                 ; preds = %_nearest_color.exit403.i
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %i.bao, i64 %i.sg ; 7 uses
  %i.bau = load float, ptr %i.bat, align 4, !tbaa !396, !alias.scope !598, !noalias !599 ; 2 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i398.i, label %.loopexit.loopexit32.i397.i

.preheader.preheader.i398.i:                      ; preds = %._crit_edge307.i
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !396, !alias.scope !598, !noalias !599
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.bay = load <2 x float>, ptr %i.bax, align 4, !tbaa !396, !alias.scope !598, !noalias !599
  %i.baz = insertelement <4 x float> poison, float %i.bau, i64 0
  %i.bba = insertelement <4 x float> %i.baz, float %i.baw, i64 1
  %i.bbb = shufflevector <2 x float> %i.bay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bbc = shufflevector <4 x float> %i.bba, <4 x float> %i.bbb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbd = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.bbe = shufflevector <4 x float> %i.bbd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbf = fmul reassoc nsz arcp contract afn <4 x float> %i.bbc, %i.bbe
  %i.bbg = fadd reassoc nsz arcp contract afn <4 x float> %i.bbf, splat (float -5.000000e-01)
  %i.bbh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bbg)
  %i.bbi = insertelement <4 x float> poison, float %i.my, i64 0
  %i.bbj = shufflevector <4 x float> %i.bbi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbk = fmul reassoc nsz arcp contract afn <4 x float> %i.bbh, %i.bbj
  store <4 x float> %i.bbk, ptr %i.bat, align 4, !tbaa !396, !alias.scope !598, !noalias !599
  br label %_process_floyd_steinberg.exit

.loopexit.loopexit32.i397.i:                      ; preds = %._crit_edge307.i
  %i.bbl = fmul reassoc nsz arcp contract afn float %i.bau, 3.000000e-01
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !396, !alias.scope !600, !noalias !599
  %i.bbo = fmul reassoc nsz arcp contract afn float %i.bbn, 5.900000e-01
  %i.bbp = fadd reassoc nsz arcp contract afn float %i.bbo, %i.bbl
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.bbr = load float, ptr %i.bbq, align 4, !tbaa !396, !alias.scope !600, !noalias !599
  %i.bbs = fmul reassoc nsz arcp contract afn float %i.bbr, 1.100000e-01
  %i.bbt = fadd reassoc nsz arcp contract afn float %i.bbp, %i.bbs
  %i.bbu = fmul reassoc nsz arcp contract afn float %i.bbt, %i.mx
  %i.bbv = fadd reassoc nsz arcp contract afn float %i.bbu, -5.000000e-01
  %i.bbw = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bbv)
  %i.bbx = fmul reassoc nsz arcp contract afn float %i.bbw, %i.my
  %i.bby = insertelement <4 x float> poison, float %i.bbx, i64 0
  %i.bbz = shufflevector <4 x float> %i.bby, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bbz, ptr %i.bat, align 4, !tbaa !396, !alias.scope !598, !noalias !599
  br label %_process_floyd_steinberg.exit

bb.aa:                                            ; preds = %_nearest_color.exit403.i, %.lr.ph306.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph306.i ], [ %indvars.iv.next347.i, %_nearest_color.exit403.i ] ; 2 uses
  %.idx.i.a = shl nuw nsw i64 %indvars.iv346.i, 4
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bao, i64 %.idx.i.a ; 8 uses
  %i.bcb = load float, ptr %i.bca, align 4, !tbaa !396, !alias.scope !601, !noalias !602 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i402.i, label %.loopexit.loopexit32.i401.i

.preheader.preheader.i402.i:                      ; preds = %bb.aa
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bca, i64 4
  %i.bcd = load float, ptr %i.bcc, align 4, !tbaa !396, !alias.scope !601, !noalias !602 ; 2 uses
  %i.bce = insertelement <2 x float> poison, float %i.bcb, i64 0
  %i.bcf = insertelement <2 x float> %i.bce, float %i.bcd, i64 1
  %i.bcg = fmul reassoc nsz arcp contract afn <2 x float> %i.bcf, %i.baq
  %i.bch = fadd reassoc nsz arcp contract afn <2 x float> %i.bcg, splat (float -5.000000e-01)
  %i.bci = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bch)
  %i.bcj = fmul reassoc nsz arcp contract afn <2 x float> %i.bci, %i.bas ; 3 uses
  %i.bck = extractelement <2 x float> %i.bcj, i64 1
  %i.bcl = fsub reassoc nsz arcp contract afn float %i.bcd, %i.bck
  store <2 x float> %i.bcj, ptr %i.bca, align 4, !tbaa !396, !alias.scope !601, !noalias !602
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bca, i64 8 ; 2 uses
  %i.bcn = load <2 x float>, ptr %i.bcm, align 4, !tbaa !396, !alias.scope !601, !noalias !602 ; 2 uses
  %i.bco = fmul reassoc nsz arcp contract afn <2 x float> %i.bcn, %i.baq
  %i.bcp = fadd reassoc nsz arcp contract afn <2 x float> %i.bco, splat (float -5.000000e-01)
  %i.bcq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bcp)
  %i.bcr = fmul reassoc nsz arcp contract afn <2 x float> %i.bcq, %i.bas ; 2 uses
  %i.bcs = fsub reassoc nsz arcp contract afn <2 x float> %i.bcn, %i.bcr
  store <2 x float> %i.bcr, ptr %i.bcm, align 4, !tbaa !396, !alias.scope !601, !noalias !602
  %i.bct = extractelement <2 x float> %i.bcj, i64 0
  br label %_nearest_color.exit403.i

.loopexit.loopexit32.i401.i:                      ; preds = %bb.aa
  %.reass301.i = fmul reassoc nsz arcp contract afn float %i.bcb, %factor.op.fmul300.pre-phi.i
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bca, i64 4
  %i.bcv = load float, ptr %i.bcu, align 4, !tbaa !396, !alias.scope !603, !noalias !602 ; 2 uses
  %.reass303.i = fmul reassoc nsz arcp contract afn float %i.bcv, %factor.op.fmul302.pre-phi.i
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bca, i64 8
  %i.bcx = fadd reassoc nsz arcp contract afn float %.reass301.i, -5.000000e-01
  %i.bcy = fadd reassoc nsz arcp contract afn float %i.bcx, %.reass303.i
  %i.bcz = load <2 x float>, ptr %i.bcw, align 4, !tbaa !396, !alias.scope !601, !noalias !602 ; 2 uses
  %i.bda = extractelement <2 x float> %i.bcz, i64 0
  %.reass299.i = fmul reassoc nsz arcp contract afn float %i.bda, %factor.op.fmul298.pre-phi.i
  %i.bdb = fadd reassoc nsz arcp contract afn float %i.bcy, %.reass299.i
  %i.bdc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bdb)
  %i.bdd = fmul reassoc nsz arcp contract afn float %i.bdc, %i.my ; 4 uses
  %i.bde = fsub reassoc nsz arcp contract afn float %i.bcv, %i.bdd
  %i.bdf = insertelement <2 x float> poison, float %i.bdd, i64 0
  %i.bdg = shufflevector <2 x float> %i.bdf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdh = fsub reassoc nsz arcp contract afn <2 x float> %i.bcz, %i.bdg
  %i.bdi = insertelement <4 x float> poison, float %i.bdd, i64 0
  %i.bdj = shufflevector <4 x float> %i.bdi, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bdj, ptr %i.bca, align 4, !tbaa !396, !alias.scope !601, !noalias !602
  br label %_nearest_color.exit403.i

_nearest_color.exit403.i:                         ; preds = %.loopexit.loopexit32.i401.i, %.preheader.preheader.i402.i
  %.sroa.81.14.i = phi nsz float [ %i.bcl, %.preheader.preheader.i402.i ], [ %i.bde, %.loopexit.loopexit32.i401.i ]
  %.pn202.i = phi float [ %i.bct, %.preheader.preheader.i402.i ], [ %i.bdd, %.loopexit.loopexit32.i401.i ]
  %i.bdk = phi <2 x float> [ %i.bcs, %.preheader.preheader.i402.i ], [ %i.bdh, %.loopexit.loopexit32.i401.i ]
  %.sroa.0.14.i = fsub reassoc nsz arcp contract afn float %i.bcb, %.pn202.i
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bca, i64 16 ; 2 uses
  %i.bdm = insertelement <4 x float> poison, float %.sroa.0.14.i, i64 0
  %i.bdn = insertelement <4 x float> %i.bdm, float %.sroa.81.14.i, i64 1
  %i.bdo = shufflevector <2 x float> %i.bdk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bdp = shufflevector <4 x float> %i.bdn, <4 x float> %i.bdo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bdq = fmul reassoc nsz arcp contract afn <4 x float> %i.bdp, splat (float 4.375000e-01)
  %i.bdr = load <4 x float>, ptr %i.bdl, align 4, !tbaa !396, !alias.scope !604, !noalias !605
  %i.bds = fadd reassoc nsz arcp contract afn <4 x float> %i.bdq, %i.bdr
  store <4 x float> %i.bds, ptr %i.bdl, align 4, !tbaa !396, !alias.scope !604, !noalias !605
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i.pre-phi
  br i1 %exitcond350.not.i, label %._crit_edge307.i, label %bb.aa

_process_floyd_steinberg.exit:                    ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41, %_nearest_color.exit.i, %middle.block, %.loopexit.loopexit32.i397.i, %.preheader.preheader.i398.i, %.preheader.i, %.preheader209.i, %_process_random.exit, %_process_posterize.exit, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !50  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = load i32, ptr %i.f, align 4, !tbaa !56
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.h, i32 noundef %i.k) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !37  ; 4 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.c, ptr %i.b, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = load float, ptr %i.f, align 4, !tbaa !606
  store float %i.h, ptr %i.d, align 4, !tbaa !607
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !608
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.j, ptr %i.k, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !37
  tail call void @free(ptr noundef %i.b) #17
  store ptr null, ptr %i.a, align 16, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = load i32, ptr %i.d, align 4, !tbaa !56
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.f, i32 noundef %i.i) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 40) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !50
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.7) #17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !54
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #17
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.c, ptr noundef %i.e) #17
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !54
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.f, i32 noundef 3) #17
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !54
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.g, ptr noundef nonnull @.str.9) #17
  %i.h = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.10) #17
  store ptr %i.h, ptr %i.a, align 8, !tbaa !52
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !611
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !42
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !42
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !42
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !42
  store ptr @introspection_init.f7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 688), align 16, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.10) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.47) #23
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.48) #23
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.49) #23
  %.not18 = icmp eq i32 %i.f, 0
end_hunk_1
