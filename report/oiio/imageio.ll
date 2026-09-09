Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imageio?download=true
inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_:bb.a
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 3
  %i.oj = fmul <4 x float> %i.oi, %broadcast.splat ; 2 uses
  %i.ok = fcmp olt <4 x float> %i.oj, zeroinitializer
  %i.ol = select <4 x i1> %i.ok, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.om = fadd <4 x float> %i.oj, %i.ol           ; 2 uses
  %i.on = fcmp oge <4 x float> %i.om, %broadcast.splat161
  %i.oo = select <4 x i1> %i.on, <4 x float> %i.om, <4 x float> %broadcast.splat161 ; 2 uses
  %i.op = fcmp ogt <4 x float> %i.oo, %broadcast.splat
  %i.oq = select <4 x i1> %i.op, <4 x float> %broadcast.splat, <4 x float> %i.oo
  %i.or = fptosi <4 x float> %i.oq to <4 x i16>   ; 4 uses
  %i.os = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ov = shufflevector <4 x i16> %i.or, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ow = load float, ptr %i.nx, align 4, !tbaa !94
  %i.ox = load float, ptr %i.ny, align 4, !tbaa !94
  %i.oy = load float, ptr %i.nz, align 4, !tbaa !94
  %i.oz = load float, ptr %i.oa, align 4, !tbaa !94
  %i.pa = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.pb = insertelement <4 x float> %i.pa, float %i.ox, i64 1
  %i.pc = insertelement <4 x float> %i.pb, float %i.oy, i64 2
  %i.pd = insertelement <4 x float> %i.pc, float %i.oz, i64 3
  %i.pe = fmul <4 x float> %i.pd, %broadcast.splat ; 2 uses
  %i.pf = fcmp olt <4 x float> %i.pe, zeroinitializer
  %i.pg = select <4 x i1> %i.pf, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ph = fadd <4 x float> %i.pe, %i.pg           ; 2 uses
  %i.pi = fcmp oge <4 x float> %i.ph, %broadcast.splat161
  %i.pj = select <4 x i1> %i.pi, <4 x float> %i.ph, <4 x float> %broadcast.splat161 ; 2 uses
  %i.pk = fcmp ogt <4 x float> %i.pj, %broadcast.splat
  %i.pl = select <4 x i1> %i.pk, <4 x float> %broadcast.splat, <4 x float> %i.pj
  %i.pm = fptosi <4 x float> %i.pl to <4 x i16>   ; 4 uses
  %i.pn = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.po = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pp = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pq = shufflevector <4 x i16> %i.pm, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pr = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = shufflevector <8 x i16> %i.pr, <8 x i16> %i.kz, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pt = shufflevector <8 x i16> %i.ps, <8 x i16> %i.ly, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pu = shufflevector <8 x i16> %i.pt, <8 x i16> %i.mx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <8 x i16> %i.pu, <8 x i16> %i.nw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.pw = shufflevector <8 x i16> %i.pv, <8 x i16> %i.ov, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.px = shufflevector <8 x i16> %i.pw, <8 x i16> %i.pq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.px, ptr %i.hf, align 2, !tbaa !136
  %i.py = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pz = shufflevector <8 x i16> %i.py, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qa = shufflevector <8 x i16> %i.pz, <8 x i16> %i.lx, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qb = shufflevector <8 x i16> %i.qa, <8 x i16> %i.mw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.qc = shufflevector <8 x i16> %i.qb, <8 x i16> %i.nv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.qd = shufflevector <8 x i16> %i.qc, <8 x i16> %i.ou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.qe = shufflevector <8 x i16> %i.qd, <8 x i16> %i.pp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.qe, ptr %i.hg, align 2, !tbaa !136
  %i.qf = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qg = shufflevector <8 x i16> %i.qf, <8 x i16> %i.kx, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qh = shufflevector <8 x i16> %i.qg, <8 x i16> %i.lw, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qi = shufflevector <8 x i16> %i.qh, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.qj = shufflevector <8 x i16> %i.qi, <8 x i16> %i.nu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.qk = shufflevector <8 x i16> %i.qj, <8 x i16> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.ql = shufflevector <8 x i16> %i.qk, <8 x i16> %i.po, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.ql, ptr %i.hh, align 2, !tbaa !136
  %i.qm = shufflevector <4 x i16> %i.jf, <4 x i16> %i.ka, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <8 x i16> %i.qm, <8 x i16> %i.kw, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qo = shufflevector <8 x i16> %i.qn, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qp = shufflevector <8 x i16> %i.qo, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.qq = shufflevector <8 x i16> %i.qp, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.qr = shufflevector <8 x i16> %i.qq, <8 x i16> %i.os, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.qs = shufflevector <8 x i16> %i.qr, <8 x i16> %i.pn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.qs, ptr %i.hi, align 2, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qt = icmp eq i64 %index.next, %n.vec
  br i1 %i.qt, label %middle.block, label %vector.body, !llvm.loop !1051

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader190

.lr.ph.preheader190:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0145.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.091144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.093143.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %i.qu = shufflevector <2 x float> %i.c, <2 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.qv = shufflevector <2 x float> %i.c, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.m, %middle.block ], [ %i.sn, %.lr.ph ] ; 6 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %middle.block ], [ %i.sc, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %middle.block ], [ %i.sb, %.lr.ph ] ; 3 uses
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader
  %min.iters.check172 = icmp ult i64 %.093.lcssa, 4
  br i1 %min.iters.check172, label %.lr.ph152.preheader189, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph152.preheader
  %n.vec174 = and i64 %.093.lcssa, -4             ; 4 uses
  %i.qw = shl i64 %n.vec174, 2
  %i.qx = getelementptr i8, ptr %.0.lcssa, i64 %i.qw
  %i.qy = shl i64 %n.vec174, 1
  %i.qz = getelementptr i8, ptr %.091.lcssa, i64 %i.qy
  %i.ra = and i64 %.093.lcssa, 3
  %broadcast.splat176 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat178 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph173
  %index180 = phi i64 [ 0, %vector.ph173 ], [ %index.next183, %vector.body179 ] ; 3 uses
  %i.rb = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.0.lcssa, i64 %i.rb
  %i.rc = shl i64 %index180, 1
  %next.gep182 = getelementptr i8, ptr %.091.lcssa, i64 %i.rc
  %wide.load = load <4 x float>, ptr %next.gep181, align 4, !tbaa !94
  %i.rd = fmul <4 x float> %wide.load, %broadcast.splat176 ; 2 uses
  %i.re = fcmp olt <4 x float> %i.rd, zeroinitializer
  %i.rf = select <4 x i1> %i.re, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.rg = fadd <4 x float> %i.rd, %i.rf           ; 2 uses
  %i.rh = fcmp oge <4 x float> %i.rg, %broadcast.splat178
  %i.ri = select <4 x i1> %i.rh, <4 x float> %i.rg, <4 x float> %broadcast.splat178 ; 2 uses
  %i.rj = fcmp ogt <4 x float> %i.ri, %broadcast.splat176
  %i.rk = select <4 x i1> %i.rj, <4 x float> %broadcast.splat176, <4 x float> %i.ri
  %i.rl = fptosi <4 x float> %i.rk to <4 x i16>
  store <4 x i16> %i.rl, ptr %next.gep182, align 2, !tbaa !136
  %index.next183 = add nuw i64 %index180, 4       ; 2 uses
  %i.rm = icmp eq i64 %index.next183, %n.vec174
  br i1 %i.rm, label %middle.block184, label %vector.body179, !llvm.loop !1052

middle.block184:                                  ; preds = %vector.body179
  %cmp.n185 = icmp eq i64 %.093.lcssa, %n.vec174
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph152.preheader189

.lr.ph152.preheader189:                           ; preds = %.lr.ph152.preheader, %middle.block184
  %.1151.ph = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %i.qx, %middle.block184 ]
  %.192150.ph = phi ptr [ %.091.lcssa, %.lr.ph152.preheader ], [ %i.qz, %middle.block184 ]
  %.194149.ph = phi i64 [ %.093.lcssa, %.lr.ph152.preheader ], [ %i.ra, %middle.block184 ]
  %i.rn = extractelement <2 x float> %i.c, i64 0  ; 3 uses
  %i.ro = extractelement <2 x float> %i.c, i64 1  ; 2 uses
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader190, %.lr.ph
  %.0145 = phi ptr [ %i.sb, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader190 ] ; 3 uses
  %.091144 = phi ptr [ %i.sc, %.lr.ph ], [ %.091144.ph, %.lr.ph.preheader190 ] ; 3 uses
  %.093143 = phi i64 [ %i.sn, %.lr.ph ], [ %.093143.ph, %.lr.ph.preheader190 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.rr = load <8 x float>, ptr %.0145, align 4, !tbaa !94
  %i.rs = fmul <8 x float> %i.rr, %i.qu           ; 2 uses
  %i.rt = fcmp olt <8 x float> %i.rs, zeroinitializer
  %i.ru = select <8 x i1> %i.rt, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.rv = fadd <8 x float> %i.rs, %i.ru           ; 2 uses
  %i.rw = fcmp oge <8 x float> %i.rv, %i.qv
  %i.rx = select <8 x i1> %i.rw, <8 x float> %i.rv, <8 x float> %i.qv ; 2 uses
  %i.ry = fcmp ogt <8 x float> %i.rx, %i.qu
  %i.rz = select <8 x i1> %i.ry, <8 x float> %i.qu, <8 x float> %i.rx
  %i.sa = fptosi <8 x float> %i.rz to <8 x i16>
  store <8 x i16> %i.sa, ptr %.091144, align 2, !tbaa !136
  %i.sb = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.091144, i64 32 ; 2 uses
  %i.sd = load <8 x float>, ptr %i.rp, align 4, !tbaa !94
  %i.se = fmul <8 x float> %i.sd, %i.qu           ; 2 uses
  %i.sf = fcmp olt <8 x float> %i.se, zeroinitializer
  %i.sg = select <8 x i1> %i.sf, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.sh = fadd <8 x float> %i.se, %i.sg           ; 2 uses
  %i.si = fcmp oge <8 x float> %i.sh, %i.qv
  %i.sj = select <8 x i1> %i.si, <8 x float> %i.sh, <8 x float> %i.qv ; 2 uses
  %i.sk = fcmp ogt <8 x float> %i.sj, %i.qu
  %i.sl = select <8 x i1> %i.sk, <8 x float> %i.qu, <8 x float> %i.sj
  %i.sm = fptosi <8 x float> %i.sl to <8 x i16>
  store <8 x i16> %i.sm, ptr %i.rq, align 2, !tbaa !136
  %i.sn = add i64 %.093143, -16                   ; 3 uses
  %i.so = icmp ugt i64 %i.sn, 15
  br i1 %i.so, label %.lr.ph, label %.preheader, !llvm.loop !1053

.lr.ph152:                                        ; preds = %.lr.ph152.preheader189, %.lr.ph152
  %.1151 = phi ptr [ %i.sq, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader189 ] ; 2 uses
  %.192150 = phi ptr [ %i.sy, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader189 ] ; 2 uses
  %.194149 = phi i64 [ %i.sp, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader189 ]
  %i.sp = add i64 %.194149, -1                    ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.sr = load float, ptr %.1151, align 4, !tbaa !94
  %i.ss = fmul float %i.sr, %i.rn                 ; 2 uses
  %i.st = fcmp olt float %i.ss, 0.000000e+00
  %i.su = select i1 %i.st, float -5.000000e-01, float 5.000000e-01
  %i.sv = fadd float %i.ss, %i.su                 ; 2 uses
  %.inv.i140 = fcmp oge float %i.sv, %i.ro
  %.0.i.i141 = select i1 %.inv.i140, float %i.sv, float %i.ro ; 2 uses
  %i.sw = fcmp ogt float %.0.i.i141, %i.rn
  %.1.i.i142 = select i1 %i.sw, float %i.rn, float %.0.i.i141
  %i.sx = fptosi float %.1.i.i142 to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %.192150, i64 2
  store i16 %i.sx, ptr %.192150, align 2, !tbaa !136
  %.not = icmp eq i64 %i.sp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1054

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block184, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = sitofp i32 %3 to double                    ; 5 uses
  %6 = sitofp i32 %4 to double                    ; 6 uses
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %2, -16
  %i.c = lshr i64 %i.b, 4                         ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 2305843009213693950      ; 4 uses
  %i.e = shl i64 %n.vec, 6                        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e       ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.e       ; 2 uses
  %i.h = shl i64 %n.vec, 4
  %i.i = sub i64 %2, %i.h                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 48 uses
  %broadcast.splatinsert160 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat161 = shufflevector <2 x double> %broadcast.splatinsert160, <2 x double> poison, <2 x i32> zeroinitializer ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 6                        ; 3 uses
  %i.k = or disjoint i64 %i.j, 64                 ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 16 uses
  %next.gep162 = getelementptr i8, ptr %0, i64 %i.k ; 16 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.j ; 8 uses
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.k ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %next.gep162, i64 4
  %i.n = load float, ptr %next.gep, align 4, !tbaa !94
  %i.o = load float, ptr %next.gep162, align 4, !tbaa !94
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = fpext <2 x float> %i.q to <2 x double>
  %i.s = fmul <2 x double> %broadcast.splat, %i.r ; 2 uses
  %i.t = fcmp olt <2 x double> %i.s, zeroinitializer
  %i.u = select <2 x i1> %i.t, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.v = fadd <2 x double> %i.s, %i.u             ; 2 uses
  %i.w = fcmp oge <2 x double> %i.v, %broadcast.splat161
  %i.x = select <2 x i1> %i.w, <2 x double> %i.v, <2 x double> %broadcast.splat161 ; 2 uses
  %i.y = fcmp ogt <2 x double> %i.x, %broadcast.splat
  %i.z = select <2 x i1> %i.y, <2 x double> %broadcast.splat, <2 x double> %i.x
  %i.aa = fptosi <2 x double> %i.z to <2 x i32>   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep162, i64 8
  %i.ad = load float, ptr %i.l, align 4, !tbaa !94
  %i.ae = load float, ptr %i.m, align 4, !tbaa !94
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ae, i64 1
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fmul <2 x double> %broadcast.splat, %i.ah ; 2 uses
  %i.aj = fcmp olt <2 x double> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.al = fadd <2 x double> %i.ai, %i.ak          ; 2 uses
  %i.am = fcmp oge <2 x double> %i.al, %broadcast.splat161
  %i.an = select <2 x i1> %i.am, <2 x double> %i.al, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ao = fcmp ogt <2 x double> %i.an, %broadcast.splat
  %i.ap = select <2 x i1> %i.ao, <2 x double> %broadcast.splat, <2 x double> %i.an
  %i.aq = fptosi <2 x double> %i.ap to <2 x i32>  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep163, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep164, i64 8
  %i.at = shufflevector <2 x i32> %i.aa, <2 x i32> %i.aq, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.at, ptr %next.gep163, align 4, !tbaa !51
  %i.au = shufflevector <2 x i32> %i.aa, <2 x i32> %i.aq, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.au, ptr %next.gep164, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep162, i64 12
  %i.ax = load float, ptr %i.ab, align 4, !tbaa !94
  %i.ay = load float, ptr %i.ac, align 4, !tbaa !94
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ay, i64 1
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %broadcast.splat, %i.bb ; 2 uses
  %i.bd = fcmp olt <2 x double> %i.bc, zeroinitializer
  %i.be = select <2 x i1> %i.bd, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bf = fadd <2 x double> %i.bc, %i.be          ; 2 uses
  %i.bg = fcmp oge <2 x double> %i.bf, %broadcast.splat161
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.bf, <2 x double> %broadcast.splat161 ; 2 uses
  %i.bi = fcmp ogt <2 x double> %i.bh, %broadcast.splat
  %i.bj = select <2 x i1> %i.bi, <2 x double> %broadcast.splat, <2 x double> %i.bh
  %i.bk = fptosi <2 x double> %i.bj to <2 x i32>  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep162, i64 16
  %i.bn = load float, ptr %i.av, align 4, !tbaa !94
  %i.bo = load float, ptr %i.aw, align 4, !tbaa !94
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bo, i64 1
  %i.br = fpext <2 x float> %i.bq to <2 x double>
  %i.bs = fmul <2 x double> %broadcast.splat, %i.br ; 2 uses
  %i.bt = fcmp olt <2 x double> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bv = fadd <2 x double> %i.bs, %i.bu          ; 2 uses
  %i.bw = fcmp oge <2 x double> %i.bv, %broadcast.splat161
  %i.bx = select <2 x i1> %i.bw, <2 x double> %i.bv, <2 x double> %broadcast.splat161 ; 2 uses
  %i.by = fcmp ogt <2 x double> %i.bx, %broadcast.splat
  %i.bz = select <2 x i1> %i.by, <2 x double> %broadcast.splat, <2 x double> %i.bx
  %i.ca = fptosi <2 x double> %i.bz to <2 x i32>  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %next.gep163, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep164, i64 16
  %i.cd = shufflevector <2 x i32> %i.bk, <2 x i32> %i.ca, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.cd, ptr %i.ar, align 4, !tbaa !51
  %i.ce = shufflevector <2 x i32> %i.bk, <2 x i32> %i.ca, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ce, ptr %i.as, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.cg = getelementptr inbounds nuw i8, ptr %next.gep162, i64 20
  %i.ch = load float, ptr %i.bl, align 4, !tbaa !94
  %i.ci = load float, ptr %i.bm, align 4, !tbaa !94
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ci, i64 1
  %i.cl = fpext <2 x float> %i.ck to <2 x double>
  %i.cm = fmul <2 x double> %broadcast.splat, %i.cl ; 2 uses
  %i.cn = fcmp olt <2 x double> %i.cm, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cp = fadd <2 x double> %i.cm, %i.co          ; 2 uses
  %i.cq = fcmp oge <2 x double> %i.cp, %broadcast.splat161
  %i.cr = select <2 x i1> %i.cq, <2 x double> %i.cp, <2 x double> %broadcast.splat161 ; 2 uses
  %i.cs = fcmp ogt <2 x double> %i.cr, %broadcast.splat
  %i.ct = select <2 x i1> %i.cs, <2 x double> %broadcast.splat, <2 x double> %i.cr
  %i.cu = fptosi <2 x double> %i.ct to <2 x i32>  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep162, i64 24
  %i.cx = load float, ptr %i.cf, align 4, !tbaa !94
  %i.cy = load float, ptr %i.cg, align 4, !tbaa !94
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = fpext <2 x float> %i.da to <2 x double>
  %i.dc = fmul <2 x double> %broadcast.splat, %i.db ; 2 uses
  %i.dd = fcmp olt <2 x double> %i.dc, zeroinitializer
  %i.de = select <2 x i1> %i.dd, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.df = fadd <2 x double> %i.dc, %i.de          ; 2 uses
  %i.dg = fcmp oge <2 x double> %i.df, %broadcast.splat161
  %i.dh = select <2 x i1> %i.dg, <2 x double> %i.df, <2 x double> %broadcast.splat161 ; 2 uses
  %i.di = fcmp ogt <2 x double> %i.dh, %broadcast.splat
  %i.dj = select <2 x i1> %i.di, <2 x double> %broadcast.splat, <2 x double> %i.dh
  %i.dk = fptosi <2 x double> %i.dj to <2 x i32>  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %next.gep163, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep164, i64 24
  %i.dn = shufflevector <2 x i32> %i.cu, <2 x i32> %i.dk, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.dn, ptr %i.cb, align 4, !tbaa !51
  %i.do = shufflevector <2 x i32> %i.cu, <2 x i32> %i.dk, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.do, ptr %i.cc, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep162, i64 28
  %i.dr = load float, ptr %i.cv, align 4, !tbaa !94
  %i.ds = load float, ptr %i.cw, align 4, !tbaa !94
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.ds, i64 1
  %i.dv = fpext <2 x float> %i.du to <2 x double>
  %i.dw = fmul <2 x double> %broadcast.splat, %i.dv ; 2 uses
  %i.dx = fcmp olt <2 x double> %i.dw, zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.dz = fadd <2 x double> %i.dw, %i.dy          ; 2 uses
  %i.ea = fcmp oge <2 x double> %i.dz, %broadcast.splat161
  %i.eb = select <2 x i1> %i.ea, <2 x double> %i.dz, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ec = fcmp ogt <2 x double> %i.eb, %broadcast.splat
  %i.ed = select <2 x i1> %i.ec, <2 x double> %broadcast.splat, <2 x double> %i.eb
  %i.ee = fptosi <2 x double> %i.ed to <2 x i32>  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep162, i64 32
  %i.eh = load float, ptr %i.dp, align 4, !tbaa !94
  %i.ei = load float, ptr %i.dq, align 4, !tbaa !94
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ei, i64 1
  %i.el = fpext <2 x float> %i.ek to <2 x double>
  %i.em = fmul <2 x double> %broadcast.splat, %i.el ; 2 uses
  %i.en = fcmp olt <2 x double> %i.em, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ep = fadd <2 x double> %i.em, %i.eo          ; 2 uses
  %i.eq = fcmp oge <2 x double> %i.ep, %broadcast.splat161
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ep, <2 x double> %broadcast.splat161 ; 2 uses
  %i.es = fcmp ogt <2 x double> %i.er, %broadcast.splat
  %i.et = select <2 x i1> %i.es, <2 x double> %broadcast.splat, <2 x double> %i.er
  %i.eu = fptosi <2 x double> %i.et to <2 x i32>  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %next.gep163, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %next.gep164, i64 32
  %i.ex = shufflevector <2 x i32> %i.ee, <2 x i32> %i.eu, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.ex, ptr %i.dl, align 4, !tbaa !51
  %i.ey = shufflevector <2 x i32> %i.ee, <2 x i32> %i.eu, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ey, ptr %i.dm, align 4, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %next.gep, i64 36
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep162, i64 36
  %i.fb = load float, ptr %i.ef, align 4, !tbaa !94
  %i.fc = load float, ptr %i.eg, align 4, !tbaa !94
  %i.fd = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.fc, i64 1
  %i.ff = fpext <2 x float> %i.fe to <2 x double>
  %i.fg = fmul <2 x double> %broadcast.splat, %i.ff ; 2 uses
  %i.fh = fcmp olt <2 x double> %i.fg, zeroinitializer
  %i.fi = select <2 x i1> %i.fh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.fj = fadd <2 x double> %i.fg, %i.fi          ; 2 uses
  %i.fk = fcmp oge <2 x double> %i.fj, %broadcast.splat161
  %i.fl = select <2 x i1> %i.fk, <2 x double> %i.fj, <2 x double> %broadcast.splat161 ; 2 uses
  %i.fm = fcmp ogt <2 x double> %i.fl, %broadcast.splat
  %i.fn = select <2 x i1> %i.fm, <2 x double> %broadcast.splat, <2 x double> %i.fl
  %i.fo = fptosi <2 x double> %i.fn to <2 x i32>  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %next.gep162, i64 40
  %i.fr = load float, ptr %i.ez, align 4, !tbaa !94
  %i.fs = load float, ptr %i.fa, align 4, !tbaa !94
  %i.ft = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fs, i64 1
  %i.fv = fpext <2 x float> %i.fu to <2 x double>
  %i.fw = fmul <2 x double> %broadcast.splat, %i.fv ; 2 uses
  %i.fx = fcmp olt <2 x double> %i.fw, zeroinitializer
  %i.fy = select <2 x i1> %i.fx, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.fz = fadd <2 x double> %i.fw, %i.fy          ; 2 uses
  %i.ga = fcmp oge <2 x double> %i.fz, %broadcast.splat161
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fz, <2 x double> %broadcast.splat161 ; 2 uses
  %i.gc = fcmp ogt <2 x double> %i.gb, %broadcast.splat
  %i.gd = select <2 x i1> %i.gc, <2 x double> %broadcast.splat, <2 x double> %i.gb
  %i.ge = fptosi <2 x double> %i.gd to <2 x i32>  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %next.gep163, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep164, i64 40
  %i.gh = shufflevector <2 x i32> %i.fo, <2 x i32> %i.ge, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.gh, ptr %i.ev, align 4, !tbaa !51
  %i.gi = shufflevector <2 x i32> %i.fo, <2 x i32> %i.ge, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.gi, ptr %i.ew, align 4, !tbaa !51
  %i.gj = getelementptr inbounds nuw i8, ptr %next.gep, i64 44
  %i.gk = getelementptr inbounds nuw i8, ptr %next.gep162, i64 44
  %i.gl = load float, ptr %i.fp, align 4, !tbaa !94
  %i.gm = load float, ptr %i.fq, align 4, !tbaa !94
  %i.gn = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gm, i64 1
  %i.gp = fpext <2 x float> %i.go to <2 x double>
  %i.gq = fmul <2 x double> %broadcast.splat, %i.gp ; 2 uses
  %i.gr = fcmp olt <2 x double> %i.gq, zeroinitializer
  %i.gs = select <2 x i1> %i.gr, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.gt = fadd <2 x double> %i.gq, %i.gs          ; 2 uses
  %i.gu = fcmp oge <2 x double> %i.gt, %broadcast.splat161
  %i.gv = select <2 x i1> %i.gu, <2 x double> %i.gt, <2 x double> %broadcast.splat161 ; 2 uses
  %i.gw = fcmp ogt <2 x double> %i.gv, %broadcast.splat
  %i.gx = select <2 x i1> %i.gw, <2 x double> %broadcast.splat, <2 x double> %i.gv
  %i.gy = fptosi <2 x double> %i.gx to <2 x i32>  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %next.gep, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %next.gep162, i64 48
  %i.hb = load float, ptr %i.gj, align 4, !tbaa !94
  %i.hc = load float, ptr %i.gk, align 4, !tbaa !94
  %i.hd = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.hc, i64 1
  %i.hf = fpext <2 x float> %i.he to <2 x double>
  %i.hg = fmul <2 x double> %broadcast.splat, %i.hf ; 2 uses
  %i.hh = fcmp olt <2 x double> %i.hg, zeroinitializer
  %i.hi = select <2 x i1> %i.hh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.hj = fadd <2 x double> %i.hg, %i.hi          ; 2 uses
  %i.hk = fcmp oge <2 x double> %i.hj, %broadcast.splat161
  %i.hl = select <2 x i1> %i.hk, <2 x double> %i.hj, <2 x double> %broadcast.splat161 ; 2 uses
  %i.hm = fcmp ogt <2 x double> %i.hl, %broadcast.splat
  %i.hn = select <2 x i1> %i.hm, <2 x double> %broadcast.splat, <2 x double> %i.hl
  %i.ho = fptosi <2 x double> %i.hn to <2 x i32>  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %next.gep163, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %next.gep164, i64 48
  %i.hr = shufflevector <2 x i32> %i.gy, <2 x i32> %i.ho, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.hr, ptr %i.gf, align 4, !tbaa !51
  %i.hs = shufflevector <2 x i32> %i.gy, <2 x i32> %i.ho, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.hs, ptr %i.gg, align 4, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %next.gep, i64 52
  %i.hu = getelementptr inbounds nuw i8, ptr %next.gep162, i64 52
  %i.hv = load float, ptr %i.gz, align 4, !tbaa !94
  %i.hw = load float, ptr %i.ha, align 4, !tbaa !94
  %i.hx = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.hw, i64 1
  %i.hz = fpext <2 x float> %i.hy to <2 x double>
  %i.ia = fmul <2 x double> %broadcast.splat, %i.hz ; 2 uses
  %i.ib = fcmp olt <2 x double> %i.ia, zeroinitializer
  %i.ic = select <2 x i1> %i.ib, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.id = fadd <2 x double> %i.ia, %i.ic          ; 2 uses
  %i.ie = fcmp oge <2 x double> %i.id, %broadcast.splat161
  %i.if = select <2 x i1> %i.ie, <2 x double> %i.id, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ig = fcmp ogt <2 x double> %i.if, %broadcast.splat
  %i.ih = select <2 x i1> %i.ig, <2 x double> %broadcast.splat, <2 x double> %i.if
  %i.ii = fptosi <2 x double> %i.ih to <2 x i32>  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %i.ik = getelementptr inbounds nuw i8, ptr %next.gep162, i64 56
  %i.il = load float, ptr %i.ht, align 4, !tbaa !94
  %i.im = load float, ptr %i.hu, align 4, !tbaa !94
  %i.in = insertelement <2 x float> poison, float %i.il, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.im, i64 1
  %i.ip = fpext <2 x float> %i.io to <2 x double>
  %i.iq = fmul <2 x double> %broadcast.splat, %i.ip ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.iq, zeroinitializer
  %i.is = select <2 x i1> %i.ir, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.it = fadd <2 x double> %i.iq, %i.is          ; 2 uses
  %i.iu = fcmp oge <2 x double> %i.it, %broadcast.splat161
  %i.iv = select <2 x i1> %i.iu, <2 x double> %i.it, <2 x double> %broadcast.splat161 ; 2 uses
  %i.iw = fcmp ogt <2 x double> %i.iv, %broadcast.splat
  %i.ix = select <2 x i1> %i.iw, <2 x double> %broadcast.splat, <2 x double> %i.iv
  %i.iy = fptosi <2 x double> %i.ix to <2 x i32>  ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %next.gep163, i64 56
  %i.ja = getelementptr inbounds nuw i8, ptr %next.gep164, i64 56
  %i.jb = shufflevector <2 x i32> %i.ii, <2 x i32> %i.iy, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.jb, ptr %i.hp, align 4, !tbaa !51
  %i.jc = shufflevector <2 x i32> %i.ii, <2 x i32> %i.iy, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.jc, ptr %i.hq, align 4, !tbaa !51
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep, i64 60
  %i.je = getelementptr inbounds nuw i8, ptr %next.gep162, i64 60
  %i.jf = load float, ptr %i.ij, align 4, !tbaa !94
  %i.jg = load float, ptr %i.ik, align 4, !tbaa !94
  %i.jh = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.ji = insertelement <2 x float> %i.jh, float %i.jg, i64 1
  %i.jj = fpext <2 x float> %i.ji to <2 x double>
  %i.jk = fmul <2 x double> %broadcast.splat, %i.jj ; 2 uses
  %i.jl = fcmp olt <2 x double> %i.jk, zeroinitializer
  %i.jm = select <2 x i1> %i.jl, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.jn = fadd <2 x double> %i.jk, %i.jm          ; 2 uses
  %i.jo = fcmp oge <2 x double> %i.jn, %broadcast.splat161
  %i.jp = select <2 x i1> %i.jo, <2 x double> %i.jn, <2 x double> %broadcast.splat161 ; 2 uses
  %i.jq = fcmp ogt <2 x double> %i.jp, %broadcast.splat
  %i.jr = select <2 x i1> %i.jq, <2 x double> %broadcast.splat, <2 x double> %i.jp
  %i.js = fptosi <2 x double> %i.jr to <2 x i32>  ; 2 uses
  %i.jt = load float, ptr %i.jd, align 4, !tbaa !94
  %i.ju = load float, ptr %i.je, align 4, !tbaa !94
  %i.jv = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.ju, i64 1
  %i.jx = fpext <2 x float> %i.jw to <2 x double>
  %i.jy = fmul <2 x double> %broadcast.splat, %i.jx ; 2 uses
  %i.jz = fcmp olt <2 x double> %i.jy, zeroinitializer
  %i.ka = select <2 x i1> %i.jz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.kb = fadd <2 x double> %i.jy, %i.ka          ; 2 uses
  %i.kc = fcmp oge <2 x double> %i.kb, %broadcast.splat161
  %i.kd = select <2 x i1> %i.kc, <2 x double> %i.kb, <2 x double> %broadcast.splat161 ; 2 uses
  %i.ke = fcmp ogt <2 x double> %i.kd, %broadcast.splat
  %i.kf = select <2 x i1> %i.ke, <2 x double> %broadcast.splat, <2 x double> %i.kd
  %i.kg = fptosi <2 x double> %i.kf to <2 x i32>  ; 2 uses
  %i.kh = shufflevector <2 x i32> %i.js, <2 x i32> %i.kg, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.kh, ptr %i.iz, align 4, !tbaa !51
  %i.ki = shufflevector <2 x i32> %i.js, <2 x i32> %i.kg, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %i.ki, ptr %i.ja, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !1055

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0145.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.091144.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.093143.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %7 = insertelement <4 x double> poison, double %6, i64 0
  %i.kk = shufflevector <4 x double> %7, <4 x double> poison, <4 x i32> zeroinitializer ; 12 uses
  %8 = insertelement <4 x double> poison, double %5, i64 0
  %9 = shufflevector <4 x double> %8, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.i, %middle.block ], [ %i.nb, %.lr.ph ] ; 6 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %middle.block ], [ %i.mp, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %middle.block ], [ %i.mo, %.lr.ph ] ; 3 uses
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader
  %min.iters.check168 = icmp ult i64 %.093.lcssa, 4
  br i1 %min.iters.check168, label %.lr.ph152.preheader185, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph152.preheader
  %n.vec170 = and i64 %.093.lcssa, -4             ; 3 uses
  %i.kl = shl i64 %n.vec170, 2                    ; 2 uses
  %i.km = getelementptr i8, ptr %.0.lcssa, i64 %i.kl
  %i.kn = getelementptr i8, ptr %.091.lcssa, i64 %i.kl
  %i.ko = and i64 %.093.lcssa, 3
  %broadcast.splatinsert171 = insertelement <4 x double> poison, double %6, i64 0
  %broadcast.splat172 = shufflevector <4 x double> %broadcast.splatinsert171, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert173 = insertelement <4 x double> poison, double %5, i64 0
  %broadcast.splat174 = shufflevector <4 x double> %broadcast.splatinsert173, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph169
  %index176 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.kp = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa, i64 %i.kp
  %next.gep178 = getelementptr i8, ptr %.091.lcssa, i64 %i.kp
  %wide.load = load <4 x float>, ptr %next.gep177, align 4, !tbaa !94
  %i.kq = fpext <4 x float> %wide.load to <4 x double>
  %i.kr = fmul <4 x double> %broadcast.splat172, %i.kq ; 2 uses
  %i.ks = fcmp olt <4 x double> %i.kr, zeroinitializer
  %i.kt = select <4 x i1> %i.ks, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.ku = fadd <4 x double> %i.kr, %i.kt          ; 2 uses
  %i.kv = fcmp oge <4 x double> %i.ku, %broadcast.splat174
  %i.kw = select <4 x i1> %i.kv, <4 x double> %i.ku, <4 x double> %broadcast.splat174 ; 2 uses
  %i.kx = fcmp ogt <4 x double> %i.kw, %broadcast.splat172
  %i.ky = select <4 x i1> %i.kx, <4 x double> %broadcast.splat172, <4 x double> %i.kw
  %i.kz = fptosi <4 x double> %i.ky to <4 x i32>
  store <4 x i32> %i.kz, ptr %next.gep178, align 4, !tbaa !51
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.la, label %middle.block180, label %vector.body175, !llvm.loop !1056

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %.093.lcssa, %n.vec170
  br i1 %cmp.n181, label %._crit_edge, label %.lr.ph152.preheader185

.lr.ph152.preheader185:                           ; preds = %.lr.ph152.preheader, %middle.block180
  %.1151.ph = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %i.km, %middle.block180 ]
  %.192150.ph = phi ptr [ %.091.lcssa, %.lr.ph152.preheader ], [ %i.kn, %middle.block180 ]
  %.194149.ph = phi i64 [ %.093.lcssa, %.lr.ph152.preheader ], [ %i.ko, %middle.block180 ]
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %.0145 = phi ptr [ %i.mo, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.091144 = phi ptr [ %i.mp, %.lr.ph ], [ %.091144.ph, %.lr.ph.preheader186 ] ; 5 uses
  %.093143 = phi i64 [ %i.nb, %.lr.ph ], [ %.093143.ph, %.lr.ph.preheader186 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.ld = load <4 x float>, ptr %.0145, align 4, !tbaa !94
  %i.le = fpext <4 x float> %i.ld to <4 x double>
  %i.lf = fmul <4 x double> %i.kk, %i.le          ; 2 uses
  %i.lg = fcmp olt <4 x double> %i.lf, zeroinitializer
  %i.lh = select <4 x i1> %i.lg, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.li = fadd <4 x double> %i.lf, %i.lh          ; 2 uses
  %i.lj = fcmp oge <4 x double> %i.li, %9
  %i.lk = select <4 x i1> %i.lj, <4 x double> %i.li, <4 x double> %9 ; 2 uses
  %i.ll = fcmp ogt <4 x double> %i.lk, %i.kk
  %i.lm = select <4 x i1> %i.ll, <4 x double> %i.kk, <4 x double> %i.lk
  %i.ln = fptosi <4 x double> %i.lm to <4 x i32>
  store <4 x i32> %i.ln, ptr %.091144, align 4, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.lq = load <4 x float>, ptr %i.lb, align 4, !tbaa !94
  %i.lr = fpext <4 x float> %i.lq to <4 x double>
  %i.ls = fmul <4 x double> %i.kk, %i.lr          ; 2 uses
  %i.lt = fcmp olt <4 x double> %i.ls, zeroinitializer
  %i.lu = select <4 x i1> %i.lt, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.lv = fadd <4 x double> %i.ls, %i.lu          ; 2 uses
  %i.lw = fcmp oge <4 x double> %i.lv, %9
  %i.lx = select <4 x i1> %i.lw, <4 x double> %i.lv, <4 x double> %9 ; 2 uses
  %i.ly = fcmp ogt <4 x double> %i.lx, %i.kk
  %i.lz = select <4 x i1> %i.ly, <4 x double> %i.kk, <4 x double> %i.lx
  %i.ma = fptosi <4 x double> %i.lz to <4 x i32>
  store <4 x i32> %i.ma, ptr %i.lc, align 4, !tbaa !51
  %i.mb = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.mc = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.md = load <4 x float>, ptr %i.lo, align 4, !tbaa !94
  %i.me = fpext <4 x float> %i.md to <4 x double>
  %i.mf = fmul <4 x double> %i.kk, %i.me          ; 2 uses
  %i.mg = fcmp olt <4 x double> %i.mf, zeroinitializer
  %i.mh = select <4 x i1> %i.mg, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.mi = fadd <4 x double> %i.mf, %i.mh          ; 2 uses
  %i.mj = fcmp oge <4 x double> %i.mi, %9
  %i.mk = select <4 x i1> %i.mj, <4 x double> %i.mi, <4 x double> %9 ; 2 uses
  %i.ml = fcmp ogt <4 x double> %i.mk, %i.kk
  %i.mm = select <4 x i1> %i.ml, <4 x double> %i.kk, <4 x double> %i.mk
  %i.mn = fptosi <4 x double> %i.mm to <4 x i32>
  store <4 x i32> %i.mn, ptr %i.lp, align 4, !tbaa !51
  %i.mo = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.091144, i64 64 ; 2 uses
  %i.mq = load <4 x float>, ptr %i.mb, align 4, !tbaa !94
  %i.mr = fpext <4 x float> %i.mq to <4 x double>
  %i.ms = fmul <4 x double> %i.kk, %i.mr          ; 2 uses
  %i.mt = fcmp olt <4 x double> %i.ms, zeroinitializer
  %i.mu = select <4 x i1> %i.mt, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.mv = fadd <4 x double> %i.ms, %i.mu          ; 2 uses
  %i.mw = fcmp oge <4 x double> %i.mv, %9
  %i.mx = select <4 x i1> %i.mw, <4 x double> %i.mv, <4 x double> %9 ; 2 uses
  %i.my = fcmp ogt <4 x double> %i.mx, %i.kk
  %i.mz = select <4 x i1> %i.my, <4 x double> %i.kk, <4 x double> %i.mx
  %i.na = fptosi <4 x double> %i.mz to <4 x i32>
  store <4 x i32> %i.na, ptr %i.mc, align 4, !tbaa !51
  %i.nb = add i64 %.093143, -16                   ; 3 uses
  %i.nc = icmp ugt i64 %i.nb, 15
  br i1 %i.nc, label %.lr.ph, label %.preheader, !llvm.loop !1057

.lr.ph152:                                        ; preds = %.lr.ph152.preheader185, %.lr.ph152
  %.1151 = phi ptr [ %i.ne, %.lr.ph152 ], [ %.1151.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.192150 = phi ptr [ %i.nn, %.lr.ph152 ], [ %.192150.ph, %.lr.ph152.preheader185 ] ; 2 uses
  %.194149 = phi i64 [ %i.nd, %.lr.ph152 ], [ %.194149.ph, %.lr.ph152.preheader185 ]
  %i.nd = add i64 %.194149, -1                    ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.nf = load float, ptr %.1151, align 4, !tbaa !94
  %i.ng = fpext float %i.nf to double
  %i.nh = fmul double %6, %i.ng                   ; 2 uses
  %i.ni = fcmp olt double %i.nh, 0.000000e+00
  %i.nj = select i1 %i.ni, double -5.000000e-01, double 5.000000e-01
  %i.nk = fadd double %i.nh, %i.nj                ; 2 uses
  %.inv.i140 = fcmp oge double %i.nk, %5
  %.0.i.i141 = select i1 %.inv.i140, double %i.nk, double %5 ; 2 uses
  %i.nl = fcmp ogt double %.0.i.i141, %6
  %.1.i.i142 = select i1 %i.nl, double %6, double %.0.i.i141
  %i.nm = fptosi double %.1.i.i142 to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %.192150, i64 4
  store i32 %i.nm, ptr %.192150, align 4, !tbaa !51
  %.not = icmp eq i64 %i.nd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1058

._crit_edge:                                      ; preds = %.lr.ph152, %middle.block180, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfdEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ %2, %bb.a ], [ %i.an, %.lr.ph ] ; 5 uses
  %.053.lcssa = phi ptr [ %1, %bb.a ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.not62 = icmp eq i64 %.055.lcssa, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.055.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.165.prol = phi ptr [ %i.c, %.lr.ph66.prol ], [ %.0.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15464.prol = phi ptr [ %i.f, %.lr.ph66.prol ], [ %.053.lcssa, %.lr.ph66.preheader ] ; 2 uses
  %.15663.prol = phi i64 [ %i.b, %.lr.ph66.prol ], [ %.055.lcssa, %.lr.ph66.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.b = add i64 %.15663.prol, -1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.165.prol, i64 4 ; 2 uses
  %i.d = load float, ptr %.165.prol, align 4, !tbaa !94
  %i.e = fpext float %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %.15464.prol, i64 8 ; 2 uses
  store double %i.e, ptr %.15464.prol, align 8, !tbaa !78
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !1059

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.c, %.lr.ph66.prol ]
  %.15464.unr = phi ptr [ %.053.lcssa, %.lr.ph66.preheader ], [ %i.f, %.lr.ph66.prol ]
  %.15663.unr = phi i64 [ %.055.lcssa, %.lr.ph66.preheader ], [ %i.b, %.lr.ph66.prol ]
  %i.g = icmp ult i64 %.055.lcssa, 4
  br i1 %i.g, label %._crit_edge, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %i.aj, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.05358 = phi ptr [ %i.ak, %.lr.ph ], [ %1, %bb.a ] ; 9 uses
  %.05557 = phi i64 [ %i.an, %.lr.ph ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.05358, i64 16
  %i.j = load <2 x float>, ptr %.059, align 4, !tbaa !94
  %i.k = fpext <2 x float> %i.j to <2 x double>
  store <2 x double> %i.k, ptr %.05358, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.05358, i64 32
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.o = fpext <2 x float> %i.n to <2 x double>
  store <2 x double> %i.o, ptr %i.i, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %.059, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.05358, i64 48
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !94
  %i.s = fpext <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.m, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.05358, i64 64
  %i.v = load <2 x float>, ptr %i.p, align 4, !tbaa !94
  %i.w = fpext <2 x float> %i.v to <2 x double>
  store <2 x double> %i.w, ptr %i.q, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.059, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.05358, i64 80
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !94
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %i.u, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.05358, i64 96
  %i.ad = load <2 x float>, ptr %i.x, align 4, !tbaa !94
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.y, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.05358, i64 112
  %i.ah = load <2 x float>, ptr %i.ab, align 4, !tbaa !94
  %i.ai = fpext <2 x float> %i.ah to <2 x double>
  store <2 x double> %i.ai, ptr %i.ac, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05358, i64 128 ; 2 uses
  %i.al = load <2 x float>, ptr %i.af, align 4, !tbaa !94
  %i.am = fpext <2 x float> %i.al to <2 x double>
  store <2 x double> %i.am, ptr %i.ag, align 8, !tbaa !78
  %i.an = add i64 %.05557, -16                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.lr.ph, label %.preheader, !llvm.loop !1060

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.bc, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15464 = phi ptr [ %i.bf, %.lr.ph66 ], [ %.15464.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %.15663 = phi i64 [ %i.bb, %.lr.ph66 ], [ %.15663.unr, %.lr.ph66.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.165, i64 4
  %i.aq = load float, ptr %.165, align 4, !tbaa !94
  %i.ar = fpext float %i.aq to double
  %i.as = getelementptr inbounds nuw i8, ptr %.15464, i64 8
  store double %i.ar, ptr %.15464, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %i.au = load float, ptr %i.ap, align 4, !tbaa !94
  %i.av = fpext float %i.au to double
  %i.aw = getelementptr inbounds nuw i8, ptr %.15464, i64 16
  store double %i.av, ptr %i.as, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %.165, i64 12
  %i.ay = load float, ptr %i.at, align 4, !tbaa !94
  %i.az = fpext float %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %.15464, i64 24
  store double %i.az, ptr %i.aw, align 8, !tbaa !78
  %i.bb = add i64 %.15663, -4                     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !94
  %i.be = fpext float %i.bd to double
  %i.bf = getelementptr inbounds nuw i8, ptr %.15464, i64 32
  store double %i.be, ptr %i.ba, align 8, !tbaa !78
  %.not.3 = icmp eq i64 %i.bb, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph66, !llvm.loop !1061

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIflEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i64 %3 to double                  ; 3 uses
  %i.b = sitofp i64 %4 to double                  ; 4 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x double> poison, double %i.b, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 24 uses
  %i.f = insertelement <2 x double> poison, double %i.a, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.cv, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cu, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cu, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.cv, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.dh, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.j = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = fmul <2 x double> %i.e, %i.k             ; 2 uses
  %i.m = fcmp olt <2 x double> %i.l, zeroinitializer
  %i.n = select <2 x i1> %i.m, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.o = fadd <2 x double> %i.l, %i.n             ; 2 uses
  %i.p = fcmp oge <2 x double> %i.o, %i.g
  %i.q = select <2 x i1> %i.p, <2 x double> %i.o, <2 x double> %i.g ; 2 uses
  %i.r = fcmp ogt <2 x double> %i.q, %i.e
  %i.s = select <2 x i1> %i.r, <2 x double> %i.e, <2 x double> %i.q
  %i.t = fptosi <2 x double> %i.s to <2 x i64>
  store <2 x i64> %i.t, ptr %.091144, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.w = load <2 x float>, ptr %i.h, align 4, !tbaa !94
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = fmul <2 x double> %i.e, %i.x             ; 2 uses
  %i.z = fcmp olt <2 x double> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ab = fadd <2 x double> %i.y, %i.aa           ; 2 uses
  %i.ac = fcmp oge <2 x double> %i.ab, %i.g
  %i.ad = select <2 x i1> %i.ac, <2 x double> %i.ab, <2 x double> %i.g ; 2 uses
  %i.ae = fcmp ogt <2 x double> %i.ad, %i.e
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.e, <2 x double> %i.ad
  %i.ag = fptosi <2 x double> %i.af to <2 x i64>
  store <2 x i64> %i.ag, ptr %i.i, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.aj = load <2 x float>, ptr %i.u, align 4, !tbaa !94
  %i.ak = fpext <2 x float> %i.aj to <2 x double>
  %i.al = fmul <2 x double> %i.e, %i.ak           ; 2 uses
  %i.am = fcmp olt <2 x double> %i.al, zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ao = fadd <2 x double> %i.al, %i.an          ; 2 uses
  %i.ap = fcmp oge <2 x double> %i.ao, %i.g
  %i.aq = select <2 x i1> %i.ap, <2 x double> %i.ao, <2 x double> %i.g ; 2 uses
  %i.ar = fcmp ogt <2 x double> %i.aq, %i.e
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.e, <2 x double> %i.aq
  %i.at = fptosi <2 x double> %i.as to <2 x i64>
  store <2 x i64> %i.at, ptr %i.v, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.aw = load <2 x float>, ptr %i.ah, align 4, !tbaa !94
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.e, %i.ax           ; 2 uses
  %i.az = fcmp olt <2 x double> %i.ay, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bb = fadd <2 x double> %i.ay, %i.ba          ; 2 uses
  %i.bc = fcmp oge <2 x double> %i.bb, %i.g
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.bb, <2 x double> %i.g ; 2 uses
  %i.be = fcmp ogt <2 x double> %i.bd, %i.e
  %i.bf = select <2 x i1> %i.be, <2 x double> %i.e, <2 x double> %i.bd
  %i.bg = fptosi <2 x double> %i.bf to <2 x i64>
  store <2 x i64> %i.bg, ptr %i.ai, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.bj = load <2 x float>, ptr %i.au, align 4, !tbaa !94
  %i.bk = fpext <2 x float> %i.bj to <2 x double>
  %i.bl = fmul <2 x double> %i.e, %i.bk           ; 2 uses
  %i.bm = fcmp olt <2 x double> %i.bl, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bo = fadd <2 x double> %i.bl, %i.bn          ; 2 uses
  %i.bp = fcmp oge <2 x double> %i.bo, %i.g
  %i.bq = select <2 x i1> %i.bp, <2 x double> %i.bo, <2 x double> %i.g ; 2 uses
  %i.br = fcmp ogt <2 x double> %i.bq, %i.e
  %i.bs = select <2 x i1> %i.br, <2 x double> %i.e, <2 x double> %i.bq
  %i.bt = fptosi <2 x double> %i.bs to <2 x i64>
  store <2 x i64> %i.bt, ptr %i.av, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.bw = load <2 x float>, ptr %i.bh, align 4, !tbaa !94
  %i.bx = fpext <2 x float> %i.bw to <2 x double>
  %i.by = fmul <2 x double> %i.e, %i.bx           ; 2 uses
  %i.bz = fcmp olt <2 x double> %i.by, zeroinitializer
  %i.ca = select <2 x i1> %i.bz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cb = fadd <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = fcmp oge <2 x double> %i.cb, %i.g
  %i.cd = select <2 x i1> %i.cc, <2 x double> %i.cb, <2 x double> %i.g ; 2 uses
  %i.ce = fcmp ogt <2 x double> %i.cd, %i.e
  %i.cf = select <2 x i1> %i.ce, <2 x double> %i.e, <2 x double> %i.cd
  %i.cg = fptosi <2 x double> %i.cf to <2 x i64>
  store <2 x i64> %i.cg, ptr %i.bi, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.cj = load <2 x float>, ptr %i.bu, align 4, !tbaa !94
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  %i.cl = fmul <2 x double> %i.e, %i.ck           ; 2 uses
  %i.cm = fcmp olt <2 x double> %i.cl, zeroinitializer
  %i.cn = select <2 x i1> %i.cm, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.co = fadd <2 x double> %i.cl, %i.cn          ; 2 uses
  %i.cp = fcmp oge <2 x double> %i.co, %i.g
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.co, <2 x double> %i.g ; 2 uses
  %i.cr = fcmp ogt <2 x double> %i.cq, %i.e
  %i.cs = select <2 x i1> %i.cr, <2 x double> %i.e, <2 x double> %i.cq
  %i.ct = fptosi <2 x double> %i.cs to <2 x i64>
  store <2 x i64> %i.ct, ptr %i.bv, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.ch, align 4, !tbaa !94
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.e, %i.cx           ; 2 uses
  %i.cz = fcmp olt <2 x double> %i.cy, zeroinitializer
  %i.da = select <2 x i1> %i.cz, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.db = fadd <2 x double> %i.cy, %i.da          ; 2 uses
  %i.dc = fcmp oge <2 x double> %i.db, %i.g
  %i.dd = select <2 x i1> %i.dc, <2 x double> %i.db, <2 x double> %i.g ; 2 uses
  %i.de = fcmp ogt <2 x double> %i.dd, %i.e
  %i.df = select <2 x i1> %i.de, <2 x double> %i.e, <2 x double> %i.dd
  %i.dg = fptosi <2 x double> %i.df to <2 x i64>
  store <2 x i64> %i.dg, ptr %i.ci, align 8, !tbaa !83
  %i.dh = add i64 %.093143, -16                   ; 3 uses
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.lr.ph, label %.preheader, !llvm.loop !1062

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.dk, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.dt, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.dj, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.dj = add i64 %.194149, -1                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dl = load float, ptr %.1151, align 4, !tbaa !94
  %i.dm = fpext float %i.dl to double
  %i.dn = fmul double %i.b, %i.dm                 ; 2 uses
  %i.do = fcmp olt double %i.dn, 0.000000e+00
  %i.dp = select i1 %i.do, double -5.000000e-01, double 5.000000e-01
  %i.dq = fadd double %i.dn, %i.dp                ; 2 uses
  %.inv.i140 = fcmp oge double %i.dq, %i.a
  %.0.i.i141 = select i1 %.inv.i140, double %i.dq, double %i.a ; 2 uses
  %i.dr = fcmp ogt double %.0.i.i141, %i.b
  %.1.i.i142 = select i1 %i.dr, double %i.b, double %.0.i.i141
  %i.ds = fptosi double %.1.i.i142 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.ds, ptr %.192150, align 8, !tbaa !83
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1063

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfmEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = uitofp i64 %3 to double                    ; 3 uses
  %6 = uitofp i64 %4 to double                    ; 4 uses
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %i.b = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 24 uses
  %8 = insertelement <2 x double> poison, double %5, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 16 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.093.lcssa = phi i64 [ %2, %bb.a ], [ %i.dc, %.lr.ph ] ; 2 uses
  %.091.lcssa = phi ptr [ %1, %bb.a ], [ %i.cq, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cp, %.lr.ph ]
  %.not148 = icmp eq i64 %.093.lcssa, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0145 = phi ptr [ %i.cp, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.091144 = phi ptr [ %i.cq, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.093143 = phi i64 [ %i.dc, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.091144, i64 16
  %i.e = load <2 x float>, ptr %.0145, align 4, !tbaa !94
  %i.f = fpext <2 x float> %i.e to <2 x double>
  %i.g = fmul <2 x double> %i.b, %i.f             ; 2 uses
  %i.h = fcmp olt <2 x double> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.j = fadd <2 x double> %i.g, %i.i             ; 2 uses
  %i.k = fcmp oge <2 x double> %i.j, %9
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> %9 ; 2 uses
  %i.m = fcmp ogt <2 x double> %i.l, %i.b
  %i.n = select <2 x i1> %i.m, <2 x double> %i.b, <2 x double> %i.l
  %i.o = fptoui <2 x double> %i.n to <2 x i64>
  store <2 x i64> %i.o, ptr %.091144, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.091144, i64 32
  %i.r = load <2 x float>, ptr %i.c, align 4, !tbaa !94
  %i.s = fpext <2 x float> %i.r to <2 x double>
  %i.t = fmul <2 x double> %i.b, %i.s             ; 2 uses
  %i.u = fcmp olt <2 x double> %i.t, zeroinitializer
  %i.v = select <2 x i1> %i.u, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.w = fadd <2 x double> %i.t, %i.v             ; 2 uses
  %i.x = fcmp oge <2 x double> %i.w, %9
  %i.y = select <2 x i1> %i.x, <2 x double> %i.w, <2 x double> %9 ; 2 uses
  %i.z = fcmp ogt <2 x double> %i.y, %i.b
  %i.aa = select <2 x i1> %i.z, <2 x double> %i.b, <2 x double> %i.y
  %i.ab = fptoui <2 x double> %i.aa to <2 x i64>
  store <2 x i64> %i.ab, ptr %i.d, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.091144, i64 48
  %i.ae = load <2 x float>, ptr %i.p, align 4, !tbaa !94
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = fmul <2 x double> %i.b, %i.af           ; 2 uses
  %i.ah = fcmp olt <2 x double> %i.ag, zeroinitializer
  %i.ai = select <2 x i1> %i.ah, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.aj = fadd <2 x double> %i.ag, %i.ai          ; 2 uses
  %i.ak = fcmp oge <2 x double> %i.aj, %9
  %i.al = select <2 x i1> %i.ak, <2 x double> %i.aj, <2 x double> %9 ; 2 uses
  %i.am = fcmp ogt <2 x double> %i.al, %i.b
  %i.an = select <2 x i1> %i.am, <2 x double> %i.b, <2 x double> %i.al
  %i.ao = fptoui <2 x double> %i.an to <2 x i64>
  store <2 x i64> %i.ao, ptr %i.q, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.091144, i64 64
  %i.ar = load <2 x float>, ptr %i.ac, align 4, !tbaa !94
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fmul <2 x double> %i.b, %i.as           ; 2 uses
  %i.au = fcmp olt <2 x double> %i.at, zeroinitializer
  %i.av = select <2 x i1> %i.au, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.aw = fadd <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = fcmp oge <2 x double> %i.aw, %9
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.aw, <2 x double> %9 ; 2 uses
  %i.az = fcmp ogt <2 x double> %i.ay, %i.b
  %i.ba = select <2 x i1> %i.az, <2 x double> %i.b, <2 x double> %i.ay
  %i.bb = fptoui <2 x double> %i.ba to <2 x i64>
  store <2 x i64> %i.bb, ptr %i.ad, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %.0145, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %.091144, i64 80
  %i.be = load <2 x float>, ptr %i.ap, align 4, !tbaa !94
  %i.bf = fpext <2 x float> %i.be to <2 x double>
  %i.bg = fmul <2 x double> %i.b, %i.bf           ; 2 uses
  %i.bh = fcmp olt <2 x double> %i.bg, zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bj = fadd <2 x double> %i.bg, %i.bi          ; 2 uses
  %i.bk = fcmp oge <2 x double> %i.bj, %9
  %i.bl = select <2 x i1> %i.bk, <2 x double> %i.bj, <2 x double> %9 ; 2 uses
  %i.bm = fcmp ogt <2 x double> %i.bl, %i.b
  %i.bn = select <2 x i1> %i.bm, <2 x double> %i.b, <2 x double> %i.bl
  %i.bo = fptoui <2 x double> %i.bn to <2 x i64>
  store <2 x i64> %i.bo, ptr %i.aq, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %.0145, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.091144, i64 96
  %i.br = load <2 x float>, ptr %i.bc, align 4, !tbaa !94
  %i.bs = fpext <2 x float> %i.br to <2 x double>
  %i.bt = fmul <2 x double> %i.b, %i.bs           ; 2 uses
  %i.bu = fcmp olt <2 x double> %i.bt, zeroinitializer
  %i.bv = select <2 x i1> %i.bu, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.bw = fadd <2 x double> %i.bt, %i.bv          ; 2 uses
  %i.bx = fcmp oge <2 x double> %i.bw, %9
  %i.by = select <2 x i1> %i.bx, <2 x double> %i.bw, <2 x double> %9 ; 2 uses
  %i.bz = fcmp ogt <2 x double> %i.by, %i.b
  %i.ca = select <2 x i1> %i.bz, <2 x double> %i.b, <2 x double> %i.by
  %i.cb = fptoui <2 x double> %i.ca to <2 x i64>
  store <2 x i64> %i.cb, ptr %i.bd, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %.0145, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %.091144, i64 112
  %i.ce = load <2 x float>, ptr %i.bp, align 4, !tbaa !94
  %i.cf = fpext <2 x float> %i.ce to <2 x double>
  %i.cg = fmul <2 x double> %i.b, %i.cf           ; 2 uses
  %i.ch = fcmp olt <2 x double> %i.cg, zeroinitializer
  %i.ci = select <2 x i1> %i.ch, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cj = fadd <2 x double> %i.cg, %i.ci          ; 2 uses
  %i.ck = fcmp oge <2 x double> %i.cj, %9
  %i.cl = select <2 x i1> %i.ck, <2 x double> %i.cj, <2 x double> %9 ; 2 uses
  %i.cm = fcmp ogt <2 x double> %i.cl, %i.b
  %i.cn = select <2 x i1> %i.cm, <2 x double> %i.b, <2 x double> %i.cl
  %i.co = fptoui <2 x double> %i.cn to <2 x i64>
  store <2 x i64> %i.co, ptr %i.bq, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %.0145, i64 64 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.091144, i64 128 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cc, align 4, !tbaa !94
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fmul <2 x double> %i.b, %i.cs           ; 2 uses
  %i.cu = fcmp olt <2 x double> %i.ct, zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cw = fadd <2 x double> %i.ct, %i.cv          ; 2 uses
  %i.cx = fcmp oge <2 x double> %i.cw, %9
  %i.cy = select <2 x i1> %i.cx, <2 x double> %i.cw, <2 x double> %9 ; 2 uses
  %i.cz = fcmp ogt <2 x double> %i.cy, %i.b
  %i.da = select <2 x i1> %i.cz, <2 x double> %i.b, <2 x double> %i.cy
  %i.db = fptoui <2 x double> %i.da to <2 x i64>
  store <2 x i64> %i.db, ptr %i.cd, align 8, !tbaa !83
  %i.dc = add i64 %.093143, -16                   ; 3 uses
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.lr.ph, label %.preheader, !llvm.loop !1064

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.1151 = phi ptr [ %i.df, %.lr.ph152 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.192150 = phi ptr [ %i.do, %.lr.ph152 ], [ %.091.lcssa, %.preheader ] ; 2 uses
  %.194149 = phi i64 [ %i.de, %.lr.ph152 ], [ %.093.lcssa, %.preheader ]
  %i.de = add i64 %.194149, -1                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1151, i64 4
  %i.dg = load float, ptr %.1151, align 4, !tbaa !94
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %6, %i.dh                   ; 2 uses
  %i.dj = fcmp olt double %i.di, 0.000000e+00
  %i.dk = select i1 %i.dj, double -5.000000e-01, double 5.000000e-01
  %i.dl = fadd double %i.di, %i.dk                ; 2 uses
  %.inv.i140 = fcmp oge double %i.dl, %5
  %.0.i.i141 = select i1 %.inv.i140, double %i.dl, double %5 ; 2 uses
  %i.dm = fcmp ogt double %.0.i.i141, %6
  %.1.i.i142 = select i1 %i.dm, double %6, double %.0.i.i141
  %i.dn = fptoui double %.1.i.i142 to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.192150, i64 8
  store i64 %i.dn, ptr %.192150, align 8, !tbaa !83
  %.not = icmp eq i64 %i.de, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !1065

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E9_M_invokeERKSt9_Any_dataOlSD_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !83   ; 3 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !83
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1067
  %i.b = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.val3
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1068
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !90
  %narrow.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %spec.select.i.i.i.i = zext nneg i32 %narrow.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !91
  %i.j = zext i8 %i.i to i64
  %i.k = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.e) #39
  %i.l = mul i64 %.val3, %i.j
  %i.m = mul i64 %i.l, %i.k
  %i.n = mul i64 %i.m, %spec.select.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = sub nsw i64 %.val4, %.val3
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.e, align 8
  %i.q = tail call noundef ptr @_ZN11OpenImageIO4v3_13pvt18convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %i.b, ptr noundef %i.o, i64 noundef %i.p, i64 %.sroa.0.0.copyload.i.i.i) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescEE3$_0", ptr %0, align 8, !tbaa !308
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !141
  store ptr %.val, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1069
  store ptr %i.a, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #40
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112convert_typeIfcEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i8 %3 to float                    ; 36 uses
  %i.b = sitofp i8 %4 to float                    ; 53 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %.lr.ph.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = add i64 %2, -16                          ; 2 uses
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 16
  %i.j = shl i64 %i.g, 2
  %i.k = and i64 %i.j, -64
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep160 = getelementptr i8, ptr %i.l, i64 64
  %bound0 = icmp ult ptr %1, %scevgep160
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2305843009213693948      ; 5 uses
  %i.m = shl i64 %n.vec, 6
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = shl i64 %n.vec, 4
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 2 uses
  %i.q = shl i64 %n.vec, 4
  %i.r = sub i64 %2, %i.q                         ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 48 uses
  %broadcast.splatinsert161 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat162 = shufflevector <4 x float> %broadcast.splatinsert161, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 6                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.s  ; 16 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep163 = getelementptr i8, ptr %i.t, i64 64
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep164 = getelementptr i8, ptr %i.u, i64 128
  %i.v = getelementptr i8, ptr %0, i64 %i.s       ; 16 uses
  %next.gep165 = getelementptr i8, ptr %i.v, i64 192
  %i.w = shl i64 %index, 4                        ; 4 uses
  %next.gep166 = getelementptr i8, ptr %1, i64 %i.w ; 16 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep167 = getelementptr i8, ptr %i.x, i64 16
  %i.y = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep168 = getelementptr i8, ptr %i.y, i64 32
  %i.z = getelementptr i8, ptr %1, i64 %i.w       ; 16 uses
  %next.gep169 = getelementptr i8, ptr %i.z, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ab = getelementptr i8, ptr %i.t, i64 68
  %i.ac = getelementptr i8, ptr %i.u, i64 132
  %i.ad = getelementptr i8, ptr %i.v, i64 196
  %i.ae = load float, ptr %next.gep, align 4, !tbaa !94, !alias.scope !1080
  %i.af = load float, ptr %next.gep163, align 4, !tbaa !94, !alias.scope !1080
  %i.ag = load float, ptr %next.gep164, align 4, !tbaa !94, !alias.scope !1080
  %i.ah = load float, ptr %next.gep165, align 4, !tbaa !94, !alias.scope !1080
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fmul <4 x float> %i.al, %broadcast.splat ; 2 uses
  %i.an = fcmp olt <4 x float> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.ap = fadd <4 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = fcmp oge <4 x float> %i.ap, %broadcast.splat162
  %i.ar = select <4 x i1> %i.aq, <4 x float> %i.ap, <4 x float> %broadcast.splat162 ; 2 uses
  %i.as = fcmp ogt <4 x float> %i.ar, %broadcast.splat
  %i.at = select <4 x i1> %i.as, <4 x float> %broadcast.splat, <4 x float> %i.ar
  %i.au = fptosi <4 x float> %i.at to <4 x i8>    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.aw = getelementptr i8, ptr %i.x, i64 17
  %i.ax = getelementptr i8, ptr %i.y, i64 33
  %i.ay = getelementptr i8, ptr %i.z, i64 49
  %i.az = extractelement <4 x i8> %i.au, i64 0
  store i8 %i.az, ptr %next.gep166, align 1, !tbaa !68, !alias.scope !1081, !noalias !1080
  %i.ba = extractelement <4 x i8> %i.au, i64 1
  store i8 %i.ba, ptr %next.gep167, align 1, !tbaa !68, !alias.scope !1081, !noalias !1080
  %i.bb = extractelement <4 x i8> %i.au, i64 2
  store i8 %i.bb, ptr %next.gep168, align 1, !tbaa !68, !alias.scope !1081, !noalias !1080
  %i.bc = extractelement <4 x i8> %i.au, i64 3
  store i8 %i.bc, ptr %next.gep169, align 1, !tbaa !68, !alias.scope !1081, !noalias !1080
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.be = getelementptr i8, ptr %i.t, i64 72
  %i.bf = getelementptr i8, ptr %i.u, i64 136
  %i.bg = getelementptr i8, ptr %i.v, i64 200
  %i.bh = load float, ptr %i.aa, align 4, !tbaa !94, !alias.scope !1080
  %i.bi = load float, ptr %i.ab, align 4, !tbaa !94, !alias.scope !1080
  %i.bj = load float, ptr %i.ac, align 4, !tbaa !94, !alias.scope !1080
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !94, !alias.scope !1080
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = fmul <4 x float> %i.bo, %broadcast.splat ; 2 uses
  %i.bq = fcmp olt <4 x float> %i.bp, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.bs = fadd <4 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = fcmp oge <4 x float> %i.bs, %broadcast.splat162
  %i.bu = select <4 x i1> %i.bt, <4 x float> %i.bs, <4 x float> %broadcast.splat162 ; 2 uses
  %i.bv = fcmp ogt <4 x float> %i.bu, %broadcast.splat
  %i.bw = select <4 x i1> %i.bv, <4 x float> %broadcast.splat, <4 x float> %i.bu
  %i.bx = fptosi <4 x float> %i.bw to <4 x i8>    ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep166, i64 2
  %i.bz = getelementptr i8, ptr %i.x, i64 18
  %i.ca = getelementptr i8, ptr %i.y, i64 34
  %i.cb = getelementptr i8, ptr %i.z, i64 50
end_hunk_0
