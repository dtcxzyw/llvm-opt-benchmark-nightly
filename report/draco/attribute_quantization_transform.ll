Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/attribute_quantization_transform?download=true
inline.NumInlined: 466
inline.NumDeleted: 237
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5draco30AttributeQuantizationTransform25GeneratePortableAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEiPS1_:bb.a
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68   ; 4 uses
  %.not45 = icmp eq i8 %i.b, 0
  %i.z = load float, ptr %5, align 4              ; 4 uses
  br i1 %.not45, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !69, !range !70, !noalias !104, !noundef !71
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load ptr, ptr %1, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 4 uses
  %.pre80 = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ai = getelementptr i8, ptr %.pre80, i64 %i.af ; 2 uses
  %wide.trip.count66 = zext i8 %i.b to i64        ; 6 uses
  br i1 %i.ac, label %.cont.us.us.preheader, label %.else.us.preheader

.else.us.preheader:                               ; preds = %.lr.ph41.split.us
  %min.iters.check = icmp ult i8 %i.b, 4
  %n.vec = and i64 %wide.trip.count66, 252        ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count66
  br label %.else.us

.cont.us.us.preheader:                            ; preds = %.lr.ph41.split.us
  %min.iters.check93 = icmp ult i8 %i.b, 4
  %n.vec95 = and i64 %wide.trip.count66, 252      ; 4 uses
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n104 = icmp eq i64 %n.vec95, %wide.trip.count66
  br label %.cont.us.us

.cont.us.us:                                      ; preds = %.cont.us.us.preheader, %._crit_edge.us.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %._crit_edge.us.us ], [ 0, %.cont.us.us.preheader ] ; 2 uses
  %.02239.us.us = phi i64 [ %indvars.iv.next61.lcssa, %._crit_edge.us.us ], [ 0, %.cont.us.us.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv68
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.y, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.an, i64 %i.y, i1 false)
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.cont.us.us
  %i.ao = add i64 %.02239.us.us, %n.vec95         ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.g, i64 %.02239.us.us
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body98 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index99
  %wide.load100 = load <4 x float>, ptr %i.aq, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index99
  %wide.load101 = load <4 x float>, ptr %i.ar, align 4, !tbaa !39
  %i.as = fsub <4 x float> %wide.load100, %wide.load101
  %i.at = fmul <4 x float> %i.as, %broadcast.splat97
  %i.au = fadd <4 x float> %i.at, splat (float 5.000000e-01)
  %i.av = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.au)
  %i.aw = fptosi <4 x float> %i.av to <4 x i32>
  %i.ax = getelementptr [4 x i8], ptr %i.ap, i64 %index99
  store <4 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !72
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.ay = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.ay, label %middle.block103, label %vector.body98, !llvm.loop !96

middle.block103:                                  ; preds = %vector.body98
  br i1 %cmp.n104, label %._crit_edge.us.us, label %scalar.ph92.preheader

scalar.ph92.preheader:                            ; preds = %.cont.us.us, %middle.block103
  %indvars.iv60.ph = phi i64 [ %.02239.us.us, %.cont.us.us ], [ %i.ao, %middle.block103 ]
  %indvars.iv58.ph = phi i64 [ 0, %.cont.us.us ], [ %n.vec95, %middle.block103 ]
  br label %scalar.ph92

scalar.ph92:                                      ; preds = %scalar.ph92.preheader, %scalar.ph92
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph92 ], [ %indvars.iv60.ph, %scalar.ph92.preheader ] ; 2 uses
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %scalar.ph92 ], [ %indvars.iv58.ph, %scalar.ph92.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv58
  %i.ba = load float, ptr %i.az, align 4, !tbaa !39
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv58
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = fsub float %i.ba, %i.bc
  %i.be = fmul float %i.bd, %i.z
  %i.bf = fadd float %i.be, 5.000000e-01
  %i.bg = call float @llvm.floor.f32(float %i.bf)
  %i.bh = fptosi float %i.bg to i32
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv60
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !72
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge.us.us, label %scalar.ph92, !llvm.loop !97

._crit_edge.us.us:                                ; preds = %scalar.ph92, %middle.block103
  %indvars.iv.next61.lcssa = phi i64 [ %i.ao, %middle.block103 ], [ %indvars.iv.next61, %scalar.ph92 ]
  %indvars.iv.next69 = add i64 %indvars.iv68, 1   ; 2 uses
  %i.bj = and i64 %indvars.iv.next69, 4294967295
  %i.bk = icmp ugt i64 %i.v, %i.bj
  br i1 %i.bk, label %.cont.us.us, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !98

.else.us:                                         ; preds = %.else.us.preheader, %._crit_edge.us
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge.us ], [ 0, %.else.us.preheader ] ; 2 uses
  %.02239.us = phi i64 [ %indvars.iv.next51.lcssa, %._crit_edge.us ], [ 0, %.else.us.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv55
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !106
  %i.bn = load ptr, ptr %i.w, align 8, !noalias !104
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %storemerge.i.else.val.us = load i32, ptr %i.bp, align 4, !tbaa !72, !noalias !104
  %i.bq = zext i32 %storemerge.i.else.val.us to i64
  %i.br = mul nsw i64 %i.y, %i.bq
  %i.bs = getelementptr i8, ptr %i.ai, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.bs, i64 %i.y, i1 false)
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.else.us
  %i.bt = add i64 %.02239.us, %n.vec              ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.g, i64 %.02239.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %wide.load = load <4 x float>, ptr %i.bv, align 4, !tbaa !39
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index
  %wide.load90 = load <4 x float>, ptr %i.bw, align 4, !tbaa !39
  %i.bx = fsub <4 x float> %wide.load, %wide.load90
  %i.by = fmul <4 x float> %i.bx, %broadcast.splat
  %i.bz = fadd <4 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.bz)
  %i.cb = fptosi <4 x float> %i.ca to <4 x i32>
  %i.cc = getelementptr [4 x i8], ptr %i.bu, i64 %index
  store <4 x i32> %i.cb, ptr %i.cc, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.else.us, %middle.block
  %indvars.iv50.ph = phi i64 [ %.02239.us, %.else.us ], [ %i.bt, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.else.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %scalar.ph ], [ %indvars.iv50.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39
  %i.ci = fsub float %i.cf, %i.ch
  %i.cj = fmul float %i.ci, %i.z
  %i.ck = fadd float %i.cj, 5.000000e-01
  %i.cl = call float @llvm.floor.f32(float %i.ck)
  %i.cm = fptosi float %i.cl to i32
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv50
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count66
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !100

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next51.lcssa = phi i64 [ %i.bt, %middle.block ], [ %indvars.iv.next51, %scalar.ph ]
  %indvars.iv.next56 = add i64 %indvars.iv55, 1   ; 2 uses
  %i.co = and i64 %indvars.iv.next56, 4294967295
  %i.cp = icmp ugt i64 %i.v, %i.co
  br i1 %i.cp, label %.else.us, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !98

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge.us, %._crit_edge.us.us, %.lr.ph41, %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.draco::Dequantizer", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %.not = icmp eq i32 %i.b, 9
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36    ; 5 uses
  %4 = zext i8 %i.f to i64
  %i.g = zext i8 %i.f to i64
  %5 = shl nuw nsw i64 %4, 2                      ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #13 ; 11 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZN5draco11DequantizerC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %notmask = shl nsw i32 -1, %i.d
  %i.k = xor i32 %notmask, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load float, ptr %i.l, align 8, !tbaa !44
  %i.n = invoke noundef zeroext i1 @_ZN5draco11Dequantizer4InitEfi(ptr noundef nonnull align 4 dereferenceable(4) %3, float noundef %i.m, i32 noundef %i.k)
          to label %bb.d unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ; 2 uses

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !66
  %i.q = load ptr, ptr %1, align 8, !tbaa !67
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr i8, ptr %i.r, i64 %i.p     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !65   ; 6 uses
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %.not48 = icmp eq i8 %i.f, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  br i1 %.not48, label %.preheader.preheader, label %.preheader.us.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter70 = and i32 %i.u, 1
  %i.x = icmp eq i32 %i.u, 1
  br i1 %i.x, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.u, -2
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i8 %i.f to i64          ; 5 uses
  %min.iters.check = icmp ult i8 %i.f, 8
  %n.vec = and i64 %wide.trip.count, 248          ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.y = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv55 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next56, %._crit_edge.us ] ; 2 uses
  %.02846.us.a = phi i32 [ 0, %.preheader.us.preheader ], [ %i.bv, %._crit_edge.us ]
  %.03244.us = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next51.lcssa, %._crit_edge.us ] ; 3 uses
  %i.z = load float, ptr %3, align 4, !tbaa !112  ; 4 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !38  ; 5 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.ad = add i64 %.03244.us, %n.vec              ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.s, i64 %.03244.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !72
  %wide.load63 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !72
  %i.ah = sitofp <4 x i32> %wide.load to <4 x float>
  %i.ai = sitofp <4 x i32> %wide.load63 to <4 x float>
  %i.aj = fmul <4 x float> %broadcast.splat, %i.ah
  %i.ak = fmul <4 x float> %broadcast.splat, %i.ai
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load64 = load <4 x float>, ptr %i.al, align 4, !tbaa !39
  %wide.load65 = load <4 x float>, ptr %i.am, align 4, !tbaa !39
  %i.an = fadd <4 x float> %i.aj, %wide.load64
  %i.ao = fadd <4 x float> %i.ak, %wide.load65
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !39
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv50.ph = phi i64 [ %.03244.us, %.preheader.us ], [ %i.ad, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next51.prol = add nsw i64 %indvars.iv50.ph, 1 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv50.ph
  %i.at = load i32, ptr %i.as, align 4, !tbaa !72
  %i.au = sitofp i32 %i.at to float
  %i.av = fmul float %i.z, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.ph
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !39
  %i.ay = fadd float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  store float %i.ay, ptr %i.az, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next51.lcssa69.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next51.prol, %scalar.ph.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %scalar.ph.preheader ], [ %indvars.iv.next51.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.ba, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %scalar.ph ], [ %indvars.iv50.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv50
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !72
  %i.bd = sitofp i32 %i.bc to float
  %i.be = fmul float %i.z, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !39
  %i.bh = fadd float %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.bh, ptr %i.bi, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next51.1 = add nsw i64 %indvars.iv50, 2 ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv50
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !72
  %i.bm = sitofp i32 %i.bl to float
  %i.bn = fmul float %i.z, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !108

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next51.lcssa = phi i64 [ %i.ad, %middle.block ], [ %indvars.iv.next51.lcssa69.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next51.1, %scalar.ph ]
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.i, i64 %5, i1 false)
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, %i.h
  %i.bv = add nuw i32 %.02846.us.a, 1             ; 2 uses
  %exitcond58.not = icmp eq i32 %i.bv, %i.u
  br i1 %exitcond58.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37, label %.preheader.us, !llvm.loop !109

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.i, i64 %5, i1 false)
  %i.by = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr nonnull align 1 %i.i, i64 %5, i1 false)
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37.loopexit.unr-lcssa, label %.preheader, !llvm.loop !109

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZdaPv(ptr noundef nonnull %i.i) #14
  resume { ptr, i32 } %i.ca

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod71.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37.loopexit.unr-lcssa, %.preheader.preheader
  %lcmp.mod72 = trunc i32 %i.u to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %i.i, i64 %5, i1 false)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37: ; preds = %._crit_edge.us, %.preheader.epil.preheader, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37.loopexit.unr-lcssa, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZdaPv(ptr noundef nonnull %i.i) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
  %.1 = phi i1 [ %i.n, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare void @_ZN5draco11DequantizerC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN5draco11Dequantizer4InitEfi(ptr noundef nonnull align 4 dereferenceable(4), float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform19IsQuantizationValidEi(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 30
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform13SetParametersEiPKfif(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = icmp ult i32 %i.a, 30                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e
  tail call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %2, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.g, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform17ComputeParametersERKNS_14PointAttributeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq i32 %i.b, -1
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 30
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.a, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !44
  %i.h = zext i8 %i.f to i64                      ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.f, 0              ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 range(i64 0, 1021) %i.i, i1 false), !tbaa !39
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc, %bb.b
  %.sroa.11.0 = phi ptr [ null, %bb.b ], [ %i.k, %.noexc ]
  %.sroa.096.0 = phi ptr [ null, %bb.b ], [ %i.j, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.l, %.noexc ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  store ptr %.sroa.096.0, ptr %i.m, align 8, !tbaa !38
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !37
  store ptr %.sroa.11.0, ptr %i.p, align 8, !tbaa !73
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.t) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.c, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.u = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #13 ; 5 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #13
          to label %bb.d unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit71 ; 9 uses

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68  ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !67
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.y   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.af = load i64, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.ag = load i64, ptr %i.z, align 8, !tbaa !68  ; 13 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.aj, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !65 ; 3 uses
  %i.am = icmp ugt i32 %i.al, 1
  br i1 %i.am, label %.lr.ph108, label %.critedge60.preheader

.lr.ph108:                                        ; preds = %bb.d
  %wide.trip.count122 = zext i32 %i.al to i64     ; 2 uses
  %.pre129 = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.an = getelementptr i8, ptr %.pre129, i64 %i.af ; 6 uses
  br i1 %.not.i.i.i.i, label %.critedge.preheader, label %.lr.ph.us.preheader

.critedge.preheader:                              ; preds = %.lr.ph108
  %i.ao = add nsw i64 %wide.trip.count122, -1     ; 2 uses
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.ap = add i32 %i.al, -2
  %i.aq = icmp ult i32 %i.ap, 3
  br i1 %i.aq, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %i.ao, -4
  br label %.critedge

.lr.ph.us.preheader:                              ; preds = %.lr.ph108
  %wide.trip.count = zext i8 %i.f to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..critedge_crit_edge.us
  %indvars.iv114 = phi i64 [ 1, %.lr.ph.us.preheader ], [ %indvars.iv.next115, %..critedge_crit_edge.us ] ; 2 uses
  %i.ar = mul nsw i64 %i.ag, %indvars.iv114
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.as, i64 %i.ag, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !39 ; 5 uses
  %i.av = fcmp uno float %i.au, 0.000000e+00
  br i1 %i.av, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !39
  %i.az = fcmp ogt float %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.au, ptr %i.ax, align 4, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bc = fcmp olt float %i.bb, %i.au
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.au, ptr %i.ba, align 4, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.e, !llvm.loop !114

..critedge_crit_edge.us:                          ; preds = %bb.j
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count122
  br i1 %exitcond118.not, label %.critedge60.preheader, label %.lr.ph.us, !llvm.loop !115

.critedge60.preheader:                            ; preds = %..critedge_crit_edge.us, %bb.d
  br i1 %.not.i.i.i.i, label %.critedge60.preheader..critedge62_crit_edge, label %.lr.ph

.critedge60.preheader..critedge62_crit_edge.loopexit.unr-lcssa: ; preds = %.critedge
end_hunk_0
