Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_dither?download=true
inline.NumInlined: 106
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process:bb.a
  %i.of = select reassoc nsz arcp contract afn <8 x i1> %i.oe, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.og = select reassoc nsz arcp contract afn <8 x i1> %i.ob, <8 x float> %i.of, <8 x float> %i.od ; 3 uses
  %wide.gep118 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.og, <8 x ptr> align 4 %wide.gep118, <8 x i1> splat (i1 true)), !tbaa !88, !alias.scope !143, !noalias !146
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat101, %i.nu
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat103, %i.oa
  %i.oj = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, %i.oi
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat105, %i.og
  %i.ol = fadd reassoc nsz arcp contract afn <8 x float> %i.oj, %i.ok
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %i.ol, splat (float -5.000000e-01)
  %i.on = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.om)
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %broadcast.splat107 ; 4 uses
  %wide.gep119 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep112, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep119, <8 x i1> %broadcast.splat, <8 x float> poison), !tbaa !88, !alias.scope !146, !noalias !138 ; 4 uses
  %i.op = fcmp reassoc nsz arcp contract afn ult <8 x float> %wide.masked.gather, zeroinitializer
  %i.oq = fcmp ord <8 x float> %wide.masked.gather, zeroinitializer
  %i.or = select reassoc nsz arcp contract afn <8 x i1> %i.oq, <8 x float> zeroinitializer, <8 x float> splat (float 5.000000e-01)
  %i.os = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, splat (float 1.000000e+00)
  %i.ot = select reassoc nsz arcp contract afn <8 x i1> %i.os, <8 x float> %wide.masked.gather, <8 x float> splat (float 1.000000e+00)
  %i.ou = select reassoc nsz arcp contract afn <8 x i1> %i.op, <8 x float> %i.or, <8 x float> %i.ot
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %i.nu, %broadcast.splat109
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.ov, splat (float -5.000000e-01)
  %i.ox = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.ow)
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %i.ox, %broadcast.splat107
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %broadcast.splat109
  %i.pa = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, splat (float -5.000000e-01)
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pa)
  %i.pc = fmul reassoc nsz arcp contract afn <8 x float> %i.pb, %broadcast.splat107
  %i.pd = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat109
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pd, splat (float -5.000000e-01)
  %i.pf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pe)
  %i.pg = fmul reassoc nsz arcp contract afn <8 x float> %i.pf, %broadcast.splat107
  %i.ph = fmul reassoc nsz arcp contract afn <8 x float> %i.ou, %broadcast.splat109
  %i.pi = fadd reassoc nsz arcp contract afn <8 x float> %i.ph, splat (float -5.000000e-01)
  %i.pj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.ceil.v8f32(<8 x float> %i.pi)
  %i.pk = fmul reassoc nsz arcp contract afn <8 x float> %i.pj, %broadcast.splat107
  %predphi = select i1 %.2.i181.i, <8 x float> %i.oy, <8 x float> %i.oo
  %predphi120 = select i1 %.2.i181.i, <8 x float> %i.pc, <8 x float> %i.oo
  %predphi121 = select i1 %.2.i181.i, <8 x float> %i.pg, <8 x float> %i.oo
  %predphi122 = select i1 %.2.i181.i, <8 x float> %i.pk, <8 x float> %i.oo
  %i.pl = shufflevector <8 x float> %predphi, <8 x float> %predphi120, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pm = shufflevector <8 x float> %predphi121, <8 x float> %predphi122, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec123 = shufflevector <16 x float> %i.pl, <16 x float> %i.pm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec123, ptr %i.nn, align 4, !tbaa !88, !alias.scope !148, !noalias !151
  %index.next124 = add nuw i64 %index111, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.pn = icmp eq i64 %index.next124, %n.vec99
  br i1 %i.pn, label %scalar.ph96.preheader, label %vector.body110, !llvm.loop !153

scalar.ph96.preheader:                            ; preds = %vector.body110, %vector.memcheck90, %.lr.ph315.i
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck90 ], [ 0, %.lr.ph315.i ], [ %n.vec99, %vector.body110 ]
  %i.po = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pq = insertelement <4 x float> poison, float %i.na, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph96

scalar.ph96:                                      ; preds = %scalar.ph96.preheader, %_nearest_color.exit.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i, %_nearest_color.exit.i ], [ %indvars.iv351.i.ph, %scalar.ph96.preheader ] ; 2 uses
  %i.ps = shl nuw nsw i64 %indvars.iv351.i, 2     ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ps ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ps ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.pw = fcmp reassoc nsz arcp contract afn ult float %i.pv, 0.000000e+00
  %i.px = fcmp reassoc nsz arcp contract afn olt float %i.pv, 1.000000e+00
  %i.py = select reassoc nsz arcp contract afn i1 %i.px, float %i.pv, float 1.000000e+00
  %i.pz = fcmp ord float %i.pv, 0.000000e+00
  %i.qa = select reassoc nsz arcp contract afn i1 %i.pz, float 0.000000e+00, float 5.000000e-01
  %i.qb = select reassoc nsz arcp contract afn i1 %i.pw, float %i.qa, float %i.py ; 3 uses
  store float %i.qb, ptr %i.pt, align 4, !tbaa !88, !alias.scope !138, !noalias !141
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qe = load <2 x float>, ptr %i.qc, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.qf = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.qe, zeroinitializer
  %i.qg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.qe, splat (float 1.000000e+00)
  %i.qh = select <2 x i1> %i.qg, <2 x float> %i.qe, <2 x float> splat (float 1.000000e+00)
  %i.qi = fcmp ord <2 x float> %i.qe, zeroinitializer
  %i.qj = select <2 x i1> %i.qi, <2 x float> zeroinitializer, <2 x float> splat (float 5.000000e-01)
  %i.qk = select <2 x i1> %i.qf, <2 x float> %i.qj, <2 x float> %i.qh ; 3 uses
  store <2 x float> %i.qk, ptr %i.qd, align 4, !tbaa !88, !alias.scope !138, !noalias !141
  br i1 %.2.i181.i, label %.preheader.preheader.i.i, label %.loopexit.loopexit32.i.i

.preheader.preheader.i.i:                         ; preds = %scalar.ph96
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !88, !alias.scope !141, !noalias !138 ; 4 uses
  %i.qn = fcmp reassoc nsz arcp contract afn ult float %i.qm, 0.000000e+00
  %i.qo = fcmp ord float %i.qm, 0.000000e+00
  %i.qp = select reassoc nsz arcp contract afn i1 %i.qo, float 0.000000e+00, float 5.000000e-01
  %i.qq = fcmp reassoc nsz arcp contract afn olt float %i.qm, 1.000000e+00
  %i.qr = select reassoc nsz arcp contract afn i1 %i.qq, float %i.qm, float 1.000000e+00
  %i.qs = select reassoc nsz arcp contract afn i1 %i.qn, float %i.qp, float %i.qr
  %i.qt = insertelement <4 x float> poison, float %i.qb, i64 0
  %i.qu = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qw = insertelement <4 x float> %i.qv, float %i.qs, i64 3
  %i.qx = fmul reassoc nsz arcp contract afn <4 x float> %i.qw, %i.pp
  %i.qy = fadd reassoc nsz arcp contract afn <4 x float> %i.qx, splat (float -5.000000e-01)
  %i.qz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.qy)
  %i.ra = fmul reassoc nsz arcp contract afn <4 x float> %i.qz, %i.pr
  br label %_nearest_color.exit.i

.loopexit.loopexit32.i.i:                         ; preds = %scalar.ph96
  %.reass311.i = fmul reassoc nsz arcp contract afn float %factor.op.fmul310.i, %i.qb
  %i.rb = fmul reassoc nsz arcp contract afn <2 x float> %i.ng, %i.qk ; 2 uses
  %i.rc = extractelement <2 x float> %i.rb, i64 0
  %i.rd = fadd reassoc nsz arcp contract afn float %.reass311.i, %i.rc
  %i.re = extractelement <2 x float> %i.rb, i64 1
  %i.rf = fadd reassoc nsz arcp contract afn float %i.rd, %i.re
  %i.rg = fadd reassoc nsz arcp contract afn float %i.rf, -5.000000e-01
  %i.rh = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.rg)
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.na
  %i.rj = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit.i

_nearest_color.exit.i:                            ; preds = %.loopexit.loopexit32.i.i, %.preheader.preheader.i.i
  %i.rl = phi <4 x float> [ %i.ra, %.preheader.preheader.i.i ], [ %i.rk, %.loopexit.loopexit32.i.i ]
  store <4 x float> %i.rl, ptr %i.pt, align 4, !tbaa !88, !alias.scope !148, !noalias !151
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count354.i
  br i1 %exitcond355.not.i, label %_process_floyd_steinberg.exit, label %scalar.ph96, !llvm.loop !154

bb.ai:                                            ; preds = %_get_dither_parameters.exit.thread.i
  %wide.trip.count321.i = zext nneg i32 %i.ja to i64 ; 10 uses
  %min.iters.check75 = icmp ult i32 %i.ja, 8
  br i1 %min.iters.check75, label %scalar.ph74.preheader, label %vector.memcheck68

vector.memcheck68:                                ; preds = %bb.ai
  %i.rm = shl nuw nsw i64 %wide.trip.count321.i, 4 ; 2 uses
  %scevgep69 = getelementptr i8, ptr %3, i64 %i.rm
  %scevgep70 = getelementptr i8, ptr %2, i64 %i.rm
  %bound071 = icmp ult ptr %3, %scevgep70
  %bound172 = icmp ult ptr %2, %scevgep69
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %scalar.ph74.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %vector.memcheck68
  %n.vec77 = and i64 %wide.trip.count321.i, 2147483640 ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next86, %vector.body78 ] ; 2 uses
  %i.rn = shl nuw nsw i64 %index79, 2             ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rn
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %wide.vec80 = load <32 x float>, ptr %i.rp, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.rq = fcmp reassoc nsz arcp contract afn ult <32 x float> %wide.vec80, zeroinitializer
  %i.rr = fcmp ord <32 x float> %wide.vec80, zeroinitializer
  %i.rs = select reassoc nsz arcp contract afn <32 x i1> %i.rr, <32 x float> zeroinitializer, <32 x float> splat (float 5.000000e-01)
  %i.rt = fcmp reassoc nsz arcp contract afn olt <32 x float> %wide.vec80, splat (float 1.000000e+00)
  %i.ru = select reassoc nsz arcp contract afn <32 x i1> %i.rt, <32 x float> %wide.vec80, <32 x float> splat (float 1.000000e+00)
  %interleaved.vec85 = select reassoc nsz arcp contract afn <32 x i1> %i.rq, <32 x float> %i.rs, <32 x float> %i.ru
  store <32 x float> %interleaved.vec85, ptr %i.ro, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %index.next86 = add nuw i64 %index79, 8         ; 2 uses
  %i.rv = icmp eq i64 %index.next86, %n.vec77
  br i1 %i.rv, label %middle.block87, label %vector.body78, !llvm.loop !160

middle.block87:                                   ; preds = %vector.body78
  %cmp.n88 = icmp eq i64 %n.vec77, %wide.trip.count321.i
  br i1 %cmp.n88, label %.loopexit, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %vector.memcheck68, %bb.ai, %middle.block87
  %indvars.iv318.i.ph = phi i64 [ 0, %vector.memcheck68 ], [ 0, %bb.ai ], [ %n.vec77, %middle.block87 ] ; 3 uses
  %xtraiter131 = and i64 %wide.trip.count321.i, 3 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %scalar.ph74.prol.loopexit, label %scalar.ph74.prol

scalar.ph74.prol:                                 ; preds = %scalar.ph74.preheader, %scalar.ph74.prol
  %indvars.iv318.i.prol = phi i64 [ %indvars.iv.next319.i.prol, %scalar.ph74.prol ], [ %indvars.iv318.i.ph, %scalar.ph74.preheader ] ; 2 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %scalar.ph74.prol ], [ 0, %scalar.ph74.preheader ]
  %i.rw = shl nuw nsw i64 %indvars.iv318.i.prol, 2 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rw
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.rz = load <4 x float>, ptr %i.ry, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.sa = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.rz, zeroinitializer
  %i.sb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.rz, splat (float 1.000000e+00)
  %i.sc = select <4 x i1> %i.sb, <4 x float> %i.rz, <4 x float> splat (float 1.000000e+00)
  %i.sd = fcmp ord <4 x float> %i.rz, zeroinitializer
  %i.se = select <4 x i1> %i.sd, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.sf = select <4 x i1> %i.sa, <4 x float> %i.se, <4 x float> %i.sc
  store <4 x float> %i.sf, ptr %i.rx, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %indvars.iv.next319.i.prol = add nuw nsw i64 %indvars.iv318.i.prol, 1 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %scalar.ph74.prol.loopexit, label %scalar.ph74.prol, !llvm.loop !161

scalar.ph74.prol.loopexit:                        ; preds = %scalar.ph74.prol, %scalar.ph74.preheader
  %indvars.iv318.i.unr = phi i64 [ %indvars.iv318.i.ph, %scalar.ph74.preheader ], [ %indvars.iv.next319.i.prol, %scalar.ph74.prol ]
  %i.sg = sub nsw i64 %indvars.iv318.i.ph, %wide.trip.count321.i
  %i.sh = icmp ugt i64 %i.sg, -4
  br i1 %i.sh, label %.loopexit, label %scalar.ph74

.loopexit:                                        ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74, %middle.block87
  %i.si = add nsw i32 %i.ja, -1                   ; 2 uses
  %i.sj = shl nuw nsw i32 %i.si, 2
  %i.sk = zext nneg i32 %i.sj to i64              ; 17 uses
  %i.sl = shl i32 %i.ja, 2                        ; 2 uses
  %i.sm = zext nneg i32 %i.sl to i64              ; 18 uses
  %i.sn = add i32 %i.sl, 4
  %i.so = zext nneg i32 %i.sn to i64              ; 18 uses
  %.not.i39 = icmp eq i32 %i.iy, 0
  %wide.trip.count339.i = zext nneg i32 %i.si to i64 ; 4 uses
  br i1 %.not.i39, label %.lr.ph297.i, label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.loopexit
  %i.sp = add nsw i32 %i.jc, -2
  %factor.op.fmul227.i = fmul reassoc nnan nsz arcp contract afn float %i.mz, 3.000000e-01 ; 11 uses
  %i.sq = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.ss = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.sr, <float 5.900000e-01, float 1.100000e-01> ; 4 uses
  %i.st = extractelement <2 x float> %i.ss, i64 1 ; 9 uses
  %i.su = extractelement <2 x float> %i.ss, i64 0 ; 9 uses
  %i.sv = zext nneg i32 %i.sp to i64              ; 2 uses
  %i.sw = insertelement <2 x float> poison, float %i.na, i64 0
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.sy = insertelement <4 x float> poison, float %i.na, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ta = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.aj

.lr.ph297.i:                                      ; preds = %.loopexit
  %factor.op.fmul284.i = fmul reassoc nnan nsz arcp contract afn float %i.mz, 1.100000e-01 ; 4 uses
  %factor.op.fmul286.i = fmul reassoc nnan nsz arcp contract afn float %i.mz, 3.000000e-01 ; 4 uses
  %factor.op.fmul288.i = fmul reassoc nnan nsz arcp contract afn float %i.mz, 5.900000e-01 ; 4 uses
  %i.tc = add nsw i32 %i.jc, -1
  %wide.trip.count344.i = zext nneg i32 %i.tc to i64
  %i.td = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.tf = insertelement <2 x float> poison, float %i.na, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %bb.al

scalar.ph74:                                      ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i.3, %scalar.ph74 ], [ %indvars.iv318.i.unr, %scalar.ph74.prol.loopexit ] ; 5 uses
  %i.th = shl nuw nsw i64 %indvars.iv318.i, 2     ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.th
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.th
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.tk = load <4 x float>, ptr %i.tj, align 4, !tbaa !88, !alias.scope !158, !noalias !155 ; 4 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.tk, zeroinitializer
  %i.tm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.tk, splat (float 1.000000e+00)
  %i.tn = select <4 x i1> %i.tm, <4 x float> %i.tk, <4 x float> splat (float 1.000000e+00)
  %i.to = fcmp ord <4 x float> %i.tk, zeroinitializer
  %i.tp = select <4 x i1> %i.to, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.tq = select <4 x i1> %i.tl, <4 x float> %i.tp, <4 x float> %i.tn
  store <4 x float> %i.tq, ptr %i.ti, align 4, !tbaa !88, !alias.scope !155, !noalias !158
  %indvars.iv.next319.i = shl i64 %indvars.iv318.i, 2
  %i.tr = add i64 %indvars.iv.next319.i, 4        ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.tr
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.tu = load <4 x float>, ptr %i.tt, align 4, !tbaa !88, !alias.scope !164, !noalias !162 ; 4 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.tu, zeroinitializer
  %i.tw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.tu, splat (float 1.000000e+00)
  %i.tx = select <4 x i1> %i.tw, <4 x float> %i.tu, <4 x float> splat (float 1.000000e+00)
  %i.ty = fcmp ord <4 x float> %i.tu, zeroinitializer
  %i.tz = select <4 x i1> %i.ty, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ua = select <4 x i1> %i.tv, <4 x float> %i.tz, <4 x float> %i.tx
  store <4 x float> %i.ua, ptr %i.ts, align 4, !tbaa !88, !alias.scope !162, !noalias !164
  %indvars.iv.next319.i.1 = shl i64 %indvars.iv318.i, 2
  %i.ub = add i64 %indvars.iv.next319.i.1, 8      ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ub
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ub
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ue = load <4 x float>, ptr %i.ud, align 4, !tbaa !88, !alias.scope !168, !noalias !166 ; 4 uses
  %i.uf = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ue, zeroinitializer
  %i.ug = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ue, splat (float 1.000000e+00)
  %i.uh = select <4 x i1> %i.ug, <4 x float> %i.ue, <4 x float> splat (float 1.000000e+00)
  %i.ui = fcmp ord <4 x float> %i.ue, zeroinitializer
  %i.uj = select <4 x i1> %i.ui, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.uk = select <4 x i1> %i.uf, <4 x float> %i.uj, <4 x float> %i.uh
  store <4 x float> %i.uk, ptr %i.uc, align 4, !tbaa !88, !alias.scope !166, !noalias !168
  %indvars.iv.next319.i.2 = shl i64 %indvars.iv318.i, 2
  %i.ul = add i64 %indvars.iv.next319.i.2, 12     ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ul
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ul
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.uo = load <4 x float>, ptr %i.un, align 4, !tbaa !88, !alias.scope !172, !noalias !170 ; 4 uses
  %i.up = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.uo, zeroinitializer
  %i.uq = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.uo, splat (float 1.000000e+00)
  %i.ur = select <4 x i1> %i.uq, <4 x float> %i.uo, <4 x float> splat (float 1.000000e+00)
  %i.us = fcmp ord <4 x float> %i.uo, zeroinitializer
  %i.ut = select <4 x i1> %i.us, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.uu = select <4 x i1> %i.up, <4 x float> %i.ut, <4 x float> %i.ur
  store <4 x float> %i.uu, ptr %i.um, align 4, !tbaa !88, !alias.scope !170, !noalias !172
  %indvars.iv.next319.i.3 = add nuw nsw i64 %indvars.iv318.i, 4 ; 2 uses
  %exitcond322.not.i.3 = icmp eq i64 %indvars.iv.next319.i.3, %wide.trip.count321.i
  br i1 %exitcond322.not.i.3, label %.loopexit, label %scalar.ph74, !llvm.loop !174

._crit_edge263.i:                                 ; preds = %_nearest_color.exit363.i
  %i.uv = and i32 %i.jc, 1
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.ak, label %.lr.ph306.i

bb.aj:                                            ; preds = %_nearest_color.exit363.i, %.lr.ph262.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph262.i ], [ %indvars.iv.next329.i, %_nearest_color.exit363.i ] ; 2 uses
  %i.ux = shl nuw nsw i64 %indvars.iv328.i, 2
  %i.uy = mul nuw i64 %i.ux, %wide.trip.count321.i ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uy ; 5 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uy ; 15 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i342.i, label %.loopexit.loopexit32.i341.i

.preheader.preheader.i342.i:                      ; preds = %bb.aj
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.ve = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vf = insertelement <2 x float> %i.ve, float %i.vd, i64 1
  %i.vg = fmul reassoc nsz arcp contract afn <2 x float> %i.vf, %i.sr
  %i.vh = fadd reassoc nsz arcp contract afn <2 x float> %i.vg, splat (float -5.000000e-01)
  %i.vi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.vh)
  %i.vj = fmul reassoc nsz arcp contract afn <2 x float> %i.vi, %i.sx ; 3 uses
  %i.vk = extractelement <2 x float> %i.vj, i64 1
  %i.vl = fsub reassoc nsz arcp contract afn float %i.vd, %i.vk
  store <2 x float> %i.vj, ptr %i.va, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  %i.vm = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 2 uses
  %i.vn = load <2 x float>, ptr %i.vm, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vn, %i.sr
  %i.vp = fadd reassoc nsz arcp contract afn <2 x float> %i.vo, splat (float -5.000000e-01)
  %i.vq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.vp)
  %i.vr = fmul reassoc nsz arcp contract afn <2 x float> %i.vq, %i.sx ; 2 uses
  %i.vs = fsub reassoc nsz arcp contract afn <2 x float> %i.vn, %i.vr
  store <2 x float> %i.vr, ptr %i.vm, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  %i.vt = extractelement <2 x float> %i.vj, i64 0
  br label %_nearest_color.exit343.i

.loopexit.loopexit32.i341.i:                      ; preds = %bb.aj
  %.reass228.i = fmul reassoc nsz arcp contract afn float %i.vb, %factor.op.fmul227.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !88, !alias.scope !180, !noalias !178 ; 2 uses
  %.reass230.i = fmul reassoc nsz arcp contract afn float %i.vv, %i.su
  %i.vw = fadd reassoc nsz arcp contract afn float %.reass228.i, %.reass230.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vy = load <2 x float>, ptr %i.vx, align 4, !tbaa !88, !alias.scope !175, !noalias !178 ; 2 uses
  %i.vz = extractelement <2 x float> %i.vy, i64 0
  %.reass226.i = fmul reassoc nsz arcp contract afn float %i.vz, %i.st
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vw, %.reass226.i
  %i.wb = fadd reassoc nsz arcp contract afn float %i.wa, -5.000000e-01
  %i.wc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.wb)
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, %i.na ; 4 uses
  %i.we = fsub reassoc nsz arcp contract afn float %i.vv, %i.wd
  %i.wf = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wg = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wh = fsub reassoc nsz arcp contract afn <2 x float> %i.vy, %i.wg
  %i.wi = insertelement <4 x float> poison, float %i.wd, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.wj, ptr %i.va, align 4, !tbaa !88, !alias.scope !175, !noalias !178
  br label %_nearest_color.exit343.i

_nearest_color.exit343.i:                         ; preds = %.loopexit.loopexit32.i341.i, %.preheader.preheader.i342.i
  %.sroa.81.0.i = phi nsz float [ %i.vl, %.preheader.preheader.i342.i ], [ %i.we, %.loopexit.loopexit32.i341.i ]
  %.pn184.i = phi float [ %i.vt, %.preheader.preheader.i342.i ], [ %i.wd, %.loopexit.loopexit32.i341.i ]
  %i.wk = phi <2 x float> [ %i.vs, %.preheader.preheader.i342.i ], [ %i.wh, %.loopexit.loopexit32.i341.i ]
  %.sroa.0.0.i = fsub reassoc nsz arcp contract afn float %i.vb, %.pn184.i
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.sm ; 10 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.sm ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 4 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.wp = load <4 x float>, ptr %i.wm, align 4, !tbaa !88, !alias.scope !186, !noalias !183 ; 4 uses
  %i.wq = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wp, zeroinitializer
  %i.wr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wp, splat (float 1.000000e+00)
  %i.ws = select <4 x i1> %i.wr, <4 x float> %i.wp, <4 x float> splat (float 1.000000e+00)
  %i.wt = fcmp ord <4 x float> %i.wp, zeroinitializer
  %i.wu = select <4 x i1> %i.wt, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.wv = select <4 x i1> %i.wq, <4 x float> %i.wu, <4 x float> %i.ws
  store <4 x float> %i.wv, ptr %i.wl, align 4, !tbaa !88, !alias.scope !183, !noalias !186
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.so ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.wy = load <4 x float>, ptr %i.wx, align 4, !tbaa !88, !alias.scope !191, !noalias !188 ; 4 uses
  %i.wz = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.wy, zeroinitializer
  %i.xa = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.wy, splat (float 1.000000e+00)
  %i.xb = select <4 x i1> %i.xa, <4 x float> %i.wy, <4 x float> splat (float 1.000000e+00)
  %i.xc = fcmp ord <4 x float> %i.wy, zeroinitializer
  %i.xd = select <4 x i1> %i.xc, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.xe = select <4 x i1> %i.wz, <4 x float> %i.xd, <4 x float> %i.xb
  store <4 x float> %i.xe, ptr %i.ww, align 4, !tbaa !88, !alias.scope !188, !noalias !191
  %i.xf = getelementptr inbounds nuw i8, ptr %i.va, i64 16 ; 7 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.va, i64 20 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.va, i64 24 ; 2 uses
  %i.xi = insertelement <4 x float> poison, float %.sroa.0.0.i, i64 0
  %i.xj = insertelement <4 x float> %i.xi, float %.sroa.81.0.i, i64 1
  %i.xk = shufflevector <2 x float> %i.wk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xl = shufflevector <4 x float> %i.xj, <4 x float> %i.xk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.xm = fmul reassoc nsz arcp contract afn <4 x float> %i.xl, splat (float 4.375000e-01)
  %i.xn = load <4 x float>, ptr %i.xf, align 4, !tbaa !88, !alias.scope !193, !noalias !196
  %i.xo = fadd reassoc nsz arcp contract afn <4 x float> %i.xn, %i.xm
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.yr = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.yq)
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yr, %i.na ; 3 uses
  %i.yt = fsub reassoc nsz arcp contract afn float %i.yl, %i.ys
  %i.yu = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fsub reassoc nsz arcp contract afn <2 x float> %i.yn, %i.yv
  %i.yx = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit347.i

_nearest_color.exit347.i:                         ; preds = %.loopexit.loopexit32.i345.i, %.preheader.preheader.i346.i
  %.sroa.81.1.i = phi nsz float [ %i.yi, %.preheader.preheader.i346.i ], [ %i.yt, %.loopexit.loopexit32.i345.i ]
  %i.yz = phi <4 x float> [ %i.yf, %.preheader.preheader.i346.i ], [ %i.yy, %.loopexit.loopexit32.i345.i ] ; 2 uses
  %i.za = phi <2 x float> [ %i.yk, %.preheader.preheader.i346.i ], [ %i.yw, %.loopexit.loopexit32.i345.i ]
  %i.zb = extractelement <4 x float> %i.yz, i64 0
  %.sroa.0.1.i = fsub reassoc nsz arcp contract afn float %i.xv, %i.zb
  store <4 x float> %i.yz, ptr %i.xf, align 4, !tbaa !88, !alias.scope !208, !noalias !211
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.so ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.zf = load <4 x float>, ptr %i.ze, align 4, !tbaa !88, !alias.scope !219, !noalias !216 ; 4 uses
  %i.zg = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.zf, zeroinitializer
  %i.zh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.zf, splat (float 1.000000e+00)
  %i.zi = select <4 x i1> %i.zh, <4 x float> %i.zf, <4 x float> splat (float 1.000000e+00)
  %i.zj = fcmp ord <4 x float> %i.zf, zeroinitializer
  %i.zk = select <4 x i1> %i.zj, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.zl = select <4 x i1> %i.zg, <4 x float> %i.zk, <4 x float> %i.zi
  store <4 x float> %i.zl, ptr %i.zc, align 4, !tbaa !88, !alias.scope !216, !noalias !219
  %i.zm = getelementptr inbounds nuw i8, ptr %i.va, i64 32 ; 2 uses
  %i.zn = insertelement <4 x float> poison, float %.sroa.0.1.i, i64 0
  %i.zo = insertelement <4 x float> %i.zn, float %.sroa.81.1.i, i64 1
  %i.zp = shufflevector <2 x float> %i.za, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zq = shufflevector <4 x float> %i.zo, <4 x float> %i.zp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.zr = fmul reassoc nsz arcp contract afn <4 x float> %i.zq, splat (float 4.375000e-01)
  %i.zs = load <4 x float>, ptr %i.zm, align 4, !tbaa !88, !alias.scope !221, !noalias !224
  %i.zt = fadd reassoc nsz arcp contract afn <4 x float> %i.zs, %i.zr
  store <4 x float> %i.zt, ptr %i.zm, align 4, !tbaa !88, !alias.scope !221, !noalias !224
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.sk ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn <4 x float> %i.zq, splat (float 1.875000e-01)
  %i.zw = load <4 x float>, ptr %i.zu, align 4, !tbaa !88, !alias.scope !226, !noalias !229
  %i.zx = fadd reassoc nsz arcp contract afn <4 x float> %i.zw, %i.zv
  store <4 x float> %i.zx, ptr %i.zu, align 4, !tbaa !88, !alias.scope !226, !noalias !229
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.sm ; 2 uses
  %i.zz = fmul reassoc nsz arcp contract afn <4 x float> %i.zq, splat (float 3.125000e-01)
  %i.aaa = load <4 x float>, ptr %i.zy, align 4, !tbaa !88, !alias.scope !231, !noalias !234
  %i.aab = fadd reassoc nsz arcp contract afn <4 x float> %i.aaa, %i.zz
  store <4 x float> %i.aab, ptr %i.zy, align 4, !tbaa !88, !alias.scope !231, !noalias !234
  %i.aac = fmul reassoc nsz arcp contract afn <4 x float> %i.zq, splat (float 6.250000e-02)
  %i.aad = load <4 x float>, ptr %i.zc, align 4, !tbaa !88, !alias.scope !236, !noalias !239
  %i.aae = fadd reassoc nsz arcp contract afn <4 x float> %i.aad, %i.aac
  store <4 x float> %i.aae, ptr %i.zc, align 4, !tbaa !88, !alias.scope !236, !noalias !239
  %i.aaf = load float, ptr %i.wl, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i350.i, label %.loopexit.loopexit32.i349.i

.preheader.preheader.i350.i:                      ; preds = %_nearest_color.exit347.i
  %i.aag = load <2 x float>, ptr %i.wn, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aah = load <2 x float>, ptr %i.wo, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aai = shufflevector <2 x float> %i.aag, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aaj = insertelement <4 x float> %i.aai, float %i.aaf, i64 0
  %i.aak = shufflevector <2 x float> %i.aah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aal = shufflevector <4 x float> %i.aaj, <4 x float> %i.aak, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.tb
  %i.aan = fadd reassoc nsz arcp contract afn <4 x float> %i.aam, splat (float -5.000000e-01)
  %i.aao = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aan)
  %i.aap = fmul reassoc nsz arcp contract afn <4 x float> %i.aao, %i.sz ; 3 uses
  %i.aaq = extractelement <4 x float> %i.aap, i64 1
  %i.aar = extractelement <2 x float> %i.aag, i64 0
  %i.aas = fsub reassoc nsz arcp contract afn float %i.aar, %i.aaq
  %i.aat = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aau = fsub reassoc nsz arcp contract afn <2 x float> %i.aah, %i.aat
  br label %.lr.ph224.preheader.i

.loopexit.loopexit32.i349.i:                      ; preds = %_nearest_color.exit347.i
  %.reass240.i = fmul reassoc nsz arcp contract afn float %i.aaf, %factor.op.fmul227.i
  %i.aav = load float, ptr %i.wn, align 4, !tbaa !88, !alias.scope !246, !noalias !244 ; 2 uses
  %.reass242.i = fmul reassoc nsz arcp contract afn float %i.aav, %i.su
  %i.aaw = fadd reassoc nsz arcp contract afn float %.reass240.i, %.reass242.i
  %i.aax = load <2 x float>, ptr %i.wo, align 4, !tbaa !88, !alias.scope !241, !noalias !244 ; 2 uses
  %i.aay = extractelement <2 x float> %i.aax, i64 0
  %.reass238.i = fmul reassoc nsz arcp contract afn float %i.aay, %i.st
  %i.aaz = fadd reassoc nsz arcp contract afn float %i.aaw, %.reass238.i
  %i.aba = fadd reassoc nsz arcp contract afn float %i.aaz, -5.000000e-01
  %i.abb = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.aba)
  %i.abc = fmul reassoc nsz arcp contract afn float %i.abb, %i.na ; 3 uses
  %i.abd = fsub reassoc nsz arcp contract afn float %i.aav, %i.abc
  %i.abe = insertelement <2 x float> poison, float %i.abc, i64 0
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = fsub reassoc nsz arcp contract afn <2 x float> %i.aax, %i.abf
  %i.abh = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph224.preheader.i

.lr.ph224.preheader.i:                            ; preds = %.loopexit.loopexit32.i349.i, %.preheader.preheader.i350.i
  %.sroa.81.2.i = phi nsz float [ %i.aas, %.preheader.preheader.i350.i ], [ %i.abd, %.loopexit.loopexit32.i349.i ]
  %i.abj = phi <4 x float> [ %i.aap, %.preheader.preheader.i350.i ], [ %i.abi, %.loopexit.loopexit32.i349.i ] ; 2 uses
  %i.abk = phi <2 x float> [ %i.aau, %.preheader.preheader.i350.i ], [ %i.abg, %.loopexit.loopexit32.i349.i ]
  %i.abl = extractelement <4 x float> %i.abj, i64 0
  %.sroa.0.2.i = fsub reassoc nsz arcp contract afn float %i.aaf, %i.abl
  store <4 x float> %i.abj, ptr %i.wl, align 4, !tbaa !88, !alias.scope !241, !noalias !244
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.sm ; 3 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.sm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.abo = load <4 x float>, ptr %i.abn, align 4, !tbaa !88, !alias.scope !252, !noalias !249 ; 4 uses
  %i.abp = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abo, zeroinitializer
  %i.abq = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abo, splat (float 1.000000e+00)
  %i.abr = select <4 x i1> %i.abq, <4 x float> %i.abo, <4 x float> splat (float 1.000000e+00)
  %i.abs = fcmp ord <4 x float> %i.abo, zeroinitializer
  %i.abt = select <4 x i1> %i.abs, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.abu = select <4 x i1> %i.abp, <4 x float> %i.abt, <4 x float> %i.abr
  store <4 x float> %i.abu, ptr %i.abm, align 4, !tbaa !88, !alias.scope !249, !noalias !252
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.so ; 3 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.abx = load <4 x float>, ptr %i.abw, align 4, !tbaa !88, !alias.scope !257, !noalias !254 ; 4 uses
  %i.aby = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.abx, zeroinitializer
  %i.abz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abx, splat (float 1.000000e+00)
  %i.aca = select <4 x i1> %i.abz, <4 x float> %i.abx, <4 x float> splat (float 1.000000e+00)
  %i.acb = fcmp ord <4 x float> %i.abx, zeroinitializer
  %i.acc = select <4 x i1> %i.acb, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.acd = select <4 x i1> %i.aby, <4 x float> %i.acc, <4 x float> %i.aca
  store <4 x float> %i.acd, ptr %i.abv, align 4, !tbaa !88, !alias.scope !254, !noalias !257
  %i.ace = getelementptr inbounds nuw i8, ptr %i.wl, i64 16 ; 2 uses
  %i.acf = insertelement <4 x float> poison, float %.sroa.0.2.i, i64 0
  %i.acg = insertelement <4 x float> %i.acf, float %.sroa.81.2.i, i64 1
  %i.ach = shufflevector <2 x float> %i.abk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aci = shufflevector <4 x float> %i.acg, <4 x float> %i.ach, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.acj = fmul reassoc nsz arcp contract afn <4 x float> %i.aci, splat (float 4.375000e-01)
  %i.ack = load <4 x float>, ptr %i.ace, align 4, !tbaa !88, !alias.scope !259, !noalias !262
  %i.acl = fadd reassoc nsz arcp contract afn <4 x float> %i.ack, %i.acj
  store <4 x float> %i.acl, ptr %i.ace, align 4, !tbaa !88, !alias.scope !259, !noalias !262
  %i.acm = fmul reassoc nsz arcp contract afn <4 x float> %i.aci, splat (float 3.125000e-01)
  %i.acn = load <4 x float>, ptr %i.abm, align 4, !tbaa !88, !alias.scope !264, !noalias !267
  %i.aco = fadd reassoc nsz arcp contract afn <4 x float> %i.acn, %i.acm
  store <4 x float> %i.aco, ptr %i.abm, align 4, !tbaa !88, !alias.scope !264, !noalias !267
  %i.acp = fmul reassoc nsz arcp contract afn <4 x float> %i.aci, splat (float 6.250000e-02)
  %i.acq = load <4 x float>, ptr %i.abv, align 4, !tbaa !88, !alias.scope !269, !noalias !272
  %i.acr = fadd reassoc nsz arcp contract afn <4 x float> %i.acq, %i.acp
  store <4 x float> %i.acr, ptr %i.abv, align 4, !tbaa !88, !alias.scope !269, !noalias !272
  br label %.lr.ph224.i

._crit_edge.i:                                    ; preds = %_nearest_color.exit371.i
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.sk ; 9 uses
  %i.act = load float, ptr %i.acs, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i354.i, label %.loopexit.loopexit32.i353.i

.preheader.preheader.i354.i:                      ; preds = %._crit_edge.i
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.acw = insertelement <2 x float> poison, float %i.act, i64 0
  %i.acx = insertelement <2 x float> %i.acw, float %i.acv, i64 1
  %i.acy = fmul reassoc nsz arcp contract afn <2 x float> %i.acx, %i.sr
  %i.acz = fadd reassoc nsz arcp contract afn <2 x float> %i.acy, splat (float -5.000000e-01)
  %i.ada = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.acz)
  %i.adb = fmul reassoc nsz arcp contract afn <2 x float> %i.ada, %i.sx ; 3 uses
  %i.adc = extractelement <2 x float> %i.adb, i64 1
  %i.add = fsub reassoc nsz arcp contract afn float %i.acv, %i.adc
  store <2 x float> %i.adb, ptr %i.acs, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acs, i64 8 ; 2 uses
  %i.adf = load <2 x float>, ptr %i.ade, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.adg = fmul reassoc nsz arcp contract afn <2 x float> %i.adf, %i.sr
  %i.adh = fadd reassoc nsz arcp contract afn <2 x float> %i.adg, splat (float -5.000000e-01)
  %i.adi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.adh)
  %i.adj = fmul reassoc nsz arcp contract afn <2 x float> %i.adi, %i.sx ; 2 uses
  %i.adk = fsub reassoc nsz arcp contract afn <2 x float> %i.adf, %i.adj
  store <2 x float> %i.adj, ptr %i.ade, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  %i.adl = extractelement <2 x float> %i.adb, i64 0
  br label %_nearest_color.exit355.i

.loopexit.loopexit32.i353.i:                      ; preds = %._crit_edge.i
  %.reass246.i = fmul reassoc nsz arcp contract afn float %i.act, %factor.op.fmul227.i
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !88, !alias.scope !279, !noalias !277 ; 2 uses
  %.reass248.i = fmul reassoc nsz arcp contract afn float %i.adn, %i.su
  %i.ado = fadd reassoc nsz arcp contract afn float %.reass246.i, %.reass248.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.adq = load <2 x float>, ptr %i.adp, align 4, !tbaa !88, !alias.scope !274, !noalias !277 ; 2 uses
  %i.adr = extractelement <2 x float> %i.adq, i64 0
  %.reass244.i = fmul reassoc nsz arcp contract afn float %i.adr, %i.st
  %i.ads = fadd reassoc nsz arcp contract afn float %i.ado, %.reass244.i
  %i.adt = fadd reassoc nsz arcp contract afn float %i.ads, -5.000000e-01
  %i.adu = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.adt)
  %i.adv = fmul reassoc nsz arcp contract afn float %i.adu, %i.na ; 4 uses
  %i.adw = fsub reassoc nsz arcp contract afn float %i.adn, %i.adv
  %i.adx = insertelement <2 x float> poison, float %i.adv, i64 0
  %i.ady = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adz = fsub reassoc nsz arcp contract afn <2 x float> %i.adq, %i.ady
  %i.aea = insertelement <4 x float> poison, float %i.adv, i64 0
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aeb, ptr %i.acs, align 4, !tbaa !88, !alias.scope !274, !noalias !277
  br label %_nearest_color.exit355.i

_nearest_color.exit355.i:                         ; preds = %.loopexit.loopexit32.i353.i, %.preheader.preheader.i354.i
  %.sroa.81.3.i = phi nsz float [ %i.add, %.preheader.preheader.i354.i ], [ %i.adw, %.loopexit.loopexit32.i353.i ]
  %.pn188.i = phi float [ %i.adl, %.preheader.preheader.i354.i ], [ %i.adv, %.loopexit.loopexit32.i353.i ]
  %i.aec = phi <2 x float> [ %i.adk, %.preheader.preheader.i354.i ], [ %i.adz, %.loopexit.loopexit32.i353.i ]
  %.sroa.0.3.i = fsub reassoc nsz arcp contract afn float %i.act, %.pn188.i
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.sk ; 7 uses
  %i.aee = insertelement <4 x float> poison, float %.sroa.0.3.i, i64 0
  %i.aef = insertelement <4 x float> %i.aee, float %.sroa.81.3.i, i64 1
  %i.aeg = shufflevector <2 x float> %i.aec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeh = shufflevector <4 x float> %i.aef, <4 x float> %i.aeg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aei = fmul reassoc nsz arcp contract afn <4 x float> %i.aeh, splat (float 1.875000e-01)
  %i.aej = load <4 x float>, ptr %i.aed, align 4, !tbaa !88, !alias.scope !282, !noalias !285
  %i.aek = fadd reassoc nsz arcp contract afn <4 x float> %i.aei, %i.aej ; 5 uses
  store <4 x float> %i.aek, ptr %i.aed, align 4, !tbaa !88, !alias.scope !282, !noalias !285
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.sm ; 8 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 4 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 8 ; 3 uses
  %i.aeo = fmul reassoc nsz arcp contract afn <4 x float> %i.aeh, splat (float 3.125000e-01)
  %i.aep = load <4 x float>, ptr %i.ael, align 4, !tbaa !88, !alias.scope !287, !noalias !290
  %i.aeq = fadd reassoc nsz arcp contract afn <4 x float> %i.aep, %i.aeo
  store <4 x float> %i.aeq, ptr %i.ael, align 4, !tbaa !88, !alias.scope !287, !noalias !290
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.sk
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %i.sk
  br i1 %.2.i181.i, label %.preheader.preheader.i358.i, label %.loopexit.loopexit32.i357.i

.preheader.preheader.i358.i:                      ; preds = %_nearest_color.exit355.i
  %i.aet = fmul reassoc nsz arcp contract afn <4 x float> %i.aek, %i.tb
  %i.aeu = fadd reassoc nsz arcp contract afn <4 x float> %i.aet, splat (float -5.000000e-01)
  %i.aev = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aeu)
  %i.aew = fmul reassoc nsz arcp contract afn <4 x float> %i.aev, %i.sz
  br label %_nearest_color.exit359.i

.loopexit.loopexit32.i357.i:                      ; preds = %_nearest_color.exit355.i
  %i.aex = extractelement <4 x float> %i.aek, i64 0
  %.reass252.i = fmul reassoc nsz arcp contract afn float %i.aex, %factor.op.fmul227.i
  %i.aey = shufflevector <4 x float> %i.aek, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aez = fmul reassoc nsz arcp contract afn <2 x float> %i.aey, %i.ss ; 2 uses
  %i.afa = extractelement <2 x float> %i.aez, i64 0
  %i.afb = fadd reassoc nsz arcp contract afn float %.reass252.i, %i.afa
  %i.afc = extractelement <2 x float> %i.aez, i64 1
  %i.afd = fadd reassoc nsz arcp contract afn float %i.afb, %i.afc
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, -5.000000e-01
  %i.aff = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.afe)
  %i.afg = fmul reassoc nsz arcp contract afn float %i.aff, %i.na
  %i.afh = insertelement <4 x float> poison, float %i.afg, i64 0
  %i.afi = shufflevector <4 x float> %i.afh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit359.i

_nearest_color.exit359.i:                         ; preds = %.loopexit.loopexit32.i357.i, %.preheader.preheader.i358.i
  %i.afj = phi <4 x float> [ %i.aew, %.preheader.preheader.i358.i ], [ %i.afi, %.loopexit.loopexit32.i357.i ] ; 2 uses
  %i.afk = fsub reassoc nsz arcp contract afn <4 x float> %i.aek, %i.afj ; 4 uses
  store <4 x float> %i.afj, ptr %i.aed, align 4, !tbaa !88, !alias.scope !292, !noalias !295
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.so ; 3 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.afn = load <4 x float>, ptr %i.afm, align 4, !tbaa !88, !alias.scope !300, !noalias !297 ; 4 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.afn, zeroinitializer
  %i.afp = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.afn, splat (float 1.000000e+00)
  %i.afq = select <4 x i1> %i.afp, <4 x float> %i.afn, <4 x float> splat (float 1.000000e+00)
  %i.afr = fcmp ord <4 x float> %i.afn, zeroinitializer
  %i.afs = select <4 x i1> %i.afr, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aft = select <4 x i1> %i.afo, <4 x float> %i.afs, <4 x float> %i.afq
  store <4 x float> %i.aft, ptr %i.afl, align 4, !tbaa !88, !alias.scope !297, !noalias !300
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aed, i64 16 ; 2 uses
  %i.afv = fmul reassoc nsz arcp contract afn <4 x float> %i.afk, splat (float 4.375000e-01)
  %i.afw = load <4 x float>, ptr %i.afu, align 4, !tbaa !88, !alias.scope !302, !noalias !305
  %i.afx = fadd reassoc nsz arcp contract afn <4 x float> %i.afw, %i.afv
  store <4 x float> %i.afx, ptr %i.afu, align 4, !tbaa !88, !alias.scope !302, !noalias !305
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.sk ; 2 uses
  %i.afz = fmul reassoc nsz arcp contract afn <4 x float> %i.afk, splat (float 1.875000e-01)
  %i.aga = load <4 x float>, ptr %i.afy, align 4, !tbaa !88, !alias.scope !307, !noalias !310
  %i.agb = fadd reassoc nsz arcp contract afn <4 x float> %i.aga, %i.afz
  store <4 x float> %i.agb, ptr %i.afy, align 4, !tbaa !88, !alias.scope !307, !noalias !310
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.sm ; 2 uses
  %i.agd = fmul reassoc nsz arcp contract afn <4 x float> %i.afk, splat (float 3.125000e-01)
  %i.age = load <4 x float>, ptr %i.agc, align 4, !tbaa !88, !alias.scope !312, !noalias !315
  %i.agf = fadd reassoc nsz arcp contract afn <4 x float> %i.age, %i.agd
  store <4 x float> %i.agf, ptr %i.agc, align 4, !tbaa !88, !alias.scope !312, !noalias !315
  %i.agg = fmul reassoc nsz arcp contract afn <4 x float> %i.afk, splat (float 6.250000e-02)
  %i.agh = load <4 x float>, ptr %i.afl, align 4, !tbaa !88, !alias.scope !317, !noalias !320
  %i.agi = fadd reassoc nsz arcp contract afn <4 x float> %i.agh, %i.agg
  store <4 x float> %i.agi, ptr %i.afl, align 4, !tbaa !88, !alias.scope !317, !noalias !320
  %i.agj = load float, ptr %i.ael, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i362.i, label %.loopexit.loopexit32.i361.i

.preheader.preheader.i362.i:                      ; preds = %_nearest_color.exit359.i
  %i.agk = fmul reassoc nsz arcp contract afn float %i.agj, %i.mz
  %i.agl = fadd reassoc nsz arcp contract afn float %i.agk, -5.000000e-01
  %i.agm = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agl)
  %i.agn = fmul reassoc nsz arcp contract afn float %i.agm, %i.na
  %i.ago = load float, ptr %i.aem, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.mz
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agp, -5.000000e-01
  %i.agr = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.agq)
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, %i.na ; 2 uses
  %i.agt = fsub reassoc nsz arcp contract afn float %i.ago, %i.ags
  %i.agu = load <2 x float>, ptr %i.aen, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.agv = fmul reassoc nsz arcp contract afn <2 x float> %i.agu, %i.sr
  %i.agw = fadd reassoc nsz arcp contract afn <2 x float> %i.agv, splat (float -5.000000e-01)
  %i.agx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.agw)
  %i.agy = fmul reassoc nsz arcp contract afn <2 x float> %i.agx, %i.sx ; 2 uses
  %i.agz = fsub reassoc nsz arcp contract afn <2 x float> %i.agu, %i.agy
  br label %_nearest_color.exit363.i

.loopexit.loopexit32.i361.i:                      ; preds = %_nearest_color.exit359.i
  %.reass258.i = fmul reassoc nsz arcp contract afn float %i.agj, %factor.op.fmul227.i
  %i.aha = load float, ptr %i.aem, align 4, !tbaa !88, !alias.scope !327, !noalias !325 ; 2 uses
  %.reass260.i = fmul reassoc nsz arcp contract afn float %i.aha, %i.su
  %i.ahb = fadd reassoc nsz arcp contract afn float %.reass258.i, %.reass260.i
  %i.ahc = load <2 x float>, ptr %i.aen, align 4, !tbaa !88, !alias.scope !322, !noalias !325 ; 2 uses
  %i.ahd = extractelement <2 x float> %i.ahc, i64 0
  %.reass256.i = fmul reassoc nsz arcp contract afn float %i.ahd, %i.st
  %i.ahe = fadd reassoc nsz arcp contract afn float %i.ahb, %.reass256.i
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.ahe, -5.000000e-01
  %i.ahg = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ahf)
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.ahg, %i.na ; 4 uses
  %i.ahi = fsub reassoc nsz arcp contract afn float %i.aha, %i.ahh
  %i.ahj = insertelement <2 x float> poison, float %i.ahh, i64 0
  %i.ahk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahl = fsub reassoc nsz arcp contract afn <2 x float> %i.ahc, %i.ahk
  br label %_nearest_color.exit363.i

_nearest_color.exit363.i:                         ; preds = %.loopexit.loopexit32.i361.i, %.preheader.preheader.i362.i
  %.sink369.i = phi float [ %i.agn, %.preheader.preheader.i362.i ], [ %i.ahh, %.loopexit.loopexit32.i361.i ] ; 2 uses
  %.sink368.i = phi float [ %i.ags, %.preheader.preheader.i362.i ], [ %i.ahh, %.loopexit.loopexit32.i361.i ]
  %.sroa.81.5.i = phi nsz float [ %i.agt, %.preheader.preheader.i362.i ], [ %i.ahi, %.loopexit.loopexit32.i361.i ]
  %i.ahm = phi <2 x float> [ %i.agz, %.preheader.preheader.i362.i ], [ %i.ahl, %.loopexit.loopexit32.i361.i ]
  %i.ahn = phi <2 x float> [ %i.agy, %.preheader.preheader.i362.i ], [ %i.ahk, %.loopexit.loopexit32.i361.i ]
  store float %.sink369.i, ptr %i.ael, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  store float %.sink368.i, ptr %i.aem, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  %.sroa.0.5.i = fsub reassoc nsz arcp contract afn float %i.agj, %.sink369.i
  store <2 x float> %i.ahn, ptr %i.aen, align 4, !tbaa !88, !alias.scope !322, !noalias !325
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.sk ; 2 uses
  %i.ahp = insertelement <4 x float> poison, float %.sroa.0.5.i, i64 0
  %i.ahq = insertelement <4 x float> %i.ahp, float %.sroa.81.5.i, i64 1
  %i.ahr = shufflevector <2 x float> %i.ahm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahs = shufflevector <4 x float> %i.ahq, <4 x float> %i.ahr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aht = fmul reassoc nsz arcp contract afn <4 x float> %i.ahs, splat (float 1.875000e-01)
  %i.ahu = load <4 x float>, ptr %i.aho, align 4, !tbaa !88, !alias.scope !330, !noalias !333
  %i.ahv = fadd reassoc nsz arcp contract afn <4 x float> %i.ahu, %i.aht
  store <4 x float> %i.ahv, ptr %i.aho, align 4, !tbaa !88, !alias.scope !330, !noalias !333
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.sm ; 2 uses
  %i.ahx = fmul reassoc nsz arcp contract afn <4 x float> %i.ahs, splat (float 3.125000e-01)
  %i.ahy = load <4 x float>, ptr %i.ahw, align 4, !tbaa !88, !alias.scope !335, !noalias !338
  %i.ahz = fadd reassoc nsz arcp contract afn <4 x float> %i.ahy, %i.ahx
  store <4 x float> %i.ahz, ptr %i.ahw, align 4, !tbaa !88, !alias.scope !335, !noalias !338
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 2 ; 2 uses
  %i.aia = icmp samesign ult i64 %indvars.iv.next329.i, %i.sv
  br i1 %i.aia, label %bb.aj, label %._crit_edge263.i

.lr.ph224.i:                                      ; preds = %_nearest_color.exit371.i, %.lr.ph224.preheader.i
  %indvars.iv323.i = phi i64 [ 1, %.lr.ph224.preheader.i ], [ %indvars.iv.next324.i, %_nearest_color.exit371.i ] ; 2 uses
  %i.aib = shl nuw nsw i64 %indvars.iv323.i, 2    ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.aib ; 11 uses
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i366.i, label %.loopexit.loopexit32.i365.i

.preheader.preheader.i366.i:                      ; preds = %.lr.ph224.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.aig = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.aih = insertelement <2 x float> %i.aig, float %i.aif, i64 1
  %i.aii = fmul reassoc nsz arcp contract afn <2 x float> %i.aih, %i.sr
  %i.aij = fadd reassoc nsz arcp contract afn <2 x float> %i.aii, splat (float -5.000000e-01)
  %i.aik = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aij)
  %i.ail = fmul reassoc nsz arcp contract afn <2 x float> %i.aik, %i.sx ; 3 uses
  %i.aim = extractelement <2 x float> %i.ail, i64 1
  %i.ain = fsub reassoc nsz arcp contract afn float %i.aif, %i.aim
  store <2 x float> %i.ail, ptr %i.aic, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aic, i64 8 ; 2 uses
  %i.aip = load <2 x float>, ptr %i.aio, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.aiq = fmul reassoc nsz arcp contract afn <2 x float> %i.aip, %i.sr
  %i.air = fadd reassoc nsz arcp contract afn <2 x float> %i.aiq, splat (float -5.000000e-01)
  %i.ais = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.air)
  %i.ait = fmul reassoc nsz arcp contract afn <2 x float> %i.ais, %i.sx ; 2 uses
  %i.aiu = fsub reassoc nsz arcp contract afn <2 x float> %i.aip, %i.ait
  store <2 x float> %i.ait, ptr %i.aio, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  %i.aiv = extractelement <2 x float> %i.ail, i64 0
  br label %_nearest_color.exit367.i

.loopexit.loopexit32.i365.i:                      ; preds = %.lr.ph224.i
  %.reass214.i = fmul reassoc nsz arcp contract afn float %i.aid, %factor.op.fmul227.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !88, !alias.scope !345, !noalias !343 ; 2 uses
  %.reass216.i = fmul reassoc nsz arcp contract afn float %i.aix, %i.su
  %i.aiy = fadd reassoc nsz arcp contract afn float %.reass214.i, %.reass216.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aja = load <2 x float>, ptr %i.aiz, align 4, !tbaa !88, !alias.scope !340, !noalias !343 ; 2 uses
  %i.ajb = extractelement <2 x float> %i.aja, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.ajb, %i.st
  %i.ajc = fadd reassoc nsz arcp contract afn float %i.aiy, %.reass.i
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.ajc, -5.000000e-01
  %i.aje = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ajd)
  %i.ajf = fmul reassoc nsz arcp contract afn float %i.aje, %i.na ; 4 uses
  %i.ajg = fsub reassoc nsz arcp contract afn float %i.aix, %i.ajf
  %i.ajh = insertelement <2 x float> poison, float %i.ajf, i64 0
  %i.aji = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajj = fsub reassoc nsz arcp contract afn <2 x float> %i.aja, %i.aji
  %i.ajk = insertelement <4 x float> poison, float %i.ajf, i64 0
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.ajl, ptr %i.aic, align 4, !tbaa !88, !alias.scope !340, !noalias !343
  br label %_nearest_color.exit367.i

_nearest_color.exit367.i:                         ; preds = %.loopexit.loopexit32.i365.i, %.preheader.preheader.i366.i
  %.sroa.81.6.i = phi nsz float [ %i.ain, %.preheader.preheader.i366.i ], [ %i.ajg, %.loopexit.loopexit32.i365.i ]
  %.pn196.i = phi float [ %i.aiv, %.preheader.preheader.i366.i ], [ %i.ajf, %.loopexit.loopexit32.i365.i ]
  %i.ajm = phi <2 x float> [ %i.aiu, %.preheader.preheader.i366.i ], [ %i.ajj, %.loopexit.loopexit32.i365.i ]
  %.sroa.0.6.i = fsub reassoc nsz arcp contract afn float %i.aid, %.pn196.i
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.so ; 3 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.aib ; 2 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ajq = load <4 x float>, ptr %i.ajp, align 4, !tbaa !88, !alias.scope !351, !noalias !348 ; 4 uses
  %i.ajr = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ajq, zeroinitializer
  %i.ajs = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ajq, splat (float 1.000000e+00)
  %i.ajt = select <4 x i1> %i.ajs, <4 x float> %i.ajq, <4 x float> splat (float 1.000000e+00)
  %i.aju = fcmp ord <4 x float> %i.ajq, zeroinitializer
  %i.ajv = select <4 x i1> %i.aju, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.ajw = select <4 x i1> %i.ajr, <4 x float> %i.ajv, <4 x float> %i.ajt
  store <4 x float> %i.ajw, ptr %i.ajn, align 4, !tbaa !88, !alias.scope !348, !noalias !351
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aic, i64 16 ; 2 uses
  %i.ajy = insertelement <4 x float> poison, float %.sroa.0.6.i, i64 0
  %i.ajz = insertelement <4 x float> %i.ajy, float %.sroa.81.6.i, i64 1
  %i.aka = shufflevector <2 x float> %i.ajm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akb = shufflevector <4 x float> %i.ajz, <4 x float> %i.aka, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.akc = fmul reassoc nsz arcp contract afn <4 x float> %i.akb, splat (float 4.375000e-01)
  %i.akd = load <4 x float>, ptr %i.ajx, align 4, !tbaa !88, !alias.scope !353, !noalias !356
  %i.ake = fadd reassoc nsz arcp contract afn <4 x float> %i.akd, %i.akc
  store <4 x float> %i.ake, ptr %i.ajx, align 4, !tbaa !88, !alias.scope !353, !noalias !356
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.sk ; 7 uses
  %i.akg = fmul reassoc nsz arcp contract afn <4 x float> %i.akb, splat (float 1.875000e-01)
  %i.akh = load <4 x float>, ptr %i.akf, align 4, !tbaa !88, !alias.scope !358, !noalias !361
  %i.aki = fadd reassoc nsz arcp contract afn <4 x float> %i.akh, %i.akg ; 5 uses
  store <4 x float> %i.aki, ptr %i.akf, align 4, !tbaa !88, !alias.scope !358, !noalias !361
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.sm ; 2 uses
  %i.akk = fmul reassoc nsz arcp contract afn <4 x float> %i.akb, splat (float 3.125000e-01)
  %i.akl = load <4 x float>, ptr %i.akj, align 4, !tbaa !88, !alias.scope !363, !noalias !366
  %i.akm = fadd reassoc nsz arcp contract afn <4 x float> %i.akl, %i.akk
  store <4 x float> %i.akm, ptr %i.akj, align 4, !tbaa !88, !alias.scope !363, !noalias !366
  %i.akn = fmul reassoc nsz arcp contract afn <4 x float> %i.akb, splat (float 6.250000e-02)
  %i.ako = load <4 x float>, ptr %i.ajn, align 4, !tbaa !88, !alias.scope !368, !noalias !371
  %i.akp = fadd reassoc nsz arcp contract afn <4 x float> %i.ako, %i.akn
  store <4 x float> %i.akp, ptr %i.ajn, align 4, !tbaa !88, !alias.scope !368, !noalias !371
  br i1 %.2.i181.i, label %.preheader.preheader.i370.i, label %.loopexit.loopexit32.i369.i

.preheader.preheader.i370.i:                      ; preds = %_nearest_color.exit367.i
  %i.akq = fmul reassoc nsz arcp contract afn <4 x float> %i.aki, %i.tb
  %i.akr = fadd reassoc nsz arcp contract afn <4 x float> %i.akq, splat (float -5.000000e-01)
  %i.aks = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.akr)
  %i.akt = fmul reassoc nsz arcp contract afn <4 x float> %i.aks, %i.sz
  br label %_nearest_color.exit371.i

.loopexit.loopexit32.i369.i:                      ; preds = %_nearest_color.exit367.i
  %i.aku = extractelement <4 x float> %i.aki, i64 0
  %.reass220.i = fmul reassoc nsz arcp contract afn float %i.aku, %factor.op.fmul227.i
  %i.akv = shufflevector <4 x float> %i.aki, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.akw = fmul reassoc nsz arcp contract afn <2 x float> %i.akv, %i.ss ; 2 uses
  %i.akx = extractelement <2 x float> %i.akw, i64 0
  %i.aky = fadd reassoc nsz arcp contract afn float %.reass220.i, %i.akx
  %i.akz = extractelement <2 x float> %i.akw, i64 1
  %i.ala = fadd reassoc nsz arcp contract afn float %i.aky, %i.akz
  %i.alb = fadd reassoc nsz arcp contract afn float %i.ala, -5.000000e-01
  %i.alc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.alb)
  %i.ald = fmul reassoc nsz arcp contract afn float %i.alc, %i.na
  %i.ale = insertelement <4 x float> poison, float %i.ald, i64 0
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_nearest_color.exit371.i

_nearest_color.exit371.i:                         ; preds = %.loopexit.loopexit32.i369.i, %.preheader.preheader.i370.i
  %i.alg = phi <4 x float> [ %i.akt, %.preheader.preheader.i370.i ], [ %i.alf, %.loopexit.loopexit32.i369.i ] ; 2 uses
  %i.alh = fsub reassoc nsz arcp contract afn <4 x float> %i.aki, %i.alg ; 4 uses
  store <4 x float> %i.alg, ptr %i.akf, align 4, !tbaa !88, !alias.scope !373, !noalias !376
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.so ; 3 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.sk
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.so
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.all = load <4 x float>, ptr %i.alk, align 4, !tbaa !88, !alias.scope !381, !noalias !378 ; 4 uses
  %i.alm = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.all, zeroinitializer
  %i.aln = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.all, splat (float 1.000000e+00)
  %i.alo = select <4 x i1> %i.aln, <4 x float> %i.all, <4 x float> splat (float 1.000000e+00)
  %i.alp = fcmp ord <4 x float> %i.all, zeroinitializer
  %i.alq = select <4 x i1> %i.alp, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.alr = select <4 x i1> %i.alm, <4 x float> %i.alq, <4 x float> %i.alo
  store <4 x float> %i.alr, ptr %i.ali, align 4, !tbaa !88, !alias.scope !378, !noalias !381
  %i.als = getelementptr inbounds nuw i8, ptr %i.akf, i64 16 ; 2 uses
  %i.alt = fmul reassoc nsz arcp contract afn <4 x float> %i.alh, splat (float 4.375000e-01)
  %i.alu = load <4 x float>, ptr %i.als, align 4, !tbaa !88, !alias.scope !383, !noalias !386
  %i.alv = fadd reassoc nsz arcp contract afn <4 x float> %i.alu, %i.alt
  store <4 x float> %i.alv, ptr %i.als, align 4, !tbaa !88, !alias.scope !383, !noalias !386
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.sk ; 2 uses
  %i.alx = fmul reassoc nsz arcp contract afn <4 x float> %i.alh, splat (float 1.875000e-01)
  %i.aly = load <4 x float>, ptr %i.alw, align 4, !tbaa !88, !alias.scope !388, !noalias !391
  %i.alz = fadd reassoc nsz arcp contract afn <4 x float> %i.aly, %i.alx
  store <4 x float> %i.alz, ptr %i.alw, align 4, !tbaa !88, !alias.scope !388, !noalias !391
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.sm ; 2 uses
  %i.amb = fmul reassoc nsz arcp contract afn <4 x float> %i.alh, splat (float 3.125000e-01)
  %i.amc = load <4 x float>, ptr %i.ama, align 4, !tbaa !88, !alias.scope !393, !noalias !396
  %i.amd = fadd reassoc nsz arcp contract afn <4 x float> %i.amc, %i.amb
  store <4 x float> %i.amd, ptr %i.ama, align 4, !tbaa !88, !alias.scope !393, !noalias !396
  %i.ame = fmul reassoc nsz arcp contract afn <4 x float> %i.alh, splat (float 6.250000e-02)
  %i.amf = load <4 x float>, ptr %i.ali, align 4, !tbaa !88, !alias.scope !398, !noalias !401
  %i.amg = fadd reassoc nsz arcp contract afn <4 x float> %i.amf, %i.ame
  store <4 x float> %i.amg, ptr %i.ali, align 4, !tbaa !88, !alias.scope !398, !noalias !401
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next324.i, %wide.trip.count339.i
  br i1 %exitcond327.not.i, label %._crit_edge.i, label %.lr.ph224.i

bb.ak:                                            ; preds = %._crit_edge263.i
  %i.amh = shl nuw nsw i64 %i.sv, 2
  %i.ami = mul nuw i64 %i.amh, %wide.trip.count321.i ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ami ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ami ; 12 uses
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i374.i, label %.loopexit.loopexit32.i373.i

.preheader.preheader.i374.i:                      ; preds = %bb.ak
  %i.amm = fmul reassoc nsz arcp contract afn float %i.aml, %i.mz
  %i.amn = fadd reassoc nsz arcp contract afn float %i.amm, -5.000000e-01
  %i.amo = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.amn)
  %i.amp = fmul reassoc nsz arcp contract afn float %i.amo, %i.na ; 2 uses
  store float %i.amp, ptr %i.amk, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amk, i64 4 ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.ams = fmul reassoc nsz arcp contract afn float %i.amr, %i.mz
  %i.amt = fadd reassoc nsz arcp contract afn float %i.ams, -5.000000e-01
  %i.amu = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.amt)
  %i.amv = fmul reassoc nsz arcp contract afn float %i.amu, %i.na ; 2 uses
  %i.amw = fsub reassoc nsz arcp contract afn float %i.amr, %i.amv
  store float %i.amv, ptr %i.amq, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amk, i64 8 ; 2 uses
  %i.amy = load <2 x float>, ptr %i.amx, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.amz = fmul reassoc nsz arcp contract afn <2 x float> %i.amy, %i.sr
  %i.ana = fadd reassoc nsz arcp contract afn <2 x float> %i.amz, splat (float -5.000000e-01)
  %i.anb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ana)
  %i.anc = fmul reassoc nsz arcp contract afn <2 x float> %i.anb, %i.sx ; 2 uses
  %i.and = fsub reassoc nsz arcp contract afn <2 x float> %i.amy, %i.anc
  store <2 x float> %i.anc, ptr %i.amx, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  br label %.lr.ph271.preheader.i

.loopexit.loopexit32.i373.i:                      ; preds = %bb.ak
  %i.ane = fmul reassoc nsz arcp contract afn float %i.aml, 3.000000e-01
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amk, i64 4
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !88, !alias.scope !408, !noalias !406 ; 2 uses
  %i.anh = fmul reassoc nsz arcp contract afn float %i.ang, 5.900000e-01
  %i.ani = fadd reassoc nsz arcp contract afn float %i.anh, %i.ane
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.ank = load <2 x float>, ptr %i.anj, align 4, !tbaa !88, !alias.scope !403, !noalias !406 ; 2 uses
  %i.anl = extractelement <2 x float> %i.ank, i64 0
  %i.anm = fmul reassoc nsz arcp contract afn float %i.anl, 1.100000e-01
  %i.ann = fadd reassoc nsz arcp contract afn float %i.ani, %i.anm
  %i.ano = fmul reassoc nsz arcp contract afn float %i.ann, %i.mz
  %i.anp = fadd reassoc nsz arcp contract afn float %i.ano, -5.000000e-01
  %i.anq = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.anp)
  %i.anr = fmul reassoc nsz arcp contract afn float %i.anq, %i.na ; 4 uses
  %i.ans = fsub reassoc nsz arcp contract afn float %i.ang, %i.anr
  %i.ant = insertelement <2 x float> poison, float %i.anr, i64 0
  %i.anu = shufflevector <2 x float> %i.ant, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anv = fsub reassoc nsz arcp contract afn <2 x float> %i.ank, %i.anu
  %i.anw = insertelement <4 x float> poison, float %i.anr, i64 0
  %i.anx = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.anx, ptr %i.amk, align 4, !tbaa !88, !alias.scope !403, !noalias !406
  br label %.lr.ph271.preheader.i

.lr.ph271.preheader.i:                            ; preds = %.loopexit.loopexit32.i373.i, %.preheader.preheader.i374.i
  %.sroa.81.8.i = phi nsz float [ %i.amw, %.preheader.preheader.i374.i ], [ %i.ans, %.loopexit.loopexit32.i373.i ]
  %.pn.i = phi float [ %i.amp, %.preheader.preheader.i374.i ], [ %i.anr, %.loopexit.loopexit32.i373.i ]
  %i.any = phi <2 x float> [ %i.and, %.preheader.preheader.i374.i ], [ %i.anv, %.loopexit.loopexit32.i373.i ]
  %.sroa.0.8.i = fsub reassoc nsz arcp contract afn float %i.aml, %.pn.i
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.sm ; 3 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.sm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.aob = load <4 x float>, ptr %i.aoa, align 4, !tbaa !88, !alias.scope !414, !noalias !411 ; 4 uses
  %i.aoc = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.aob, zeroinitializer
  %i.aod = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aob, splat (float 1.000000e+00)
  %i.aoe = select <4 x i1> %i.aod, <4 x float> %i.aob, <4 x float> splat (float 1.000000e+00)
  %i.aof = fcmp ord <4 x float> %i.aob, zeroinitializer
  %i.aog = select <4 x i1> %i.aof, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aoh = select <4 x i1> %i.aoc, <4 x float> %i.aog, <4 x float> %i.aoe
  store <4 x float> %i.aoh, ptr %i.anz, align 4, !tbaa !88, !alias.scope !411, !noalias !414
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.so ; 3 uses
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.so ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.aok = load <4 x float>, ptr %i.aoj, align 4, !tbaa !88, !alias.scope !419, !noalias !416 ; 4 uses
  %i.aol = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.aok, zeroinitializer
  %i.aom = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aok, splat (float 1.000000e+00)
  %i.aon = select <4 x i1> %i.aom, <4 x float> %i.aok, <4 x float> splat (float 1.000000e+00)
  %i.aoo = fcmp ord <4 x float> %i.aok, zeroinitializer
  %i.aop = select <4 x i1> %i.aoo, <4 x float> zeroinitializer, <4 x float> splat (float 5.000000e-01)
  %i.aoq = select <4 x i1> %i.aol, <4 x float> %i.aop, <4 x float> %i.aon
  store <4 x float> %i.aoq, ptr %i.aoi, align 4, !tbaa !88, !alias.scope !416, !noalias !419
  %i.aor = getelementptr inbounds nuw i8, ptr %i.amk, i64 16 ; 2 uses
  %i.aos = insertelement <4 x float> poison, float %.sroa.0.8.i, i64 0
  %i.aot = insertelement <4 x float> %i.aos, float %.sroa.81.8.i, i64 1
  %i.aou = shufflevector <2 x float> %i.any, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aov = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.aow = fmul reassoc nsz arcp contract afn <4 x float> %i.aov, splat (float 4.375000e-01)
  %i.aox = load <4 x float>, ptr %i.aor, align 4, !tbaa !88, !alias.scope !421, !noalias !424
  %i.aoy = fadd reassoc nsz arcp contract afn <4 x float> %i.aox, %i.aow
  store <4 x float> %i.aoy, ptr %i.aor, align 4, !tbaa !88, !alias.scope !421, !noalias !424
  %i.aoz = fmul reassoc nsz arcp contract afn <4 x float> %i.aov, splat (float 3.125000e-01)
  %i.apa = load <4 x float>, ptr %i.anz, align 4, !tbaa !88, !alias.scope !426, !noalias !429
  %i.apb = fadd reassoc nsz arcp contract afn <4 x float> %i.apa, %i.aoz
  store <4 x float> %i.apb, ptr %i.anz, align 4, !tbaa !88, !alias.scope !426, !noalias !429
  %i.apc = fmul reassoc nsz arcp contract afn <4 x float> %i.aov, splat (float 6.250000e-02)
  %i.apd = load <4 x float>, ptr %i.aoi, align 4, !tbaa !88, !alias.scope !431, !noalias !434
  %i.ape = fadd reassoc nsz arcp contract afn <4 x float> %i.apd, %i.apc
  store <4 x float> %i.ape, ptr %i.aoi, align 4, !tbaa !88, !alias.scope !431, !noalias !434
  br label %.lr.ph271.i

._crit_edge272.i:                                 ; preds = %_nearest_color.exit383.i
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.sk ; 9 uses
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 3 uses
  br i1 %.2.i181.i, label %.preheader.preheader.i378.i, label %.loopexit.loopexit32.i377.i

.preheader.preheader.i378.i:                      ; preds = %._crit_edge272.i
  %i.aph = fmul reassoc nsz arcp contract afn float %i.apg, %i.mz
  %i.api = fadd reassoc nsz arcp contract afn float %i.aph, -5.000000e-01
  %i.apj = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.api)
  %i.apk = fmul reassoc nsz arcp contract afn float %i.apj, %i.na ; 2 uses
  store float %i.apk, ptr %i.apf, align 4, !tbaa !88, !alias.scope !436, !noalias !439
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apf, i64 4 ; 2 uses
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 2 uses
  %i.apn = fmul reassoc nsz arcp contract afn float %i.apm, %i.mz
  %i.apo = fadd reassoc nsz arcp contract afn float %i.apn, -5.000000e-01
  %i.app = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.apo)
  %i.apq = fmul reassoc nsz arcp contract afn float %i.app, %i.na ; 2 uses
  %i.apr = fsub reassoc nsz arcp contract afn float %i.apm, %i.apq
  store float %i.apq, ptr %i.apl, align 4, !tbaa !88, !alias.scope !436, !noalias !439
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apf, i64 8 ; 2 uses
  %i.apt = load <2 x float>, ptr %i.aps, align 4, !tbaa !88, !alias.scope !436, !noalias !439 ; 2 uses
  %i.apu = fmul reassoc nsz arcp contract afn <2 x float> %i.apt, %i.sr
end_hunk_1
