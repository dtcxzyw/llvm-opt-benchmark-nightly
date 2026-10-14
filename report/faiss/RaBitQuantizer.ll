Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/RaBitQuantizer?download=true
inline.NumInlined: 400
inline.NumDeleted: 220
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss14RaBitQuantizer11decode_coreEPKhPfmPKf.omp_outlined:bb.a

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %.035.us.us = phi i64 [ %i.cf, %scalar.ph106 ], [ %.035.us.us.ph, %scalar.ph106.preheader ] ; 4 uses
  %i.bq = trunc i64 %.035.us.us to i8
  %i.br = and i8 %i.bq, 7
  %i.bs = lshr i64 %.035.us.us, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = lshr i8 %i.bu, %i.br
  %i.bw = and i8 %i.bv, 1
  %i.bx = uitofp nneg i8 %i.bw to float
  %i.by = fadd nnan float %i.bx, -5.000000e-01
  %i.bz = load float, ptr %i.ay, align 1, !tbaa !43
  %i.ca = fmul float %i.bz, %i.by
  %i.cb = fmul float %i.ca, 2.000000e+00
  %i.cc = load float, ptr %7, align 4, !tbaa !38
  %i.cd = call float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float 0.000000e+00)
  %i.ce = getelementptr [4 x i8], ptr %i.ba, i64 %.035.us.us
  store float %i.cd, ptr %i.ce, align 4, !tbaa !38
  %i.cf = add nuw i64 %.035.us.us, 1              ; 2 uses
  %exitcond46.not = icmp eq i64 %i.cf, %.pn.in.in
  br i1 %exitcond46.not, label %._crit_edge.split.us.us, label %scalar.ph106, !llvm.loop !105

._crit_edge.split.us.us:                          ; preds = %scalar.ph106, %middle.block121
  %i.cg = add i64 %.03237.us, 1
  %exitcond47.not = icmp eq i64 %.03237.us, %i.j
  br i1 %exitcond47.not, label %._crit_edge40.split, label %.lr.ph.us

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split
  %.03237 = phi i64 [ %i.dd, %._crit_edge.split ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.ch = mul i64 %i.n, %.03237
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.pn
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = mul i64 %.pn.in.in, %.03237
  %i.cm = getelementptr [4 x i8], ptr %i.q, i64 %i.cl ; 2 uses
  %brmerge125 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx77
  br i1 %brmerge125, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.cn = load float, ptr %i.ck, align 1, !tbaa !43, !alias.scope !119
  %broadcast.splatinsert78 = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat79 = shufflevector <4 x float> %broadcast.splatinsert78, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = load float, ptr %7, align 4, !tbaa !38, !alias.scope !120
  %broadcast.splatinsert80 = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat81 = shufflevector <4 x float> %broadcast.splatinsert80, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cp = and <4 x i8> %vec.ind, splat (i8 7)
  %i.cq = lshr i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29, !alias.scope !121
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ct = lshr <4 x i8> %broadcast.splat, %i.cp
  %i.cu = and <4 x i8> %i.ct, splat (i8 1)
  %i.cv = uitofp nneg <4 x i8> %i.cu to <4 x float>
  %i.cw = fadd nnan <4 x float> %i.cv, splat (float -5.000000e-01)
  %i.cx = fmul <4 x float> %broadcast.splat79, %i.cw
  %i.cy = fmul <4 x float> %i.cx, splat (float 2.000000e+00)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %wide.load = load <4 x float>, ptr %i.cz, align 4, !tbaa !38, !alias.scope !122
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %broadcast.splat81, <4 x float> %wide.load)
  %i.db = getelementptr [4 x i8], ptr %i.cm, i64 %index
  store <4 x float> %i.da, ptr %i.db, align 4, !tbaa !38, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 4)
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.035.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge.split:                                ; preds = %scalar.ph, %middle.block
  %i.dd = add i64 %.03237, 1
  %exitcond45.not = icmp eq i64 %.03237, %i.j
  br i1 %exitcond45.not, label %._crit_edge40.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.035 = phi i64 [ %i.dv, %scalar.ph ], [ %.035.ph, %scalar.ph.preheader ] ; 5 uses
  %i.de = trunc i64 %.035 to i8
  %i.df = and i8 %i.de, 7
  %i.dg = lshr i64 %.035, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !29
  %i.dj = lshr i8 %i.di, %i.df
  %i.dk = and i8 %i.dj, 1
  %i.dl = uitofp nneg i8 %i.dk to float
  %i.dm = fadd nnan float %i.dl, -5.000000e-01
  %i.dn = load float, ptr %i.ck, align 1, !tbaa !43
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = fmul float %i.do, 2.000000e+00
  %i.dq = load float, ptr %7, align 4, !tbaa !38
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.035
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !38
  %i.dt = call float @llvm.fmuladd.f32(float %i.dp, float %i.dq, float %i.ds)
  %i.du = getelementptr [4 x i8], ptr %i.cm, i64 %.035
  store float %i.dt, ptr %i.du, align 4, !tbaa !38
  %i.dv = add nuw i64 %.035, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %.pn.in.in
  br i1 %exitcond.not, label %._crit_edge.split, label %scalar.ph, !llvm.loop !113

._crit_edge40.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph39, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge40.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZNK5faiss14RaBitQuantizer21get_distance_computerEhPKfb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i, label %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28, !noalias !129 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, i8 0, i64 80, i1 false), !noalias !129
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EEE, i64 16), ptr %i.b, align 16, !tbaa !21, !noalias !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !129
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !130, !noalias !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.g, i8 0, i64 28, i1 false), !noalias !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  store i32 %i.i, ptr %i.c, align 16, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %i.l, align 16, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  store i64 %i.o, ptr %i.d, align 8, !tbaa !57
  br label %"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit"

_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.p = zext i1 %3 to i8
  %i.q = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28, !noalias !131 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.q, i8 0, i64 208, i1 false), !noalias !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EEE, i64 16), ptr %i.q, align 16, !tbaa !21, !noalias !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, i8 0, i64 96, i1 false), !noalias !131
  store float 1.000000e+00, ptr %i.u, align 8, !tbaa !130, !noalias !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.v, i8 0, i64 28, i1 false), !noalias !131
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store i64 0, ptr %i.x, align 16, !tbaa !64, !noalias !131
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22
  store i32 %i.z, ptr %i.r, align 16, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ab, ptr %i.ac, align 16, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %2, ptr %i.ad, align 8, !tbaa !56
  store i8 %1, ptr %i.w, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 201
  store i8 %i.p, ptr %i.ae, align 1, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !57
  br label %"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit"

"_ZN5faiss25with_selected_simd_levelsILi95EZNKS_14RaBitQuantizer21get_distance_computerEhPKfbE3$_0EEDaOT0_.exit": ; preds = %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.b, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i ], [ %i.q, %_ZNSt10unique_ptrIN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS0_9SIMDLevelE0EEESt14default_deleteIS4_EED2Ev.exit.i.i.i ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(152) initializes((24, 32)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf, ptr noundef nonnull @.str.2, i32 noundef 339) #29 ; 0 uses
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54
  %switch = icmp ult i32 %i.e, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_126RaBitQDistanceComputerNotQILNS_9SIMDLevelE0EE9set_queryEPKf, ptr noundef nonnull @.str.2, i32 noundef 342) #29 ; 0 uses
  tail call void @abort() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i64 noundef %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef nonnull %1, i64 noundef %i.k)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi float [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store float %.sink, ptr %i.n, align 4, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !55   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !71   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub nuw i64 %i.q, %i.x
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.z)
  %.pre = load i64, ptr %i.p, align 8, !tbaa !55
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ult i64 %i.q, %i.x
  br i1 %i.aa, label %bb.k, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !70
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ac = phi i64 [ %.pre, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ], [ %i.q, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 18 uses
  %.not36 = icmp eq i64 %i.ac, 0                  ; 3 uses
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !56  ; 8 uses
  %3 = ptrtoaddr ptr %i.ad to i64
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !71  ; 13 uses
  %4 = ptrtoaddr ptr %i.af to i64                 ; 3 uses
  br i1 %i.ae, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.ac, 12
  br i1 %min.iters.check, label %.lr.ph.split.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.ag = sub i64 %2, %4
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %3, %4
  %diff.check52 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.lr.ph.split.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x float>, ptr %i.ai, align 4, !tbaa !38
  %wide.load53 = load <4 x float>, ptr %i.aj, align 4, !tbaa !38
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load54 = load <4 x float>, ptr %i.ak, align 4, !tbaa !38
  %wide.load55 = load <4 x float>, ptr %i.al, align 4, !tbaa !38
  %i.am = fsub <4 x float> %wide.load, %wide.load54
  %i.an = fsub <4 x float> %wide.load53, %wide.load55
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %i.am, ptr %i.ao, align 4, !tbaa !38
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader71

.lr.ph.split.preheader71:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %.02029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader71, %.lr.ph.split.prol
  %.02029.prol = phi i64 [ %i.ax, %.lr.ph.split.prol ], [ %.02029.ph, %.lr.ph.split.preheader71 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader71 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02029.prol
  %i.as = load float, ptr %i.ar, align 4, !tbaa !38
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.02029.prol
  %i.au = load float, ptr %i.at, align 4, !tbaa !38
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.02029.prol
  store float %i.av, ptr %i.aw, align 4, !tbaa !38
  %i.ax = add nuw i64 %.02029.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !133

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader71
  %.02029.unr = phi i64 [ %.02029.ph, %.lr.ph.split.preheader71 ], [ %i.ax, %.lr.ph.split.prol ]
  %i.ay = sub i64 %.02029.ph, %i.ac
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check59 = icmp ult i64 %i.ac, 8
  %i.ba = sub i64 %2, %4
  %diff.check57 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check59, i1 true, i1 %diff.check57
  br i1 %or.cond, label %.lr.ph.split.us.preheader70, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.split.us.preheader
  %n.vec61 = and i64 %i.ac, -8                    ; 3 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index63 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load64 = load <4 x float>, ptr %i.bb, align 4, !tbaa !38
  %wide.load65 = load <4 x float>, ptr %i.bc, align 4, !tbaa !38
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index63 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x float> %wide.load64, ptr %i.bd, align 4, !tbaa !38
  store <4 x float> %wide.load65, ptr %i.be, align 4, !tbaa !38
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.bf, label %middle.block67, label %vector.body62, !llvm.loop !134

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i64 %i.ac, %n.vec61
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.split.us.preheader70

.lr.ph.split.us.preheader70:                      ; preds = %.lr.ph.split.us.preheader, %middle.block67
  %.02029.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec61, %middle.block67 ] ; 3 uses
  %xtraiter73 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader70, %.lr.ph.split.us.prol
  %.02029.us.prol = phi i64 [ %i.bj, %.lr.ph.split.us.prol ], [ %.02029.us.ph, %.lr.ph.split.us.preheader70 ] ; 3 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader70 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02029.us.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !38
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.02029.us.prol
  store float %i.bh, ptr %i.bi, align 4, !tbaa !38
  %i.bj = add nuw i64 %.02029.us.prol, 1          ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !135

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader70
  %.02029.us.unr = phi i64 [ %.02029.us.ph, %.lr.ph.split.us.preheader70 ], [ %i.bj, %.lr.ph.split.us.prol ]
  %i.bk = sub i64 %.02029.us.ph, %i.ac
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.02029.us = phi i64 [ %i.cb, %.lr.ph.split.us ], [ %.02029.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02029.us
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !38
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.02029.us
  store float %i.bn, ptr %i.bo, align 4, !tbaa !38
  %i.bp = add nuw i64 %.02029.us, 1               ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !38
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bp
  store float %i.br, ptr %i.bs, align 4, !tbaa !38
  %i.bt = add nuw i64 %.02029.us, 2               ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !38
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bt
  store float %i.bv, ptr %i.bw, align 4, !tbaa !38
  %i.bx = add nuw i64 %.02029.us, 3               ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !38
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bx
  store float %i.bz, ptr %i.ca, align 4, !tbaa !38
  %i.cb = add nuw i64 %.02029.us, 4               ; 2 uses
  %exitcond39.not.3 = icmp eq i64 %i.cb, %i.ac
  br i1 %exitcond39.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %middle.block67, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = load float, ptr %i.n, align 4, !tbaa !69
  %i.ce = tail call noundef float @sqrtf(float noundef %i.cd) #17
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.ce, ptr %i.cf, align 8, !tbaa !72
  %i.cg = uitofp i64 %i.ac to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cg)
  %i.ch = fdiv float 1.000000e+00, %sqrt
  %i.ci = select i1 %.not36, float 1.000000e+00, float %i.ch ; 2 uses
  br i1 %.not36, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !71  ; 9 uses
  %xtraiter76 = and i64 %i.ac, 7                  ; 3 uses
  %i.ck = icmp ult i64 %i.ac, 8
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter = and i64 %i.ac, -8
  br label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.02029 = phi i64 [ %i.dm, %.lr.ph.split ], [ %.02029.unr, %.lr.ph.split.prol.loopexit ] ; 7 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02029
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !38
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.02029
  %i.co = load float, ptr %i.cn, align 4, !tbaa !38
  %i.cp = fsub float %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.02029
  store float %i.cp, ptr %i.cq, align 4, !tbaa !38
  %i.cr = add nuw i64 %.02029, 1                  ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !38
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cr
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !38
  %i.cw = fsub float %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cr
  store float %i.cw, ptr %i.cx, align 4, !tbaa !38
  %i.cy = add nuw i64 %.02029, 2                  ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !38
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cy
  %i.dc = load float, ptr %i.db, align 4, !tbaa !38
  %i.dd = fsub float %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cy
  store float %i.dd, ptr %i.de, align 4, !tbaa !38
  %i.df = add nuw i64 %.02029, 3                  ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !38
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.df
  %i.dj = load float, ptr %i.di, align 4, !tbaa !38
  %i.dk = fsub float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.df
  store float %i.dk, ptr %i.dl, align 4, !tbaa !38
  %i.dm = add nuw i64 %.02029, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dm, %i.ac
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !137

._crit_edge34.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %._crit_edge34, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge34.loopexit.unr-lcssa, %.lr.ph33
  %.031.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %i.fc, %._crit_edge34.loopexit.unr-lcssa ]
  %.01930.epil.init = phi float [ 0.000000e+00, %.lr.ph33 ], [ %i.fb, %._crit_edge34.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.031.epil = phi i64 [ %.031.epil.init, %.epil.preheader ], [ %i.dq, %bb.l ] ; 2 uses
  %.01930.epil = phi float [ %.01930.epil.init, %.epil.preheader ], [ %i.dp, %bb.l ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031.epil
  %i.do = load float, ptr %i.dn, align 4, !tbaa !38
  %i.dp = fadd float %.01930.epil, %i.do          ; 2 uses
  %i.dq = add nuw i64 %.031.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter76
  br i1 %epil.iter.cmp.not, label %._crit_edge34, label %bb.l, !llvm.loop !138

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit.unr-lcssa, %bb.l, %._crit_edge
  %.019.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %i.fb, %._crit_edge34.loopexit.unr-lcssa ], [ %i.dp, %bb.l ]
  %i.dr = fmul nnan float %i.ci, 2.000000e+00
  store float %i.dr, ptr %i.cc, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !74
  %i.dt = fmul float %i.ci, %.019.lcssa
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.dt, ptr %i.du, align 8, !tbaa !75
  %i.dv = load i32, ptr %i.d, align 8, !tbaa !54
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.n, label %bb.q

bb.m:                                             ; preds = %bb.m, %.lr.ph33.new
  %.031 = phi i64 [ 0, %.lr.ph33.new ], [ %i.fc, %bb.m ] ; 9 uses
  %.01930 = phi float [ 0.000000e+00, %.lr.ph33.new ], [ %i.fb, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph33.new ], [ %niter.next.7, %bb.m ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !38
  %i.dz = fadd float %.01930, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !38
  %i.ed = fadd float %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !38
  %i.eh = fadd float %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !38
  %i.el = fadd float %i.eh, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load float, ptr %i.en, align 4, !tbaa !38
  %i.ep = fadd float %i.el, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.es = load float, ptr %i.er, align 4, !tbaa !38
  %i.et = fadd float %i.ep, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.031
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !38
end_hunk_0
