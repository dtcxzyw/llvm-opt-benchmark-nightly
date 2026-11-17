Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorize?download=true
inline.NumInlined: 32
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !73
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.p, %i.m                   ; 7 uses
  %.not31 = icmp eq i64 %i.q, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.q, 9
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = mul nsw i64 %i.m, %i.p
  %i.s = shl i64 %i.r, 4                          ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %bound0 = icmp ult ptr %3, %i.v
  %bound1 = icmp ult ptr %2, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.w = and i64 %i.q, 7                          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i64 8, i64 %i.w
  %n.vec = sub i64 %i.q, %i.y                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x float> poison, float %i.f, i64 0
  %broadcast.splat34 = shufflevector <8 x float> %broadcast.splatinsert33, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat38 = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.z = shufflevector <8 x float> %broadcast.splat38, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %wide.vec = load <32 x float>, ptr %i.ab, align 4, !tbaa !12, !alias.scope !74
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float -5.000000e+01)
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.ac, %broadcast.splat
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %broadcast.splat34
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  %i.ag = shufflevector <8 x float> %i.ae, <8 x float> %broadcast.splat36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ag, <16 x float> %i.z, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.af, align 4, !tbaa !12, !noalias !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %.lr.ph.preheader39, label %vector.body, !llvm.loop !62

.lr.ph.preheader39:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.030.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.ai = sub i64 %i.q, %.030.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader39, %.lr.ph.prol
  %.030.prol = phi i64 [ %i.ao, %.lr.ph.prol ], [ %.030.ph, %.lr.ph.preheader39 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader39 ]
  %i.aj = shl i64 %.030.prol, 2                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %reass.add.prol = fadd reassoc nsz arcp contract afn float %i.al, -5.000000e+01
  %reass.mul.prol = fmul reassoc nsz arcp contract afn float %reass.add.prol, %i.j
  %i.am = fadd reassoc nsz arcp contract afn float %reass.mul.prol, %i.f
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj ; 3 uses
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.prol, align 4, !tbaa !12, !alias.scope !77
  %.sroa.6.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.prol, align 4, !tbaa !12, !alias.scope !77
  store float %i.am, ptr %i.an, align 4, !tbaa !12
  %i.ao = add nuw i64 %.030.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !66

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader39
  %.030.unr = phi i64 [ %.030.ph, %.lr.ph.preheader39 ], [ %i.ao, %.lr.ph.prol ]
  %i.ap = sub i64 %.030.ph, %i.q
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.030 = phi i64 [ %i.bo, %.lr.ph ], [ %.030.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = shl i64 %.030, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %reass.add = fadd reassoc nsz arcp contract afn float %i.at, -5.000000e+01
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.j
  %i.au = fadd reassoc nsz arcp contract afn float %reass.mul, %i.f
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12, !alias.scope !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12, !alias.scope !77
  store float %i.au, ptr %i.av, align 4, !tbaa !12
  %i.aw = shl i64 %.030, 2
  %i.ax = add i64 %i.aw, 4                        ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %i.az, -5.000000e+01
  %reass.mul.1 = fmul reassoc nsz arcp contract afn float %reass.add.1, %i.j
  %i.ba = fadd reassoc nsz arcp contract afn float %reass.mul.1, %i.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ax ; 3 uses
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !12, !alias.scope !77
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !12, !alias.scope !77
  store float %i.ba, ptr %i.bb, align 4, !tbaa !12
  %i.bc = shl i64 %.030, 2
  %i.bd = add i64 %i.bc, 8                        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %reass.add.2 = fadd reassoc nsz arcp contract afn float %i.bf, -5.000000e+01
  %reass.mul.2 = fmul reassoc nsz arcp contract afn float %reass.add.2, %i.j
  %i.bg = fadd reassoc nsz arcp contract afn float %reass.mul.2, %i.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bd ; 3 uses
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.2, align 4, !tbaa !12, !alias.scope !77
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !12, !alias.scope !77
  store float %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = shl i64 %.030, 2
  %i.bj = add i64 %i.bi, 12                       ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %reass.add.3 = fadd reassoc nsz arcp contract afn float %i.bl, -5.000000e+01
  %reass.mul.3 = fmul reassoc nsz arcp contract afn float %reass.add.3, %i.j
  %i.bm = fadd reassoc nsz arcp contract afn float %reass.mul.3, %i.f
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bj ; 3 uses
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !12, !alias.scope !77
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.3, align 4, !tbaa !12, !alias.scope !77
  store float %i.bm, ptr %i.bn, align 4, !tbaa !12
  %i.bo = add nuw i64 %.030, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bo, %i.q
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !36
  store i32 -999, ptr %i.a, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = load float, ptr %i.g, align 4, !tbaa !53
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 6.000000e+00 ; 8 uses
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.k, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.l, float 2.000000e+00, float -4.000000e+00
  %i.m = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.k ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, 1.000000e+00
  br i1 %i.n, label %hue2rgb.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.m, 3.000000e+00
  br i1 %i.o, label %hue2rgb.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.m, 4.000000e+00
  %i.q = fsub fast float 4.000000e+00, %i.m
  %i.r = select reassoc nsz arcp contract afn i1 %i.p, float %i.q, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.c ], [ %i.r, %bb.d ], [ %i.m, %bb.b ]
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.k, 1.000000e+00
  br i1 %i.s, label %hue2rgb.exit36.i.i, label %bb.e

bb.e:                                             ; preds = %hue2rgb.exit.i.i
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.k, 3.000000e+00
  br i1 %i.t, label %hue2rgb.exit36.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = fsub fast float 4.000000e+00, %i.k
  %i.v = select reassoc nsz arcp contract afn i1 %i.l, float %i.u, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.f, %bb.e, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.v, %bb.f ], [ %i.k, %hue2rgb.exit.i.i ]
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.k, 2.000000e+00
  %.v34.i.i = select i1 %i.w, float -2.000000e+00, float 4.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.k ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+00
  br i1 %i.y, label %update_saturation_slider_end_color.exit, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit36.i.i
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, 3.000000e+00
  br i1 %i.z, label %update_saturation_slider_end_color.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00
  %i.ab = fsub fast float 4.000000e+00, %i.x
  %i.ac = select reassoc nsz arcp contract afn i1 %i.aa, float %i.ab, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i, %bb.g, %bb.h
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ac, %bb.h ], [ %i.x, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.i, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !51
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ad) #20
  br label %bb.i

bb.i:                                             ; preds = %update_saturation_slider_end_color.exit, %bb.a
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = load float, ptr %i.e, align 16, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load float, ptr %i.i, align 8, !tbaa !12
  %i.k = fmul reassoc nsz arcp contract afn float %i.g, 2.000000e-03
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, 8.620690e-03
  %i.m = fmul reassoc nsz arcp contract afn float %i.j, 5.000000e-03
  %i.n = fadd reassoc nsz arcp contract afn float %i.l, f0x3E0D3DCB ; 7 uses
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.k ; 5 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, f0x3E53DCB1
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.o
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, f0x3E038026
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0xBC911AA6
  %i.u = select reassoc nsz arcp contract afn i1 %i.p, float %i.r, float %i.t ; 4 uses
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %i.n, f0x3E53DCB1
  %i.w = fmul reassoc nsz arcp contract afn float %i.n, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.n
  %i.y = fmul reassoc nsz arcp contract afn float %i.n, f0x3E038026
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0xBC911AA6
  %i.aa = select reassoc nsz arcp contract afn i1 %i.v, float %i.x, float %i.z ; 4 uses
  %i.ab = fsub reassoc nsz arcp contract afn float %i.n, %i.m ; 5 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, f0x3E53DCB1
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ab, %i.ab
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ab
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, f0x3E038026
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, f0xBC911AA6
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ae, float %i.ag ; 4 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.u, 9.642000e-01
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, f0x3F532CA5
  %i.ak = fmul reassoc nsz arcp contract afn float %i.u, f0x404162F2
  %i.al = fmul reassoc nsz arcp contract afn float %i.aa, f0x3FCEF57D
  %i.am = fsub reassoc nsz arcp contract afn float %i.ak, %i.al
  %i.an = fmul reassoc nsz arcp contract afn float %i.ah, f0xBECF35E2
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, %i.an ; 3 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.u, f0x3F719831
  %i.aq = fmul reassoc nsz arcp contract afn float %i.aa, f0x3FF54420
  %i.ar = fsub reassoc nsz arcp contract afn float %i.aq, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn float %i.ah, f0x3CE2116F
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as ; 3 uses
  %i.au = fmul reassoc nsz arcp contract afn float %i.u, f0x3D8E11AE
  %i.av = fmul reassoc nsz arcp contract afn float %i.aa, f0x3E6A7CB9
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ah, f0x3F94602A
  %i.ay = fadd reassoc nsz arcp contract afn float %i.aw, %i.ax ; 3 uses
  %i.az = fadd reassoc nsz arcp contract afn float %i.ai, %i.aa
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.aj
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 0.000000e+00
  %i.bc = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.at, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ay, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = bitcast <4 x float> %i.bf to <4 x i32>  ; 2 uses
  %i.bh = and <4 x i32> %i.bg, splat (i32 8388607)
  %i.bi = or disjoint <4 x i32> %i.bh, splat (i32 1065353216)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>  ; 5 uses
  %i.bk = lshr <4 x i32> %i.bg, splat (i32 23)
  %i.bl = and <4 x i32> %i.bk, splat (i32 255)
  %i.bm = add nsw <4 x i32> %i.bl, splat (i32 -127)
  %i.bn = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bo = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bj, splat (float f0x3D74552F)
  %i.bp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bo, splat (float f0xBEEE7397)
  %i.bq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bp, %i.bj
  %i.br = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bq, splat (float f0x3FBD96DD)
  %i.bs = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.br, %i.bj
  %i.bt = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bs, splat (float f0xC02153F6)
  %i.bu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bt, %i.bj
  %i.bv = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bu, splat (float f0x4038D96C)
  %i.bw = fadd fast <4 x float> %i.bj, splat (float -1.000000e+00)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bv, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, %i.bn
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, splat (float f0x3ED55555)
  %i.ca = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bz, <4 x float> splat (float 1.290000e+02))
  %i.cb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ca, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, splat (float -5.000000e-01)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cc)
  %i.ce = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cd to <4 x float> ; 5 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ugt float %i.ao, 3.130800e-03
  br i1 %i.cf, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.ao, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.ce, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.ce
  %i.ch = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x3C5DBE69
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, f0x3D5509F9
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ch
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, f0x3E773CC5
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.ch
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, f0x3F3168B3
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ch
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, f0x3F800016
  %i.cq = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.cr = shl i32 %i.cq, 23
  %i.cs = add i32 %i.cr, 1065353216
  %i.ct = bitcast i32 %i.cs to float
  %i.cu = fmul reassoc nnan nsz arcp contract afn float %i.ct, 1.055000e+00
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cp
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.b, %bb.c
  %i.cx = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.b ], [ %i.cw, %bb.c ] ; 5 uses
  %foldExtExtBinop34 = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.ce
  %i.cy = extractelement <4 x float> %foldExtExtBinop34, i64 2 ; 4 uses
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, f0x3C5DBE69
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, f0x3D5509F9
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, f0x3E773CC5
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cy
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, f0x3F3168B3
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.cy
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, f0x3F800016
  %foldExtExtBinop36 = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.ce
  %i.dh = extractelement <4 x float> %foldExtExtBinop36, i64 1 ; 4 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3C5DBE69
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, f0x3D5509F9
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.dh
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, f0x3E773CC5
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.dh
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, f0x3F3168B3
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dh
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, f0x3F800016
  %i.dq = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dr = fptosi <2 x float> %i.dq to <2 x i32>
  %i.ds = shl <2 x i32> %i.dr, splat (i32 23)
  %i.dt = add <2 x i32> %i.ds, splat (i32 1065353216)
  %i.du = bitcast <2 x i32> %i.dt to <2 x float>  ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.ay, 1.292000e+01
  %i.dw = fmul reassoc nsz arcp contract afn float %i.at, 1.292000e+01
  %i.dx = fcmp reassoc nsz arcp contract afn ugt float %i.at, 3.130800e-03
  %i.dy = extractelement <2 x float> %i.du, i64 0
  %i.dz = fmul reassoc nnan nsz arcp contract afn float %i.dy, 1.055000e+00
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dp
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, -5.500000e-02
  %i.ec = select reassoc nsz arcp contract afn i1 %i.dx, float %i.eb, float %i.dw ; 5 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ugt float %i.ay, 3.130800e-03
  %i.ee = extractelement <2 x float> %i.du, i64 1
  %i.ef = fmul reassoc nnan nsz arcp contract afn float %i.ee, 1.055000e+00
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.dg
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, -5.500000e-02
  %i.ei = select reassoc nsz arcp contract afn i1 %i.ed, float %i.eh, float %i.dv ; 5 uses
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cx, float %i.ec)
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ej, float %i.ei) ; 6 uses
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cx, float %i.ec)
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.el, float %i.ei) ; 3 uses
  %i.en = fsub reassoc nsz arcp contract afn float %i.ek, %i.em ; 5 uses
  %i.eo = fcmp reassoc nsz arcp contract afn une float %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.d, label %rgb2hsl.exit

bb.d:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.ep = fadd reassoc nsz arcp contract afn float %i.em, %i.ek ; 2 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, 5.000000e-01
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.eq, 5.000000e-01
  br i1 %i.er, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.es = fpext reassoc nsz arcp contract afn float %i.ek to double
  %i.et = fpext reassoc nsz arcp contract afn float %i.em to double
  %i.eu = fadd reassoc nsz arcp contract afn double %i.es, %i.et
  %i.ev = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.eu
  %i.ew = fptrunc reassoc nsz arcp contract afn double %i.ev to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ %i.ew, %bb.e ], [ %i.ep, %bb.d ]
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.ey = fdiv reassoc nsz arcp contract afn float %i.en, %i.ex ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn oeq float %i.ek, %i.cx
  br i1 %i.ez, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fa = fsub reassoc nsz arcp contract afn float %i.ec, %i.ei
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.fa, %i.en
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.fc = fcmp reassoc nsz arcp contract afn oeq float %i.ek, %i.ec
  br i1 %i.fc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fd = fsub reassoc nsz arcp contract afn float %i.ei, %i.cx
  %i.fe = fdiv reassoc nsz arcp contract afn float %i.fd, %i.en
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, 2.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.fg = fcmp reassoc nsz arcp contract afn oeq float %i.ek, %i.ei
  br i1 %i.fg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fh = fsub reassoc nsz arcp contract afn float %i.cx, %i.ec
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fh, %i.en
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, 4.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.043.i = phi nsz float [ %i.fb, %bb.g ], [ %i.ff, %bb.i ], [ %i.fj, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.fk = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.fl = fmul reassoc nsz arcp contract afn double %i.fk, f0x3FC5555555555555 ; 3 uses
  %i.fm = fptrunc reassoc nsz arcp contract afn double %i.fl to float ; 3 uses
  %i.fn = fcmp reassoc nsz arcp contract afn olt double %i.fl, f0xB690000000000000
  br i1 %i.fn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fm, 1.000000e+00
  br label %rgb2hsl.exit

bb.n:                                             ; preds = %bb.l
  %i.fp = fcmp reassoc nsz arcp contract afn ogt double %i.fl, f0x3FF0000010000000
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fm, -1.000000e+00
  %spec.select.i = select nsz i1 %i.fp, float %i.fq, float %i.fm
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %dt_XYZ_to_sRGB.exit, %bb.m, %bb.n
  %.1.i = phi nsz float [ %i.fo, %bb.m ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ], [ %spec.select.i, %bb.n ] ; 2 uses
  %.0.i = phi nsz float [ %i.ey, %bb.m ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ], [ %i.ey, %bb.n ] ; 2 uses
  %i.fr = load float, ptr %i.d, align 4, !tbaa !53
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fr, %.1.i
  %i.ft = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fs)
  %i.fu = fcmp reassoc nsz arcp contract afn olt float %i.ft, f0x38D1B717
  br i1 %i.fu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %rgb2hsl.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !54
  %i.fx = fsub reassoc nsz arcp contract afn float %i.fw, %.0.i
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fx)
  %i.fz = fcmp reassoc nsz arcp contract afn olt float %i.fy, f0x38D1B717
  br i1 %i.fz, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o, %rgb2hsl.exit
  store float %.1.i, ptr %i.d, align 4, !tbaa !53
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store float %.0.i, ptr %i.ga, align 4, !tbaa !54
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gd = atomicrmw add ptr %i.gc, i32 1 seq_cst, align 4 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !49
  %i.gg = load float, ptr %i.d, align 4, !tbaa !53
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gf, float noundef %i.gg) #20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51
  %i.gj = load float, ptr %i.ga, align 4, !tbaa !54
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gi, float noundef %i.gj) #20
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !51
  %i.gl = load float, ptr %i.d, align 4, !tbaa !53
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, 6.000000e+00 ; 8 uses
  %i.gn = fcmp reassoc nsz arcp contract afn olt float %i.gm, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.gn, float 2.000000e+00, float -4.000000e+00
  %i.go = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.gm ; 5 uses
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.go, 1.000000e+00
  br i1 %i.gp, label %hue2rgb.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.go, 3.000000e+00
  br i1 %i.gq, label %hue2rgb.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.go, 4.000000e+00
  %i.gs = fsub fast float 4.000000e+00, %i.go
  %i.gt = select reassoc nsz arcp contract afn i1 %i.gr, float %i.gs, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.q ], [ %i.gt, %bb.r ], [ %i.go, %bb.p ]
  %i.gu = fcmp reassoc nsz arcp contract afn olt float %i.gm, 1.000000e+00
  br i1 %i.gu, label %hue2rgb.exit36.i.i, label %bb.s

bb.s:                                             ; preds = %hue2rgb.exit.i.i
  %i.gv = fcmp reassoc nsz arcp contract afn olt float %i.gm, 3.000000e+00
  br i1 %i.gv, label %hue2rgb.exit36.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gw = fsub fast float 4.000000e+00, %i.gm
  %i.gx = select reassoc nsz arcp contract afn i1 %i.gn, float %i.gw, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.t, %bb.s, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.s ], [ %i.gx, %bb.t ], [ %i.gm, %hue2rgb.exit.i.i ]
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gm, 2.000000e+00
  %.v34.i.i = select i1 %i.gy, float -2.000000e+00, float 4.000000e+00
  %i.gz = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.gm ; 5 uses
  %i.ha = fcmp reassoc nsz arcp contract afn olt float %i.gz, 1.000000e+00
  br i1 %i.ha, label %update_saturation_slider_end_color.exit, label %bb.u

bb.u:                                             ; preds = %hue2rgb.exit36.i.i
  %i.hb = fcmp reassoc nsz arcp contract afn olt float %i.gz, 3.000000e+00
  br i1 %i.hb, label %update_saturation_slider_end_color.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hc = fcmp reassoc nsz arcp contract afn olt float %i.gz, 4.000000e+00
  %i.hd = fsub fast float 4.000000e+00, %i.gz
  %i.he = select reassoc nsz arcp contract afn i1 %i.hc, float %i.hd, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i, %bb.u, %bb.v
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.u ], [ %i.he, %bb.v ], [ %i.gz, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.gk, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 104
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 seq_cst, align 4 ; 0 uses
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !121
  tail call void @dt_dev_add_history_item(ptr noundef %i.hi, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %update_saturation_slider_end_color.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30
  %i.c = load float, ptr %1, align 4, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !54 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !122
  %i.h = fpext reassoc nsz arcp contract afn float %i.g to double
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, 1.000000e-02 ; 2 uses
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float ; 6 uses
  %i.k = fcmp reassoc nsz arcp contract afn oeq float %i.e, 0.000000e+00
  br i1 %i.k, label %hsl2rgb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fpext reassoc nsz arcp contract afn float %i.j to double ; 2 uses
  %i.m = fcmp reassoc nsz arcp contract afn olt double %i.i, f0x3FDFFFFFF0000000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, 1.000000e+00
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, %i.l
  %i.q = fptrunc reassoc nsz arcp contract afn double %i.p to float
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = fadd reassoc nsz arcp contract afn float %i.e, %i.j
  %i.s = fmul reassoc nsz arcp contract afn float %i.e, %i.j
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi float [ %i.q, %bb.c ], [ %i.t, %bb.d ] ; 10 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.l, 2.000000e+00
  %i.w = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.x = fsub reassoc nsz arcp contract afn double %i.v, %i.w
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 15 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.c, 6.000000e+00 ; 8 uses
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.z, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.aa, float 2.000000e+00, float -4.000000e+00
  %i.ab = fadd reassoc nsz arcp contract afn float %.v.i, %i.z ; 5 uses
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ab
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.y
  br label %hue2rgb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.ab, 3.000000e+00
  br i1 %i.ag, label %hue2rgb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ab, 4.000000e+00
  %i.ai = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.aj = fsub fast float 4.000000e+00, %i.ab
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.y
  %i.am = select reassoc nsz arcp contract afn i1 %i.ah, float %i.al, float %i.y
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi nsz float [ %i.af, %bb.f ], [ %i.am, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.z, 1.000000e+00
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hue2rgb.exit.i
  %i.ao = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.z
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.y
  br label %hue2rgb.exit36.i

bb.j:                                             ; preds = %hue2rgb.exit.i
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.z, 3.000000e+00
  br i1 %i.ar, label %hue2rgb.exit36.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.at = fsub fast float 4.000000e+00, %i.z
  %i.au = fmul reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.y
  %i.aw = select reassoc nsz arcp contract afn i1 %i.aa, float %i.av, float %i.y
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %.0.i35.i = phi nsz float [ %i.aq, %bb.i ], [ %i.aw, %bb.k ], [ %i.u, %bb.j ] ; 3 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.z, 2.000000e+00
  %.v34.i = select i1 %i.ax, float -2.000000e+00, float 4.000000e+00
  %i.ay = fadd reassoc nsz arcp contract afn float %.v34.i, %i.z ; 5 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %hue2rgb.exit36.i
  %i.ba = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.y
  br label %hsl2rgb.exit

bb.m:                                             ; preds = %hue2rgb.exit36.i
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.ay, 3.000000e+00
  br i1 %i.bd, label %hsl2rgb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.ay, 4.000000e+00
  %i.bf = fsub reassoc nsz arcp contract afn float %i.u, %i.y
  %i.bg = fsub fast float 4.000000e+00, %i.ay
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bf, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.y
  %i.bj = select reassoc nsz arcp contract afn i1 %i.be, float %i.bi, float %i.y
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.l, %bb.m, %bb.n, %bb.a
  %.sroa.013.0 = phi nsz float [ %i.j, %bb.a ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.m ], [ %.0.i.i, %bb.l ] ; 3 uses
  %.sroa.1220.0 = phi nsz float [ %i.j, %bb.a ], [ %.0.i35.i, %bb.n ], [ %.0.i35.i, %bb.m ], [ %.0.i35.i, %bb.l ] ; 3 uses
  %.sroa.21.0 = phi nsz float [ %i.j, %bb.a ], [ %i.bj, %bb.n ], [ %i.u, %bb.m ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !55
  %i.bm = icmp eq i32 %i.bl, 1                    ; 9 uses
  %. = select i1 %i.bm, float f0x3F13A4A3, float f0x3EDF452F
  %.59 = select i1 %i.bm, float 1.855540e-01, float f0x3EC5273A
  %.60 = select i1 %i.bm, float f0x3E40B39F, float f0x3E1283AB
  %.61 = select i1 %i.bm, float f0x3E9841C9, float f0x3E63D838
  %.62 = select i1 %i.bm, float f0x3F2099F3, float f0x3F37855B
  %.63 = select i1 %i.bm, float 7.527410e-02, float 6.061690e-02
  %.64 = select i1 %i.bm, float 2.703430e-02, float 1.393220e-02
  %.65 = select i1 %i.bm, float 7.068720e-02, float f0x3DC6DEB9
  %.66 = select i1 %i.bm, float f0x3F7DB949, float f0x3F36D410
  %i.bn = fmul reassoc nsz arcp contract afn float %.sroa.013.0, %.
  %i.bo = fmul reassoc nsz arcp contract afn float %.sroa.1220.0, %.59
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn float %.sroa.21.0, %.60
  %i.br = fadd reassoc nsz arcp contract afn float %i.bp, %i.bq ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %.sroa.013.0, %.61
  %i.bt = fmul reassoc nsz arcp contract afn float %.sroa.1220.0, %.62
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn float %.sroa.21.0, %.63
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bu, %i.bv ; 3 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %.sroa.013.0, %.64
  %i.by = fmul reassoc nsz arcp contract afn float %.sroa.1220.0, %.65
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bx
  %i.ca = fmul reassoc nsz arcp contract afn float %.sroa.21.0, %.66
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bz, %i.ca ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.br, f0x3F84C0A6 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, f0x3C111AA7
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %hsl2rgb.exit
  %i.ce = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.cc) #22
  br label %bb.q

bb.p:                                             ; preds = %hsl2rgb.exit
  %i.cf = fmul reassoc nsz arcp contract afn float %i.br, f0x410137F7
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, f0x3E0D3DCB
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ch = phi reassoc nsz arcp contract afn float [ %i.ce, %bb.o ], [ %i.cg, %bb.p ]
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.bw, f0x3C111AA7
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = fmul reassoc nsz arcp contract afn float %i.bw, f0x40F92F69
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, f0x3E0D3DCB
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cl = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bw) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = phi reassoc nsz arcp contract afn float [ %i.cl, %bb.s ], [ %i.ck, %bb.r ] ; 3 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cb, f0x3F9B2B9B ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, f0x3C111AA7
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cb, f0x41170A26
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.v:                                             ; preds = %bb.t
  %i.cr = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.cn) #22
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.v, %bb.u
  %i.cs = phi reassoc nsz arcp contract afn float [ %i.cr, %bb.v ], [ %i.cq, %bb.u ]
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cm, 1.160000e+02
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = fadd reassoc nsz arcp contract afn float %i.ct, -1.600000e+01
  %i.cw = fsub reassoc nsz arcp contract afn float %i.ch, %i.cm
  %i.cx = fsub reassoc nsz arcp contract afn float %i.cs, %i.cm
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !123
  %i.cz = insertelement <4 x float> poison, float %i.cw, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.cx, i64 2
  %i.db = insertelement <4 x float> %i.da, float %i.cy, i64 3
  %i.dc = fmul reassoc nsz arcp contract afn <4 x float> %i.db, <float poison, float 5.000000e+02, float -2.000000e+02, float f0x3C23D70A>
  %i.dd = insertelement <4 x float> %i.dc, float %i.cv, i64 0
  store <4 x float> %i.dd, ptr %i.b, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 16, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = load float, ptr %i.d, align 4, !tbaa !53
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, 6.000000e+00 ; 8 uses
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.i, float 2.000000e+00, float -4.000000e+00
  %i.j = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.h ; 5 uses
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.j, 1.000000e+00
  br i1 %i.k, label %hue2rgb.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, 3.000000e+00
  br i1 %i.l, label %hue2rgb.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.j, 4.000000e+00
  %i.n = fsub fast float 4.000000e+00, %i.j
  %i.o = select reassoc nsz arcp contract afn i1 %i.m, float %i.n, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.b ], [ %i.o, %bb.c ], [ %i.j, %bb.a ]
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.p, label %hue2rgb.exit36.i.i, label %bb.d

bb.d:                                             ; preds = %hue2rgb.exit.i.i
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.h, 3.000000e+00
  br i1 %i.q, label %hue2rgb.exit36.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fsub fast float 4.000000e+00, %i.h
  %i.s = select reassoc nsz arcp contract afn i1 %i.i, float %i.r, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.e, %bb.d, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.d ], [ %i.s, %bb.e ], [ %i.h, %hue2rgb.exit.i.i ]
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.h, 2.000000e+00
  %.v34.i.i = select i1 %i.t, float -2.000000e+00, float 4.000000e+00
  %i.u = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.h ; 5 uses
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 1.000000e+00
  br i1 %i.v, label %update_saturation_slider_end_color.exit, label %bb.f

bb.f:                                             ; preds = %hue2rgb.exit36.i.i
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.u, 3.000000e+00
  br i1 %i.w, label %update_saturation_slider_end_color.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.u, 4.000000e+00
  %i.y = fsub fast float 4.000000e+00, %i.u
  %i.z = select reassoc nsz arcp contract afn i1 %i.x, float %i.y, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i, %bb.f, %bb.g
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.f ], [ %i.z, %bb.g ], [ %i.u, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.f, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = tail call i32 (...) %i.b() #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.c, ptr %i.f, align 4, !tbaa !55
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 32) #20 ; 8 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !47
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.6) #20
  %i.d = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 1, ptr noundef %i.c) #20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.d, i32 noundef 0) #20
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.f, float noundef 3.600000e+02) #20
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.g, ptr noundef nonnull @.str.7) #20
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.h, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.i, float noundef 1.660000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.j, float noundef 3.220000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.k, float noundef 4.980000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.l, float noundef f0x3F29FBE7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.m, float noundef f0x3F547AE1, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.n, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.o, ptr noundef %i.p) #20
  %i.q = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !51
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.q, ptr noundef nonnull @.str.10) #20
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.s, float noundef 0.000000e+00, float noundef 2.000000e-01, float noundef 2.000000e-01, float noundef 2.000000e-01) #20
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !51
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.t, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.v = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.v) #20
  %i.w = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #20 ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !126
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.w, ptr noundef nonnull @.str.10) #20
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.y = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.x, ptr noundef %i.y) #20
  %i.z = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !127
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.z, ptr noundef nonnull @.str.10) #20
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ab, ptr noundef %i.ac) #20
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !130
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !131
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !131
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !131
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.6) #24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.9) #24
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.14) #24
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.12) #24
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.16) #24
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.6) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
