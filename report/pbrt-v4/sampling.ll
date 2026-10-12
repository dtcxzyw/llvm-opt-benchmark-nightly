Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling?download=true
inline.NumInlined: 1815
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt16Sample2DFunctionESt8functionIFfffEEiiiNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %cmp.n286 = icmp eq i64 %i.dj, %n.vec275
  br i1 %cmp.n286, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block285
  %min.epilog.iters.check292 = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check292, label %.lr.ph.i.i.i.i.i.i80.preheader, label %vec.epilog.ph293, !prof !158

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check272, %vec.epilog.iter.check291
  %vec.epilog.resume.val287 = phi i64 [ %n.vec275, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check272 ]
  %n.vec294 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.dw = shl i64 %n.vec294, 3                    ; 2 uses
  %i.dx = getelementptr i8, ptr %i.de, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dw
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val287, %vec.epilog.ph293 ], [ %index.next300, %vec.epilog.vector.body295 ] ; 2 uses
  %i.dz = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.de, i64 %i.dz
  %next.gep298 = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %wide.load299 = load <4 x i64>, ptr %next.gep298, align 4, !alias.scope !160, !noalias !159
  store <4 x i64> %wide.load299, ptr %next.gep297, align 4, !alias.scope !159, !noalias !160
  %index.next300 = add nuw i64 %index296, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next300, %n.vec294
  br i1 %i.ea, label %vec.epilog.middle.block301, label %vec.epilog.vector.body295, !llvm.loop !143

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body295
  %cmp.n302 = icmp eq i64 %i.dj, %n.vec294
  br i1 %cmp.n302, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %.lr.ph.i.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i.i80.preheader:                   ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %.012.i.i.i.i.i.i81.ph = phi ptr [ %i.de, %iter.check289 ], [ %i.dm, %vec.epilog.iter.check291 ], [ %i.dx, %vec.epilog.middle.block301 ]
  %.0911.i.i.i.i.i.i82.ph = phi ptr [ %.sroa.0123.3, %iter.check289 ], [ %i.dn, %vec.epilog.iter.check291 ], [ %i.dy, %vec.epilog.middle.block301 ]
  br label %.lr.ph.i.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i80:                             ; preds = %.lr.ph.i.i.i.i.i.i80.preheader, %.lr.ph.i.i.i.i.i.i80
  %.012.i.i.i.i.i.i81 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i80 ], [ %.012.i.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i.i80.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i82 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i80 ], [ %.0911.i.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i.i80.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i82, align 4, !alias.scope !160, !noalias !159
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i81, align 4, !alias.scope !159, !noalias !160
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i82, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i81, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.ec, %.sroa.32.2
  br i1 %.not.i.i.i.i.i.i83, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %.lr.ph.i.i.i.i.i.i80, !llvm.loop !144

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84: ; preds = %.lr.ph.i.i.i.i.i.i80, %.noexc89, %vec.epilog.middle.block301, %middle.block285
  %.0.lcssa.i.i.i.i.i.i85 = phi ptr [ %i.de, %.noexc89 ], [ %i.dx, %vec.epilog.middle.block301 ], [ %i.dm, %middle.block285 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i80 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.3, i64 noundef %i.cw) #30
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, %bb.i
  %.sroa.32.3 = phi ptr [ %i.ee, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.32.2, %bb.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i85.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i85, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.18.1, %bb.i ]
  %.sroa.0123.4 = phi ptr [ %i.de, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.0123.3, %bb.i ] ; 8 uses
  %.sroa.18.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i85.pn, i64 8 ; 2 uses
  %.sroa.speculated4.i.i.i = tail call i32 @llvm.smin.i32(i32 %2, i32 0) ; 5 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %3, i32 0) ; 4 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.09.0.insert.ext.i.i.i = zext i32 %.sroa.speculated4.i.i.i to i64
  %.sroa.09.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.09.0.insert.ext.i.i.i
  %.sroa.speculated4.i14.i.i = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 4 uses
  %.sroa.speculated.i15.i.i = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 3 uses
  %.sroa.2.0.insert.ext.i16.i.i = zext nneg i32 %.sroa.speculated.i15.i.i to i64
  %.sroa.2.0.insert.shift.i17.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i.i, 32
  %.sroa.09.0.insert.ext.i18.i.i = zext nneg i32 %.sroa.speculated4.i14.i.i to i64
  %.sroa.09.0.insert.insert.i19.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i17.i.i, %.sroa.09.0.insert.ext.i18.i.i
  store i64 %.sroa.09.0.insert.insert.i.i.i, ptr %0, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0.insert.insert.i19.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.cast.i.i = ptrtoint ptr %7 to i64
  store i64 %.cast.i.i, ptr %i.ef, align 8, !tbaa !35
  %i.eg = sub nsw i32 %.sroa.speculated4.i14.i.i, %.sroa.speculated4.i.i.i
  %i.eh = sub nsw i32 %.sroa.speculated.i15.i.i, %.sroa.speculated.i.i.i
  %i.ei = mul nuw nsw i32 %i.eh, %i.eg            ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i, label %.lr.ph.preheader.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ek, align 8, !tbaa !162
  br label %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90
  %i.el = zext nneg i32 %i.ei to i64
  %i.em = shl nuw nsw i64 %i.el, 2                ; 2 uses
  %i.en = load ptr, ptr %7, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef ptr %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.em, i64 noundef 4)
          to label %.noexc91 unwind label %bb.q, !inline_history !145 ; 3 uses

.noexc91:                                         ; preds = %.lr.ph.preheader.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %i.em, i1 false), !tbaa !15
  br label %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i, %.noexc91
  %i.es = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i ], [ %i.eq, %.noexc91 ] ; 14 uses
  %i.et = icmp sgt i32 %3, 0
  br i1 %i.et, label %.preheader160.lr.ph, label %._crit_edge177.split.thread

.preheader160.lr.ph:                              ; preds = %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %i.eu = icmp sgt i32 %2, 0
  %i.ev = ptrtoint ptr %.sroa.18.2 to i64
  %i.ew = ptrtoint ptr %.sroa.0123.4 to i64       ; 3 uses
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %i.ez = sitofp i32 %2 to float
  %i.fa = uitofp nneg i32 %3 to float
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fd = sub nsw i32 %.sroa.speculated4.i14.i.i, %.sroa.speculated4.i.i.i ; 2 uses
  br i1 %i.eu, label %.preheader160.lr.ph.split, label %._crit_edge177.split.thread

.preheader160.lr.ph.split:                        ; preds = %.preheader160.lr.ph
  %.not180 = icmp eq ptr %.sroa.18.2, %.sroa.0123.4
  %wide.trip.count199 = zext nneg i32 %2 to i64   ; 10 uses
  br i1 %.not180, label %.preheader160.preheader, label %.preheader160.us.preheader

.preheader160.us.preheader:                       ; preds = %.preheader160.lr.ph.split
  %i.fe = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fa, i64 1
  br label %.preheader160.us

.preheader160.preheader:                          ; preds = %.preheader160.lr.ph.split
  %i.fg = add nsw i64 %wide.trip.count199, -1     ; 2 uses
  %min.iters.check305 = icmp ult i32 %2, 4
  %i.fh = trunc nsw i64 %i.fg to i32
  %i.fi = icmp ugt i64 %i.fg, 4294967295
  %min.iters.check307 = icmp ult i32 %2, 32
  %i.fj = and i64 %wide.trip.count199, 28
  %n.vec309 = and i64 %wide.trip.count199, 2147483616 ; 4 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %wide.trip.count199
  %min.epilog.iters.check319 = icmp eq i64 %i.fj, 0
  %n.vec321 = and i64 %wide.trip.count199, 2147483644 ; 3 uses
  %cmp.n326 = icmp eq i64 %n.vec321, %wide.trip.count199
  br label %iter.check316

.preheader160.us:                                 ; preds = %.preheader160.us.preheader, %._crit_edge175.split.us.us
  %.031176.us = phi i32 [ %i.gl, %._crit_edge175.split.us.us ], [ 0, %.preheader160.us.preheader ] ; 3 uses
  %i.fk = uitofp nneg i32 %.031176.us to float
  %i.fl = sub nuw nsw i32 %.031176.us, %.sroa.speculated.i.i.i
  %i.fm = mul nuw nsw i32 %i.fd, %i.fl
  %invariant.op.us = sub nuw nsw i32 %i.fm, %.sroa.speculated4.i.i.i
  %i.fn = insertelement <2 x float> poison, float %i.fk, i64 1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge173.us.us, %.preheader160.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %._crit_edge173.us.us ], [ 0, %.preheader160.us ] ; 2 uses
  %i.fo = trunc nuw nsw i64 %indvars.iv190 to i32 ; 2 uses
  %i.fp = uitofp nneg i32 %i.fo to float
  %i.fq = insertelement <2 x float> %i.fn, float %i.fp, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.preheader.us.us
  %.0171.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.gh, %bb.n ] ; 2 uses
  %.0146170.us.us = phi double [ 0.000000e+00, %.preheader.us.us ], [ %.sroa.speculated.us.us, %bb.n ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0123.4, i64 %.0171.us.us
  %i.fs = load <2 x float>, ptr %i.fr, align 4, !tbaa !15
  %i.ft = fadd <2 x float> %i.fs, %i.fq
  %i.fu = fdiv <2 x float> %i.ft, %i.ff           ; 2 uses
  %i.fv = fsub <2 x float> splat (float 1.000000e+00), %i.fu
  %i.fw = fmul <2 x float> %5, %i.fv
  %i.fx = fmul <2 x float> %6, %i.fu
  %i.fy = fadd <2 x float> %i.fx, %i.fw           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  store float %i.fz, ptr %i.a, align 4, !tbaa !15
  %i.ga = extractelement <2 x float> %i.fy, i64 1
  store float %i.ga, ptr %i.b, align 4, !tbaa !15
  %i.gb = load ptr, ptr %i.fb, align 8, !tbaa !44
  %.not.i.i92.us.us = icmp eq ptr %i.gb, null
  br i1 %.not.i.i92.us.us, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gc = load ptr, ptr %i.fc, align 8, !tbaa !164
  %i.gd = invoke noundef float %i.gc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.n unwind label %.loopexit.split.us.split.us, !inline_history !146

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ge = call noundef float @llvm.fabs.f32(float %i.gd)
  %i.gf = fpext float %i.ge to double             ; 2 uses
  %i.gg = fcmp olt double %.0146170.us.us, %i.gf
  %.sroa.speculated.us.us = select i1 %i.gg, double %i.gf, double %.0146170.us.us ; 2 uses
  %i.gh = add nuw i64 %.0171.us.us, 1             ; 2 uses
  %exitcond189.not = icmp eq i64 %i.gh, %i.ey
  br i1 %exitcond189.not, label %._crit_edge173.us.us, label %bb.l, !llvm.loop !147

._crit_edge173.us.us:                             ; preds = %bb.n
  %.reass.us.us = add nuw i32 %invariant.op.us, %i.fo
  %i.gi = sext i32 %.reass.us.us to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.gi
  %i.gk = fptrunc double %.sroa.speculated.us.us to float
  store float %i.gk, ptr %i.gj, align 4, !tbaa !15
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count199
  br i1 %exitcond194.not, label %._crit_edge175.split.us.us, label %.preheader.us.us, !llvm.loop !148

._crit_edge175.split.us.us:                       ; preds = %._crit_edge173.us.us
  %i.gl = add nuw nsw i32 %.031176.us, 1          ; 2 uses
  %exitcond195.not = icmp eq i32 %i.gl, %3
  br i1 %exitcond195.not, label %._crit_edge177.split.thread, label %.preheader160.us, !llvm.loop !149

.loopexit.split.us.split.us:                      ; preds = %bb.m
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

iter.check316:                                    ; preds = %.preheader160.preheader, %._crit_edge175.split
  %.031176 = phi i32 [ %i.il, %._crit_edge175.split ], [ 0, %.preheader160.preheader ] ; 2 uses
  %i.gm = sub nuw nsw i32 %.031176, %.sroa.speculated.i.i.i
  %i.gn = mul nuw nsw i32 %i.fd, %i.gm
  %invariant.op = sub nuw nsw i32 %i.gn, %.sroa.speculated4.i.i.i ; 13 uses
  br i1 %min.iters.check305, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check316
  %i.go = add i32 %invariant.op, %i.fh
  %i.gp = icmp slt i32 %i.go, %invariant.op
  %i.gq = or i1 %i.gp, %i.fi
  br i1 %i.gq, label %.preheader.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check307, label %vec.epilog.ph320, label %vector.body310

vector.body310:                                   ; preds = %vector.main.loop.iter.check306, %vector.body310
  %index311 = phi i64 [ %index.next312, %vector.body310 ], [ 0, %vector.main.loop.iter.check306 ] ; 2 uses
  %i.gr = trunc nuw nsw i64 %index311 to i32
  %i.gs = add nuw i32 %invariant.op, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.gt ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  store <8 x float> zeroinitializer, ptr %i.gu, align 4, !tbaa !15
  store <8 x float> zeroinitializer, ptr %i.gv, align 4, !tbaa !15
  store <8 x float> zeroinitializer, ptr %i.gw, align 4, !tbaa !15
  store <8 x float> zeroinitializer, ptr %i.gx, align 4, !tbaa !15
  %index.next312 = add nuw i64 %index311, 32      ; 2 uses
  %i.gy = icmp eq i64 %index.next312, %n.vec309
  br i1 %i.gy, label %middle.block313, label %vector.body310, !llvm.loop !150

middle.block313:                                  ; preds = %vector.body310
  br i1 %cmp.n314, label %._crit_edge175.split, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block313
  br i1 %min.epilog.iters.check319, label %.preheader.preheader, label %vec.epilog.ph320, !prof !165

vec.epilog.ph320:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check318
  %vec.epilog.resume.val315 = phi i64 [ %n.vec309, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check306 ]
  br label %vec.epilog.vector.body322

vec.epilog.vector.body322:                        ; preds = %vec.epilog.vector.body322, %vec.epilog.ph320
  %index323 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph320 ], [ %index.next324, %vec.epilog.vector.body322 ] ; 2 uses
  %i.gz = trunc nuw nsw i64 %index323 to i32
  %i.ha = add nuw i32 %invariant.op, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.hb
  store <4 x float> zeroinitializer, ptr %i.hc, align 4, !tbaa !15
  %index.next324 = add nuw i64 %index323, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next324, %n.vec321
  br i1 %i.hd, label %vec.epilog.middle.block325, label %vec.epilog.vector.body322, !llvm.loop !151

vec.epilog.middle.block325:                       ; preds = %vec.epilog.vector.body322
  br i1 %cmp.n326, label %._crit_edge175.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check316, %vector.scevcheck, %vec.epilog.iter.check318, %vec.epilog.middle.block325
  %indvars.iv196.ph = phi i64 [ 0, %iter.check316 ], [ 0, %vector.scevcheck ], [ %n.vec309, %vec.epilog.iter.check318 ], [ %n.vec321, %vec.epilog.middle.block325 ] ; 4 uses
  %i.he = sub nsw i64 %wide.trip.count199, %indvars.iv196.ph
  %xtraiter = and i64 %i.he, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv196.prol = phi i64 [ %indvars.iv.next197.prol, %.preheader.prol ], [ %indvars.iv196.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.hf = trunc nuw nsw i64 %indvars.iv196.prol to i32
  %.reass.prol = add nuw i32 %invariant.op, %i.hf
  %i.hg = sext i32 %.reass.prol to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.hg
  store float 0.000000e+00, ptr %i.hh, align 4, !tbaa !15
  %indvars.iv.next197.prol = add nuw nsw i64 %indvars.iv196.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !152

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv196.unr = phi i64 [ %indvars.iv196.ph, %.preheader.preheader ], [ %indvars.iv.next197.prol, %.preheader.prol ]
  %i.hi = sub nsw i64 %indvars.iv196.ph, %wide.trip.count199
  %i.hj = icmp ugt i64 %i.hi, -8
  br i1 %i.hj, label %._crit_edge175.split, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.prol.loopexit
  %invariant.op342 = add i32 1, %invariant.op
  %invariant.op343 = add i32 2, %invariant.op
  %invariant.op344 = add i32 3, %invariant.op
  %invariant.op345 = add i32 4, %invariant.op
  %invariant.op346 = add i32 5, %invariant.op
  %invariant.op347 = add i32 6, %invariant.op
  %invariant.op348 = add i32 7, %invariant.op
  br label %.preheader

bb.o:                                             ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60, %bb.h
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge

bb.p:                                             ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i76, %bb.k
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge

bb.q:                                             ; preds = %.lr.ph.preheader.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv196 = phi i64 [ %indvars.iv196.unr, %.preheader.preheader.new ], [ %indvars.iv.next197.7, %.preheader ] ; 9 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv196 to i32
  %.reass = add nuw i32 %invariant.op, %i.hn
  %i.ho = sext i32 %.reass to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ho
  store float 0.000000e+00, ptr %i.hp, align 4, !tbaa !15
  %i.hq = trunc i64 %indvars.iv196 to i32
  %.reass.1.reass = add i32 %i.hq, %invariant.op342
  %i.hr = sext i32 %.reass.1.reass to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.hr
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !15
  %i.ht = trunc i64 %indvars.iv196 to i32
  %.reass.2.reass = add i32 %i.ht, %invariant.op343
  %i.hu = sext i32 %.reass.2.reass to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.hu
  store float 0.000000e+00, ptr %i.hv, align 4, !tbaa !15
  %i.hw = trunc i64 %indvars.iv196 to i32
  %.reass.3.reass = add i32 %i.hw, %invariant.op344
  %i.hx = sext i32 %.reass.3.reass to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.hx
  store float 0.000000e+00, ptr %i.hy, align 4, !tbaa !15
  %i.hz = trunc i64 %indvars.iv196 to i32
  %.reass.4.reass = add i32 %i.hz, %invariant.op345
  %i.ia = sext i32 %.reass.4.reass to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ia
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !15
  %i.ic = trunc i64 %indvars.iv196 to i32
  %.reass.5.reass = add i32 %i.ic, %invariant.op346
  %i.id = sext i32 %.reass.5.reass to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.id
  store float 0.000000e+00, ptr %i.ie, align 4, !tbaa !15
  %i.if = trunc i64 %indvars.iv196 to i32
  %.reass.6.reass = add i32 %i.if, %invariant.op347
  %i.ig = sext i32 %.reass.6.reass to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ig
  store float 0.000000e+00, ptr %i.ih, align 4, !tbaa !15
  %i.ii = trunc i64 %indvars.iv196 to i32
  %.reass.7.reass = add i32 %i.ii, %invariant.op348
  %i.ij = sext i32 %.reass.7.reass to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ij
  store float 0.000000e+00, ptr %i.ik, align 4, !tbaa !15
  %indvars.iv.next197.7 = add nuw nsw i64 %indvars.iv196, 8 ; 2 uses
  %exitcond200.not.7 = icmp eq i64 %indvars.iv.next197.7, %wide.trip.count199
  br i1 %exitcond200.not.7, label %._crit_edge175.split, label %.preheader, !llvm.loop !153

._crit_edge175.split:                             ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block325, %middle.block313
  %i.il = add nuw nsw i32 %.031176, 1             ; 2 uses
  %exitcond201.not = icmp eq i32 %i.il, %3
  br i1 %exitcond201.not, label %._crit_edge177.split.thread, label %iter.check316, !llvm.loop !149

.split.us:                                        ; preds = %bb.l
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %.split.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit.split.us.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i95, label %_ZN4pbrt7Array2DIfED2Ev.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.im = mul nuw nsw i32 %.sroa.speculated4.i14.i.i, %.sroa.speculated.i15.i.i
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = load ptr, ptr %7, align 8, !tbaa !40
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.es, i64 noundef %i.io, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit.thread unwind label %bb.t, !inline_history !154

bb.t:                                             ; preds = %bb.s
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #31
  unreachable

._crit_edge177.split.thread:                      ; preds = %._crit_edge175.split.us.us, %._crit_edge175.split, %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit, %.preheader160.lr.ph
  %i.iu = ptrtoint ptr %.sroa.32.3 to i64
  %i.iv = ptrtoint ptr %.sroa.0123.4 to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.4, i64 noundef %i.iw) #30
  ret void

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %bb.d, %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %.sroa.0123.1215232, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit97, label %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge

_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge: ; preds = %bb.q, %bb.p, %bb.o, %_ZN4pbrt7Array2DIfED2Ev.exit
  %.pn42241 = phi { ptr, i32 } [ %i.ix, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %i.hm, %bb.q ], [ %i.hl, %bb.p ], [ %i.hk, %bb.o ]
  %.sroa.0123.0240 = phi ptr [ %.sroa.0123.1215232, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %.sroa.0123.4, %bb.q ], [ %.sroa.0123.3, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %.sroa.32.0239 = phi ptr [ %.sink.i216231, %_ZN4pbrt7Array2DIfED2Ev.exit ], [ %.sroa.32.3, %bb.q ], [ %.sroa.32.2, %bb.p ], [ %i.bm, %bb.o ]
  %.pre = ptrtoint ptr %.sroa.0123.0240 to i64
  br label %_ZN4pbrt7Array2DIfED2Ev.exit.thread

_ZN4pbrt7Array2DIfED2Ev.exit.thread:              ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge, %bb.s, %bb.r
  %.pre-phi = phi i64 [ %.pre, %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge ], [ %i.ew, %bb.s ], [ %i.ew, %bb.r ]
  %.pn42153 = phi { ptr, i32 } [ %.pn42241, %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge ], [ %lpad.phi, %bb.s ], [ %lpad.phi, %bb.r ]
  %.sroa.0123.0152 = phi ptr [ %.sroa.0123.0240, %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge ], [ %.sroa.0123.4, %bb.s ], [ %.sroa.0123.4, %bb.r ]
  %.sroa.32.0151 = phi ptr [ %.sroa.32.0239, %_ZN4pbrt7Array2DIfED2Ev.exit._ZN4pbrt7Array2DIfED2Ev.exit.thread_crit_edge ], [ %.sroa.32.3, %bb.s ], [ %.sroa.32.3, %bb.r ]
  %i.iy = ptrtoint ptr %.sroa.32.0151 to i64
  %i.iz = sub i64 %i.iy, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0152, i64 noundef %i.iz) #30
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit97

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit97: ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit.thread, %_ZN4pbrt7Array2DIfED2Ev.exit
  %.pn42.pn = phi { ptr, i32 } [ %.pn42153, %_ZN4pbrt7Array2DIfED2Ev.exit.thread ], [ %i.ix, %_ZN4pbrt7Array2DIfED2Ev.exit ]
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt19PiecewiseConstant1D24TestCompareDistributionsERKS0_S2_f(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, float noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 2 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 11 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  store float %2, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  store i64 %i.h, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  store i64 %i.j, ptr %i.c, align 8, !tbaa !23
  call void @_ZN7testing8internal11CmpHelperEQImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.k = load i8, ptr %3, align 8, !tbaa !57, !range !58, !noundef !45
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  br i1 %i.l, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ @.str.37, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 539, ptr noundef %i.p)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.q = load ptr, ptr %4, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %_ZN7testing7MessageD2Ev.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.s = load ptr, ptr %4, align 8, !tbaa !62     ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN7testing7MessageD2Ev.exit, label %bb.i
end_hunk_0
