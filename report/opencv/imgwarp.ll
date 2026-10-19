Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv9warpPolarERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IfEEdi:bb.a
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  store i64 %2, ptr %6, align 8
  store <2 x float> %3, ptr %7, align 8
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = lshr i64 %2, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 1                     ; 2 uses
  %or.cond = select i1 %i.e, i1 %i.i, i1 false
  %i.j = extractelement <2 x float> %3, i64 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = insertelement <2 x double> poison, double %4, i64 0
  %i.l = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.k)
  store i32 %i.l, ptr %6, align 8, !tbaa !116
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sitofp i32 %i.d to double
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink181 = phi double [ %i.m, %bb.d ], [ %4, %bb.b ]
  %i.n = fmul double %.sink181, f0x400921FB54442D18
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.o)
  store i32 %i.p, ptr %i.f, align 4, !tbaa !117
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  %.sroa.041.0.copyload = load i64, ptr %6, align 8 ; 12 uses
  %i.q = trunc i64 %.sroa.041.0.copyload to i32   ; 9 uses
  %i.r = lshr i64 %.sroa.041.0.copyload, 32       ; 3 uses
  %i.s = trunc nuw i64 %i.r to i32                ; 3 uses
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.041.0.copyload, i32 noundef 5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %9, i64 %.sroa.041.0.copyload, i32 noundef 5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = lshr i32 %5, 8                           ; 3 uses
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 1
  store i8 %i.v, ptr %i.a, align 1, !tbaa !48
  %i.w = and i32 %5, 16
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %i.q, 1
  %i.y = icmp slt i32 %i.s, 1
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  br i1 %i.z, label %bb.j, label %bb.o

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv9warpPolarERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IfEEdi, ptr noundef nonnull @.str.1, i32 noundef 3087) #27
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !53
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn89 = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bt

bb.o:                                             ; preds = %bb.h
  %i.ai = uitofp nneg i32 %i.s to double
  %i.aj = fdiv nnan double f0x401921FB54442D18, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 1, i32 noundef %i.q, i32 noundef 5)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 10 uses
  %i.am = trunc i32 %i.t to i1
  br i1 %i.am, label %.lr.ph136.preheader, label %.lr.ph133.preheader

.lr.ph136.preheader:                              ; preds = %bb.p
  %i.an = call double @log(double noundef %4) #24
  %i.ao = uitofp nneg i32 %i.q to double
  %i.ap = fdiv double %i.an, %i.ao
  %wide.trip.count156 = and i64 %.sroa.041.0.copyload, 2147483647
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %indvars.iv153 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next154, %.lr.ph136 ] ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.ar = uitofp nneg i32 %i.aq to double
  %i.as = fmul double %i.ap, %i.ar
  %i.at = call double @exp(double noundef %i.as) #24
  %i.au = fadd double %i.at, -1.000000e+00
  %i.av = fptrunc double %i.au to float
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv153
  store float %i.av, ptr %i.aw, align 4, !tbaa !52
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %.lr.ph139.us.preheader, label %.lr.ph136, !llvm.loop !1901

bb.q:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph133.preheader:                              ; preds = %bb.p
  %i.ay = uitofp nneg i32 %i.q to double
  %i.az = fdiv double %4, %i.ay                   ; 2 uses
  %wide.trip.count151 = and i64 %.sroa.041.0.copyload, 2147483647 ; 3 uses
  %min.iters.check185 = icmp samesign ult i64 %wide.trip.count151, 4
  br i1 %min.iters.check185, label %.lr.ph133.preheader228, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph133.preheader
  %n.vec187 = and i64 %.sroa.041.0.copyload, 2147483644 ; 3 uses
  %broadcast.splatinsert188 = insertelement <4 x double> poison, double %i.az, i64 0
  %broadcast.splat189 = shufflevector <4 x double> %broadcast.splatinsert188, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body190 ] ; 2 uses
  %vec.ind192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph186 ], [ %vec.ind.next194, %vector.body190 ] ; 2 uses
  %i.ba = uitofp nneg <4 x i32> %vec.ind192 to <4 x double>
  %i.bb = fmul <4 x double> %broadcast.splat189, %i.ba
  %i.bc = fptrunc <4 x double> %i.bb to <4 x float>
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index191
  store <4 x float> %i.bc, ptr %i.bd, align 4, !tbaa !52
  %index.next193 = add nuw i64 %index191, 4       ; 2 uses
  %vec.ind.next194 = add <4 x i32> %vec.ind192, splat (i32 4)
  %i.be = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.be, label %middle.block195, label %vector.body190, !llvm.loop !1902

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %wide.trip.count151, %n.vec187
  br i1 %cmp.n196, label %.lr.ph139.us.preheader, label %.lr.ph133.preheader228

.lr.ph133.preheader228:                           ; preds = %.lr.ph133.preheader, %middle.block195
  %indvars.iv148.ph = phi i64 [ 0, %.lr.ph133.preheader ], [ %n.vec187, %middle.block195 ]
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader228, %.lr.ph133
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.lr.ph133 ], [ %indvars.iv148.ph, %.lr.ph133.preheader228 ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv148 to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %i.bh = fmul double %i.az, %i.bg
  %i.bi = fptrunc double %i.bh to float
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv148
  store float %i.bi, ptr %i.bj, align 4, !tbaa !52
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %.lr.ph139.us.preheader, label %.lr.ph133, !llvm.loop !1903

.lr.ph139.us.preheader:                           ; preds = %.lr.ph133, %.lr.ph136, %middle.block195
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !73 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15 ; 4 uses
  %wide.trip.count162 = and i64 %.sroa.041.0.copyload, 2147483647 ; 5 uses
  %i.bs = fpext <2 x float> %3 to <2 x double>    ; 5 uses
  %i.bt = add nsw i64 %i.r, -1                    ; 2 uses
  %i.bu = mul i64 %i.bn, %i.bt
  %i.bv = shl nuw nsw i64 %wide.trip.count162, 2  ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bl, i64 %i.bu
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.bv ; 2 uses
  %i.bx = mul i64 %i.br, %i.bt
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx
  %scevgep198 = getelementptr i8, ptr %i.by, i64 %i.bv ; 2 uses
  %scevgep199 = getelementptr i8, ptr %i.al, i64 %i.bv ; 2 uses
  %min.iters.check211 = icmp samesign ult i64 %wide.trip.count162, 8
  %bound0 = icmp ult ptr %i.bl, %scevgep198
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bz = or i64 %i.br, %i.bn
  %i.ca = icmp slt i64 %i.bz, 0
  %i.cb = or i1 %found.conflict, %i.ca
  %bound0201 = icmp ult ptr %i.bl, %scevgep199
  %bound1202 = icmp ult ptr %i.al, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %stride.check204 = icmp slt i64 %i.bn, 0
  %34 = or i1 %found.conflict203, %stride.check204
  %conflict.rdx = or i1 %i.cb, %34
  %bound0205 = icmp ult ptr %i.bp, %scevgep199
  %bound1206 = icmp ult ptr %i.al, %scevgep198
  %found.conflict207 = and i1 %bound0205, %bound1206
  %stride.check208 = icmp slt i64 %i.br, 0
  %35 = or i1 %found.conflict207, %stride.check208
  %conflict.rdx209 = or i1 %conflict.rdx, %35
  %n.vec213 = and i64 %.sroa.041.0.copyload, 2147483644 ; 3 uses
  %broadcast.splat219.a = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat221 = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n226 = icmp eq i64 %wide.trip.count162, %n.vec213
  %xtraiter = and i64 %.sroa.041.0.copyload, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph139.us

.lr.ph139.us:                                     ; preds = %.lr.ph139.us.preheader, %._crit_edge140.us
  %indvars.iv164 = phi i64 [ 0, %.lr.ph139.us.preheader ], [ %indvars.iv.next165, %._crit_edge140.us ] ; 4 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv164 to i32
  %i.cd = uitofp nneg i32 %i.cc to double
  %i.ce = fmul double %i.aj, %i.cd                ; 2 uses
  %i.cf = call double @cos(double noundef %i.ce) #24 ; 4 uses
  %i.cg = call double @sin(double noundef %i.ce) #24 ; 4 uses
  %i.ch = mul i64 %i.bn, %indvars.iv164
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch ; 4 uses
  %i.cj = mul i64 %i.br, %indvars.iv164
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cj ; 4 uses
  %brmerge = select i1 %min.iters.check211, i1 true, i1 %conflict.rdx209
  br i1 %brmerge, label %scalar.ph210.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph139.us
  %broadcast.splatinsert214.a = insertelement <4 x double> poison, double %i.cf, i64 0
  %broadcast.splat215.a = shufflevector <4 x double> %broadcast.splatinsert214.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <4 x double> poison, double %i.cg, i64 0
  %broadcast.splat217 = shufflevector <4 x double> %broadcast.splatinsert216, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph212
  %index223 = phi i64 [ 0, %vector.ph212 ], [ %index.next224, %vector.body222 ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index223
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !52, !alias.scope !1915
  %i.cm = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.cn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %broadcast.splat215.a, <4 x double> %broadcast.splat219.a)
  %i.co = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %broadcast.splat217, <4 x double> %broadcast.splat221)
  %i.cp = fptrunc <4 x double> %i.cn to <4 x float>
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index223
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !52, !alias.scope !1916, !noalias !1917
  %i.cr = fptrunc <4 x double> %i.co to <4 x float>
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index223
  store <4 x float> %i.cr, ptr %i.cs, align 4, !tbaa !52, !alias.scope !1918, !noalias !1915
  %index.next224 = add nuw i64 %index223, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next224, %n.vec213
  br i1 %i.ct, label %middle.block225, label %vector.body222, !llvm.loop !1908

middle.block225:                                  ; preds = %vector.body222
  br i1 %cmp.n226, label %._crit_edge140.us, label %scalar.ph210.preheader

scalar.ph210.preheader:                           ; preds = %.lr.ph139.us, %middle.block225
  %indvars.iv159.ph = phi i64 [ %n.vec213, %middle.block225 ], [ 0, %.lr.ph139.us ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv159.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph210.prol.loopexit, label %scalar.ph210.prol

scalar.ph210.prol:                                ; preds = %scalar.ph210.preheader
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv159.ph
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !52
  %i.cw = fpext float %i.cv to double
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv159.ph
  %i.cy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cg, i64 1
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.db, <2 x double> %i.bs)
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float> ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  store float %i.de, ptr %i.cx, align 4, !tbaa !52
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv159.ph
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  store float %i.dg, ptr %i.df, align 4, !tbaa !52
  %indvars.iv.next160.prol = or disjoint i64 %indvars.iv159.ph, 1
  br label %scalar.ph210.prol.loopexit

scalar.ph210.prol.loopexit:                       ; preds = %scalar.ph210.prol, %scalar.ph210.preheader
  %indvars.iv159.unr = phi i64 [ %indvars.iv159.ph, %scalar.ph210.preheader ], [ %indvars.iv.next160.prol, %scalar.ph210.prol ]
  %i.dh = icmp eq i64 %wide.trip.count162, %.neg
  br i1 %i.dh, label %._crit_edge140.us, label %scalar.ph210.preheader.new

scalar.ph210.preheader.new:                       ; preds = %scalar.ph210.prol.loopexit
  %i.di = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.cg, i64 1
  %i.dk = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.cg, i64 1
  br label %scalar.ph210

scalar.ph210:                                     ; preds = %scalar.ph210, %scalar.ph210.preheader.new
  %indvars.iv159 = phi i64 [ %indvars.iv159.unr, %scalar.ph210.preheader.new ], [ %indvars.iv.next160.1, %scalar.ph210 ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv159
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = fpext float %i.dn to double
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv159
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dj, <2 x double> %i.bs)
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float> ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  store float %i.du, ptr %i.dp, align 4, !tbaa !52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv159
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  store float %i.dw, ptr %i.dv, align 4, !tbaa !52
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next160
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !52
  %i.dz = fpext float %i.dy to double
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next160
  %i.eb = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.dl, <2 x double> %i.bs)
  %i.ee = fptrunc <2 x double> %i.ed to <2 x float> ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  store float %i.ef, ptr %i.ea, align 4, !tbaa !52
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next160
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  store float %i.eh, ptr %i.eg, align 4, !tbaa !52
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %exitcond163.not.1 = icmp eq i64 %indvars.iv.next160.1, %wide.trip.count162
  br i1 %exitcond163.not.1, label %._crit_edge140.us, label %scalar.ph210, !llvm.loop !1909

._crit_edge140.us:                                ; preds = %scalar.ph210.prol.loopexit, %scalar.ph210, %middle.block225
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.r
  br i1 %exitcond168.not, label %._crit_edge144, label %.lr.ph139.us, !llvm.loop !1910

._crit_edge144:                                   ; preds = %._crit_edge140.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.ei, align 8, !tbaa !116
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.ej, align 4, !tbaa !117
  store i32 16842752, ptr %13, align 8, !tbaa !94
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %i.ek, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.el, align 8, !tbaa !116
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.em, align 4, !tbaa !117
  store i32 16842752, ptr %14, align 8, !tbaa !94
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %9, ptr %i.en, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.eo = and i32 %5, 8
  %.not85 = icmp eq i32 %i.eo, 0
  %i.ep = select i1 %.not85, i32 5, i32 0
  %i.eq = and i32 %5, 7
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %i.eq, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %._crit_edge144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bs

bb.s:                                             ; preds = %._crit_edge144
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.s ], [ %i.ax, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bt

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.es = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.v
  %i.et = icmp eq i32 %i.es, 65536
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !64, !noalias !1919
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.ev)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.aa

bb.x:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.aa

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.w, %bb.x
  %i.ew = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.y unwind label %bb.ab      ; 2 uses
end_hunk_0
