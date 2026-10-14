Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/compile-test?download=true
inline.NumInlined: 6412
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK3fmt3v126detail16native_formatterIicLNS1_4typeE1EE6formatINS0_15generic_contextIPccEEEEDTcldtfp0_3outEERKiRT_:bb.a
  %wide.load325 = load <16 x i8>, ptr %i.da, align 1, !tbaa !76
  %wide.load326 = load <16 x i8>, ptr %i.db, align 1, !tbaa !76
  %i.dc = getelementptr i8, ptr %next.gep324, i64 16
  store <16 x i8> %wide.load325, ptr %next.gep324, align 1, !tbaa !76
  store <16 x i8> %wide.load326, ptr %i.dc, align 1, !tbaa !76
  %index.next327 = add nuw i64 %index323, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next327, %n.vec321
  br i1 %i.dd, label %middle.block328, label %vector.body322, !llvm.loop !737

middle.block328:                                  ; preds = %vector.body322
  %cmp.n329 = icmp eq i64 %i.ct, %n.vec321
  br i1 %cmp.n329, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block328
  %min.epilog.iters.check335 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph.i36.preheader, label %vec.epilog.ph336, !prof !171

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check318, %vec.epilog.iter.check334
  %vec.epilog.resume.val330 = phi i64 [ %n.vec321, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check318 ]
  %n.vec337 = and i64 %i.ct, -8                   ; 4 uses
  %i.de = getelementptr i8, ptr %.038.i.lcssa, i64 %n.vec337 ; 2 uses
  %i.df = add i64 %.039.i.idx, %n.vec337
  %i.dg = getelementptr i8, ptr %i.c, i64 %.039.i.idx
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val330, %vec.epilog.ph336 ], [ %index.next342, %vec.epilog.vector.body338 ] ; 3 uses
  %next.gep340 = getelementptr i8, ptr %.038.i.lcssa, i64 %index339
  %i.dh = getelementptr i8, ptr %i.dg, i64 %index339
  %wide.load341 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !76
  store <8 x i8> %wide.load341, ptr %next.gep340, align 1, !tbaa !76
  %index.next342 = add nuw i64 %index339, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next342, %n.vec337
  br i1 %i.di, label %vec.epilog.middle.block343, label %vec.epilog.vector.body338, !llvm.loop !738

vec.epilog.middle.block343:                       ; preds = %vec.epilog.vector.body338
  %cmp.n344 = icmp eq i64 %i.ct, %n.vec337
  br i1 %cmp.n344, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %iter.check332, %vector.memcheck314, %vec.epilog.iter.check334, %vec.epilog.middle.block343
  %.08.i.ph = phi ptr [ %.038.i.lcssa, %iter.check332 ], [ %.038.i.lcssa, %vector.memcheck314 ], [ %i.cx, %vec.epilog.iter.check334 ], [ %i.de, %vec.epilog.middle.block343 ] ; 2 uses
  %.057.i.idx.ph = phi i64 [ %.039.i.idx, %iter.check332 ], [ %.039.i.idx, %vector.memcheck314 ], [ %i.cy, %vec.epilog.iter.check334 ], [ %i.df, %vec.epilog.middle.block343 ] ; 4 uses
  %i.dj = sub i64 0, %.057.i.idx.ph
  %xtraiter364 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36.prol
  %.08.i.prol = phi ptr [ %i.dl, %.lr.ph.i36.prol ], [ %.08.i.ph, %.lr.ph.i36.preheader ] ; 2 uses
  %.057.i.idx.prol = phi i64 [ %.057.i.add.prol, %.lr.ph.i36.prol ], [ %.057.i.idx.ph, %.lr.ph.i36.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %.lr.ph.i36.prol ], [ 0, %.lr.ph.i36.preheader ]
  %.057.i.ptr.prol = getelementptr inbounds i8, ptr %i.c, i64 %.057.i.idx.prol
  %.057.i.add.prol = add nsw i64 %.057.i.idx.prol, 1 ; 2 uses
  %i.dk = load i8, ptr %.057.i.ptr.prol, align 1, !tbaa !76
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 3 uses
  store i8 %i.dk, ptr %.08.i.prol, align 1, !tbaa !76
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol, !llvm.loop !739

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.i36.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i36.preheader ], [ %i.dl, %.lr.ph.i36.prol ]
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i36.preheader ], [ %i.dl, %.lr.ph.i36.prol ]
  %.057.i.idx.unr = phi i64 [ %.057.i.idx.ph, %.lr.ph.i36.preheader ], [ %.057.i.add.prol, %.lr.ph.i36.prol ]
  %i.dm = add i64 %.057.i.idx.ph, -25
  %i.dn = icmp ult i64 %i.dm, 7
  br i1 %i.dn, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %.08.i = phi ptr [ %i.ek, %.lr.ph.i36 ], [ %.08.i.unr, %.lr.ph.i36.prol.loopexit ] ; 9 uses
  %.057.i.idx = phi i64 [ %.057.i.add.7, %.lr.ph.i36 ], [ %.057.i.idx.unr, %.lr.ph.i36.prol.loopexit ] ; 9 uses
  %.057.i.ptr = getelementptr inbounds i8, ptr %i.c, i64 %.057.i.idx
  %i.do = load i8, ptr %.057.i.ptr, align 1, !tbaa !76
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.do, ptr %.08.i, align 1, !tbaa !76
  %i.dq = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.1 = getelementptr i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.057.i.ptr.1, align 1, !tbaa !76
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !76
  %i.dt = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.2 = getelementptr i8, ptr %i.dt, i64 2
  %i.du = load i8, ptr %.057.i.ptr.2, align 1, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !76
  %i.dw = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.3 = getelementptr i8, ptr %i.dw, i64 3
  %i.dx = load i8, ptr %.057.i.ptr.3, align 1, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !76
  %i.dz = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.4 = getelementptr i8, ptr %i.dz, i64 4
  %i.ea = load i8, ptr %.057.i.ptr.4, align 1, !tbaa !76
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !76
  %i.ec = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.5 = getelementptr i8, ptr %i.ec, i64 5
  %i.ed = load i8, ptr %.057.i.ptr.5, align 1, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !76
  %i.ef = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.6 = getelementptr i8, ptr %i.ef, i64 6
  %i.eg = load i8, ptr %.057.i.ptr.6, align 1, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !76
  %i.ei = getelementptr i8, ptr %i.c, i64 %.057.i.idx
  %.057.i.ptr.7 = getelementptr i8, ptr %i.ei, i64 7
  %.057.i.add.7 = add nsw i64 %.057.i.idx, 8      ; 2 uses
  %i.ej = load i8, ptr %.057.i.ptr.7, align 1, !tbaa !76
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !76
  %.not.i37.7 = icmp eq i64 %.057.i.add.7, 32
  br i1 %.not.i37.7, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13, label %.lr.ph.i36, !llvm.loop !740

.lr.ph182:                                        ; preds = %bb.m
  %i.el = trunc i32 %.0137 to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store i8 %i.el, ptr %i.g, align 1, !tbaa !76
  %i.en = lshr i32 %i.cs, 8                       ; 2 uses
  %.not.i = icmp eq i32 %i.en, 0
  br i1 %.not.i, label %._crit_edge183, label %.lr.ph182.1

.lr.ph182.1:                                      ; preds = %.lr.ph182
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !76
  %i.eq = lshr i32 %i.cs, 16                      ; 2 uses
  %.not.i.1 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.1, label %._crit_edge183, label %.lr.ph182.2

.lr.ph182.2:                                      ; preds = %.lr.ph182.1
  %i.er = trunc nuw i32 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !76
  br label %._crit_edge183

bb.n:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.et = lshr i32 %.0137, 24                     ; 2 uses
  %i.eu = add i32 %i.ck, %i.et                    ; 3 uses
  %i.ev = and i32 %i.e, 56
  %i.ew = icmp eq i32 %i.ev, 32
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.cm, i32 %i.eu)
  %spec.select138 = call i32 @llvm.umax.i32(i32 %i.cm, i32 %i.eu)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.p:                                             ; preds = %bb.n
  %i.ex = icmp sgt i32 %i.co, %i.ck
  br i1 %i.ex, label %bb.q, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.q:                                             ; preds = %bb.p
  %i.ey = add i32 %i.co, %i.et
  %i.ez = sub nsw i32 %i.co, %i.ck
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.6109.0 = phi i32 [ 0, %bb.p ], [ %spec.select, %bb.o ], [ %i.ez, %bb.q ]
  %.sroa.0108.0 = phi i32 [ %i.eu, %bb.p ], [ %spec.select138, %bb.o ], [ %i.ey, %bb.q ]
  %i.fa = zext i32 %.sroa.0108.0 to i64
  %i.fb = zext i32 %i.cm to i64
  %i.fc = call i64 @llvm.usub.sat.i64(i64 %i.fb, i64 %i.fa) ; 3 uses
  %i.fd = lshr i32 %i.e, 3
  %i.fe = and i32 %i.fd, 7
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @.str.212, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !76
  %i.fi = sext i8 %i.fh to i64
  %i.fj = and i64 %i.fi, 4294967295
  %i.fk = lshr i64 %i.fc, %i.fj                   ; 4 uses
  %i.fl = sub nuw nsw i64 %i.fc, %i.fk
  %.not.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.fm = call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %i.g, i64 noundef %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.0.i.i = phi ptr [ %i.fm, %bb.r ], [ %i.g, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit ] ; 5 uses
  %i.fn = and i32 %.0137, 16777215                ; 3 uses
  %.not7.i.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %bb.s
  %.06.lcssa.i.i.i = phi ptr [ %.0.i.i, %bb.s ], [ %i.hk, %.lr.ph.i.i.i ], [ %i.hn, %.lr.ph.i.i.i.1 ], [ %i.hq, %.lr.ph.i.i.i.2 ] ; 3 uses
  %.06.lcssa.i.i.i282 = ptrtoaddr ptr %.06.lcssa.i.i.i to i64
  %i.fo = zext i32 %.sroa.6109.0 to i64           ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.06.lcssa.i.i.i, i8 48, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i.i, i64 %i.fo ; 7 uses
  %.not6.i.i.i.i = icmp eq i64 %.039.i.idx, 32
  br i1 %.not6.i.i.i.i, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, label %iter.check299

iter.check299:                                    ; preds = %._crit_edge.i.i.i
  %i.fq = sub i64 32, %.039.i.idx                 ; 7 uses
  %min.iters.check284 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck281

vector.memcheck281:                               ; preds = %iter.check299
  %i.fr = add i64 %.06.lcssa.i.i.i282, %i.fo
  %i.fs = add i64 %.039.i.idx, %i.d
  %i.ft = sub i64 %i.fs, %i.fr
  %diff.check283 = icmp ugt i64 %i.ft, -32
  br i1 %diff.check283, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check285

vector.main.loop.iter.check285:                   ; preds = %vector.memcheck281
  %min.iters.check286 = icmp ult i64 %i.fq, 32
  br i1 %min.iters.check286, label %vec.epilog.ph303, label %vector.ph287

vector.ph287:                                     ; preds = %vector.main.loop.iter.check285
  %i.fu = and i64 %i.fq, 24
  %n.vec288 = and i64 %i.fq, -32                  ; 5 uses
  %i.fv = getelementptr i8, ptr %i.fp, i64 %n.vec288 ; 2 uses
  %i.fw = add i64 %.039.i.idx, %n.vec288
  %i.fx = getelementptr i8, ptr %i.c, i64 %.039.i.idx
  br label %vector.body289

vector.body289:                                   ; preds = %vector.ph287, %vector.body289
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next294, %vector.body289 ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %i.fp, i64 %index290 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 %index290 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load292 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !76
  %wide.load293 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !76
  %i.ga = getelementptr i8, ptr %next.gep291, i64 16
  store <16 x i8> %wide.load292, ptr %next.gep291, align 1, !tbaa !76
  store <16 x i8> %wide.load293, ptr %i.ga, align 1, !tbaa !76
  %index.next294 = add nuw i64 %index290, 32      ; 2 uses
  %i.gb = icmp eq i64 %index.next294, %n.vec288
  br i1 %i.gb, label %middle.block295, label %vector.body289, !llvm.loop !741

middle.block295:                                  ; preds = %vector.body289
  %cmp.n296 = icmp eq i64 %i.fq, %n.vec288
  br i1 %cmp.n296, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, label %vec.epilog.iter.check301

vec.epilog.iter.check301:                         ; preds = %middle.block295
  %min.epilog.iters.check302 = icmp eq i64 %i.fu, 0
  br i1 %min.epilog.iters.check302, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph303, !prof !171

vec.epilog.ph303:                                 ; preds = %vector.main.loop.iter.check285, %vec.epilog.iter.check301
  %vec.epilog.resume.val297 = phi i64 [ %n.vec288, %vec.epilog.iter.check301 ], [ 0, %vector.main.loop.iter.check285 ]
  %n.vec304 = and i64 %i.fq, -8                   ; 4 uses
  %i.gc = getelementptr i8, ptr %i.fp, i64 %n.vec304 ; 2 uses
  %i.gd = add i64 %.039.i.idx, %n.vec304
  %i.ge = getelementptr i8, ptr %i.c, i64 %.039.i.idx
  br label %vec.epilog.vector.body305

vec.epilog.vector.body305:                        ; preds = %vec.epilog.vector.body305, %vec.epilog.ph303
  %index306 = phi i64 [ %vec.epilog.resume.val297, %vec.epilog.ph303 ], [ %index.next309, %vec.epilog.vector.body305 ] ; 3 uses
  %next.gep307 = getelementptr i8, ptr %i.fp, i64 %index306
  %i.gf = getelementptr i8, ptr %i.ge, i64 %index306
  %wide.load308 = load <8 x i8>, ptr %i.gf, align 1, !tbaa !76
  store <8 x i8> %wide.load308, ptr %next.gep307, align 1, !tbaa !76
  %index.next309 = add nuw i64 %index306, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.gg, label %vec.epilog.middle.block310, label %vec.epilog.vector.body305, !llvm.loop !742

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body305
  %cmp.n311 = icmp eq i64 %i.fq, %n.vec304
  br i1 %cmp.n311, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check299, %vector.memcheck281, %vec.epilog.iter.check301, %vec.epilog.middle.block310
  %.08.i.i.i.i.ph = phi ptr [ %i.fp, %iter.check299 ], [ %i.fp, %vector.memcheck281 ], [ %i.fv, %vec.epilog.iter.check301 ], [ %i.gc, %vec.epilog.middle.block310 ] ; 2 uses
  %.057.i.i.i.i.idx.ph = phi i64 [ %.039.i.idx, %iter.check299 ], [ %.039.i.idx, %vector.memcheck281 ], [ %i.fw, %vec.epilog.iter.check301 ], [ %i.gd, %vec.epilog.middle.block310 ] ; 4 uses
  %i.gh = sub i64 0, %.057.i.i.i.i.idx.ph
  %xtraiter361 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.prol ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.idx.prol = phi i64 [ %.057.i.i.i.i.add.prol, %.lr.ph.i.i.i.i.prol ], [ %.057.i.i.i.i.idx.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %.057.i.i.i.i.ptr.prol = getelementptr inbounds i8, ptr %i.c, i64 %.057.i.i.i.i.idx.prol
  %.057.i.i.i.i.add.prol = add nsw i64 %.057.i.i.i.i.idx.prol, 1 ; 2 uses
  %i.gi = load i8, ptr %.057.i.i.i.i.ptr.prol, align 1, !tbaa !76
  %i.gj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.gi, ptr %.08.i.i.i.i.prol, align 1, !tbaa !76
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !743

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa348.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.idx.unr = phi i64 [ %.057.i.i.i.i.idx.ph, %.lr.ph.i.i.i.i.preheader ], [ %.057.i.i.i.i.add.prol, %.lr.ph.i.i.i.i.prol ]
  %i.gk = add i64 %.057.i.i.i.i.idx.ph, -25
  %i.gl = icmp ult i64 %i.gk, 7
  br i1 %i.gl, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.idx = phi i64 [ %.057.i.i.i.i.add.7, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.idx.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.ptr = getelementptr inbounds i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %i.gm = load i8, ptr %.057.i.i.i.i.ptr, align 1, !tbaa !76
  %i.gn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  store i8 %i.gm, ptr %.08.i.i.i.i, align 1, !tbaa !76
  %i.go = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.1 = getelementptr i8, ptr %i.go, i64 1
  %i.gp = load i8, ptr %.057.i.i.i.i.ptr.1, align 1, !tbaa !76
  %i.gq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 2
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !76
  %i.gr = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.2 = getelementptr i8, ptr %i.gr, i64 2
  %i.gs = load i8, ptr %.057.i.i.i.i.ptr.2, align 1, !tbaa !76
  %i.gt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 3
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !76
  %i.gu = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.3 = getelementptr i8, ptr %i.gu, i64 3
  %i.gv = load i8, ptr %.057.i.i.i.i.ptr.3, align 1, !tbaa !76
  %i.gw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !76
  %i.gx = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.4 = getelementptr i8, ptr %i.gx, i64 4
  %i.gy = load i8, ptr %.057.i.i.i.i.ptr.4, align 1, !tbaa !76
  %i.gz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 5
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !76
  %i.ha = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.5 = getelementptr i8, ptr %i.ha, i64 5
  %i.hb = load i8, ptr %.057.i.i.i.i.ptr.5, align 1, !tbaa !76
  %i.hc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 6
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !76
  %i.hd = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.6 = getelementptr i8, ptr %i.hd, i64 6
  %i.he = load i8, ptr %.057.i.i.i.i.ptr.6, align 1, !tbaa !76
  %i.hf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 7
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !76
  %i.hg = getelementptr i8, ptr %i.c, i64 %.057.i.i.i.i.idx
  %.057.i.i.i.i.ptr.7 = getelementptr i8, ptr %i.hg, i64 7
  %.057.i.i.i.i.add.7 = add nsw i64 %.057.i.i.i.i.idx, 8 ; 2 uses
  %i.hh = load i8, ptr %.057.i.i.i.i.ptr.7, align 1, !tbaa !76
  %i.hi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8 ; 2 uses
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !76
  %.not.i.i.i.i.7 = icmp eq i64 %.057.i.i.i.i.add.7, 32
  br i1 %.not.i.i.i.i.7, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !744

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.hj = trunc i32 %.0137 to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  store i8 %i.hj, ptr %.0.i.i, align 1, !tbaa !76
  %i.hl = lshr i32 %i.fn, 8                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.hm = trunc i32 %i.hl to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 2 uses
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !76
  %i.ho = lshr i32 %i.fn, 16                      ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.hp = trunc nuw i32 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !76
  br label %._crit_edge.i.i.i

_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block295, %vec.epilog.middle.block310, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fp, %._crit_edge.i.i.i ], [ %i.gc, %vec.epilog.middle.block310 ], [ %i.fv, %middle.block295 ], [ %.lcssa348.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.hi, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not25.i.i = icmp eq i64 %i.fc, %i.fk
  br i1 %.not25.i.i, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i
  %i.hr = call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %.0.lcssa.i.i.i.i, i64 noundef %i.fl, ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13

_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13: ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %middle.block328, %vec.epilog.middle.block343, %bb.l, %._crit_edge183, %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i, %bb.t
  %.1.i = phi ptr [ %i.ci, %bb.l ], [ %.0.lcssa.i.i.i.i, %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i ], [ %.038.i.lcssa, %._crit_edge183 ], [ %i.hr, %bb.t ], [ %i.de, %vec.epilog.middle.block343 ], [ %i.cx, %middle.block328 ], [ %.lcssa.unr, %.lr.ph.i36.prol.loopexit ], [ %i.ek, %.lr.ph.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.an

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.hs = load i32, ptr %5, align 4, !tbaa !93
  %i.ht = lshr i32 %i.hs, 6
  %i.hu = and i32 %i.ht, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextIPccEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS9_(i32 noundef %i.hu, ptr noundef nonnull align 4 dereferenceable(4) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.hx = load i32, ptr %5, align 4, !tbaa !93
  %i.hy = lshr i32 %i.hx, 8
  %i.hz = and i32 %i.hy, 3
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextIPccEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS9_(i32 noundef %i.hz, ptr noundef nonnull align 4 dereferenceable(4) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ic = load ptr, ptr %2, align 8, !tbaa !122   ; 8 uses
  %i.id = load i32, ptr %1, align 4, !tbaa !100   ; 3 uses
  %i.ie = load i32, ptr %5, align 4, !tbaa !93    ; 10 uses
  %i.if = icmp slt i32 %i.id, 0
  br i1 %i.if, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.i
  %i.ig = sub i32 0, %i.id
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit45

bb.v:                                             ; preds = %.critedge.i
  %i.ih = lshr i32 %i.ie, 10
  %i.ii = and i32 %i.ih, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIjEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.ij
end_hunk_0
begin_hunk_1_@_ZNK3fmt3v126detail16native_formatterIicLNS1_4typeE1EE6formatINS0_15generic_contextIPccEEEEDTcldtfp0_3outEERKiRT_:bb.a
  %wide.load259 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !76
  %wide.load260 = load <16 x i8>, ptr %i.lv, align 1, !tbaa !76
  %i.lw = getelementptr i8, ptr %next.gep258, i64 16
  store <16 x i8> %wide.load259, ptr %next.gep258, align 1, !tbaa !76
  store <16 x i8> %wide.load260, ptr %i.lw, align 1, !tbaa !76
  %index.next261 = add nuw i64 %index257, 32      ; 2 uses
  %i.lx = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.lx, label %middle.block262, label %vector.body256, !llvm.loop !745

middle.block262:                                  ; preds = %vector.body256
  %cmp.n263 = icmp eq i64 %i.ln, %n.vec255
  br i1 %cmp.n263, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %vec.epilog.iter.check268

vec.epilog.iter.check268:                         ; preds = %middle.block262
  %min.epilog.iters.check269 = icmp eq i64 %i.lq, 0
  br i1 %min.epilog.iters.check269, label %.lr.ph.i74.preheader, label %vec.epilog.ph270, !prof !171

vec.epilog.ph270:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check268
  %vec.epilog.resume.val264 = phi i64 [ %n.vec255, %vec.epilog.iter.check268 ], [ 0, %vector.main.loop.iter.check252 ]
  %n.vec271 = and i64 %i.ln, -8                   ; 4 uses
  %i.ly = getelementptr i8, ptr %.038.i19.lcssa, i64 %n.vec271 ; 2 uses
  %i.lz = add i64 %.039.i18.idx, %n.vec271
  %i.ma = getelementptr i8, ptr %i.a, i64 %.039.i18.idx
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph270
  %index273 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph270 ], [ %index.next276, %vec.epilog.vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %.038.i19.lcssa, i64 %index273
  %i.mb = getelementptr i8, ptr %i.ma, i64 %index273
  %wide.load275 = load <8 x i8>, ptr %i.mb, align 1, !tbaa !76
  store <8 x i8> %wide.load275, ptr %next.gep274, align 1, !tbaa !76
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.mc, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !746

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %i.ln, %n.vec271
  br i1 %cmp.n278, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %iter.check266, %vector.memcheck248, %vec.epilog.iter.check268, %vec.epilog.middle.block277
  %.08.i75.ph = phi ptr [ %.038.i19.lcssa, %iter.check266 ], [ %.038.i19.lcssa, %vector.memcheck248 ], [ %i.lr, %vec.epilog.iter.check268 ], [ %i.ly, %vec.epilog.middle.block277 ] ; 2 uses
  %.057.i76.idx.ph = phi i64 [ %.039.i18.idx, %iter.check266 ], [ %.039.i18.idx, %vector.memcheck248 ], [ %i.ls, %vec.epilog.iter.check268 ], [ %i.lz, %vec.epilog.middle.block277 ] ; 4 uses
  %i.md = sub i64 0, %.057.i76.idx.ph
  %xtraiter358 = and i64 %i.md, 7                 ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol

.lr.ph.i74.prol:                                  ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74.prol
  %.08.i75.prol = phi ptr [ %i.mf, %.lr.ph.i74.prol ], [ %.08.i75.ph, %.lr.ph.i74.preheader ] ; 2 uses
  %.057.i76.idx.prol = phi i64 [ %.057.i76.add.prol, %.lr.ph.i74.prol ], [ %.057.i76.idx.ph, %.lr.ph.i74.preheader ] ; 2 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.lr.ph.i74.prol ], [ 0, %.lr.ph.i74.preheader ]
  %.057.i76.ptr.prol = getelementptr inbounds i8, ptr %i.a, i64 %.057.i76.idx.prol
  %.057.i76.add.prol = add nsw i64 %.057.i76.idx.prol, 1 ; 2 uses
  %i.me = load i8, ptr %.057.i76.ptr.prol, align 1, !tbaa !76
  %i.mf = getelementptr inbounds nuw i8, ptr %.08.i75.prol, i64 1 ; 3 uses
  store i8 %i.me, ptr %.08.i75.prol, align 1, !tbaa !76
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol, !llvm.loop !747

.lr.ph.i74.prol.loopexit:                         ; preds = %.lr.ph.i74.prol, %.lr.ph.i74.preheader
  %.lcssa352.unr = phi ptr [ poison, %.lr.ph.i74.preheader ], [ %i.mf, %.lr.ph.i74.prol ]
  %.08.i75.unr = phi ptr [ %.08.i75.ph, %.lr.ph.i74.preheader ], [ %i.mf, %.lr.ph.i74.prol ]
  %.057.i76.idx.unr = phi i64 [ %.057.i76.idx.ph, %.lr.ph.i74.preheader ], [ %.057.i76.add.prol, %.lr.ph.i74.prol ]
  %i.mg = add i64 %.057.i76.idx.ph, -25
  %i.mh = icmp ult i64 %i.mg, 7
  br i1 %i.mh, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74
  %.08.i75 = phi ptr [ %i.ne, %.lr.ph.i74 ], [ %.08.i75.unr, %.lr.ph.i74.prol.loopexit ] ; 9 uses
  %.057.i76.idx = phi i64 [ %.057.i76.add.7, %.lr.ph.i74 ], [ %.057.i76.idx.unr, %.lr.ph.i74.prol.loopexit ] ; 9 uses
  %.057.i76.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.057.i76.idx
  %i.mi = load i8, ptr %.057.i76.ptr, align 1, !tbaa !76
  %i.mj = getelementptr inbounds nuw i8, ptr %.08.i75, i64 1
  store i8 %i.mi, ptr %.08.i75, align 1, !tbaa !76
  %i.mk = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.1 = getelementptr i8, ptr %i.mk, i64 1
  %i.ml = load i8, ptr %.057.i76.ptr.1, align 1, !tbaa !76
  %i.mm = getelementptr inbounds nuw i8, ptr %.08.i75, i64 2
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !76
  %i.mn = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.2 = getelementptr i8, ptr %i.mn, i64 2
  %i.mo = load i8, ptr %.057.i76.ptr.2, align 1, !tbaa !76
  %i.mp = getelementptr inbounds nuw i8, ptr %.08.i75, i64 3
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !76
  %i.mq = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.3 = getelementptr i8, ptr %i.mq, i64 3
  %i.mr = load i8, ptr %.057.i76.ptr.3, align 1, !tbaa !76
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i75, i64 4
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !76
  %i.mt = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.4 = getelementptr i8, ptr %i.mt, i64 4
  %i.mu = load i8, ptr %.057.i76.ptr.4, align 1, !tbaa !76
  %i.mv = getelementptr inbounds nuw i8, ptr %.08.i75, i64 5
  store i8 %i.mu, ptr %i.ms, align 1, !tbaa !76
  %i.mw = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.5 = getelementptr i8, ptr %i.mw, i64 5
  %i.mx = load i8, ptr %.057.i76.ptr.5, align 1, !tbaa !76
  %i.my = getelementptr inbounds nuw i8, ptr %.08.i75, i64 6
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !76
  %i.mz = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.6 = getelementptr i8, ptr %i.mz, i64 6
  %i.na = load i8, ptr %.057.i76.ptr.6, align 1, !tbaa !76
  %i.nb = getelementptr inbounds nuw i8, ptr %.08.i75, i64 7
  store i8 %i.na, ptr %i.my, align 1, !tbaa !76
  %i.nc = getelementptr i8, ptr %i.a, i64 %.057.i76.idx
  %.057.i76.ptr.7 = getelementptr i8, ptr %i.nc, i64 7
  %.057.i76.add.7 = add nsw i64 %.057.i76.idx, 8  ; 2 uses
  %i.nd = load i8, ptr %.057.i76.ptr.7, align 1, !tbaa !76
  %i.ne = getelementptr inbounds nuw i8, ptr %.08.i75, i64 8 ; 2 uses
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !76
  %.not.i77.7 = icmp eq i64 %.057.i76.add.7, 32
  br i1 %.not.i77.7, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %.lr.ph.i74, !llvm.loop !748

.lr.ph:                                           ; preds = %bb.af
  %i.nf = trunc i32 %.0136 to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ic, i64 1 ; 2 uses
  store i8 %i.nf, ptr %i.ic, align 1, !tbaa !76
  %i.nh = lshr i32 %i.lm, 8                       ; 2 uses
  %.not.i21 = icmp eq i32 %i.nh, 0
  br i1 %.not.i21, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ni = trunc i32 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ic, i64 2 ; 2 uses
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !76
  %i.nk = lshr i32 %i.lm, 16                      ; 2 uses
  %.not.i21.1 = icmp eq i32 %i.nk, 0
  br i1 %.not.i21.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.nl = trunc nuw i32 %i.nk to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !76
  br label %._crit_edge

bb.ag:                                            ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit53
  %i.nn = lshr i32 %.0136, 24                     ; 2 uses
  %i.no = add i32 %i.lg, %i.nn                    ; 3 uses
  %i.np = and i32 %i.ie, 56
  %i.nq = icmp eq i32 %i.np, 32
  br i1 %i.nq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %spec.select139 = call i32 @llvm.umax.i32(i32 %i.lh, i32 %i.no)
  %spec.select140 = call i32 @llvm.usub.sat.i32(i32 %i.lh, i32 %i.no)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81

bb.ai:                                            ; preds = %bb.ag
  %i.nr = icmp sgt i32 %i.li, %i.lg
  br i1 %i.nr, label %bb.aj, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81

bb.aj:                                            ; preds = %bb.ai
  %i.ns = add i32 %i.li, %i.nn
  %i.nt = sub nsw i32 %i.li, %i.lg
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.0123.0 = phi i32 [ %i.no, %bb.ai ], [ %spec.select139, %bb.ah ], [ %i.ns, %bb.aj ]
  %.sroa.6124.0 = phi i32 [ 0, %bb.ai ], [ %spec.select140, %bb.ah ], [ %i.nt, %bb.aj ]
  %i.nu = zext i32 %.sroa.0123.0 to i64
  %i.nv = zext i32 %i.lh to i64
  %i.nw = call i64 @llvm.usub.sat.i64(i64 %i.nv, i64 %i.nu) ; 3 uses
  %i.nx = lshr i32 %i.ie, 3
  %i.ny = and i32 %i.nx, 7
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @.str.212, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !76
  %i.oc = sext i8 %i.ob to i64
  %i.od = and i64 %i.oc, 4294967295
  %i.oe = lshr i64 %i.nw, %i.od                   ; 4 uses
  %i.of = sub nuw nsw i64 %i.nw, %i.oe
  %.not.i.i82 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i82, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81
  %i.og = call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %i.ic, i64 noundef %i.oe, ptr noundef nonnull align 4 dereferenceable(16) %5)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81
  %.0.i.i83 = phi ptr [ %i.og, %bb.ak ], [ %i.ic, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit81 ] ; 5 uses
  %i.oh = and i32 %.0136, 16777215                ; 3 uses
  %.not7.i.i.i84 = icmp eq i32 %i.oh, 0
  br i1 %.not7.i.i.i84, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i85

._crit_edge.i.i.i89:                              ; preds = %.lr.ph.i.i.i85, %.lr.ph.i.i.i85.1, %.lr.ph.i.i.i85.2, %bb.al
  %.06.lcssa.i.i.i90 = phi ptr [ %.0.i.i83, %bb.al ], [ %i.qe, %.lr.ph.i.i.i85 ], [ %i.qh, %.lr.ph.i.i.i85.1 ], [ %i.qk, %.lr.ph.i.i.i85.2 ] ; 3 uses
  %.06.lcssa.i.i.i90236 = ptrtoaddr ptr %.06.lcssa.i.i.i90 to i64
  %i.oi = zext i32 %.sroa.6124.0 to i64           ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.06.lcssa.i.i.i90, i8 48, i64 %i.oi, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i.i90, i64 %i.oi ; 7 uses
  %.not6.i.i.i.i91 = icmp eq i64 %.039.i18.idx, 32
  br i1 %.not6.i.i.i.i91, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i89
  %i.ok = sub i64 32, %.039.i18.idx               ; 7 uses
  %min.iters.check = icmp ult i64 %i.ok, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i92.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ol = add i64 %.06.lcssa.i.i.i90236, %i.oi
  %i.om = add i64 %.039.i18.idx, %i.b
  %i.on = sub i64 %i.om, %i.ol
  %diff.check = icmp ugt i64 %i.on, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i92.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check237 = icmp ult i64 %i.ok, 32
  br i1 %min.iters.check237, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oo = and i64 %i.ok, 24
  %n.vec = and i64 %i.ok, -32                     ; 5 uses
  %i.op = getelementptr i8, ptr %i.oj, i64 %n.vec ; 2 uses
  %i.oq = add i64 %.039.i18.idx, %n.vec
  %i.or = getelementptr i8, ptr %i.a, i64 %.039.i18.idx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.oj, i64 %index ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 %index ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load = load <16 x i8>, ptr %i.os, align 1, !tbaa !76
  %wide.load238 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !76
  %i.ou = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !76
  store <16 x i8> %wide.load238, ptr %i.ou, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ok, %n.vec
  br i1 %cmp.n, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i92.preheader, label %vec.epilog.ph, !prof !171

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %i.ok, -8                   ; 4 uses
  %i.ow = getelementptr i8, ptr %i.oj, i64 %n.vec240 ; 2 uses
  %i.ox = add i64 %.039.i18.idx, %n.vec240
  %i.oy = getelementptr i8, ptr %i.a, i64 %.039.i18.idx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 3 uses
  %next.gep242 = getelementptr i8, ptr %i.oj, i64 %index241
  %i.oz = getelementptr i8, ptr %i.oy, i64 %index241
  %wide.load243 = load <8 x i8>, ptr %i.oz, align 1, !tbaa !76
  store <8 x i8> %wide.load243, ptr %next.gep242, align 1, !tbaa !76
  %index.next244 = add nuw i64 %index241, 8       ; 2 uses
  %i.pa = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.pa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !750

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %i.ok, %n.vec240
  br i1 %cmp.n245, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, label %.lr.ph.i.i.i.i92.preheader

.lr.ph.i.i.i.i92.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i93.ph = phi ptr [ %i.oj, %iter.check ], [ %i.oj, %vector.memcheck ], [ %i.op, %vec.epilog.iter.check ], [ %i.ow, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.i94.idx.ph = phi i64 [ %.039.i18.idx, %iter.check ], [ %.039.i18.idx, %vector.memcheck ], [ %i.oq, %vec.epilog.iter.check ], [ %i.ox, %vec.epilog.middle.block ] ; 4 uses
  %i.pb = sub i64 0, %.057.i.i.i.i94.idx.ph
  %xtraiter = and i64 %i.pb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i.i92.prol

.lr.ph.i.i.i.i92.prol:                            ; preds = %.lr.ph.i.i.i.i92.preheader, %.lr.ph.i.i.i.i92.prol
  %.08.i.i.i.i93.prol = phi ptr [ %i.pd, %.lr.ph.i.i.i.i92.prol ], [ %.08.i.i.i.i93.ph, %.lr.ph.i.i.i.i92.preheader ] ; 2 uses
  %.057.i.i.i.i94.idx.prol = phi i64 [ %.057.i.i.i.i94.add.prol, %.lr.ph.i.i.i.i92.prol ], [ %.057.i.i.i.i94.idx.ph, %.lr.ph.i.i.i.i92.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i92.prol ], [ 0, %.lr.ph.i.i.i.i92.preheader ]
  %.057.i.i.i.i94.ptr.prol = getelementptr inbounds i8, ptr %i.a, i64 %.057.i.i.i.i94.idx.prol
  %.057.i.i.i.i94.add.prol = add nsw i64 %.057.i.i.i.i94.idx.prol, 1 ; 2 uses
  %i.pc = load i8, ptr %.057.i.i.i.i94.ptr.prol, align 1, !tbaa !76
  %i.pd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93.prol, i64 1 ; 3 uses
  store i8 %i.pc, ptr %.08.i.i.i.i93.prol, align 1, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i.i92.prol, !llvm.loop !751

.lr.ph.i.i.i.i92.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i92.prol, %.lr.ph.i.i.i.i92.preheader
  %.lcssa354.unr = phi ptr [ poison, %.lr.ph.i.i.i.i92.preheader ], [ %i.pd, %.lr.ph.i.i.i.i92.prol ]
  %.08.i.i.i.i93.unr = phi ptr [ %.08.i.i.i.i93.ph, %.lr.ph.i.i.i.i92.preheader ], [ %i.pd, %.lr.ph.i.i.i.i92.prol ]
  %.057.i.i.i.i94.idx.unr = phi i64 [ %.057.i.i.i.i94.idx.ph, %.lr.ph.i.i.i.i92.preheader ], [ %.057.i.i.i.i94.add.prol, %.lr.ph.i.i.i.i92.prol ]
  %i.pe = add i64 %.057.i.i.i.i94.idx.ph, -25
  %i.pf = icmp ult i64 %i.pe, 7
  br i1 %i.pf, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %.lr.ph.i.i.i.i92.prol.loopexit, %.lr.ph.i.i.i.i92
  %.08.i.i.i.i93 = phi ptr [ %i.qc, %.lr.ph.i.i.i.i92 ], [ %.08.i.i.i.i93.unr, %.lr.ph.i.i.i.i92.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i94.idx = phi i64 [ %.057.i.i.i.i94.add.7, %.lr.ph.i.i.i.i92 ], [ %.057.i.i.i.i94.idx.unr, %.lr.ph.i.i.i.i92.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i94.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %i.pg = load i8, ptr %.057.i.i.i.i94.ptr, align 1, !tbaa !76
  %i.ph = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 1
  store i8 %i.pg, ptr %.08.i.i.i.i93, align 1, !tbaa !76
  %i.pi = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.1 = getelementptr i8, ptr %i.pi, i64 1
  %i.pj = load i8, ptr %.057.i.i.i.i94.ptr.1, align 1, !tbaa !76
  %i.pk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 2
  store i8 %i.pj, ptr %i.ph, align 1, !tbaa !76
  %i.pl = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.2 = getelementptr i8, ptr %i.pl, i64 2
  %i.pm = load i8, ptr %.057.i.i.i.i94.ptr.2, align 1, !tbaa !76
  %i.pn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 3
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !76
  %i.po = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.3 = getelementptr i8, ptr %i.po, i64 3
  %i.pp = load i8, ptr %.057.i.i.i.i94.ptr.3, align 1, !tbaa !76
  %i.pq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 4
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !76
  %i.pr = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.4 = getelementptr i8, ptr %i.pr, i64 4
  %i.ps = load i8, ptr %.057.i.i.i.i94.ptr.4, align 1, !tbaa !76
  %i.pt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 5
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !76
  %i.pu = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.5 = getelementptr i8, ptr %i.pu, i64 5
  %i.pv = load i8, ptr %.057.i.i.i.i94.ptr.5, align 1, !tbaa !76
  %i.pw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 6
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !76
  %i.px = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.6 = getelementptr i8, ptr %i.px, i64 6
  %i.py = load i8, ptr %.057.i.i.i.i94.ptr.6, align 1, !tbaa !76
  %i.pz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 7
  store i8 %i.py, ptr %i.pw, align 1, !tbaa !76
  %i.qa = getelementptr i8, ptr %i.a, i64 %.057.i.i.i.i94.idx
  %.057.i.i.i.i94.ptr.7 = getelementptr i8, ptr %i.qa, i64 7
  %.057.i.i.i.i94.add.7 = add nsw i64 %.057.i.i.i.i94.idx, 8 ; 2 uses
  %i.qb = load i8, ptr %.057.i.i.i.i94.ptr.7, align 1, !tbaa !76
  %i.qc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i93, i64 8 ; 2 uses
  store i8 %i.qb, ptr %i.pz, align 1, !tbaa !76
  %.not.i.i.i.i95.7 = icmp eq i64 %.057.i.i.i.i94.add.7, 32
  br i1 %.not.i.i.i.i95.7, label %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, label %.lr.ph.i.i.i.i92, !llvm.loop !752

.lr.ph.i.i.i85:                                   ; preds = %bb.al
  %i.qd = trunc i32 %.0136 to i8
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i.i83, i64 1 ; 2 uses
  store i8 %i.qd, ptr %.0.i.i83, align 1, !tbaa !76
  %i.qf = lshr i32 %i.oh, 8                       ; 2 uses
  %.not.i.i.i88 = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i.i88, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i85.1

.lr.ph.i.i.i85.1:                                 ; preds = %.lr.ph.i.i.i85
  %i.qg = trunc i32 %i.qf to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i83, i64 2 ; 2 uses
  store i8 %i.qg, ptr %i.qe, align 1, !tbaa !76
  %i.qi = lshr i32 %i.oh, 16                      ; 2 uses
  %.not.i.i.i88.1 = icmp eq i32 %i.qi, 0
  br i1 %.not.i.i.i88.1, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i85.2

.lr.ph.i.i.i85.2:                                 ; preds = %.lr.ph.i.i.i85.1
  %i.qj = trunc nuw i32 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i.i83, i64 3
  store i8 %i.qj, ptr %i.qh, align 1, !tbaa !76
  br label %._crit_edge.i.i.i89

_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96: ; preds = %.lr.ph.i.i.i.i92.prol.loopexit, %.lr.ph.i.i.i.i92, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i89
  %.0.lcssa.i.i.i.i97 = phi ptr [ %i.oj, %._crit_edge.i.i.i89 ], [ %i.ow, %vec.epilog.middle.block ], [ %i.op, %middle.block ], [ %.lcssa354.unr, %.lr.ph.i.i.i.i92.prol.loopexit ], [ %i.qc, %.lr.ph.i.i.i.i92 ] ; 2 uses
  %.not25.i.i98 = icmp eq i64 %i.nw, %i.oe
  br i1 %.not25.i.i98, label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, label %bb.am

bb.am:                                            ; preds = %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96
  %i.ql = call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %.0.lcssa.i.i.i.i97, i64 noundef %i.of, ptr noundef nonnull align 4 dereferenceable(16) %5)
  br label %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74, %middle.block262, %vec.epilog.middle.block277, %bb.ae, %._crit_edge, %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96, %bb.am
  %.1.i17 = phi ptr [ %i.le, %bb.ae ], [ %.0.lcssa.i.i.i.i97, %_ZZN3fmt3v126detail9write_intIcPcjEET0_S4_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS3_E_clES3_.exit.i.i96 ], [ %.038.i19.lcssa, %._crit_edge ], [ %i.ql, %bb.am ], [ %i.ly, %vec.epilog.middle.block277 ], [ %i.lr, %middle.block262 ], [ %.lcssa352.unr, %.lr.ph.i74.prol.loopexit ], [ %i.ne, %.lr.ph.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.an

bb.an:                                            ; preds = %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13
  %.0 = phi ptr [ %.1.i17, %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit ], [ %.1.i, %_ZN3fmt3v126detail5writeIcPciTnNSt9enable_ifIXaaaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valuentsr3std7is_sameIT0_NS0_14basic_appenderIS6_EEEE5valueEiE4typeELi0EEES7_S7_S5_RKNS0_12format_specsENS0_10locale_refE.exit13 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextIPccEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS9_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !76     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !762, !noalias !763 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp ult i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v1215generic_contextIPccE3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76, !noalias !763
  %i.i = sext i32 %i.a to i64
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

bb.o:                                             ; preds = %.noexc141, %bb.m
  %i.ck = phi i64 [ %i.cg, %bb.m ], [ %.pre.i.i.i.i140, %.noexc141 ]
  %i.cl = phi i64 [ 1, %bb.m ], [ %i.cj, %.noexc141 ] ; 2 uses
  store i64 %i.cl, ptr %i.r, align 8, !tbaa !317
  %i.cm = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cn = lshr i32 %i.cm, 5
  store i32 %i.cn, ptr %i.t, align 8, !tbaa !316
  %i.co = and i32 %i.cm, 31                       ; 3 uses
  %i.cp = icmp eq i32 %i.co, 0
  %.not19.i143 = icmp eq i64 %i.cl, 0
  %or.cond558 = or i1 %i.cp, %.not19.i143
  br i1 %or.cond558, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.o
  %i.cq = load ptr, ptr %8, align 8, !tbaa !311   ; 3 uses
  %i.cr = sub nuw nsw i32 32, %i.co
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !100 ; 2 uses
  %i.ct = lshr i32 %i.cs, %i.cr                   ; 2 uses
  %i.cu = shl i32 %i.cs, %i.co
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !100
  %.not.i149 = icmp eq i32 %i.ct, 0
  br i1 %.not.i149, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i144
  %.not565 = icmp ugt i64 %i.ck, 1
  br i1 %.not565, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !310
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 2)
          to label %.noexc154 unwind label %.loopexit.split-lp, !inline_history !1175

.noexc154:                                        ; preds = %bb.q
  %.pre.i.i152 = load i64, ptr %i.r, align 8, !tbaa !317 ; 2 uses
  %.pre2.i.i153 = add i64 %.pre.i.i152, 1
  %.pre680 = load ptr, ptr %8, align 8, !tbaa !311
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150: ; preds = %.noexc154, %bb.p
  %i.cw = phi ptr [ %i.cq, %bb.p ], [ %.pre680, %.noexc154 ]
  %.pre-phi.i.i151 = phi i64 [ 2, %bb.p ], [ %.pre2.i.i153, %.noexc154 ]
  %i.cx = phi i64 [ 1, %bb.p ], [ %.pre.i.i152, %.noexc154 ]
  store i64 %.pre-phi.i.i151, ptr %i.r, align 8, !tbaa !317
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !100
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit566:                                     ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.al, %bb.e, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.v, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.h, %bb.i, %bb.l, %bb.n, %bb.q, %bb.t, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.z, %bb.ad, %bb.ae, %bb.ah, %bb.ao, %bb.as, %bb.at, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, %.lr.ph.i144, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.o ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150 ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.cz = load i32, ptr %4, align 4, !tbaa !100
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.cz)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.da = load i64, ptr %i.h, align 8, !tbaa !317 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.da, 0
  %extract.t814 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.db = load ptr, ptr %6, align 8, !tbaa !311   ; 3 uses
  %i.dc = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1305 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check1305, label %scalar.ph1304.preheader, label %vector.ph1306

vector.ph1306:                                    ; preds = %.lr.ph.i157
  %n.vec1307 = and i64 %i.da, -8                  ; 3 uses
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1306
  %index1313 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1317, %vector.body1312 ] ; 2 uses
  %vector.recur1314 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1306 ], [ %i.dg, %vector.body1312 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index1313 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load1315 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !100 ; 2 uses
  %wide.load1316 = load <4 x i32>, ptr %i.de, align 4, !tbaa !100 ; 2 uses
  %i.df = lshr <4 x i32> %wide.load1315, %broadcast.splat1309 ; 2 uses
  %i.dg = lshr <4 x i32> %wide.load1316, %broadcast.splat1309 ; 3 uses
  %i.dh = shufflevector <4 x i32> %vector.recur1314, <4 x i32> %i.df, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.di = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dj = shl <4 x i32> %wide.load1315, %broadcast.splat1311
  %i.dk = shl <4 x i32> %wide.load1316, %broadcast.splat1311
  %i.dl = add <4 x i32> %i.dj, %i.dh
  %i.dm = add <4 x i32> %i.dk, %i.di
  store <4 x i32> %i.dl, ptr %i.dd, align 4, !tbaa !100
  store <4 x i32> %i.dm, ptr %i.de, align 4, !tbaa !100
  %index.next1317 = add nuw i64 %index1313, 8     ; 2 uses
  %i.dn = icmp eq i64 %index.next1317, %n.vec1307
  br i1 %i.dn, label %middle.block1318, label %vector.body1312, !llvm.loop !1177

middle.block1318:                                 ; preds = %vector.body1312
  %vector.recur.extract1319 = extractelement <4 x i32> %i.dg, i64 3 ; 2 uses
  %cmp.n1320 = icmp eq i64 %i.da, %n.vec1307
  br i1 %cmp.n1320, label %._crit_edge.i161, label %scalar.ph1304.preheader

scalar.ph1304.preheader:                          ; preds = %.lr.ph.i157, %middle.block1318
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1307, %middle.block1318 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1319, %middle.block1318 ]
  br label %scalar.ph1304

._crit_edge.i161:                                 ; preds = %scalar.ph1304, %middle.block1318
  %.lcssa1181 = phi i32 [ %vector.recur.extract1319, %middle.block1318 ], [ %i.dq, %scalar.ph1304 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1181, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.s

scalar.ph1304:                                    ; preds = %scalar.ph1304.preheader, %scalar.ph1304
  %.01418.i158 = phi i64 [ %i.dt, %scalar.ph1304 ], [ %.01418.i158.ph, %scalar.ph1304.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.dq, %scalar.ph1304 ], [ %.017.i159.ph, %scalar.ph1304.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.01418.i158 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !100 ; 2 uses
  %i.dq = lshr i32 %i.dp, %i.dc                   ; 2 uses
  %i.dr = shl i32 %i.dp, %i.v
  %i.ds = add i32 %i.dr, %.017.i159
  store i32 %i.ds, ptr %i.do, align 4, !tbaa !100
  %i.dt = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.dt, %i.da
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1304, !llvm.loop !1178

bb.s:                                             ; preds = %._crit_edge.i161
  %i.du = add i64 %i.da, 1                        ; 3 uses
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !312
  %i.dw = icmp ugt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !310
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.du)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !1175

.noexc167:                                        ; preds = %bb.t
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !317 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre681 = load ptr, ptr %6, align 8, !tbaa !311
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.s
  %i.dy = phi ptr [ %i.db, %bb.s ], [ %.pre681, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.du, %bb.s ], [ %.pre2.i.i166, %.noexc167 ]
  %i.dz = phi i64 [ %i.da, %bb.s ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !317
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  store i32 %.lcssa1181, ptr %i.ea, align 4, !tbaa !100
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.u:                                             ; preds = %bb.a
  %i.eb = load i32, ptr %4, align 4, !tbaa !100   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ed = sub nsw i32 0, %i.eb
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ed)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !317 ; 7 uses
  %i.ef = load i64, ptr %i.k, align 8, !tbaa !312
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.w
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !310
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ee)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !1179

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !312
  %i.ei = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %.pre.i.i.i)
  store i64 %i.ei, ptr %i.m, align 8, !tbaa !317
  %i.ej = load ptr, ptr %5, align 8, !tbaa !311   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.w
  store i64 %i.ee, ptr %i.m, align 8, !tbaa !317
  %i.el = load ptr, ptr %5, align 8, !tbaa !311   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ee, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not6.i.i, label %.loopexit567, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.en = phi ptr [ %i.ek, %.noexc170 ], [ %i.em, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.eo = phi ptr [ %i.ej, %.noexc170 ], [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.ep = ptrtoaddr ptr %i.en to i64
  %i.eq = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.er = load ptr, ptr %7, align 8, !tbaa !311   ; 4 uses
  %i.es = add i64 %i.ep, -4
  %i.et = sub i64 %i.es, %i.eq                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check1221 = icmp ult i64 %i.et, 44
  %i.ew = ptrtoaddr ptr %i.er to i64
  %i.ex = sub i64 %i.eq, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond1325 = select i1 %min.iters.check1221, i1 true, i1 %diff.check
  br i1 %or.cond1325, label %.lr.ph.i.i.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1223 = and i64 %i.ev, 9223372036854775800 ; 3 uses
  %i.ey = shl i64 %n.vec1223, 2                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eo, i64 %i.ey
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1229, %vector.body1224 ] ; 2 uses
  %i.fb = shl i64 %index1225, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.eo, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <4 x i32>, ptr %next.gep1226, align 4, !tbaa !100
  %wide.load1228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !100
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1227, ptr %next.gep, align 4, !tbaa !100
  store <4 x i32> %wide.load1228, ptr %i.fd, align 4, !tbaa !100
  %index.next1229 = add nuw i64 %index1225, 8     ; 2 uses
  %i.fe = icmp eq i64 %index.next1229, %n.vec1223
  br i1 %i.fe, label %middle.block1230, label %vector.body1224, !llvm.loop !1180

middle.block1230:                                 ; preds = %vector.body1224
  %cmp.n1231 = icmp eq i64 %i.ev, %n.vec1223
  br i1 %cmp.n1231, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1230
  %.08.i.i.ph = phi ptr [ %i.er, %.lr.ph.i.preheader.i ], [ %i.ez, %middle.block1230 ]
  %.057.i.i.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i ], [ %i.fa, %middle.block1230 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fg = load i32, ptr %.057.i.i, align 4, !tbaa !100
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fg, ptr %.08.i.i, align 4, !tbaa !100
  %.not.i.i169 = icmp eq ptr %i.ff, %i.en
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !1181

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1230, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fi = phi ptr [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.eo, %middle.block1230 ], [ %i.eo, %.lr.ph.i.i ] ; 2 uses
  %i.fj = load i32, ptr %i.e, align 8, !tbaa !316 ; 2 uses
  store i32 %i.fj, ptr %i.o, align 8, !tbaa !316
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.x

bb.x:                                             ; preds = %.loopexit567
  %i.fk = load i64, ptr %i.c, align 8, !tbaa !317 ; 8 uses
  %i.fl = load i64, ptr %i.p, align 8, !tbaa !312 ; 2 uses
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  br i1 %i.fm, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.x
  %i.fn = load ptr, ptr %i.q, align 8, !tbaa !310
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fk)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !1179

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !312 ; 2 uses
  %i.fo = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fo, ptr %i.r, align 8, !tbaa !317
  %i.fp = load ptr, ptr %5, align 8, !tbaa !311   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fk, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.x
  store i64 %i.fk, ptr %i.r, align 8, !tbaa !317
  %.idx.i172 = shl nuw nsw i64 %i.fk, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fk, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.fj, ptr %i.t, align 8, !tbaa !316
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fs = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fl, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fo, %.noexc182 ], [ %i.fk, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.ft = phi ptr [ %i.fq, %.noexc182 ], [ %i.fr, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fu = phi ptr [ %i.fp, %.noexc182 ], [ %i.fi, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.fv = ptrtoaddr ptr %i.ft to i64
  %i.fw = ptrtoaddr ptr %i.fu to i64              ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !311   ; 7 uses
  %i.fy = add i64 %i.fv, -4
  %i.fz = sub i64 %i.fy, %i.fw                    ; 2 uses
  %i.ga = lshr i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check1237 = icmp ult i64 %i.fz, 44
  %i.gc = ptrtoaddr ptr %i.fx to i64
  %i.gd = sub i64 %i.fw, %i.gc
  %diff.check1235 = icmp ugt i64 %i.gd, -32
  %or.cond1327 = select i1 %min.iters.check1237, i1 true, i1 %diff.check1235
  br i1 %or.cond1327, label %.lr.ph.i.i175.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1239 = and i64 %i.gb, 9223372036854775800 ; 3 uses
  %i.ge = shl i64 %n.vec1239, 2                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fx, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fu, i64 %i.ge
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1246, %vector.body1240 ] ; 2 uses
  %i.gh = shl i64 %index1241, 2                   ; 2 uses
  %next.gep1242 = getelementptr i8, ptr %i.fx, i64 %i.gh ; 2 uses
  %next.gep1243 = getelementptr i8, ptr %i.fu, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep1243, i64 16
  %wide.load1244 = load <4 x i32>, ptr %next.gep1243, align 4, !tbaa !100
  %wide.load1245 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !100
  %i.gj = getelementptr i8, ptr %next.gep1242, i64 16
  store <4 x i32> %wide.load1244, ptr %next.gep1242, align 4, !tbaa !100
  store <4 x i32> %wide.load1245, ptr %i.gj, align 4, !tbaa !100
  %index.next1246 = add nuw i64 %index1241, 8     ; 2 uses
  %i.gk = icmp eq i64 %index.next1246, %n.vec1239
  br i1 %i.gk, label %middle.block1247, label %vector.body1240, !llvm.loop !1182

middle.block1247:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %i.gb, %n.vec1239
  br i1 %cmp.n1248, label %.loopexit1323, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1247
  %.08.i.i176.ph = phi ptr [ %i.fx, %.lr.ph.i.preheader.i174 ], [ %i.gf, %middle.block1247 ]
  %.057.i.i177.ph = phi ptr [ %i.fu, %.lr.ph.i.preheader.i174 ], [ %i.gg, %middle.block1247 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gn, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gl, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gm = load i32, ptr %.057.i.i177, align 4, !tbaa !100
  %i.gn = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gm, ptr %.08.i.i176, align 4, !tbaa !100
  %.not.i.i178 = icmp eq ptr %i.gl, %i.ft
  br i1 %.not.i.i178, label %.loopexit1323, label %.lr.ph.i.i175, !llvm.loop !1183

.loopexit1323:                                    ; preds = %.lr.ph.i.i175, %middle.block1247
  %i.go = load i32, ptr %i.e, align 8, !tbaa !316
  store i32 %i.go, ptr %i.t, align 8, !tbaa !316
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1323
  %min.iters.check1252 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1252, label %.lr.ph.i185.preheader1371, label %vector.ph1253

vector.ph1253:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1254 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1260, %vector.body1255 ] ; 2 uses
  %vector.recur1257 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1253 ], [ %i.gs, %vector.body1255 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index1256 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load1258 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !100 ; 2 uses
  %wide.load1259 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !100 ; 3 uses
  %i.gr = lshr <4 x i32> %wide.load1258, splat (i32 31) ; 2 uses
  %i.gs = lshr <4 x i32> %wide.load1259, splat (i32 31) ; 3 uses
  %i.gt = shufflevector <4 x i32> %vector.recur1257, <4 x i32> %i.gr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gu = shufflevector <4 x i32> %i.gr, <4 x i32> %i.gs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gv = shl <4 x i32> %wide.load1258, splat (i32 1)
  %i.gw = shl <4 x i32> %wide.load1259, splat (i32 1)
  %i.gx = or disjoint <4 x i32> %i.gv, %i.gt
  %i.gy = or disjoint <4 x i32> %i.gw, %i.gu
  store <4 x i32> %i.gx, ptr %i.gp, align 4, !tbaa !100
  store <4 x i32> %i.gy, ptr %i.gq, align 4, !tbaa !100
  %index.next1260 = add nuw i64 %index1256, 8     ; 2 uses
  %i.gz = icmp eq i64 %index.next1260, %n.vec1254
  br i1 %i.gz, label %middle.block1261, label %vector.body1255, !llvm.loop !1184

middle.block1261:                                 ; preds = %vector.body1255
  %vector.recur.extract1262 = extractelement <4 x i32> %i.gs, i64 3 ; 2 uses
  %i.ha = extractelement <4 x i32> %wide.load1259, i64 3
  %cmp.n1263 = icmp eq i64 %.pr, %n.vec1254
  br i1 %cmp.n1263, label %._crit_edge.i189, label %.lr.ph.i185.preheader1371

.lr.ph.i185.preheader1371:                        ; preds = %.lr.ph.i185.preheader, %middle.block1261
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1254, %middle.block1261 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1262, %middle.block1261 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1261
  %.lcssa1188 = phi i32 [ %i.ha, %middle.block1261 ], [ %i.hc, %.lr.ph.i185 ]
  %.lcssa1187 = phi i32 [ %vector.recur.extract1262, %middle.block1261 ], [ %i.hd, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1188, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.y

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1371, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hg, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1371 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.hd, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1371 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.01418.i186 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !100 ; 3 uses
  %i.hd = lshr i32 %i.hc, 31                      ; 2 uses
  %i.he = shl i32 %i.hc, 1
  %i.hf = or disjoint i32 %i.he, %.017.i187
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !100
  %i.hg = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hg, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !1185

bb.y:                                             ; preds = %._crit_edge.i189
  %i.hh = add i64 %.pr, 1                         ; 3 uses
  %i.hi = icmp ugt i64 %i.hh, %i.fs
  br i1 %i.hi, label %bb.z, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.z:                                             ; preds = %bb.y
  %i.hj = load ptr, ptr %i.q, align 8, !tbaa !310
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.hh)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !1175

.noexc195:                                        ; preds = %bb.z
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !317 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !311
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.y
  %i.hk = phi ptr [ %i.fx, %bb.y ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.hh, %bb.y ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hl = phi i64 [ %.pr, %bb.y ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !317
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hl
  store i32 %.lcssa1187, ptr %i.hm, align 4, !tbaa !100
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1323, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1323 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hn = load i128, ptr %0, align 16, !tbaa !1205 ; 3 uses
  %i.ho = and i128 %i.hn, 18446744073709551615
  %i.hp = load i64, ptr %i.c, align 8, !tbaa !317 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.hq = load ptr, ptr %5, align 8, !tbaa !311   ; 3 uses
  %i.hr = lshr i128 %i.hn, 32
  %i.hs = and i128 %i.hr, 79228162514264337589248983040
  br label %bb.aa

.preheader.i.i:                                   ; preds = %bb.aa
  %.not20.i.i = icmp eq i128 %i.id, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.if, %bb.aa ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.id, %bb.aa ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.019.i.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !100
  %i.hv = zext i32 %i.hu to i128                  ; 2 uses
  %i.hw = mul nuw nsw i128 %i.ho, %i.hv
  %i.hx = and i128 %.01718.i.i, 4294967295
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = mul nuw i128 %i.hs, %i.hv
  %i.ia = lshr i128 %i.hy, 32
  %i.ib = lshr i128 %.01718.i.i, 32
  %i.ic = add nuw i128 %i.hz, %i.ib
  %i.id = add nuw i128 %i.ic, %i.ia               ; 3 uses
  %i.ie = trunc i128 %i.hy to i32
  store i32 %i.ie, ptr %i.ht, align 4, !tbaa !100
  %i.if = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %i.hp
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.aa, !llvm.loop !1186

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.ig = phi ptr [ %i.in, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hq, %.preheader.i.i ]
  %i.ih = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hp, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.iq, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.id, %.preheader.i.i ] ; 2 uses
  %i.ii = trunc i128 %.121.i.i to i32
  %i.ij = add i64 %i.ih, 1                        ; 3 uses
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !312
  %i.il = icmp ugt i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.ab, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.ab:                                            ; preds = %.lr.ph22.i.i
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !310
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ij)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !1187

.noexc200:                                        ; preds = %bb.ab
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !317 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !311
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.in = phi ptr [ %i.ig, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ij, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.io = phi i64 [ %i.ih, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !317
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
end_hunk_2
