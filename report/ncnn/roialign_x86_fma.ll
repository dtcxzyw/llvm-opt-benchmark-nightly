Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign_x86_fma?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
.noexc57:                                         ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48
  %i.ep = shl nuw nsw i64 %i.en, 5
  %i.eq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #15 ; 5 uses
  store ptr %i.eq, ptr %5, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.er, ptr %i.es, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.eq, i8 0, i64 32, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.eu = add nsw i64 %i.en, -1                   ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.loopexit82, label %bb.o

bb.o:                                             ; preds = %.noexc57
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.eu, 5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i.i.i.i.i50 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i.i51:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i51, %bb.o
  %.06.i.i.i.i.i.i.i.i.i52 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i51 ], [ %i.et, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.06.i.i.i.i.i.i.i.i.i52, ptr noundef nonnull align 4 dereferenceable(32) %i.eq, i64 32, i1 false), !tbaa.struct !63
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i52, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.ex, %i.ew
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %.loopexit82, label %.lr.ph.i.i.i.i.i.i.i.i.i51, !llvm.loop !50

.loopexit82:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i51, %.noexc57, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55
  %.0.i.i.i.i.i54 = phi ptr [ null, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55 ], [ %i.et, %.noexc57 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i51 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i54, ptr %i.ey, align 8, !tbaa !64
  %i.ez = load i32, ptr %i.y, align 4, !tbaa !33
  %i.fa = load i32, ptr %i.w, align 8, !tbaa !32
  %i.fb = extractelement <2 x float> %i.bl, i64 0
  %i.fc = extractelement <2 x float> %i.bl, i64 1
  call void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %i.p, i32 noundef %i.n, i32 noundef %i.ez, i32 noundef %i.fa, i32 noundef %i.eb, i32 noundef %i.ec, float noundef nofpclass(nan inf) %i.fc, float noundef nofpclass(nan inf) %i.fb, float noundef nofpclass(nan inf) %i.bq, float noundef nofpclass(nan inf) %i.bp, i32 noundef %i.eb, i32 noundef %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !65
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.fe)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %5, ptr nonnull %i.j)
  %i.ff = load ptr, ptr %5, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60, label %bb.p

bb.p:                                             ; preds = %.loopexit82
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !62
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #13
  br label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60: ; preds = %.loopexit82, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60, %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.q
  %.035 = phi i32 [ 0, %bb.q ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.035
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn16ROIAlign_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn16ROIAlign_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !67
  ret void
}

declare void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef nofpclass(nan inf) %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge152.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = sitofp fast i32 %0 to float              ; 2 uses
  %i.d = sitofp fast i32 %1 to float              ; 2 uses
  %i.e = icmp sgt i32 %8, 0
  %i.f = uitofp nneg i32 %8 to float              ; 2 uses
  %i.g = add nsw i32 %1, -1                       ; 2 uses
  %i.h = add nsw i32 %0, -1
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge152.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.i = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat171 = shufflevector <4 x float> %broadcast.splatinsert170, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0151 = phi i32 [ %.2.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.077150 = phi i32 [ %i.n, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.k = uitofp ninf nsz nneg i32 %.077150 to float
  %i.l = fmul fast float %6, %i.k
  %i.m = fadd fast float %i.l, %4
  %.sroa.speculated127 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.m, float 0.000000e+00)
  %.sroa.speculated123 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated127, float %i.c) ; 2 uses
  %i.n = add nuw nsw i32 %.077150, 1              ; 3 uses
  %i.o = uitofp ninf nsz nneg i32 %i.n to float
  %i.p = fmul fast float %6, %i.o
  %i.q = fadd fast float %i.p, %4
  %.sroa.speculated111 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.q, float 0.000000e+00)
  %.sroa.speculated107 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated111, float %i.c)
  %i.r = fsub fast float %.sroa.speculated107, %.sroa.speculated123
  %i.s = tail call fast nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.r)
  br label %bb.b

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

.loopexit.loopexit:                               ; preds = %._crit_edge.us
  %i.t = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %.2.lcssa = phi i32 [ %.1149, %bb.d ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  %exitcond156.not = icmp eq i32 %i.x, %3
  br i1 %exitcond156.not, label %._crit_edge, label %bb.b, !llvm.loop !68

._crit_edge:                                      ; preds = %.loopexit
  %exitcond157.not = icmp eq i32 %i.n, %2
  br i1 %exitcond157.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !69

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.1149 = phi i32 [ %.0151, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %.078148 = phi i32 [ 0, %.preheader ], [ %i.x, %.loopexit ] ; 2 uses
  %i.u = uitofp ninf nsz nneg i32 %.078148 to float
  %i.v = fmul fast float %7, %i.u
  %i.w = fadd fast float %i.v, %5
  %i.x = add nuw nsw i32 %.078148, 1              ; 3 uses
  %.sroa.speculated119 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.w, float 0.000000e+00)
  %.sroa.speculated115 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated119, float %i.d) ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = uitofp ninf nsz nneg i32 %i.x to float
  %i.z = fmul fast float %7, %i.y
  %i.aa = fadd fast float %i.z, %5
  %.sroa.speculated103 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aa, float 0.000000e+00)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated103, float %i.d)
  %i.ab = fsub fast float %.sroa.speculated, %.sroa.speculated115
  %i.ac = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in = phi float [ %i.s, %bb.c ], [ %i.f, %bb.b ]
  %i.ad = phi fast float [ %i.ac, %bb.c ], [ %i.f, %bb.b ]
  %i.ae = fptosi float %.in to i32                ; 3 uses
  %i.af = fptosi float %i.ad to i32               ; 5 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  %i.ah = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph144.split.us, label %.loopexit

.lr.ph144.split.us:                               ; preds = %bb.d
  %i.ai = uitofp nneg i32 %i.af to float          ; 2 uses
  %i.aj = uitofp nneg i32 %i.ae to float
  %i.ak = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.al = sext i32 %.1149 to i64
  %i.am = fdiv fast float 1.000000e+00, %i.aj
  %i.an = zext nneg i32 %i.af to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  %n.vec = and i64 %i.an, 2147483644              ; 4 uses
  %10 = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert172 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat173 = shufflevector <4 x float> %broadcast.splatinsert172, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %.sroa.speculated115, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat173
  %cmp.n = icmp eq i64 %n.vec, %i.an
  %i.ap = fdiv fast float 1.000000e+00, %i.ai
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph144.split.us
  %.2142.us = phi i64 [ %i.al, %.lr.ph144.split.us ], [ %indvars.iv.next.lcssa, %._crit_edge.us ] ; 3 uses
  %.079141.us = phi i32 [ 0, %.lr.ph144.split.us ], [ %i.dp, %._crit_edge.us ] ; 2 uses
  %i.aq = uitofp ninf nsz nneg i32 %.079141.us to float
  %i.ar = fadd fast float %i.aq, 5.000000e-01
  %i.as = fmul fast float %6, %i.ar
  %i.at = fmul fast float %i.as, %i.am
  %i.au = fadd fast float %i.at, %.sroa.speculated123 ; 3 uses
  %i.av = fptosi float %i.au to i32               ; 3 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  %i.ax = sitofp fast i32 %i.aw to float
  %i.ay = sitofp fast i32 %i.av to float
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.au, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ay, i64 1
  %i.bd = fsub fast <2 x float> %i.ba, %i.bc
  %.not95.us = icmp slt i32 %i.aw, %0
  %.084.us = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.h)
  %i.be = insertelement <2 x i1> poison, i1 %.not95.us, i64 0
  %i.bf = shufflevector <2 x i1> %i.be, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bg = select <2 x i1> %i.bf, <2 x float> %i.bd, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bi = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.bj = insertelement <2 x i32> %i.bi, i32 %.084.us, i64 1
  %i.bk = mul nsw <2 x i32> %i.j, %i.bj           ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %11 = add i64 %.2142.us, %n.vec                 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat165 = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat167 = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat169 = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.bl = getelementptr [32 x i8], ptr %i.ak, i64 %.2142.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bm = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bn = fadd fast <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fmul fast <4 x float> %broadcast.splat171, %i.bn
  %i.bp = fmul fast <4 x float> %i.bo, %i.ao
  %i.bq = fadd fast <4 x float> %i.bp, %broadcast.splat175 ; 3 uses
  %i.br = fptosi <4 x float> %i.bq to <4 x i32>   ; 4 uses
  %i.bs = add nsw <4 x i32> %i.br, splat (i32 1)  ; 3 uses
  %i.bt = sitofp fast <4 x i32> %i.bs to <4 x float>
  %i.bu = fsub fast <4 x float> %i.bt, %i.bq
  %i.bv = sitofp fast <4 x i32> %i.br to <4 x float>
  %i.bw = fsub fast <4 x float> %i.bq, %i.bv
  %i.bx = icmp slt <4 x i32> %i.bs, %broadcast.splat177 ; 2 uses
  %i.by = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bs, <4 x i32> %broadcast.splat179) ; 2 uses
  %i.bz = select nsz <4 x i1> %i.bx, <4 x float> %i.bu, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ca = select nsz <4 x i1> %i.bx, <4 x float> %i.bw, <4 x float> zeroinitializer ; 2 uses
  %i.cb = add nsw <4 x i32> %broadcast.splat167, %i.br
  %i.cc = add nsw <4 x i32> %i.by, %broadcast.splat167
  %i.cd = add nsw <4 x i32> %broadcast.splat169, %i.br
  %i.ce = add nsw <4 x i32> %i.by, %broadcast.splat169
  %i.cf = fmul fast <4 x float> %i.bz, %broadcast.splat
  %i.cg = fmul fast <4 x float> %i.ca, %broadcast.splat
  %i.ch = fmul fast <4 x float> %i.bz, %broadcast.splat165
  %i.ci = fmul fast <4 x float> %i.ca, %broadcast.splat165
  %i.cj = getelementptr [32 x i8], ptr %i.bl, i64 %index
  %.uncasted = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted181 = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cl = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted182 = shufflevector <8 x i32> %.uncasted, <8 x i32> %.uncasted181, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cm = bitcast <16 x i32> %.uncasted182 to <16 x float>
  %i.cn = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.cm, <16 x float> %i.cn, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cj, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %.2142.us, %.lr.ph.us ], [ %11, %middle.block ]
  %.086139.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %10, %middle.block ]
  %i.cp = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.086139.us = phi i32 [ %i.do, %scalar.ph ], [ %.086139.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cq = uitofp ninf nsz nneg i32 %.086139.us to float
  %i.cr = fadd fast float %i.cq, 5.000000e-01
  %i.cs = fmul fast float %7, %i.cr
  %i.ct = fmul fast float %i.cs, %i.ap
  %i.cu = fadd fast float %i.ct, %.sroa.speculated115 ; 3 uses
  %i.cv = fptosi float %i.cu to i32               ; 3 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 3 uses
  %i.cx = sitofp fast i32 %i.cw to float
  %i.cy = sitofp fast i32 %i.cv to float
  %.not.us = icmp slt i32 %i.cw, %1
  %.085.us = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.da = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %.085.us, i64 1
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dd = add nsw <4 x i32> %i.cp, %i.dc
  store <4 x i32> %i.dd, ptr %i.cz, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cu, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cy, i64 1
  %i.di = fsub fast <2 x float> %i.df, %i.dh
  %i.dj = insertelement <2 x i1> poison, i1 %.not.us, i64 0
  %i.dk = shufflevector <2 x i1> %i.dj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dl = select <2 x i1> %i.dk, <2 x float> %i.di, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dn = fmul fast <4 x float> %i.dm, %i.bh
  store <4 x float> %i.dn, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !36
  %i.do = add nuw nsw i32 %.086139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !71

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %11, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %i.dp = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.dp, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %.lr.ph.us, !llvm.loop !72
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.h = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34, !noalias !83
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !83
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !83
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !34, !noalias !84
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !84
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !84
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !16
  %i.ae = load i32, ptr %11, align 4, !tbaa !16
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !37  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.an = insertelement <2 x i1> poison, i1 %i.aj, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.al, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.064164 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.065163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.067162 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.at = uitofp ninf nsz nneg i32 %.064164 to float
  %i.au = add nuw nsw i32 %.064164, 1             ; 3 uses
  %i.av = uitofp ninf nsz nneg i32 %i.au to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %i.ac
  %exitcond180.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !79

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.166159 = phi i32 [ %.065163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !36  ; 2 uses
  %i.ay = load float, ptr %7, align 4, !tbaa !36  ; 2 uses
  %i.az = load float, ptr %8, align 4, !tbaa !36  ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.bb = uitofp ninf nsz nneg i32 %i.ba to float
  %i.bc = load float, ptr %9, align 4, !tbaa !36  ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %i.be = uitofp ninf nsz nneg i32 %i.bd to float
  %i.bf = fmul fast float %i.ay, %i.at
  %i.bg = fmul fast float %i.bc, %i.bb
  %i.bh = fadd fast float %i.bf, %i.ax
  %i.bi = fadd fast float %i.bg, %i.az
  %i.bj = fmul fast float %i.ay, %i.av
  %i.bk = fmul fast float %i.bc, %i.be
  %i.bl = fadd fast float %i.bj, %i.ax
  %i.bm = fadd fast float %i.bk, %i.az
  %i.bn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bh, i64 1
  %i.bp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer)
  %i.bq = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bp, <2 x float> %i.ah) ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bl, i64 1
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bs, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  %i.bv = fsub fast <2 x float> %i.bu, %i.bq
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  %i.bx = select <2 x i1> %i.ao, <2 x float> %i.aq, <2 x float> %i.bw
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %13 = fcmp ole <2 x float> %i.bu, %i.bq
  %14 = extractelement <2 x i1> %13, i64 1
  %15 = fcmp ole <2 x float> %i.bu, %i.bq
  %16 = extractelement <2 x i1> %15, i64 0
  %17 = select i1 %14, i1 true, i1 %16
  %18 = extractelement <2 x i32> %i.by, i64 0     ; 3 uses
  %19 = extractelement <2 x i32> %i.by, i64 1     ; 2 uses
  %20 = mul i32 %18, %19                          ; 2 uses
  %i.bz = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ca = extractelement <2 x i1> %i.bz, i64 0
  %i.cb = extractelement <2 x i1> %i.bz, i64 1
  %or.cond = select i1 %i.cb, i1 %i.ca, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.cc = load ptr, ptr %12, align 8, !tbaa !40
  %i.cd = zext nneg i32 %18 to i64
  %i.ce = sext i32 %.166159 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.di, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %op.rdx, %._crit_edge.us ]
  %.2152.us = phi i64 [ %i.ce, %.preheader.lr.ph.split.us ], [ %i.dh, %._crit_edge.us ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ %.2152.us, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.060150.us = phi i32 [ 0, %.preheader.us ], [ %i.dg, %bb.d ]
  %.1149.us = phi float [ %.062153.us, %.preheader.us ], [ %op.rdx, %bb.d ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %indvars.iv ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !45
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !46
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !36
  %i.da = load <4 x float>, ptr %i.cg, align 4, !tbaa !36
  %i.db = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cp, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cu, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.cz, i64 3
  %i.df = fmul fast <4 x float> %i.de, %i.da
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1149.us, <4 x float> %i.df) ; 3 uses
  %i.dg = add nuw nsw i32 %.060150.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %18
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !80

._crit_edge.us:                                   ; preds = %bb.d
  %i.dh = add nsw i64 %.2152.us, %i.cd
  %i.di = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.di, %19
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %.preheader.us, !llvm.loop !81

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %i.dj = add i32 %.166159, %20
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.166159, %bb.c ], [ %i.dj, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %op.rdx, %._crit_edge155.loopexit ]
  %i.dk = sitofp fast i32 %20 to float
  %i.dl = fdiv fast float %.062.lcssa, %i.dk
  %i.dm = select fast i1 %17, float 0.000000e+00, float %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %indvars.iv176
  store float %i.dm, ptr %i.dn, align 4, !tbaa !36
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !82

._crit_edge168.split:                             ; preds = %._crit_edge165, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge168.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !49 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader109.lr.ph, label %._crit_edge141.split

.preheader109.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not169 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not169, %i.c
  br i1 %brmerge, label %._crit_edge141.split, label %.preheader109.us.us.preheader

.preheader109.us.us.preheader:                    ; preds = %.preheader109.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = fdiv fast float 1.000000e+00, %i.k
  %i.r = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader109.us.us

.preheader109.us.us:                              ; preds = %.preheader109.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0140.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ]
  %.088139.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ] ; 2 uses
  %i.s = uitofp ninf nsz nneg i32 %.088139.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %6, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge115.split.us.us.us.us.us, %.preheader109.us.us
  %.1133.us.us.us.us = phi i32 [ %.0140.us.us, %.preheader109.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge115.split.us.us.us.us.us ]
  %.089132.us.us.us.us = phi i32 [ 0, %.preheader109.us.us ], [ %i.bx, %._crit_edge115.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp ninf nsz nneg i32 %.089132.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %7, %i.w
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2113.us.us.us.us.us = phi i32 [ %.1133.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.090112.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bw, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp ninf nsz nneg i32 %.090112.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.ab, %i.u             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %spec.store.select.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %spec.store.select.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %.096.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.094.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.094.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.096.us.us.us.us.us, i64 1
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us117.us.us.us.us.preheader

.lr.ph.split.us117.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.093.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %spec.store.select.us.us.us.us.us, float %i.g
  %i.aj = sitofp fast i32 %.094.us.us.us.us.us to float
  %i.ak = fsub fast float %.093.us.us.us.us.us, %i.aj ; 2 uses
  %i.al = fsub fast float 1.000000e+00, %i.ak
  %i.am = sext i32 %.2113.us.us.us.us.us to i64
  %i.an = insertelement <4 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ar = mul nsw <4 x i32> %i.aq, %i.r
  br label %.lr.ph.split.us117.us.us.us.us

.lr.ph.split.us117.us.us.us.us:                   ; preds = %.lr.ph.split.us117.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.091110.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp ninf nsz nneg i32 %.091110.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.q
  %i.aw = fadd fast float %i.av, %i.x             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond108.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond108.us.us.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us117.us.us.us.us
  %spec.store.select1.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00) ; 2 uses
  %i.az = fptosi float %spec.store.select1.us.us.us.us.us to i32 ; 3 uses
  %.not104.us.us.us.us.us = icmp sgt i32 %i.h, %i.az ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, 1
  %.097.us.us.us.us.us = select i1 %.not104.us.us.us.us.us, i32 %i.ba, i32 %i.h
  %.095.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.az) ; 2 uses
  %.092.us.us.us.us.us = select nsz i1 %.not104.us.us.us.us.us, float %spec.store.select1.us.us.us.us.us, float %i.i
  %i.bb = sitofp fast i32 %.095.us.us.us.us.us to float
  %i.bc = fsub fast float %.092.us.us.us.us.us, %i.bb ; 2 uses
  %i.bd = fsub fast float 1.000000e+00, %i.bc
  %i.be = load ptr, ptr %12, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = insertelement <4 x i32> poison, i32 %.095.us.us.us.us.us, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %.097.us.us.us.us.us, i64 1
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = add nsw <4 x i32> %i.bi, %i.ar
  store <4 x i32> %i.bj, ptr %i.bf, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bc, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul fast <4 x float> %i.bm, %i.ap
  store <4 x float> %i.bn, ptr %.sroa.7.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us117.us.us.us.us
  %i.bo = load ptr, ptr %12, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = add nuw nsw i32 %.091110.us119.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.loopexit148, label %.lr.ph.split.us117.us.us.us.us, !llvm.loop !85

.lr.ph.split.us.us.us.us.us.us:                   ; preds = %.lr.ph.us.us.us.us.us
  %i.br = load ptr, ptr %12, align 8, !tbaa !40
  %i.bs = sext i32 %.2113.us.us.us.us.us to i64
  %i.bt = shl nsw i64 %i.bs, 5
  %scevgep = getelementptr nuw i8, ptr %i.br, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !42
  %i.bu = add i32 %5, %.2113.us.us.us.us.us
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us.loopexit148:           ; preds = %bb.d
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.loopexit148, %.lr.ph.split.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us = phi i32 [ %i.bu, %.lr.ph.split.us.us.us.us.us.us ], [ %i.bv, %._crit_edge.us.us.us.us.us.loopexit148 ] ; 3 uses
  %i.bw = add nuw nsw i32 %.090112.us.us.us.us.us, 1 ; 2 uses
  %exitcond156.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond156.not, label %._crit_edge115.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !86

._crit_edge115.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.089132.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond157.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !87

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge115.split.us.us.us.us.us
  %i.by = add nuw nsw i32 %.088139.us.us, 1       ; 2 uses
  %exitcond158.not = icmp eq i32 %i.by, %2
  br i1 %exitcond158.not, label %._crit_edge141.split, label %.preheader109.us.us, !llvm.loop !88

._crit_edge141.split:                             ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader109.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
end_hunk_0
