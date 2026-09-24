Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reduce2_layer?download=true
inline.NumInlined: 13720
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 129
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxIlllEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !186
  %i.k = and i32 %i.j, 16384
  %.not46 = icmp eq i32 %i.k, 0
  br i1 %.not46, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxIhiiEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb, ptr noundef nonnull @.str.4, i32 noundef 413) #26
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store double f0xC3E0000000000000, ptr %11, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.w, align 8, !tbaa !184
  store i64 17179869185, ptr %i.v, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.y = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.aa = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.ab = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.ab, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.ac = load i32, ptr %13, align 4, !tbaa !179
  %i.ad = icmp eq i32 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ad, label %bb.q, label %bb.u

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.af, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ah = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not6.i.i, label %.lr.ph22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.ai, -4
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader104, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec74, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77.a = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.as, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.at, %vector.body75 ]
  %i.aq = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80.a = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !92
  %wide.load81 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !92
  %i.as = mul <4 x i32> %wide.load80.a, %vec.phi77.a ; 2 uses
  %i.at = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.au, label %middle.block83, label %vector.body75, !llvm.loop !2119

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.at, %i.as
  %i.av = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.an, %n.vec74
  br i1 %cmp.n85, label %.lr.ph22.i, label %.lr.ph.i.i.preheader104

.lr.ph.i.i.preheader104:                          ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ap, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader104, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader104 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader104 ]
  %i.aw = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.ax = mul nsw i32 %i.aw, %.057.i.i            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %.lr.ph22.i, label %.lr.ph.i.i, !llvm.loop !2120

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.aa, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.t ], [ %i.cz, %bb.aa ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.df, %bb.ac ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph22.i:                                       ; preds = %.lr.ph.i.i, %middle.block83, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.av, %middle.block83 ], [ %i.ax, %.lr.ph.i.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 8, !tbaa !2125
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 4, !tbaa !633
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bc, align 8, !tbaa !2126
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bd, align 4, !tbaa !2127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !634, !nonnull !178, !align !202
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 4 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !635, !nonnull !178, !align !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bk, label %.lr.ph.us.preheader.i, label %.lr.ph22.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph22.i
  %wide.trip.count29.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 3 uses
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !91 ; 2 uses
  %min.iters.check89 = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.us.preheader.i
  %n.vec91 = and i64 %wide.trip.count29.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %vec.phi94.a = phi <2 x i64> [ %broadcast.splat, %vector.ph90 ], [ %i.bo, %vector.body92 ]
  %vec.phi95 = phi <2 x i64> [ %broadcast.splat, %vector.ph90 ], [ %i.bp, %vector.body92 ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index93 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load96.a = load <2 x i64>, ptr %i.bm, align 8, !tbaa !91
  %wide.load97 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !91
  %i.bo = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load96.a, <2 x i64> %vec.phi94.a) ; 2 uses
  %i.bp = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load97, <2 x i64> %vec.phi95) ; 2 uses
  %index.next98 = add nuw i64 %index93, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bq, label %middle.block99, label %vector.body92, !llvm.loop !2121

middle.block99:                                   ; preds = %vector.body92
  %rdx.minmax = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.bo, <2 x i64> %i.bp)
  %i.br = call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n100 = icmp eq i64 %n.vec91, %wide.trip.count29.i
  br i1 %cmp.n100, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEclERKNS_5RangeE.exit, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %.lr.ph.us.preheader.i, %middle.block99
  %indvars.iv26.i.ph = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %n.vec91, %middle.block99 ]
  %.sroa.3.018.us.i.ph = phi i64 [ %i.bl, %.lr.ph.us.preheader.i ], [ %i.br, %middle.block99 ]
  br label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %scalar.ph88 ], [ %indvars.iv26.i.ph, %scalar.ph88.preheader ] ; 2 uses
  %.sroa.3.018.us.i = phi i64 [ %..i.us.i, %scalar.ph88 ], [ %.sroa.3.018.us.i.ph, %scalar.ph88.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !91
  %..i.us.i = call i64 @llvm.smax.i64(i64 %i.bt, i64 %.sroa.3.018.us.i) ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEclERKNS_5RangeE.exit, label %scalar.ph88, !llvm.loop !2122

.lr.ph22.split.i:                                 ; preds = %.lr.ph22.i
  %20 = load i64, ptr %i.bg, align 8, !tbaa !91
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEclERKNS_5RangeE.exit: ; preds = %scalar.ph88, %middle.block99, %.lr.ph22.split.i
  %storemerge.in.in = phi i64 [ %20, %.lr.ph22.split.i ], [ %i.br, %middle.block99 ], [ %..i.us.i, %scalar.ph88 ]
  %storemerge.in = sitofp i64 %storemerge.in.in to double
  %storemerge = fptosi double %storemerge.in to i64
  store i64 %storemerge, ptr %i.bj, align 8, !tbaa !91
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ao

bb.u:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !108 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cc = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cd = shl i64 %i.cc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cb, ptr align 8 %i.bz, i64 %i.cd, i1 false)
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.ce, align 8, !tbaa !176
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cf, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.aa

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.x
  %i.cg = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.ch = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.aa      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not6.i.i36 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.z
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = ptrtoaddr ptr %i.cg to i64
  %i.ck = add i64 %i.ci, -4
  %i.cl = sub i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cn, 9223372036854775800     ; 3 uses
  %i.co = shl i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ct, %vector.body ]
  %i.cq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load70 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !92
  %i.cs = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ct = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !2123

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ct, %i.cs
  %i.cv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader108

.lr.ph.i.i37.preheader108:                        ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cg, %.lr.ph.i.i37.preheader ], [ %i.cp, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader108, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.cy, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader108 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.cx, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader108 ]
  %i.cw = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.cx = mul nsw i32 %i.cw, %.057.i.i39          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.cy, %i.ch
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2124

bb.aa:                                            ; preds = %bb.y, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.z
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.z ], [ %i.cv, %middle.block ], [ %i.cx, %.lr.ph.i.i37 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.da, align 8, !tbaa !2125
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.db, align 4, !tbaa !633
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dc, align 8, !tbaa !2126
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dd, align 4, !tbaa !2127
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.de, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ao

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_.exit42
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dg = ptrtoint ptr %i.bw to i64
  %i.dh = ptrtoint ptr %i.bu to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp ugt i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %.noexc.i.i, label %bb.ae, !prof !180

.noexc.i.i:                                       ; preds = %bb.ad
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #24 ; 5 uses
  store ptr %i.dk, ptr %18, align 8, !tbaa !160
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !172
  %i.do = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !108
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp sgt i64 %i.ds, 4
  br i1 %i.dt, label %bb.af, label %bb.ag, !prof !181

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.du = icmp eq i64 %i.ds, 4
  br i1 %i.du, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load i32, ptr %i.do, align 4, !tbaa !92
  store i32 %i.dv, ptr %i.dk, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dw = getelementptr inbounds i8, ptr %i.dk, i64 %i.ds
  store ptr %i.dw, ptr %i.dl, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxIlllEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.dx = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !172
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMinIlllEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !186
  %i.k = and i32 %i.j, 16384
  %.not46 = icmp eq i32 %i.k, 0
  br i1 %.not46, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxIhiiEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb, ptr noundef nonnull @.str.4, i32 noundef 413) #26
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store double f0x43E0000000000000, ptr %11, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.w, align 8, !tbaa !184
  store i64 17179869185, ptr %i.v, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.y = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.aa = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.ab = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.ab, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.ac = load i32, ptr %13, align 4, !tbaa !179
  %i.ad = icmp eq i32 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ad, label %bb.q, label %bb.u

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.af, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ah = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not6.i.i, label %.lr.ph22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.ai, -4
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader104, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec74, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77.a = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.as, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.at, %vector.body75 ]
  %i.aq = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80.a = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !92
  %wide.load81 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !92
  %i.as = mul <4 x i32> %wide.load80.a, %vec.phi77.a ; 2 uses
  %i.at = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.au, label %middle.block83, label %vector.body75, !llvm.loop !2128

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.at, %i.as
  %i.av = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.an, %n.vec74
  br i1 %cmp.n85, label %.lr.ph22.i, label %.lr.ph.i.i.preheader104

.lr.ph.i.i.preheader104:                          ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ap, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader104, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader104 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader104 ]
  %i.aw = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.ax = mul nsw i32 %i.aw, %.057.i.i            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %.lr.ph22.i, label %.lr.ph.i.i, !llvm.loop !2129

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.aa, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.t ], [ %i.cz, %bb.aa ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.df, %bb.ac ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph22.i:                                       ; preds = %.lr.ph.i.i, %middle.block83, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.av, %middle.block83 ], [ %i.ax, %.lr.ph.i.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 8, !tbaa !2134
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 4, !tbaa !641
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bc, align 8, !tbaa !2135
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bd, align 4, !tbaa !2136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !642, !nonnull !178, !align !202
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 4 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !643, !nonnull !178, !align !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bk, label %.lr.ph.us.preheader.i, label %.lr.ph22.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph22.i
  %wide.trip.count29.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 3 uses
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !91 ; 2 uses
  %min.iters.check89 = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.us.preheader.i
  %n.vec91 = and i64 %wide.trip.count29.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %vec.phi94.a = phi <2 x i64> [ %broadcast.splat, %vector.ph90 ], [ %i.bo, %vector.body92 ]
  %vec.phi95 = phi <2 x i64> [ %broadcast.splat, %vector.ph90 ], [ %i.bp, %vector.body92 ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index93 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load96.a = load <2 x i64>, ptr %i.bm, align 8, !tbaa !91
  %wide.load97 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !91
  %i.bo = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load96.a, <2 x i64> %vec.phi94.a) ; 2 uses
  %i.bp = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load97, <2 x i64> %vec.phi95) ; 2 uses
  %index.next98 = add nuw i64 %index93, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bq, label %middle.block99, label %vector.body92, !llvm.loop !2130

middle.block99:                                   ; preds = %vector.body92
  %rdx.minmax = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.bo, <2 x i64> %i.bp)
  %i.br = call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n100 = icmp eq i64 %n.vec91, %wide.trip.count29.i
  br i1 %cmp.n100, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEclERKNS_5RangeE.exit, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %.lr.ph.us.preheader.i, %middle.block99
  %indvars.iv26.i.ph = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %n.vec91, %middle.block99 ]
  %.sroa.3.018.us.i.ph = phi i64 [ %i.bl, %.lr.ph.us.preheader.i ], [ %i.br, %middle.block99 ]
  br label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %scalar.ph88 ], [ %indvars.iv26.i.ph, %scalar.ph88.preheader ] ; 2 uses
  %.sroa.3.018.us.i = phi i64 [ %..i.us.i, %scalar.ph88 ], [ %.sroa.3.018.us.i.ph, %scalar.ph88.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !91
  %..i.us.i = call i64 @llvm.smin.i64(i64 %i.bt, i64 %.sroa.3.018.us.i) ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEclERKNS_5RangeE.exit, label %scalar.ph88, !llvm.loop !2131

.lr.ph22.split.i:                                 ; preds = %.lr.ph22.i
  %20 = load i64, ptr %i.bg, align 8, !tbaa !91
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEclERKNS_5RangeE.exit: ; preds = %scalar.ph88, %middle.block99, %.lr.ph22.split.i
  %storemerge.in.in = phi i64 [ %20, %.lr.ph22.split.i ], [ %i.br, %middle.block99 ], [ %..i.us.i, %scalar.ph88 ]
  %storemerge.in = sitofp i64 %storemerge.in.in to double
  %storemerge = fptosi double %storemerge.in to i64
  store i64 %storemerge, ptr %i.bj, align 8, !tbaa !91
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ao

bb.u:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !108 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !87
  %i.cc = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cd = shl i64 %i.cc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cb, ptr align 8 %i.bz, i64 %i.cd, i1 false)
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.ce, align 8, !tbaa !176
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cf, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.aa

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.x
  %i.cg = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.ch = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.aa      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not6.i.i36 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.z
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = ptrtoaddr ptr %i.cg to i64
  %i.ck = add i64 %i.ci, -4
  %i.cl = sub i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cn, 9223372036854775800     ; 3 uses
  %i.co = shl i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ct, %vector.body ]
  %i.cq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load70 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !92
  %i.cs = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ct = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !2132

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ct, %i.cs
  %i.cv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader108

.lr.ph.i.i37.preheader108:                        ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cg, %.lr.ph.i.i37.preheader ], [ %i.cp, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader108, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.cy, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader108 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.cx, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader108 ]
  %i.cw = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.cx = mul nsw i32 %i.cw, %.057.i.i39          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.cy, %i.ch
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2133

bb.aa:                                            ; preds = %bb.y, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.z
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.z ], [ %i.cv, %middle.block ], [ %i.cx, %.lr.ph.i.i37 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.da, align 8, !tbaa !2134
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.db, align 4, !tbaa !641
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dc, align 8, !tbaa !2135
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dd, align 4, !tbaa !2136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.de, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ao

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_.exit42
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dg = ptrtoint ptr %i.bw to i64
  %i.dh = ptrtoint ptr %i.bu to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp ugt i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %.noexc.i.i, label %bb.ae, !prof !180

.noexc.i.i:                                       ; preds = %bb.ad
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #24 ; 5 uses
  store ptr %i.dk, ptr %18, align 8, !tbaa !160
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !172
  %i.do = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !108
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp sgt i64 %i.ds, 4
  br i1 %i.dt, label %bb.af, label %bb.ag, !prof !181

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.du = icmp eq i64 %i.ds, 4
  br i1 %i.du, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load i32, ptr %i.do, align 4, !tbaa !92
  store i32 %i.dv, ptr %i.dk, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dw = getelementptr inbounds i8, ptr %i.dk, i64 %i.ds
  store ptr %i.dw, ptr %i.dl, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMinIlllEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.dx = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !172
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIlldEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.lr.ph20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi82.a = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.at, %vector.body80 ]
  %vec.phi83 = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.au, %vector.body80 ]
  %i.ap = shl i64 %index81, 2
  %next.gep84 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85.a = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !92
  %wide.load86 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = freeze <4 x i32> %wide.load85.a
  %i.as = freeze <4 x i32> %wide.load86
  %i.at = mul <4 x i32> %i.ar, %vec.phi82.a       ; 2 uses
  %i.au = mul <4 x i32> %i.as, %vec.phi83         ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.av, label %middle.block88, label %vector.body80, !llvm.loop !2137

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx89 = mul <4 x i32> %i.au, %i.at
  %i.aw = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx89) ; 2 uses
  %cmp.n90 = icmp eq i64 %i.am, %n.vec79
  br i1 %cmp.n90, label %.lr.ph20.i, label %.lr.ph.i.i.preheader93

.lr.ph.i.i.preheader93:                           ; preds = %.lr.ph.i.i.preheader, %middle.block88
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block88 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.aw, %middle.block88 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader93, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader93 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader93 ]
  %i.ax = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %.fr = freeze i32 %i.ax
  %i.ay = mul i32 %.fr, %.057.i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ag
  br i1 %.not.i.i, label %.lr.ph20.i, label %.lr.ph.i.i, !llvm.loop !2138

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit46, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ee, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit46 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph20.i:                                       ; preds = %.lr.ph.i.i, %middle.block88, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.aw, %middle.block88 ], [ %i.ay, %.lr.ph.i.i ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 8, !tbaa !649
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bc, align 4, !tbaa !650
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bd, align 8, !tbaa !2142
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.be, align 4, !tbaa !2143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !651, !nonnull !178, !align !202
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 5 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !652, !nonnull !178, !align !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = sext i32 %.05.lcssa.i.i to i64
  %i.bm = icmp sgt i32 %.05.lcssa.i.i, 0
  %i.bn = uitofp i64 %i.bl to double              ; 2 uses
  br i1 %i.bm, label %.lr.ph.us.preheader.i, label %.lr.ph20.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph20.i
  %wide.trip.count28.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count28.i, 3     ; 3 uses
  %i.bo = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.us.preheader.i.new

.lr.ph.us.preheader.i.new:                        ; preds = %.lr.ph.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count28.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.us.preheader.i.new
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %indvars.iv.next26.i.3, %bb.u ] ; 5 uses
  %.sroa.4.016.us.i = phi double [ 0.000000e+00, %.lr.ph.us.preheader.i.new ], [ %i.ch, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !91
  %i.br = sitofp i64 %i.bq to double
  %i.bs = fadd double %.sroa.4.016.us.i, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !91
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = fadd double %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fadd double %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !91
  %i.cg = sitofp i64 %i.cf to double
  %i.ch = fadd double %i.cc, %i.cg                ; 3 uses
  %indvars.iv.next26.i.3 = add nuw nsw i64 %indvars.iv25.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !26

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.preheader.i
  %indvars.iv25.i.epil.init = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next26.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.016.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %i.ch, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv25.i.epil = phi i64 [ %indvars.iv25.i.epil.init, %.epil.preheader ], [ %indvars.iv.next26.i.epil, %bb.v ] ; 2 uses
  %.sroa.4.016.us.i.epil = phi double [ %.sroa.4.016.us.i.epil.init, %.epil.preheader ], [ %i.cl, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i.epil
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !91
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fadd double %.sroa.4.016.us.i.epil, %i.ck ; 2 uses
  %indvars.iv.next26.i.epil = add nuw nsw i64 %indvars.iv25.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2139

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.ch, %._crit_edge.us.i.unr-lcssa ], [ %i.cl, %bb.v ]
  %i.cm = fdiv double %.lcssa, %i.bn
  %i.cn = call double @llvm.round.f64(double %i.cm)
  %i.co = fptosi double %i.cn to i64
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEclERKNS_5RangeE.exit

.lr.ph20.split.i:                                 ; preds = %.lr.ph20.i
  %.not.i.i35 = icmp eq i32 %.05.lcssa.i.i, 0
  %i.cp = fdiv double 0.000000e+00, %i.bn
  %i.cq = call double @llvm.round.f64(double %i.cp)
  %i.cr = fptosi double %i.cq to i64
  %i.cs = select i1 %.not.i.i35, i64 0, i64 %i.cr
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEclERKNS_5RangeE.exit: ; preds = %.lr.ph20.split.i, %._crit_edge.us.i
  %storemerge = phi i64 [ %i.co, %._crit_edge.us.i ], [ %i.cs, %.lr.ph20.split.i ]
  store i64 %storemerge, ptr %i.bk, align 8, !tbaa !91
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108 ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87
  %i.db = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dc = shl i64 %i.db, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.da, ptr align 8 %i.cy, i64 %i.dc, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dd, align 8, !tbaa !176
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36: ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36
  %i.dg = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i37 = icmp eq ptr %i.df, %i.dg
  br i1 %.not6.i.i37, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %bb.ab
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %i.dj = add i64 %i.dh, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i38.preheader
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dr, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ds, %vector.body ]
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load75 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !92
  %i.dr = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ds = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader97

.lr.ph.i.i38.preheader97:                         ; preds = %.lr.ph.i.i38.preheader, %middle.block
  %.08.i.i39.ph = phi ptr [ %i.df, %.lr.ph.i.i38.preheader ], [ %i.do, %middle.block ]
  %.057.i.i40.ph = phi i32 [ 1, %.lr.ph.i.i38.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader97, %.lr.ph.i.i38
  %.08.i.i39 = phi ptr [ %i.dx, %.lr.ph.i.i38 ], [ %.08.i.i39.ph, %.lr.ph.i.i38.preheader97 ] ; 2 uses
  %.057.i.i40 = phi i32 [ %i.dw, %.lr.ph.i.i38 ], [ %.057.i.i40.ph, %.lr.ph.i.i38.preheader97 ]
  %i.dv = load i32, ptr %.08.i.i39, align 4, !tbaa !92
  %i.dw = mul nsw i32 %i.dv, %.057.i.i40          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i39, i64 4 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i41, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38, !llvm.loop !2141

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43: ; preds = %.lr.ph.i.i38, %middle.block, %bb.ab
  %.05.lcssa.i.i42 = phi i32 [ 1, %bb.ab ], [ %i.du, %middle.block ], [ %i.dw, %.lr.ph.i.i38 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i42, ptr %i.dz, align 8, !tbaa !649
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i42, ptr %i.ea, align 4, !tbaa !650
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.eb, align 8, !tbaa !2142
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ec, align 4, !tbaa !2143
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_.exit43
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = ptrtoint ptr %i.ct to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 9223372036854775804
  br i1 %i.ei, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24 ; 5 uses
  store ptr %i.ej, ptr %18, align 8, !tbaa !160
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !172
  %i.en = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !108
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.en, align 4, !tbaa !92
  store i32 %i.eu, ptr %i.ej, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIlldEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ew = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !172
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !654 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.lr.ph20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi82.a = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.at, %vector.body80 ]
  %vec.phi83 = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.au, %vector.body80 ]
  %i.ap = shl i64 %index81, 2
  %next.gep84 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85.a = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !92
  %wide.load86 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = freeze <4 x i32> %wide.load85.a
  %i.as = freeze <4 x i32> %wide.load86
  %i.at = mul <4 x i32> %i.ar, %vec.phi82.a       ; 2 uses
  %i.au = mul <4 x i32> %i.as, %vec.phi83         ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.av, label %middle.block88, label %vector.body80, !llvm.loop !2411

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx89 = mul <4 x i32> %i.au, %i.at
  %i.aw = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx89) ; 2 uses
  %cmp.n90 = icmp eq i64 %i.am, %n.vec79
  br i1 %cmp.n90, label %.lr.ph20.i, label %.lr.ph.i.i.preheader93

.lr.ph.i.i.preheader93:                           ; preds = %.lr.ph.i.i.preheader, %middle.block88
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block88 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.aw, %middle.block88 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader93, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader93 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader93 ]
  %i.ax = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %.fr = freeze i32 %i.ax
  %i.ay = mul i32 %.fr, %.057.i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ag
  br i1 %.not.i.i, label %.lr.ph20.i, label %.lr.ph.i.i, !llvm.loop !2412

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit46, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %i.ef, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit46 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph20.i:                                       ; preds = %.lr.ph.i.i, %middle.block88, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.aw, %middle.block88 ], [ %i.ay, %.lr.ph.i.i ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 8, !tbaa !793
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bc, align 4, !tbaa !794
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bd, align 8, !tbaa !2416
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.be, align 4, !tbaa !2417
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !795, !nonnull !178, !align !202
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 9 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !796, !nonnull !178, !align !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = sext i32 %.05.lcssa.i.i to i64
  %i.bm = icmp sgt i32 %.05.lcssa.i.i, 0
  %i.bn = uitofp i64 %i.bl to float               ; 2 uses
  br i1 %i.bm, label %.lr.ph.us.preheader.i, label %.lr.ph20.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph20.i
  %wide.trip.count28.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count28.i, 7     ; 3 uses
  %i.bo = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.us.preheader.i.new

.lr.ph.us.preheader.i.new:                        ; preds = %.lr.ph.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count28.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.us.preheader.i.new
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %indvars.iv.next26.i.7, %bb.u ] ; 9 uses
  %.sroa.4.016.us.i = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i.new ], [ %i.ct, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !96
  %i.br = fadd float %.sroa.4.016.us.i, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !96
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !96
  %i.bz = fadd float %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !96
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !96
  %i.ch = fadd float %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !96
  %i.cl = fadd float %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load float, ptr %i.cn, align 4, !tbaa !96
  %i.cp = fadd float %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !96
  %i.ct = fadd float %i.cp, %i.cs                 ; 3 uses
  %indvars.iv.next26.i.7 = add nuw nsw i64 %indvars.iv25.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !36

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.preheader.i
  %indvars.iv25.i.epil.init = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next26.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.016.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %i.ct, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv25.i.epil = phi i64 [ %indvars.iv25.i.epil.init, %.epil.preheader ], [ %indvars.iv.next26.i.epil, %bb.v ] ; 2 uses
  %.sroa.4.016.us.i.epil = phi float [ %.sroa.4.016.us.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv25.i.epil
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !96
  %i.cw = fadd float %.sroa.4.016.us.i.epil, %i.cv ; 2 uses
  %indvars.iv.next26.i.epil = add nuw nsw i64 %indvars.iv25.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2413

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.ct, %._crit_edge.us.i.unr-lcssa ], [ %i.cw, %bb.v ]
  %i.cx = fdiv float %.lcssa, %i.bn
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEclERKNS_5RangeE.exit

.lr.ph20.split.i:                                 ; preds = %.lr.ph20.i
  %.not.i.i35 = icmp eq i32 %.05.lcssa.i.i, 0
  %i.cy = fdiv float 0.000000e+00, %i.bn
  %i.cz = select i1 %.not.i.i35, float 0.000000e+00, float %i.cy
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEclERKNS_5RangeE.exit: ; preds = %.lr.ph20.split.i, %._crit_edge.us.i
  %storemerge = phi float [ %i.cx, %._crit_edge.us.i ], [ %i.cz, %.lr.ph20.split.i ]
  store float %storemerge, ptr %i.bk, align 4, !tbaa !96
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !108 ; 2 uses
  %i.dd = icmp eq ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dj = shl i64 %i.di, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dh, ptr align 4 %i.df, i64 %i.dj, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dk, align 8, !tbaa !176
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.dl, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36: ; preds = %bb.z
  %i.dm = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36
  %i.dn = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i37 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not6.i.i37, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %bb.ab
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = ptrtoaddr ptr %i.dm to i64
  %i.dq = add i64 %i.do, -4
  %i.dr = sub i64 %i.dq, %i.dp                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i38.preheader
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2
  %i.dv = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dz, %vector.body ]
  %i.dw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load75 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !92
  %i.dy = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dz = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2414

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dz, %i.dy
  %i.eb = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader97

.lr.ph.i.i38.preheader97:                         ; preds = %.lr.ph.i.i38.preheader, %middle.block
  %.08.i.i39.ph = phi ptr [ %i.dm, %.lr.ph.i.i38.preheader ], [ %i.dv, %middle.block ]
  %.057.i.i40.ph = phi i32 [ 1, %.lr.ph.i.i38.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader97, %.lr.ph.i.i38
  %.08.i.i39 = phi ptr [ %i.ee, %.lr.ph.i.i38 ], [ %.08.i.i39.ph, %.lr.ph.i.i38.preheader97 ] ; 2 uses
  %.057.i.i40 = phi i32 [ %i.ed, %.lr.ph.i.i38 ], [ %.057.i.i40.ph, %.lr.ph.i.i38.preheader97 ]
  %i.ec = load i32, ptr %.08.i.i39, align 4, !tbaa !92
  %i.ed = mul nsw i32 %i.ec, %.057.i.i40          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i39, i64 4 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ee, %i.dn
  br i1 %.not.i.i41, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38, !llvm.loop !2415

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36, %bb.z
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43: ; preds = %.lr.ph.i.i38, %middle.block, %bb.ab
  %.05.lcssa.i.i42 = phi i32 [ 1, %bb.ab ], [ %i.eb, %middle.block ], [ %i.ed, %.lr.ph.i.i38 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i42, ptr %i.eg, align 8, !tbaa !793
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i42, ptr %i.eh, align 4, !tbaa !794
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.ei, align 8, !tbaa !2416
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ej, align 4, !tbaa !2417
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ek, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_.exit43
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.em = ptrtoint ptr %i.dc to i64
  %i.en = ptrtoint ptr %i.da to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp ugt i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.eq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #24 ; 5 uses
  store ptr %i.eq, ptr %18, align 8, !tbaa !160
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !172
  %i.eu = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.ev = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp sgt i64 %i.ey, 4
  br i1 %i.ez, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr align 4 %i.eu, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fa = icmp eq i64 %i.ey, 4
  br i1 %i.fa, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load i32, ptr %i.eu, align 4, !tbaa !92
  store i32 %i.fb, ptr %i.eq, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 %i.ey
  store ptr %i.fc, ptr %i.er, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.fd = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !172
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !798 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2418

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2419

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ee, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2423
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !802
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2424
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2425
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !803, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 9 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !804, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.7, %bb.u ] ; 9 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.cp, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !96
  %i.bn = fadd float %.sroa.3.016.us.i, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !96
  %i.br = fadd float %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !96
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !96
  %i.bz = fadd float %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !96
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !96
  %i.ch = fadd float %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !96
  %i.cl = fadd float %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !96
  %i.cp = fadd float %i.cl, %i.co                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !37

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !96
  %i.cs = fadd float %.sroa.3.016.us.i.epil, %i.cr ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit, label %bb.v, !llvm.loop !2420

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.v, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ], [ %i.cs, %bb.v ]
  store float %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108 ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87
  %i.db = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dc = shl i64 %i.db, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.da, ptr align 4 %i.cy, i64 %i.dc, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dd, align 8, !tbaa !176
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.dg = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.df, %i.dg
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %i.dj = add i64 %i.dh, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dr, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ds, %vector.body ]
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !92
  %i.dr = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ds = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2421

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.df, %.lr.ph.i.i37.preheader ], [ %i.do, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dx, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dw, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dv = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dw = mul nsw i32 %i.dv, %.057.i.i39          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2422

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.du, %middle.block ], [ %i.dw, %.lr.ph.i.i37 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dz, align 8, !tbaa !2423
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.ea, align 4, !tbaa !802
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.eb, align 8, !tbaa !2424
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ec, align 4, !tbaa !2425
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = ptrtoint ptr %i.ct to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 9223372036854775804
  br i1 %i.ei, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24 ; 5 uses
  store ptr %i.ej, ptr %18, align 8, !tbaa !160
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !172
  %i.en = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !108
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.en, align 4, !tbaa !92
  store i32 %i.eu, ptr %i.ej, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ew = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !172
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !806 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
end_hunk_4
begin_hunk_5_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2426

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2427

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2430
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !810
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2431
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !811, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 3 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !812, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bk = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.u ] ; 3 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bx, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !96 ; 3 uses
  %i.bn = fcmp ult float %i.bm, 0.000000e+00
  %i.bo = fneg float %i.bm
  %i.bp = select i1 %i.bn, float %i.bo, float %i.bm
  %i.bq = fadd float %.sroa.3.016.us.i, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !96 ; 3 uses
  %i.bu = fcmp ult float %i.bt, 0.000000e+00
  %i.bv = fneg float %i.bt
  %i.bw = select i1 %i.bu, float %i.bv, float %i.bt
  %i.bx = fadd float %i.bq, %i.bw                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !38

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil.init
  %i.bz = load float, ptr %i.by, align 4, !tbaa !96 ; 3 uses
  %i.ca = fcmp ult float %i.bz, 0.000000e+00
  %i.cb = fneg float %i.bz
  %i.cc = select i1 %i.ca, float %i.cb, float %i.bz
  %i.cd = fadd float %.sroa.3.016.us.i.epil.init, %i.cc
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit: ; preds = %.epil.preheader, %._crit_edge.us.i.unr-lcssa, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  store float %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cj, i64 %i.cn, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !92
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2428

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2429

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2430
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !810
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2431
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.af, !prof !180

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !160
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !172
  %i.dy = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ag, label %bb.ah, !prof !181

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !92
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !172
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !814 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_5
begin_hunk_6_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2433

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2434

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2438
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !818
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2439
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !819, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !820, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !96 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !96 ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !96 ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !96 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !39

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !96 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2435

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %i.cd = call noundef float @sqrtf(float noundef %.lcssa) #23
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi float [ %i.cd, %._crit_edge.us.i ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  store float %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cj, i64 %i.cn, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !92
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2436

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2437

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2438
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !818
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2439
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2440
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !160
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !172
  %i.dy = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !92
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !172
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !822 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_6
begin_hunk_7_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2449

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2450

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.di, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2454
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !834
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2455
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !835, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !836, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !96 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !96 ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !96 ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !96 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !41

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !96 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit, label %bb.v, !llvm.loop !2451

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.v, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  store float %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !108 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cl = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cm = shl i64 %i.cl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ck, ptr align 4 %i.ci, i64 %i.cm, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !176
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.co, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cp = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.cp to i64
  %i.ct = add i64 %i.cr, -4
  %i.cu = sub i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.da, align 4, !tbaa !92
  %i.db = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dc = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !2452

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dc, %i.db
  %i.de = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cp, %.lr.ph.i.i37.preheader ], [ %i.cy, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dh, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dg, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.df = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dg = mul nsw i32 %i.df, %.057.i.i39          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dh, %i.cq
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2453

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.de, %middle.block ], [ %i.dg, %.lr.ph.i.i37 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dj, align 8, !tbaa !2454
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 4, !tbaa !834
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dl, align 8, !tbaa !2455
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dm, align 4, !tbaa !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dp = ptrtoint ptr %i.cf to i64
  %i.dq = ptrtoint ptr %i.cd to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24 ; 5 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !160
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !172
  %i.dx = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dy = load ptr, ptr %i.ce, align 8, !tbaa !108
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 4
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.dx, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ed = icmp eq i64 %i.eb, 4
  br i1 %i.ed, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load i32, ptr %i.dx, align 4, !tbaa !92
  store i32 %i.ee, ptr %i.dt, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.eb
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eg = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !172
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !838 ; 2 uses
  %i.en = sext i32 %i.em to i64
end_hunk_7
begin_hunk_8_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.lr.ph20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi82.a = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.at, %vector.body80 ]
  %vec.phi83 = phi <4 x i32> [ splat (i32 1), %vector.ph78 ], [ %i.au, %vector.body80 ]
  %i.ap = shl i64 %index81, 2
  %next.gep84 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85.a = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !92
  %wide.load86 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = freeze <4 x i32> %wide.load85.a
  %i.as = freeze <4 x i32> %wide.load86
  %i.at = mul <4 x i32> %i.ar, %vec.phi82.a       ; 2 uses
  %i.au = mul <4 x i32> %i.as, %vec.phi83         ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.av, label %middle.block88, label %vector.body80, !llvm.loop !2677

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx89 = mul <4 x i32> %i.au, %i.at
  %i.aw = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx89) ; 2 uses
  %cmp.n90 = icmp eq i64 %i.am, %n.vec79
  br i1 %cmp.n90, label %.lr.ph20.i, label %.lr.ph.i.i.preheader93

.lr.ph.i.i.preheader93:                           ; preds = %.lr.ph.i.i.preheader, %middle.block88
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block88 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.aw, %middle.block88 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader93, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader93 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader93 ]
  %i.ax = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %.fr = freeze i32 %i.ax
  %i.ay = mul i32 %.fr, %.057.i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ag
  br i1 %.not.i.i, label %.lr.ph20.i, label %.lr.ph.i.i, !llvm.loop !2678

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit46, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %i.ef, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit46 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph20.i:                                       ; preds = %.lr.ph.i.i, %middle.block88, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.aw, %middle.block88 ], [ %i.ay, %.lr.ph.i.i ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 8, !tbaa !937
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bc, align 4, !tbaa !938
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bd, align 8, !tbaa !2682
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.be, align 4, !tbaa !2683
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !939, !nonnull !178, !align !202
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 9 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !940, !nonnull !178, !align !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = sext i32 %.05.lcssa.i.i to i64
  %i.bm = icmp sgt i32 %.05.lcssa.i.i, 0
  %i.bn = uitofp i64 %i.bl to double              ; 2 uses
  br i1 %i.bm, label %.lr.ph.us.preheader.i, label %.lr.ph20.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph20.i
  %wide.trip.count28.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count28.i, 7     ; 3 uses
  %i.bo = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.us.preheader.i.new

.lr.ph.us.preheader.i.new:                        ; preds = %.lr.ph.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count28.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.us.preheader.i.new
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %indvars.iv.next26.i.7, %bb.u ] ; 9 uses
  %.sroa.4.016.us.i = phi double [ 0.000000e+00, %.lr.ph.us.preheader.i.new ], [ %i.ct, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !171
  %i.br = fadd double %.sroa.4.016.us.i, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !171
  %i.bv = fadd double %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !171
  %i.bz = fadd double %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !171
  %i.cd = fadd double %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !171
  %i.ch = fadd double %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !171
  %i.cl = fadd double %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !171
  %i.cp = fadd double %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !171
  %i.ct = fadd double %i.cp, %i.cs                ; 3 uses
  %indvars.iv.next26.i.7 = add nuw nsw i64 %indvars.iv25.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !46

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.preheader.i
  %indvars.iv25.i.epil.init = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next26.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.016.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.preheader.i ], [ %i.ct, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv25.i.epil = phi i64 [ %indvars.iv25.i.epil.init, %.epil.preheader ], [ %indvars.iv.next26.i.epil, %bb.v ] ; 2 uses
  %.sroa.4.016.us.i.epil = phi double [ %.sroa.4.016.us.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv25.i.epil
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !171
  %i.cw = fadd double %.sroa.4.016.us.i.epil, %i.cv ; 2 uses
  %indvars.iv.next26.i.epil = add nuw nsw i64 %indvars.iv25.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2679

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.ct, %._crit_edge.us.i.unr-lcssa ], [ %i.cw, %bb.v ]
  %i.cx = fdiv double %.lcssa, %i.bn
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEclERKNS_5RangeE.exit

.lr.ph20.split.i:                                 ; preds = %.lr.ph20.i
  %.not.i.i35 = icmp eq i32 %.05.lcssa.i.i, 0
  %i.cy = fdiv double 0.000000e+00, %i.bn
  %i.cz = select i1 %.not.i.i35, double 0.000000e+00, double %i.cy
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEclERKNS_5RangeE.exit: ; preds = %.lr.ph20.split.i, %._crit_edge.us.i
  %storemerge = phi double [ %i.cx, %._crit_edge.us.i ], [ %i.cz, %.lr.ph20.split.i ]
  store double %storemerge, ptr %i.bk, align 8, !tbaa !171
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !108 ; 2 uses
  %i.dd = icmp eq ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !87
  %i.di = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dj = shl i64 %i.di, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dh, ptr align 8 %i.df, i64 %i.dj, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dk, align 8, !tbaa !176
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.dl, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36: ; preds = %bb.z
  %i.dm = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36
  %i.dn = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i37 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not6.i.i37, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %bb.ab
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = ptrtoaddr ptr %i.dm to i64
  %i.dq = add i64 %i.do, -4
  %i.dr = sub i64 %i.dq, %i.dp                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i38.preheader
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2
  %i.dv = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dz, %vector.body ]
  %i.dw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load75 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !92
  %i.dy = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dz = mul <4 x i32> %wide.load75, %vec.phi74  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2680

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dz, %i.dy
  %i.eb = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38.preheader97

.lr.ph.i.i38.preheader97:                         ; preds = %.lr.ph.i.i38.preheader, %middle.block
  %.08.i.i39.ph = phi ptr [ %i.dm, %.lr.ph.i.i38.preheader ], [ %i.dv, %middle.block ]
  %.057.i.i40.ph = phi i32 [ 1, %.lr.ph.i.i38.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader97, %.lr.ph.i.i38
  %.08.i.i39 = phi ptr [ %i.ee, %.lr.ph.i.i38 ], [ %.08.i.i39.ph, %.lr.ph.i.i38.preheader97 ] ; 2 uses
  %.057.i.i40 = phi i32 [ %i.ed, %.lr.ph.i.i38 ], [ %.057.i.i40.ph, %.lr.ph.i.i38.preheader97 ]
  %i.ec = load i32, ptr %.08.i.i39, align 4, !tbaa !92
  %i.ed = mul nsw i32 %i.ec, %.057.i.i40          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i39, i64 4 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ee, %i.dn
  br i1 %.not.i.i41, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43, label %.lr.ph.i.i38, !llvm.loop !2681

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i36, %bb.z
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43: ; preds = %.lr.ph.i.i38, %middle.block, %bb.ab
  %.05.lcssa.i.i42 = phi i32 [ 1, %bb.ab ], [ %i.eb, %middle.block ], [ %i.ed, %.lr.ph.i.i38 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i42, ptr %i.eg, align 8, !tbaa !937
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i42, ptr %i.eh, align 4, !tbaa !938
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.ei, align 8, !tbaa !2682
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ej, align 4, !tbaa !2683
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ek, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_.exit43
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.em = ptrtoint ptr %i.dc to i64
  %i.en = ptrtoint ptr %i.da to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp ugt i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.eq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #24 ; 5 uses
  store ptr %i.eq, ptr %18, align 8, !tbaa !160
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !172
  %i.eu = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.ev = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp sgt i64 %i.ey, 4
  br i1 %i.ez, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr align 4 %i.eu, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fa = icmp eq i64 %i.ey, 4
  br i1 %i.fa, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load i32, ptr %i.eu, align 4, !tbaa !92
  store i32 %i.fb, ptr %i.eq, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.fc = getelementptr inbounds i8, ptr %i.eq, i64 %i.ey
  store ptr %i.fc, ptr %i.er, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_10ReduceMeanIdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.fd = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !172
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !942 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2684

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2685

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ee, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2689
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !946
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2690
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !947, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 9 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !948, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.7, %bb.u ] ; 9 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.cp, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !171
  %i.bn = fadd double %.sroa.3.016.us.i, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !171
  %i.br = fadd double %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !171
  %i.bv = fadd double %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !171
  %i.bz = fadd double %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !171
  %i.cd = fadd double %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !171
  %i.ch = fadd double %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !171
  %i.cl = fadd double %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load double, ptr %i.cn, align 8, !tbaa !171
  %i.cp = fadd double %i.cl, %i.co                ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !47

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !171
  %i.cs = fadd double %.sroa.3.016.us.i.epil, %i.cr ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit, label %bb.v, !llvm.loop !2686

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.v, %.preheader.lr.ph.i
  %storemerge = phi double [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ], [ %i.cs, %bb.v ]
  store double %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108 ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87
  %i.db = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dc = shl i64 %i.db, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.da, ptr align 8 %i.cy, i64 %i.dc, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dd, align 8, !tbaa !176
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.dg = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.df, %i.dg
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %i.dj = add i64 %i.dh, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dr, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ds, %vector.body ]
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !92
  %i.dr = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ds = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2687

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.df, %.lr.ph.i.i37.preheader ], [ %i.do, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dx, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dw, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dv = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dw = mul nsw i32 %i.dv, %.057.i.i39          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2688

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.du, %middle.block ], [ %i.dw, %.lr.ph.i.i37 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dz, align 8, !tbaa !2689
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.ea, align 4, !tbaa !946
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.eb, align 8, !tbaa !2690
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ec, align 4, !tbaa !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = ptrtoint ptr %i.ct to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 9223372036854775804
  br i1 %i.ei, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24 ; 5 uses
  store ptr %i.ej, ptr %18, align 8, !tbaa !160
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !172
  %i.en = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !108
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.en, align 4, !tbaa !92
  store i32 %i.eu, ptr %i.ej, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ew = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !172
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !950 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
end_hunk_9
begin_hunk_10_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2692

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2693

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2696
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !954
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2697
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2698
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !955, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 3 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !956, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bk = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.u ] ; 3 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bx, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !171 ; 3 uses
  %i.bn = fcmp ult double %i.bm, 0.000000e+00
  %i.bo = fneg double %i.bm
  %i.bp = select i1 %i.bn, double %i.bo, double %i.bm
  %i.bq = fadd double %.sroa.3.016.us.i, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !171 ; 3 uses
  %i.bu = fcmp ult double %i.bt, 0.000000e+00
  %i.bv = fneg double %i.bt
  %i.bw = select i1 %i.bu, double %i.bv, double %i.bt
  %i.bx = fadd double %i.bq, %i.bw                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !48

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil.init
  %i.bz = load double, ptr %i.by, align 8, !tbaa !171 ; 3 uses
  %i.ca = fcmp ult double %i.bz, 0.000000e+00
  %i.cb = fneg double %i.bz
  %i.cc = select i1 %i.ca, double %i.cb, double %i.bz
  %i.cd = fadd double %.sroa.3.016.us.i.epil.init, %i.cc
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit: ; preds = %.epil.preheader, %._crit_edge.us.i.unr-lcssa, %.preheader.lr.ph.i
  %storemerge = phi double [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  store double %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 8 %i.cj, i64 %i.cn, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !92
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2694

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2695

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2696
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !954
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2697
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2698
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.af, !prof !180

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !160
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !172
  %i.dy = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ag, label %bb.ah, !prof !181

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !92
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !172
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !958 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_10
begin_hunk_11_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2699

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2700

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2704
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !962
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2705
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2706
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !963, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !964, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !171 ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !171 ; 2 uses
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bn)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !171 ; 2 uses
  %i.bv = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.br)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !49

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !171 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2701

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %i.cd = call noundef double @sqrt(double noundef %.lcssa) #23
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi double [ %i.cd, %._crit_edge.us.i ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  store double %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 8 %i.cj, i64 %i.cn, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !92
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2702

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2703

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2704
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !962
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2705
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2706
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !160
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !172
  %i.dy = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !92
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !172
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !966 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_11
begin_hunk_12_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !121
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !184
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !179
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !92
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !92
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2715

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2716

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.di, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2720
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !978
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2721
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2722
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !979, !nonnull !178, !align !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !980, !nonnull !178, !align !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !171 ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !171 ; 2 uses
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bn)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !171 ; 2 uses
  %i.bv = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.br)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !51

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !171 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit, label %bb.v, !llvm.loop !2717

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.v, %.preheader.lr.ph.i
  %storemerge = phi double [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  store double %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !108 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cl = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cm = shl i64 %i.cl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ck, ptr align 8 %i.ci, i64 %i.cm, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !176
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.co, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cp = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.cp to i64
  %i.ct = add i64 %i.cr, -4
  %i.cu = sub i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load72 = load <4 x i32>, ptr %i.da, align 4, !tbaa !92
  %i.db = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dc = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !2718

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dc, %i.db
  %i.de = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cp, %.lr.ph.i.i37.preheader ], [ %i.cy, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dh, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dg, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.df = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.dg = mul nsw i32 %i.df, %.057.i.i39          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dh, %i.cq
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2719

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.de, %middle.block ], [ %i.dg, %.lr.ph.i.i37 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dj, align 8, !tbaa !2720
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 4, !tbaa !978
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dl, align 8, !tbaa !2721
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dm, align 4, !tbaa !2722
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dp = ptrtoint ptr %i.cf to i64
  %i.dq = ptrtoint ptr %i.cd to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %.noexc.i.i, label %bb.ag, !prof !180

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24 ; 5 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !160
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !172
  %i.dx = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.dy = load ptr, ptr %i.ce, align 8, !tbaa !108
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 4
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !181

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.dx, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ed = icmp eq i64 %i.eb, 4
  br i1 %i.ed, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load i32, ptr %i.dx, align 4, !tbaa !92
  store i32 %i.ee, ptr %i.dt, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.eb
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eg = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !172
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !982 ; 2 uses
  %i.en = sext i32 %i.em to i64
end_hunk_12
begin_hunk_13_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxINS_6bfloatEffEEE3runERKNS_3MatERS7_St6vectorIiSaIiEEb:bb.a
bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.aa = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.ab = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.ab, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.ac = load i32, ptr %13, align 4, !tbaa !179
  %i.ad = icmp eq i32 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ad, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.af, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ah = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not6.i.i, label %.lr.ph22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.ai, -4
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec74, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77.a = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.as, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.at, %vector.body75 ]
  %i.aq = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80.a = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !92
  %wide.load81 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !92
  %i.as = mul <4 x i32> %wide.load80.a, %vec.phi77.a ; 2 uses
  %i.at = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.au, label %middle.block83, label %vector.body75, !llvm.loop !3243

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.at, %i.as
  %i.av = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.an, %n.vec74
  br i1 %cmp.n85, label %.lr.ph22.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ap, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.aw = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.ax = mul nsw i32 %i.aw, %.057.i.i            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %.lr.ph22.i, label %.lr.ph.i.i, !llvm.loop !3244

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.t ], [ %i.dw, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ec, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph22.i:                                       ; preds = %.lr.ph.i.i, %middle.block83, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.av, %middle.block83 ], [ %i.ax, %.lr.ph.i.i ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 8, !tbaa !3247
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 4, !tbaa !1204
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bc, align 8, !tbaa !3248
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bd, align 4, !tbaa !3249
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !1205, !nonnull !178, !align !202
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 5 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !1206, !nonnull !178, !align !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bk, label %.lr.ph.us.preheader.i, label %.lr.ph22.split.preheader.i

.lr.ph22.split.preheader.i:                       ; preds = %.lr.ph22.i
  %.pre.i = load i16, ptr %i.bg, align 2, !tbaa !1208
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEclERKNS_5RangeE.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph22.i
  %wide.trip.count29.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %i.bl = load i16, ptr %i.bg, align 2, !tbaa !1208
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %i.bo = bitcast i32 %i.bn to float              ; 2 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %i.bp = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.us.preheader.i.new

.lr.ph.us.preheader.i.new:                        ; preds = %.lr.ph.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count29.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.us.preheader.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %indvars.iv.next27.i.1, %bb.u ] ; 3 uses
  %.sroa.3.018.us.i = phi float [ %i.bo, %.lr.ph.us.preheader.i.new ], [ %..i.us.i.1, %bb.u ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !1208
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = bitcast i32 %i.bt to float              ; 2 uses
  %i.bv = fcmp olt float %.sroa.3.018.us.i, %i.bu
  %..i.us.i = select i1 %i.bv, float %i.bu, float %.sroa.3.018.us.i ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1208
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = bitcast i32 %i.ca to float              ; 2 uses
  %i.cc = fcmp olt float %..i.us.i, %i.cb
  %..i.us.i.1 = select i1 %i.cc, float %i.cb, float %..i.us.i ; 3 uses
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !59

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.preheader.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next27.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.018.us.i.epil.init = phi float [ %i.bo, %.lr.ph.us.preheader.i ], [ %..i.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %lcmp.mod96 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i.epil.init
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !1208
  %i.cf = zext i16 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 16
  %i.ch = bitcast i32 %i.cg to float              ; 2 uses
  %i.ci = fcmp olt float %.sroa.3.018.us.i.epil.init, %i.ch
  %..i.us.i.epil = select i1 %i.ci, float %i.ch, float %.sroa.3.018.us.i.epil.init
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %..i.us.i.lcssa = phi float [ %..i.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %..i.us.i.epil, %.epil.preheader ] ; 2 uses
  %i.cj = bitcast float %..i.us.i.lcssa to i32
  %i.ck = call float @llvm.fabs.f32(float %..i.us.i.lcssa)
  %i.cl = bitcast float %i.ck to i32
  %i.cm = icmp samesign ult i32 %i.cl, 2139062272
  %i.cn = select i1 %i.cm, i32 32768, i32 0
  %i.co = add i32 %i.cn, %i.cj
  %i.cp = lshr i32 %i.co, 16
  %i.cq = trunc nuw i32 %i.cp to i16
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEclERKNS_5RangeE.exit: ; preds = %.lr.ph22.split.preheader.i, %._crit_edge.us.i
  %storemerge = phi i16 [ %i.cq, %._crit_edge.us.i ], [ %.pre.i, %.lr.ph22.split.preheader.i ]
  store i16 %storemerge, ptr %i.bj, align 2, !tbaa !1114
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.da = shl i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cy, ptr align 2 %i.cw, i64 %i.da, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.db, align 8, !tbaa !176
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.dc, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.dd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.de = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.dd, %i.de
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = ptrtoaddr ptr %i.dd to i64
  %i.dh = add i64 %i.df, -4
  %i.di = sub i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dk, 9223372036854775800     ; 3 uses
  %i.dl = shl i64 %n.vec, 2
  %i.dm = getelementptr i8, ptr %i.dd, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dq, %vector.body ]
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load70 = load <4 x i32>, ptr %i.do, align 4, !tbaa !92
  %i.dp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dq = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !3245

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dq, %i.dp
  %i.ds = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37.preheader91

.lr.ph.i.i37.preheader91:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.dd, %.lr.ph.i.i37.preheader ], [ %i.dm, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader91, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dv, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader91 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.du, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader91 ]
  %i.dt = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.du = mul nsw i32 %i.dt, %.057.i.i39          ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dv, %i.de
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37, !llvm.loop !3246

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.ds, %middle.block ], [ %i.du, %.lr.ph.i.i37 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dx, align 8, !tbaa !3247
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dy, align 4, !tbaa !1204
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dz, align 8, !tbaa !3248
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ea, align 4, !tbaa !3249
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.eb, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ed = ptrtoint ptr %i.ct to i64
  %i.ee = ptrtoint ptr %i.cr to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = icmp ugt i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %.noexc.i.i, label %bb.af, !prof !180

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24 ; 5 uses
  store ptr %i.eh, ptr %18, align 8, !tbaa !160
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !172
  %i.el = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.em = load ptr, ptr %i.cs, align 8, !tbaa !108
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 4
  br i1 %i.eq, label %bb.ag, label %bb.ah, !prof !181

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.el, i64 %i.ep, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = icmp eq i64 %i.ep, 4
  br i1 %i.er, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.es = load i32, ptr %i.el, align 4, !tbaa !92
  store i32 %i.es, ptr %i.eh, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.et = getelementptr inbounds i8, ptr %i.eh, i64 %i.ep
  store ptr %i.et, ptr %i.ei, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMaxINS_6bfloatEffEEEC2ERKNS_3MatERS7_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eu = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !172
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ey) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !1210 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMinINS_6bfloatEffEEE3runERKNS_3MatERS7_St6vectorIiSaIiEEb:bb.a
bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.aa = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.ab = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.ab, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
  %i.ac = load i32, ptr %13, align 4, !tbaa !179
  %i.ad = icmp eq i32 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ad, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEE, i64 16), ptr %14, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.af, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ah = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not6.i.i, label %.lr.ph22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.ai, -4
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec74, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77.a = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.as, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.at, %vector.body75 ]
  %i.aq = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80.a = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !92
  %wide.load81 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !92
  %i.as = mul <4 x i32> %wide.load80.a, %vec.phi77.a ; 2 uses
  %i.at = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.au, label %middle.block83, label %vector.body75, !llvm.loop !3250

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.at, %i.as
  %i.av = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.an, %n.vec74
  br i1 %cmp.n85, label %.lr.ph22.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ap, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.aw = load i32, ptr %.08.i.i, align 4, !tbaa !92
  %i.ax = mul nsw i32 %i.aw, %.057.i.i            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %.lr.ph22.i, label %.lr.ph.i.i, !llvm.loop !3251

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.t ], [ %i.dw, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ec, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.lr.ph22.i:                                       ; preds = %.lr.ph.i.i, %middle.block83, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.av, %middle.block83 ], [ %i.ax, %.lr.ph.i.i ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 8, !tbaa !3254
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.bb, align 4, !tbaa !1214
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bc, align 8, !tbaa !3255
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bd, align 4, !tbaa !3256
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !1215, !nonnull !178, !align !202
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 5 uses
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !1216, !nonnull !178, !align !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bk, label %.lr.ph.us.preheader.i, label %.lr.ph22.split.preheader.i

.lr.ph22.split.preheader.i:                       ; preds = %.lr.ph22.i
  %.pre.i = load i16, ptr %i.bg, align 2, !tbaa !1208
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEclERKNS_5RangeE.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph22.i
  %wide.trip.count29.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %i.bl = load i16, ptr %i.bg, align 2, !tbaa !1208
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %i.bo = bitcast i32 %i.bn to float              ; 2 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %i.bp = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.us.preheader.i.new

.lr.ph.us.preheader.i.new:                        ; preds = %.lr.ph.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count29.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.us.preheader.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %indvars.iv.next27.i.1, %bb.u ] ; 3 uses
  %.sroa.3.018.us.i = phi float [ %i.bo, %.lr.ph.us.preheader.i.new ], [ %..i.us.i.1, %bb.u ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !1208
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = bitcast i32 %i.bt to float              ; 2 uses
  %i.bv = fcmp ogt float %.sroa.3.018.us.i, %i.bu
  %..i.us.i = select i1 %i.bv, float %i.bu, float %.sroa.3.018.us.i ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1208
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = bitcast i32 %i.ca to float              ; 2 uses
  %i.cc = fcmp ogt float %..i.us.i, %i.cb
  %..i.us.i.1 = select i1 %i.cc, float %i.cb, float %..i.us.i ; 3 uses
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !60

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.preheader.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next27.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.018.us.i.epil.init = phi float [ %i.bo, %.lr.ph.us.preheader.i ], [ %..i.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %lcmp.mod96 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv26.i.epil.init
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !1208
  %i.cf = zext i16 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 16
  %i.ch = bitcast i32 %i.cg to float              ; 2 uses
  %i.ci = fcmp ogt float %.sroa.3.018.us.i.epil.init, %i.ch
  %..i.us.i.epil = select i1 %i.ci, float %i.ch, float %.sroa.3.018.us.i.epil.init
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %..i.us.i.lcssa = phi float [ %..i.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %..i.us.i.epil, %.epil.preheader ] ; 2 uses
  %i.cj = bitcast float %..i.us.i.lcssa to i32
  %i.ck = call float @llvm.fabs.f32(float %..i.us.i.lcssa)
  %i.cl = bitcast float %i.ck to i32
  %i.cm = icmp samesign ult i32 %i.cl, 2139062272
  %i.cn = select i1 %i.cm, i32 32768, i32 0
  %i.co = add i32 %i.cn, %i.cj
  %i.cp = lshr i32 %i.co, 16
  %i.cq = trunc nuw i32 %i.cp to i16
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEclERKNS_5RangeE.exit: ; preds = %.lr.ph22.split.preheader.i, %._crit_edge.us.i
  %storemerge = phi i16 [ %i.cq, %._crit_edge.us.i ], [ %.pre.i, %.lr.ph22.split.preheader.i ]
  store i16 %storemerge, ptr %i.bj, align 2, !tbaa !1114
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.da = shl i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cy, ptr align 2 %i.cw, i64 %i.da, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEE, i64 16), ptr %15, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.db, align 8, !tbaa !176
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.dc, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.z)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.dd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.de = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.dd, %i.de
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = ptrtoaddr ptr %i.dd to i64
  %i.dh = add i64 %i.df, -4
  %i.di = sub i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dk, 9223372036854775800     ; 3 uses
  %i.dl = shl i64 %n.vec, 2
  %i.dm = getelementptr i8, ptr %i.dd, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dq, %vector.body ]
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !92
  %wide.load70 = load <4 x i32>, ptr %i.do, align 4, !tbaa !92
  %i.dp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dq = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !3252

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dq, %i.dp
  %i.ds = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37.preheader91

.lr.ph.i.i37.preheader91:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.dd, %.lr.ph.i.i37.preheader ], [ %i.dm, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader91, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dv, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader91 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.du, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader91 ]
  %i.dt = load i32, ptr %.08.i.i38, align 4, !tbaa !92
  %i.du = mul nsw i32 %i.dt, %.057.i.i39          ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dv, %i.de
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42, label %.lr.ph.i.i37, !llvm.loop !3253

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.ds, %middle.block ], [ %i.du, %.lr.ph.i.i37 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dx, align 8, !tbaa !3254
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dy, align 4, !tbaa !1214
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dz, align 8, !tbaa !3255
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ea, align 4, !tbaa !3256
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.eb, align 4, !tbaa !102
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_.exit42
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ed = ptrtoint ptr %i.ct to i64
  %i.ee = ptrtoint ptr %i.cr to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = icmp ugt i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %.noexc.i.i, label %bb.af, !prof !180

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24 ; 5 uses
  store ptr %i.eh, ptr %18, align 8, !tbaa !160
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !172
  %i.el = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.em = load ptr, ptr %i.cs, align 8, !tbaa !108
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 4
  br i1 %i.eq, label %bb.ag, label %bb.ah, !prof !181

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.el, i64 %i.ep, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = icmp eq i64 %i.ep, 4
  br i1 %i.er, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.es = load i32, ptr %i.el, align 4, !tbaa !92
  store i32 %i.es, ptr %i.eh, align 4, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.et = getelementptr inbounds i8, ptr %i.eh, i64 %i.ep
  store ptr %i.et, ptr %i.ei, align 8, !tbaa !159
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceMinINS_6bfloatEffEEEC2ERKNS_3MatERS7_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eu = load ptr, ptr %18, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !172
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ey) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !1218 ; 2 uses
end_hunk_14
