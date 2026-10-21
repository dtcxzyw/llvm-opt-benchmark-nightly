Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsd?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_init_dsd_data.init_static_once = internal global i32 0, align 4
@ctables_lsbf = internal unnamed_addr global [6 x [256 x double]] zeroinitializer, align 16
@ctables_msbf = internal unnamed_addr global [6 x [256 x double]] zeroinitializer, align 16
@ff_reverse = external local_unnamed_addr constant [256 x i8], align 16
@htaps = internal unnamed_addr constant [48 x double] [double f0x3FB9794FCBFF93C7, double f0x3FB87B1B489280D3, double f0x3FB6940B3FB4DD9C, double f0x3FB3EC5FA5D4E3B7, double f0x3FB0BAB25981128A, double f0x3FAA7BDE6289C8E0, double f0x3FA36D4215C3F638, double f0x3F9981CD05B58654, double f0x3F8B65A64031B5D2, double f0x3F6FCF550FC44E0D, double f0xBF6AE885B7FD6A71, double f0xBF808C60D34183E4, double f0xBF85DB6BB684D9C9, double f0xBF8755E158D70C68, double f0xBF85E01F9A20B962, double f0xBF8272BC8DC00BCA, double f0xBF7BF894157B0209, double f0xBF72937C45825E74, double f0xBF63DDAB4458598A, double f0xBF46AEC05B3F9E51, double f0x3F42AE2558A63A87, double f0x3F562E687D3ACE02, double f0x3F5C13D135ACE606, double f0x3F5C8AAC8D086147, double f0x3F5952B921F99E85, double f0x3F5419230ADC4891, double f0x3F4C85B71020238E, double f0x3F41A27192F28CBD, double f0x3F31763A56F9380E, double f0x3F125B9CDE45ADA0, double f0xBF0BADE67379686E, double f0xBF1DE69BF26E361F, double f0xBF211A2B8A35FAB1, double f0xBF1F31C1631F315D, double f0xBF18A1B6F82FD509, double f0xBF113E2CFB496C17, double f0xBF055D46EDCC6237, double f0xBEF6CC001BAF0599, double f0xBEE337613AE9FAB4, double f0xBEC0EC7671AB36FC, double f0x3EB4F783B617B27D, double f0x3EC22CDB49A5F4D6, double f0x3EC031C315B271DB, double f0x3EB622C80263D795, double f0x3EA8DD2CFA0D855A, double f0x3E96F910B33A3136, double f0x3E80B2FA3FEF6BA5, double f0x3E60CE7202E7A375], align 16

; Function Attrs: cold nounwind optsize uwtable
define void @ff_init_dsd_data() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @ff_init_dsd_data.init_static_once, ptr noundef nonnull @dsd_ctables_tableinit) #7 ; 0 uses
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dsd_ctables_tableinit() #2 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv37 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next38, %bb.d ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = trunc nuw nsw i64 %indvars.iv37 to i32
  br label %vector.ph

.preheader:                                       ; preds = %middle.block
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @ctables_msbf, i64 %indvars.iv37
  %i.c = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %indvars.iv37
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %i.e = zext i8 %i.d to i64
  %invariant.gep24 = getelementptr inbounds nuw [8 x i8], ptr @ctables_lsbf, i64 %i.e
  br label %bb.c

vector.ph:                                        ; preds = %bb.b, %middle.block
  %indvars.iv29 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next30, %middle.block ] ; 3 uses
  %invariant.gep41 = getelementptr inbounds nuw [8 x i8], ptr @htaps, i64 %indvars.iv29 ; 2 uses
  %i.f = trunc i64 %indvars.iv29 to i32
  %i.g = sub i32 7, %i.f
  %i.h = lshr i32 %i.b, %i.g
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = and i32 %i.i, 2
  %i.k = add nsw i32 %i.j, -1
  %i.l = sitofp nsz i32 %i.k to double
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.m = shl nuw nsw i64 %index, 6
  %i.n = shl i64 %index, 6
  %i.o = getelementptr inbounds nuw i8, ptr %invariant.gep41, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %invariant.gep41, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load double, ptr %i.o, align 8, !tbaa !11
  %i.s = load double, ptr %i.q, align 8, !tbaa !11
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.v, align 16, !tbaa !11
  %i.w = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.u, <2 x double> %wide.load)
  store <2 x double> %i.w, ptr %i.v, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, 6
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 8
  br i1 %exitcond32.not, label %.preheader, label %vector.ph, !llvm.loop !14

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv33 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next34, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv33
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %i.aa = sub nuw nsw i64 5, %indvars.iv33        ; 2 uses
  %gep = getelementptr inbounds nuw [2048 x i8], ptr %invariant.gep, i64 %i.aa
  store double %i.z, ptr %gep, align 8, !tbaa !11
  %gep25 = getelementptr inbounds nuw [2048 x i8], ptr %invariant.gep24, i64 %i.aa
  store double %i.z, ptr %gep25, align 8, !tbaa !11
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 6
  br i1 %exitcond36.not, label %bb.d, label %bb.c, !llvm.loop !15

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 256
  br i1 %exitcond40.not, label %bb.e, label %bb.b, !llvm.loop !16

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_dsd2pcm_translate(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %2, 0                       ; 6 uses
  %i.b = select i1 %.not, ptr @ctables_msbf, ptr @ctables_lsbf ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %.not3639 = icmp eq i64 %1, 0
  br i1 %.not3639, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %7 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ctables_msbf, i64 2048), ptr getelementptr inbounds nuw (i8, ptr @ctables_lsbf, i64 2048) ; 2 uses
  %8 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ctables_msbf, i64 4096), ptr getelementptr inbounds nuw (i8, ptr @ctables_lsbf, i64 4096) ; 2 uses
  %9 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ctables_msbf, i64 6144), ptr getelementptr inbounds nuw (i8, ptr @ctables_lsbf, i64 6144) ; 2 uses
  %10 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ctables_msbf, i64 8192), ptr getelementptr inbounds nuw (i8, ptr @ctables_lsbf, i64 8192) ; 2 uses
  %11 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ctables_msbf, i64 10240), ptr getelementptr inbounds nuw (i8, ptr @ctables_lsbf, i64 10240) ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.in = phi i64 [ %i.dm, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.03142 = phi ptr [ %i.dn, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.03441 = phi i32 [ %i.dr, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 14 uses
  %.03540 = phi ptr [ %i.dp, %.lr.ph ], [ %5, %.lr.ph.preheader ] ; 2 uses
  %i.e = load i8, ptr %.03142, align 1, !tbaa !9
  %i.f = zext i32 %.03441 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 %i.e, ptr %i.g, align 1, !tbaa !9
  %i.h = add i32 %.03441, 10
  %i.i = and i32 %i.h, 15
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9     ; 2 uses
  store i8 %i.o, ptr %i.k, align 1, !tbaa !9
  %i.p = add nuw i32 %.03441, 5
  %i.q = and i32 %.03441, 15
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = and i32 %i.p, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11
  %i.ab = zext i8 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = fadd nsz double %i.aa, %i.ad
  %i.af = add i32 %.03441, 15
  %i.ag = and i32 %i.af, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = add i32 %.03441, 6
  %i.al = and i32 %i.ak, 15
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = fadd nsz double %i.ar, %i.au
  %i.aw = fadd nsz double %i.ae, %i.av
  %i.ax = add i32 %.03441, 14
  %i.ay = and i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = add i32 %.03441, 7
  %i.bd = and i32 %i.bc, 15
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bb to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = zext i8 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fadd nsz double %i.bj, %i.bm
  %i.bo = fadd nsz double %i.aw, %i.bn
  %i.bp = add i32 %.03441, 13
  %i.bq = and i32 %i.bp, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = and i32 %.03441, 15
  %i.bv = xor i32 %i.bu, 8
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = zext i8 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = zext i8 %i.by to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = fadd nsz double %i.cb, %i.ce
  %i.cg = fadd nsz double %i.bo, %i.cf
  %i.ch = add i32 %.03441, 12
  %i.ci = and i32 %i.ch, 15
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = add i32 %.03441, 9
  %i.cn = and i32 %i.cm, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = zext i8 %i.cl to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = zext i8 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !11
  %i.cx = fadd nsz double %i.ct, %i.cw
  %i.cy = fadd nsz double %i.cg, %i.cx
  %i.cz = add i32 %.03441, 11
  %i.da = and i32 %i.cz, 15
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11
  %i.dh = zext i8 %i.o to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !11
  %i.dk = fadd nsz double %i.dg, %i.dj
  %i.dl = fadd nsz double %i.cy, %i.dk
  %i.dm = add i64 %.in, -1                        ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.03142, i64 %4
  %i.do = fptrunc nsz double %i.dl to float
  store float %i.do, ptr %.03540, align 4, !tbaa !23
  %i.dp = getelementptr inbounds [4 x i8], ptr %.03540, i64 %6
  %i.dq = add nuw i32 %.03441, 1
  %i.dr = and i32 %i.dq, 15                       ; 2 uses
  %.not36 = icmp eq i64 %i.dm, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.034.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.dr, %.lr.ph ]
  store i32 %.034.lcssa, ptr %i.c, align 4, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12, !17, !18}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !12}
!20 = !{!"DSDContext", !5, i64 0, !6, i64 16}
!21 = !{!20, !6, i64 16}
!22 = !{!"float", !5, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
