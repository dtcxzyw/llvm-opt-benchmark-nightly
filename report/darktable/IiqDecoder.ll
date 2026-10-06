Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/IiqDecoder?download=true
inline.NumInlined: 1447
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjj:bb.a
  br label %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i

bb.ah:                                            ; preds = %bb.ae
  %i.ng = icmp ult i64 %i.mz, %i.mt
  br i1 %i.ng, label %.invoke, label %_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.ah, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ah
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.mr, i64 %i.mt)
  %i.nh = add nuw nsw i64 %.sroa.speculated.i.i, %i.mr
  %i.ni = call i64 @llvm.umin.i64(i64 %i.nh, i64 288230376151711743) ; 2 uses
  %i.nj = shl nuw nsw i64 %i.ni, 5
  %i.nk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #27
          to label %.noexc137 unwind label %.loopexit ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.mq ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nl, i8 0, i64 32, i1 false)
  %i.nm = add nsw i64 %i.mt, -1                   ; 2 uses
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit35.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc137
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 32 ; 2 uses
  %.idx.i.i.i.i.i30.i = shl nuw nsw i64 %i.nm, 5
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.idx.i.i.i.i.i30.i
  br label %.lr.ph.i.i.i.i.i.i.i31.i

.lr.ph.i.i.i.i.i.i.i31.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i31.i, %bb.ai
  %.06.i.i.i.i.i.i.i32.i = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i.i31.i ], [ %i.no, %bb.ai ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i32.i, ptr noundef nonnull align 8 dereferenceable(32) %i.nl, i64 32, i1 false), !tbaa.struct !346
  %i.nq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i33.i = icmp eq ptr %i.nq, %i.np
  br i1 %.not.i.i.i.i.i.i.i33.i, label %_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i.i.i.i.i31.i, !llvm.loop !314

_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i.i.i.i.i31.i, %.noexc137
  %i.nr = icmp sgt i64 %i.mq, 0
  br i1 %i.nr, label %bb.aj, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.aj:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit35.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr align 8 %i.mk, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.aj, %_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit35.i
  %.not.i37.i = icmp eq ptr %i.mk, null
  br i1 %.not.i37.i, label %_ZNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit38.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.ns = load ptr, ptr %i.bq, align 8, !tbaa !345
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = sub i64 %i.nt, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.nu) #26
  br label %_ZNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit38.i

_ZNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit38.i: ; preds = %bb.ak, %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.nk, ptr %i.bm, align 8, !tbaa !176
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %i.mt
  store ptr %i.nv, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  %i.nw = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %i.ni
  store ptr %i.nw, ptr %i.bq, align 8, !tbaa !345
  br label %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i

._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i: ; preds = %_ZNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE13_M_deallocateEPS3_m.exit38.i, %_ZSt27__uninitialized_default_n_aIPN8rawspeed6SplineItE7SegmentEmS3_ET_S5_T0_RSaIT1_E.exit.i
  %.pre19.i = load i32, ptr %6, align 8, !tbaa !173
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.nx = icmp ugt i64 %i.mr, %i.mn
  br i1 %i.nx, label %bb.am, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.mk, i64 %i.mn ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.ml, %i.ny
  br i1 %.not.i.i11.i, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN8rawspeed6SplineItE7SegmentES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8rawspeed6SplineItE7SegmentES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.am
  store ptr %i.ny, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN8rawspeed6SplineItE7SegmentES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.am, %bb.al, %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i
  %i.nz = phi i32 [ %.pre19.i, %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i ], [ %i.mm, %bb.al ], [ %i.mm, %bb.am ], [ %i.mm, %_ZSt8_DestroyIPN8rawspeed6SplineItE7SegmentES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i
  %i.ob = load ptr, ptr %i.bl, align 8, !tbaa !175
  %i.oc = load ptr, ptr %i.bm, align 8, !tbaa !176
  br label %bb.ap

._crit_edge.i:                                    ; preds = %bb.ap, %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i
  invoke void @_ZN8rawspeed6SplineItE7prepareEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit unwind label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.od = load ptr, ptr %i.bm, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i108, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oe = load ptr, ptr %i.bq, align 8, !tbaa !345
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %i.od to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oh) #26
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i: ; preds = %bb.ao, %bb.an
  %i.oi = load ptr, ptr %i.bl, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i13.i, label %.body, label %.body.sink.split

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ap ] ; 4 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv.i ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !334
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv.i
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !24
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !335
  %i.oo = sitofp i32 %i.on to double
  %i.op = getelementptr inbounds nuw [32 x i8], ptr %i.oc, i64 %indvars.iv.i
  store double %i.oo, ptr %i.op, align 8, !tbaa !180
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.oq = load i32, ptr %6, align 8, !tbaa !173
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next.i, %i.or
  br i1 %i.os, label %bb.ap, label %._crit_edge.i, !llvm.loop !315

_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit: ; preds = %._crit_edge.i
  %i.ot = invoke noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #27
          to label %.noexc114 unwind label %bb.at ; 10 uses

.noexc114:                                        ; preds = %_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.ot, i8 0, i64 131072, i1 false), !noalias !347
  %i.ou = load i32, ptr %i.bn, align 4, !tbaa !174, !noalias !347 ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, 0
  br i1 %i.ov, label %.lr.ph35.i, label %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit

.lr.ph35.i:                                       ; preds = %.noexc114
  %i.ow = load ptr, ptr %i.bm, align 8, !tbaa !176, !noalias !347
  %i.ox = load ptr, ptr %i.bl, align 8, !tbaa !175, !noalias !347 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ou to i64
  %.pre.i110 = load i32, ptr %i.ox, align 4, !tbaa !24, !noalias !347
  br label %bb.aq

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph550, %middle.block546, %vec.epilog.middle.block573, %bb.aq
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit, label %bb.aq, !llvm.loop !318

bb.aq:                                            ; preds = %.loopexit.i, %.lr.ph35.i
  %i.oy = phi i32 [ %.pre.i110, %.lr.ph35.i ], [ %i.pa, %.loopexit.i ] ; 7 uses
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next38.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv.next38.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !24, !noalias !347 ; 4 uses
  %.not32.i = icmp sgt i32 %i.oy, %i.pa
  br i1 %.not32.i, label %.loopexit.i, label %iter.check549

iter.check549:                                    ; preds = %bb.aq
  %i.pb = getelementptr inbounds nuw [32 x i8], ptr %i.ow, i64 %indvars.iv37.i ; 4 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !180, !noalias !347 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !181, !noalias !347 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !182, !noalias !347 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !183, !noalias !347 ; 3 uses
  %i.pj = sext i32 %i.oy to i64                   ; 6 uses
  %i.pk = add i32 %i.pa, 1
  %i.pl = sub i32 %i.pa, %i.oy                    ; 3 uses
  %i.pm = zext i32 %i.pl to i64
  %i.pn = add nuw nsw i64 %i.pm, 1                ; 5 uses
  %min.iters.check528 = icmp ult i32 %i.pl, 3
  br i1 %min.iters.check528, label %vec.epilog.scalar.ph550.preheader, label %vector.main.loop.iter.check529

vector.main.loop.iter.check529:                   ; preds = %iter.check549
  %min.iters.check530 = icmp ult i32 %i.pl, 15
  br i1 %min.iters.check530, label %vec.epilog.ph553, label %vector.ph531

vector.ph531:                                     ; preds = %vector.main.loop.iter.check529
  %i.po = and i64 %i.pn, 12
  %n.vec532 = and i64 %i.pn, 8589934576           ; 4 uses
  %i.pp = add nsw i64 %n.vec532, %i.pj            ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.pc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert533 = insertelement <4 x double> poison, double %i.pe, i64 0
  %broadcast.splat534 = shufflevector <4 x double> %broadcast.splatinsert533, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert535 = insertelement <4 x double> poison, double %i.pg, i64 0
  %broadcast.splat536 = shufflevector <4 x double> %broadcast.splatinsert535, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert537 = insertelement <4 x double> poison, double %i.pi, i64 0
  %broadcast.splat538 = shufflevector <4 x double> %broadcast.splatinsert537, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert539 = insertelement <4 x i32> poison, i32 %i.oy, i64 0
  %broadcast.splat540 = shufflevector <4 x i32> %broadcast.splatinsert539, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert541 = insertelement <4 x i32> poison, i32 %i.oy, i64 0
  %broadcast.splat542 = shufflevector <4 x i32> %broadcast.splatinsert541, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat542, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = sub <4 x i32> splat (i32 4), %broadcast.splat540
  %invariant.op621 = sub <4 x i32> splat (i32 8), %broadcast.splat540
  %invariant.op623 = sub <4 x i32> splat (i32 12), %broadcast.splat540
  %invariant.gep = getelementptr [2 x i8], ptr %i.ot, i64 %i.pj
  br label %vector.body543

vector.body543:                                   ; preds = %vector.ph531, %vector.body543
  %index544 = phi i64 [ 0, %vector.ph531 ], [ %index.next545, %vector.body543 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph531 ], [ %vec.ind.next, %vector.body543 ] ; 5 uses
  %7 = sub <4 x i32> %vec.ind, %broadcast.splat540
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %.reass622 = add <4 x i32> %vec.ind, %invariant.op621
  %.reass624 = add <4 x i32> %vec.ind, %invariant.op623
  %8 = sitofp <4 x i32> %7 to <4 x double>        ; 4 uses
  %9 = sitofp <4 x i32> %.reass to <4 x double>   ; 4 uses
  %10 = sitofp <4 x i32> %.reass622 to <4 x double> ; 4 uses
  %11 = sitofp <4 x i32> %.reass624 to <4 x double> ; 4 uses
  %12 = fmul nnan <4 x double> %8, %8             ; 2 uses
  %13 = fmul nnan <4 x double> %9, %9             ; 2 uses
  %14 = fmul nnan <4 x double> %10, %10           ; 2 uses
  %15 = fmul nnan <4 x double> %11, %11           ; 2 uses
  %16 = fmul <4 x double> %12, %8
  %17 = fmul <4 x double> %13, %9
  %18 = fmul <4 x double> %14, %10
  %19 = fmul <4 x double> %15, %11
  %20 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %8, <4 x double> %broadcast.splat)
  %21 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %9, <4 x double> %broadcast.splat)
  %22 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %10, <4 x double> %broadcast.splat)
  %23 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %11, <4 x double> %broadcast.splat)
  %24 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat536, <4 x double> %12, <4 x double> %20)
  %25 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat536, <4 x double> %13, <4 x double> %21)
  %26 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat536, <4 x double> %14, <4 x double> %22)
  %27 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat536, <4 x double> %15, <4 x double> %23)
  %28 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %16, <4 x double> %24) ; 2 uses
  %29 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %17, <4 x double> %25) ; 2 uses
  %30 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %18, <4 x double> %26) ; 2 uses
  %31 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %19, <4 x double> %27) ; 2 uses
  %32 = fcmp olt <4 x double> %28, zeroinitializer
  %33 = fcmp olt <4 x double> %29, zeroinitializer
  %34 = fcmp olt <4 x double> %30, zeroinitializer
  %35 = fcmp olt <4 x double> %31, zeroinitializer
  %36 = select <4 x i1> %32, <4 x double> zeroinitializer, <4 x double> %28 ; 2 uses
  %37 = select <4 x i1> %33, <4 x double> zeroinitializer, <4 x double> %29 ; 2 uses
  %38 = select <4 x i1> %34, <4 x double> zeroinitializer, <4 x double> %30 ; 2 uses
  %39 = select <4 x i1> %35, <4 x double> zeroinitializer, <4 x double> %31 ; 2 uses
  %40 = fcmp ogt <4 x double> %36, splat (double 6.553500e+04)
  %41 = fcmp ogt <4 x double> %37, splat (double 6.553500e+04)
  %42 = fcmp ogt <4 x double> %38, splat (double 6.553500e+04)
  %43 = fcmp ogt <4 x double> %39, splat (double 6.553500e+04)
  %44 = select <4 x i1> %40, <4 x double> splat (double 6.553500e+04), <4 x double> %36
  %45 = select <4 x i1> %41, <4 x double> splat (double 6.553500e+04), <4 x double> %37
  %46 = select <4 x i1> %42, <4 x double> splat (double 6.553500e+04), <4 x double> %38
  %47 = select <4 x i1> %43, <4 x double> splat (double 6.553500e+04), <4 x double> %39
  %48 = fptoui <4 x double> %44 to <4 x i16>
  %49 = fptoui <4 x double> %45 to <4 x i16>
  %50 = fptoui <4 x double> %46 to <4 x i16>
  %51 = fptoui <4 x double> %47 to <4 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index544 ; 4 uses
  %52 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %53 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %54 = getelementptr inbounds nuw i8, ptr %gep, i64 24
  store <4 x i16> %48, ptr %gep, align 2, !tbaa !160, !noalias !347
  store <4 x i16> %49, ptr %52, align 2, !tbaa !160, !noalias !347
  store <4 x i16> %50, ptr %53, align 2, !tbaa !160, !noalias !347
  store <4 x i16> %51, ptr %54, align 2, !tbaa !160, !noalias !347
  %index.next545 = add nuw i64 %index544, 16      ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.pq = icmp eq i64 %index.next545, %n.vec532
  br i1 %i.pq, label %middle.block546, label %vector.body543, !llvm.loop !319

middle.block546:                                  ; preds = %vector.body543
  %cmp.n547 = icmp eq i64 %i.pn, %n.vec532
  br i1 %cmp.n547, label %.loopexit.i, label %vec.epilog.iter.check551

vec.epilog.iter.check551:                         ; preds = %middle.block546
  %min.epilog.iters.check552 = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check552, label %vec.epilog.scalar.ph550.preheader, label %vec.epilog.ph553, !prof !333

vec.epilog.ph553:                                 ; preds = %vector.main.loop.iter.check529, %vec.epilog.iter.check551
  %vec.epilog.resume.val548 = phi i64 [ %n.vec532, %vec.epilog.iter.check551 ], [ 0, %vector.main.loop.iter.check529 ]
  %bc.resume.val = phi i64 [ %i.pp, %vec.epilog.iter.check551 ], [ %i.pj, %vector.main.loop.iter.check529 ]
  %n.vec554 = and i64 %i.pn, 8589934588           ; 3 uses
  %i.pr = add nsw i64 %n.vec554, %i.pj
  %broadcast.splatinsert555 = insertelement <4 x double> poison, double %i.pc, i64 0
  %broadcast.splat556 = shufflevector <4 x double> %broadcast.splatinsert555, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <4 x double> poison, double %i.pe, i64 0
  %broadcast.splat558 = shufflevector <4 x double> %broadcast.splatinsert557, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <4 x double> poison, double %i.pg, i64 0
  %broadcast.splat560 = shufflevector <4 x double> %broadcast.splatinsert559, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert561 = insertelement <4 x double> poison, double %i.pi, i64 0
  %broadcast.splat562 = shufflevector <4 x double> %broadcast.splatinsert561, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert563 = insertelement <4 x i32> poison, i32 %i.oy, i64 0
  %broadcast.splat564 = shufflevector <4 x i32> %broadcast.splatinsert563, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ps = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert565 = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %broadcast.splat566 = shufflevector <4 x i32> %broadcast.splatinsert565, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction567 = add <4 x i32> %broadcast.splat566, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep621 = getelementptr [2 x i8], ptr %i.ot, i64 %i.pj
  br label %vec.epilog.vector.body568

vec.epilog.vector.body568:                        ; preds = %vec.epilog.vector.body568, %vec.epilog.ph553
  %index569 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph553 ], [ %index.next571, %vec.epilog.vector.body568 ] ; 2 uses
  %vec.ind570 = phi <4 x i32> [ %induction567, %vec.epilog.ph553 ], [ %vec.ind.next572, %vec.epilog.vector.body568 ] ; 2 uses
  %i.pt = sub <4 x i32> %vec.ind570, %broadcast.splat564
  %i.pu = sitofp <4 x i32> %i.pt to <4 x double>  ; 4 uses
  %i.pv = fmul nnan <4 x double> %i.pu, %i.pu     ; 2 uses
  %i.pw = fmul <4 x double> %i.pv, %i.pu
  %i.px = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat558, <4 x double> %i.pu, <4 x double> %broadcast.splat556)
  %i.py = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat560, <4 x double> %i.pv, <4 x double> %i.px)
  %i.pz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat562, <4 x double> %i.pw, <4 x double> %i.py) ; 2 uses
  %i.qa = fcmp olt <4 x double> %i.pz, zeroinitializer
  %i.qb = select <4 x i1> %i.qa, <4 x double> zeroinitializer, <4 x double> %i.pz ; 2 uses
  %i.qc = fcmp ogt <4 x double> %i.qb, splat (double 6.553500e+04)
  %i.qd = select <4 x i1> %i.qc, <4 x double> splat (double 6.553500e+04), <4 x double> %i.qb
  %i.qe = fptoui <4 x double> %i.qd to <4 x i16>
  %gep622 = getelementptr [2 x i8], ptr %invariant.gep621, i64 %index569
  store <4 x i16> %i.qe, ptr %gep622, align 2, !tbaa !160, !noalias !347
  %index.next571 = add nuw i64 %index569, 4       ; 2 uses
  %vec.ind.next572 = add <4 x i32> %vec.ind570, splat (i32 4)
  %i.qf = icmp eq i64 %index.next571, %n.vec554
  br i1 %i.qf, label %vec.epilog.middle.block573, label %vec.epilog.vector.body568, !llvm.loop !320

vec.epilog.middle.block573:                       ; preds = %vec.epilog.vector.body568
  %cmp.n574 = icmp eq i64 %i.pn, %n.vec554
  br i1 %cmp.n574, label %.loopexit.i, label %vec.epilog.scalar.ph550.preheader

vec.epilog.scalar.ph550.preheader:                ; preds = %iter.check549, %vec.epilog.iter.check551, %vec.epilog.middle.block573
  %indvars.iv.i112.ph = phi i64 [ %i.pj, %iter.check549 ], [ %i.pp, %vec.epilog.iter.check551 ], [ %i.pr, %vec.epilog.middle.block573 ]
  br label %vec.epilog.scalar.ph550

vec.epilog.scalar.ph550:                          ; preds = %vec.epilog.scalar.ph550.preheader, %vec.epilog.scalar.ph550
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %vec.epilog.scalar.ph550 ], [ %indvars.iv.i112.ph, %vec.epilog.scalar.ph550.preheader ] ; 3 uses
  %i.qg = trunc i64 %indvars.iv.i112 to i32
  %i.qh = sub i32 %i.qg, %i.oy
  %i.qi = sitofp i32 %i.qh to double              ; 4 uses
  %i.qj = fmul nnan double %i.qi, %i.qi           ; 2 uses
  %i.qk = fmul double %i.qj, %i.qi
  %i.ql = call double @llvm.fmuladd.f64(double %i.pe, double %i.qi, double %i.pc)
  %i.qm = call double @llvm.fmuladd.f64(double %i.pg, double %i.qj, double %i.ql)
  %i.qn = call double @llvm.fmuladd.f64(double %i.pi, double %i.qk, double %i.qm) ; 2 uses
  %i.qo = fcmp olt double %i.qn, 0.000000e+00
  %.sroa.speculated28.i = select i1 %i.qo, double 0.000000e+00, double %i.qn ; 2 uses
  %i.qp = fcmp ogt double %.sroa.speculated28.i, 6.553500e+04
  %.sroa.speculated.i = select i1 %i.qp, double 6.553500e+04, double %.sroa.speculated28.i
  %i.qq = fptoui double %.sroa.speculated.i to i16
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %indvars.iv.i112
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !160, !noalias !347
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i113 to i32
  %exitcond.not.i = icmp eq i32 %i.pk, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph550, !llvm.loop !321

_ZNK8rawspeed6SplineItE14calculateCurveEv.exit:   ; preds = %.loopexit.i, %.noexc114
  %spec.select = select i1 %i.jw, i32 %2, i32 %i.lk ; 2 uses
  %i.qs = select i1 %i.la, i32 0, i32 %3          ; 4 uses
  %i.qt = select i1 %i.la, i32 %3, i32 %i.li      ; 4 uses
  %i.qu = icmp slt i32 %i.jx, %spec.select
  %i.qv = icmp slt i32 %i.qs, %i.qt
  %or.cond = and i1 %i.qu, %i.qv
  br i1 %or.cond, label %.preheader.lr.ph.split, label %_ZNSt6vectorItSaItEED2Ev.exit

.preheader.lr.ph.split:                           ; preds = %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit
  %i.qw = load i32, ptr %i.br, align 8, !tbaa !67 ; 5 uses
  %i.qx = zext i32 %i.qs to i64                   ; 2 uses
  %i.qy = zext nneg i32 %i.li to i64              ; 5 uses
  %i.qz = zext nneg i32 %i.ln to i64
  %i.ra = zext nneg i32 %i.lk to i64
  %i.rb = sub i32 %i.qt, %i.qs
  %xtraiter = and i32 %i.rb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.rc = sub i32 %i.qs, %i.qt
  %i.rd = icmp ugt i32 %i.rc, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv293 = phi i64 [ %i.jy, %.preheader.lr.ph.split ], [ %indvars.iv.next294, %._crit_edge ] ; 3 uses
  %i.re = icmp samesign ult i64 %indvars.iv293, %i.ra
  call void @llvm.assume(i1 %i.re)
  %i.rf = mul nuw nsw i64 %indvars.iv293, %i.qz
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %i.rf ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %indvars.iv290.prol = phi i64 [ %indvars.iv.next291.prol, %.prol.preheader ], [ %i.qx, %.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.rh = icmp samesign ult i64 %indvars.iv290.prol, %i.qy
  call void @llvm.assume(i1 %i.rh)
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.rg, i64 %indvars.iv290.prol ; 2 uses
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !160
  %i.rk = zext i16 %i.rj to i32                   ; 2 uses
  %spec.select189191.prol = call i32 @llvm.umin.i32(i32 %i.qw, i32 %i.rk) ; 2 uses
  %spec.select189.prol = trunc nuw i32 %spec.select189191.prol to i16
  %i.rl = sub nuw nsw i32 %i.rk, %spec.select189191.prol
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %i.rm
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !160
  %i.rp = add i16 %i.ro, %spec.select189.prol
  store i16 %i.rp, ptr %i.ri, align 2, !tbaa !160
  %indvars.iv.next291.prol = add nuw nsw i64 %indvars.iv290.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !322

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %indvars.iv290.unr = phi i64 [ %i.qx, %.preheader ], [ %indvars.iv.next291.prol, %.prol.preheader ]
  br i1 %i.rd, label %._crit_edge, label %.preheader.new

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef 131072) #26
  %i.rq = load ptr, ptr %i.bm, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i116, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i117, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.rr = load ptr, ptr %i.bq, align 8, !tbaa !345
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = ptrtoint ptr %i.rq to i64
  %i.ru = sub i64 %i.rs, %i.rt
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.ru) #26
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i117

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i117: ; preds = %bb.ar, %_ZNSt6vectorItSaItEED2Ev.exit
  %i.rv = load ptr, ptr %i.bl, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i1.i, label %_ZN8rawspeed6SplineItED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i117
  %i.rw = load ptr, ptr %i.bp, align 8, !tbaa !344
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.rv to i64
  %i.rz = sub i64 %i.rx, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.rz) #26
  br label %_ZN8rawspeed6SplineItED2Ev.exit

_ZN8rawspeed6SplineItED2Ev.exit:                  ; preds = %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i117, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.la, label %bb.ac, label %bb.ab, !llvm.loop !323

bb.at:                                            ; preds = %_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = load ptr, ptr %i.bm, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i121 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i121, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i122, label %bb.au

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.sc = trunc nuw nsw i64 %indvars.iv.next294 to i32
  %i.sd = icmp sgt i32 %spec.select, %i.sc
  br i1 %i.sd, label %.preheader, label %_ZNSt6vectorItSaItEED2Ev.exit, !llvm.loop !324

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.3, %.preheader.new ], [ %indvars.iv290.unr, %.prol.loopexit ] ; 6 uses
  %i.se = icmp samesign ult i64 %indvars.iv290, %i.qy
  call void @llvm.assume(i1 %i.se)
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.rg, i64 %indvars.iv290 ; 2 uses
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !160
  %i.sh = zext i16 %i.sg to i32                   ; 2 uses
  %spec.select189191 = call i32 @llvm.umin.i32(i32 %i.qw, i32 %i.sh) ; 2 uses
  %spec.select189 = trunc nuw i32 %spec.select189191 to i16
  %i.si = sub nuw nsw i32 %i.sh, %spec.select189191
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %i.sj
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !160
  %i.sm = add i16 %i.sl, %spec.select189
  store i16 %i.sm, ptr %i.sf, align 2, !tbaa !160
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8rawspeed6SplineItE7prepareEv:bb.a
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !176 ; 2 uses
  %i.gt = zext nneg i32 %i.ak to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gt ; 2 uses
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre163 = load double, ptr %.phi.trans.insert162, align 8, !tbaa !182
  %.pre164 = load double, ptr %.phi.trans.insert, align 8, !tbaa !180
  br label %bb.m

bb.j:                                             ; preds = %bb.j, %.lr.ph141.new
  %i.gu = phi double [ 0.000000e+00, %.lr.ph141.new ], [ %i.is, %bb.j ]
  %i.gv = phi double [ 0.000000e+00, %.lr.ph141.new ], [ %i.iq, %bb.j ]
  %i.gw = phi double [ %.pre161, %.lr.ph141.new ], [ %i.ig, %bb.j ]
  %indvars.iv152 = phi i64 [ 1, %.lr.ph141.new ], [ %indvars.iv.next153.1, %bb.j ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph141.new ], [ %niter.next.1, %bb.j ]
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 6 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next153
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !24
  %i.gz = getelementptr [4 x i8], ptr %i.dt, i64 %indvars.iv152
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !24
  %i.hc = sub nsw i32 %i.gy, %i.hb
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = sitofp i32 %i.hd to double
  %i.hf = fneg double %i.gw                       ; 2 uses
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.gv, double %i.he)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv152
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !178 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv152
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0117.0, i64 %indvars.iv152
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !178
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.gu, double %i.hl)
  %i.hn = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fdiv <2 x double> %i.ho, %i.hq          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 0 ; 2 uses
  store double %i.hs, ptr %i.hj, align 8, !tbaa !178
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv152
  %i.hu = extractelement <2 x double> %i.hr, i64 1 ; 2 uses
  store double %i.hu, ptr %i.ht, align 8, !tbaa !178
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next153.1
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !24
  %i.hx = getelementptr [4 x i8], ptr %i.dt, i64 %indvars.iv.next153
  %i.hy = getelementptr i8, ptr %i.hx, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !24
  %i.ia = sub nsw i32 %i.hw, %i.hz
  %i.ib = shl nsw i32 %i.ia, 1
  %i.ic = sitofp i32 %i.ib to double
  %i.id = fneg double %i.hi                       ; 2 uses
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.hs, double %i.ic)
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv.next153
  %i.ig = load double, ptr %i.if, align 8, !tbaa !178 ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv.next153
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0117.0, i64 %indvars.iv.next153
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !178
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.id, double %i.hu, double %i.ij)
  %i.il = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1
  %i.in = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fdiv <2 x double> %i.im, %i.io          ; 2 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 0 ; 3 uses
  store double %i.iq, ptr %i.ih, align 8, !tbaa !178
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv.next153
  %i.is = extractelement <2 x double> %i.ip, i64 1 ; 3 uses
  store double %i.is, ptr %i.ir, align 8, !tbaa !178
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph145.loopexit.unr-lcssa, label %bb.j, !llvm.loop !408

_ZNSt6vectorIdSaIdEED2Ev.exit93:                  ; preds = %bb.m, %._crit_edge142
  %.pn209 = phi ptr [ %i.fl, %._crit_edge142 ], [ %i.go, %bb.m ]
  %i.it = phi ptr [ %i.fk, %._crit_edge142 ], [ %i.gn, %bb.m ]
  %i.iu = getelementptr inbounds i8, ptr %.pn209, i64 -32
  store ptr %i.iu, ptr %i.it, align 8, !tbaa !177
  %i.iv = ptrtoint ptr %.sroa.13.0 to i64
  %i.iw = ptrtoint ptr %.sroa.0102.0 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.ix) #26
  %i.iy = ptrtoint ptr %.sroa.13114.0192196 to i64
  %i.iz = ptrtoint ptr %.sroa.0108.0190197 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0190197, i64 noundef %i.ja) #26
  %.not.i.i.i94 = icmp eq ptr %.sroa.0117.0, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIdSaIdEED2Ev.exit95, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit93
  %i.jb = ptrtoint ptr %.sroa.11121.0 to i64
  %i.jc = ptrtoint ptr %.sroa.0117.0 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0, i64 noundef %i.jd) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit95

_ZNSt6vectorIdSaIdEED2Ev.exit95:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit93, %bb.k
  %.not.i.i.i96 = icmp eq ptr %.sroa.0124.0180184, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIdSaIdEED2Ev.exit97, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit95
  %i.je = ptrtoint ptr %.sroa.18.0177185 to i64
  %i.jf = ptrtoint ptr %.sroa.0124.0180184 to i64
  %i.jg = sub i64 %i.je, %i.jf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0180184, i64 noundef %i.jg) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit97

_ZNSt6vectorIdSaIdEED2Ev.exit97:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit95, %bb.l
  ret void

bb.m:                                             ; preds = %.lr.ph145, %bb.m
  %i.jh = phi double [ %.pre164, %.lr.ph145 ], [ %i.js, %bb.m ]
  %i.ji = phi double [ %.pre163, %.lr.ph145 ], [ %i.jr, %bb.m ] ; 3 uses
  %indvars.iv157 = phi i64 [ %i.gt, %.lr.ph145 ], [ %indvars.iv.next158, %bb.m ] ; 2 uses
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1 ; 5 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %indvars.iv.next158 ; 4 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv.next158
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !178
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv.next158
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !178
  %i.jo = fneg double %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv.next158 ; 2 uses
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.ji, double %i.jl) ; 4 uses
  store double %i.jr, ptr %i.jp, align 8, !tbaa !182
  %i.js = load double, ptr %i.jj, align 8, !tbaa !180 ; 2 uses
  %i.jt = fsub double %i.jh, %i.js
  %i.ju = load double, ptr %i.jq, align 8, !tbaa !178 ; 2 uses
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jr, double 2.000000e+00, double %i.ji)
  %i.jw = fmul double %i.jv, %i.ju
  %i.jx = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = insertelement <2 x double> <double poison, double 3.000000e+00>, double %i.ju, i64 0
  %i.ka = fdiv <2 x double> %i.jy, %i.jz          ; 2 uses
  %shift = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ka, %shift
  %i.kb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store double %i.kb, ptr %i.kc, align 8, !tbaa !181
  %i.kd = fsub double %i.ji, %i.jr
  %i.ke = load double, ptr %i.jq, align 8, !tbaa !178
  %i.kf = fmul double %i.ke, 3.000000e+00
  %i.kg = fdiv double %i.kd, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  store double %i.kg, ptr %i.kh, align 8, !tbaa !183
  %i.ki = icmp samesign ugt i64 %indvars.iv157, 1
  br i1 %i.ki, label %bb.m, label %_ZNSt6vectorIdSaIdEED2Ev.exit93, !llvm.loop !409

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.h ], [ %i.dl, %bb.i ] ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %.sroa.0117.0, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIdSaIdEED2Ev.exit99, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.kj = ptrtoint ptr %.sroa.11121.0 to i64
  %i.kk = ptrtoint ptr %.sroa.0117.0 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0, i64 noundef %i.kl) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit99

_ZNSt6vectorIdSaIdEED2Ev.exit99:                  ; preds = %bb.n, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i100 = icmp eq ptr %.sroa.0124.0180184, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIdSaIdEED2Ev.exit101, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit99
  %.pn.pn205 = phi { ptr, i32 } [ %i.dj, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  %.sroa.18.0175204 = phi ptr [ %i.g, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.sroa.18.0177185, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  %.sroa.0124.0178203 = phi ptr [ %i.f, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.sroa.0124.0180184, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ] ; 2 uses
  %i.km = ptrtoint ptr %.sroa.18.0175204 to i64
  %i.kn = ptrtoint ptr %.sroa.0124.0178203 to i64
  %i.ko = sub i64 %i.km, %i.kn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0178203, i64 noundef %i.ko) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit101

_ZNSt6vectorIdSaIdEED2Ev.exit101:                 ; preds = %bb.o, %_ZNSt6vectorIdSaIdEED2Ev.exit99
  %.pn.pn206 = phi { ptr, i32 } [ %.pn.pn205, %bb.o ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  resume { ptr, i32 } %.pn.pn206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold noreturn }
attributes #19 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !80, file: !75, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !{ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !9, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !14, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"p1 _ZTSN8rawspeed10IiqDecoder9IiqOffsetE", !13, i64 0}
!22 = !{!"_ZTSN8rawspeed10IiqDecoder9IiqOffsetE", !10, i64 0, !10, i64 4}
!23 = !{!22, !10, i64 4}
!24 = !{!10, !10, i64 0}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTSN8rawspeed13PhaseOneStripE", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed13PhaseOneStripESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 8}
!31 = !{!28, !27, i64 16}
!32 = !{!"_ZTSN8rawspeed6BufferE", !14, i64 0, !10, i64 8}
!33 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!34 = !{!"_ZTSN8rawspeed10DataBufferE", !32, i64 0, !33, i64 12}
!35 = !{!"_ZTSN8rawspeed10ByteStreamE", !34, i64 0, !10, i64 16}
!36 = !{!35, !10, i64 16}
!37 = !{!32, !10, i64 8}
!38 = !{!32, !14, i64 0}
!39 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !13, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!41 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !41, i64 8}
!43 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !42, i64 0}
!44 = !{!"_ZTSN8rawspeed8RawImageE", !43, i64 0}
!45 = !{!"bool", !9, i64 0}
!46 = !{!"_ZTSN8rawspeed10RawDecoderUt_E", !45, i64 0}
!47 = !{!"_ZTSSt4lessIvE"}
!48 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !47, i64 0}
!49 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!50 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!51 = !{!"_ZTSSt18_Rb_tree_node_base", !49, i64 0, !50, i64 8, !50, i64 16, !50, i64 24}
!52 = !{!"_ZTSSt15_Rb_tree_header", !51, i64 0, !16, i64 32}
!53 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !48, i64 0, !52, i64 8}
!54 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE", !53, i64 0}
!55 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE", !54, i64 0}
!56 = !{!"_ZTSN8rawspeed5HintsE", !55, i64 0}
!57 = !{!"_ZTSN8rawspeed10RawDecoderE", !44, i64 8, !45, i64 24, !45, i64 25, !45, i64 26, !45, i64 27, !45, i64 28, !45, i64 29, !46, i64 30, !45, i64 31, !32, i64 32, !56, i64 48}
!58 = !{!"p1 _ZTSN8rawspeed11TiffRootIFDE", !13, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TiffRootIFDELb0EE", !58, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TiffRootIFDESt14default_deleteIS1_ELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !63, i64 0}
!65 = !{!"_ZTSN8rawspeed19AbstractTiffDecoderE", !57, i64 0, !64, i64 96}
!66 = !{!"_ZTSN8rawspeed10IiqDecoderE", !65, i64 0, !10, i64 104}
!67 = !{!66, !10, i64 104}
!68 = !{!42, !39, i64 0}
!69 = !{!41, !40, i64 0}
!70 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!71 = !{!70, !10, i64 8}
!72 = !{!70, !10, i64 12}
!73 = !{!"vtable pointer", !8, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!77 = !{null, !76}
!78 = !DISubroutineType(types: !77)
!79 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !75, line: 139, type: !78, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!80 = !DINamespace(name: "std", scope: null)
!81 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !75, line: 143, type: !78, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!34, !33, i64 12}
!86 = !{!"_ZTSN8rawspeed5MutexE"}
!87 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !90, i64 0}
!92 = !{!"_ZTSN8rawspeed8ErrorLogE", !86, i64 0, !91, i64 8}
!93 = !{!"_ZTSN8rawspeed8iPoint2DE", !10, i64 0, !10, i64 4}
!94 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !96, i64 0}
!98 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !97, i64 0, !93, i64 24}
!99 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!100 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !45, i64 32}
!101 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !102, i64 0}
!104 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !103, i64 0}
!105 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !45, i64 4}
!106 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !105, i64 0}
!107 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !106, i64 0}
!108 = !{!"_ZTSSt8optionalIiE", !107, i64 0}
!109 = !{!"_ZTSN8rawspeed8OptionalIiEE", !108, i64 0}
!110 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !13, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !111, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !113, i64 0}
!115 = !{!"p1 int", !13, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIjSaIjEE", !118, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !122, i64 0}
!124 = !{!"double", !9, i64 0}
!125 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !45, i64 16}
!126 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !126, i64 0}
!128 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !127, i64 0}
!129 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !128, i64 0}
!130 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !13, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !131, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !133, i64 0}
!135 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !124, i64 0, !129, i64 8, !134, i64 32, !10, i64 56, !93, i64 60, !17, i64 72, !17, i64 104, !17, i64 136, !17, i64 168, !17, i64 200, !17, i64 232, !17, i64 264, !10, i64 296}
!136 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!137 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!138 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !137, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !138, i64 0, !139, i64 8}
!141 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !141, i64 0}
!143 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !13, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !143, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !144, i64 0}
!146 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !147, i64 0}
!149 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !148, i64 0}
!150 = !{!"_ZTSN8rawspeed12RawImageDataE", !92, i64 8, !93, i64 40, !10, i64 48, !10, i64 52, !45, i64 56, !98, i64 64, !10, i64 96, !99, i64 100, !104, i64 120, !109, i64 160, !114, i64 168, !119, i64 192, !123, i64 216, !10, i64 240, !45, i64 244, !135, i64 248, !86, i64 552, !136, i64 553, !142, i64 560, !10, i64 592, !10, i64 596, !93, i64 600, !93, i64 608, !149, i64 616}
!151 = !{!150, !10, i64 40}
!152 = !{!115, !115, i64 0}
!153 = !{!139, !14, i64 0}
!154 = !{!150, !10, i64 592}
!155 = !{!150, !10, i64 608}
!156 = !{!150, !10, i64 612}
!157 = !{!150, !10, i64 48}
!158 = !{!150, !10, i64 44}
end_hunk_1
