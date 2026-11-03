Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@init_global:bb.a
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ci, %i.cy
  %i.da = extractelement <2 x float> %i.cx, i64 1
  %i.db = fmul reassoc nsz arcp contract afn float %i.cq, %i.da
  %i.dc = fcmp reassoc nsz arcp contract afn ugt float %i.g, 4.045000e-02
  %.sroa.speculated33.i.i.i = select i1 %i.dc, float %i.cs, float %i.j ; 5 uses
  %i.dd = fcmp reassoc nsz arcp contract afn ugt float %i.h, 4.045000e-02
  %.sroa.speculated30.i.i.i = select i1 %i.dd, float %i.cz, float %i.m ; 5 uses
  %i.de = fcmp reassoc nsz arcp contract afn ugt float %i.i, 4.045000e-02
  %.sroa.speculated27.i.i.i = select i1 %i.de, float %i.db, float %i.n ; 4 uses
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.speculated33.i.i.i, float %.sroa.speculated30.i.i.i)
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.df, float %.sroa.speculated27.i.i.i)
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.speculated33.i.i.i, float %.sroa.speculated30.i.i.i)
  %i.di = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dh, float %.sroa.speculated27.i.i.i) ; 4 uses
  %i.dj = fsub reassoc nsz arcp contract afn float %i.di, %i.dg ; 4 uses
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.di)
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dk, f0x358637BD
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dj)
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %i.dm, f0x358637BD
  %or.cond.i.i.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i.i.i, label %bb.c, label %dt_RGB_2_HCV.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.do = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated33.i.i.i, %i.di
  br i1 %i.do, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dp = fsub reassoc nsz arcp contract afn float %.sroa.speculated30.i.i.i, %.sroa.speculated27.i.i.i
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dp, %i.dj
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.dr = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated30.i.i.i, %i.di
  br i1 %i.dr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ds = fsub reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i, %.sroa.speculated33.i.i.i
  %i.dt = fdiv reassoc nsz arcp contract afn float %i.ds, %i.dj
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.dv = fsub reassoc nsz arcp contract afn float %.sroa.speculated33.i.i.i, %.sroa.speculated30.i.i.i
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.dv, %i.dj
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi nsz float [ %i.dq, %bb.d ], [ %i.du, %bb.f ], [ %i.dx, %bb.g ]
  %i.dy = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.dy)
  %i.ea = fsub reassoc nsz arcp contract afn float %i.dy, %i.dz
  br label %dt_RGB_2_HCV.exit.i.i

dt_RGB_2_HCV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.b
  %.0.i.i.i = phi nsz float [ %i.ea, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %.0.i.i.i)
  %i.ec = fsub reassoc nsz arcp contract afn float %.0.i.i.i, %i.eb ; 6 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ult float %i.ec, f0x3E2AAAAB
  br i1 %i.ed, label %_ucs_hue_to_ryb_hue.exit.i, label %bb.h

bb.h:                                             ; preds = %dt_RGB_2_HCV.exit.i.i
  %i.ee = fcmp reassoc nsz arcp contract afn ult float %i.ec, f0x3EAAAAAB
  br i1 %i.ee, label %_ucs_hue_to_ryb_hue.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ef = fcmp reassoc nsz arcp contract afn ult float %i.ec, 5.000000e-01
  br i1 %i.ef, label %_ucs_hue_to_ryb_hue.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = fcmp reassoc nsz arcp contract afn ult float %i.ec, f0x3F2AAAAB
  br i1 %i.eg, label %_ucs_hue_to_ryb_hue.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = fcmp reassoc nsz arcp contract afn ult float %i.ec, f0x3F555555
  %spec.select.i.i.i = select i1 %i.eh, i32 4, i32 5
  br label %_ucs_hue_to_ryb_hue.exit.i

_ucs_hue_to_ryb_hue.exit.i:                       ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %dt_RGB_2_HCV.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ 3, %bb.j ], [ 0, %dt_RGB_2_HCV.exit.i.i ], [ 2, %bb.i ], [ 1, %bb.h ], [ %spec.select.i.i.i, %bb.k ] ; 2 uses
  %i.ei = zext nneg i32 %.0.lcssa.i.i.i to i64    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @dt_color_ryb_x_vtx, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !31 ; 2 uses
  %i.el = fsub reassoc nsz arcp contract afn float %i.ec, %i.ek
  %i.em = add nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.en = zext nneg i32 %i.em to i64              ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @dt_color_ryb_x_vtx, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !31
  %i.eq = fsub reassoc nsz arcp contract afn float %i.ep, %i.ek
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @dt_color_ryb_y_vtx, i64 %i.ei
  %i.es = load float, ptr %i.er, align 4, !tbaa !31 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @dt_color_ryb_y_vtx, i64 %i.en
  %i.eu = load float, ptr %i.et, align 4, !tbaa !31
  %i.ev = fsub reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.el
  %i.ex = fdiv reassoc nsz arcp contract afn float %i.ew, %i.eq
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %indvars.iv.i
  store float %i.ey, ptr %i.ez, align 4, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 720
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %_ucs_hue_to_ryb_hue.exit.i, %bb.l
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.l ], [ 0, %_ucs_hue_to_ryb_hue.exit.i ] ; 3 uses
  %i.fa = trunc nuw nsw i64 %indvars.iv36.i to i32
  %i.fb = uitofp nsz nneg i32 %i.fa to float
  %i.fc = fmul reassoc nnan nsz arcp contract afn float %i.fb, f0x3AB60B61 ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %indvars.iv36.i
  store float %.1.i.2, ptr %i.fd, align 4, !tbaa !31
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 720
  br i1 %exitcond39.not.i, label %_build_hue_luts.exit, label %.preheader.i

bb.m:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next33.i.2, %bb.m ] ; 5 uses
  %.01928.i = phi float [ 0.000000e+00, %.preheader.i ], [ %.1.i.2, %bb.m ]
  %.02027.i = phi float [ 1.000000e+00, %.preheader.i ], [ %.121.i.2, %bb.m ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %indvars.iv32.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !31
  %i.fg = fsub reassoc nsz arcp contract afn float %i.ff, %i.fc
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fg) ; 3 uses
  %i.fi = fcmp reassoc nsz arcp contract afn ogt float %i.fh, 5.000000e-01
  %i.fj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fh
  %spec.select.i = select nsz i1 %i.fi, float %i.fj, float %i.fh ; 2 uses
  %i.fk = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, %.02027.i ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv32.i to i32
  %i.fm = uitofp nsz nneg i32 %i.fl to float
  %i.fn = fmul reassoc nnan nsz arcp contract afn float %i.fm, f0x3AB60B61
  %.121.i = select nsz i1 %i.fk, float %spec.select.i, float %.02027.i ; 2 uses
  %.1.i = select nsz i1 %i.fk, float %i.fn, float %.01928.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %indvars.iv.next33.i
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !31
  %i.fq = fsub reassoc nsz arcp contract afn float %i.fp, %i.fc
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fq) ; 3 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fr, 5.000000e-01
  %i.ft = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fr
  %spec.select.i.1 = select nsz i1 %i.fs, float %i.ft, float %i.fr ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt float %spec.select.i.1, %.121.i ; 2 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv.next33.i to i32
  %i.fw = uitofp nsz nneg i32 %i.fv to float
  %i.fx = fmul reassoc nnan nsz arcp contract afn float %i.fw, f0x3AB60B61
  %.121.i.1 = select nsz i1 %i.fu, float %spec.select.i.1, float %.121.i ; 2 uses
  %.1.i.1 = select nsz i1 %i.fu, float %i.fx, float %.1.i
  %indvars.iv.next33.i.1 = add nuw nsw i64 %indvars.iv32.i, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %indvars.iv.next33.i.1
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !31
  %i.ga = fsub reassoc nsz arcp contract afn float %i.fz, %i.fc
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ga) ; 3 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt float %i.gb, 5.000000e-01
  %i.gd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gb
  %spec.select.i.2 = select nsz i1 %i.gc, float %i.gd, float %i.gb ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %spec.select.i.2, %.121.i.1 ; 2 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv.next33.i.1 to i32
  %i.gg = uitofp nsz nneg i32 %i.gf to float
  %i.gh = fmul reassoc nnan nsz arcp contract afn float %i.gg, f0x3AB60B61
  %.121.i.2 = select nsz i1 %i.ge, float %spec.select.i.2, float %.121.i.1
  %.1.i.2 = select nsz i1 %i.ge, float %i.gh, float %.1.i.1 ; 2 uses
  %indvars.iv.next33.i.2 = add nuw nsw i64 %indvars.iv32.i, 3 ; 2 uses
  %exitcond35.not.i.2 = icmp eq i64 %indvars.iv.next33.i.2, 720
  br i1 %exitcond35.not.i.2, label %bb.l, label %bb.m

_build_hue_luts.exit:                             ; preds = %bb.l
  %i.gi = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !78
  store i32 -999, ptr %i.gi, align 4, !tbaa !152
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 -999, ptr %i.gk, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [4 x float], align 16             ; 3 uses
  %3 = alloca %struct._color_harmony_t, align 4   ; 5 uses
  %i.f = alloca [4 x float], align 16             ; 9 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !53  ; 38 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_sync_vectorscope_if_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 16 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
  %i.m = icmp eq i32 %i.l, 9                      ; 4 uses
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.p = icmp eq ptr %1, %i.o
  %or.cond = select i1 %i.p, i1 %i.m, i1 false
  %i.q = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.q, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %.not37 = icmp eq i32 %i.r, 9
  br i1 %.not37, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  call void @dt_lib_histogram_get_harmony(ptr noundef %i.s, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i32 0, ptr %i.g, align 4, !tbaa !30
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !117
  %i.u = load i32, ptr %3, align 4, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !119
  call void @dt_lib_histogram_get_sector_angles(ptr noundef %i.t, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #25
  %i.x = load i32, ptr %i.g, align 4, !tbaa !30   ; 8 uses
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %5 = load float, ptr %i.f, align 16, !tbaa !31
  %6 = fmul reassoc nsz arcp contract afn float %5, 7.200000e+02 ; 2 uses
  %7 = fptosi float %6 to i32                     ; 2 uses
  %8 = srem i32 %7, 720                           ; 2 uses
  %9 = trunc nsw i32 %8 to i16
  %.lhs.trunc.i.i = add nsw i16 %9, 1
  %10 = srem i16 %.lhs.trunc.i.i, 720
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !31   ; 5 uses
  %14 = sext i16 %10 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !31   ; 4 uses
  %17 = fsub reassoc nsz arcp contract afn float %16, %13
  %18 = fcmp reassoc nsz arcp contract afn ogt float %17, 5.000000e-01
  br i1 %18, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef range(i32 10, 9) %i.r, float noundef %i.aa, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !30  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph3.i, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  store i32 2, ptr %i.ad, align 4, !tbaa !36
  br label %bb.q

.lr.ph3.i:                                        ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 16 %i.f, i64 %i.ag, i1 false), !tbaa !31
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i.a
  %i.ah = fadd reassoc nsz arcp contract afn float %16, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i

bb.g:                                             ; preds = %.lr.ph.i.a
  %i.ai = fsub reassoc nsz arcp contract afn float %13, %16
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 5.000000e-01
  %i.ak = fadd reassoc nsz arcp contract afn float %13, -1.000000e+00
  %spec.select.i.i.i = select nsz i1 %i.aj, float %i.ak, float %13
  br label %_ryb_to_ucs_fast.exit.i

_ryb_to_ucs_fast.exit.i:                          ; preds = %bb.g, %bb.f
  %.014.i.i.i = phi nsz float [ %i.ah, %bb.f ], [ %16, %bb.g ]
  %.013.i.i.i = phi nsz float [ %13, %bb.f ], [ %spec.select.i.i.i, %bb.g ] ; 2 uses
  %i.al = sitofp reassoc nsz arcp contract afn i32 %7 to float
  %i.am = fsub reassoc nsz arcp contract afn float %6, %i.al
  %i.an = fsub reassoc nsz arcp contract afn float %.014.i.i.i, %.013.i.i.i
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.am
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %.013.i.i.i ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.ap, 0.000000e+00
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ap, 1.000000e+00
  %spec.select16.i.i.i = select nsz i1 %i.aq, float %i.ar, float %i.ap
  store float %spec.select16.i.i.i, ptr %4, align 4, !tbaa !31
  %exitcond.not.i = icmp eq i32 %i.x, 1
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ryb_to_ucs_fast.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !31
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, 7.200000e+02 ; 2 uses
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = srem i32 %i.av, 720                     ; 2 uses
  %i.ax = trunc nsw i32 %i.aw to i16
  %.lhs.trunc.i.i.1 = add nsw i16 %i.ax, 1
  %i.ay = srem i16 %.lhs.trunc.i.i.1, 720
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !31 ; 5 uses
  %i.bc = sext i16 %i.ay to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !31 ; 4 uses
  %i.bf = fsub reassoc nsz arcp contract afn float %i.be, %i.bb
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 5.000000e-01
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bb, %i.be
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.bh, 5.000000e-01
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bb, -1.000000e+00
  %spec.select.i.i.i.1 = select nsz i1 %i.bi, float %i.bj, float %i.bb
  br label %_ryb_to_ucs_fast.exit.i.1

bb.j:                                             ; preds = %bb.h
  %i.bk = fadd reassoc nsz arcp contract afn float %i.be, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.1

_ryb_to_ucs_fast.exit.i.1:                        ; preds = %bb.j, %bb.i
  %.014.i.i.i.1 = phi nsz float [ %i.bk, %bb.j ], [ %i.be, %bb.i ]
  %.013.i.i.i.1 = phi nsz float [ %i.bb, %bb.j ], [ %spec.select.i.i.i.1, %bb.i ] ; 2 uses
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %i.bm = fsub reassoc nsz arcp contract afn float %i.au, %i.bl
  %i.bn = fsub reassoc nsz arcp contract afn float %.014.i.i.i.1, %.013.i.i.i.1
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bm
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %.013.i.i.i.1 ; 3 uses
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, 0.000000e+00
  %i.br = fadd reassoc nsz arcp contract afn float %i.bp, 1.000000e+00
  %spec.select16.i.i.i.1 = select nsz i1 %i.bq, float %i.br, float %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store float %spec.select16.i.i.i.1, ptr %i.bs, align 4, !tbaa !31
  %exitcond.not.i.1 = icmp eq i32 %i.x, 2
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %_ryb_to_ucs_fast.exit.i.1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !31
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 7.200000e+02 ; 2 uses
  %i.bw = fptosi float %i.bv to i32               ; 2 uses
  %i.bx = srem i32 %i.bw, 720                     ; 2 uses
  %i.by = trunc nsw i32 %i.bx to i16
  %.lhs.trunc.i.i.2 = add nsw i16 %i.by, 1
  %i.bz = srem i16 %.lhs.trunc.i.i.2, 720
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !31 ; 5 uses
  %i.cd = sext i16 %i.bz to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !31 ; 4 uses
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %i.cc
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 5.000000e-01
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = fsub reassoc nsz arcp contract afn float %i.cc, %i.cf
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, 5.000000e-01
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cc, -1.000000e+00
  %spec.select.i.i.i.2 = select nsz i1 %i.cj, float %i.ck, float %i.cc
  br label %_ryb_to_ucs_fast.exit.i.2

bb.m:                                             ; preds = %bb.k
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cf, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.2

_ryb_to_ucs_fast.exit.i.2:                        ; preds = %bb.m, %bb.l
  %.014.i.i.i.2 = phi nsz float [ %i.cl, %bb.m ], [ %i.cf, %bb.l ]
  %.013.i.i.i.2 = phi nsz float [ %i.cc, %bb.m ], [ %spec.select.i.i.i.2, %bb.l ] ; 2 uses
  %i.cm = sitofp reassoc nsz arcp contract afn i32 %i.bw to float
  %i.cn = fsub reassoc nsz arcp contract afn float %i.bv, %i.cm
  %i.co = fsub reassoc nsz arcp contract afn float %.014.i.i.i.2, %.013.i.i.i.2
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %.013.i.i.i.2 ; 3 uses
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.cq, 0.000000e+00
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cq, 1.000000e+00
  %spec.select16.i.i.i.2 = select nsz i1 %i.cr, float %i.cs, float %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store float %spec.select16.i.i.i.2, ptr %i.ct, align 4, !tbaa !31
  %exitcond.not.i.2 = icmp eq i32 %i.x, 3
  br i1 %exitcond.not.i.2, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %_ryb_to_ucs_fast.exit.i.2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !31
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 7.200000e+02 ; 2 uses
  %i.cx = fptosi float %i.cw to i32               ; 2 uses
  %i.cy = srem i32 %i.cx, 720                     ; 2 uses
  %i.cz = trunc nsw i32 %i.cy to i16
  %.lhs.trunc.i.i.3 = add nsw i16 %i.cz, 1
  %i.da = srem i16 %.lhs.trunc.i.i.3, 720
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !31 ; 5 uses
  %i.de = sext i16 %i.da to i64
  %i.df = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !31 ; 4 uses
  %i.dh = fsub reassoc nsz arcp contract afn float %i.dg, %i.dd
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, 5.000000e-01
  br i1 %i.di, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = fsub reassoc nsz arcp contract afn float %i.dd, %i.dg
  %i.dk = fcmp reassoc nsz arcp contract afn ogt float %i.dj, 5.000000e-01
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dd, -1.000000e+00
  %spec.select.i.i.i.3 = select nsz i1 %i.dk, float %i.dl, float %i.dd
  br label %_ryb_to_ucs_fast.exit.i.3

bb.p:                                             ; preds = %bb.n
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dg, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.3

_ryb_to_ucs_fast.exit.i.3:                        ; preds = %bb.p, %bb.o
  %.014.i.i.i.3 = phi nsz float [ %i.dm, %bb.p ], [ %i.dg, %bb.o ]
  %.013.i.i.i.3 = phi nsz float [ %i.dd, %bb.p ], [ %spec.select.i.i.i.3, %bb.o ] ; 2 uses
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.cx to float
  %i.do = fsub reassoc nsz arcp contract afn float %i.cw, %i.dn
  %i.dp = fsub reassoc nsz arcp contract afn float %.014.i.i.i.3, %.013.i.i.i.3
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.do
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %.013.i.i.i.3 ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dr, 0.000000e+00
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dr, 1.000000e+00
  %spec.select16.i.i.i.3 = select nsz i1 %i.ds, float %i.dt, float %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store float %spec.select16.i.i.i.3, ptr %i.du, align 4, !tbaa !31
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ryb_to_ucs_fast.exit.i, %_ryb_to_ucs_fast.exit.i.1, %_ryb_to_ucs_fast.exit.i.2, %_ryb_to_ucs_fast.exit.i.3, %.lr.ph3.i
  %19 = phi i32 [ %i.ab, %.lr.ph3.i ], [ %i.x, %_ryb_to_ucs_fast.exit.i.3 ], [ %i.x, %_ryb_to_ucs_fast.exit.i.2 ], [ %i.x, %_ryb_to_ucs_fast.exit.i.1 ], [ %i.x, %_ryb_to_ucs_fast.exit.i ] ; 2 uses
  %i.dv = call i32 @llvm.smax.i32(i32 %19, i32 2)
  %i.dw = call i32 @llvm.umin.i32(i32 %i.dv, i32 4)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !36
  %i.dy = icmp slt i32 %19, 2
  br i1 %i.dy, label %bb.q, label %_init_custom_nodes_from_rule.exit

bb.q:                                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %i.dz = phi ptr [ %i.ad, %.loopexit.thread.i ], [ %i.dx, %.loopexit.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store float %i.eb, ptr %i.ec, align 4, !tbaa !31
  br label %_init_custom_nodes_from_rule.exit

_init_custom_nodes_from_rule.exit:                ; preds = %.loopexit.i, %bb.q
  %i.ed = phi ptr [ %i.dz, %bb.q ], [ %i.dx, %.loopexit.i ]
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = atomicrmw add ptr %i.ef, i32 1 seq_cst, align 4 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !121
  %i.ej = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ek = sitofp reassoc nsz arcp contract afn i32 %i.ej to float
  call void @dt_bauhaus_slider_set(ptr noundef %i.ei, float noundef %i.ek) #25
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.en = atomicrmw add ptr %i.em, i32 -1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_init_custom_nodes_from_rule.exit, %bb.b
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !122
  %i.eq = xor i32 %i.n, 1                         ; 2 uses
  call void @gtk_widget_set_visible(ptr noundef %i.ep, i32 noundef %i.eq) #25
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !123
  call void @gtk_widget_set_visible(ptr noundef %i.es, i32 noundef %i.eq) #25
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !121
  call void @gtk_widget_set_visible(ptr noundef %i.eu, i32 noundef range(i32 0, 2) %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4, !tbaa !30
  br i1 %i.m, label %.loopexit.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.ew, i32 noundef 0) #25
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.ey, i32 noundef 0) #25
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.fa, i32 noundef 0) #25
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.fc, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.fd = load i32, ptr %i.k, align 4, !tbaa !34
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef %i.fd, float noundef %i.ff, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.fh = load i32, ptr %i.d, align 4, !tbaa !30  ; 5 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !124
  %i.fk = icmp sgt i32 %i.fh, 0
  %i.fl = zext i1 %i.fk to i32
  call void @gtk_widget_set_visible(ptr noundef %i.fj, i32 noundef %i.fl) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !124
  %i.fo = icmp sgt i32 %i.fh, 1
  %i.fp = zext i1 %i.fo to i32
  call void @gtk_widget_set_visible(ptr noundef %i.fn, i32 noundef %i.fp) #25
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !124
  %i.fs = icmp sgt i32 %i.fh, 2
  %i.ft = zext i1 %i.fs to i32
  call void @gtk_widget_set_visible(ptr noundef %i.fr, i32 noundef %i.ft) #25
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !124
  %i.fw = icmp sgt i32 %i.fh, 3
  %i.fx = zext i1 %i.fw to i32
  call void @gtk_widget_set_visible(ptr noundef %i.fv, i32 noundef %i.fx) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_update_visibility.exit

.loopexit.loopexit.i:                             ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !36 ; 3 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.fz, i32 2)
  %i.ga = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 4)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.gc, i32 noundef 1) #25
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.ge, i32 noundef 1) #25
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gh = icmp sgt i32 %i.fz, 2
  %i.gi = zext i1 %i.gh to i32
  call void @gtk_widget_set_visible(ptr noundef %i.gg, i32 noundef %i.gi) #25
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !124
  %i.gl = icmp sgt i32 %i.fz, 3
  %i.gm = zext i1 %i.gl to i32
  call void @gtk_widget_set_visible(ptr noundef %i.gk, i32 noundef %i.gm) #25
  %.pre.i = zext nneg i32 %i.ga to i64
  br label %_update_visibility.exit

_update_visibility.exit:                          ; preds = %.preheader.i, %.loopexit.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.fi, %.preheader.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !124
  %i.gp = icmp sgt i64 %.pre-phi.i, 0
  %i.gq = zext i1 %i.gp to i32
  call void @gtk_widget_set_visible(ptr noundef %i.go, i32 noundef %i.gq) #25
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !124
  %i.gt = icmp sgt i64 %.pre-phi.i, 1
  %i.gu = zext i1 %i.gt to i32
  call void @gtk_widget_set_visible(ptr noundef %i.gs, i32 noundef %i.gu) #25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !124
  %i.gx = icmp sgt i64 %.pre-phi.i, 2
  %i.gy = zext i1 %i.gx to i32
  call void @gtk_widget_set_visible(ptr noundef %i.gw, i32 noundef %i.gy) #25
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !124
  %i.hb = icmp sgt i64 %.pre-phi.i, 3
  %i.hc = zext i1 %i.hb to i32
  call void @gtk_widget_set_visible(ptr noundef %i.ha, i32 noundef %i.hc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hf) #25
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hg) #25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hi) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hk) #25
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hm) #25
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ho) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hq) #25
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hs) #25
  br i1 %i.m, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_update_visibility.exit
  call fastcc void @_sync_custom_sliders(ptr noundef nonnull %i.k, ptr noundef %i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_update_visibility.exit
  %i.ht = load ptr, ptr %i.eo, align 8, !tbaa !122
  br label %bb.u

bb.u:                                             ; preds = %_ryb_to_ucs_fast.exit.i.i, %bb.t
  %.06.i.i = phi i32 [ 0, %bb.t ], [ %i.iy, %_ryb_to_ucs_fast.exit.i.i ] ; 2 uses
  %i.hu = uitofp nsz nneg i32 %.06.i.i to float   ; 2 uses
  %i.hv = fmul reassoc nnan nsz arcp contract afn float %i.hu, f0x3D579436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.hw = fmul reassoc nnan nsz arcp contract afn float %i.hu, f0x42179436 ; 2 uses
  %i.hx = fptosi float %i.hw to i32
  %.fr.i.i = freeze i32 %i.hx                     ; 2 uses
  %i.hy = urem i32 %.fr.i.i, 720                  ; 2 uses
  %i.hz = trunc nuw nsw i32 %i.hy to i16
  %.lhs.trunc.i.i.i = add nuw nsw i16 %i.hz, 1    ; 2 uses
  %i.ia = icmp eq i16 %.lhs.trunc.i.i.i, 720
  %i.ib = select i1 %i.ia, i16 0, i16 %.lhs.trunc.i.i.i
  %i.ic = zext nneg i32 %i.hy to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !31 ; 5 uses
  %i.if = zext nneg i16 %i.ib to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !31 ; 4 uses
  %i.ii = fsub reassoc nsz arcp contract afn float %i.ih, %i.ie
  %i.ij = fcmp reassoc nsz arcp contract afn ogt float %i.ii, 5.000000e-01
  br i1 %i.ij, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ih, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.il = fsub reassoc nsz arcp contract afn float %i.ie, %i.ih
  %i.im = fcmp reassoc nsz arcp contract afn ogt float %i.il, 5.000000e-01
  %i.in = fadd reassoc nsz arcp contract afn float %i.ie, -1.000000e+00
end_hunk_0
begin_hunk_1_@dt_lib_histogram_get_sector_angles
declare void @dt_lib_histogram_get_sector_angles(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_swatch_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.68) #25
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %i.k = icmp eq i32 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %sext20 = shl i64 %i.i, 32
  %i.m = ashr exact i64 %sext20, 30
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef %i.j, float noundef %i.r, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !30
  %.not = icmp sgt i32 %i.s, %i.p
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.i, 32
  %i.t = ashr exact i64 %sext, 30
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.500000e-01, double noundef 2.500000e-01, double noundef 2.500000e-01) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread
  %.11723 = phi float [ %i.o, %.thread ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call fastcc void @_hue_to_srgb(float noundef %.11723, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.w = load float, ptr %i.c, align 4, !tbaa !31
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = load float, ptr %i.d, align 4, !tbaa !31
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = load float, ptr %i.e, align 4, !tbaa !31
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef %i.x, double noundef %i.z, double noundef %i.ab) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 1
}

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_apply_harmony_guide(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !118
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr %1, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !119
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.e, 2.000000e+00 ; 2 uses
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = srem i32 %i.g, 720                       ; 2 uses
  %i.i = trunc nsw i32 %i.h to i16
  %.lhs.trunc.i = add nsw i16 %i.i, 1
  %i.j = srem i16 %.lhs.trunc.i, 720
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !31 ; 5 uses
  %i.n = sext i16 %i.j to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !31 ; 4 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.t = fsub reassoc nsz arcp contract afn float %i.m, %i.p
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 5.000000e-01
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.u, float %i.v, float %i.m
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.s, %bb.b ], [ %i.p, %bb.c ]
  %.013.i.i = phi nsz float [ %i.m, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.f, %i.w
  %i.y = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.013.i.i ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ab, float %i.ac, float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %spec.select16.i.i, ptr %i.ad, align 4, !tbaa !35
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !79
  %i.ai = load i32, ptr %1, align 4, !tbaa !34
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ah, i32 noundef %i.ai) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.al = load i32, ptr %i.c, align 4, !tbaa !119
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.am) #25
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.ar, ptr noundef %0, i32 noundef 1) #25
  ret void
}

declare void @dt_lib_histogram_set_scope(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.maxnum.v3f32(<3 x float>, <3 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v3f32(float, <3 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!8, !8, i64 0}
!31 = !{!19, !19, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!"dt_iop_colorharmonizer_params_t", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !8, i64 36, !7, i64 40, !19, i64 56}
!34 = !{!33, !8, i64 0}
!35 = !{!33, !19, i64 4}
!36 = !{!33, !8, i64 36}
!37 = !{!"", !8, i64 0, !7, i64 4}
!38 = !{!37, !8, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!43 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!44 = !{!"dt_pthread_mutex_t", !7, i64 0}
!45 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!46 = !{!"", !25, i64 0, !25, i64 8}
!47 = !{!"", !12, i64 0, !8, i64 8}
!48 = !{!"", !46, i64 0, !47, i64 16}
!49 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!50 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!51 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!52 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !42, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !43, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !44, i64 712, !11, i64 752, !11, i64 760, !45, i64 768, !45, i64 776, !11, i64 784, !48, i64 792, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !8, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !50, i64 912, !50, i64 920, !49, i64 928, !49, i64 936, !8, i64 944, !51, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !49, i64 1096, !11, i64 1104, !8, i64 1112}
!53 = !{!52, !11, i64 704}
!54 = !{!"any p2 pointer", !11, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!57 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !17, i64 8, !17, i64 16, !54, i64 24, !55, i64 32, !56, i64 40, !55, i64 48, !16, i64 56, !16, i64 64, !17, i64 72, !8, i64 80, !17, i64 88, !17, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!58 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!59 = !{!"p1 _ZTS6_GList", !11, i64 0}
!60 = !{!"p1 omnipotent char", !11, i64 0}
!61 = !{!"dt_dev_detail_mask_t", !20, i64 0, !17, i64 24, !26, i64 32}
!62 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!63 = !{!"double", !7, i64 0}
!64 = !{!"dt_image_geoloc_t", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!66 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!67 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !19, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !24, i64 1488, !7, i64 1616, !60, i64 1656, !8, i64 1664, !8, i64 1668, !62, i64 1672, !64, i64 1680, !65, i64 1704, !21, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !19, i64 1756, !19, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !59, i64 1856, !66, i64 1864, !8, i64 1872, !8, i64 1876}
!68 = !{!"dt_dev_pixelpipe_t", !57, i64 0, !8, i64 120, !17, i64 128, !26, i64 136, !8, i64 144, !8, i64 148, !19, i64 152, !8, i64 156, !8, i64 160, !24, i64 176, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !59, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !60, i64 360, !17, i64 368, !8, i64 376, !8, i64 380, !19, i64 384, !7, i64 388, !17, i64 416, !44, i64 424, !44, i64 464, !44, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !61, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !67, i64 656, !8, i64 2544, !60, i64 2552, !8, i64 2560, !59, i64 2568, !59, i64 2576, !59, i64 2584, !8, i64 2592, !26, i64 2600, !17, i64 2608, !7, i64 2616, !7, i64 2632}
!69 = !{!"p1 _ZTS7_GtkBox", !11, i64 0}
!70 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!71 = !{!"_gui_collapsible_section_t", !69, i64 0, !60, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !69, i64 40, !70, i64 48}
!72 = !{!"dt_iop_colorharmonizer_gui_data_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 216, !7, i64 248, !71, i64 280, !7, i64 336, !8, i64 1776, !7, i64 1784}
!73 = !{!72, !8, i64 1776}
!74 = !{!72, !49, i64 64}
!75 = !{!52, !11, i64 680}
!76 = !{!"dt_action_t", !8, i64 0, !60, i64 8, !60, i64 16, !11, i64 24, !70, i64 32, !70, i64 40}
!77 = !{!"dt_iop_module_so_t", !76, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !42, i64 488, !7, i64 496, !11, i64 520, !8, i64 528, !11, i64 536, !8, i64 544, !8, i64 548}
!78 = !{!77, !11, i64 520}
!79 = !{!72, !49, i64 0}
!80 = !{!"dt_codepath_t", !8, i64 0}
!81 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!82 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!83 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!84 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!85 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!86 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!87 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!88 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!89 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!90 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!91 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!92 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!93 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!94 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!95 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!96 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!97 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!98 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!99 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!100 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!101 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!102 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!103 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!104 = !{!"_Bool", !7, i64 0}
!105 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!106 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!107 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!108 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!109 = !{!"", !103, i64 0, !44, i64 8, !7, i64 48, !104, i64 96, !104, i64 97, !105, i64 104, !106, i64 112, !107, i64 120, !108, i64 128, !108, i64 136, !108, i64 144}
!110 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!111 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!112 = !{!"dt_sys_resources_t", !17, i64 0, !17, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!113 = !{!"dt_backthumb_t", !63, i64 0, !63, i64 8, !8, i64 16, !8, i64 20}
!114 = !{!"dt_gimp_t", !8, i64 0, !60, i64 8, !60, i64 16, !8, i64 24, !8, i64 28}
!115 = !{!"dt_splash_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32}
!116 = !{!"darktable_t", !80, i64 0, !8, i64 4, !8, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !81, i64 48, !82, i64 56, !43, i64 64, !83, i64 72, !84, i64 80, !85, i64 88, !86, i64 96, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !91, i64 136, !92, i64 144, !93, i64 152, !94, i64 160, !95, i64 168, !96, i64 176, !97, i64 184, !98, i64 192, !99, i64 200, !100, i64 208, !101, i64 216, !102, i64 224, !7, i64 232, !44, i64 2792, !44, i64 2832, !44, i64 2872, !44, i64 2912, !44, i64 2952, !44, i64 2992, !60, i64 3032, !60, i64 3040, !60, i64 3048, !60, i64 3056, !60, i64 3064, !60, i64 3072, !60, i64 3080, !60, i64 3088, !60, i64 3096, !60, i64 3104, !60, i64 3112, !60, i64 3120, !60, i64 3128, !109, i64 3136, !59, i64 3288, !63, i64 3296, !59, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !110, i64 3520, !111, i64 3528, !112, i64 3536, !113, i64 3576, !114, i64 3600, !115, i64 3632, !8, i64 3672}
!117 = !{!116, !83, i64 72}
!118 = !{!65, !8, i64 0}
!119 = !{!65, !8, i64 4}
!120 = !{!116, !87, i64 104}
!121 = !{!72, !49, i64 72}
!122 = !{!72, !49, i64 8}
!123 = !{!72, !49, i64 80}
!124 = !{!49, !49, i64 0}
!125 = !{!72, !49, i64 56}
!126 = !{!52, !8, i64 672}
!127 = !{!52, !43, i64 664}
!128 = !{!72, !49, i64 48}
!129 = !{!65, !8, i64 12}
!130 = !{i64 0, i64 4, !30, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 16, !32, i64 36, i64 4, !30, i64 40, i64 16, !32, i64 56, i64 4, !31}
!131 = distinct !{!131, !39, !40}
!132 = distinct !{!132, !39, !40}
!133 = distinct !{!133, !40, !39}
!134 = distinct !{!134, !39, !40}
!135 = distinct !{!135, !40, !39}
!136 = !{!28, !8, i64 132}
!137 = !{!"dt_iop_colorharmonizer_data_t", !33, i64 0, !7, i64 60, !8, i64 76}
!138 = !{!137, !8, i64 76}
!139 = !{!28, !13, i64 8}
!140 = !{!33, !19, i64 8}
!141 = !{!33, !19, i64 16}
!142 = !{!33, !19, i64 12}
!143 = !{!33, !19, i64 56}
!144 = !{!20, !8, i64 12}
!145 = !{!20, !8, i64 8}
!146 = !{!20, !19, i64 16}
!147 = !{!28, !19, i64 104}
!148 = !{!68, !8, i64 644}
!149 = !{!52, !11, i64 688}
!150 = !{!52, !8, i64 696}
!151 = !{!"dt_iop_colorharmonizer_global_data_t", !8, i64 0, !8, i64 4}
!152 = !{!151, !8, i64 0}
!153 = !{!151, !8, i64 4}
!154 = !{!68, !58, i64 304}
!155 = !{!11, !11, i64 0}
!156 = !{!52, !49, i64 824}
!157 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!158 = !{!"dt_gui_widgets_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!159 = !{!"dt_gui_scrollbars_t", !49, i64 0, !49, i64 8, !8, i64 16}
!160 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!161 = !{!"dt_gui_gtk_t", !157, i64 0, !158, i64 8, !159, i64 56, !160, i64 80, !8, i64 88, !60, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !63, i64 1384, !63, i64 1392, !63, i64 1400, !63, i64 1408, !49, i64 1416, !63, i64 1424, !63, i64 1432, !63, i64 1440, !63, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!162 = !{!161, !63, i64 1432}
end_hunk_1
