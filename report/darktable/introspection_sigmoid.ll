Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_sigmoid?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@init_presets:bb.a
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.z = call i32 (...) %i.y() #21
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.p, i32 noundef %i.z, ptr noundef nonnull %1, i32 noundef 56, i32 noundef 1, i32 noundef 4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !40  ; 15 uses
  %i.c = load float, ptr %1, align 4, !tbaa !74   ; 3 uses
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
  %i.s = load float, ptr %i.r, align 4, !tbaa !75
  %i.t = fneg reassoc nsz arcp contract afn float %i.s
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e+00, float %i.t) ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.u, ptr %i.v, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load <2 x float>, ptr %i.w, align 4, !tbaa !21 ; 2 uses
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
  store float %i.au, ptr %i.y, align 4, !tbaa !43
  store <2 x float> %i.ah, ptr %i.b, align 4, !tbaa !21
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
  store float %i.bf, ptr %i.bg, align 4, !tbaa !44
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, 1.845000e-01
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float %i.au)
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.av
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.bj, ptr %i.bk, align 4, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !22
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C23D70A
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bq, float 0.000000e+00)
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.br, float 1.000000e+00)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.bs, ptr %i.bt, align 4, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.bv, ptr %i.bw, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.by, ptr %i.bz, align 4, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !78
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.cb, ptr %i.cc, align 4, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !79
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.ce, ptr %i.cf, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.ch, ptr %i.ci, align 4, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.ck, ptr %i.cl, align 4, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %i.cn, ptr %i.co, align 4, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !49
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
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !40  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51
  %i.i = sext i32 %i.h to i64
  %i.j = load <2 x float>, ptr %i.c, align 4, !tbaa !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !42
  %i.s = shl nsw i64 %i.f, 2
  %i.t = mul i64 %i.s, %i.i                       ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_pixel_channel_order.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_pixel_channel_order.exit
  %.07281 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_pixel_channel_order.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07281 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07281 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.x = load float, ptr %i.v, align 4, !tbaa !21 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !21 ; 3 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21 ; 3 uses
  %i.ad = fadd reassoc nsz arcp contract afn float %i.aa, %i.ac
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x3EAAAAAB
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ae, float 0.000000e+00) ; 10 uses
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.x, float %i.z)
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ag, float %i.ac) ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ah, 0.000000e+00
  %i.aj = fneg reassoc nsz arcp contract afn float %i.af
  %i.ak = fsub reassoc nsz arcp contract afn float %i.ah, %i.af
  %i.al = fdiv reassoc nsz arcp contract afn float %i.aj, %i.ak
  %i.am = select reassoc nsz arcp contract afn i1 %i.ai, float %i.al, float 1.000000e+00 ; 4 uses
  %i.an = fsub reassoc nsz arcp contract afn float %i.x, %i.af
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.af ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %i.z, %i.af
  %i.ar = fmul reassoc nsz arcp contract afn float %i.am, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.af ; 2 uses
  %i.at = fsub reassoc nsz arcp contract afn float %i.ac, %i.af
  %i.au = fmul reassoc nsz arcp contract afn float %i.am, %i.at
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.af ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %i.ap, %i.as
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.av ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, f0x3EAAAAAB ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.az, float 0.000000e+00)
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.n
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float %i.p) ; 2 uses
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.l
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bc, %i.bd
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float %i.r)
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.u ; 2 uses
  %i.bh = fcmp ord float %i.bg, 0.000000e+00
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bg, float %i.u ; 9 uses
  %i.bj = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bk = fcmp reassoc nsz arcp contract afn ogt double %i.bj, 1.000000e-09
  br i1 %i.bk, label %.preheader, label %.preheader74.preheader

.preheader74.preheader:                           ; preds = %bb.b
  %i.bl = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.bn = load float, ptr %i.aw, align 4, !tbaa !21
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bn, %i.af
  %i.bp = fmul reassoc nsz arcp contract afn float %i.am, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.af
  %i.br = fmul reassoc nsz arcp contract afn float %i.bi, 3.000000e+00
  %i.bs = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.as, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.av, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bq, i64 3
  %i.by = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bx
  %i.bz = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fdiv reassoc nsz arcp contract afn <4 x float> %i.by, %i.ca ; 4 uses
  %i.cc = extractelement <4 x float> %i.cb, i64 2
  %i.cd = extractelement <4 x float> %i.cb, i64 1
  %i.ce = extractelement <4 x float> %i.cb, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader74.preheader, %.preheader
  %i.cf = phi float [ %i.bi, %.preheader74.preheader ], [ %i.cc, %.preheader ] ; 5 uses
  %i.cg = phi float [ %i.bi, %.preheader74.preheader ], [ %i.cd, %.preheader ] ; 4 uses
  %i.ch = phi float [ %i.bi, %.preheader74.preheader ], [ %i.ce, %.preheader ] ; 3 uses
  %i.ci = phi <4 x float> [ %i.bm, %.preheader74.preheader ], [ %i.cb, %.preheader ] ; 2 uses
  store <4 x float> %i.ci, ptr %i.a, align 16, !tbaa !21
  %i.cj = fcmp reassoc nsz arcp contract afn ult float %i.ch, %i.cg
  br i1 %i.cj, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.cg, %i.cf
  br i1 %i.ck, label %_pixel_channel_order.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.ch
  br i1 %i.cl, label %_pixel_channel_order.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.cg
  %spec.select = select i1 %i.cm, i64 1, i64 2
  br label %_pixel_channel_order.exit

bb.f:                                             ; preds = %.loopexit
  %i.cn = fcmp reassoc nsz arcp contract afn ult float %i.ch, %i.cf
  br i1 %i.cn, label %bb.g, label %_pixel_channel_order.exit

bb.g:                                             ; preds = %bb.f
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.cg
  %spec.select73 = select i1 %i.co, i64 2, i64 1
  br label %_pixel_channel_order.exit

_pixel_channel_order.exit:                        ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %bb.c
  %.sroa.11.0 = phi i64 [ 1, %bb.f ], [ 2, %bb.d ], [ 0, %bb.e ], [ %spec.select73, %bb.g ], [ 0, %bb.c ]
  %.sink.i = phi i64 [ 2, %bb.f ], [ 1, %bb.d ], [ %spec.select, %bb.e ], [ 0, %bb.g ], [ 2, %bb.c ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sink.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.11.0
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !21
  %i.ct = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fsub reassoc nsz arcp contract afn <2 x float> %i.j, %i.cu
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> <float f0x358637BD, float f0xB58637BD>, %i.cu
  %i.cx = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cq, i64 1
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cy
  %i.da = fdiv reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cz ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = extractelement <2 x float> %i.da, i64 1
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.db, float %i.dc) ; 2 uses
  %i.de = fsub reassoc nsz arcp contract afn float %i.bi, %i.cq
  %i.df = fadd reassoc nsz arcp contract afn float %i.bi, f0x358637BD
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.de, %i.df ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dd, %i.dg
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, f0x358637BD
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dg, 2.000000e+00
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dg, %i.dg
  %i.dl = fsub reassoc nsz arcp contract afn float f0x3F800008, %i.dk
  %i.dm = fmul reassoc nsz arcp contract afn float %i.di, %i.dl
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dm ; 3 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dn
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, 1.000000e+00
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dp)
  %i.dr = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dt = fsub reassoc nsz arcp contract afn <4 x float> %i.ci, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dq, 1.000000e+00
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dn, %i.dd
  %i.dx = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fmul reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dt
  %i.ea = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fdiv reassoc nsz arcp contract afn <4 x float> %i.dz, %i.eb
  %i.ed = fadd reassoc nsz arcp contract afn <4 x float> %i.ec, %i.ds
  store <4 x float> %i.ed, ptr %i.w, align 4, !tbaa !21
  %i.ee = load float, ptr %i.aw, align 4, !tbaa !21
  store float %i.ee, ptr %i.du, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ef = add nuw i64 %.07281, 4                  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.t
  br i1 %i.eg, label %bb.b, label %._crit_edge
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define hidden void @process_loglogistic_per_channel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.b = alloca [3 x [2 x float]], align 16       ; 8 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 5 uses
  %i.e = alloca [4 x [4 x float]], align 64       ; 8 uses
  %i.f = alloca [4 x [4 x float]], align 64       ; 15 uses
  %i.g = alloca [4 x float], align 16             ; 6 uses
  %i.h = alloca [4 x float], align 16             ; 6 uses
  %i.i = alloca [4 x float], align 16             ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !40  ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = load float, ptr %i.k, align 4, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load float, ptr %i.w, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !47 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ae = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.ad) #21 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49
  switch i32 %i.ag, label %bb.d [
    i32 0, label %_get_base_profile.exit.thread
    i32 4, label %_get_base_profile.exit
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

_get_base_profile.exit.thread:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %.split.us.3.i

bb.b:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

bb.c:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

bb.d:                                             ; preds = %bb.a
  br label %_get_base_profile.exit

_get_base_profile.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i32 [ 4, %bb.d ], [ 26, %bb.b ], [ 2, %bb.c ], [ 1, %bb.a ]
end_hunk_0
begin_hunk_1_@process_loglogistic_per_channel:bb.a
  %i.cy = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !21 ; 3 uses
  %i.cz = load <5 x float>, ptr %i.c, align 64, !tbaa !21 ; 4 uses
  %i.da = load <2 x float>, ptr %i.cs, align 4, !tbaa !21
  %i.db = shufflevector <5 x float> %i.cz, <5 x float> poison, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.dc = fmul reassoc nsz arcp contract afn <4 x float> %i.db, %i.cw
  %i.dd = shufflevector <2 x float> %i.da, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.de = shufflevector <5 x float> %i.cz, <5 x float> %i.dd, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn <4 x float> %i.de, %i.cx
  %i.dg = fadd reassoc nsz arcp contract afn <4 x float> %i.df, %i.dc
  %i.dh = shufflevector <5 x float> %i.cz, <5 x float> %i.dd, <4 x i32> <i32 2, i32 6, i32 2, i32 6> ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.dh, %i.cy
  %i.dj = shufflevector <5 x float> %i.cz, <5 x float> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.dk = fmul reassoc nsz arcp contract afn <4 x float> %i.cw, %i.dj
  %i.dl = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %i.cx, %i.dl
  %i.dn = fadd reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dk
  %i.do = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.cy, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dg, %i.di
  %i.ds = load <1 x float>, ptr %i.ct, align 32
  %i.dt = load <1 x float>, ptr %i.cu, align 4
  %i.du = load <1 x float>, ptr %i.cv, align 8
  %i.dv = shufflevector <1 x float> %i.ds, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dw = fmul reassoc nsz arcp contract afn <4 x float> %i.dv, %i.cw
  %i.dx = shufflevector <1 x float> %i.dt, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.cx
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dw
  %i.ea = shufflevector <1 x float> %i.du, <1 x float> poison, <4 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.cy
  %i.ec = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !48
  %i.ef = load float, ptr %i.bz, align 4, !tbaa !21
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ee
  %i.eh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eg
  %i.ei = load float, ptr %i.ca, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.eh, float noundef %i.ei, i64 noundef 0, ptr noundef nonnull %i.b) #21
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !48
  %i.ek = load float, ptr %i.ce, align 4, !tbaa !21
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, %i.ej
  %i.em = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.el
  %i.en = load float, ptr %i.ch, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.em, float noundef %i.en, i64 noundef 1, ptr noundef nonnull %i.cj) #21
  %i.eo = load float, ptr %i.ed, align 4, !tbaa !48
  %i.ep = load float, ptr %i.ck, align 4, !tbaa !21
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.eo
  %i.er = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eq
  %i.es = load float, ptr %i.cn, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.er, float noundef %i.es, i64 noundef 2, ptr noundef nonnull %i.cp) #21
  call void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.et = load <4 x float>, ptr %i.cr, align 4, !tbaa !21 ; 2 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ev = load <4 x float>, ptr %gep.1.i, align 4, !tbaa !21 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ex = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !21 ; 2 uses
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ez = load <5 x float>, ptr %i.c, align 64, !tbaa !21 ; 3 uses
  %i.fa = load <2 x float>, ptr %i.cs, align 4, !tbaa !21
  %i.fb = shufflevector <5 x float> %i.ez, <5 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, %i.eu
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.fe = shufflevector <5 x float> %i.ez, <5 x float> %i.fd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, %i.ew
  %i.fg = fadd reassoc nsz arcp contract afn <8 x float> %i.ff, %i.fc
  %i.fh = shufflevector <5 x float> %i.ez, <5 x float> %i.fd, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, %i.ey
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fi
  store <8 x float> %i.fj, ptr %i.d, align 64, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fl = load <1 x float>, ptr %i.ct, align 32
  %i.fm = load <1 x float>, ptr %i.cu, align 4
  %i.fn = load <1 x float>, ptr %i.cv, align 8
  %i.fo = shufflevector <1 x float> %i.fl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.et
  %i.fq = shufflevector <1 x float> %i.fm, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, %i.ev
  %i.fs = fadd reassoc nsz arcp contract afn <4 x float> %i.fr, %i.fp
  %i.ft = shufflevector <1 x float> %i.fn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fu = fmul reassoc nsz arcp contract afn <4 x float> %i.ft, %i.ex
  %i.fv = fadd reassoc nsz arcp contract afn <4 x float> %i.fs, %i.fu
  store <4 x float> %i.fv, ptr %i.fk, align 32, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.fw = call i32 @mat3SSEinv(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #21 ; 0 uses
  %gep.1.i54.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %gep.2.i55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gb = load <4 x float>, ptr %i.a, align 64, !tbaa !21 ; 3 uses
  %i.gc = load <4 x float>, ptr %gep.1.i54.i, align 16, !tbaa !21 ; 3 uses
  %i.gd = load <4 x float>, ptr %gep.2.i55.i, align 32, !tbaa !21 ; 3 uses
  %i.ge = load <5 x float>, ptr %i.e, align 64, !tbaa !21 ; 4 uses
  %i.gf = load <2 x float>, ptr %i.fx, align 4, !tbaa !21
  %i.gg = shufflevector <5 x float> %i.ge, <5 x float> poison, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, %i.gb
  %i.gi = shufflevector <2 x float> %i.gf, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gj = shufflevector <5 x float> %i.ge, <5 x float> %i.gi, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gc
  %i.gl = fadd reassoc nsz arcp contract afn <4 x float> %i.gk, %i.gh
  %i.gm = shufflevector <5 x float> %i.ge, <5 x float> %i.gi, <4 x i32> <i32 2, i32 6, i32 2, i32 6> ; 2 uses
  %i.gn = fmul reassoc nsz arcp contract afn <4 x float> %i.gm, %i.gd
  %i.go = shufflevector <5 x float> %i.ge, <5 x float> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.gb, %i.go
  %i.gq = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gc, %i.gq
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %i.gp
  %i.gt = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.gu = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, %i.gt
  %i.gv = fadd reassoc nsz arcp contract afn <4 x float> %i.gs, %i.gu
  %i.gw = fadd reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gn
  %i.gx = load <1 x float>, ptr %i.fy, align 32
  %i.gy = load <1 x float>, ptr %i.fz, align 4
  %i.gz = load <1 x float>, ptr %i.ga, align 8
  %i.ha = shufflevector <1 x float> %i.gx, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.ha, %i.gb
  %i.hc = shufflevector <1 x float> %i.gy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hd = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.gc
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, %i.hb
  %i.hf = shufflevector <1 x float> %i.gz, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hg = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, %i.gd
  %i.hh = fadd reassoc nsz arcp contract afn <4 x float> %i.he, %i.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.hi = shl nsw i64 %i.n, 2
  %i.hj = mul i64 %i.hi, %i.q                     ; 2 uses
  %.not = icmp eq i64 %i.hj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_calculate_adjusted_primaries.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.hm = load <2 x float>, ptr %i.f, align 64, !tbaa !21
  %i.hn = load <2 x float>, ptr %i.hk, align 16, !tbaa !21
  %i.ho = load <2 x float>, ptr %i.hl, align 32, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !21
  %i.hv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hx = insertelement <4 x float> poison, float %i.v, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = insertelement <4 x float> poison, float %i.t, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_preserve_hue_and_energy.exit, %_calculate_adjusted_primaries.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  ret void

bb.f:                                             ; preds = %.lr.ph, %_preserve_hue_and_energy.exit
  %.03897 = phi i64 [ 0, %.lr.ph ], [ %i.nz, %_preserve_hue_and_energy.exit ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03897 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.ik = load float, ptr %i.ih, align 4, !tbaa !21 ; 2 uses
  %i.il = load float, ptr %i.ii, align 4, !tbaa !21 ; 2 uses
  %i.im = load float, ptr %i.ij, align 4, !tbaa !21 ; 2 uses
  %i.in = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, %i.io
  %i.iq = insertelement <2 x float> poison, float %i.il, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul reassoc nsz arcp contract afn <2 x float> %i.hn, %i.ir
  %i.it = fadd reassoc nsz arcp contract afn <2 x float> %i.is, %i.ip
  %i.iu = insertelement <2 x float> poison, float %i.im, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul reassoc nsz arcp contract afn <2 x float> %i.ho, %i.iv
  %i.ix = fadd reassoc nsz arcp contract afn <2 x float> %i.it, %i.iw ; 3 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.hq, %i.ik
  %i.iz = fmul reassoc nsz arcp contract afn float %i.hs, %i.il
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jb = fmul reassoc nsz arcp contract afn float %i.hu, %i.im
  %i.jc = fadd reassoc nsz arcp contract afn float %i.ja, %i.jb ; 3 uses
  %i.jd = extractelement <2 x float> %i.ix, i64 0 ; 2 uses
  %i.je = extractelement <2 x float> %i.ix, i64 1 ; 2 uses
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %i.jd
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, %i.jc
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, f0x3EAAAAAB
  %i.ji = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jh, float 0.000000e+00) ; 5 uses
  %i.jj = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jd, float %i.je)
  %i.jk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jj, float %i.jc) ; 2 uses
  %i.jl = fcmp reassoc nsz arcp contract afn olt float %i.jk, 0.000000e+00
  %i.jm = fneg reassoc nsz arcp contract afn float %i.ji
  %i.jn = fsub reassoc nsz arcp contract afn float %i.jk, %i.ji
  %i.jo = fdiv reassoc nsz arcp contract afn float %i.jm, %i.jn
  %i.jp = select reassoc nsz arcp contract afn i1 %i.jl, float %i.jo, float 1.000000e+00 ; 2 uses
  %i.jq = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.js = fsub reassoc nsz arcp contract afn <2 x float> %i.ix, %i.jr
  %i.jt = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul reassoc nsz arcp contract afn <2 x float> %i.ju, %i.js
  %i.jw = fadd reassoc nsz arcp contract afn <2 x float> %i.jv, %i.jr ; 2 uses
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jy = fsub reassoc nsz arcp contract afn float %i.jc, %i.ji
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jp, %i.jy
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jz, %i.ji
  %i.kb = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.kb, %i.dq
  %i.kd = fmul reassoc nsz arcp contract afn <4 x float> %i.jx, %i.dr
  %i.ke = fadd reassoc nsz arcp contract afn <4 x float> %i.kd, %i.kc
  %i.kf = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kh = fmul reassoc nsz arcp contract afn <4 x float> %i.kg, %i.ec
  %i.ki = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kh ; 6 uses
  store <4 x float> %i.ki, ptr %i.h, align 16, !tbaa !21
  %i.kj = extractelement <4 x float> %i.ki, i64 0 ; 3 uses
  %i.kk = extractelement <4 x float> %i.ki, i64 1 ; 4 uses
  %i.kl = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ki, <4 x float> zeroinitializer)
  %i.km = fadd reassoc nsz arcp contract afn <4 x float> %i.kl, %i.hy
  %i.kn = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.km, <4 x float> %i.ia) ; 2 uses
  %i.ko = fadd reassoc nsz arcp contract afn <4 x float> %i.kn, %i.ic
  %i.kp = fdiv reassoc nsz arcp contract afn <4 x float> %i.kn, %i.ko
  %i.kq = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.kp, <4 x float> %i.ie)
  %i.kr = fmul reassoc nsz arcp contract afn <4 x float> %i.kq, %i.ig ; 2 uses
  %i.ks = fcmp ord <4 x float> %i.kr, zeroinitializer
  %i.kt = select <4 x i1> %i.ks, <4 x float> %i.kr, <4 x float> %i.ig ; 2 uses
  store <4 x float> %i.kt, ptr %i.g, align 16, !tbaa !21
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03897 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.kv = fcmp reassoc nsz arcp contract afn ult float %i.kj, %i.kk
  br i1 %i.kv, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.kw = extractelement <4 x float> %i.ki, i64 2 ; 3 uses
  %i.kx = fcmp reassoc nsz arcp contract afn ogt float %i.kk, %i.kw
  br i1 %i.kx, label %_pixel_channel_order.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kw, %i.kj
  br i1 %i.ky, label %_pixel_channel_order.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.kz = fcmp reassoc nsz arcp contract afn ogt float %i.kw, %i.kk ; 2 uses
  %spec.select = select i1 %i.kz, i64 2, i64 1
  %spec.select90 = select i1 %i.kz, i64 1, i64 2
  br label %_pixel_channel_order.exit

bb.j:                                             ; preds = %bb.f
  %i.la = extractelement <4 x float> %i.ki, i64 2 ; 2 uses
  %i.lb = fcmp reassoc nsz arcp contract afn ult float %i.kj, %i.la
  br i1 %i.lb, label %bb.k, label %_pixel_channel_order.exit

bb.k:                                             ; preds = %bb.j
  %i.lc = fcmp reassoc nsz arcp contract afn ogt float %i.la, %i.kk ; 2 uses
  %spec.select91 = select i1 %i.lc, i64 2, i64 1
  %spec.select92 = select i1 %i.lc, i64 1, i64 2
  br label %_pixel_channel_order.exit

_pixel_channel_order.exit:                        ; preds = %bb.k, %bb.i, %bb.j, %bb.h, %bb.g
  %.sroa.11.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.h ], [ 0, %bb.i ], [ %spec.select91, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.sroa.4.0 = phi i64 [ 0, %bb.j ], [ 0, %bb.h ], [ %spec.select, %bb.i ], [ %spec.select92, %bb.k ], [ 1, %bb.g ] ; 3 uses
  %.sink.i = phi i64 [ 2, %bb.j ], [ 1, %bb.h ], [ %spec.select90, %bb.i ], [ 0, %bb.k ], [ 2, %bb.g ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.11.0
  %i.le = load float, ptr %i.ld, align 4, !tbaa !21
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sink.i
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !21 ; 4 uses
  %i.lh = fsub reassoc nsz arcp contract afn float %i.le, %i.lg ; 2 uses
  %i.li = fcmp reassoc nsz arcp contract afn une float %i.lh, 0.000000e+00
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.4.0
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !21 ; 2 uses
  %i.ll = fsub reassoc nsz arcp contract afn float %i.lk, %i.lg
  %i.lm = fdiv reassoc nsz arcp contract afn float %i.ll, %i.lh
  %i.ln = select reassoc nsz arcp contract afn i1 %i.li, float %i.lm, float 0.000000e+00 ; 5 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink.i
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !21 ; 7 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.11.0
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !21 ; 5 uses
  %i.ls = fsub reassoc nsz arcp contract afn float %i.lr, %i.lp
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.ln
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lt, %i.lp
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.4.0
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !21 ; 2 uses
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lw, %i.hv ; 3 uses
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lu, %i.ab
  %i.lz = fadd reassoc nsz arcp contract afn float %i.ly, %i.lx ; 2 uses
  %i.ma = shufflevector <4 x float> %i.kt, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v3f32(float 0.000000e+00, <3 x float> %i.ma)
  %i.mc = fadd reassoc nsz arcp contract afn float %i.lr, %i.lp
  %i.md = fadd reassoc nsz arcp contract afn float %i.mc, %i.lz ; 2 uses
  %i.me = fadd reassoc nsz arcp contract afn float %i.lk, %i.lg ; 2 uses
  %i.mf = fcmp reassoc nsz arcp contract afn une float %i.me, 0.000000e+00
  %i.mg = fmul reassoc nsz arcp contract afn float %i.lg, 2.000000e+00
  %i.mh = fdiv reassoc nsz arcp contract afn float %i.mg, %i.me
  %i.mi = select reassoc nsz arcp contract afn i1 %i.mf, float %i.mh, float 0.000000e+00
  %i.mj = fsub reassoc nsz arcp contract afn float %i.mb, %i.md
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.mi
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, %i.md ; 3 uses
  %i.mm = fcmp reassoc nsz arcp contract afn ugt float %i.lz, %i.lw
  br i1 %i.mm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_pixel_channel_order.exit
  %i.mn = fmul reassoc nsz arcp contract afn float %i.ln, %i.lr
  %i.mo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ln ; 2 uses
  %i.mp = fsub reassoc nsz arcp contract afn float %i.ml, %i.lr ; 2 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.mo
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mq, %i.mn
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.ab
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, %i.lx
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mo, %i.ab
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, 1.000000e+00
  %i.mw = fdiv reassoc nsz arcp contract afn float %i.mt, %i.mv ; 2 uses
  %i.mx = fsub reassoc nsz arcp contract afn float %i.mp, %i.mw
  br label %_preserve_hue_and_energy.exit

bb.m:                                             ; preds = %_pixel_channel_order.exit
  %factor.i = fmul reassoc nsz arcp contract afn float %i.lp, 2.000000e+00
  %i.my = fsub reassoc nsz arcp contract afn float %i.ml, %factor.i
  %i.mz = fmul reassoc nsz arcp contract afn float %i.my, %i.ln
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, %i.lp
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, %i.ab
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, %i.lx
  %i.nd = fmul reassoc nsz arcp contract afn float %i.ln, %i.ab
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nd, 1.000000e+00
  %i.nf = fdiv reassoc nsz arcp contract afn float %i.nc, %i.ne ; 2 uses
  %i.ng = fadd reassoc nsz arcp contract afn float %i.lp, %i.nf
  %i.nh = fsub reassoc nsz arcp contract afn float %i.ml, %i.ng
  br label %_preserve_hue_and_energy.exit

_preserve_hue_and_energy.exit:                    ; preds = %bb.l, %bb.m
  %.sink98 = phi float [ %i.lp, %bb.m ], [ %i.mx, %bb.l ]
  %.sink = phi float [ %i.nf, %bb.m ], [ %i.mw, %bb.l ]
  %.sink.i39 = phi float [ %i.nh, %bb.m ], [ %i.lr, %bb.l ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sink.i
  store float %.sink98, ptr %i.ni, align 4, !tbaa !21
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.4.0
  store float %.sink, ptr %i.nj, align 4, !tbaa !21
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.11.0
  store float %.sink.i39, ptr %i.nk, align 4, !tbaa !21
  %i.nl = load float, ptr %i.hw, align 8, !tbaa !21
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.nn = load <2 x float>, ptr %i.i, align 16, !tbaa !21 ; 2 uses
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.np = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nq = fmul reassoc nsz arcp contract afn <4 x float> %i.np, %i.gv
  %i.nr = fmul reassoc nsz arcp contract afn <4 x float> %i.no, %i.gw
  %i.ns = fadd reassoc nsz arcp contract afn <4 x float> %i.nr, %i.nq
  %i.nt = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fmul reassoc nsz arcp contract afn <4 x float> %i.nu, %i.hh
  %i.nw = fadd reassoc nsz arcp contract afn <4 x float> %i.ns, %i.nv
  store <4 x float> %i.nw, ptr %i.ku, align 4, !tbaa !21
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !21
  store float %i.ny, ptr %i.nm, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %i.nz = add nuw i64 %.03897, 4                  ; 2 uses
  %i.oa = icmp ult i64 %i.nz, %i.hj
  br i1 %i.oa, label %bb.f, label %._crit_edge
}

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  tail call void @process_loglogistic_per_channel(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @process_loglogistic_rgb_ratio(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
end_hunk_1
