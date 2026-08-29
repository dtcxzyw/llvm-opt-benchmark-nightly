Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_commit_box:bb.a
  %i.dt = select <4 x i1> %i.dq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>, <4 x float> %i.ds ; 5 uses
  store <4 x float> %i.dt, ptr %2, align 4, !tbaa !113
  %.not129 = icmp ne i32 %3, 0
  %i.du = extractelement <4 x float> %i.dt, i64 0
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.o
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn uge float %i.dw, f0x358637BD
  %or.cond = select i1 %.not129, i1 true, i1 %i.dx
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = extractelement <4 x float> %i.dt, i64 1
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dy, %i.q
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn uge float %i.ea, f0x358637BD
  br i1 %i.eb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = extractelement <4 x float> %i.dt, i64 2
  %i.ed = fsub reassoc nsz arcp contract afn float %i.ec, %i.s
  %i.ee = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ed)
  %i.ef = fcmp reassoc nsz arcp contract afn uge float %i.ee, f0x358637BD
  br i1 %i.ef, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = extractelement <4 x float> %i.dt, i64 3
  %i.eh = fsub reassoc nsz arcp contract afn float %i.eg, %i.u
  %i.ei = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eh)
  %i.ej = fcmp reassoc nsz arcp contract afn uge float %i.ei, f0x358637BD
  br i1 %i.ej, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !150
  call void @dt_dev_add_history_item(ptr noundef %i.ek, ptr noundef nonnull %0, i32 noundef 1) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %.critedge
  ret void
}

declare i64 @g_get_monotonic_time() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 16, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !173 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1956
  %i.g = load float, ptr %i.f, align 4, !tbaa !113
  store float %i.g, ptr %i.d, align 4, !tbaa !67
  %i.h = load float, ptr %i.e, align 16, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.h, ptr %i.i, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1964
  %i.k = load float, ptr %i.j, align 4, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.k, ptr %i.l, align 4, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.n = load float, ptr %i.m, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.n, ptr %i.o, align 4, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 -1, ptr %i.p, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.q, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !152 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !176
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = load float, ptr %i.d, align 4, !tbaa !67 ; 2 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.n, %i.o
  store float %i.p, ptr %i.l, align 8, !tbaa !176
  store float %i.o, ptr %i.j, align 8, !tbaa !175
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !177
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load float, ptr %i.v, align 8, !tbaa !175
  %i.x = fsub reassoc nsz arcp contract afn float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !176
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !180
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ag, %i.ai
  store float %i.aj, ptr %i.ae, align 4, !tbaa !180
  store float %i.ai, ptr %i.ac, align 4, !tbaa !179
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181
  %i.am = icmp eq ptr %1, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !179
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store float %i.ar, ptr %i.as, align 4, !tbaa !180
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.h, %bb.d
  %.sink = phi i32 [ 4, %bb.d ], [ 8, %bb.h ], [ 2, %bb.f ], [ 1, %bb.b ]
  tail call fastcc void @_aspect_apply(ptr noundef nonnull %0, i32 noundef %.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  tail call fastcc void @_update_sliders_and_limit(ptr noundef nonnull %i.b)
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.av = atomicrmw sub ptr %i.au, i32 1 seq_cst, align 4 ; 0 uses
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_aspect_apply(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !152 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2680
  %i.g = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !111  ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !111  ; 2 uses
  %i.j = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.k = insertelement <2 x i32> %i.j, i32 %i.i, i64 1
  %i.l = sitofp <2 x i32> %i.k to <2 x double>    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154  ; 3 uses
  %i.q = call ptr @dt_bauhaus_combobox_get_text(ptr noundef %i.n) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #22
  %i.s = call i32 @g_strcmp0(ptr noundef nonnull %i.q, ptr noundef %i.r) #22
  %.not62.i = icmp eq i32 %i.s, 0
  br i1 %.not62.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1508
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35   ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1512
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float ; 4 uses
  %i.ab = icmp sgt i32 %i.w, 0
  %i.ac = icmp sgt i32 %i.z, 0
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.d, label %_aspect_ratio_get.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.x, %i.aa
  %or.cond64.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond64.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i32 %i.ae, 0
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.aa
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.x, %i.aa
  br label %_aspect_ratio_get.exit

bb.f:                                             ; preds = %bb.e
  %i.al = fdiv reassoc nsz arcp contract afn float %i.aa, %i.x
  br label %_aspect_ratio_get.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !166
  %i.aq = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull %0) #22 ; 3 uses
  %.not63.i = icmp eq ptr %i.aq, null
  br i1 %.not63.i, label %_aspect_ratio_get.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !183
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 148
  %i.au = load i32, ptr %i.at, align 4, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ba, label %_aspect_ratio_get.exit, label %.thread.i

bb.j:                                             ; preds = %bb.h
  br i1 %i.ba, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.bd = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.bb, float %i.bc)
  br label %bb.l

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  %.049.i = phi nsz float [ %i.bd, %bb.k ], [ %i.be, %.thread.i ] ; 2 uses
  %.0.in.i = phi i32 [ %i.au, %bb.k ], [ %i.az, %.thread.i ]
  %.0.i = sitofp i32 %.0.in.i to float            ; 2 uses
  %i.bf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.049.i) ; 4 uses
  %i.bg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0.i) ; 4 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bf, %i.bg
  %..i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.bg
  %i.bi = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %..i, float %.049.i) ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.bg
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bf, float %i.bg
  %i.bl = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.bk, float %.0.i) ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bi, 0.000000e+00
  %i.bn = fneg reassoc nsz arcp contract afn float %i.bl
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bi
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bl
  %.1.i = select nsz i1 %i.bm, float %i.bo, float %i.bp
  br label %_aspect_ratio_get.exit

_aspect_ratio_get.exit:                           ; preds = %bb.c, %.critedge.i, %bb.f, %bb.g, %bb.i, %bb.l
  %.4.i = phi nsz float [ %i.al, %bb.f ], [ 0.000000e+00, %bb.c ], [ %i.ak, %.critedge.i ], [ 0.000000e+00, %bb.g ], [ %.1.i, %bb.l ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.bq = fpext reassoc nsz arcp contract afn float %.4.i to double ; 2 uses
  %2 = icmp slt i32 %i.h, %i.i
  %i.br = fcmp reassoc nsz arcp contract afn une float %.4.i, 0.000000e+00
  %or.cond = and i1 %2, %i.br
  %i.bs = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bq
  %spec.select = select nsz i1 %or.cond, double %i.bs, double %i.bq ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt double %spec.select, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %_aspect_ratio_get.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %3 = extractelement <2 x double> %i.l, i64 1
  %i.bv = load <2 x float>, ptr %i.bu, align 8, !tbaa !113
  %i.bw = fpext <2 x float> %i.bv to <2 x double>
  %i.bx = fmul reassoc nsz arcp contract afn <2 x double> %i.bw, %i.l
  %i.by = fdiv reassoc nsz arcp contract afn <2 x double> %i.bx, %i.l ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.by, zeroinitializer
  %i.ca = select <2 x i1> %i.bz, <2 x double> %i.by, <2 x double> zeroinitializer ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cc = fmul reassoc nsz arcp contract afn double %spec.select, %3
  %i.cd = load <2 x float>, ptr %i.cb, align 8, !tbaa !113
  %i.ce = fpext <2 x float> %i.cd to <2 x double>
  %i.cf = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.l ; 3 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 1
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, %spec.select
  %i.ci = fdiv reassoc nsz arcp contract afn <2 x double> %i.cf, %i.l ; 2 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ci, splat (double 1.000000e+00)
  %i.ck = select <2 x i1> %i.cj, <2 x double> %i.ci, <2 x double> splat (double 1.000000e+00) ; 12 uses
  %i.cl = insertelement <2 x double> %i.l, double %i.cc, i64 1
  %i.cm = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x double> %i.cm, double %i.ch, i64 0
  %i.co = fdiv reassoc nsz arcp contract afn <2 x double> %i.cn, %i.cl ; 8 uses
  switch i32 %1, label %bb.r [
    i32 3, label %bb.n
    i32 6, label %bb.o
    i32 12, label %bb.p
    i32 9, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.cp = fadd reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %i.cq = fadd reassoc nsz arcp contract afn <2 x double> %i.ck, %i.ca
  %i.cr = fmul reassoc nsz arcp contract afn <2 x double> %i.cp, splat (double 5.000000e-01) ; 2 uses
  %i.cs = fsub reassoc nsz arcp contract afn <2 x double> %i.cq, %i.cr
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x double> %i.ck, %i.ca
  %i.ct = fadd reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %i.cu = fmul reassoc nsz arcp contract afn <2 x double> %i.ct, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop228 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop, %i.cu
  %i.cv = shufflevector <2 x double> %i.ca, <2 x double> %foldExtExtBinop228, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.cw = fadd reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %i.cx = fmul reassoc nsz arcp contract afn <2 x double> %i.cw, splat (double 5.000000e-01)
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.cy = fadd reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %foldExtExtBinop230 = fadd reassoc nsz arcp contract afn <2 x double> %i.ck, %i.ca
  %i.cz = fmul reassoc nsz arcp contract afn <2 x double> %i.cy, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop232 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop230, %i.cz
  %i.da = shufflevector <2 x double> %foldExtExtBinop232, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.db = and i32 %1, 5
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop234 = fsub reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %i.dc = extractelement <2 x double> %foldExtExtBinop234, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 5.000000e-01
  %i.de = extractelement <2 x double> %i.ca, i64 1
  %i.df = fsub reassoc nsz arcp contract afn double %i.de, %i.dd
  %i.dg = shufflevector <2 x double> %i.ck, <2 x double> %i.co, <2 x i32> <i32 0, i32 3>
  %i.dh = insertelement <2 x double> %i.ca, double %i.df, i64 1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.di = and i32 %1, 10
  %.not205 = icmp eq i32 %i.di, 0
  br i1 %.not205, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop236 = fsub reassoc nsz arcp contract afn <2 x double> %i.co, %i.ck
  %i.dj = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, 5.000000e-01
  %i.dl = extractelement <2 x double> %i.ca, i64 0
  %i.dm = fsub reassoc nsz arcp contract afn double %i.dl, %i.dk
  %i.dn = shufflevector <2 x double> %i.co, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.do = insertelement <2 x double> %i.ca, double %i.dm, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.t, %bb.u, %bb.s, %bb.p, %bb.n
  %i.dp = phi <2 x double> [ %i.cr, %bb.n ], [ %i.cu, %bb.o ], [ %i.cx, %bb.p ], [ %i.cz, %bb.q ], [ %i.dg, %bb.s ], [ %i.dn, %bb.u ], [ %i.ck, %bb.t ] ; 4 uses
  %i.dq = phi <2 x double> [ %i.cs, %bb.n ], [ %i.cv, %bb.o ], [ %i.ca, %bb.p ], [ %i.da, %bb.q ], [ %i.dh, %bb.s ], [ %i.do, %bb.u ], [ %i.ca, %bb.t ] ; 4 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1 ; 3 uses
  %i.ds = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  %i.dt = extractelement <2 x double> %i.dp, i64 1 ; 3 uses
  %i.du = extractelement <2 x double> %i.dp, i64 0 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !185 ; 2 uses
  %i.dx = fpext reassoc nsz arcp contract afn float %i.dw to double ; 4 uses
  %i.dy = fcmp reassoc nsz arcp contract afn olt double %i.ds, %i.dx
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop238 = fadd reassoc nsz arcp contract afn <2 x double> %i.dp, %i.dq
  %i.dz = extractelement <2 x double> %foldExtExtBinop238, i64 0
  %i.ea = fsub reassoc nsz arcp contract afn double %i.dz, %i.dx ; 3 uses
  %i.eb = fmul reassoc nsz arcp contract afn double %i.ea, %i.dt
  %i.ec = fdiv reassoc nsz arcp contract afn double %i.eb, %i.du ; 3 uses
  %i.ed = and i32 %1, 2
  %.not206 = icmp eq i32 %i.ed, 0
  %i.ee = fadd reassoc nsz arcp contract afn double %i.dt, %i.dr
  %i.ef = fsub reassoc nsz arcp contract afn double %i.ee, %i.ec
  %.1182 = select nsz i1 %.not206, double %i.dr, double %i.ef ; 2 uses
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ec, i64 1
  %i.ei = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %.1182, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1187 = phi nsz double [ %i.dx, %bb.w ], [ %i.ds, %bb.v ] ; 2 uses
  %.2183 = phi nsz double [ %.1182, %bb.w ], [ %i.dr, %bb.v ] ; 2 uses
  %.1177 = phi nsz double [ %i.ea, %bb.w ], [ %i.du, %bb.v ] ; 3 uses
  %.1 = phi nsz double [ %i.ec, %bb.w ], [ %i.dt, %bb.v ] ; 3 uses
  %i.ek = phi <2 x double> [ %i.eh, %bb.w ], [ %i.dp, %bb.v ]
  %i.el = phi <2 x double> [ %i.ej, %bb.w ], [ %i.dq, %bb.v ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.en = load float, ptr %i.em, align 4, !tbaa !186 ; 2 uses
  %i.eo = fpext reassoc nsz arcp contract afn float %i.en to double ; 3 uses
  %i.ep = fcmp reassoc nsz arcp contract afn olt double %.2183, %i.eo
  br i1 %i.ep, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eq = fadd reassoc nsz arcp contract afn double %.1, %.2183
  %i.er = fsub reassoc nsz arcp contract afn double %i.eq, %i.eo ; 3 uses
  %i.es = fmul reassoc nsz arcp contract afn double %i.er, %.1177
  %i.et = fdiv reassoc nsz arcp contract afn double %i.es, %.1 ; 3 uses
  %i.eu = and i32 %1, 1
  %.not207 = icmp eq i32 %i.eu, 0
  %i.ev = fadd reassoc nsz arcp contract afn double %.1177, %.1187
  %i.ew = fsub reassoc nsz arcp contract afn double %i.ev, %i.et
  %.2188 = select nsz i1 %.not207, double %.1187, double %i.ew
  %i.ex = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.er, i64 1
  %i.ez = insertelement <2 x double> poison, double %.2188, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eo, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2178 = phi nsz double [ %i.et, %bb.y ], [ %.1177, %bb.x ] ; 3 uses
  %.2 = phi nsz double [ %i.er, %bb.y ], [ %.1, %bb.x ] ; 3 uses
  %i.fb = phi <2 x double> [ %i.ey, %bb.y ], [ %i.ek, %bb.x ]
  %i.fc = phi <2 x double> [ %i.fa, %bb.y ], [ %i.el, %bb.x ] ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0 ; 5 uses
  %i.fe = fadd reassoc nsz arcp contract afn double %.2178, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !187
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, %i.dw
  %i.fi = fpext reassoc nsz arcp contract afn float %i.fh to double ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ogt double %i.fe, %i.fi
  %i.fk = extractelement <2 x double> %i.fc, i64 1 ; 3 uses
  br i1 %i.fj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fl = fsub reassoc nsz arcp contract afn double %i.fi, %i.fd ; 3 uses
  %i.fm = fmul reassoc nsz arcp contract afn double %i.fl, %.2
  %i.fn = fdiv reassoc nsz arcp contract afn double %i.fm, %.2178 ; 3 uses
  %i.fo = and i32 %1, 2
  %.not208 = icmp eq i32 %i.fo, 0
  %i.fp = fadd reassoc nsz arcp contract afn double %.2, %i.fk
  %i.fq = fsub reassoc nsz arcp contract afn double %i.fp, %i.fn
  %.4185 = select nsz i1 %.not208, double %i.fk, double %i.fq
  %i.fr = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fn, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.5 = phi nsz double [ %.4185, %bb.aa ], [ %i.fk, %bb.z ] ; 5 uses
  %.3179 = phi nsz double [ %i.fl, %bb.aa ], [ %.2178, %bb.z ] ; 3 uses
  %.3 = phi nsz double [ %i.fn, %bb.aa ], [ %.2, %bb.z ] ; 3 uses
  %i.ft = phi <2 x double> [ %i.fs, %bb.aa ], [ %i.fb, %bb.z ]
  %i.fu = fadd reassoc nsz arcp contract afn double %.3, %.5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !188
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, %i.en
  %i.fy = fpext reassoc nsz arcp contract afn float %i.fx to double ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn ogt double %i.fu, %i.fy
  br i1 %i.fz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ga = fsub reassoc nsz arcp contract afn double %i.fy, %.5 ; 3 uses
  %i.gb = fmul reassoc nsz arcp contract afn double %i.ga, %.3179
  %i.gc = fdiv reassoc nsz arcp contract afn double %i.gb, %.3 ; 3 uses
  %i.gd = and i32 %1, 1
  %.not209 = icmp eq i32 %i.gd, 0
  %i.ge = fadd reassoc nsz arcp contract afn double %.3179, %i.fd
  %i.gf = fsub reassoc nsz arcp contract afn double %i.ge, %i.gc
  %.4190 = select nsz i1 %.not209, double %i.fd, double %i.gf
  %i.gg = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.ga, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.5191 = phi nsz double [ %.4190, %bb.ac ], [ %i.fd, %bb.ab ] ; 3 uses
end_hunk_0
