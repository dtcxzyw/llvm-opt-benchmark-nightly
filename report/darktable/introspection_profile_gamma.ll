inline.NumInlined: 39
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dt_module_dt_version:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #21
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #21
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #21
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #21
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #21
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #21
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #21
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_profilegamma_params_t, align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  store <4 x float> <float 1.600000e+01, float 1.800000e+01, float -1.200000e+01, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call i32 (...) %i.e() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.c, i32 noundef %i.f, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #21
  store float 1.400000e+01, ptr %i.a, align 4, !tbaa !20
  store float -1.050000e+01, ptr %i.b, align 4, !tbaa !22
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.h = call i32 (...) %i.g() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.c, i32 noundef %i.h, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #21
  store float 1.200000e+01, ptr %i.a, align 4, !tbaa !20
  store float -9.000000e+00, ptr %i.b, align 4, !tbaa !22
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.j = call i32 (...) %i.i() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.c, i32 noundef %i.j, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #21
  store float 1.000000e+01, ptr %i.a, align 4, !tbaa !20
  store float -7.500000e+00, ptr %i.b, align 4, !tbaa !22
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.l = call i32 (...) %i.k() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.c, i32 noundef %i.l, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #21
  store float 8.000000e+00, ptr %i.a, align 4, !tbaa !20
  store float -6.000000e+00, ptr %i.b, align 4, !tbaa !22
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.n = call i32 (...) %i.m() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.c, i32 noundef %i.n, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 1, i32 noundef 3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #22 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !11
  store <2 x float> %i.d, ptr %i.c, align 4, !tbaa !11
  store i32 1, ptr %i.b, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x float> <float 1.000000e+01, float 1.800000e+01, float -5.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !11
  store ptr %i.b, ptr %3, align 8, !tbaa !25
  store i32 28, ptr %4, align 4, !tbaa !26
  store i32 2, ptr %5, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !27  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !45
  switch i32 %i.e, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader77
  ]

.preheader77:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader77
  %i.i = sext i32 %i.d to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48   ; 3 uses
  %i.l = sext i32 %i.k to i64
  %factor.op.mul = mul nsw i64 %i.i, %i.l
  %i.m = icmp sgt i32 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 262156 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 262160 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 262164 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  br i1 %i.m, label %.preheader.lr.ph.preheader, label %.loopexit

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.preheader.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.r = sext i32 %i.d to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = mul nsw i64 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul i64 %i.v, %i.y                       ; 5 uses
  %.not87 = icmp eq i64 %i.z, 0
  br i1 %.not87, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 262172
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !49 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 262176 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 262168 ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86
  %i.ae = mul nsw i64 %i.r, %i.u
  %i.af = mul i64 %i.ae, %i.y
  %i.ag = shl i64 %i.af, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ag  ; 2 uses
  %scevgep109 = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep110 = getelementptr i8, ptr %i.b, i64 262180
  %bound0 = icmp ult ptr %3, %scevgep109
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0111 = icmp ult ptr %3, %scevgep110
  %bound1112 = icmp ult ptr %i.ad, %scevgep
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx = or i1 %found.conflict, %found.conflict113
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 3 uses
  %i.ah = load float, ptr %i.ac, align 4, !tbaa !50, !alias.scope !51
  %6 = fsub reassoc nsz arcp contract afn float f0xC2F87377, %i.ah
  %broadcast.splatinsert114 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat115 = shufflevector <8 x float> %broadcast.splatinsert114, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !54, !alias.scope !51
  %broadcast.splatinsert116 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat117 = shufflevector <8 x float> %broadcast.splatinsert116, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ak = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat117
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <8 x float>, ptr %i.al, align 4, !tbaa !11, !alias.scope !55
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 1.000000e+02)
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.am, %i.aj ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.an, splat (float f0x37800000)
  %i.ap = bitcast <8 x float> %i.an to <8 x i32>
  %i.aq = select <8 x i1> %i.ao, <8 x i32> splat (i32 931135488), <8 x i32> %i.ap ; 2 uses
  %i.ar = and <8 x i32> %i.aq, splat (i32 8388607)
  %i.as = or disjoint <8 x i32> %i.ar, splat (i32 1056964608)
  %i.at = uitofp <8 x i32> %i.aq to <8 x float>
  %i.au = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.at, splat (float f0x34000000)
  %i.av = bitcast <8 x i32> %i.as to <8 x float>  ; 2 uses
  %i.aw = fadd reassoc nsz arcp contract afn <8 x float> %i.av, splat (float f0x3EB444F9)
  %i.ax = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.av, splat (float f0xBFBFBF75)
  %i.ay = fdiv reassoc nsz arcp contract afn <8 x float> splat (float -1.725880e+00), %i.aw
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat115, %i.au
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %i.az, %i.ax
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %i.ak ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bc, splat (float f0x37800000)
  %i.be = select <8 x i1> %i.bd, <8 x float> splat (float f0x37800000), <8 x float> %i.bc
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <8 x float> %i.be, ptr %i.bf, align 4, !tbaa !11, !alias.scope !57, !noalias !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph86, %middle.block
  %.07184.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph86 ], [ %n.vec, %middle.block ]
  %i.bh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07184 = phi i64 [ %i.ca, %scalar.ph ], [ %.07184.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07184
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, 1.000000e+02
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.bh ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, f0x37800000
  %i.bn = bitcast float %i.bl to i32
  %i.bo = select i1 %i.bm, i32 931135488, i32 %i.bn ; 2 uses
  %i.bp = and i32 %i.bo, 8388607
  %i.bq = or disjoint i32 %i.bp, 1056964608
  %i.br = uitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.br, f0x34000000
  %i.bt = bitcast i32 %i.bq to float              ; 2 uses
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, f0x3EB444F9
  %.neg.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, f0xBFBFBF75
  %.neg6.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.bu
  %7 = load float, ptr %i.ac, align 4, !tbaa !50
  %.neg7.i = fsub reassoc nsz arcp contract afn float f0xC2F87377, %7
  %8 = fadd reassoc nsz arcp contract afn float %.neg7.i, %i.bs
  %9 = fadd reassoc nsz arcp contract afn float %8, %.neg.i
  %i.bv = fadd reassoc nsz arcp contract afn float %9, %.neg6.i
  %i.bw = load float, ptr %i.ad, align 4, !tbaa !54
  %i.bx = fdiv reassoc nsz arcp contract afn float %i.bv, %i.bw ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, f0x37800000
  %.sink = select i1 %i.by, float f0x37800000, float %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07184
  store float %.sink, ptr %i.bz, align 4, !tbaa !11
  %i.ca = add nuw i64 %.07184, 1                  ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ca, %i.z
  br i1 %exitcond92.not, label %.loopexit, label %scalar.ph, !llvm.loop !63

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.k
  %.06682 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dx, %bb.k ]
  %.06781 = phi ptr [ %i.cc, %.preheader.lr.ph ], [ %i.dz, %bb.k ] ; 4 uses
  %.06880 = phi ptr [ %i.cb, %.preheader.lr.ph ], [ %i.dy, %bb.k ] ; 4 uses
  %i.cd = load float, ptr %.06880, align 4, !tbaa !11 ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.cd, 1.000000e+00
  br i1 %i.ce, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond91.not, label %.loopexit, label %.preheader.lr.ph

bb.c:                                             ; preds = %.preheader
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.cd, 6.553600e+04
  %i.cg = fptosi float %i.cf to i32
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %i.ch = tail call i32 @llvm.umin.i32(i32 %narrow, i32 65535)
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.cl = load float, ptr %i.o, align 4, !tbaa !11
  %i.cm = load float, ptr %i.n, align 4, !tbaa !11
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.cd
  %i.co = load float, ptr %i.p, align 4, !tbaa !11
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cn, float %i.co)
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cl
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink93 = phi float [ %i.ck, %bb.c ], [ %i.cq, %bb.d ]
  store float %.sink93, ptr %.06781, align 4, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.06880, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11 ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = load float, ptr %i.o, align 4, !tbaa !11
  %i.cv = load float, ptr %i.n, align 4, !tbaa !11
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cs
  %i.cx = load float, ptr %i.p, align 4, !tbaa !11
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cw, float %i.cx)
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cu
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.da = fmul reassoc nnan nsz arcp contract afn float %i.cs, 6.553600e+04
  %i.db = fptosi float %i.da to i32
  %narrow.1 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %narrow.1, i32 65535)
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink94 = phi float [ %i.df, %bb.g ], [ %i.cz, %bb.f ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.06781, i64 4
  store float %.sink94, ptr %i.dg, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.06880, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !11 ; 3 uses
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.di, 1.000000e+00
  br i1 %i.dj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dk = load float, ptr %i.o, align 4, !tbaa !11
  %i.dl = load float, ptr %i.n, align 4, !tbaa !11
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.di
  %i.dn = load float, ptr %i.p, align 4, !tbaa !11
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dm, float %i.dn)
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dk
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dq = fmul reassoc nnan nsz arcp contract afn float %i.di, 6.553600e+04
  %i.dr = fptosi float %i.dq to i32
  %narrow.2 = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %narrow.2, i32 65535)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink95 = phi float [ %i.dv, %bb.j ], [ %i.dp, %bb.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.06781, i64 8
  store float %.sink95, ptr %i.dw, align 4, !tbaa !11
  %i.dx = add nuw nsw i32 %.06682, 1              ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %.06880, i64 %i.i
  %i.dz = getelementptr inbounds [4 x i8], ptr %.06781, i64 %i.i
  %exitcond.not = icmp eq i32 %i.dx, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %scalar.ph, %middle.block, %.preheader77, %.lr.ph, %bb.b, %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 628
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !65
  %i.ee = and i32 %i.ed, 1
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %dt_iop_alpha_copy.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !48
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !47
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.eh, 2
  %i.em = mul i64 %i.el, %i.ek                    ; 4 uses
  %.not.i = icmp eq i64 %i.em, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.em, i64 7)
  %i.eo = add i64 %i.en, -4                       ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.eo, 96
  br i1 %min.iters.check127, label %.lr.ph.i.preheader135, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph.i.preheader
  %scevgep119 = getelementptr i8, ptr %3, i64 12
  %umax = tail call i64 @llvm.umax.i64(i64 %i.em, i64 7)
  %i.er = shl i64 %umax, 2
  %i.es = and i64 %i.er, -16                      ; 2 uses
  %scevgep120 = getelementptr i8, ptr %3, i64 %i.es
  %scevgep121 = getelementptr i8, ptr %2, i64 12
  %scevgep122 = getelementptr i8, ptr %2, i64 %i.es
  %bound0123 = icmp ult ptr %scevgep119, %scevgep122
  %bound1124 = icmp ult ptr %scevgep121, %scevgep120
  %found.conflict125 = and i1 %bound0123, %bound1124
  br i1 %found.conflict125, label %.lr.ph.i.preheader135, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck118
  %i.et = and i64 %i.eq, 7                        ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = select i1 %i.eu, i64 8, i64 %i.et
  %n.vec129 = sub nsw i64 %i.eq, %i.ev            ; 2 uses
  %i.ew = shl i64 %n.vec129, 2
  %i.ex = or disjoint i64 %i.ew, 3
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next132, %vector.body130 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph128 ], [ %vec.ind.next, %vector.body130 ] ; 2 uses
  %.idx = shl nuw i64 %index131, 4
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %wide.vec = load <32 x float>, ptr %i.ez, align 4, !tbaa !11, !alias.scope !81
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !11, !alias.scope !84, !noalias !81
  %index.next132 = add nuw i64 %index131, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.fa = icmp eq i64 %index.next132, %n.vec129
  br i1 %i.fa, label %.lr.ph.i.preheader135, label %vector.body130, !llvm.loop !86

.lr.ph.i.preheader135:                            ; preds = %vector.body130, %vector.memcheck118, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck118 ], [ 3, %.lr.ph.i.preheader ], [ %i.ex, %vector.body130 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader135, %.lr.ph.i
  %.09.i = phi i64 [ %i.fe, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader135 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !11
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.fc, ptr %i.fd, align 4, !tbaa !11
  %i.fe = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.em
  br i1 %i.ff, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !87

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %bb.l, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !88  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 4, !tbaa !101
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_stack_set_visible_child_name(ptr noundef %i.j, ptr noundef nonnull @.str.11) #21
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @gtk_stack_set_visible_child_name(ptr noundef %i.j, ptr noundef nonnull @.str.12) #21
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load float, ptr %2, align 4, !tbaa !11   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load float, ptr %i.o, align 4, !tbaa !104
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.n
  %i.r = fadd reassoc nsz arcp contract afn float %i.n, 1.000000e+02
  %i.s = fdiv reassoc nsz arcp contract afn float %i.q, %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !22 ; 3 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.s, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !20
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.s
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fsub reassoc nsz arcp contract afn float %i.ab, %i.w
  store float %i.ac, ptr %i.x, align 4, !tbaa !20
  store float %i.w, ptr %i.t, align 4, !tbaa !22
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = atomicrmw add ptr %i.ae, i32 1 seq_cst, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !143
  %i.ai = load float, ptr %i.x, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.ai) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.al = load float, ptr %i.t, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.al) #21
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = atomicrmw sub ptr %i.an, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  ret void
}

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !88  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %apply_auto_grey.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = load float, ptr %i.l, align 16, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.o = load float, ptr %i.n, align 4, !tbaa !11
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.m, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.r = load float, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.p, float %i.r)
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 1.000000e+02
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store float %i.t, ptr %i.u, align 4, !tbaa !146
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = atomicrmw add ptr %i.w, i32 1 seq_cst, align 4 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  %i.aa = load float, ptr %i.u, align 4, !tbaa !146
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.aa) #21
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4 ; 0 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !147
  tail call void @dt_dev_add_history_item(ptr noundef %i.ae, ptr noundef nonnull %0, i32 noundef 1) #21
  br label %apply_auto_grey.exit

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144
  %i.ah = icmp eq ptr %1, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ak = load atomic i32, ptr %i.aj seq_cst, align 4
  %.not.i13 = icmp eq i32 %i.ak, 0
  br i1 %.not.i13, label %bb.f, label %apply_auto_grey.exit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !98 ; 3 uses
  %i.an = load ptr, ptr %i.a, align 16, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ap = load float, ptr %i.ao, align 16, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ap, float %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.au = load float, ptr %i.at, align 8, !tbaa !11
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !146
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  %i.az = fdiv reassoc nsz arcp contract afn float %i.av, %i.ay ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, f0x37800000
  %i.bb = select reassoc nsz arcp contract afn i1 %i.ba, float %i.az, float f0x37800000
  %i.bc = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !104
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, f0x3C6C5F03
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, f0x3FB8AA3B
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !22
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bl = atomicrmw add ptr %i.bk, i32 1 seq_cst, align 4 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !144
  %i.bo = load float, ptr %i.bi, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bn, float noundef %i.bo) #21
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = atomicrmw sub ptr %i.bq, i32 1 seq_cst, align 4 ; 0 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !147
  tail call void @dt_dev_add_history_item(ptr noundef %i.bs, ptr noundef nonnull %0, i32 noundef 1) #21
  br label %apply_auto_grey.exit

bb.g:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load atomic i32, ptr %i.bx seq_cst, align 4
  %.not.i14 = icmp eq i32 %i.by, 0
  br i1 %.not.i14, label %bb.i, label %apply_auto_grey.exit

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !98 ; 4 uses
  %i.cb = load ptr, ptr %i.a, align 16, !tbaa !88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !11
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cf, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !11
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !146
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, f0x3C23D70A
  %i.cp = fdiv reassoc nsz arcp contract afn float %i.cl, %i.co ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ogt float %i.cp, f0x37800000
  %i.cr = select reassoc nsz arcp contract afn i1 %i.cq, float %i.cp, float f0x37800000
  %i.cs = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !104
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, f0x3C6C5F03
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, f0x3FB8AA3B
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cs, %i.cw
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cx, %i.cd
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 12 ; 2 uses
  store float %i.cy, ptr %i.cz, align 4, !tbaa !20
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = atomicrmw add ptr %i.db, i32 1 seq_cst, align 4 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !143
  %i.df = load float, ptr %i.cz, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.de, float noundef %i.df) #21
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !105
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = atomicrmw sub ptr %i.dh, i32 1 seq_cst, align 4 ; 0 uses
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !147
  tail call void @dt_dev_add_history_item(ptr noundef %i.dj, ptr noundef nonnull %0, i32 noundef 1) #21
  br label %apply_auto_grey.exit

bb.j:                                             ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !148
  %i.dm = icmp eq ptr %1, %i.dl
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !98 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dq = load float, ptr %i.dp, align 16, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !11
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dq, float %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load float, ptr %i.du, align 8, !tbaa !11
  %i.dw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dt, float %i.dv) ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, 1.000000e+02
end_hunk_0
