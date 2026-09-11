Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_crossfeed?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@filter_frame:bb.a
  %i.ny = zext nneg i32 %i.gt to i64              ; 2 uses
  %min.iters.check195 = icmp ult i32 %i.gt, 10
  br i1 %min.iters.check195, label %.lr.ph37.split.preheader241, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph37.split.preheader
  %i.nz = add nsw i32 %i.gt, -1
  %i.oa = zext i32 %i.nz to i64
  %i.ob = shl nuw nsw i64 %i.oa, 4
  %i.oc = add nuw nsw i64 %i.ob, 16               ; 2 uses
  %scevgep189 = getelementptr i8, ptr %i.ah, i64 %i.oc
  %scevgep190 = getelementptr i8, ptr %i.nx, i64 %i.oc
  %bound0191 = icmp ult ptr %i.ah, %scevgep190
  %bound1192 = icmp ult ptr %i.nx, %scevgep189
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %.lr.ph37.split.preheader241, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck188
  %n.vec197 = and i64 %i.ny, 2147483646           ; 4 uses
  %i.od = trunc nuw nsw i64 %n.vec197 to i32
  %i.oe = shl nuw nsw i64 %n.vec197, 4            ; 2 uses
  %i.of = getelementptr i8, ptr %i.ah, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.nx, i64 %i.oe
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next206, %vector.body198 ] ; 2 uses
  %i.oh = shl i64 %index199, 4                    ; 3 uses
  %i.oi = or disjoint i64 %i.oh, 16               ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.ah, i64 %i.oh
  %next.gep201 = getelementptr i8, ptr %i.ah, i64 %i.oi
  %next.gep202 = getelementptr i8, ptr %i.nx, i64 %i.oh
  %next.gep203 = getelementptr i8, ptr %i.nx, i64 %i.oi
  %wide.load204 = load <2 x double>, ptr %next.gep202, align 8, !tbaa !41, !alias.scope !127
  %wide.load205 = load <2 x double>, ptr %next.gep203, align 8, !tbaa !41, !alias.scope !127
  store <2 x double> %wide.load204, ptr %next.gep200, align 8, !tbaa !41, !alias.scope !128, !noalias !127
  store <2 x double> %wide.load205, ptr %next.gep201, align 8, !tbaa !41, !alias.scope !128, !noalias !127
  %index.next206 = add nuw i64 %index199, 2       ; 2 uses
  %i.oj = icmp eq i64 %index.next206, %n.vec197
  br i1 %i.oj, label %middle.block207, label %vector.body198, !llvm.loop !88

middle.block207:                                  ; preds = %vector.body198
  %cmp.n208 = icmp eq i64 %n.vec197, %i.ny
  br i1 %cmp.n208, label %._crit_edge38, label %.lr.ph37.split.preheader241

.lr.ph37.split.preheader241:                      ; preds = %vector.memcheck188, %.lr.ph37.split.preheader, %middle.block207
  %.018136.ph = phi i32 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph37.split.preheader ], [ %i.od, %middle.block207 ] ; 4 uses
  %.235.ph = phi ptr [ %i.ah, %vector.memcheck188 ], [ %i.ah, %.lr.ph37.split.preheader ], [ %i.of, %middle.block207 ] ; 2 uses
  %.219234.ph = phi ptr [ %i.nx, %vector.memcheck188 ], [ %i.nx, %.lr.ph37.split.preheader ], [ %i.og, %middle.block207 ] ; 2 uses
  %i.ok = sub i32 %i.gt, %.018136.ph
  %xtraiter269 = and i32 %i.ok, 3                 ; 2 uses
  %lcmp.mod270.not = icmp eq i32 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.lr.ph37.split.prol.loopexit, label %.lr.ph37.split.prol

.lr.ph37.split.prol:                              ; preds = %.lr.ph37.split.preheader241, %.lr.ph37.split.prol
  %.018136.prol = phi i32 [ %i.op, %.lr.ph37.split.prol ], [ %.018136.ph, %.lr.ph37.split.preheader241 ]
  %.235.prol = phi ptr [ %i.or, %.lr.ph37.split.prol ], [ %.235.ph, %.lr.ph37.split.preheader241 ] ; 3 uses
  %.219234.prol = phi ptr [ %i.oq, %.lr.ph37.split.prol ], [ %.219234.ph, %.lr.ph37.split.preheader241 ] ; 3 uses
  %prol.iter271 = phi i32 [ %prol.iter271.next, %.lr.ph37.split.prol ], [ 0, %.lr.ph37.split.preheader241 ]
  %i.ol = load double, ptr %.219234.prol, align 8, !tbaa !41
  store double %i.ol, ptr %.235.prol, align 8, !tbaa !41
  %i.om = getelementptr inbounds nuw i8, ptr %.219234.prol, i64 8
  %i.on = load double, ptr %i.om, align 8, !tbaa !41
  %i.oo = getelementptr inbounds nuw i8, ptr %.235.prol, i64 8
  store double %i.on, ptr %i.oo, align 8, !tbaa !41
  %i.op = add nuw nsw i32 %.018136.prol, 1        ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.219234.prol, i64 16 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.235.prol, i64 16 ; 2 uses
  %prol.iter271.next = add i32 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i32 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %.lr.ph37.split.prol.loopexit, label %.lr.ph37.split.prol, !llvm.loop !89

.lr.ph37.split.prol.loopexit:                     ; preds = %.lr.ph37.split.prol, %.lr.ph37.split.preheader241
  %.018136.unr = phi i32 [ %.018136.ph, %.lr.ph37.split.preheader241 ], [ %i.op, %.lr.ph37.split.prol ]
  %.235.unr = phi ptr [ %.235.ph, %.lr.ph37.split.preheader241 ], [ %i.or, %.lr.ph37.split.prol ]
  %.219234.unr = phi ptr [ %.219234.ph, %.lr.ph37.split.preheader241 ], [ %i.oq, %.lr.ph37.split.prol ]
  %i.os = sub i32 %.018136.ph, %i.gt
  %i.ot = icmp ugt i32 %i.os, -4
  br i1 %i.ot, label %._crit_edge38, label %.lr.ph37.split

.lr.ph37.split.us.preheader:                      ; preds = %.lr.ph37
  %wide.trip.count56 = zext nneg i32 %i.gt to i64 ; 7 uses
  %min.iters.check224 = icmp ult i32 %i.gt, 6
  br i1 %min.iters.check224, label %.lr.ph37.split.us.preheader240, label %vector.memcheck212

vector.memcheck212:                               ; preds = %.lr.ph37.split.us.preheader
  %i.ou = shl nuw nsw i64 %wide.trip.count56, 4
  %scevgep213 = getelementptr i8, ptr %i.ah, i64 %i.ou ; 2 uses
  %i.ov = shl nuw nsw i64 %wide.trip.count56, 3   ; 2 uses
  %scevgep214 = getelementptr i8, ptr %i.gl, i64 %i.ov
  %scevgep215 = getelementptr i8, ptr %i.hl, i64 %i.ov
  %bound0216 = icmp ult ptr %i.ah, %scevgep214
  %bound1217 = icmp ult ptr %i.gl, %scevgep213
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0219 = icmp ult ptr %i.ah, %scevgep215
  %bound1220 = icmp ult ptr %i.hl, %scevgep213
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %found.conflict218, %found.conflict221
  br i1 %conflict.rdx222, label %.lr.ph37.split.us.preheader240, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck212
  %n.vec226 = and i64 %wide.trip.count56, 2147483646 ; 4 uses
  %i.ow = shl nuw nsw i64 %n.vec226, 4
  %i.ox = getelementptr i8, ptr %i.ah, i64 %i.ow
  %broadcast.splatinsert227 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat228 = shufflevector <2 x double> %broadcast.splatinsert227, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next235, %vector.body229 ] ; 4 uses
  %i.oy = shl i64 %index230, 4
  %next.gep231 = getelementptr i8, ptr %i.ah, i64 %i.oy
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %index230
  %wide.load232 = load <2 x double>, ptr %i.oz, align 8, !tbaa !41, !alias.scope !129 ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %index230
  %wide.load233 = load <2 x double>, ptr %i.pa, align 8, !tbaa !41, !alias.scope !130 ; 2 uses
  %i.pb = fadd nsz <2 x double> %wide.load232, %wide.load233
  %i.pc = fmul nsz <2 x double> %broadcast.splat228, %i.pb
  %i.pd = fsub nsz <2 x double> %wide.load232, %wide.load233
  %i.pe = fmul nsz <2 x double> %broadcast.splat228, %i.pd
  %interleaved.vec234 = shufflevector <2 x double> %i.pc, <2 x double> %i.pe, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec234, ptr %next.gep231, align 8, !tbaa !41, !alias.scope !131, !noalias !132
  %index.next235 = add nuw i64 %index230, 2       ; 2 uses
  %i.pf = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.pf, label %middle.block236, label %vector.body229, !llvm.loop !94

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %n.vec226, %wide.trip.count56
  br i1 %cmp.n237, label %._crit_edge38, label %.lr.ph37.split.us.preheader240

.lr.ph37.split.us.preheader240:                   ; preds = %vector.memcheck212, %.lr.ph37.split.us.preheader, %middle.block236
  %indvars.iv53.ph = phi i64 [ 0, %vector.memcheck212 ], [ 0, %.lr.ph37.split.us.preheader ], [ %n.vec226, %middle.block236 ] ; 5 uses
  %.235.us.ph = phi ptr [ %i.ah, %vector.memcheck212 ], [ %i.ah, %.lr.ph37.split.us.preheader ], [ %i.ox, %middle.block236 ] ; 4 uses
  %xtraiter272 = and i64 %wide.trip.count56, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph37.split.us.prol.loopexit, label %.lr.ph37.split.us.prol

.lr.ph37.split.us.prol:                           ; preds = %.lr.ph37.split.us.preheader240
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv53.ph ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !41
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv53.ph ; 2 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !41
  %i.pk = fadd nsz double %i.ph, %i.pj
  %i.pl = fmul nsz double %i.l, %i.pk
  store double %i.pl, ptr %.235.us.ph, align 8, !tbaa !41
  %i.pm = load double, ptr %i.pg, align 8, !tbaa !41
  %i.pn = load double, ptr %i.pi, align 8, !tbaa !41
  %i.po = fsub nsz double %i.pm, %i.pn
  %i.pp = fmul nsz double %i.l, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %.235.us.ph, i64 8
  store double %i.pp, ptr %i.pq, align 8, !tbaa !41
  %indvars.iv.next54.prol = or disjoint i64 %indvars.iv53.ph, 1
  %i.pr = getelementptr inbounds nuw i8, ptr %.235.us.ph, i64 16
  br label %.lr.ph37.split.us.prol.loopexit

.lr.ph37.split.us.prol.loopexit:                  ; preds = %.lr.ph37.split.us.prol, %.lr.ph37.split.us.preheader240
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %.lr.ph37.split.us.preheader240 ], [ %indvars.iv.next54.prol, %.lr.ph37.split.us.prol ]
  %.235.us.unr = phi ptr [ %.235.us.ph, %.lr.ph37.split.us.preheader240 ], [ %i.pr, %.lr.ph37.split.us.prol ]
  %i.ps = add nsw i64 %wide.trip.count56, -1
  %i.pt = icmp eq i64 %indvars.iv53.ph, %i.ps
  br i1 %i.pt, label %._crit_edge38, label %.lr.ph37.split.us

.lr.ph37.split.us:                                ; preds = %.lr.ph37.split.us.prol.loopexit, %.lr.ph37.split.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.1, %.lr.ph37.split.us ], [ %indvars.iv53.unr, %.lr.ph37.split.us.prol.loopexit ] ; 4 uses
  %.235.us = phi ptr [ %i.qr, %.lr.ph37.split.us ], [ %.235.us.unr, %.lr.ph37.split.us.prol.loopexit ] ; 5 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv53 ; 2 uses
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !41
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv53 ; 2 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !41
  %i.py = fadd nsz double %i.pv, %i.px
  %i.pz = fmul nsz double %i.l, %i.py
  store double %i.pz, ptr %.235.us, align 8, !tbaa !41
  %i.qa = load double, ptr %i.pu, align 8, !tbaa !41
  %i.qb = load double, ptr %i.pw, align 8, !tbaa !41
  %i.qc = fsub nsz double %i.qa, %i.qb
  %i.qd = fmul nsz double %i.l, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %.235.us, i64 8
  store double %i.qd, ptr %i.qe, align 8, !tbaa !41
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.235.us, i64 16
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next54 ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !41
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next54 ; 2 uses
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !41
  %i.qk = fadd nsz double %i.qh, %i.qj
  %i.ql = fmul nsz double %i.l, %i.qk
  store double %i.ql, ptr %i.qf, align 8, !tbaa !41
  %i.qm = load double, ptr %i.qg, align 8, !tbaa !41
  %i.qn = load double, ptr %i.qi, align 8, !tbaa !41
  %i.qo = fsub nsz double %i.qm, %i.qn
  %i.qp = fmul nsz double %i.l, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %.235.us, i64 24
  store double %i.qp, ptr %i.qq, align 8, !tbaa !41
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.235.us, i64 32
  %exitcond57.not.1 = icmp eq i64 %indvars.iv.next54.1, %wide.trip.count56
  br i1 %exitcond57.not.1, label %._crit_edge38, label %.lr.ph37.split.us, !llvm.loop !95

.lr.ph31:                                         ; preds = %.lr.ph31.preheader245, %.lr.ph31
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph31 ], [ %indvars.iv47.ph, %.lr.ph31.preheader245 ] ; 3 uses
  %.119128 = phi ptr [ %i.rc, %.lr.ph31 ], [ %.119128.ph, %.lr.ph31.preheader245 ] ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.119128, i64 8
  %2 = load <2 x double>, ptr %.119128, align 8, !tbaa !41
  %3 = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %2)
  %i.qt = fmul nsz double %i.j, %3
  %i.qu = fmul nsz double %i.qt, 5.000000e-01
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv47
  store double %i.qu, ptr %i.qv, align 8, !tbaa !41
  %i.qw = load double, ptr %.119128, align 8, !tbaa !41
  %i.qx = load double, ptr %i.qs, align 8, !tbaa !41
  %i.qy = fsub nsz double %i.qw, %i.qx
  %i.qz = fmul nsz double %i.j, %i.qy
  %i.ra = fmul nsz double %i.qz, 5.000000e-01
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv47
  store double %i.ra, ptr %i.rb, align 8, !tbaa !41
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.119128, i64 16
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge32, label %.lr.ph31, !llvm.loop !96

._crit_edge38:                                    ; preds = %.lr.ph37.split.prol.loopexit, %.lr.ph37.split, %.lr.ph37.split.us.prol.loopexit, %.lr.ph37.split.us, %middle.block207, %middle.block236, %reverse_samples.exit239
  %i.rd = shl nsw i64 %i.cd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gl, ptr align 8 %i.gm, i64 %i.rd, i1 false)
  %i.re = load ptr, ptr %i.gn, align 8, !tbaa !44 ; 2 uses
  %i.rf = load i32, ptr %i.ai, align 8, !tbaa !31
  %i.rg = sext i32 %i.rf to i64                   ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rg
  %i.ri = shl nsw i64 %i.rg, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.re, ptr align 8 %i.rh, i64 %i.ri, i1 false)
  br label %.loopexit

.lr.ph37.split:                                   ; preds = %.lr.ph37.split.prol.loopexit, %.lr.ph37.split
  %.018136 = phi i32 [ %i.sf, %.lr.ph37.split ], [ %.018136.unr, %.lr.ph37.split.prol.loopexit ]
  %.235 = phi ptr [ %i.sh, %.lr.ph37.split ], [ %.235.unr, %.lr.ph37.split.prol.loopexit ] ; 9 uses
  %.219234 = phi ptr [ %i.sg, %.lr.ph37.split ], [ %.219234.unr, %.lr.ph37.split.prol.loopexit ] ; 9 uses
  %i.rj = load double, ptr %.219234, align 8, !tbaa !41
  store double %i.rj, ptr %.235, align 8, !tbaa !41
  %i.rk = getelementptr inbounds nuw i8, ptr %.219234, i64 8
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !41
  %i.rm = getelementptr inbounds nuw i8, ptr %.235, i64 8
  store double %i.rl, ptr %i.rm, align 8, !tbaa !41
  %i.rn = getelementptr inbounds nuw i8, ptr %.219234, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %.235, i64 16
  %i.rp = load double, ptr %i.rn, align 8, !tbaa !41
  store double %i.rp, ptr %i.ro, align 8, !tbaa !41
  %i.rq = getelementptr inbounds nuw i8, ptr %.219234, i64 24
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !41
  %i.rs = getelementptr inbounds nuw i8, ptr %.235, i64 24
  store double %i.rr, ptr %i.rs, align 8, !tbaa !41
  %i.rt = getelementptr inbounds nuw i8, ptr %.219234, i64 32
  %i.ru = getelementptr inbounds nuw i8, ptr %.235, i64 32
  %i.rv = load double, ptr %i.rt, align 8, !tbaa !41
  store double %i.rv, ptr %i.ru, align 8, !tbaa !41
  %i.rw = getelementptr inbounds nuw i8, ptr %.219234, i64 40
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !41
  %i.ry = getelementptr inbounds nuw i8, ptr %.235, i64 40
  store double %i.rx, ptr %i.ry, align 8, !tbaa !41
  %i.rz = getelementptr inbounds nuw i8, ptr %.219234, i64 48
  %i.sa = getelementptr inbounds nuw i8, ptr %.235, i64 48
  %i.sb = load double, ptr %i.rz, align 8, !tbaa !41
  store double %i.sb, ptr %i.sa, align 8, !tbaa !41
  %i.sc = getelementptr inbounds nuw i8, ptr %.219234, i64 56
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !41
  %i.se = getelementptr inbounds nuw i8, ptr %.235, i64 56
  store double %i.sd, ptr %i.se, align 8, !tbaa !41
  %i.sf = add nuw nsw i32 %.018136, 4             ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.219234, i64 64
  %i.sh = getelementptr inbounds nuw i8, ptr %.235, i64 64
  %exitcond52.not.3 = icmp eq i32 %i.sf, %i.gt
  br i1 %exitcond52.not.3, label %._crit_edge38, label %.lr.ph37.split, !llvm.loop !97

.loopexit:                                        ; preds = %.lr.ph27.split.prol.loopexit, %.lr.ph27.split, %.lr.ph27.split.us.prol.loopexit, %.lr.ph27.split.us, %middle.block, %middle.block110, %bb.m, %._crit_edge38, %._crit_edge
  %i.si = phi ptr [ %i.aq, %._crit_edge ], [ %i.ai, %._crit_edge38 ], [ %i.ai, %bb.m ], [ %i.ai, %middle.block110 ], [ %i.ai, %middle.block ], [ %i.ai, %.lr.ph27.split.us.prol.loopexit ], [ %i.ai, %.lr.ph27.split.us ], [ %i.ai, %.lr.ph27.split ], [ %i.ai, %.lr.ph27.split.prol.loopexit ]
  %i.sj = phi ptr [ %i.ao, %._crit_edge ], [ %i.af, %._crit_edge38 ], [ %i.af, %bb.m ], [ %i.af, %middle.block110 ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph27.split.us.prol.loopexit ], [ %i.af, %.lr.ph27.split.us ], [ %i.af, %.lr.ph27.split ], [ %i.af, %.lr.ph27.split.prol.loopexit ] ; 4 uses
  %.not2019 = phi i1 [ true, %._crit_edge ], [ %.not20110, %._crit_edge38 ], [ %.not20110, %bb.m ], [ %.not20110, %middle.block110 ], [ %.not20110, %middle.block ], [ %.not20110, %.lr.ph27.split.us.prol.loopexit ], [ %.not20110, %.lr.ph27.split.us ], [ %.not20110, %.lr.ph27.split ], [ %.not20110, %.lr.ph27.split.prol.loopexit ]
  %i.sk = load i32, ptr %i.si, align 8, !tbaa !31
  %i.sl = icmp sgt i32 %i.sk, 0
  br i1 %i.sl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !107
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !133
  %i.sq = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !108
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 136
  store i64 %i.sr, ptr %i.ss, align 8, !tbaa !133
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.su = load i32, ptr %i.st, align 8, !tbaa !134
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sj, i64 112
  store i32 %i.su, ptr %i.sv, align 8, !tbaa !107
  store i64 %i.sp, ptr %i.sq, align 8, !tbaa !108
  store i32 %i.sn, ptr %i.st, align 8, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.not200 = icmp eq ptr %i.sj, %0
  br i1 %.not200, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not2019, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.sw = call i32 @ff_filter_frame(ptr noundef %i.e, ptr noundef nonnull %i.sj) #7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @av_frame_free(ptr noundef nonnull %i.b) #7
  call void @ff_filter_set_ready(ptr noundef %.16.val, i32 noundef 10) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.d
  %.0 = phi i32 [ 0, %bb.t ], [ %i.sw, %bb.s ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !15, i64 32}
!22 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!18, !15, i64 56}
!25 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"double", !5, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!"p1 double", !9, i64 0}
!30 = !{!"CrossfeedContext", !10, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !6, i64 48, !6, i64 52, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !28, i64 120, !6, i64 128, !29, i64 136, !5, i64 144}
!31 = !{!30, !6, i64 48}
!32 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!33 = !{!"AVRational", !6, i64 0, !6, i64 4}
!34 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!35 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!36 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!37 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!38 = !{!"AVFilterFormatsConfig", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!39 = !{!"AVFilterLink", !32, i64 0, !13, i64 8, !32, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !33, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !34, i64 72, !33, i64 96, !35, i64 104, !6, i64 112, !6, i64 116, !38, i64 120, !38, i64 168}
!40 = !{!39, !32, i64 16}
!41 = !{!27, !27, i64 0}
!42 = !{!30, !27, i64 96}
!43 = !{!30, !29, i64 136}
!44 = !{!29, !29, i64 0}
!45 = distinct !{!45, !20}
!46 = !{!6, !6, i64 0}
!47 = !{!28, !28, i64 0}
!48 = !{!30, !27, i64 16}
!49 = !{!30, !27, i64 8}
!50 = !{!39, !6, i64 64}
!51 = !{!30, !27, i64 24}
!52 = !{!30, !27, i64 56}
!53 = !{!30, !6, i64 52}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !20, !112, !113}
!59 = distinct !{!59, !114}
!60 = distinct !{!60, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !20, !112, !113}
!65 = distinct !{!65, !20, !112}
!66 = distinct !{!66, !20, !112}
!67 = distinct !{!67, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !20, !112, !113}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !20, !112, !113}
!77 = distinct !{!77, !114}
!78 = distinct !{!78, !20, !112}
!79 = distinct !{!79, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !20, !112, !113}
!83 = distinct !{!83, !114}
!84 = distinct !{!84, !20, !112}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !20, !112, !113}
!89 = distinct !{!89, !114}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !20, !112, !113}
!95 = distinct !{!95, !20, !112}
!96 = distinct !{!96, !20, !112}
!97 = distinct !{!97, !20, !112}
!98 = !{!12, !12, i64 0}
!99 = !{!30, !27, i64 32}
!100 = !{!30, !27, i64 40}
!101 = !{!30, !27, i64 64}
!102 = !{!30, !27, i64 72}
!103 = !{!"p2 omnipotent char", !14, i64 0}
!104 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!105 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!106 = !{!"AVFrame", !5, i64 0, !5, i64 64, !103, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !33, i64 124, !28, i64 136, !28, i64 144, !33, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !104, i64 248, !6, i64 256, !35, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !28, i64 304, !105, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !28, i64 344, !28, i64 352, !28, i64 360, !28, i64 368, !9, i64 376, !34, i64 384, !28, i64 408, !6, i64 416}
!107 = !{!106, !6, i64 112}
!108 = !{!30, !28, i64 120}
!109 = !{!18, !6, i64 104}
!110 = !{!56}
!111 = !{!57}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!61}
!116 = !{!62}
!117 = !{!63}
!118 = !{!61, !62}
!119 = !{!68}
!120 = !{!69}
!121 = !{!70, !68}
!122 = !{!70}
!123 = !{!74}
!124 = !{!75}
!125 = !{!80}
!126 = !{!81}
!127 = !{!86}
!128 = !{!87}
!129 = !{!91}
!130 = !{!92}
!131 = !{!93}
!132 = !{!91, !92}
!133 = !{!106, !28, i64 136}
!134 = !{!30, !6, i64 128}
end_hunk_0
