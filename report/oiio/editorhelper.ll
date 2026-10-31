Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/editorhelper?download=true
inline.NumInlined: 328
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8ultrahdr13resize_bufferImEEvPT_S2_iiiiii:bb.a
  %gep31 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv
  store i64 %i.ab, ptr %gep31, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv.next, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ad = load i64, ptr %gep.1, align 8, !tbaa !18
  %gep31.1 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next
  store i64 %i.ad, ptr %gep31.1, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv.next.1, %i.g
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ae
  %i.af = load i64, ptr %gep.2, align 8, !tbaa !18
  %gep31.2 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.1
  store i64 %i.af, ptr %gep31.2, align 8, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv.next.2, %i.g
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ag
  %i.ah = load i64, ptr %gep.3, align 8, !tbaa !18
  %gep31.3 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.2
  store i64 %i.ah, ptr %gep31.3, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN8ultrahdr19bicubic_interpolateEddddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x double> <double 1.000000e+00, double poison>, double %4, i64 1
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %4, i64 0
  %i.c = fsub contract <2 x double> %i.a, %i.b    ; 2 uses
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.e = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.f = fmul contract <4 x double> %i.e, <double 1.000000e+00, double 3.000000e+00, double 1.000000e+00, double 1.000000e+00> ; 2 uses
  %i.g = shufflevector <4 x double> %i.e, <4 x double> %i.f, <4 x i32> <i32 0, i32 0, i32 5, i32 6>
  %i.h = fmul contract <4 x double> %i.f, %i.g
  %i.i = fmul contract <4 x double> %i.d, %i.h
  %i.j = insertelement <4 x double> poison, double %0, i64 0
  %i.k = insertelement <4 x double> %i.j, double %1, i64 1
  %i.l = insertelement <4 x double> %i.k, double %2, i64 2
  %i.m = insertelement <4 x double> %i.l, double %3, i64 3
  %i.n = fmul contract <4 x double> %i.m, %i.i    ; 4 uses
  %i.o = extractelement <4 x double> %i.n, i64 0
  %i.p = extractelement <4 x double> %i.n, i64 1
  %i.q = fadd contract double %i.o, %i.p
  %i.r = extractelement <4 x double> %i.n, i64 2
  %i.s = fadd contract double %i.r, %i.q
  %i.t = extractelement <4 x double> %i.n, i64 3
  %i.u = fadd contract double %i.t, %i.s
  ret double %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr12resize_imageEP14uhdr_raw_imageii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.ultrahdr::Color", align 4  ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !25
  %i.b = tail call noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef %i.a) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !25
  %i.e = tail call noundef ptr @_ZN8ultrahdr10putPixelFnE12uhdr_img_fmt(i32 noundef %i.d) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.j = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18, !noalias !209 ; 4 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !26, !noalias !209
  %i.l = load i32, ptr %i.g, align 4, !tbaa !27, !noalias !209
  %i.m = load i32, ptr %i.h, align 8, !tbaa !28, !noalias !209
  %i.n = load i32, ptr %i.i, align 4, !tbaa !29, !noalias !209
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %2, i32 noundef %3, i32 noundef 64)
          to label %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !209

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn.pn.pn.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 72) #19, !noalias !209
  br label %common.resume

_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %0, align 8, !tbaa !32, !alias.scope !209
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %3, i64 1
  %i.s = sitofp <2 x i32> %i.r to <2 x double>
  %i.t = load <2 x i32>, ptr %i.p, align 8, !tbaa !8 ; 3 uses
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  %i.v = fdiv contract <2 x double> %i.u, %i.s    ; 2 uses
  %i.w = icmp sgt i32 %3, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = icmp sgt i32 %2, 0
  %i.y = extractelement <2 x i32> %i.t, i64 0
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  %i.aa = extractelement <2 x i32> %i.t, i64 1
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count137 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.ad = extractelement <2 x double> %i.v, i64 1
  %i.ae = extractelement <2 x double> %i.v, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next135, %._crit_edge ] ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = fmul contract double %i.ad, %i.ag
  %i.ai = call contract double @llvm.floor.f64(double %i.ah)
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %spec.select121 = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ab)
  %i.al = select i1 %i.ak, i32 0, i32 %spec.select121 ; 3 uses
  %i.am = add nsw i32 %i.al, 1
  %i.an = icmp slt i32 %i.al, -1
  %i.ao = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ab)
  %narrow128 = select i1 %i.an, i32 0, i32 %i.ao
  %i.ap = sext i32 %narrow128 to i64              ; 2 uses
  %i.aq = sext i32 %i.al to i64                   ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %.preheader, !llvm.loop !207

bb.e:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fmul contract double %i.ae, %i.as       ; 2 uses
  %i.au = call contract double @llvm.floor.f64(double %i.at)
  %i.av = fptosi double %i.au to i32              ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %spec.select = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.z)
  %i.ax = select i1 %i.aw, i32 0, i32 %spec.select ; 4 uses
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = icmp slt i32 %i.ax, -1
  %i.ba = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.z)
  %narrow129 = select i1 %i.az, i32 0, i32 %i.ba
  %i.bb = sext i32 %narrow129 to i64              ; 2 uses
  %i.bc = sext i32 %i.ax to i64                   ; 2 uses
  %i.bd = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bc, i64 noundef %i.aq)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.fca.0.extract14 = extractvalue { <2 x float>, float } %i.bd, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { <2 x float>, float } %i.bd, 1
  %i.be = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bb, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.be, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.be, 1
  %i.bf = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bc, i64 noundef %i.ap)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.bf, 0 ; 2 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.bf, 1
  %i.bg = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bb, i64 noundef %i.ap)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bg, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.06.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0
  %i.bh = fpext contract float %.sroa.06.0.vec.extract to double
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.bi = fpext contract float %.sroa.01.0.vec.extract to double
  %i.bj = sitofp i32 %i.ax to double
  %i.bk = fsub contract double %i.at, %i.bj       ; 6 uses
  %i.bl = fsub contract double 1.000000e+00, %i.bk ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0 ; 2 uses
  %i.bn = insertelement <2 x double> %i.bm, double %i.bk, i64 1
  %i.bo = fmul contract <2 x double> %i.bn, <double 1.000000e+00, double 3.000000e+00> ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul contract <2 x double> %i.bo, %i.bp
  %i.br = fmul contract <2 x double> %i.bp, %i.bq ; 3 uses
  %i.bs = extractelement <2 x double> %i.bo, i64 1
  %i.bt = fmul contract double %i.bk, %i.bs
  %i.bu = fmul contract double %i.bl, %i.bt       ; 2 uses
  %i.bv = fmul contract double %i.bk, %i.bk
  %i.bw = fmul contract double %i.bk, %i.bv       ; 2 uses
  %i.bx = shufflevector <2 x float> %.fca.0.extract14, <2 x float> %.fca.0.extract8, <2 x i32> <i32 0, i32 2>
  %i.by = fpext contract <2 x float> %i.bx to <2 x double>
  %i.bz = fmul contract <2 x double> %i.br, %i.by ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x double> %i.bz, %shift
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cb = fmul contract double %i.bu, %i.bh
  %i.cc = fadd contract double %i.ca, %i.cb
  %i.cd = fmul contract double %i.bw, %i.bi
  %i.ce = fadd contract double %i.cc, %i.cd
  %i.cf = fptrunc contract double %i.ce to float
  store float %i.cf, ptr %4, align 4, !tbaa !10
  %i.cg = load i32, ptr %1, align 8, !tbaa !25
  %.not116 = icmp eq i32 %i.cg, 2
  br i1 %.not116, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bg, 1
  %i.ch = insertelement <2 x float> %.fca.0.extract8, float %.fca.1.extract15, i64 0
  %i.ci = fpext contract <2 x float> %i.ch to <2 x double>
  %i.cj = insertelement <2 x float> %.fca.0.extract14, float %.fca.1.extract9, i64 0
  %i.ck = fpext contract <2 x float> %i.cj to <2 x double>
  %i.cl = insertelement <2 x float> %.fca.0.extract2, float %.fca.1.extract3, i64 0
  %i.cm = fpext contract <2 x float> %i.cl to <2 x double>
  %i.cn = insertelement <2 x float> %.fca.0.extract, float %.fca.1.extract, i64 0
  %i.co = fpext contract <2 x float> %i.cn to <2 x double>
  %i.cp = fmul contract <2 x double> %i.br, %i.ci
  %i.cq = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = fmul contract <2 x double> %i.cq, %i.ck
  %i.cs = fadd contract <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul contract <2 x double> %i.cu, %i.cm
  %i.cw = fadd contract <2 x double> %i.cs, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul contract <2 x double> %i.cy, %i.co
  %i.da = fadd contract <2 x double> %i.cw, %i.cz
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = fptrunc contract <2 x double> %i.db to <2 x float>
  store <2 x float> %i.dc, ptr %i.ac, align 4, !tbaa !10
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  invoke void %i.e(ptr noundef nonnull %i.j, i64 noundef %indvars.iv, i64 noundef %indvars.iv134, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !208

bb.n:                                             ; preds = %bb.l
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.k ], [ %i.de, %bb.n ]
  call void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  br label %common.resume

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.sink.split, %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %.preheader.lr.ph
  ret void
}

declare noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN8ultrahdr10putPixelFnE12uhdr_img_fmt(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #19
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #19
  br label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit

_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8ultrahdr18uhdr_mirror_effectC2E21uhdr_mirror_direction(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 12), (16, 48)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8ultrahdr18uhdr_mirror_effectE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN8ultrahdr13mirror_bufferIhEEvPT_S2_iiii21uhdr_mirror_direction, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN8ultrahdr13mirror_bufferItEEvPT_S2_iiii21uhdr_mirror_direction, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN8ultrahdr13mirror_bufferIjEEvPT_S2_iiii21uhdr_mirror_direction, ptr %i.d, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN8ultrahdr13mirror_bufferImEEvPT_S2_iiii21uhdr_mirror_direction, ptr %i.e, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8ultrahdr18uhdr_rotate_effectC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 12), (16, 48)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8ultrahdr18uhdr_rotate_effectE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN8ultrahdr23rotate_buffer_clockwiseIhEEvPT_S2_iiiii, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN8ultrahdr23rotate_buffer_clockwiseItEEvPT_S2_iiiii, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN8ultrahdr23rotate_buffer_clockwiseIjEEvPT_S2_iiiii, ptr %i.d, align 8, !tbaa !215
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN8ultrahdr23rotate_buffer_clockwiseImEEvPT_S2_iiiii, ptr %i.e, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN8ultrahdr16uhdr_crop_effectC2Eiiii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8ultrahdr16uhdr_crop_effectE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.d, align 4, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN8ultrahdr11crop_bufferIhEEvPT_S2_iiiiii, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN8ultrahdr11crop_bufferItEEvPT_S2_iiiiii, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN8ultrahdr11crop_bufferIjEEvPT_S2_iiiiii, ptr %i.g, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN8ultrahdr11crop_bufferImEEvPT_S2_iiiiii, ptr %i.h, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ultrahdr11crop_bufferIhEEvPT_S2_iiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %6 to i64                       ; 3 uses
  %i.c = sext i32 %3 to i64                       ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 3 uses
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = sext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.f ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %7, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i32 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.h = mul nsw i64 %indvars.iv.epil.init, %i.c
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = add nsw i64 %indvars.iv.epil.init, %i.d
  %i.k = mul nsw i64 %i.j, %i.e
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %gep.epil, i64 %i.b, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.l = mul nsw i64 %indvars.iv, %i.c
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = add nsw i64 %indvars.iv, %i.d
  %i.o = mul nsw i64 %i.n, %i.e
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %gep, i64 %i.b, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = mul nsw i64 %indvars.iv.next, %i.c
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = add nsw i64 %indvars.iv.next, %i.d
  %i.s = mul nsw i64 %i.r, %i.e
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %gep.1, i64 %i.b, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !219
}

end_hunk_0
