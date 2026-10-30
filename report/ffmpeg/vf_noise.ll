Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_noise?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_slice:bb.a
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4096 ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.i to i32
  %i.cl = icmp sgt i32 %i.ar, %i.ck
  br i1 %i.cl, label %bb.f, label %._crit_edge.split.i, !llvm.loop !81

._crit_edge.split.i:                              ; preds = %bb.f
  %i.cm = getelementptr inbounds i8, ptr %.05465.i, i64 %i.bb
  %i.cn = getelementptr inbounds i8, ptr %.05563.i, i64 %i.bc
  %i.co = add nsw i32 %.05367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.co, %i.x
  br i1 %exitcond.not.i, label %noise.exit, label %.lr.ph.i, !llvm.loop !82

noise.exit:                                       ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader.i, %.lr.ph68.i, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !51
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %bb.b, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %noise.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #5

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #5

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @av_default_item_name(ptr noundef) #5

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @init_noise(ptr noundef %0, i32 noundef range(i32 -2147483648, 4) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @av_malloc(i64 noundef 5120) #9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [114976 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 16 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !28   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = mul i32 %1, 31415
  %i.l = add i32 %i.j, %i.k
  tail call void @av_lfg_init(ptr noundef nonnull %i.e, i32 noundef %i.l) #9
  %i.m = and i32 %i.h, 1
  %.not85 = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.h, 8
  %.not88 = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = and i32 %i.h, 16
  %.not91 = icmp eq i32 %i.o, 0                   ; 3 uses
  %i.p = sitofp nsz i32 %i.f to double            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 2 uses
  %.neg93 = sdiv i32 %i.f, -2
  %i.r = fdiv nnan nsz double %i.p, f0x3FFBB67AE8584CAA
  %.promoted100 = load i32, ptr %i.q, align 8, !tbaa !46
  br label %bb.c

.preheader94:                                     ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  br label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.n
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.t = phi i32 [ %.promoted100, %bb.b ], [ %i.es, %bb.n ] ; 5 uses
  %.07899 = phi i32 [ 0, %bb.b ], [ %i.ez, %bb.n ] ; 4 uses
  br i1 %.not85, label %.preheader95, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add i32 %i.t, 40
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = add i32 %i.t, 9
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = add i32 %i.ad, %i.y                     ; 2 uses
  %i.af = and i32 %i.t, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !47
  %i.ai = add i32 %i.t, 1                         ; 4 uses
  %i.aj = uitofp nsz i32 %i.ae to double
  %i.ak = fmul nnan nsz double %i.p, %i.aj
  %i.al = fmul nnan nsz double %i.ak, f0x3DF0000000000000
  %i.am = fptosi double %i.al to i32
  %i.an = add i32 %.neg93, %i.am                  ; 4 uses
  br i1 %.not88, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %i.an, 6
  %i.ap = sitofp nsz i32 %i.ao to double
  %i.aq = srem i32 %.07899, 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr @patt, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = sext i8 %i.at to i32
  %i.av = mul nsw i32 %i.f, %i.au
  %i.aw = sitofp nsz i32 %i.av to double
  %i.ax = fmul nnan nsz double %i.aw, 2.500000e-01
  %i.ay = fdiv nsz double %i.ax, 3.000000e+00
  %i.az = fadd nsz double %i.ay, %i.ap
  %i.ba = fptosi double %i.az to i8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.bb = sdiv i32 %i.an, 3
  %i.bc = trunc i32 %i.bb to i8
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  br i1 %.not91, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = sdiv i32 %i.an, 2
  %i.be = sitofp nsz i32 %i.bd to double
  %i.bf = srem i32 %.07899, 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr @patt, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = sext i8 %i.bi to i32
  %i.bk = mul nsw i32 %i.f, %i.bj
  %i.bl = sitofp nsz i32 %i.bk to double
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %i.bl, double 2.500000e-01, double %i.be)
  %i.bn = fptosi double %i.bm to i8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bo = trunc i32 %i.an to i8
  br label %bb.n

.preheader95:                                     ; preds = %bb.c, %.preheader95
  %i.bp = phi i32 [ %i.cx, %.preheader95 ], [ %i.t, %bb.c ] ; 7 uses
  %i.bq = add i32 %i.bp, 40
  %i.br = and i32 %i.bq, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bp, 9
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = add i32 %i.bz, %i.bu                    ; 2 uses
  %i.cb = and i32 %i.bp, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !47
  %i.ce = add i32 %i.bp, 1
  %i.cf = uitofp nsz i32 %i.ca to double
  %i.cg = fmul nnan nsz double %i.cf, 2.000000e+00
  %i.ch = fmul nnan nsz double %i.cg, f0x3DF0000000000000
  %i.ci = fadd nsz double %i.ch, -1.000000e+00    ; 3 uses
  %i.cj = add i32 %i.bp, 41
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.co = add i32 %i.bp, 10
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = add i32 %i.cs, %i.cn                    ; 2 uses
  %i.cu = and i32 %i.ce, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cv
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !47
  %i.cx = add i32 %i.bp, 2                        ; 2 uses
  %i.cy = uitofp nsz i32 %i.ct to double
  %i.cz = fmul nnan nsz double %i.cy, 2.000000e+00
  %i.da = fmul nnan nsz double %i.cz, f0x3DF0000000000000
  %i.db = fadd nsz double %i.da, -1.000000e+00    ; 2 uses
  %i.dc = fmul nsz double %i.db, %i.db
  %i.dd = tail call nsz double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.dc) ; 3 uses
  %i.de = fcmp nsz ult double %i.dd, 1.000000e+00
  br i1 %i.de, label %bb.k, label %.preheader95, !llvm.loop !84

bb.k:                                             ; preds = %.preheader95
  %i.df = tail call nsz double @llvm.log.f64(double %i.dd)
  %i.dg = fmul nsz double %i.df, -2.000000e+00
  %i.dh = fdiv nsz double %i.dg, %i.dd
  %i.di = tail call nsz double @llvm.sqrt.f64(double %i.dh)
  %i.dj = fmul nsz double %i.ci, %i.di
  %i.dk = fmul nsz double %i.r, %i.dj             ; 2 uses
  br i1 %.not91, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = fmul nsz double %i.dk, 5.000000e-01
  %i.dm = srem i32 %.07899, 4
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @patt, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = sext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.f, %i.dq
  %i.ds = sitofp nsz i32 %i.dr to double
  %i.dt = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double 3.500000e-01, double %i.dl)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi nsz double [ %i.dt, %bb.l ], [ %i.dk, %bb.k ]
  %i.du = fptrunc nsz double %.0 to float         ; 2 uses
  %i.dv = fcmp nsz ogt float %i.du, -1.280000e+02
  %i.dw = select nsz i1 %i.dv, float %i.du, float -1.280000e+02 ; 2 uses
  %i.dx = fcmp nsz ogt float %i.dw, 1.270000e+02
  %..i = select nsz i1 %i.dx, float 1.270000e+02, float %i.dw
  %i.dy = fpext nsz float %..i to double          ; 2 uses
  %i.dz = fdiv nsz double %i.dy, 3.000000e+00
  %.1 = select nsz i1 %.not88, double %i.dy, double %i.dz
  %i.ea = fptosi double %.1 to i32
  %i.eb = trunc i32 %i.ea to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.j, %bb.i, %bb.m
  %.sink = phi i8 [ %i.bc, %bb.g ], [ %i.ba, %bb.f ], [ %i.bo, %bb.j ], [ %i.bn, %bb.i ], [ %i.eb, %bb.m ]
  %i.ec = phi i32 [ %i.ai, %bb.g ], [ %i.ai, %bb.f ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %i.cx, %bb.m ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.sink, ptr %i.ed, align 1, !tbaa !9
  %i.ee = add i32 %i.ec, 40
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %i.ej = add i32 %i.ec, 9
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !47
  %i.eo = add i32 %i.en, %i.ei                    ; 2 uses
  %i.ep = and i32 %i.ec, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eq
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !47
  %i.es = add i32 %i.ec, 1                        ; 2 uses
  %i.et = uitofp nsz i32 %i.eo to double
  %i.eu = fmul nnan nsz double %i.et, 6.000000e+00
  %i.ev = fmul nnan nsz double %i.eu, f0x3DF0000000000000
  %i.ew = fptosi double %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = sext i1 %i.ex to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %spec.select = add i32 %.07899, 1
  %i.ez = add i32 %spec.select, %i.ey
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5120
  br i1 %exitcond.not, label %.preheader94, label %bb.c, !llvm.loop !85

.preheader:                                       ; preds = %.preheader94, %bb.p
  %indvars.iv117 = phi i64 [ 0, %.preheader94 ], [ %indvars.iv.next118, %bb.p ] ; 2 uses
  %.lcssa102105106 = phi i32 [ %i.es, %.preheader94 ], [ %i.fq, %bb.p ]
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv117
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.o
  %indvars.iv113 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next114, %bb.o ] ; 2 uses
  %i.fb = phi i32 [ %.lcssa102105106, %.preheader ], [ %i.fq, %bb.o ] ; 4 uses
  %i.fc = add i32 %i.fb, 40
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fh = add i32 %i.fb, 9
  %i.fi = and i32 %i.fh, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !47
  %i.fm = add i32 %i.fl, %i.fg                    ; 2 uses
  %i.fn = and i32 %i.fb, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fo
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !47
  %i.fq = add i32 %i.fb, 1                        ; 3 uses
  %i.fr = and i32 %i.fm, 1023
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv113
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !13
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next114, 3
  br i1 %exitcond116.not, label %bb.p, label %bb.o, !llvm.loop !86

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 4096
  br i1 %exitcond120.not, label %bb.q, label %.preheader, !llvm.loop !87

bb.q:                                             ; preds = %bb.p
  store i32 %i.fq, ptr %i.q, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr %i.a, ptr %i.fv, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.082 = phi i32 [ 0, %bb.q ], [ -12, %bb.a ]
  ret i32 %.082
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #5

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare i32 @ff_add_format(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!15 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!16 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!19 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!20 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!21 = !{!"AVFilterContext", !14, i64 0, !15, i64 8, !12, i64 16, !16, i64 24, !18, i64 32, !6, i64 40, !16, i64 48, !18, i64 56, !6, i64 64, !11, i64 72, !19, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !20, i64 112, !6, i64 120}
!22 = !{!21, !11, i64 72}
!23 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!24 = !{!"NoiseContext", !14, i64 0, !6, i64 8, !5, i64 12, !5, i64 28, !6, i64 44, !23, i64 48, !5, i64 64, !11, i64 459968, !11, i64 459976}
!25 = !{!"AVLFG", !5, i64 0, !6, i64 256}
!26 = !{!"FilterParams", !6, i64 0, !6, i64 4, !25, i64 8, !6, i64 268, !12, i64 272, !5, i64 280, !5, i64 98584, !6, i64 114968}
!27 = !{!26, !6, i64 268}
!28 = !{!26, !6, i64 0}
end_hunk_0
