Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/UnsafeRowFast?download=true
inline.NumInlined: 3109
inline.NumDeleted: 1191
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_115deserializeRowsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %wide.load310 = load <4 x i64>, ptr %i.fu, align 8, !tbaa !109
  %wide.load311 = load <4 x i64>, ptr %i.fv, align 8, !tbaa !109
  %i.fw = add <4 x i64> %wide.load308, %broadcast.splat
  %i.fx = add <4 x i64> %wide.load309, %broadcast.splat
  %i.fy = add <4 x i64> %wide.load310, %broadcast.splat
  %i.fz = add <4 x i64> %wide.load311, %broadcast.splat
  store <4 x i64> %i.fw, ptr %i.fs, align 8, !tbaa !109
  store <4 x i64> %i.fx, ptr %i.ft, align 8, !tbaa !109
  store <4 x i64> %i.fy, ptr %i.fu, align 8, !tbaa !109
  store <4 x i64> %i.fz, ptr %i.fv, align 8, !tbaa !109
  %index.next312 = add nuw i64 %index307, 16      ; 2 uses
  %i.ga = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.ga, label %middle.block313, label %vector.body306, !llvm.loop !353

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.fl, %n.vec305
  br i1 %cmp.n314, label %.preheader, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block313
  %min.epilog.iters.check319 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check319, label %vec.epilog.scalar.ph317.preheader, label %vec.epilog.ph320, !prof !161

vec.epilog.ph320:                                 ; preds = %vector.main.loop.iter.check302, %vec.epilog.iter.check318
  %vec.epilog.resume.val315 = phi i64 [ %n.vec305, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check302 ]
  %n.vec321 = and i64 %i.fl, -4                   ; 3 uses
  %broadcast.splatinsert322 = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %broadcast.splat323 = shufflevector <4 x i64> %broadcast.splatinsert322, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph320
  %index325 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph320 ], [ %index.next327, %vec.epilog.vector.body324 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index325 ; 2 uses
  %wide.load326 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !109
  %i.gc = add <4 x i64> %wide.load326, %broadcast.splat323
  store <4 x i64> %i.gc, ptr %i.gb, align 8, !tbaa !109
  %index.next327 = add nuw i64 %index325, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next327, %n.vec321
  br i1 %i.gd, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !354

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %cmp.n329 = icmp eq i64 %i.fl, %n.vec321
  br i1 %cmp.n329, label %.preheader, label %vec.epilog.scalar.ph317.preheader

vec.epilog.scalar.ph317.preheader:                ; preds = %iter.check316, %vec.epilog.iter.check318, %vec.epilog.middle.block328
  %indvars.iv217.ph = phi i64 [ 0, %iter.check316 ], [ %n.vec305, %vec.epilog.iter.check318 ], [ %n.vec321, %vec.epilog.middle.block328 ]
  br label %vec.epilog.scalar.ph317

vec.epilog.scalar.ph317:                          ; preds = %vec.epilog.scalar.ph317.preheader, %vec.epilog.scalar.ph317
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %vec.epilog.scalar.ph317 ], [ %indvars.iv217.ph, %vec.epilog.scalar.ph317.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv217 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !109
  %i.gg = add i64 %i.gf, %i.fp
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !109
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gh = icmp ugt i64 %i.fl, %indvars.iv.next218
  br i1 %i.gh, label %vec.epilog.scalar.ph317, label %.preheader, !llvm.loop !355

.preheader:                                       ; preds = %bb.v, %vec.epilog.scalar.ph317, %middle.block313, %vec.epilog.middle.block328, %._crit_edge182
  br i1 %.not160, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not = icmp eq ptr %i.s, null
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.w

.lr.ph185.split:                                  ; preds = %.lr.ph185, %bb.v
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.v ], [ 0, %.lr.ph185 ] ; 4 uses
  %i.gq = lshr i64 %indvars.iv214, 6
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !109
  %i.gt = and i64 %indvars.iv214, 63
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = and i64 %i.gs, %i.gu
  %.not.i111 = icmp eq i64 %i.gv, 0
  br i1 %.not.i111, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph185.split
  %i.gw = load ptr, ptr %4, align 8, !tbaa !105
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv214 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !109
  %i.gz = add i64 %i.gy, %i.fp
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !109
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph185.split, %bb.u
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.ha = icmp ugt i64 %i.fl, %indvars.iv.next215
  br i1 %i.ha, label %.lr.ph185.split, label %.preheader, !llvm.loop !356

._crit_edge192:                                   ; preds = %bb.bh, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !369
  %i.hb = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc112:                                        ; preds = %._crit_edge192
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 1, ptr %i.hc, align 8, !tbaa !124, !noalias !369
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 1, ptr %i.hd, align 4, !tbaa !125, !noalias !369
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hb, align 8, !tbaa !36, !noalias !369
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERKN5boost13intrusive_ptrINS1_6BufferEEERKmSt6vectorIS7_INS1_10BaseVectorEESaISN_EEEEvPT_DpOT0_(ptr noundef nonnull %i.he, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bi unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !369

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc112
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 168) #27, !noalias !369
  br label %.body

bb.w:                                             ; preds = %.lr.ph191, %bb.bh
  %indvars.iv226 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next227, %bb.bh ] ; 4 uses
  %i.hg = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !36
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = trunc nuw nsw i64 %indvars.iv226 to i32
  %i.hl = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i32 noundef %i.hk)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !34 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef zeroext i1 %i.hp(ptr noundef nonnull align 8 dereferenceable(18) %i.hm)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.hq, label %bb.au, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.hr = load i64, ptr %i.b, align 8, !tbaa !109 ; 12 uses
  %i.hs = icmp ugt i64 %i.hr, 1152921504606846975
  br i1 %i.hs, label %bb.aa, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #29
          to label %.noexc114 unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i113 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i113, label %.loopexit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.ht = shl nuw nsw i64 %i.hr, 3
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #30
          to label %.noexc115 unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc115:                                        ; preds = %bb.ab
  store ptr %i.hu, ptr %10, align 8, !tbaa !141
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hr
  store ptr %i.hv, ptr %i.gi, align 8, !tbaa !166
  store ptr null, ptr %i.hu, align 8, !tbaa !165
  %i.hw = getelementptr i8, ptr %i.hu, i64 8      ; 3 uses
  %i.hx = add nsw i64 %i.hr, -1                   ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %bb.ac, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc115
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hx, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.hw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !165
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.ac

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %._crit_edge189

bb.ac:                                            ; preds = %.noexc115, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.hz, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hw, %.noexc115 ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.gj, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ia = shl nuw nsw i64 %i.hr, 3                ; 3 uses
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #30
          to label %.lr.ph188 unwind label %.loopexit.split-lp169 ; 4 uses

.lr.ph188:                                        ; preds = %bb.ac
  store ptr %i.ib, ptr %11, align 8, !tbaa !105
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hr
  store ptr %i.ic, ptr %i.gk, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ib, i8 0, i64 %i.ia, i1 false), !tbaa !109
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  store ptr %i.id, ptr %i.gl, align 8, !tbaa !142
  %i.ie = load ptr, ptr %10, align 8              ; 4 uses
  %i.if = load ptr, ptr %4, align 8, !tbaa !105   ; 5 uses
  br i1 %.not, label %.lr.ph188.split.us, label %.lr.ph188.split

.lr.ph188.split.us:                               ; preds = %.lr.ph188
  %i.ig = ptrtoaddr ptr %i.ie to i64
  %i.ih = load ptr, ptr %2, align 8, !tbaa !141   ; 3 uses
  %min.iters.check331 = icmp ult i64 %i.hr, 4
  %i.ii = ptrtoaddr ptr %i.ih to i64
  %i.ij = sub i64 %i.ii, %i.ig
  %diff.check = icmp ugt i64 %i.ij, -32
  %or.cond = select i1 %min.iters.check331, i1 true, i1 %diff.check
  br i1 %or.cond, label %.critedge.us.preheader, label %vector.ph332

vector.ph332:                                     ; preds = %.lr.ph188.split.us
  %n.vec333 = and i64 %i.hr, 1152921504606846972  ; 3 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next336, %vector.body334 ] ; 4 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index335
  %i.il = load <4 x ptr>, ptr %i.ik, align 8, !tbaa !165 ; 5 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index335 ; 2 uses
  %14 = load <4 x i64>, ptr %i.im, align 8, !tbaa !109 ; 5 uses
  %15 = extractelement <4 x i64> %14, i64 0
  %16 = extractelement <4 x ptr> %i.il, i64 0
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 %15
  %17 = extractelement <4 x i64> %14, i64 1
  %i.io = extractelement <4 x ptr> %i.il, i64 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %17
  %18 = extractelement <4 x i64> %14, i64 2
  %19 = extractelement <4 x ptr> %i.il, i64 2
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %18
  %21 = extractelement <4 x i64> %14, i64 3
  %i.iq = extractelement <4 x ptr> %i.il, i64 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %21
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !122
  %i.ix = load i32, ptr %i.it, align 4, !tbaa !122
  %i.iy = load i32, ptr %i.iu, align 4, !tbaa !122
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !122
  %i.ja = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 1
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 2
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 3
  %i.je = sext <4 x i32> %i.jd to <4 x i64>
  %wide.gep = getelementptr inbounds i8, <4 x ptr> %i.il, <4 x i64> %i.je
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index335
  store <4 x ptr> %wide.gep, ptr %i.jf, align 8, !tbaa !165
  %i.jg = add <4 x i64> %14, splat (i64 8)
  store <4 x i64> %i.jg, ptr %i.im, align 8, !tbaa !109
  %index.next336 = add nuw i64 %index335, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next336, %n.vec333
  br i1 %i.jh, label %middle.block337, label %vector.body334, !llvm.loop !359

middle.block337:                                  ; preds = %vector.body334
  %cmp.n338 = icmp eq i64 %i.hr, %n.vec333
  br i1 %cmp.n338, label %._crit_edge189, label %.critedge.us.preheader

.critedge.us.preheader:                           ; preds = %.lr.ph188.split.us, %middle.block337
  %indvars.iv223.ph = phi i64 [ 0, %.lr.ph188.split.us ], [ %n.vec333, %middle.block337 ]
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.preheader, %.critedge.us
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %.critedge.us ], [ %indvars.iv223.ph, %.critedge.us.preheader ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv223
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !165 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv223 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !109 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %.val.us = load i32, ptr %i.jn, align 4, !tbaa !122
  %i.jo = sext i32 %.val.us to i64
  %i.jp = getelementptr inbounds i8, ptr %i.jj, i64 %i.jo
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv223
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !165
  %i.jr = add i64 %i.jl, 8
  store i64 %i.jr, ptr %i.jk, align 8, !tbaa !109
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.js = icmp samesign ugt i64 %i.hr, %indvars.iv.next224
  br i1 %i.js, label %.critedge.us, label %._crit_edge189, !llvm.loop !360

._crit_edge189:                                   ; preds = %bb.ad, %.critedge.us, %middle.block337, %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jt = load ptr, ptr %8, align 8, !tbaa !154
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv226
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !150
  invoke fastcc void @_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.jv)
          to label %bb.ae unwind label %bb.ap

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.w, %._crit_edge192, %bb.k, %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit129

.loopexit.split-lp169:                            ; preds = %bb.ac
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit127

.lr.ph188.split:                                  ; preds = %.lr.ph188, %bb.ad
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %bb.ad ], [ 0, %.lr.ph188 ] ; 8 uses
  %i.jw = lshr i64 %indvars.iv220, 6
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !109
  %i.jz = and i64 %indvars.iv220, 63
  %i.ka = shl nuw i64 1, %i.jz
  %i.kb = and i64 %i.jy, %i.ka
  %.not.i119 = icmp eq i64 %i.kb, 0
  br i1 %.not.i119, label %.lr.ph188.split._crit_edge, label %.critedge

.lr.ph188.split._crit_edge:                       ; preds = %.lr.ph188.split
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv220
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %bb.ad

.critedge:                                        ; preds = %.lr.ph188.split
  %i.kc = load ptr, ptr %2, align 8, !tbaa !141
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv220
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !165 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv220
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !109 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %.val = load i32, ptr %i.ki, align 4, !tbaa !122
  %i.kj = sext i32 %.val to i64
  %i.kk = getelementptr inbounds i8, ptr %i.ke, i64 %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv220
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !165
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph188.split._crit_edge, %.critedge
  %i.km = phi i64 [ %.pre, %.lr.ph188.split._crit_edge ], [ %i.kg, %.critedge ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv220
  %i.ko = add i64 %i.km, 8
  store i64 %i.ko, ptr %i.kn, align 8, !tbaa !109
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.kp = icmp ugt i64 %i.hr, %indvars.iv.next221
  br i1 %i.kp, label %.lr.ph188.split, label %._crit_edge189, !llvm.loop !361

bb.ae:                                            ; preds = %._crit_edge189
  %i.kq = load ptr, ptr %i.gm, align 8, !tbaa !168 ; 5 uses
  %i.kr = load ptr, ptr %i.gn, align 8, !tbaa !169
  %.not.i120 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i120, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr null, ptr %i.ks, align 8, !tbaa !121
  %i.kt = load <2 x ptr>, ptr %12, align 16, !tbaa !143
  store ptr null, ptr %i.go, align 8, !tbaa !121
  store <2 x ptr> %i.kt, ptr %i.kq, align 8, !tbaa !143
  store ptr null, ptr %12, align 16, !tbaa !108
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store ptr %i.ku, ptr %i.gm, align 8, !tbaa !168
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.kq, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit unwind label %bb.aq

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.ag, %bb.af
  %i.kv = load ptr, ptr %i.go, align 8, !tbaa !121 ; 8 uses
  %.not.i.i123 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i123, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 4 uses
  %i.kx = load atomic i64, ptr %i.kw acquire, align 8 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 4294967297
  %i.kz = trunc i64 %i.kx to i32                  ; 2 uses
  br i1 %i.ky, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.kw, align 8, !tbaa !124
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.la, align 4, !tbaa !125
  %i.lb = load ptr, ptr %i.kv, align 8, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #28, !inline_history !6
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !36
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #28, !inline_history !6
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.lh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i = icmp eq i8 %i.lh, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = add nsw i32 %i.kz, -1
  store i32 %i.li, ptr %i.kw, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.lj = atomicrmw volatile add ptr %i.kw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i32 [ %i.kz, %bb.ak ], [ %i.lj, %bb.al ]
  %i.lk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lk, label %bb.am, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !126

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ll = load ptr, ptr %11, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lm = load ptr, ptr %i.gk, align 8, !tbaa !99
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lp) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.lq = load ptr, ptr %10, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.lr = load ptr, ptr %i.gi, align 8, !tbaa !166
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lu) #27
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bh

bb.ap:                                            ; preds = %._crit_edge189
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar
end_hunk_0
