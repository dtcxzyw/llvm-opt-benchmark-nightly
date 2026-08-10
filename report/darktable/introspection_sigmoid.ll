inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@name:bb.a
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #23
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #23
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #23
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #23
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #23
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #23
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef initializes((548, 552)) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.dt_iop_sigmoid_params_t, align 16 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 1, ptr %i.a, align 4, !tbaa !14
  %i.b = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.7) #23
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(25) @.str.8) #24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call i32 (...) %i.g() #23
  tail call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.e, i32 noundef %i.h, ptr noundef null, i32 noundef 0, i32 noundef 1, i32 noundef 4) #23
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.j = tail call i32 (...) %i.i() #23
  tail call void @dt_gui_presets_update_format(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.e, i32 noundef %i.j, i32 noundef 34) #23
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.l = tail call i32 (...) %i.k() #23
  tail call void @dt_gui_presets_update_autoapply(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.e, i32 noundef %i.l, i32 noundef 1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 0, ptr %i.n, align 16, !tbaa !21
  store <4 x float> <float 1.220000e+00, float 6.500000e-01, float 1.000000e+02, float 1.520000e-02>, ptr %1, align 16, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  store float 1.000000e+02, ptr %i.o, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = tail call i32 (...) %i.r() #23
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.p, i32 noundef %i.s, ptr noundef nonnull %1, i32 noundef 56, i32 noundef 1, i32 noundef 4) #23
  store <2 x float> <float 1.600000e+00, float -2.000000e-01>, ptr %1, align 16, !tbaa !24
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !25
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.u = call i32 (...) %i.t() #23
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.p, i32 noundef %i.u, ptr noundef nonnull %1, i32 noundef 56, i32 noundef 1, i32 noundef 4) #23
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !24
  store i32 1, ptr %i.n, align 16, !tbaa !21
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.w = call i32 (...) %i.v() #23
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.p, i32 noundef %i.w, ptr noundef nonnull %1, i32 noundef 56, i32 noundef 1, i32 noundef 4) #23
  store <2 x float> <float 1.500000e+00, float -2.000000e-01>, ptr %1, align 16, !tbaa !24
  store i32 0, ptr %i.n, align 16, !tbaa !21
  store <8 x float> <float 0.000000e+00, float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36, float 1.500000e-01, float f0xBD567751, float 0.000000e+00>, ptr %i.o, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 1, ptr %i.x, align 4, !tbaa !26
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.z = call i32 (...) %i.y() #23
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.p, i32 noundef %i.z, ptr noundef nonnull %1, i32 noundef 56, i32 noundef 1, i32 noundef 4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_gui_presets_update_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_gui_presets_update_autoapply(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !27  ; 15 uses
  %i.c = load float, ptr %1, align 4, !tbaa !44   ; 3 uses
  %i.d = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.c)
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, f0x408D7116 ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3E3CEDD4, float %i.c) ; 2 uses
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, %i.f
  %i.h = fdiv reassoc nsz arcp contract afn float %i.f, %i.g ; 2 uses
  %i.i = fcmp ord float %i.h, 0.000000e+00
  %i.j = select reassoc nsz arcp contract afn i1 %i.i, float %i.h, float 1.000000e+00
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.844990e-01, float %i.c) ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn float %i.e, %i.k
  %i.m = fdiv reassoc nsz arcp contract afn float %i.k, %i.l ; 2 uses
  %i.n = fcmp ord float %i.m, 0.000000e+00
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float 1.000000e+00
  %i.p = fsub reassoc nsz arcp contract afn float %i.j, %i.o
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 5.000000e+05
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !45
  %i.t = fneg reassoc nsz arcp contract afn float %i.s
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e+00, float %i.t) ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.u, ptr %i.v, align 4, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load <2 x float>, ptr %i.w, align 4, !tbaa !24 ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0x3D5E0164
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ab, float %i.x) ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 1.845000e-01 ; 2 uses
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, f0x35860000
  %i.af = fdiv reassoc nsz arcp contract afn float f0x3E3CEDD4, %i.ae
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.af, float %i.u)
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.z, splat (float f0x3C23D70A) ; 4 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 4 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ag, %i.ai ; 2 uses
  %i.ak = fcmp ord float %i.aj, 0.000000e+00
  %i.al = select reassoc nsz arcp contract afn i1 %i.ak, float %i.aj, float %i.ai
  %i.am = fadd reassoc nsz arcp contract afn float %i.ad, f0xB5860000
  %i.an = fdiv reassoc nsz arcp contract afn float 1.844990e-01, %i.am
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.an, float %i.u)
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.ai ; 2 uses
  %i.aq = fcmp ord float %i.ap, 0.000000e+00
  %i.ar = select reassoc nsz arcp contract afn i1 %i.aq, float %i.ap, float %i.ai
  %i.as = fsub reassoc nsz arcp contract afn float %i.al, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 5.000000e+05
  %i.au = fdiv reassoc nsz arcp contract afn float %i.q, %i.at ; 3 uses
  store float %i.au, ptr %i.y, align 4, !tbaa !48
  store <2 x float> %i.ah, ptr %i.b, align 4, !tbaa !24
  %i.av = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00 ; 2 uses
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.ah
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ax = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.u
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aw, float %i.ax)
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, -1.000000e+00
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.au ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.ba) ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 1.845000e-01
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.az, float %i.ba)
  %i.be = fsub reassoc nsz arcp contract afn float %i.bd, %i.bb
  %i.bf = fdiv reassoc nsz arcp contract afn float %i.bc, %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !49
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, 1.845000e-01
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float %i.au)
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.av
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.bj, ptr %i.bk, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !25
  %4 = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C23D70A
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %4, float 0.000000e+00)
  %5 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float 1.000000e+00)
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %5, ptr %i.br, align 4, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.bt, ptr %i.bu, align 4, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.bw, ptr %i.bx, align 4, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load float, ptr %i.by, align 4, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.bz, ptr %i.ca, align 4, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.cc, ptr %i.cd, align 4, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.cf, ptr %i.cg, align 4, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.ci, ptr %i.cj, align 4, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %i.cl, ptr %i.cm, align 4, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !61
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @process_loglogistic_rgb_ratio(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !27  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63
  %i.h = sext i32 %i.g to i64
  %i.i = load float, ptr %i.b, align 4, !tbaa !64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !65 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !50 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !49 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !48 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !46 ; 6 uses
  %i.t = shl nsw i64 %i.e, 2
  %i.u = mul i64 %i.t, %i.h                       ; 4 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.v = add i64 %i.u, -4                         ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl i64 %i.u, 2                          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.y
  %scevgep112 = getelementptr i8, ptr %1, i64 %i.y
  %bound0 = icmp ult ptr %2, %scevgep112
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert117 = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat118 = shufflevector <8 x float> %broadcast.splatinsert117, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aa = insertelement <4 x float> poison, float %i.s, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = insertelement <4 x float> poison, float %i.q, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %vec.ind ; 2 uses
  %i.ae = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep119 = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %vec.ind ; 2 uses
  %i.af = extractelement <8 x ptr> %wide.gep119, i64 0
  %wide.vec = load <32 x float>, ptr %i.ae, align 4, !tbaa !24, !alias.scope !66 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec120 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec121 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec122 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec120, %strided.vec
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %strided.vec121
  %5 = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, splat (float f0x3EAAAAAB)
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer) ; 10 uses
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec120)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> %strided.vec121) ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aj, zeroinitializer
  %i.al = fneg reassoc nsz arcp contract afn <8 x float> %6
  %i.am = fsub reassoc nnan nsz arcp contract afn <8 x float> %i.aj, %6
  %i.an = fdiv reassoc nsz arcp contract afn <8 x float> %i.al, %i.am
  %i.ao = select reassoc nsz arcp contract afn <8 x i1> %i.ak, <8 x float> %i.an, <8 x float> splat (float 1.000000e+00) ; 4 uses
  %i.ap = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %6
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %6 ; 2 uses
  %i.as = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec120, %6
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.as
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %6 ; 2 uses
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec121, %6
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.av
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, %6 ; 2 uses
  %wide.gep123 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.ar, %i.au
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.ax ; 5 uses
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.az, splat (float f0x3EAAAAAB) ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ba, <8 x float> zeroinitializer)
  %i.bc = fadd reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat ; 5 uses
  %i.bd = extractelement <8 x float> %i.bc, i64 0
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bd, float %i.q)
  %i.bf = extractelement <8 x float> %i.bc, i64 1
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bf, float %i.q)
  %i.bh = extractelement <8 x float> %i.bc, i64 2
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float %i.q)
  %i.bj = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bj, <4 x float> %i.ad)
  %i.bl = extractelement <8 x float> %i.bc, i64 7
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float %i.q)
  %i.bn = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bo = insertelement <8 x float> %i.bn, float %i.bg, i64 1
  %i.bp = insertelement <8 x float> %i.bo, float %i.bi, i64 2
  %i.bq = shufflevector <4 x float> %i.bk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <8 x float> %i.bp, <8 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.bs = insertelement <8 x float> %i.br, float %i.bm, i64 7 ; 2 uses
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %broadcast.splat114
  %i.bu = fdiv reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bt ; 5 uses
  %i.bv = extractelement <8 x float> %i.bu, i64 0
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float %i.s)
  %i.bx = extractelement <8 x float> %i.bu, i64 1
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bx, float %i.s)
  %i.bz = extractelement <8 x float> %i.bu, i64 2
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bz, float %i.s)
  %i.cb = shufflevector <8 x float> %i.bu, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.cb, <4 x float> %i.ab)
  %i.cd = extractelement <8 x float> %i.bu, i64 7
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.s)
  %i.cf = insertelement <8 x float> poison, float %i.bw, i64 0
  %i.cg = insertelement <8 x float> %i.cf, float %i.by, i64 1
  %i.ch = insertelement <8 x float> %i.cg, float %i.ca, i64 2
  %i.ci = shufflevector <4 x float> %i.cc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ck = insertelement <8 x float> %i.cj, float %i.ce, i64 7
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat116 ; 2 uses
  %i.cm = fcmp ord <8 x float> %i.cl, zeroinitializer
  %i.cn = select reassoc nsz arcp contract afn <8 x i1> %i.cm, <8 x float> %i.cl, <8 x float> %broadcast.splat116 ; 17 uses
  %i.co = fpext reassoc nsz arcp contract afn <8 x float> %i.ba to <8 x double>
  %i.cp = fcmp reassoc nsz arcp contract afn ogt <8 x double> %i.co, splat (double 1.000000e-09) ; 4 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep123, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !24, !alias.scope !66
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %6
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %6
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float 3.000000e+00) ; 4 uses
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.ar
  %i.cv = fdiv reassoc nsz arcp contract afn <8 x float> %i.cu, %i.az
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.au
  %i.cx = fdiv reassoc nsz arcp contract afn <8 x float> %i.cw, %i.az
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.ax
  %i.cz = fdiv reassoc nsz arcp contract afn <8 x float> %i.cy, %i.az
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cs
  %i.db = fdiv reassoc nsz arcp contract afn <8 x float> %i.da, %i.az
  %predphi = select nsz <8 x i1> %i.cp, <8 x float> %i.db, <8 x float> %i.cn
  %predphi124 = select nsz <8 x i1> %i.cp, <8 x float> %i.cz, <8 x float> %i.cn ; 8 uses
  %predphi125 = select nsz <8 x i1> %i.cp, <8 x float> %i.cx, <8 x float> %i.cn ; 7 uses
  %predphi126 = select nsz <8 x i1> %i.cp, <8 x float> %i.cv, <8 x float> %i.cn ; 6 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ult <8 x float> %predphi126, %predphi125 ; 4 uses
  %i.dd = xor <8 x i1> %i.dc, splat (i1 true)
  %i.de = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi125, %predphi124 ; 2 uses
  %i.df = select <8 x i1> %i.dc, <8 x i1> splat (i1 true), <8 x i1> %i.de ; 2 uses
  %i.dg = xor <8 x i1> %i.df, splat (i1 true)
  %i.dh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi124, %predphi126 ; 2 uses
  %i.di = select <8 x i1> %i.df, <8 x i1> splat (i1 true), <8 x i1> %i.dh
  %i.dj = xor <8 x i1> %i.di, splat (i1 true)     ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi124, %predphi125
  %i.dl = fcmp reassoc nsz arcp contract afn ult <8 x float> %predphi126, %predphi124 ; 2 uses
  %i.dm = select <8 x i1> %i.dc, <8 x i1> %i.dl, <8 x i1> zeroinitializer ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ule <8 x float> %predphi124, %predphi125
  %i.do = select <8 x i1> %i.dm, <8 x i1> %i.dn, <8 x i1> zeroinitializer
  %i.dp = select <8 x i1> %i.dj, <8 x i1> %i.dk, <8 x i1> zeroinitializer
  %i.dq = select <8 x i1> %i.dd, <8 x i1> %i.de, <8 x i1> zeroinitializer
  %i.dr = xor <8 x i1> %i.dl, splat (i1 true)
  %i.ds = select <8 x i1> %i.dc, <8 x i1> %i.dr, <8 x i1> zeroinitializer
  %i.dt = select <8 x i1> %i.dg, <8 x i1> %i.dh, <8 x i1> zeroinitializer
  %i.du = or <8 x i1> %i.ds, %i.do
  %i.dv = or <8 x i1> %i.dq, %i.dj
  %predphi127 = select <8 x i1> %i.du, <8 x float> %predphi125, <8 x float> %predphi124
  %predphi128 = select <8 x i1> %i.dv, <8 x float> %predphi126, <8 x float> %predphi127
  %i.dw = or <8 x i1> %i.dp, %i.dt
  %predphi129 = select <8 x i1> %i.dm, <8 x float> %predphi126, <8 x float> %predphi124
  %predphi130 = select <8 x i1> %i.dw, <8 x float> %predphi125, <8 x float> %predphi129 ; 2 uses
  %i.dx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat116, %i.cn
  %i.dy = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x358637BD), %i.cn
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %i.dy, %predphi128
  %i.ea = fdiv reassoc nsz arcp contract afn <8 x float> %i.dx, %i.dz
  %i.eb = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat118, %i.cn
  %i.ec = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0xB58637BD), %i.cn
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.ec, %predphi130
  %i.ee = fdiv reassoc nsz arcp contract afn <8 x float> %i.eb, %i.ed
  %i.ef = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ea, <8 x float> %i.ee) ; 2 uses
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %i.cn, %predphi130
  %i.eh = fadd reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float f0x358637BD)
  %i.ei = fdiv reassoc nsz arcp contract afn <8 x float> %i.eg, %i.eh ; 4 uses
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.ej, splat (float f0x358637BD)
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, splat (float 2.000000e+00)
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ei
  %i.en = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x3F800008), %i.em
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %i.en
  %i.ep = fdiv reassoc nsz arcp contract afn <8 x float> %i.el, %i.eo ; 3 uses
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ep
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %i.eq, splat (float 1.000000e+00)
  %i.es = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.er)
  %i.et = fadd reassoc nsz arcp contract afn <8 x float> %i.es, splat (float 1.000000e+00) ; 3 uses
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ef ; 3 uses
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %predphi124, %i.cn
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.ev
  %i.ex = fdiv reassoc nsz arcp contract afn <8 x float> %i.ew, %i.et
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.ex, %i.cn
  %i.ez = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %i.cn
  %i.fa = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.ez
  %i.fb = fdiv reassoc nsz arcp contract afn <8 x float> %i.fa, %i.et
  %i.fc = fadd reassoc nsz arcp contract afn <8 x float> %i.fb, %i.cn
  %wide.gep131 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep119, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fc, <8 x ptr> align 4 %wide.gep131, <8 x i1> splat (i1 true)), !tbaa !24, !alias.scope !69, !noalias !66
  %i.fd = shufflevector <8 x float> %i.eu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fe = shufflevector <8 x float> %predphi126, <8 x float> %predphi125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ff = shufflevector <8 x float> %i.cn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fg = fsub reassoc nsz arcp contract afn <16 x float> %i.fe, %i.ff
  %i.fh = fmul reassoc nsz arcp contract afn <16 x float> %i.fd, %i.fg
  %i.fi = shufflevector <8 x float> %i.et, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fj = fdiv reassoc nsz arcp contract afn <16 x float> %i.fh, %i.fi
  %i.fk = shufflevector <8 x float> %i.cn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fl = fadd reassoc nsz arcp contract afn <16 x float> %i.fj, %i.fk
  %i.fm = shufflevector <8 x float> %i.ey, <8 x float> %strided.vec122, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.fl, <16 x float> %i.fm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.af, align 4, !tbaa !24, !alias.scope !69, !noalias !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.07080.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_pixel_channel_order.exit, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader132, %_pixel_channel_order.exit
  %.07080 = phi i64 [ %i.jj, %_pixel_channel_order.exit ], [ %.07080.ph, %.lr.ph.preheader132 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07080 ; 4 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07080 ; 2 uses
  %i.fq = load float, ptr %i.fo, align 4, !tbaa !24 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !24 ; 3 uses
  %i.fw = fadd reassoc nsz arcp contract afn float %i.ft, %i.fv
  %7 = fmul reassoc nsz arcp contract afn float %i.fw, f0x3EAAAAAB
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %7, float 0.000000e+00) ; 10 uses
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fq, float %i.fs)
  %8 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fy, float %i.fv) ; 2 uses
  %9 = fcmp reassoc nsz arcp contract afn olt float %8, 0.000000e+00
  %i.fz = fneg reassoc nsz arcp contract afn float %i.fx
  %i.ga = fsub reassoc nnan nsz arcp contract afn float %8, %i.fx
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.fz, %i.ga
  %i.gc = select reassoc nsz arcp contract afn i1 %9, float %i.gb, float 1.000000e+00 ; 4 uses
  %i.gd = fsub reassoc nsz arcp contract afn float %i.fq, %i.fx
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gc, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fx ; 2 uses
  %i.gg = fsub reassoc nsz arcp contract afn float %i.fs, %i.fx
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gc, %i.gg
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.fx ; 2 uses
  %i.gj = fsub reassoc nsz arcp contract afn float %i.fv, %i.fx
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gc, %i.gj
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.fx ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 12 ; 2 uses
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gf, %i.gi
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gl ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, f0x3EAAAAAB ; 2 uses
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gp, float 0.000000e+00)
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.o
  %i.gs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gr, float %i.q) ; 2 uses
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.m
  %i.gu = fdiv reassoc nsz arcp contract afn float %i.gs, %i.gt
  %i.gv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gu, float %i.s)
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.i ; 2 uses
  %i.gx = fcmp ord float %i.gw, 0.000000e+00
  %i.gy = select reassoc nsz arcp contract afn i1 %i.gx, float %i.gw, float %i.i ; 8 uses
  %i.gz = fpext reassoc nsz arcp contract afn float %i.gp to double
  %i.ha = fcmp reassoc nsz arcp contract afn ogt double %i.gz, 1.000000e-09
  %i.hb = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br i1 %i.ha, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph
  %i.hd = load float, ptr %i.gm, align 4, !tbaa !24
  %i.he = fsub reassoc nsz arcp contract afn float %i.hd, %i.fx
  %i.hf = fmul reassoc nsz arcp contract afn float %i.gc, %i.he
  %10 = fadd reassoc nsz arcp contract afn float %i.hf, %i.fx
  %11 = fmul reassoc nsz arcp contract afn float %i.gy, 3.000000e+00
  %i.hg = insertelement <4 x float> poison, float %11, i64 0
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.gi, i64 1
  %i.hk = insertelement <4 x float> %i.hj, float %i.gl, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %10, i64 3
  %i.hm = fmul reassoc nsz arcp contract afn <4 x float> %i.hh, %i.hl
  %i.hn = insertelement <4 x float> poison, float %i.go, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hp = fdiv reassoc nsz arcp contract afn <4 x float> %i.hm, %i.ho
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader
  %i.hq = phi <4 x float> [ %i.hp, %.preheader ], [ %i.hc, %.lr.ph ] ; 5 uses
  %i.hr = extractelement <4 x float> %i.hq, i64 0 ; 8 uses
  %i.hs = extractelement <4 x float> %i.hq, i64 1 ; 8 uses
  %i.ht = fcmp reassoc nsz arcp contract afn ult float %i.hr, %i.hs
  br i1 %i.ht, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.hu = extractelement <4 x float> %i.hq, i64 2 ; 6 uses
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.hs, %i.hu
  br i1 %i.hv, label %_pixel_channel_order.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hw = fcmp reassoc nsz arcp contract afn ogt float %i.hu, %i.hr
  br i1 %i.hw, label %_pixel_channel_order.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hx = fcmp reassoc nsz arcp contract afn ogt float %i.hu, %i.hs
  br i1 %i.hx, label %_pixel_channel_order.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %_pixel_channel_order.exit

bb.f:                                             ; preds = %.loopexit
  %i.hy = extractelement <4 x float> %i.hq, i64 2 ; 4 uses
  %i.hz = fcmp reassoc nsz arcp contract afn ult float %i.hr, %i.hy
  br i1 %i.hz, label %bb.g, label %_pixel_channel_order.exit

bb.g:                                             ; preds = %bb.f
  %i.ia = fcmp reassoc nsz arcp contract afn ogt float %i.hy, %i.hs
  br i1 %i.ia, label %_pixel_channel_order.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br label %_pixel_channel_order.exit

_pixel_channel_order.exit:                        ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.e, %bb.h
  %.sroa.11.0.sroa.phi.sroa.speculated = phi float [ %i.hs, %bb.f ], [ %i.hs, %bb.h ], [ %i.hr, %bb.d ], [ %i.hr, %bb.e ], [ %i.hr, %bb.b ], [ %i.hu, %bb.c ], [ %i.hy, %bb.g ]
  %.sink.i.sroa.phi.sroa.speculated = phi float [ %i.hy, %bb.f ], [ %i.hr, %bb.h ], [ %i.hs, %bb.d ], [ %i.hu, %bb.e ], [ %i.hu, %bb.b ], [ %i.hs, %bb.c ], [ %i.hr, %bb.g ] ; 2 uses
  %i.ib = fsub reassoc nsz arcp contract afn float %i.i, %i.gy
  %i.ic = fsub reassoc nsz arcp contract afn float f0x358637BD, %i.gy
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, %.sroa.11.0.sroa.phi.sroa.speculated
  %i.ie = fdiv reassoc nsz arcp contract afn float %i.ib, %i.id
  %i.if = fsub reassoc nsz arcp contract afn float %i.k, %i.gy
  %i.ig = fsub reassoc nsz arcp contract afn float f0xB58637BD, %i.gy
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, %.sink.i.sroa.phi.sroa.speculated
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.if, %i.ih
  %i.ij = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ie, float %i.ii) ; 2 uses
  %i.ik = fsub reassoc nsz arcp contract afn float %i.gy, %.sink.i.sroa.phi.sroa.speculated
  %i.il = fadd reassoc nsz arcp contract afn float %i.gy, f0x358637BD
  %i.im = fdiv reassoc nsz arcp contract afn float %i.ik, %i.il ; 4 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.ij, %i.im
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, f0x358637BD
  %i.ip = fmul reassoc nsz arcp contract afn float %i.im, 2.000000e+00
  %i.iq = fmul reassoc nsz arcp contract afn float %i.im, %i.im
  %i.ir = fsub reassoc nsz arcp contract afn float f0x3F800008, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn float %i.io, %i.ir
  %i.it = fdiv reassoc nsz arcp contract afn float %i.ip, %i.is ; 3 uses
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, 1.000000e+00
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.iv)
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, 1.000000e+00
  %i.iy = fmul reassoc nsz arcp contract afn float %i.it, %i.ij
  %i.iz = fsub reassoc nsz arcp contract afn <4 x float> %i.hq, %i.hc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.jb = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %i.jc, %i.iz
  %i.je = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = fdiv reassoc nsz arcp contract afn <4 x float> %i.jd, %i.jf
  %i.jh = fadd reassoc nsz arcp contract afn <4 x float> %i.jg, %i.hc
  store <4 x float> %i.jh, ptr %i.fp, align 4, !tbaa !24
  %i.ji = load float, ptr %i.gm, align 4, !tbaa !24
  store float %i.ji, ptr %i.ja, align 4, !tbaa !24
  %i.jj = add nuw i64 %.07080, 4                  ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.u
  br i1 %i.jk, label %.lr.ph, label %._crit_edge, !llvm.loop !74
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define hidden void @process_loglogistic_per_channel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.b = alloca [3 x [2 x float]], align 16       ; 8 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 14 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 5 uses
  %i.e = alloca [4 x [4 x float]], align 64       ; 12 uses
  %i.f = alloca [4 x [4 x float]], align 64       ; 14 uses
  %.sroa.0 = alloca float, align 16               ; 10 uses
  %.sroa.14 = alloca float, align 4               ; 10 uses
  %.sroa.27 = alloca float, align 8               ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !27  ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !63
  %i.n = sext i32 %i.m to i64
  %i.o = load float, ptr %i.h, align 4, !tbaa !64 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !50 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !49 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !46 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.y = load float, ptr %i.x, align 4, !tbaa !52 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.aa) #23 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !61
  switch i32 %i.ad, label %bb.d [
    i32 0, label %_get_base_profile.exit.thread
    i32 4, label %_get_base_profile.exit
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

_get_base_profile.exit.thread:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %.split.us.3.i

bb.b:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

bb.c:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

bb.d:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

_get_base_profile.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i32 [ 4, %bb.d ], [ 26, %bb.b ], [ 2, %bb.c ], [ 1, %bb.a ]
  %i.ae = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %0, i32 noundef %.0.i.i, ptr noundef nonnull @.str.66, i32 noundef 1) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq ptr %i.ab, %i.ae
  br i1 %.not.i, label %.split.us.3.i, label %bb.e

bb.e:                                             ; preds = %_get_base_profile.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 896
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 960
  %gep.1.i40 = getelementptr inbounds nuw i8, ptr %i.ae, i64 976
  %gep.2.i41 = getelementptr inbounds nuw i8, ptr %i.ae, i64 992
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 916
  %i.ai = load <4 x float>, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ak = load <4 x float>, ptr %gep.1.i40, align 4, !tbaa !24 ; 2 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.am = load <4 x float>, ptr %gep.2.i41, align 4, !tbaa !24 ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ao = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.af, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !24 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.ah, align 4, !tbaa !24
  %i.aq = shufflevector <5 x float> %i.ao, <5 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.aq, %i.aj
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <5 x float> %i.ao, <5 x float> %i.as, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %i.at, %i.al
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.au, %i.ar
  %i.aw = shufflevector <5 x float> %i.ao, <5 x float> %i.as, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, %i.an
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.av, %i.ax
  store <8 x float> %i.ay, ptr %i.f, align 64, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 928
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bb = load float, ptr %i.az, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 932
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 936
  %i.bf = load float, ptr %i.be, align 4, !tbaa !24
  %i.bg = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = fmul reassoc nsz arcp contract afn <4 x float> %i.bh, %i.ai
  %i.bj = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <4 x float> %i.bk, %i.ak
  %i.bm = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bi
  %i.bn = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <4 x float> %i.bo, %i.am
  %i.bq = fadd reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bp
  store <4 x float> %i.bq, ptr %i.ba, align 32, !tbaa !24
  %i.br = call i32 @mat3SSEinv(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #23 ; 0 uses
  br label %_calculate_adjusted_primaries.exit

.split.us.3.i:                                    ; preds = %_get_base_profile.exit.thread, %_get_base_profile.exit
end_hunk_0
begin_hunk_1_@process_loglogistic_per_channel:bb.a
  %i.dt = shufflevector <2 x float> %i.df, <2 x float> %i.db, <2 x i32> <i32 1, i32 3>
  %i.du = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, %i.dk
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.du, %i.ds
  %i.dw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.cn, i64 1
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.dx, %i.de
  %i.dz = extractelement <2 x float> %i.db, i64 0
  %i.ea = fmul reassoc nsz arcp contract afn float %i.co, %i.dz
  %i.eb = fmul reassoc nsz arcp contract afn float %i.cp, %i.dc
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.cr
  %i.ee = fadd reassoc nsz arcp contract afn <2 x float> %i.dv, %i.dy
  %i.ef = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dq
  %i.eg = extractelement <2 x float> %i.df, i64 0
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.co
  %i.ei = fmul reassoc nsz arcp contract afn float %i.dg, %i.cp
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.cw
  %i.el = load <2 x float>, ptr %i.cx, align 32, !tbaa !24 ; 4 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 4, i32 1>
  %i.eo = fmul reassoc nsz arcp contract afn <2 x float> %i.em, %i.en
  %i.ep = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.eq = fmul reassoc nsz arcp contract afn <2 x float> %i.el, %i.ep
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eo, %i.eq
  %i.es = insertelement <2 x float> poison, float %i.da, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %i.de
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.eu
  %i.ew = extractelement <2 x float> %i.el, i64 0
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.co
  %i.ey = extractelement <2 x float> %i.el, i64 1
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.cp
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ex
  %i.fb = fmul reassoc nsz arcp contract afn float %i.da, %i.cq
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !54
  %i.ff = load float, ptr %i.bs, align 4, !tbaa !24
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fg
  %i.fi = load float, ptr %i.bt, align 4, !tbaa !24
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.fh, float noundef %i.fi, i64 noundef 0, ptr noundef nonnull %i.b) #23
  %i.fj = load float, ptr %i.fd, align 4, !tbaa !54
  %i.fk = load float, ptr %i.bx, align 4, !tbaa !24
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.fj
  %i.fm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fl
  %i.fn = load float, ptr %i.ca, align 4, !tbaa !24
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.fm, float noundef %i.fn, i64 noundef 1, ptr noundef nonnull %i.cc) #23
  %i.fo = load float, ptr %i.fd, align 4, !tbaa !54
  %i.fp = load float, ptr %i.cd, align 4, !tbaa !24
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.fo
  %i.fr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fq
  %i.fs = load float, ptr %i.cg, align 4, !tbaa !24
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.fr, float noundef %i.fs, i64 noundef 2, ptr noundef nonnull %i.ci) #23
  call void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ft = load <4 x float>, ptr %i.ck, align 4, !tbaa !24 ; 2 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fv = load <4 x float>, ptr %gep.1.i, align 4, !tbaa !24 ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fx = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !24 ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fz = load <5 x float>, ptr %i.c, align 64, !tbaa !24 ; 3 uses
  %i.ga = load <2 x float>, ptr %i.ct, align 4, !tbaa !24
  %i.gb = shufflevector <5 x float> %i.fz, <5 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %i.fu
  %i.gd = shufflevector <2 x float> %i.ga, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ge = shufflevector <5 x float> %i.fz, <5 x float> %i.gd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.fw
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.gc
  %i.gh = shufflevector <5 x float> %i.fz, <5 x float> %i.gd, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.fy
  %i.gj = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gi
  store <8 x float> %i.gj, ptr %i.d, align 64, !tbaa !24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gl = load <4 x float>, ptr %i.cx, align 32
  %i.gm = load <4 x float>, ptr %i.cy, align 4
  %i.gn = load <4 x float>, ptr %i.cz, align 8
  %i.go = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.go, %i.ft
  %i.gq = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gq, %i.fv
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %i.gp
  %i.gt = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = fmul reassoc nsz arcp contract afn <4 x float> %i.gt, %i.fx
  %i.gv = fadd reassoc nsz arcp contract afn <4 x float> %i.gs, %i.gu
  store <4 x float> %i.gv, ptr %i.gk, align 32, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.gw = call i32 @mat3SSEinv(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #23 ; 0 uses
  %i.gx = load <4 x float>, ptr %i.e, align 64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gz = load <4 x float>, ptr %i.gy, align 4
  %gep.1.i54.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hb = load <4 x float>, ptr %i.ha, align 8
  %gep.2.i55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hd = load <4 x float>, ptr %i.hc, align 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.hf = load <4 x float>, ptr %i.he, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.hh = load <4 x float>, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.hj = load <4 x float>, ptr %i.hi, align 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.hl = load <4 x float>, ptr %i.hk, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.hn = load <4 x float>, ptr %i.hm, align 8
  %i.ho = load <4 x float>, ptr %i.a, align 64, !tbaa !24 ; 3 uses
  %i.hp = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %i.ho, %i.hp
  %i.hr = load <4 x float>, ptr %gep.1.i54.i, align 16, !tbaa !24 ; 3 uses
  %i.hs = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, %i.hs
  %i.hu = fadd reassoc nsz arcp contract afn <4 x float> %i.ht, %i.hq
  %i.hv = load <4 x float>, ptr %gep.2.i55.i, align 32, !tbaa !24 ; 3 uses
  %i.hw = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.hv, %i.hw
  %i.hy = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.hx
  %i.hz = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = fmul reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ho
  %i.ib = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.hr
  %i.id = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ia
  %i.ie = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ie, %i.hv
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.id, %i.if
  %i.ih = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.ih, %i.ho
  %i.ij = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fmul reassoc nsz arcp contract afn <4 x float> %i.ij, %i.hr
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ik, %i.ii
  %i.im = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %i.im, %i.hv
  %i.io = fadd reassoc nsz arcp contract afn <4 x float> %i.il, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ip = shl nsw i64 %i.k, 2
  %i.iq = mul i64 %i.ip, %i.n                     ; 2 uses
  %.not = icmp eq i64 %i.iq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_calculate_adjusted_primaries.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.is = load <6 x float>, ptr %i.f, align 64, !tbaa !24 ; 2 uses
  %i.it = load <2 x float>, ptr %i.ir, align 32, !tbaa !24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !24
  %i.ja = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  %i.jb = shufflevector <6 x float> %i.is, <6 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.jc = insertelement <2 x float> poison, float %i.s, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.u, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = insertelement <2 x float> poison, float %i.q, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x float> poison, float %i.w, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = insertelement <2 x float> poison, float %i.o, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = shufflevector <6 x float> %i.is, <6 x float> poison, <2 x i32> <i32 4, i32 1>
  br label %bb.f

._crit_edge:                                      ; preds = %_preserve_hue_and_energy.exit, %_calculate_adjusted_primaries.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  ret void

bb.f:                                             ; preds = %.lr.ph, %_preserve_hue_and_energy.exit
  %.03894 = phi i64 [ 0, %.lr.ph ], [ %i.pd, %_preserve_hue_and_energy.exit ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03894 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !24 ; 2 uses
  %i.jq = load <2 x float>, ptr %i.jn, align 4, !tbaa !24 ; 4 uses
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.js = fmul reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jm
  %i.jt = fmul reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jb
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.js, %i.jt
  %i.jv = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul reassoc nsz arcp contract afn <2 x float> %i.jw, %i.it
  %i.jy = fadd reassoc nsz arcp contract afn <2 x float> %i.ju, %i.jx ; 3 uses
  %i.jz = extractelement <2 x float> %i.jq, i64 0
  %i.ka = fmul reassoc nsz arcp contract afn float %i.iv, %i.jz
  %i.kb = extractelement <2 x float> %i.jq, i64 1
  %i.kc = fmul reassoc nsz arcp contract afn float %i.ix, %i.kb
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.ka
  %i.ke = fmul reassoc nsz arcp contract afn float %i.iz, %i.jp
  %i.kf = fadd reassoc nsz arcp contract afn float %i.kd, %i.ke ; 3 uses
  %i.kg = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  %i.kh = extractelement <2 x float> %i.jy, i64 1 ; 2 uses
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.kg
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kf
  %6 = fmul reassoc nsz arcp contract afn float %i.kj, f0x3EAAAAAB
  %7 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %6, float 0.000000e+00) ; 5 uses
  %i.kk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kg, float %i.kh)
  %i.kl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kk, float %i.kf) ; 2 uses
  %i.km = fcmp reassoc nsz arcp contract afn olt float %i.kl, 0.000000e+00
  %i.kn = fneg reassoc nsz arcp contract afn float %7
  %i.ko = fsub reassoc nnan nsz arcp contract afn float %i.kl, %7
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.kn, %i.ko
  %i.kq = select reassoc nsz arcp contract afn i1 %i.km, float %i.kp, float 1.000000e+00 ; 2 uses
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kf, %7
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kq, %i.kr
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %7 ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.fc
  %i.kv = insertelement <2 x float> poison, float %7, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kx = fsub reassoc nsz arcp contract afn <2 x float> %i.jy, %i.kw
  %i.ky = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul reassoc nsz arcp contract afn <2 x float> %i.kz, %i.kx
  %i.lb = fadd reassoc nsz arcp contract afn <2 x float> %i.la, %i.kw ; 4 uses
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ld = fmul reassoc nsz arcp contract afn <2 x float> %i.lc, %i.ee
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.lb, %i.ef
  %i.lf = fadd reassoc nsz arcp contract afn <2 x float> %i.ld, %i.le
  %i.lg = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul reassoc nsz arcp contract afn <2 x float> %i.lh, %i.ev
  %i.lj = fadd reassoc nsz arcp contract afn <2 x float> %i.lf, %i.li ; 3 uses
  %i.lk = extractelement <2 x float> %i.lb, i64 0
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, %i.ed
  %i.lm = extractelement <2 x float> %i.lb, i64 1
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ek
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.ll
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, %i.ku ; 13 uses
  %i.lq = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lj, <2 x float> zeroinitializer)
  %i.lr = fadd reassoc nsz arcp contract afn <2 x float> %i.lq, %i.jd
  %i.ls = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.lr, <2 x float> %i.jf) ; 2 uses
  %i.lt = fadd reassoc nsz arcp contract afn <2 x float> %i.ls, %i.jh
  %i.lu = fdiv reassoc nsz arcp contract afn <2 x float> %i.ls, %i.lt
  %i.lv = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.lu, <2 x float> %i.jj)
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.lv, %i.jl ; 3 uses
  %i.lx = fcmp ord <2 x float> %i.lw, zeroinitializer ; 2 uses
  %i.ly = extractelement <2 x i1> %i.lx, i64 0
  %i.lz = extractelement <2 x float> %i.lw, i64 0
  %i.ma = select reassoc nsz arcp contract afn i1 %i.ly, float %i.lz, float %i.o ; 8 uses
  %i.mb = extractelement <2 x i1> %i.lx, i64 1
  %i.mc = extractelement <2 x float> %i.lw, i64 1
  %i.md = select reassoc nsz arcp contract afn i1 %i.mb, float %i.mc, float %i.o ; 8 uses
  %i.me = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lp, float 0.000000e+00)
  %i.mf = fadd reassoc nsz arcp contract afn float %i.me, %i.s
  %i.mg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mf, float %i.u) ; 2 uses
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, %i.q
  %i.mi = fdiv reassoc nsz arcp contract afn float %i.mg, %i.mh
  %i.mj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mi, float %i.w)
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.o ; 2 uses
  %i.ml = fcmp ord float %i.mk, 0.000000e+00
  %i.mm = select reassoc nsz arcp contract afn i1 %i.ml, float %i.mk, float %i.o ; 8 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03894 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  %i.mo = extractelement <2 x float> %i.lj, i64 0 ; 10 uses
  %i.mp = extractelement <2 x float> %i.lj, i64 1 ; 11 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ult float %i.mo, %i.mp
  br i1 %i.mq, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.mr = fcmp reassoc nsz arcp contract afn ogt float %i.mp, %i.lp
  br i1 %i.mr, label %_pixel_channel_order.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ms = fcmp reassoc nsz arcp contract afn ogt float %i.lp, %i.mo
  br i1 %i.ms, label %_pixel_channel_order.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.mt = fcmp reassoc nsz arcp contract afn ogt float %i.lp, %i.mp
  br i1 %i.mt, label %_pixel_channel_order.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %_pixel_channel_order.exit

bb.k:                                             ; preds = %bb.f
  %i.mu = fcmp reassoc nsz arcp contract afn ult float %i.mo, %i.lp
  br i1 %i.mu, label %bb.l, label %_pixel_channel_order.exit

bb.l:                                             ; preds = %bb.k
  %i.mv = fcmp reassoc nsz arcp contract afn ogt float %i.lp, %i.mp
  br i1 %i.mv, label %_pixel_channel_order.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %_pixel_channel_order.exit

_pixel_channel_order.exit:                        ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.j, %bb.m
  %.sroa.4.0.sroa.phi = phi ptr [ %.sroa.0, %bb.k ], [ %.sroa.27, %bb.m ], [ %.sroa.27, %bb.i ], [ %.sroa.14, %bb.j ], [ %.sroa.14, %bb.g ], [ %.sroa.0, %bb.h ], [ %.sroa.14, %bb.l ] ; 2 uses
  %.sroa.4.0.sroa.phi143.sroa.speculated = phi float [ %i.mo, %bb.k ], [ %i.lp, %bb.m ], [ %i.lp, %bb.i ], [ %i.mp, %bb.j ], [ %i.mp, %bb.g ], [ %i.mo, %bb.h ], [ %i.mp, %bb.l ] ; 2 uses
  %.sroa.4.0.sroa.phi183.sroa.speculated = phi float [ %i.ma, %bb.k ], [ %i.mm, %bb.m ], [ %i.mm, %bb.i ], [ %i.md, %bb.j ], [ %i.md, %bb.g ], [ %i.ma, %bb.h ], [ %i.md, %bb.l ] ; 2 uses
  %.sroa.11.0.sroa.phi = phi ptr [ %.sroa.14, %bb.k ], [ %.sroa.14, %bb.m ], [ %.sroa.0, %bb.i ], [ %.sroa.0, %bb.j ], [ %.sroa.0, %bb.g ], [ %.sroa.27, %bb.h ], [ %.sroa.27, %bb.l ]
  %.sroa.11.0.sroa.phi129.sroa.speculated = phi float [ %i.mp, %bb.k ], [ %i.mp, %bb.m ], [ %i.mo, %bb.i ], [ %i.mo, %bb.j ], [ %i.mo, %bb.g ], [ %i.lp, %bb.h ], [ %i.lp, %bb.l ]
  %.sroa.11.0.sroa.phi176.sroa.speculated = phi float [ %i.md, %bb.k ], [ %i.md, %bb.m ], [ %i.ma, %bb.i ], [ %i.ma, %bb.j ], [ %i.ma, %bb.g ], [ %i.mm, %bb.h ], [ %i.mm, %bb.l ] ; 5 uses
  %.sink.i.sroa.phi = phi ptr [ %.sroa.27, %bb.k ], [ %.sroa.0, %bb.m ], [ %.sroa.14, %bb.i ], [ %.sroa.27, %bb.j ], [ %.sroa.27, %bb.g ], [ %.sroa.14, %bb.h ], [ %.sroa.0, %bb.l ] ; 2 uses
  %.sink.i.sroa.phi136.sroa.speculated = phi float [ %i.lp, %bb.k ], [ %i.mo, %bb.m ], [ %i.mp, %bb.i ], [ %i.lp, %bb.j ], [ %i.lp, %bb.g ], [ %i.mp, %bb.h ], [ %i.mo, %bb.l ] ; 4 uses
  %.sink.i.sroa.phi169.sroa.speculated = phi float [ %i.mm, %bb.k ], [ %i.ma, %bb.m ], [ %i.md, %bb.i ], [ %i.mm, %bb.j ], [ %i.mm, %bb.g ], [ %i.md, %bb.h ], [ %i.ma, %bb.l ] ; 7 uses
  %i.mw = fsub reassoc nsz arcp contract afn float %.sroa.11.0.sroa.phi129.sroa.speculated, %.sink.i.sroa.phi136.sroa.speculated ; 2 uses
  %i.mx = fcmp reassoc nsz arcp contract afn une float %i.mw, 0.000000e+00
  %i.my = fsub reassoc nsz arcp contract afn float %.sroa.4.0.sroa.phi143.sroa.speculated, %.sink.i.sroa.phi136.sroa.speculated
  %i.mz = fdiv reassoc nsz arcp contract afn float %i.my, %i.mw
  %i.na = select reassoc nsz arcp contract afn i1 %i.mx, float %i.mz, float 0.000000e+00 ; 5 uses
  %i.nb = fsub reassoc nsz arcp contract afn float %.sroa.11.0.sroa.phi176.sroa.speculated, %.sink.i.sroa.phi169.sroa.speculated
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.na
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, %.sink.i.sroa.phi169.sroa.speculated
  %i.ne = fmul reassoc nsz arcp contract afn float %.sroa.4.0.sroa.phi183.sroa.speculated, %i.ja ; 3 uses
  %i.nf = fmul reassoc nsz arcp contract afn float %i.nd, %i.y
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, %i.ne ; 2 uses
  %i.nh = fadd reassoc nsz arcp contract afn float %i.md, %i.ma
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %i.mm
  %i.nj = fadd reassoc nsz arcp contract afn float %.sroa.11.0.sroa.phi176.sroa.speculated, %.sink.i.sroa.phi169.sroa.speculated
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, %i.ng ; 2 uses
  %i.nl = fadd reassoc nsz arcp contract afn float %.sroa.4.0.sroa.phi143.sroa.speculated, %.sink.i.sroa.phi136.sroa.speculated ; 2 uses
  %i.nm = fcmp reassoc nsz arcp contract afn une float %i.nl, 0.000000e+00
  %i.nn = fmul reassoc nsz arcp contract afn float %.sink.i.sroa.phi136.sroa.speculated, 2.000000e+00
  %i.no = fdiv reassoc nsz arcp contract afn float %i.nn, %i.nl
  %i.np = select reassoc nsz arcp contract afn i1 %i.nm, float %i.no, float 0.000000e+00
  %i.nq = fsub reassoc nsz arcp contract afn float %i.ni, %i.nk
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.np
  %i.ns = fadd reassoc nsz arcp contract afn float %i.nr, %i.nk ; 3 uses
  %i.nt = fcmp reassoc nsz arcp contract afn ugt float %i.ng, %.sroa.4.0.sroa.phi183.sroa.speculated
  br i1 %i.nt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_pixel_channel_order.exit
  %i.nu = fmul reassoc nsz arcp contract afn float %i.na, %.sroa.11.0.sroa.phi176.sroa.speculated
  %i.nv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.na ; 2 uses
  %i.nw = fsub reassoc nsz arcp contract afn float %i.ns, %.sroa.11.0.sroa.phi176.sroa.speculated ; 2 uses
  %i.nx = fmul reassoc nsz arcp contract afn float %i.nw, %i.nv
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, %i.nu
  %i.nz = fmul reassoc nsz arcp contract afn float %i.ny, %i.y
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.ne
  %i.ob = fmul reassoc nsz arcp contract afn float %i.nv, %i.y
  %i.oc = fadd reassoc nsz arcp contract afn float %i.ob, 1.000000e+00
  %i.od = fdiv reassoc nsz arcp contract afn float %i.oa, %i.oc ; 2 uses
  %i.oe = fsub reassoc nsz arcp contract afn float %i.nw, %i.od
  store float %i.oe, ptr %.sink.i.sroa.phi, align 4, !tbaa !24
  store float %i.od, ptr %.sroa.4.0.sroa.phi, align 4, !tbaa !24
  br label %_preserve_hue_and_energy.exit

bb.o:                                             ; preds = %_pixel_channel_order.exit
  %factor.i = fmul reassoc nsz arcp contract afn float %.sink.i.sroa.phi169.sroa.speculated, 2.000000e+00
  %i.of = fsub reassoc nsz arcp contract afn float %i.ns, %factor.i
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %i.na
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, %.sink.i.sroa.phi169.sroa.speculated
  %i.oi = fmul reassoc nsz arcp contract afn float %i.oh, %i.y
  %i.oj = fadd reassoc nsz arcp contract afn float %i.oi, %i.ne
  %i.ok = fmul reassoc nsz arcp contract afn float %i.na, %i.y
  %i.ol = fadd reassoc nsz arcp contract afn float %i.ok, 1.000000e+00
  %i.om = fdiv reassoc nsz arcp contract afn float %i.oj, %i.ol ; 2 uses
  store float %.sink.i.sroa.phi169.sroa.speculated, ptr %.sink.i.sroa.phi, align 4, !tbaa !24
  store float %i.om, ptr %.sroa.4.0.sroa.phi, align 4, !tbaa !24
  %i.on = fadd reassoc nsz arcp contract afn float %.sink.i.sroa.phi169.sroa.speculated, %i.om
  %i.oo = fsub reassoc nsz arcp contract afn float %i.ns, %i.on
  br label %_preserve_hue_and_energy.exit

_preserve_hue_and_energy.exit:                    ; preds = %bb.n, %bb.o
  %.sink.i39 = phi float [ %i.oo, %bb.o ], [ %.sroa.11.0.sroa.phi176.sroa.speculated, %bb.n ]
  store float %.sink.i39, ptr %.sroa.11.0.sroa.phi, align 4, !tbaa !24
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load float, ptr %.sroa.0, align 16, !tbaa !24
  %.sroa.14.0..sroa.14.0..sroa.14.4. = load float, ptr %.sroa.14, align 4, !tbaa !24
  %.sroa.27.0..sroa.27.0..sroa.27.8. = load float, ptr %.sroa.27, align 8, !tbaa !24
  %i.op = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  %i.oq = insertelement <4 x float> poison, float %.sroa.0.0..sroa.0.0..sroa.0.0., i64 0
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = fmul reassoc nsz arcp contract afn <4 x float> %i.or, %i.hy
  %i.ot = insertelement <4 x float> poison, float %.sroa.14.0..sroa.14.0..sroa.14.4., i64 0
  %i.ou = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ov = fmul reassoc nsz arcp contract afn <4 x float> %i.ou, %i.ig
  %i.ow = fadd reassoc nsz arcp contract afn <4 x float> %i.ov, %i.os
  %i.ox = insertelement <4 x float> poison, float %.sroa.27.0..sroa.27.0..sroa.27.8., i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = fmul reassoc nsz arcp contract afn <4 x float> %i.oy, %i.io
  %i.pa = fadd reassoc nsz arcp contract afn <4 x float> %i.ow, %i.oz
  store <4 x float> %i.pa, ptr %i.mn, align 4, !tbaa !24
  %i.pb = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !24
  store float %i.pc, ptr %i.op, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.pd = add nuw i64 %.03894, 4                  ; 2 uses
  %i.pe = icmp ult i64 %i.pd, %i.iq
  br i1 %i.pe, label %bb.f, label %._crit_edge
}

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  tail call void @process_loglogistic_per_channel(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d
end_hunk_1
