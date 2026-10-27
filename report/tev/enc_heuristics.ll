Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3jxl19ComputeARHeuristicsERKNS_11FrameHeaderEPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPNS_10ThreadPoolE:bb.a

.lr.ph.us.i249.preheader:                         ; preds = %bb.f
  %xtraiter556 = and i64 %i.ec, 3                 ; 3 uses
  %i.ed = add i32 %i.eb, -1
  %i.ee = icmp ult i32 %i.ed, 3
  br i1 %i.ee, label %.lr.ph.us.i249.epil.preheader, label %.lr.ph.us.i249.preheader.new

.lr.ph.us.i249.preheader.new:                     ; preds = %.lr.ph.us.i249.preheader
  %unroll_iter560 = and i64 %i.ec, 4294967292
  br label %.lr.ph.us.i249

.lr.ph.us.i249:                                   ; preds = %.lr.ph.us.i249, %.lr.ph.us.i249.preheader.new
  %.0810.us.i250 = phi i64 [ 0, %.lr.ph.us.i249.preheader.new ], [ %i.ey, %.lr.ph.us.i249 ] ; 5 uses
  %niter561 = phi i64 [ 0, %.lr.ph.us.i249.preheader.new ], [ %niter561.next.3, %.lr.ph.us.i249 ]
  %i.ef = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.eg = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.eh = mul i64 %i.eg, %.0810.us.i250
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ei, i8 %i.dy, i64 %i.ea, i1 false), !tbaa !93
  %i.ej = or disjoint i64 %.0810.us.i250, 1
  %i.ek = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.el = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.em = mul i64 %i.el, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.em ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.en, i8 %i.dy, i64 %i.ea, i1 false), !tbaa !93
  %i.eo = or disjoint i64 %.0810.us.i250, 2
  %i.ep = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.eq = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.er = mul i64 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.es, i8 %i.dy, i64 %i.ea, i1 false), !tbaa !93
  %i.et = or disjoint i64 %.0810.us.i250, 3
  %i.eu = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.ev = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.ew = mul i64 %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ew ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ex, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ex, i8 %i.dy, i64 %i.ea, i1 false), !tbaa !93
  %i.ey = add nuw nsw i64 %.0810.us.i250, 4       ; 2 uses
  %niter561.next.3 = add i64 %niter561, 4         ; 2 uses
  %niter561.ncmp.3 = icmp eq i64 %niter561.next.3, %unroll_iter560
  br i1 %niter561.ncmp.3, label %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252.loopexit.unr-lcssa, label %.lr.ph.us.i249, !llvm.loop !6

_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i249
  %lcmp.mod558.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod558.not, label %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252, label %.lr.ph.us.i249.epil.preheader

.lr.ph.us.i249.epil.preheader:                    ; preds = %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252.loopexit.unr-lcssa, %.lr.ph.us.i249.preheader
  %.0810.us.i250.epil.init = phi i64 [ 0, %.lr.ph.us.i249.preheader ], [ %i.ey, %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252.loopexit.unr-lcssa ]
  %lcmp.mod559 = icmp ne i64 %xtraiter556, 0
  call void @llvm.assume(i1 %lcmp.mod559)
  br label %.lr.ph.us.i249.epil

.lr.ph.us.i249.epil:                              ; preds = %.lr.ph.us.i249.epil, %.lr.ph.us.i249.epil.preheader
  %.0810.us.i250.epil = phi i64 [ %i.fd, %.lr.ph.us.i249.epil ], [ %.0810.us.i250.epil.init, %.lr.ph.us.i249.epil.preheader ] ; 2 uses
  %epil.iter557 = phi i64 [ %epil.iter557.next, %.lr.ph.us.i249.epil ], [ 0, %.lr.ph.us.i249.epil.preheader ]
  %i.ez = load ptr, ptr %i.bp, align 8, !tbaa !91
  %i.fa = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.fb = mul i64 %i.fa, %.0810.us.i250.epil
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.fc, i8 %i.dy, i64 %i.ea, i1 false), !tbaa !93
  %i.fd = add nuw nsw i64 %.0810.us.i250.epil, 1
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252, label %.lr.ph.us.i249.epil, !llvm.loop !635

_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252: ; preds = %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252.loopexit.unr-lcssa, %.lr.ph.us.i249.epil, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN3jxl16ReconstructImageERKNS_11FrameHeaderERKNS_17PassesSharedStateERKNSt3__16vectorINS6_10unique_ptrINS_7ACImageENS6_14default_deleteIS9_EEEENS6_9allocatorISC_EEEEPNS_10ThreadPoolE(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(2808) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef %4) #24
  %i.fe = load i32, ptr %i.bs, align 8, !tbaa !107 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.g, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3jxl9FillPlaneIhEEvT_PNS_5PlaneIS1_EENS_5RectTImEE.exit252
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bt, i8 0, i64 144, i1 false), !alias.scope !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(172) %7, i64 24, i1 false)
  %i.fg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) #28 ; 0 uses
  %i.fh = load i64, ptr %i.bv, align 8, !tbaa !108, !noalias !652
  store i64 %i.fh, ptr %i.bw, align 8, !tbaa !108, !alias.scope !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 24, i1 false)
  %i.fi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) #28 ; 0 uses
  %i.fj = load i64, ptr %i.cb, align 8, !tbaa !108, !noalias !652
  store i64 %i.fj, ptr %i.cc, align 8, !tbaa !108, !alias.scope !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i64 24, i1 false)
  %i.fk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg) #28 ; 0 uses
  %i.fl = load i64, ptr %i.ch, align 8, !tbaa !108, !noalias !652
  store i64 %i.fl, ptr %i.ci, align 8, !tbaa !108, !alias.scope !652
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.fm = load i64, ptr %i.cj, align 8, !tbaa !309 ; 2 uses
  %i.fn = load i64, ptr %i.ck, align 8, !tbaa !310 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.fo = icmp ult i64 %i.fm, 4294967296
  %i.fp = icmp ult i64 %i.fn, 4294967296
  %or.cond525 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond525, label %bb.h, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.fq = trunc nuw i64 %i.fn to i32
  %i.fr = trunc nuw i64 %i.fm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !653
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.fr, i32 noundef %i.fq, i64 noundef 4) #28, !noalias !653
  %i.fs = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.e, i64 noundef 0) #28, !noalias !653 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.fs, ptr %i.cl, align 8, !tbaa !111, !alias.scope !653
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.h
  store i32 0, ptr %i.cl, align 8, !tbaa !111, !alias.scope !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cn) #28
  %i.fu = load i64, ptr %i.cp, align 8, !tbaa !108, !noalias !653
  store i64 %i.fu, ptr %i.co, align 8, !tbaa !108, !alias.scope !653
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.i, %.critedge.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cn) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !653
  %.pre = load i32, ptr %i.cl, align 8, !tbaa !111 ; 4 uses
  %i.fv = icmp eq i32 %.pre, 0
  br i1 %i.fv, label %bb.j, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.j:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(60) %9, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cm) #28
  %i.fw = load i64, ptr %i.co, align 8, !tbaa !108, !noalias !654
  store i64 %i.fw, ptr %i.cr, align 8, !tbaa !108, !alias.scope !654
  %i.fx = zext i8 %i.dy to i64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %6, i64 %i.fx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 24, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.cq) #28 ; 0 uses
  %i.gb = load i64, ptr %i.cr, align 8, !tbaa !108
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !108
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cq) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.gd = load i64, ptr %i.ck, align 8, !tbaa !310 ; 2 uses
  %.not423 = icmp eq i64 %i.gd, 0
  br i1 %.not423, label %._crit_edge367, label %.lr.ph366

.lr.ph366:                                        ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !91
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !92
  %i.gi = load i64, ptr %i.cj, align 8, !tbaa !309 ; 3 uses
  %.not424 = icmp eq i64 %i.gi, 0
  br i1 %.not424, label %._crit_edge367, label %.lr.ph366.split.us

.lr.ph366.split.us:                               ; preds = %.lr.ph366
  %i.gj = load i32, ptr %2, align 8, !tbaa !88
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = load i32, ptr %i.cs, align 4, !tbaa !89
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = shl nuw i64 %i.gi, 2
  br label %.lr.ph362.us

.lr.ph362.us:                                     ; preds = %._crit_edge363.us, %.lr.ph366.split.us
  %.0167364.us = phi i64 [ 0, %.lr.ph366.split.us ], [ %i.jo, %._crit_edge363.us ] ; 3 uses
  %i.go = mul i64 %i.gh, %.0167364.us
  %i.gp = getelementptr i8, ptr %i.gf, i64 %i.go  ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gp, i64 64) ]
  %i.gq = shl i64 %.0167364.us, 3                 ; 3 uses
  %i.gr = add i64 %i.gq, 8
  %.not.i8.i.i.us = icmp ugt i64 %i.gr, %i.gm
  %i.gs = call i64 @llvm.usub.sat.i64(i64 %i.gm, i64 %i.gq)
  %i.gt = select i1 %.not.i8.i.i.us, i64 %i.gs, i64 8 ; 2 uses
  %.not.i254.us = icmp eq i64 %i.gt, 0
  %i.gu = load i64, ptr %i.cx, align 8
  %i.gv = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.gw = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.gx = load ptr, ptr %i.da, align 8            ; 2 uses
  br i1 %.not.i254.us, label %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us.us.preheader, label %.lr.ph362.split.us368

_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us.us.preheader: ; preds = %.lr.ph362.us
  call void @llvm.memset.p0.i64(ptr align 64 %i.gp, i8 0, i64 %i.gn, i1 false), !tbaa !112
  br label %._crit_edge363.us

.lr.ph362.split.us368:                            ; preds = %.lr.ph362.us
  %i.gy = load i64, ptr %i.ct, align 8, !tbaa !92
  %i.gz = load ptr, ptr %i.cu, align 8, !tbaa !91 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gz, i64 64) ]
  %i.ha = load ptr, ptr %i.cv, align 8, !tbaa !91 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ha, i64 64) ]
  %i.hb = load ptr, ptr %i.cw, align 8, !tbaa !91 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hb, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gv, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gw, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gx, i64 64) ]
  %i.hc = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.hd = load i64, ptr %i.dc, align 8, !tbaa !92
  br label %.lr.ph54.i.us

.lr.ph54.i.us:                                    ; preds = %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370, %.lr.ph362.split.us368
  %.0166360.us369 = phi i64 [ 0, %.lr.ph362.split.us368 ], [ %i.jn, %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370 ] ; 3 uses
  %i.he = shl i64 %.0166360.us369, 3              ; 9 uses
  %i.hf = add i64 %i.he, 8
  %.not.i.i.i253.us = icmp ugt i64 %i.hf, %i.gk
  %i.hg = call i64 @llvm.usub.sat.i64(i64 %i.gk, i64 %i.he)
  %i.hh = select i1 %.not.i.i.i253.us, i64 %i.hg, i64 8 ; 2 uses
  %.not56.i.us = icmp eq i64 %i.hh, 0
  br i1 %.not56.i.us, label %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370, label %.lr.ph.us.i255.us

.lr.ph.us.i255.us:                                ; preds = %.lr.ph54.i.us, %._crit_edge.us.i.us
  %.sroa.064.0.i.us = phi float [ %i.il, %._crit_edge.us.i.us ], [ 0.000000e+00, %.lr.ph54.i.us ]
  %.052.us.i.us = phi i64 [ %i.je, %._crit_edge.us.i.us ], [ 0, %.lr.ph54.i.us ] ; 2 uses
  %i.hi = phi <2 x float> [ %i.jc, %._crit_edge.us.i.us ], [ zeroinitializer, %.lr.ph54.i.us ]
  %i.hj = add i64 %.052.us.i.us, %i.gq            ; 3 uses
  %i.hk = mul i64 %i.hj, %i.gy                    ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hl, i64 64) ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.he
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hn, i64 64) ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.he
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hp, i64 64) ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.he
  %i.hr = mul i64 %i.hj, %i.gu                    ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hs, i64 64) ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.he
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hu, i64 64) ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.he
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hw, i64 64) ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.he
  %i.hy = mul i64 %i.hj, %i.hd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hz, i64 64) ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.he
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i255.us
  %.sroa.064.1.i.us = phi float [ %.sroa.064.0.i.us, %.lr.ph.us.i255.us ], [ %i.il, %bb.k ]
  %.03751.us.i.us = phi i64 [ 0, %.lr.ph.us.i255.us ], [ %i.jd, %bb.k ] ; 8 uses
  %i.ib = phi <2 x float> [ %i.hi, %.lr.ph.us.i255.us ], [ %i.jc, %bb.k ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.03751.us.i.us
  %i.id = load float, ptr %i.ic, align 4, !tbaa !112 ; 2 uses
  %i.ie = fmul float %i.id, %i.id                 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.03751.us.i.us
  %i.ig = load float, ptr %i.if, align 4, !tbaa !112
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.03751.us.i.us
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !112
  %i.ij = fsub float %i.ig, %i.ii                 ; 2 uses
  %i.ik = fmul float %i.ie, %i.ij
  %i.il = call float @llvm.fmuladd.f32(float %i.ik, float %i.ij, float %.sroa.064.1.i.us) ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.03751.us.i.us
  %i.in = load float, ptr %i.im, align 4, !tbaa !112
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.03751.us.i.us
  %i.ip = load float, ptr %i.io, align 4, !tbaa !112
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.03751.us.i.us
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !112
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.03751.us.i.us
  %i.it = load float, ptr %i.is, align 4, !tbaa !112
  %i.iu = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.ir, i64 1
  %i.iw = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.it, i64 1
  %i.iy = fsub <2 x float> %i.iv, %i.ix           ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.ja, %i.iy
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.iy, <2 x float> %i.ib) ; 3 uses
  %i.jd = add nuw nsw i64 %.03751.us.i.us, 1      ; 2 uses
  %exitcond.not.i256.us = icmp eq i64 %i.jd, %i.hh
  br i1 %exitcond.not.i256.us, label %._crit_edge.us.i.us, label %bb.k, !llvm.loop !4

._crit_edge.us.i.us:                              ; preds = %bb.k
  %i.je = add nuw nsw i64 %.052.us.i.us, 1        ; 2 uses
  %exitcond59.not.i.us = icmp eq i64 %i.je, %i.gt
  br i1 %exitcond59.not.i.us, label %._crit_edge55.loopexit57.i.us, label %.lr.ph.us.i255.us, !llvm.loop !5

._crit_edge55.loopexit57.i.us:                    ; preds = %._crit_edge.us.i.us
  %i.jf = fpext float %i.il to double
  %i.jg = fpext <2 x float> %i.jc to <2 x double> ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = call double @llvm.fmuladd.f64(double %i.jf, double f0x4028ADCBC6185525, double %i.jh)
  %i.jj = extractelement <2 x double> %i.jg, i64 1
  %i.jk = call double @llvm.fmuladd.f64(double %i.jj, double 2.000000e-01, double %i.ji)
  %i.jl = fptrunc double %i.jk to float
  br label %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370

_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370: ; preds = %.lr.ph54.i.us, %._crit_edge55.loopexit57.i.us
  %.sroa.9.2.i.us = phi float [ %i.jl, %._crit_edge55.loopexit57.i.us ], [ 0.000000e+00, %.lr.ph54.i.us ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.0166360.us369
  store float %.sroa.9.2.i.us, ptr %i.jm, align 4, !tbaa !112
  %i.jn = add nuw i64 %.0166360.us369, 1          ; 2 uses
  %exitcond449.not = icmp eq i64 %i.jn, %i.gi
  br i1 %exitcond449.not, label %._crit_edge363.us, label %.lr.ph54.i.us, !llvm.loop !642

._crit_edge363.us:                                ; preds = %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us370, %_ZN3jxl22ComputeBlockL2DistanceERKNS_6Image3IfEES3_RKNS_5PlaneIfEEmm.exit.us.us.preheader
  %i.jo = add nuw i64 %.0167364.us, 1             ; 2 uses
  %exitcond450.not = icmp eq i64 %i.jo, %i.gd
  br i1 %exitcond450.not, label %._crit_edge367, label %.lr.ph362.us, !llvm.loop !643

._crit_edge367:                                   ; preds = %._crit_edge363.us, %.lr.ph366, %bb.j
  %.pr = load i32, ptr %i.cl, align 8, !tbaa !111
  %i.jp = icmp eq i32 %.pr, 0
  br i1 %i.jp, label %bb.l, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.l:                                             ; preds = %._crit_edge367
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cm) #28
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.g, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %._crit_edge367, %bb.l
  %i.jq = phi i1 [ true, %bb.l ], [ false, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ true, %._crit_edge367 ], [ false, %bb.g ]
  %i.jr = phi i32 [ %.pre, %bb.l ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ %.pre, %._crit_edge367 ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cf) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bz) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.js = load i32, ptr %i.bs, align 8, !tbaa !107
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.m, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit257

bb.m:                                             ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cg) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ca) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bu) #28
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit257

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit257:     ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.jq, label %bb.e, label %.loopexit

.critedge177:                                     ; preds = %bb.e
  %i.ju = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i8 0, i64 64, i1 false), !tbaa !95
  %i.jv = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #26 ; 37 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jy = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 3 uses
  store ptr %i.jy, ptr %i.jv, align 8, !tbaa !97
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 64 ; 2 uses
  store ptr %i.jz, ptr %i.jx, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jy, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.jz, ptr %i.jw, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.kc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 3 uses
  store ptr %i.kc, ptr %.sroa.4.09.i.i.ptr.1, align 8, !tbaa !97
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64 ; 2 uses
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kc, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.kd, ptr %i.ka, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.kg = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
  store ptr %i.kg, ptr %.sroa.4.09.i.i.ptr.2, align 8, !tbaa !97
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64 ; 2 uses
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kg, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  %i.kk = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
  store ptr %i.kk, ptr %.sroa.4.09.i.i.ptr.3, align 8, !tbaa !97
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 64 ; 2 uses
  store ptr %i.kl, ptr %i.kj, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kk, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.kl, ptr %i.ki, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  %i.ko = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
  store ptr %i.ko, ptr %.sroa.4.09.i.i.ptr.4, align 8, !tbaa !97
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64 ; 2 uses
  store ptr %i.kp, ptr %i.kn, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ko, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.kp, ptr %i.km, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.jv, i64 120
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jv, i64 136
  %i.ks = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
  store ptr %i.ks, ptr %.sroa.4.09.i.i.ptr.5, align 8, !tbaa !97
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 64 ; 2 uses
  store ptr %i.kt, ptr %i.kr, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ks, ptr noundef nonnull align 8 dereferenceable(64) %i.ju, i64 64, i1 false)
  store ptr %i.kt, ptr %i.kq, align 8, !tbaa !99
  %.sroa.4.09.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.jv, i64 144
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jv, i64 152
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jv, i64 160
  %i.kw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl12_GLOBAL__N_112AntiUpsampleERKNS_5PlaneIfEEPS2_:bb.a
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.b) ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 4)
  %i.ab = add nuw nsw i64 %umin, 3
  %i.ac = shl nuw nsw i64 %.05375.us.us, 1        ; 2 uses
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 4) ; 2 uses
  %spec.store.select.us.us = add nsw i64 %i.ad, -4 ; 4 uses
  %i.ae = add nuw nsw i64 %i.ac, 6
  %spec.select.us.us = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.b) ; 3 uses
  %i.af = icmp slt i64 %spec.store.select.us.us, %spec.select.us.us
  br i1 %i.af, label %.lr.ph.us.us.us.preheader, label %._crit_edge66.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph65.us.us
  %xtraiter = and i64 %umin, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.ad, -3
  %i.ah = icmp eq i64 %i.ab, %smax
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.04962.us.us.us = phi i64 [ %i.ca, %._crit_edge.us.us.us ], [ %spec.store.select1.us, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %.05061.us.us.us = phi float [ %.us-phi.us.us.us, %._crit_edge.us.us.us ], [ 0.000000e+00, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %i.ai = mul i64 %i.r, %.04962.us.us.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ai ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %.neg27.i.us.us.us = sdiv i64 %.04962.us.us.us, -2
  %i.ak = add i64 %.neg27.i.us.us.us, %.05480.us
  %.fr89 = freeze i64 %i.ak                       ; 2 uses
  %i.al = add i64 %.fr89, -3
  %i.am = icmp ult i64 %i.al, -5
  %i.an = and i64 %.04962.us.us.us, 1
  %.not25.i.us.us.us = icmp eq i64 %i.an, 0
  %spec.select.i.us.us.us = select i1 %.not25.i.us.us.us, ptr @_ZN3jxl12_GLOBAL__N_18kernel00E, ptr @_ZN3jxl12_GLOBAL__N_18kernel01E
  %.idx.i.us.us.us = mul nsw i64 %.fr89, 20
  br i1 %i.am, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader, label %.lr.ph.split.us68.us.us

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader: ; preds = %.lr.ph.us.us.us
  br i1 %lcmp.mod.not, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol: ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.store.select.us.us
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !112
  %i.aq = fpext float %i.ap to double
  %i.ar = fpext float %.05061.us.us.us to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aq, double 0.000000e+00, double %i.ar)
  %i.at = fptrunc double %i.as to float           ; 2 uses
  br label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit: ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader
  %.060.us.us.us.us.unr = phi i64 [ %spec.store.select.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.ag, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  %.159.us.us.us.us.unr = phi float [ %.05061.us.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.at, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  %.lcssa105.unr = phi float [ poison, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.at, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  br i1 %i.ah, label %._crit_edge.us.us.us, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us

.lr.ph.split.us68.us.us:                          ; preds = %.lr.ph.us.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us
  %.060.us69.us.us = phi i64 [ %i.bj, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us ], [ %spec.store.select.us.us, %.lr.ph.us.us.us ] ; 4 uses
  %.159.us70.us.us = phi float [ %i.bi, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us ], [ %.05061.us.us.us, %.lr.ph.us.us.us ]
  %.neg.i.us.us.us = sdiv i64 %.060.us69.us.us, -2
  %i.au = add i64 %.neg.i.us.us.us, %.05375.us.us ; 2 uses
  %i.av = add i64 %i.au, -3
  %or.cond.i.us.us.us = icmp ult i64 %i.av, -5
  br i1 %or.cond.i.us.us.us, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us68.us.us
  %i.aw = and i64 %.060.us69.us.us, 1             ; 2 uses
  %.not.not.i.us.us.us = icmp eq i64 %i.aw, 0
  %i.ax = and i64 %i.aw, %.04962.us.us.us
  %or.cond28.not29.not.i.us.us.us = icmp eq i64 %i.ax, 0
  %_ZN3jxl12_GLOBAL__N_18kernel11E.mux.i.us.us.us = select i1 %or.cond28.not29.not.i.us.us.us, ptr @_ZN3jxl12_GLOBAL__N_18kernel10E, ptr @_ZN3jxl12_GLOBAL__N_18kernel11E
  %.0.i.us.us.us = select i1 %.not.not.i.us.us.us, ptr %spec.select.i.us.us.us, ptr %_ZN3jxl12_GLOBAL__N_18kernel11E.mux.i.us.us.us
  %i.ay = getelementptr i8, ptr %.0.i.us.us.us, i64 %.idx.i.us.us.us
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.au
  %i.ba = getelementptr i8, ptr %i.az, i64 48
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !112
  %i.bc = fpext float %i.bb to double
  br label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us: ; preds = %bb.b, %.lr.ph.split.us68.us.us
  %.022.i.us.us.us = phi double [ %i.bc, %bb.b ], [ 0.000000e+00, %.lr.ph.split.us68.us.us ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.060.us69.us.us
  %i.be = load float, ptr %i.bd, align 4, !tbaa !112
  %i.bf = fpext float %i.be to double
  %i.bg = fpext float %.159.us70.us.us to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %.022.i.us.us.us, double %i.bf, double %i.bg)
  %i.bi = fptrunc double %i.bh to float           ; 2 uses
  %i.bj = add nuw nsw i64 %.060.us69.us.us, 1     ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bj, %spec.select.us.us
  br i1 %i.bk, label %.lr.ph.split.us68.us.us, label %._crit_edge.us.us.us, !llvm.loop !725

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us: ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us
  %.060.us.us.us.us = phi i64 [ %i.by, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us ], [ %.060.us.us.us.us.unr, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit ] ; 3 uses
  %.159.us.us.us.us = phi float [ %i.bx, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us ], [ %.159.us.us.us.us.unr, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.060.us.us.us.us
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !112
  %i.bn = fpext float %i.bm to double
  %i.bo = fpext float %.159.us.us.us.us to double
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double 0.000000e+00, double %i.bo)
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr [4 x i8], ptr %i.aj, i64 %.060.us.us.us.us
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !112
  %i.bu = fpext float %i.bt to double
  %i.bv = fpext float %i.bq to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bu, double 0.000000e+00, double %i.bv)
  %i.bx = fptrunc double %i.bw to float           ; 2 uses
  %i.by = add nuw nsw i64 %.060.us.us.us.us, 2    ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %spec.select.us.us
  br i1 %i.bz, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !725

._crit_edge.us.us.us:                             ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us
  %.us-phi.us.us.us = phi float [ %i.bx, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us ], [ %.lcssa105.unr, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit ], [ %i.bi, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us ] ; 2 uses
  %i.ca = add nuw nsw i64 %.04962.us.us.us, 1     ; 2 uses
  %i.cb = icmp samesign ult i64 %i.ca, %.051.us
  br i1 %i.cb, label %.lr.ph.us.us.us, label %._crit_edge66.us.us, !llvm.loop !726

._crit_edge66.us.us:                              ; preds = %._crit_edge.us.us.us, %.lr.ph65.us.us
  %.us-phi74.us.us = phi float [ 0.000000e+00, %.lr.ph65.us.us ], [ %.us-phi.us.us.us, %._crit_edge.us.us.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05375.us.us
  store float %.us-phi74.us.us, ptr %i.cc, align 4, !tbaa !112
  %i.cd = add nuw nsw i64 %.05375.us.us, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.g
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph65.us.us, !llvm.loop !727

._crit_edge.us:                                   ; preds = %._crit_edge66.us.us, %.lr.ph.split.us85.preheader
  %i.ce = add nuw nsw i64 %.05480.us, 1           ; 2 uses
  %exitcond95.not = icmp eq i64 %i.ce, %i.j
  br i1 %exitcond95.not, label %._crit_edge84, label %.lr.ph.us, !llvm.loop !728

._crit_edge84:                                    ; preds = %._crit_edge.us, %.lr.ph83, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_113UpsampleImageERKNS_5PlaneIfEEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88
  %i.b = zext i32 %i.a to i64                     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89
  %i.e = zext i32 %i.d to i64                     ; 6 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !89   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge126.split, label %.preheader113.lr.ph

.preheader113.lr.ph:                              ; preds = %bb.a
  %.not129 = icmp eq i32 %i.f, 0
  %i.k = add nsw i64 %i.b, -1                     ; 5 uses
  %i.l = add nsw i64 %i.e, -1                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 5 uses
  br i1 %.not129, label %._crit_edge126.split, label %.preheader113.lr.ph.split

.preheader113.lr.ph.split:                        ; preds = %.preheader113.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91
  %i.t = load i64, ptr %i.q, align 8, !tbaa !92
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph.split, %._crit_edge
  %.089125 = phi i64 [ 0, %.preheader113.lr.ph.split ], [ %i.ak, %._crit_edge ] ; 4 uses
  %i.u = and i64 %.089125, 1                      ; 2 uses
  %.not92 = icmp eq i64 %i.u, 0
  %spec.select = select i1 %.not92, ptr @_ZN3jxl12_GLOBAL__N_18kernel00E, ptr @_ZN3jxl12_GLOBAL__N_18kernel01E
  %i.v = lshr i64 %.089125, 1                     ; 6 uses
  %i.w = mul i64 %i.t, %.089125
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = add nuw nsw i64 %i.v, 2                  ; 2 uses
  %.not95.4 = icmp samesign ult i64 %i.y, %i.e
  %.0.4 = select i1 %.not95.4, i64 %i.y, i64 %i.l
  %i.z = mul i64 %i.p, %.0.4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z ; 6 uses
  %spec.store.select1 = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 2) ; 2 uses
  %.not97 = icmp samesign ult i64 %spec.store.select1, %i.e
  %.082 = select i1 %.not97, i64 %spec.store.select1, i64 %i.l
  %i.ab = mul i64 %i.p, %.082
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %spec.store.select1.1 = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 1) ; 2 uses
  %.not97.1 = icmp samesign ult i64 %spec.store.select1.1, %i.e
  %.082.1 = select i1 %.not97.1, i64 %spec.store.select1.1, i64 %i.l
  %i.ad = mul i64 %i.p, %.082.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %.not97.2 = icmp samesign ult i64 %i.v, %i.e
  %.082.2 = select i1 %.not97.2, i64 %i.v, i64 %i.l
  %i.af = mul i64 %i.p, %.082.2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.af ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = add nuw nsw i64 %i.v, 1                 ; 2 uses
  %.not97.3 = icmp samesign ult i64 %i.ah, %i.e
  %.082.3 = select i1 %.not97.3, i64 %i.ah, i64 %i.l
  %i.ai = mul i64 %i.p, %.082.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  br label %.preheader111

._crit_edge126.split:                             ; preds = %._crit_edge, %.preheader113.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.preheader111
  %i.ak = add nuw nsw i64 %.089125, 1             ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ak, %i.j
  br i1 %exitcond138.not, label %._crit_edge126.split, label %.preheader113, !llvm.loop !729

.preheader111:                                    ; preds = %.preheader113, %.preheader111
  %.088124 = phi i64 [ 0, %.preheader113 ], [ %i.ik, %.preheader111 ] ; 5 uses
  %i.al = lshr i64 %.088124, 1                    ; 6 uses
  %spec.store.select = tail call i64 @llvm.usub.sat.i64(i64 %i.al, i64 2) ; 2 uses
  %.not96 = icmp samesign ult i64 %spec.store.select, %i.b
  %spec.select108 = select i1 %.not96, i64 %spec.store.select, i64 %i.k ; 5 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %spec.select108 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !112 ; 4 uses
  %i.ao = fcmp olt float %i.an, f0x7F7FFFFF
  %.sroa.speculated101 = select i1 %i.ao, float %i.an, float f0x7F7FFFFF ; 2 uses
  %i.ap = fcmp ogt float %i.an, f0x00800000
  %.sroa.speculated = select i1 %i.ap, float %i.an, float f0x00800000 ; 2 uses
  %spec.store.select.1 = tail call i64 @llvm.usub.sat.i64(i64 %i.al, i64 1) ; 2 uses
  %.not96.1 = icmp samesign ult i64 %spec.store.select.1, %i.b
  %spec.select108.1 = select i1 %.not96.1, i64 %spec.store.select.1, i64 %i.k ; 5 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %spec.select108.1 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !112 ; 4 uses
  %i.as = fcmp olt float %i.ar, %.sroa.speculated101
  %.sroa.speculated101.1 = select i1 %i.as, float %i.ar, float %.sroa.speculated101 ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated, %i.ar
  %.sroa.speculated.1 = select i1 %i.at, float %i.ar, float %.sroa.speculated ; 2 uses
  %.not96.2 = icmp samesign ult i64 %i.al, %i.b
  %spec.select108.2 = select i1 %.not96.2, i64 %i.al, i64 %i.k ; 5 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %spec.select108.2 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !112 ; 4 uses
  %i.aw = fcmp olt float %i.av, %.sroa.speculated101.1
  %.sroa.speculated101.2 = select i1 %i.aw, float %i.av, float %.sroa.speculated101.1 ; 2 uses
  %i.ax = fcmp olt float %.sroa.speculated.1, %i.av
  %.sroa.speculated.2 = select i1 %i.ax, float %i.av, float %.sroa.speculated.1 ; 2 uses
  %i.ay = add nuw nsw i64 %i.al, 1                ; 2 uses
  %.not96.3 = icmp samesign ult i64 %i.ay, %i.b
  %spec.select108.3 = select i1 %.not96.3, i64 %i.ay, i64 %i.k ; 5 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %spec.select108.3 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !112 ; 4 uses
  %i.bb = fcmp olt float %i.ba, %.sroa.speculated101.2
  %.sroa.speculated101.3 = select i1 %i.bb, float %i.ba, float %.sroa.speculated101.2 ; 2 uses
  %i.bc = fcmp olt float %.sroa.speculated.2, %i.ba
  %.sroa.speculated.3 = select i1 %i.bc, float %i.ba, float %.sroa.speculated.2 ; 2 uses
  %i.bd = add nuw nsw i64 %i.al, 2                ; 2 uses
  %.not96.4 = icmp samesign ult i64 %i.bd, %i.b
  %spec.select108.4 = select i1 %.not96.4, i64 %i.bd, i64 %i.k ; 5 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %spec.select108.4 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !112 ; 4 uses
  %i.bg = fcmp olt float %i.bf, %.sroa.speculated101.3
  %.sroa.speculated101.4 = select i1 %i.bg, float %i.bf, float %.sroa.speculated101.3 ; 2 uses
  %i.bh = fcmp olt float %.sroa.speculated.3, %i.bf
  %.sroa.speculated.4 = select i1 %i.bh, float %i.bf, float %.sroa.speculated.3 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %spec.select108 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !112 ; 4 uses
  %i.bk = fcmp olt float %i.bj, %.sroa.speculated101.4
  %.sroa.speculated101.1130 = select i1 %i.bk, float %i.bj, float %.sroa.speculated101.4 ; 2 uses
  %i.bl = fcmp olt float %.sroa.speculated.4, %i.bj
  %.sroa.speculated.1131 = select i1 %i.bl, float %i.bj, float %.sroa.speculated.4 ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %spec.select108.1 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !112 ; 4 uses
  %i.bo = fcmp olt float %i.bn, %.sroa.speculated101.1130
  %.sroa.speculated101.1.1 = select i1 %i.bo, float %i.bn, float %.sroa.speculated101.1130 ; 2 uses
  %i.bp = fcmp olt float %.sroa.speculated.1131, %i.bn
  %.sroa.speculated.1.1 = select i1 %i.bp, float %i.bn, float %.sroa.speculated.1131 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %spec.select108.2 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !112 ; 4 uses
  %i.bs = fcmp olt float %i.br, %.sroa.speculated101.1.1
  %.sroa.speculated101.2.1 = select i1 %i.bs, float %i.br, float %.sroa.speculated101.1.1 ; 2 uses
  %i.bt = fcmp olt float %.sroa.speculated.1.1, %i.br
  %.sroa.speculated.2.1 = select i1 %i.bt, float %i.br, float %.sroa.speculated.1.1 ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %spec.select108.3 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !112 ; 4 uses
  %i.bw = fcmp olt float %i.bv, %.sroa.speculated101.2.1
  %.sroa.speculated101.3.1 = select i1 %i.bw, float %i.bv, float %.sroa.speculated101.2.1 ; 2 uses
  %i.bx = fcmp olt float %.sroa.speculated.2.1, %i.bv
  %.sroa.speculated.3.1 = select i1 %i.bx, float %i.bv, float %.sroa.speculated.2.1 ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %spec.select108.4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !112 ; 4 uses
  %i.ca = fcmp olt float %i.bz, %.sroa.speculated101.3.1
  %.sroa.speculated101.4.1 = select i1 %i.ca, float %i.bz, float %.sroa.speculated101.3.1 ; 2 uses
  %i.cb = fcmp olt float %.sroa.speculated.3.1, %i.bz
  %.sroa.speculated.4.1 = select i1 %i.cb, float %i.bz, float %.sroa.speculated.3.1 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %spec.select108 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !112 ; 4 uses
  %i.ce = fcmp olt float %i.cd, %.sroa.speculated101.4.1
  %.sroa.speculated101.2132 = select i1 %i.ce, float %i.cd, float %.sroa.speculated101.4.1 ; 2 uses
  %i.cf = fcmp olt float %.sroa.speculated.4.1, %i.cd
  %.sroa.speculated.2133 = select i1 %i.cf, float %i.cd, float %.sroa.speculated.4.1 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %spec.select108.1 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !112 ; 4 uses
  %i.ci = fcmp olt float %i.ch, %.sroa.speculated101.2132
  %.sroa.speculated101.1.2 = select i1 %i.ci, float %i.ch, float %.sroa.speculated101.2132 ; 2 uses
  %i.cj = fcmp olt float %.sroa.speculated.2133, %i.ch
  %.sroa.speculated.1.2 = select i1 %i.cj, float %i.ch, float %.sroa.speculated.2133 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %spec.select108.2 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !112 ; 4 uses
  %i.cm = fcmp olt float %i.cl, %.sroa.speculated101.1.2
  %.sroa.speculated101.2.2 = select i1 %i.cm, float %i.cl, float %.sroa.speculated101.1.2 ; 2 uses
  %i.cn = fcmp olt float %.sroa.speculated.1.2, %i.cl
  %.sroa.speculated.2.2 = select i1 %i.cn, float %i.cl, float %.sroa.speculated.1.2 ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %spec.select108.3 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !112 ; 4 uses
  %i.cq = fcmp olt float %i.cp, %.sroa.speculated101.2.2
  %.sroa.speculated101.3.2 = select i1 %i.cq, float %i.cp, float %.sroa.speculated101.2.2 ; 2 uses
  %i.cr = fcmp olt float %.sroa.speculated.2.2, %i.cp
  %.sroa.speculated.3.2 = select i1 %i.cr, float %i.cp, float %.sroa.speculated.2.2 ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %spec.select108.4 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !112 ; 4 uses
  %i.cu = fcmp olt float %i.ct, %.sroa.speculated101.3.2
  %.sroa.speculated101.4.2 = select i1 %i.cu, float %i.ct, float %.sroa.speculated101.3.2 ; 2 uses
  %i.cv = fcmp olt float %.sroa.speculated.3.2, %i.ct
  %.sroa.speculated.4.2 = select i1 %i.cv, float %i.ct, float %.sroa.speculated.3.2 ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.select108 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !112 ; 4 uses
  %i.cy = fcmp olt float %i.cx, %.sroa.speculated101.4.2
  %.sroa.speculated101.3134 = select i1 %i.cy, float %i.cx, float %.sroa.speculated101.4.2 ; 2 uses
  %i.cz = fcmp olt float %.sroa.speculated.4.2, %i.cx
  %.sroa.speculated.3135 = select i1 %i.cz, float %i.cx, float %.sroa.speculated.4.2 ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.select108.1 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !112 ; 4 uses
  %i.dc = fcmp olt float %i.db, %.sroa.speculated101.3134
  %.sroa.speculated101.1.3 = select i1 %i.dc, float %i.db, float %.sroa.speculated101.3134 ; 2 uses
  %i.dd = fcmp olt float %.sroa.speculated.3135, %i.db
  %.sroa.speculated.1.3 = select i1 %i.dd, float %i.db, float %.sroa.speculated.3135 ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.select108.2 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !112 ; 4 uses
  %i.dg = fcmp olt float %i.df, %.sroa.speculated101.1.3
  %.sroa.speculated101.2.3 = select i1 %i.dg, float %i.df, float %.sroa.speculated101.1.3 ; 2 uses
  %i.dh = fcmp olt float %.sroa.speculated.1.3, %i.df
  %.sroa.speculated.2.3 = select i1 %i.dh, float %i.df, float %.sroa.speculated.1.3 ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.select108.3 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !112 ; 4 uses
  %i.dk = fcmp olt float %i.dj, %.sroa.speculated101.2.3
  %.sroa.speculated101.3.3 = select i1 %i.dk, float %i.dj, float %.sroa.speculated101.2.3 ; 2 uses
  %i.dl = fcmp olt float %.sroa.speculated.2.3, %i.dj
  %.sroa.speculated.3.3 = select i1 %i.dl, float %i.dj, float %.sroa.speculated.2.3 ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.select108.4 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !112 ; 4 uses
  %i.do = fcmp olt float %i.dn, %.sroa.speculated101.3.3
  %.sroa.speculated101.4.3 = select i1 %i.do, float %i.dn, float %.sroa.speculated101.3.3 ; 2 uses
  %i.dp = fcmp olt float %.sroa.speculated.3.3, %i.dn
  %.sroa.speculated.4.3 = select i1 %i.dp, float %i.dn, float %.sroa.speculated.3.3 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %spec.select108 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !112 ; 4 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %spec.select108.1 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !112 ; 4 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %spec.select108.2 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !112 ; 4 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %spec.select108.3 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !112 ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %spec.select108.4 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !112 ; 4 uses
  %i.ea = and i64 %.088124, 1
  %.not.not = icmp eq i64 %i.ea, 0
  %i.eb = and i64 %i.u, %.088124
  %or.cond.not110.not = icmp eq i64 %i.eb, 0
  %_ZN3jxl12_GLOBAL__N_18kernel11E.mux = select i1 %or.cond.not110.not, ptr @_ZN3jxl12_GLOBAL__N_18kernel10E, ptr @_ZN3jxl12_GLOBAL__N_18kernel11E
  %.087 = select i1 %.not.not, ptr %spec.select, ptr %_ZN3jxl12_GLOBAL__N_18kernel11E.mux ; 25 uses
  %i.ec = load float, ptr %i.am, align 4, !tbaa !112
  %i.ed = load float, ptr %.087, align 16, !tbaa !112
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ed, float 0.000000e+00)
  %i.ef = load float, ptr %i.aq, align 4, !tbaa !112
  %i.eg = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !112
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eh, float %i.ee)
  %i.ej = load float, ptr %i.au, align 4, !tbaa !112
  %i.ek = getelementptr inbounds nuw i8, ptr %.087, i64 8
  %i.el = load float, ptr %i.ek, align 8, !tbaa !112
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.el, float %i.ei)
  %i.en = load float, ptr %i.az, align 4, !tbaa !112
  %i.eo = getelementptr inbounds nuw i8, ptr %.087, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !112
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ep, float %i.em)
  %i.er = load float, ptr %i.be, align 4, !tbaa !112
  %i.es = getelementptr inbounds nuw i8, ptr %.087, i64 16
  %i.et = load float, ptr %i.es, align 16, !tbaa !112
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.er, float %i.et, float %i.eq)
  %i.ev = getelementptr inbounds nuw i8, ptr %.087, i64 20
  %i.ew = load float, ptr %i.bi, align 4, !tbaa !112
  %i.ex = load float, ptr %i.ev, align 4, !tbaa !112
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ex, float %i.eu)
  %i.ez = load float, ptr %i.bm, align 4, !tbaa !112
  %i.fa = getelementptr inbounds nuw i8, ptr %.087, i64 24
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !112
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fb, float %i.ey)
  %i.fd = load float, ptr %i.bq, align 4, !tbaa !112
  %i.fe = getelementptr inbounds nuw i8, ptr %.087, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !112
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %i.fc)
  %i.fh = load float, ptr %i.bu, align 4, !tbaa !112
  %i.fi = getelementptr inbounds nuw i8, ptr %.087, i64 32
  %i.fj = load float, ptr %i.fi, align 16, !tbaa !112
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fj, float %i.fg)
  %i.fl = load float, ptr %i.by, align 4, !tbaa !112
  %i.fm = getelementptr inbounds nuw i8, ptr %.087, i64 36
end_hunk_1
begin_hunk_2_@_ZN3jxl12_GLOBAL__N_19ElwiseDivIfEENS_6StatusERKNS_5PlaneIT_EES7_PS5_:bb.a
  %i.g = icmp eq i32 %i.a, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.d, %i.i
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 8, !tbaa !88
  %i.l = icmp eq i32 %i.a, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %i.o = icmp eq i32 %i.d, %i.n
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !92  ; 3 uses
  %.not43 = icmp eq i32 %i.a, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph42
  %i.ab = add nsw i64 %i.e, -1                    ; 3 uses
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ad ; 2 uses
  %i.af = mul i64 %i.s, %i.ab
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %scevgep49 = getelementptr i8, ptr %i.ag, i64 %i.ad
  %i.ah = mul i64 %i.w, %i.ab
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah
  %scevgep50 = getelementptr i8, ptr %i.ai, i64 %i.ad
  %min.iters.check = icmp ult i32 %i.a, 4
  %bound0 = icmp ult ptr %i.y, %scevgep49
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i64 %i.s, %i.aa
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = or i1 %found.conflict, %i.ak
  %bound052 = icmp ult ptr %i.y, %scevgep50
  %bound153 = icmp ult ptr %i.u, %scevgep
  %found.conflict54 = and i1 %bound052, %bound153
  %stride.check55 = icmp slt i64 %i.w, 0
  %i.am = or i1 %found.conflict54, %stride.check55
  %conflict.rdx = or i1 %i.al, %i.am
  %n.vec = and i64 %i.b, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03041.us = phi i64 [ %i.cj, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.an = mul i64 %i.s, %.03041.us
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = mul i64 %i.w, %.03041.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ap ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = mul i64 %i.aa, %.03041.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index
  %wide.load = load <4 x float>, ptr %i.at, align 16, !tbaa !112, !alias.scope !768
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  %wide.load56 = load <4 x float>, ptr %i.au, align 16, !tbaa !112, !alias.scope !769
  %i.av = fdiv <4 x float> %wide.load, %wide.load56
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index
  store <4 x float> %i.av, ptr %i.aw, align 16, !tbaa !112, !alias.scope !770, !noalias !771
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.040.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.040.us.prol = phi i64 [ %i.be, %scalar.ph.prol ], [ %.040.us.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.040.us.prol
  %i.az = load float, ptr %i.ay, align 4, !tbaa !112
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.040.us.prol
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !112
  %i.bc = fdiv float %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.040.us.prol
  store float %i.bc, ptr %i.bd, align 4, !tbaa !112
  %i.be = add nuw nsw i64 %.040.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !765

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.040.us.unr = phi i64 [ %.040.us.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %.040.us.ph, %i.b
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.040.us = phi i64 [ %i.ci, %scalar.ph ], [ %.040.us.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.040.us
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !112
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.040.us
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !112
  %i.bl = fdiv float %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.040.us
  store float %i.bl, ptr %i.bm, align 4, !tbaa !112
  %i.bn = add nuw nsw i64 %.040.us, 1             ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !112
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bn
  %i.br = load float, ptr %i.bq, align 4, !tbaa !112
  %i.bs = fdiv float %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bn
  store float %i.bs, ptr %i.bt, align 4, !tbaa !112
  %i.bu = add nuw nsw i64 %.040.us, 2             ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !112
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bu
  %i.by = load float, ptr %i.bx, align 4, !tbaa !112
  %i.bz = fdiv float %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bu
  store float %i.bz, ptr %i.ca, align 4, !tbaa !112
  %i.cb = add nuw nsw i64 %.040.us, 3             ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !112
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cb
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !112
  %i.cg = fdiv float %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cb
  store float %i.cg, ptr %i.ch, align 4, !tbaa !112
  %i.ci = add nuw nsw i64 %.040.us, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, %i.b
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !766

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cj = add nuw nsw i64 %.03041.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.cj, %i.e
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !767

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph42, %.preheader, %bb.c, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.lr.ph42 ], [ 0, %.preheader ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_113ReduceRingingERKNS_5PlaneIfEES4_RS2_(i64 %.16.val, ptr nofree readonly captures(none) %.40.val, i64 %.16.val1, ptr nofree readonly captures(none) %.40.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92
  %.not33 = icmp eq i32 %i.a, 0
  br i1 %.not33, label %._crit_edge29, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph28, %._crit_edge.us
  %.06226.us = phi i64 [ %i.t, %._crit_edge.us ], [ 0, %.lr.ph28 ] ; 5 uses
  %i.j = mul i64 %.06226.us, %.16.val1
  %i.k = getelementptr inbounds nuw i8, ptr %.40.val3, i64 %i.j ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  %i.l = mul i64 %i.i, %.06226.us
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = mul i64 %.06226.us, %.16.val
  %i.o = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.n ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = add nsw i64 %.06226.us, -1               ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.e
  %i.r = mul i64 %i.p, %.16.val
  %i.s = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.r ; 9 uses
  %.fr.us = freeze i1 %i.q
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.t = add nuw nsw i64 %.06226.us, 1            ; 4 uses
  %i.u = icmp samesign ult i64 %i.t, %i.e
  %i.v = mul i64 %i.t, %.16.val
  %i.w = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.v ; 9 uses
  %.fr.us.2 = freeze i1 %i.u
  br label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph.us, %bb.i
  %.06125.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ce, %bb.i ] ; 12 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.06125.us ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !112 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.06125.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !112 ; 12 uses
  br i1 %.fr.us, label %.preheader.split.us30.preheader, label %.preheader.split.us30.preheader.1

.preheader.split.us30.preheader:                  ; preds = %.preheader.us
  %i.ab = add nsw i64 %.06125.us, -1              ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.b
  br i1 %i.ac, label %bb.b, label %.preheader.split.us30.2

bb.b:                                             ; preds = %.preheader.split.us30.preheader
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ab
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !112 ; 4 uses
  %i.af = fcmp olt float %i.ae, %i.aa
  %.sroa.speculated8.us = select i1 %i.af, float %i.ae, float %i.aa
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ag = fcmp olt float %i.aa, %i.ae
  %.sroa.speculated.us = select i1 %i.ag, float %i.ae, float %i.aa
  br label %.preheader.split.us30.2

.preheader.split.us30.2:                          ; preds = %bb.b, %.preheader.split.us30.preheader
  %.214.us = phi float [ %.sroa.speculated8.us, %bb.b ], [ %i.aa, %.preheader.split.us30.preheader ] ; 2 uses
  %.2.us = phi float [ %.sroa.speculated.us, %bb.b ], [ %i.aa, %.preheader.split.us30.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06125.us
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !112 ; 4 uses
  %i.aj = fcmp olt float %i.ai, %.214.us
  %.sroa.speculated8.us.1 = select i1 %i.aj, float %i.ai, float %.214.us ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.ak = fcmp olt float %.2.us, %i.ai
  %.sroa.speculated.us.1 = select i1 %i.ak, float %i.ai, float %.2.us ; 3 uses
  %i.al = add nuw nsw i64 %.06125.us, 1           ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.b
  br i1 %i.am, label %bb.c, label %.preheader.split.us30.preheader.1

bb.c:                                             ; preds = %.preheader.split.us30.2
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.al
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112 ; 4 uses
  %i.ap = fcmp olt float %i.ao, %.sroa.speculated8.us.1
  %.sroa.speculated8.us.2 = select i1 %i.ap, float %i.ao, float %.sroa.speculated8.us.1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.aq = fcmp olt float %.sroa.speculated.us.1, %i.ao
  %.sroa.speculated.us.2 = select i1 %i.aq, float %i.ao, float %.sroa.speculated.us.1
  br label %.preheader.split.us30.preheader.1

.preheader.split.us30.preheader.1:                ; preds = %.preheader.us, %bb.c, %.preheader.split.us30.2
  %.us-phi.us = phi float [ %i.aa, %.preheader.us ], [ %.sroa.speculated8.us.2, %bb.c ], [ %.sroa.speculated8.us.1, %.preheader.split.us30.2 ] ; 3 uses
  %.us-phi21.us = phi float [ %i.aa, %.preheader.us ], [ %.sroa.speculated.us.2, %bb.c ], [ %.sroa.speculated.us.1, %.preheader.split.us30.2 ] ; 3 uses
  %i.ar = add nsw i64 %.06125.us, -1              ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.d, label %.preheader.split.us30.2.1

bb.d:                                             ; preds = %.preheader.split.us30.preheader.1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ar
  %i.au = load float, ptr %i.at, align 4, !tbaa !112 ; 4 uses
  %i.av = fcmp olt float %i.au, %.us-phi.us
  %.sroa.speculated8.us.137 = select i1 %i.av, float %i.au, float %.us-phi.us
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.aw = fcmp olt float %.us-phi21.us, %i.au
  %.sroa.speculated.us.138 = select i1 %i.aw, float %i.au, float %.us-phi21.us
  br label %.preheader.split.us30.2.1

.preheader.split.us30.2.1:                        ; preds = %bb.d, %.preheader.split.us30.preheader.1
  %.214.us.139 = phi float [ %.sroa.speculated8.us.137, %bb.d ], [ %.us-phi.us, %.preheader.split.us30.preheader.1 ] ; 2 uses
  %.2.us.140 = phi float [ %.sroa.speculated.us.138, %bb.d ], [ %.us-phi21.us, %.preheader.split.us30.preheader.1 ] ; 2 uses
  %i.ax = fcmp olt float %i.aa, %.214.us.139
  %.sroa.speculated8.us.1.1 = select i1 %i.ax, float %i.aa, float %.214.us.139 ; 3 uses
  %i.ay = fcmp olt float %.2.us.140, %i.aa
  %.sroa.speculated.us.1.1 = select i1 %i.ay, float %i.aa, float %.2.us.140 ; 3 uses
  %i.az = add nuw nsw i64 %.06125.us, 1           ; 2 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.b
  br i1 %i.ba, label %bb.e, label %.split.us.us.1

bb.e:                                             ; preds = %.preheader.split.us30.2.1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.az
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !112 ; 4 uses
  %i.bd = fcmp olt float %i.bc, %.sroa.speculated8.us.1.1
  %.sroa.speculated8.us.2.1 = select i1 %i.bd, float %i.bc, float %.sroa.speculated8.us.1.1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.be = fcmp olt float %.sroa.speculated.us.1.1, %i.bc
  %.sroa.speculated.us.2.1 = select i1 %i.be, float %i.bc, float %.sroa.speculated.us.1.1
  br label %.split.us.us.1

.split.us.us.1:                                   ; preds = %.preheader.split.us30.2.1, %bb.e
  %.214.us.2.1 = phi float [ %.sroa.speculated8.us.2.1, %bb.e ], [ %.sroa.speculated8.us.1.1, %.preheader.split.us30.2.1 ] ; 4 uses
  %.2.us.2.1 = phi float [ %.sroa.speculated.us.2.1, %bb.e ], [ %.sroa.speculated.us.1.1, %.preheader.split.us30.2.1 ] ; 4 uses
  br i1 %.fr.us.2, label %.preheader.split.us30.preheader.2, label %.split.us.us.2

.preheader.split.us30.preheader.2:                ; preds = %.split.us.us.1
  %i.bf = add nsw i64 %.06125.us, -1              ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.b
  br i1 %i.bg, label %bb.f, label %.preheader.split.us30.2.2

bb.f:                                             ; preds = %.preheader.split.us30.preheader.2
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bf
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !112 ; 4 uses
  %i.bj = fcmp olt float %i.bi, %.214.us.2.1
  %.sroa.speculated8.us.242 = select i1 %i.bj, float %i.bi, float %.214.us.2.1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.bk = fcmp olt float %.2.us.2.1, %i.bi
  %.sroa.speculated.us.243 = select i1 %i.bk, float %i.bi, float %.2.us.2.1
  br label %.preheader.split.us30.2.2

.preheader.split.us30.2.2:                        ; preds = %bb.f, %.preheader.split.us30.preheader.2
  %.214.us.244 = phi float [ %.sroa.speculated8.us.242, %bb.f ], [ %.214.us.2.1, %.preheader.split.us30.preheader.2 ] ; 2 uses
  %.2.us.245 = phi float [ %.sroa.speculated.us.243, %bb.f ], [ %.2.us.2.1, %.preheader.split.us30.preheader.2 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.06125.us
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !112 ; 4 uses
  %i.bn = fcmp olt float %i.bm, %.214.us.244
  %.sroa.speculated8.us.1.2 = select i1 %i.bn, float %i.bm, float %.214.us.244 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.bo = fcmp olt float %.2.us.245, %i.bm
  %.sroa.speculated.us.1.2 = select i1 %i.bo, float %i.bm, float %.2.us.245 ; 3 uses
  %i.bp = add nuw nsw i64 %.06125.us, 1           ; 2 uses
  %i.bq = icmp samesign ult i64 %i.bp, %i.b
  br i1 %i.bq, label %bb.g, label %.split.us.us.2

bb.g:                                             ; preds = %.preheader.split.us30.2.2
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bp
  %i.bs = load float, ptr %i.br, align 4, !tbaa !112 ; 4 uses
  %i.bt = fcmp olt float %i.bs, %.sroa.speculated8.us.1.2
  %.sroa.speculated8.us.2.2 = select i1 %i.bt, float %i.bs, float %.sroa.speculated8.us.1.2
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.bu = fcmp olt float %.sroa.speculated.us.1.2, %i.bs
  %.sroa.speculated.us.2.2 = select i1 %i.bu, float %i.bs, float %.sroa.speculated.us.1.2
  br label %.split.us.us.2

.split.us.us.2:                                   ; preds = %.preheader.split.us30.2.2, %bb.g, %.split.us.us.1
  %.us-phi.us.2 = phi float [ %.214.us.2.1, %.split.us.us.1 ], [ %.sroa.speculated8.us.2.2, %bb.g ], [ %.sroa.speculated8.us.1.2, %.preheader.split.us30.2.2 ]
  %.us-phi21.us.2 = phi float [ %.2.us.2.1, %.split.us.us.1 ], [ %.sroa.speculated.us.2.2, %bb.g ], [ %.sroa.speculated.us.1.2, %.preheader.split.us30.2.2 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.06125.us
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !112
  %i.bx = fmul float %i.bw, 2.000000e+00          ; 2 uses
  %i.by = fsub float %.us-phi.us.2, %i.bx         ; 2 uses
  %i.bz = fadd float %.us-phi21.us.2, %i.bx       ; 2 uses
  %i.ca = fcmp olt float %i.y, %i.by              ; 2 uses
  %i.cb = select i1 %i.ca, float %i.by, float %i.y ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %i.bz             ; 2 uses
  %i.cd = or i1 %i.ca, %i.cc
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us.us.2
  %simplifycfg.merge = select i1 %i.cc, float %i.bz, float %i.cb
  store float %simplifycfg.merge, ptr %i.x, align 4, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %.split.us.us.2, %bb.h
  %i.ce = add nuw nsw i64 %.06125.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.b
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !772

._crit_edge.us:                                   ; preds = %bb.i
  %exitcond46.not = icmp eq i64 %i.t, %i.e
  br i1 %exitcond46.not, label %._crit_edge29, label %.lr.ph.us, !llvm.loop !773

._crit_edge29:                                    ; preds = %._crit_edge.us, %.lr.ph28, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl22YCbCrChromaSubsamplingD0Ev(ptr noundef nonnull align 8 dereferenceable(22) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl22YCbCrChromaSubsampling11VisitFieldsEPNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(22) %0, ptr noalias noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.010.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 2, i32 noundef 0, ptr noundef nonnull %.010.ptr) #28 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.loopexit

end_hunk_2
