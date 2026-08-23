Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/concat_layer?download=true
inline.NumInlined: 669
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag
  %.pn75 = phi { ptr, i32 } [ %i.cu, %bb.ag ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.body128

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.067.lcssa = phi i32 [ 0, %bb.a ], [ %i.bg, %bb.o ] ; 3 uses
  %i.db = icmp sgt i32 %.fr207, 1
  br i1 %i.db, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc127 unwind label %bb.ac

.noexc127:                                        ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc127
  unreachable

bb.ak:                                            ; preds = %.noexc127
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.ak
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body128

bb.al:                                            ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !82
  %i.dk = icmp eq i32 %.067.lcssa, %i.dj
  br i1 %i.dk, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i, ptr noundef nonnull @.str.13, i32 noundef 188) #21
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.aq:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.aq
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !22
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.ap ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.dm, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body128

bb.ar:                                            ; preds = %bb.al
  %i.ds = load i32, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.dt = and i32 %i.ds, 16384
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = and i32 %i.ds, 4095
  switch i32 %i.du, label %bb.at [
    i32 5, label %bb.ay
    i32 7, label %bb.ay
    i32 1, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i, ptr noundef nonnull @.str.13, i32 noundef 189) #21
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.ax:                                            ; preds = %bb.au
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ax
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !22
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.aw
  %.pn70 = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.dw, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body128

bb.ay:                                            ; preds = %bb.as, %bb.as, %bb.as
  %i.ec = mul nsw i32 %.067.lcssa, %i.p           ; 3 uses
  %i.ed = sext i32 %i.ec to i64                   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 40
  %.not266 = icmp eq i32 %i.ec, 0
  br i1 %.not266, label %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.eg = icmp slt i32 %i.ec, 0
  br i1 %i.eg, label %bb.ba, label %_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #21
          to label %.noexc158 unwind label %bb.ac

.noexc158:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.az
  %i.eh = shl nuw nsw i64 %i.ed, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #18
          to label %.noexc159 unwind label %bb.ac ; 4 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i
  store ptr null, ptr %i.ei, align 8, !tbaa !131
  %i.ej = add nsw i64 %i.ed, -1                   ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc159
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ej, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !131
  br label %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc159
  store ptr %i.ei, ptr %i.c, align 8, !tbaa !132
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ed ; 2 uses
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !133
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !134
  br label %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split

_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split:     ; preds = %bb.ay, %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i
  br i1 %.not206, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split
  %i.en = icmp sgt i32 %i.p, 0
  br i1 %i.en, label %.preheader.lr.ph.us.preheader, label %.lr.ph198.split

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph198
  %i.eo = sext i32 %.067.lcssa to i64             ; 4 uses
  %wide.trip.count219 = zext nneg i32 %i.p to i64
  %wide.trip.count229 = zext nneg i32 %i.p to i64
  %i.ep = shl nsw i64 %i.eo, 3
  %i.eq = shl nsw i64 %i.eo, 3
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge191.split.us.loopexit
  %.1197.us = phi i64 [ %i.fe, %._crit_edge191.split.us.loopexit ], [ 0, %.preheader.lr.ph.us.preheader ] ; 4 uses
  %.057194.us = phi i32 [ %i.fd, %._crit_edge191.split.us.loopexit ], [ 0, %.preheader.lr.ph.us.preheader ] ; 3 uses
  %i.er = mul nuw i64 %.1197.us, 208
  %i.es = getelementptr i8, ptr %i.h, i64 %i.er
  %scevgep275 = getelementptr i8, ptr %i.es, i64 32
  %i.et = mul nuw i64 %.1197.us, 208
  %i.eu = getelementptr i8, ptr %i.h, i64 %i.et
  %scevgep271 = getelementptr i8, ptr %i.eu, i64 32
  %i.ev = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %.1197.us ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !81
  %i.ey = icmp sgt i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fa = getelementptr i8, ptr %i.ev, i64 24     ; 14 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  br i1 %i.ey, label %.preheader.lr.ph.split.us, label %.noexc.i

._crit_edge191.split.us.loopexit:                 ; preds = %..split180.us_crit_edge.split.us, %..split180.us_crit_edge.split.us.us.us, %.preheader.lr.ph.split.us
  %i.fd = add nsw i32 %i.gv, %.057194.us
  %i.fe = add nuw i64 %.1197.us, 1                ; 2 uses
  %exitcond232.not = icmp eq i64 %i.fe, %i.l
  br i1 %exitcond232.not, label %._crit_edge199, label %.preheader.lr.ph.us, !llvm.loop !135

.preheader.us200:                                 ; preds = %.preheader.lr.ph.split.split.split.split.us203, %..split180.us_crit_edge.split.us
  %indvars.iv216 = phi i64 [ 0, %.preheader.lr.ph.split.split.split.split.us203 ], [ %indvars.iv.next217, %..split180.us_crit_edge.split.us ] ; 4 uses
  %i.ff = mul nsw i64 %indvars.iv216, %i.eo
  %i.fg = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fh = mul i64 %i.gz, %indvars.iv216           ; 6 uses
  %i.fi = getelementptr [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.hb ; 7 uses
  br i1 %min.iters.check280, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.preheader.us200
  %i.fk = mul i64 %i.eq, %indvars.iv216
  %i.fl = getelementptr i8, ptr %i.fg, i64 %i.hd
  %scevgep274 = getelementptr i8, ptr %i.fl, i64 %i.fk
  %bound0276 = icmp ult ptr %i.fj, %scevgep275
  %bound1277 = icmp ult ptr %i.fa, %scevgep274
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck273
  %i.fm = load ptr, ptr %i.fa, align 8, !tbaa !136, !alias.scope !137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fh ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph281
  %index286 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %vec.ind287 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph281 ], [ %vec.ind.next292, %vector.body285 ] ; 3 uses
  %step.add288 = add nuw <2 x i64> %vec.ind287, splat (i64 2)
  %i.fo = mul <2 x i64> %broadcast.splat284, %vec.ind287
  %i.fp = mul <2 x i64> %broadcast.splat284, %step.add288
  %wide.gep289 = getelementptr inbounds nuw i8, ptr %i.fn, <2 x i64> %i.fo
  %wide.gep290 = getelementptr inbounds nuw i8, ptr %i.fn, <2 x i64> %i.fp
  %i.fq = getelementptr [8 x i8], ptr %i.fj, i64 %index286 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <2 x ptr> %wide.gep289, ptr %i.fq, align 8, !tbaa !131, !alias.scope !140, !noalias !137
  store <2 x ptr> %wide.gep290, ptr %i.fr, align 8, !tbaa !131, !alias.scope !140, !noalias !137
  %index.next291 = add nuw i64 %index286, 4       ; 2 uses
  %vec.ind.next292 = add nuw <2 x i64> %vec.ind287, splat (i64 4)
  %i.fs = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.fs, label %middle.block293, label %vector.body285, !llvm.loop !142

middle.block293:                                  ; preds = %vector.body285
  br i1 %cmp.n294, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader:     ; preds = %vector.memcheck273, %.preheader.us200, %middle.block293
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck273 ], [ 0, %.preheader.us200 ], [ %n.vec282, %middle.block293 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol:          ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ], [ %indvars.iv.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ], [ 0, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ]
  %i.ft = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fh
  %i.fv = mul i64 %i.ha, %indvars.iv.prol
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  %i.fx = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.prol
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !131
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol, !llvm.loop !143

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit: ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ], [ %indvars.iv.next.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ]
  %i.fy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us:               ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us ], [ %indvars.iv.unr, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit ] ; 6 uses
  %i.ga = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fh
  %i.gc = mul i64 %i.ha, %indvars.iv
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gf = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fh
  %i.gh = mul i64 %i.ha, %indvars.iv.next
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !131
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gk = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fh
  %i.gm = mul i64 %i.ha, %indvars.iv.next.1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next.1
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !131
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gp = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fh
  %i.gr = mul i64 %i.ha, %indvars.iv.next.2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.gt = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next.2
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !131
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond215.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond215.not.3, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us, !llvm.loop !145

..split180.us_crit_edge.split.us:                 ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us, %middle.block293
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge191.split.us.loopexit, label %.preheader.us200, !llvm.loop !146

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph.us
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !82 ; 6 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.preheader.lr.ph.split.split.split.us, label %._crit_edge191.split.us.loopexit

.preheader.lr.ph.split.split.split.us:            ; preds = %.preheader.lr.ph.split.us
  %i.gx = load i32, ptr %i.ez, align 4, !tbaa !58
  %i.gy = icmp slt i32 %i.gx, 2
  %i.gz = load i64, ptr %i.fb, align 8, !tbaa !53 ; 7 uses
  br i1 %i.gy, label %.preheader.lr.ph.split.split.split.split.us.us, label %.preheader.lr.ph.split.split.split.split.us203

.preheader.lr.ph.split.split.split.split.us203:   ; preds = %.preheader.lr.ph.split.split.split.us
  %i.ha = load i64, ptr %i.fc, align 8, !tbaa !53 ; 6 uses
  %i.hb = sext i32 %.057194.us to i64             ; 2 uses
  %wide.trip.count = zext nneg i32 %i.gv to i64   ; 6 uses
  %i.hc = add nsw i64 %i.hb, %wide.trip.count
  %i.hd = shl nsw i64 %i.hc, 3
  %min.iters.check280 = icmp ult i32 %i.gv, 4
  %n.vec282 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert283 = insertelement <2 x i64> poison, i64 %i.ha, i64 0
  %broadcast.splat284 = shufflevector <2 x i64> %broadcast.splatinsert283, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n294 = icmp eq i64 %n.vec282, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us200

.preheader.lr.ph.split.split.split.split.us.us:   ; preds = %.preheader.lr.ph.split.split.split.us
  %i.he = sext i32 %.057194.us to i64             ; 2 uses
  %wide.trip.count224 = zext nneg i32 %i.gv to i64 ; 6 uses
  %i.hf = add nsw i64 %i.he, %wide.trip.count224
  %i.hg = shl nsw i64 %i.hf, 3
  %min.iters.check = icmp ult i32 %i.gv, 4
  %n.vec = and i64 %wide.trip.count224, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count224
  %xtraiter298 = and i64 %wide.trip.count224, 3   ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %..split180.us_crit_edge.split.us.us.us, %.preheader.lr.ph.split.split.split.split.us.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %..split180.us_crit_edge.split.us.us.us ], [ 0, %.preheader.lr.ph.split.split.split.split.us.us ] ; 3 uses
  %i.hh = mul nsw i64 %indvars.iv226, %i.eo
  %i.hi = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %i.he ; 7 uses
  br i1 %min.iters.check, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.hl = mul i64 %i.ep, %indvars.iv226
  %i.hm = getelementptr i8, ptr %i.hi, i64 %i.hg
  %scevgep = getelementptr i8, ptr %i.hm, i64 %i.hl
  %bound0 = icmp ult ptr %i.hk, %scevgep271
  %bound1 = icmp ult ptr %i.fa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hn = load ptr, ptr %i.fa, align 8, !tbaa !136, !alias.scope !147 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ho = mul <2 x i64> %broadcast.splat, %vec.ind
  %i.hp = mul <2 x i64> %broadcast.splat, %step.add
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.hn, <2 x i64> %i.ho
  %wide.gep272 = getelementptr inbounds nuw i8, ptr %i.hn, <2 x i64> %i.hp
  %i.hq = getelementptr [8 x i8], ptr %i.hk, i64 %index ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hq, align 8, !tbaa !131, !alias.scope !150, !noalias !147
  store <2 x ptr> %wide.gep272, ptr %i.hr, align 8, !tbaa !131, !alias.scope !150, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hs = icmp eq i64 %index.next, %n.vec
end_hunk_0
