inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@decode_cce_fixed:bb.a
  %i.hk = shl i32 %i.hi, %i.hj
  %i.hl = lshr i32 %i.hk, 25
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.hm ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !60
  %i.hp = sext i16 %i.ho to i32                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !60 ; 2 uses
  %i.hs = sext i16 %i.hr to i32                   ; 3 uses
  %i.ht = icmp slt i16 %i.hr, 0
  br i1 %i.ht, label %bb.o, label %get_vlc2.exit.us.us

bb.o:                                             ; preds = %bb.n
  %i.hu = add i32 %i.hb, 7
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %i.hu) ; 4 uses
  %i.hw = lshr i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !60
  %i.ia = tail call i32 @llvm.bswap.i32(i32 %i.hz)
  %i.ib = and i32 %i.hv, 7
  %i.ic = shl i32 %i.ia, %i.ib
  %i.id = add nsw i32 %i.hs, 32
  %i.ie = lshr i32 %i.ic, %i.id
  %i.if = add i32 %i.ie, %i.hp
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.ig ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !60
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !60 ; 2 uses
  %i.im = sext i16 %i.il to i32                   ; 2 uses
  %i.in = icmp slt i16 %i.il, 0
  br i1 %i.in, label %bb.p, label %get_vlc2.exit.us.us

bb.p:                                             ; preds = %bb.o
  %i.io = sub i32 %i.hv, %i.hs
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %i.io) ; 3 uses
  %i.iq = lshr i32 %i.ip, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !60
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.ip, 7
  %i.iw = shl i32 %i.iu, %i.iv
  %i.ix = add nsw i32 %i.im, 32
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = add i32 %i.iy, %i.ij
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.ja ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !60
  %i.jd = sext i16 %i.jc to i32
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !60
  %i.jg = sext i16 %i.jf to i32
  br label %get_vlc2.exit.us.us

get_vlc2.exit.us.us:                              ; preds = %bb.p, %bb.o, %bb.n
  %.167.i.us.us = phi i32 [ %i.hb, %bb.n ], [ %i.ip, %bb.p ], [ %i.hv, %bb.o ]
  %.163.i.us.us = phi i32 [ %i.hp, %bb.n ], [ %i.jd, %bb.p ], [ %i.ij, %bb.o ]
  %.1.i.us.us = phi i32 [ %i.hs, %bb.n ], [ %i.jg, %bb.p ], [ %i.im, %bb.o ]
  %i.jh = add i32 %.1.i.us.us, %.167.i.us.us
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %i.jh)
  store i32 %i.ji, ptr %i.b, align 8, !tbaa !309
  %i.jj = add nsw i32 %.163.i.us.us, -60          ; 2 uses
  %.not117.us.us = icmp eq i32 %i.jj, 0
  br i1 %.not117.us.us, label %.thread129.us.us, label %bb.q

bb.q:                                             ; preds = %get_vlc2.exit.us.us
  %i.jk = add nsw i32 %i.jj, %.285144.us.us       ; 3 uses
  %i.jl = shl i32 %i.jk, 11
  %i.jm = and i32 %i.jl, 2048
  %i.jn = sub nsw i32 1024, %i.jm
  %.081.us.us = ashr i32 %i.jk, %.lobit133
  %.0.us.us = select i1 %.not118, i32 %i.jn, i32 1024
  %i.jo = shl i32 %.081.us.us, %i.df
  %i.jp = sub i32 %.0.us.us, %i.jo                ; 2 uses
  %i.jq = add i32 %i.jp, 1271
  %i.jr = icmp ult i32 %i.jq, 2543
  br i1 %i.jr, label %.thread129.us.us, label %.critedge

.thread129.us.us:                                 ; preds = %bb.q, %get_vlc2.exit.us.us
  %.588.us.us = phi i32 [ %.285144.us.us, %get_vlc2.exit.us.us ], [ %i.jk, %bb.q ]
  %.5.us.us = phi i32 [ %.2145.us.us, %get_vlc2.exit.us.us ], [ %i.jp, %bb.q ] ; 2 uses
  %i.js = sitofp nsz i32 %.5.us.us to float
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %indvars.iv168
  store float %i.js, ptr %i.jt, align 4, !tbaa !60
  %.pre184 = load i8, ptr %i.ca, align 16, !tbaa !130
  br label %bb.r

bb.r:                                             ; preds = %.thread129.us.us, %.lr.ph.us
  %i.ju = phi i8 [ %.pre184, %.thread129.us.us ], [ %i.gy, %.lr.ph.us ] ; 4 uses
  %.689.us.us = phi i32 [ %.588.us.us, %.thread129.us.us ], [ %.285144.us.us, %.lr.ph.us ] ; 2 uses
  %.6.us.us = phi i32 [ %.5.us.us, %.thread129.us.us ], [ %.2145.us.us, %.lr.ph.us ] ; 2 uses
  %i.jv = add nuw nsw i32 %.0108142.us.us, 1      ; 2 uses
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.jw = zext i8 %i.ju to i32
  %i.jx = icmp samesign ult i32 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !342

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.jy = sitofp nsz i32 %.082 to float
  %.pre180 = load i8, ptr %i.ca, align 16, !tbaa !130 ; 2 uses
  br label %.preheader

bb.s:                                             ; preds = %bb.m
  %i.jz = sitofp nsz i32 %.082 to float
  %i.ka = getelementptr inbounds nuw [480 x i8], ptr %i.dm, i64 %indvars.iv171
  store float %i.jz, ptr %i.ka, align 4, !tbaa !60
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge.split
  %i.kb = phi i32 [ %i.gl, %.preheader.lr.ph.split ], [ %i.ko, %._crit_edge.split ]
  %i.kc = phi i8 [ %.pre180, %.preheader.lr.ph.split ], [ %i.kp, %._crit_edge.split ] ; 2 uses
  %i.kd = phi i8 [ %.pre180, %.preheader.lr.ph.split ], [ %i.kq, %._crit_edge.split ]
  %.091151 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.192.lcssa, %._crit_edge.split ] ; 2 uses
  %.0107150 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.kr, %._crit_edge.split ]
  %.not = icmp eq i8 %i.kd, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ke = sext i32 %.091151 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.kf = phi i8 [ %i.kc, %.lr.ph.preheader ], [ %i.kj, %bb.t ]
  %indvars.iv165 = phi i64 [ %i.ke, %.lr.ph.preheader ], [ %indvars.iv.next166, %bb.t ] ; 3 uses
  %.0108142 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.kk, %bb.t ]
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv165
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !66
  %.not115 = icmp eq i32 %i.kh, 0
  br i1 %.not115, label %bb.t, label %.thread129

.thread129:                                       ; preds = %.lr.ph
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %indvars.iv165
  store float %i.jy, ptr %i.ki, align 4, !tbaa !60
  %.pre181 = load i8, ptr %i.ca, align 16, !tbaa !130
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %.thread129
  %i.kj = phi i8 [ %i.kf, %.lr.ph ], [ %.pre181, %.thread129 ] ; 4 uses
  %i.kk = add nuw nsw i32 %.0108142, 1            ; 2 uses
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.kl = zext i8 %i.kj to i32
  %i.km = icmp samesign ult i32 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph, label %._crit_edge.split.loopexit, !llvm.loop !342

._crit_edge.split.loopexit:                       ; preds = %bb.t
  %i.kn = trunc nsw i64 %indvars.iv.next166 to i32
  %.pre182 = load i32, ptr %i.dk, align 16, !tbaa !340
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %.preheader
  %i.ko = phi i32 [ %i.kb, %.preheader ], [ %.pre182, %._crit_edge.split.loopexit ] ; 2 uses
  %i.kp = phi i8 [ %i.kc, %.preheader ], [ %i.kj, %._crit_edge.split.loopexit ]
  %i.kq = phi i8 [ 0, %.preheader ], [ %i.kj, %._crit_edge.split.loopexit ]
  %.192.lcssa = phi i32 [ %.091151, %.preheader ], [ %i.kn, %._crit_edge.split.loopexit ]
  %i.kr = add nuw nsw i32 %.0107150, 1            ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %i.ko
  br i1 %i.ks, label %.preheader, label %.loopexit, !llvm.loop !341

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader134, %bb.s
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count175
  br i1 %exitcond176.not, label %.critedge, label %bb.g, !llvm.loop !343

.critedge:                                        ; preds = %.loopexit, %bb.l, %bb.q, %.preheader135, %bb.f
  %.10 = phi i32 [ %i.di, %bb.f ], [ 0, %.preheader135 ], [ -34, %bb.q ], [ 0, %.loopexit ], [ -34, %bb.l ]
  ret i32 %.10
}

declare hidden i32 @ff_aac_sbr_ctx_alloc_init_fixed(ptr noundef, ptr noundef, i32 noundef) #2

declare hidden i32 @ff_aac_sbr_decode_extension_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare hidden void @ff_aac_sbr_apply_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare hidden void @ff_aac_sbr_ctx_close_fixed(ptr noundef) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @ff_aac_decode_ics(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare void @ff_cbrt_tableinit_fixed() local_unnamed_addr #2

declare void @ff_kbd_window_init_fixed(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @ff_aac_sbr_init_fixed() local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_sine_windows_fixed() unnamed_addr #11 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %0 = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %1 = fadd nnan nsz <4 x double> %0, splat (double 5.000000e-01)
  %2 = fmul nnan nsz <4 x double> %1, splat (double f0x3F90C152382D7365)
  %3 = fptrunc nsz <4 x double> %2 to <4 x float>
  %4 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %3)
  %5 = fmul nsz <4 x float> %4, splat (float f0x4F000000)
  %6 = fpext nsz <4 x float> %5 to <4 x double>
  %7 = fadd nsz <4 x double> %6, splat (double 5.000000e-01)
  %8 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %7)
  %9 = fptosi <4 x double> %8 to <4 x i32>
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @sine_96_fixed, i64 %index
  store <4 x i32> %9, ptr %i.a, align 16, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = icmp eq i64 %index.next, 96
  br i1 %i.b, label %vector.body30, label %vector.body, !llvm.loop !344

vector.body30:                                    ; preds = %vector.body, %vector.body30
  %index31 = phi i64 [ %index.next33, %vector.body30 ], [ 0, %vector.body ] ; 2 uses
  %vec.ind32 = phi <4 x i32> [ %vec.ind.next34, %vector.body30 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 2 uses
  %10 = uitofp nneg <4 x i32> %vec.ind32 to <4 x double>
  %11 = fadd nnan nsz <4 x double> %10, splat (double 5.000000e-01)
  %12 = fmul nnan nsz <4 x double> %11, splat (double f0x3F8ACEE9F37BEBD5)
  %13 = fptrunc nsz <4 x double> %12 to <4 x float>
  %14 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %13)
  %15 = fmul nsz <4 x float> %14, splat (float f0x4F000000)
  %16 = fpext nsz <4 x float> %15 to <4 x double>
  %17 = fadd nsz <4 x double> %16, splat (double 5.000000e-01)
  %18 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %17)
  %19 = fptosi <4 x double> %18 to <4 x i32>
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @sine_120_fixed, i64 %index31
  store <4 x i32> %19, ptr %i.c, align 16, !tbaa !66
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %vec.ind.next34 = add <4 x i32> %vec.ind32, splat (i32 4)
  %i.d = icmp eq i64 %index.next33, 120
  br i1 %i.d, label %vector.body37, label %vector.body30, !llvm.loop !345

vector.body37:                                    ; preds = %vector.body30, %vector.body37
  %index38 = phi i64 [ %index.next40, %vector.body37 ], [ 0, %vector.body30 ] ; 2 uses
  %vec.ind39 = phi <4 x i32> [ %vec.ind.next41, %vector.body37 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body30 ] ; 2 uses
  %20 = uitofp nneg <4 x i32> %vec.ind39 to <4 x double>
  %21 = fadd nnan nsz <4 x double> %20, splat (double 5.000000e-01)
  %22 = fmul nnan nsz <4 x double> %21, splat (double f0x3F8921FB54442D18)
  %23 = fptrunc nsz <4 x double> %22 to <4 x float>
  %24 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %23)
  %25 = fmul nsz <4 x float> %24, splat (float f0x4F000000)
  %26 = fpext nsz <4 x float> %25 to <4 x double>
  %27 = fadd nsz <4 x double> %26, splat (double 5.000000e-01)
  %28 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %27)
  %29 = fptosi <4 x double> %28 to <4 x i32>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @sine_128_fixed, i64 %index38
  store <4 x i32> %29, ptr %i.e, align 16, !tbaa !66
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %vec.ind.next41 = add <4 x i32> %vec.ind39, splat (i32 4)
  %i.f = icmp eq i64 %index.next40, 128
  br i1 %i.f, label %vector.body44, label %vector.body37, !llvm.loop !346

vector.body44:                                    ; preds = %vector.body37, %vector.body44
  %index45 = phi i64 [ %index.next47, %vector.body44 ], [ 0, %vector.body37 ] ; 2 uses
  %vec.ind46 = phi <4 x i32> [ %vec.ind.next48, %vector.body44 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body37 ] ; 2 uses
  %30 = uitofp nneg <4 x i32> %vec.ind46 to <4 x double>
  %31 = fadd nnan nsz <4 x double> %30, splat (double 5.000000e-01)
  %32 = fmul nnan nsz <4 x double> %31, splat (double f0x3F6921FB54442D18)
  %33 = fptrunc nsz <4 x double> %32 to <4 x float>
  %34 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %33)
  %35 = fmul nsz <4 x float> %34, splat (float f0x4F000000)
  %36 = fpext nsz <4 x float> %35 to <4 x double>
  %37 = fadd nsz <4 x double> %36, splat (double 5.000000e-01)
  %38 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %37)
  %39 = fptosi <4 x double> %38 to <4 x i32>
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @sine_512_fixed, i64 %index45
  store <4 x i32> %39, ptr %i.g, align 16, !tbaa !66
  %index.next47 = add nuw i64 %index45, 4         ; 2 uses
  %vec.ind.next48 = add <4 x i32> %vec.ind46, splat (i32 4)
  %i.h = icmp eq i64 %index.next47, 512
  br i1 %i.h, label %vector.body51, label %vector.body44, !llvm.loop !347

vector.body51:                                    ; preds = %vector.body44, %vector.body51
  %index52 = phi i64 [ %index.next54, %vector.body51 ], [ 0, %vector.body44 ] ; 2 uses
  %vec.ind53 = phi <4 x i32> [ %vec.ind.next55, %vector.body51 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body44 ] ; 2 uses
  %40 = uitofp nneg <4 x i32> %vec.ind53 to <4 x double>
  %41 = fadd nnan nsz <4 x double> %40, splat (double 5.000000e-01)
  %42 = fmul nnan nsz <4 x double> %41, splat (double f0x3F60C152382D7365)
  %43 = fptrunc nsz <4 x double> %42 to <4 x float>
  %44 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %43)
  %45 = fmul nsz <4 x float> %44, splat (float f0x4F000000)
  %46 = fpext nsz <4 x float> %45 to <4 x double>
  %47 = fadd nsz <4 x double> %46, splat (double 5.000000e-01)
  %48 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %47)
  %49 = fptosi <4 x double> %48 to <4 x i32>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @sine_768_fixed, i64 %index52
  store <4 x i32> %49, ptr %i.i, align 16, !tbaa !66
  %index.next54 = add nuw i64 %index52, 4         ; 2 uses
  %vec.ind.next55 = add <4 x i32> %vec.ind53, splat (i32 4)
  %i.j = icmp eq i64 %index.next54, 768
  br i1 %i.j, label %vector.body58, label %vector.body51, !llvm.loop !348

vector.body58:                                    ; preds = %vector.body51, %vector.body58
  %index59 = phi i64 [ %index.next61, %vector.body58 ], [ 0, %vector.body51 ] ; 2 uses
  %vec.ind60 = phi <4 x i32> [ %vec.ind.next62, %vector.body58 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body51 ] ; 2 uses
  %50 = uitofp nneg <4 x i32> %vec.ind60 to <4 x double>
  %51 = fadd nnan nsz <4 x double> %50, splat (double 5.000000e-01)
  %52 = fmul nnan nsz <4 x double> %51, splat (double f0x3F5ACEE9F37BEBD5)
  %53 = fptrunc nsz <4 x double> %52 to <4 x float>
  %54 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %53)
  %55 = fmul nsz <4 x float> %54, splat (float f0x4F000000)
  %56 = fpext nsz <4 x float> %55 to <4 x double>
  %57 = fadd nsz <4 x double> %56, splat (double 5.000000e-01)
  %58 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %57)
  %59 = fptosi <4 x double> %58 to <4 x i32>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @sine_960_fixed, i64 %index59
  store <4 x i32> %59, ptr %i.k, align 16, !tbaa !66
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %vec.ind.next62 = add <4 x i32> %vec.ind60, splat (i32 4)
  %i.l = icmp eq i64 %index.next61, 960
  br i1 %i.l, label %vector.body65, label %vector.body58, !llvm.loop !349

vector.body65:                                    ; preds = %vector.body58, %vector.body65
  %index66 = phi i64 [ %index.next68, %vector.body65 ], [ 0, %vector.body58 ] ; 2 uses
  %vec.ind67 = phi <4 x i32> [ %vec.ind.next69, %vector.body65 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body58 ] ; 2 uses
  %60 = uitofp nneg <4 x i32> %vec.ind67 to <4 x double>
  %61 = fadd nnan nsz <4 x double> %60, splat (double 5.000000e-01)
  %62 = fmul nnan nsz <4 x double> %61, splat (double f0x3F5921FB54442D18)
  %63 = fptrunc nsz <4 x double> %62 to <4 x float>
  %64 = tail call nsz <4 x float> @llvm.sin.v4f32(<4 x float> %63)
  %65 = fmul nsz <4 x float> %64, splat (float f0x4F000000)
  %66 = fpext nsz <4 x float> %65 to <4 x double>
  %67 = fadd nsz <4 x double> %66, splat (double 5.000000e-01)
  %68 = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %67)
  %69 = fptosi <4 x double> %68 to <4 x i32>
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @sine_1024_fixed, i64 %index66
  store <4 x i32> %69, ptr %i.m, align 16, !tbaa !66
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %vec.ind.next69 = add <4 x i32> %vec.ind67, splat (i32 4)
  %i.n = icmp eq i64 %index.next68, 1024
  br i1 %i.n, label %sine_window_init_fixed.exit28, label %vector.body65, !llvm.loop !350

sine_window_init_fixed.exit28:                    ; preds = %vector.body65
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sin.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.floor.v4f64(<4 x double>) #12

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !6, i64 36440}
!30 = !{!"AACDecContext", !11, i64 0, !31, i64 8, !32, i64 16, !33, i64 136, !34, i64 184, !6, i64 192, !35, i64 196, !7, i64 672, !7, i64 2720, !6, i64 4768, !6, i64 4772, !7, i64 4784, !7, i64 8880, !36, i64 9392, !36, i64 9400, !36, i64 9408, !36, i64 9416, !36, i64 9424, !36, i64 9432, !36, i64 9440, !36, i64 9448, !36, i64 9456, !12, i64 9464, !12, i64 9472, !12, i64 9480, !12, i64 9488, !12, i64 9496, !12, i64 9504, !12, i64 9512, !12, i64 9520, !12, i64 9528, !7, i64 9536, !6, i64 9544, !7, i64 9552, !6, i64 10064, !6, i64 10068, !6, i64 10072, !6, i64 10076, !6, i64 10080, !7, i64 10088, !6, i64 36424, !6, i64 36428, !6, i64 36432, !6, i64 36436, !6, i64 36440}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"AACDecDSP", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!33 = !{!"AACDecProc", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!34 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!35 = !{!"DynamicRangeControl", !6, i64 0, !7, i64 4, !7, i64 72, !7, i64 140, !6, i64 396, !6, i64 400, !7, i64 404, !6, i64 472}
!36 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!37 = !{!10, !6, i64 348}
!38 = !{!32, !12, i64 0}
!39 = !{!32, !12, i64 8}
!40 = !{!32, !12, i64 16}
!41 = !{!32, !12, i64 24}
!42 = !{!32, !12, i64 32}
!43 = !{!32, !12, i64 40}
!44 = !{!32, !12, i64 48}
!45 = !{!32, !12, i64 72}
!46 = !{!32, !12, i64 80}
!47 = !{!32, !12, i64 88}
!48 = !{!32, !12, i64 96}
!49 = !{!32, !12, i64 104}
!50 = !{!32, !12, i64 56}
!51 = !{!32, !12, i64 64}
!52 = !{!32, !12, i64 112}
!53 = !{!33, !12, i64 0}
!54 = !{!33, !12, i64 8}
!55 = !{!33, !12, i64 16}
!56 = !{!33, !12, i64 24}
!57 = !{!33, !12, i64 32}
!58 = !{!33, !12, i64 40}
!59 = !{!10, !6, i64 64}
!60 = !{!7, !7, i64 0}
!61 = !{!62, !6, i64 16}
!62 = !{!"IndividualChannelStream", !7, i64 0, !7, i64 4, !7, i64 12, !6, i64 16, !6, i64 20, !7, i64 24, !63, i64 32, !19, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !7, i64 112, !7, i64 153}
!63 = !{!"LongTermPrediction", !7, i64 0, !64, i64 2, !7, i64 4, !7, i64 8}
!64 = !{!"short", !7, i64 0}
!65 = !{!62, !7, i64 0}
!66 = !{!6, !6, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !68}
!70 = !{!62, !19, i64 80}
!71 = !{!72, !7, i64 4}
!72 = !{!"ChannelElement", !6, i64 0, !7, i64 4, !7, i64 5, !7, i64 144, !73, i64 80848, !74, i64 88640}
!73 = !{!"ChannelCoupling", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 40, !7, i64 72, !7, i64 104}
!74 = !{!"AACUsacStereo", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !75, i64 136, !7, i64 5744, !7, i64 9840, !7, i64 13936, !7, i64 18032, !7, i64 22128, !7, i64 26224, !7, i64 30320}
!75 = !{!"AACUsacMPSData", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 44, !7, i64 1924, !76, i64 4948, !7, i64 4952, !7, i64 4988, !7, i64 5024, !7, i64 5060, !76, i64 5312, !76, i64 5313, !7, i64 5314, !7, i64 5316, !6, i64 5348, !7, i64 5352}
!76 = !{!"_Bool", !7, i64 0}
!77 = distinct !{!77, !68}
!78 = !{!79, !12, i64 48}
!79 = !{!"AVFixedDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!80 = !{!64, !64, i64 0}
!81 = distinct !{!81, !68}
!82 = distinct !{!82, !68}
!83 = distinct !{!83, !68}
!84 = distinct !{!84, !68, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !68, !85}
!88 = distinct !{!88, !68}
!89 = distinct !{!89, !68}
!90 = !{!30, !31, i64 8}
!91 = distinct !{!91, !68}
!92 = !{!62, !6, i64 96}
!93 = !{!62, !6, i64 92}
!94 = !{!62, !6, i64 88}
!95 = distinct !{!95, !68}
!96 = distinct !{!96, !68}
!97 = distinct !{!97, !68, !85, !86}
!98 = distinct !{!98, !68, !85}
!99 = distinct !{!99, !68}
!100 = distinct !{!100, !68, !85, !86}
!101 = distinct !{!101, !68, !86, !85}
!102 = distinct !{!102, !68}
!103 = distinct !{!103, !68}
!104 = distinct !{!104, !68}
!105 = !{!106, !19, i64 80}
!106 = !{!"SingleChannelElement", !62, i64 0, !107, i64 168, !112, i64 992, !7, i64 3972, !7, i64 4484, !7, i64 4996, !7, i64 5520, !7, i64 9616, !7, i64 13712, !7, i64 19856, !7, i64 28048, !7, i64 40336, !7, i64 40344}
!107 = !{!"AACUsacElemData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !108, i64 20, !109, i64 28, !110, i64 36, !111, i64 296}
!108 = !{!"", !7, i64 0, !7, i64 0, !7, i64 1, !7, i64 1, !7, i64 1, !6, i64 4}
!109 = !{!"", !6, i64 0, !7, i64 4, !7, i64 4}
!110 = !{!"", !7, i64 0, !7, i64 4}
!111 = !{!"AACArithState", !7, i64 0, !6, i64 516, !7, i64 520, !64, i64 524}
!112 = !{!"TemporalNoiseShaping", !6, i64 0, !7, i64 4, !7, i64 36, !7, i64 164, !7, i64 292, !7, i64 420}
!113 = !{!63, !64, i64 2}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!118}
!118 = distinct !{!118, !116}
!119 = !{!120}
!120 = distinct !{!120, !116}
!121 = !{!115, !118}
!122 = distinct !{!122, !68, !85, !86}
!123 = distinct !{!123, !68, !85}
!124 = !{!79, !12, i64 16}
!125 = distinct !{null}
!126 = !{!79, !12, i64 24}
!127 = !{!30, !12, i64 9528}
!128 = !{!30, !36, i64 9456}
!129 = !{!106, !6, i64 992}
!130 = !{!106, !7, i64 0}
!131 = distinct !{!131, !68}
!132 = distinct !{!132, !68}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = !{!139}
!139 = distinct !{!139, !135}
!140 = !{!134, !137}
!141 = distinct !{!141, !68, !85, !86}
!142 = distinct !{!142, !68, !85}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = !{!147}
!147 = distinct !{!147, !145}
!148 = !{!149}
!149 = distinct !{!149, !145}
!150 = !{!144, !147}
!151 = distinct !{!151, !68, !85, !86}
!152 = distinct !{!152, !68, !85}
!153 = !{!154}
!154 = distinct !{!154, !155}
!155 = distinct !{!155, !"LVerDomain"}
!156 = !{!157}
!157 = distinct !{!157, !155}
!158 = !{!159}
!159 = distinct !{!159, !155}
!160 = !{!154, !157}
!161 = distinct !{!161, !68, !85, !86}
!162 = distinct !{!162, !68, !85}
!163 = !{!106, !6, i64 104}
!164 = distinct !{!164, !68}
!165 = !{!166, !6, i64 4}
!166 = !{!"OutputConfiguration", !167, i64 0, !7, i64 52, !6, i64 820, !20, i64 824, !6, i64 848, !168, i64 856}
!167 = !{!"MPEG4AudioConfig", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!168 = !{!"AACUSACConfig", !7, i64 0, !64, i64 2, !64, i64 4, !7, i64 8, !6, i64 4616, !169, i64 4620}
!169 = !{!"", !7, i64 0, !7, i64 2, !7, i64 3842, !7, i64 3844, !6, i64 7684}
!170 = distinct !{!170, !68}
!171 = !{!106, !6, i64 100}
!172 = distinct !{!172, !68}
!173 = distinct !{!173, !68}
!174 = distinct !{!174, !68}
!175 = !{!106, !6, i64 108}
!176 = distinct !{!176, !68}
end_hunk_0
