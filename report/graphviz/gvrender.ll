Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvrender?download=true
inline.NumInlined: 56
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gvrender_select:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !40
  %i.aj = or i32 %i.ai, %i.v
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !33
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.y, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !88
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.n, ptr %i.am, align 8, !tbaa !88
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.an, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  %.0 = phi i32 [ 999, %bb.a ], [ 999, %bb.f ], [ 300, %bb.e ], [ 300, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @gvplugin_load(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @gvrender_features(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @gvrender_begin_job(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = tail call i32 @gvdevice_initialize(ptr noundef %0) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @gvdevice_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gvrender_end_job(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !91
  tail call void @gvdevice_finalize(ptr noundef nonnull %0) #21
  ret void
}

declare void @gvdevice_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @gvrender_ptf(ptr nofree noundef readonly captures(none) %0, double %1, double %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.03.0.copyload = load double, ptr %i.a, align 8, !tbaa !54 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.55.0.copyload = load double, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !54 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = load double, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load double, ptr %i.d, align 8, !tbaa !56
  %i.f = fmul double %i.c, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = load double, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fadd double %2, %.sroa.55.0.copyload
  %i.l = fneg double %i.k
  %i.m = fmul double %i.f, %i.l
  %i.n = fadd double %1, %.sroa.03.0.copyload
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = fadd double %1, %.sroa.03.0.copyload
  %i.p = fmul double %i.o, %i.f
  %i.q = fadd double %2, %.sroa.55.0.copyload
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.015.0 = phi double [ %i.m, %bb.b ], [ %i.p, %bb.c ]
  %.pn = phi double [ %i.n, %bb.b ], [ %i.q, %bb.c ]
  %i.r = fmul double %i.c, %i.h
  %.sroa.316.0 = fmul double %i.r, %.pn
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.015.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.316.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @gvrender_ptf_A(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef returned writeonly captures(ret: address, provenance) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = load double, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !54 ; 10 uses
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !54
  %i.g = insertelement <2 x double> poison, double %i.c, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.h, %i.f             ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.k = load i32, ptr %i.j, align 8, !tbaa !58
  %.not = icmp eq i32 %i.k, 0
  %.not42 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader36

.preheader36:                                     ; preds = %bb.a
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader36
  %min.iters.check = icmp ult i64 %3, 6
  br i1 %min.iters.check, label %.lr.ph.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = getelementptr i8, ptr %2, i64 8
  %i.m = shl i64 %3, 4                            ; 3 uses
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.m
  %4 = add i64 %i.m, -8                           ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %1, i64 %4
  %bound0 = icmp ult ptr %i.l, %i.p
  %bound1 = icmp ult ptr %i.o, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %2, %6
  %bound156 = icmp ult ptr %1, %5
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat61 = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %wide.vec = load <4 x double>, ptr %i.r, align 8, !tbaa !54 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec64 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.s = fadd <2 x double> %broadcast.splat, %strided.vec64
  %i.t = fneg <2 x double> %i.s
  %i.u = fadd <2 x double> %broadcast.splat61, %strided.vec
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.w = shufflevector <2 x double> %i.t, <2 x double> %i.u, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul <4 x double> %i.q, %i.w
  store <4 x double> %interleaved.vec, ptr %i.v, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader98

.lr.ph.preheader98:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03538.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.03538.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader98
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03538.ph
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !54
  %i.aa = fadd <2 x double> %i.e, %i.z            ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.03538.ph
  %i.ac = fneg <2 x double> %i.aa
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.ae = fmul <2 x double> %i.i, %i.ad
  store <2 x double> %i.ae, ptr %i.ab, align 8, !tbaa !54
  %i.af = or disjoint i64 %.03538.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader98
  %.03538.unr = phi i64 [ %.03538.ph, %.lr.ph.preheader98 ], [ %i.af, %.lr.ph.prol ]
  %i.ag = icmp eq i64 %3, %.neg
  br i1 %i.ag, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %.not42, label %.loopexit, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.preheader
  %min.iters.check79 = icmp ult i64 %3, 8
  br i1 %min.iters.check79, label %.lr.ph40.preheader97, label %vector.memcheck80

vector.memcheck80:                                ; preds = %.lr.ph40.preheader
  %i.ah = shl i64 %3, 4                           ; 3 uses
  %i.ai = add i64 %i.ah, -8                       ; 2 uses
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai
  %i.ak = getelementptr i8, ptr %1, i64 %i.ai
  %7 = getelementptr i8, ptr %2, i64 8
  %8 = getelementptr i8, ptr %2, i64 %i.ah
  %9 = getelementptr i8, ptr %1, i64 8
  %i.al = getelementptr i8, ptr %1, i64 %i.ah
  %bound081 = icmp ult ptr %2, %i.ak
  %bound182 = icmp ult ptr %1, %i.aj
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %7, %i.al
  %bound185 = icmp ult ptr %9, %8
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %.lr.ph40.preheader97, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck80
  %n.vec89 = and i64 %3, -2                       ; 3 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next93, %vector.body90 ] ; 4 uses
  %i.am = or disjoint i64 %index91, 1             ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index91
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.am
  %wide.load = load <2 x double>, ptr %i.an, align 8
  %wide.load92 = load <2 x double>, ptr %i.ao, align 8
  %i.ap = fadd <2 x double> %i.e, %wide.load
  %i.aq = fadd <2 x double> %i.e, %wide.load92
  %i.ar = fmul <2 x double> %i.i, %i.ap
  %i.as = fmul <2 x double> %i.i, %i.aq
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index91
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.am
  store <2 x double> %i.ar, ptr %i.at, align 8
  store <2 x double> %i.as, ptr %i.au, align 8
  %index.next93 = add nuw i64 %index91, 2         ; 2 uses
  %i.av = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.av, label %middle.block94, label %vector.body90, !llvm.loop !93

middle.block94:                                   ; preds = %vector.body90
  %cmp.n95 = icmp eq i64 %3, %n.vec89
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph40.preheader97

.lr.ph40.preheader97:                             ; preds = %vector.memcheck80, %.lr.ph40.preheader, %middle.block94
  %.039.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph40.preheader ], [ %n.vec89, %middle.block94 ] ; 5 uses
  %.neg102 = or disjoint i64 %.039.ph, 1
  %xtraiter100 = and i64 %3, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader97
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.039.ph
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.039.ph
  %i.ay = load <2 x double>, ptr %i.aw, align 8, !tbaa !54
  %i.az = fadd <2 x double> %i.e, %i.ay
  %i.ba = fmul <2 x double> %i.i, %i.az
  store <2 x double> %i.ba, ptr %i.ax, align 8, !tbaa !54
  %i.bb = or disjoint i64 %.039.ph, 1
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader97
  %.039.unr = phi i64 [ %.039.ph, %.lr.ph40.preheader97 ], [ %i.bb, %.lr.ph40.prol ]
  %i.bc = icmp eq i64 %3, %.neg102
  br i1 %i.bc, label %.loopexit, label %.lr.ph40

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03538 = phi i64 [ %i.bs, %.lr.ph ], [ %.03538.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03538
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !54
  %i.bf = fadd <2 x double> %i.e, %i.be           ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.03538
  %i.bh = fneg <2 x double> %i.bf
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bj = fmul <2 x double> %i.i, %i.bi
  store <2 x double> %i.bj, ptr %i.bg, align 8, !tbaa !54
  %i.bk = add nuw i64 %.03538, 1                  ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bk
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !54
  %i.bn = fadd <2 x double> %i.e, %i.bm           ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bk
  %i.bp = fneg <2 x double> %i.bn
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.br = fmul <2 x double> %i.i, %i.bq
  store <2 x double> %i.br, ptr %i.bo, align 8, !tbaa !54
  %i.bs = add nuw i64 %.03538, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bs, %3
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !94

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.039 = phi i64 [ %i.ce, %.lr.ph40 ], [ %.039.unr, %.lr.ph40.prol.loopexit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.039
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.039
  %i.bv = load <2 x double>, ptr %i.bt, align 8, !tbaa !54
  %i.bw = fadd <2 x double> %i.e, %i.bv
  %i.bx = fmul <2 x double> %i.i, %i.bw
  store <2 x double> %i.bx, ptr %i.bu, align 8, !tbaa !54
  %i.by = add nuw i64 %.039, 1                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.by
  %i.cb = load <2 x double>, ptr %i.bz, align 8, !tbaa !54
  %i.cc = fadd <2 x double> %i.e, %i.cb
  %i.cd = fmul <2 x double> %i.i, %i.cc
  store <2 x double> %i.cd, ptr %i.ca, align 8, !tbaa !54
  %i.ce = add nuw i64 %.039, 2                    ; 2 uses
  %exitcond44.not.1 = icmp eq i64 %i.ce, %3
  br i1 %exitcond44.not.1, label %.loopexit, label %.lr.ph40, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph40.prol.loopexit, %.lr.ph40, %middle.block, %middle.block94, %.preheader36, %.preheader
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @gvrender_begin_graph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gvrender_end_graph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @gvdevice_format(ptr noundef nonnull %0) #21
  ret void
}

declare void @gvdevice_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gvrender_begin_page(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gvrender_end_page(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @gvrender_begin_layer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
end_hunk_0
