Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcefieldparameters?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [95 x %struct.t_interaction_function] }
%struct.t_interaction_function = type { ptr, ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"atnr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ntypes=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"functype[%d]=%s, \00", align 1
@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray", align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"reppow\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fudgeQQ\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%8s %8s %8s %8s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dVdx\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dVdy\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"d2dV\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"grid[%3zd]={\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%8.1f\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%8.3f \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%8.3f\0A\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z11pr_ffparamsP8_IO_FILEiPKcPK14gmx_ffparams_tb(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z8pr_titleP8_IO_FILEiPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) ; 6 uses
  %i.b = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !31
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.c) #5 ; 0 uses
  %i.e = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.n) #5 ; 0 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = add nsw i32 %i.a, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  tail call void @_Z9pr_doubleP8_IO_FILEiPKcd(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.3, double noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !35
  tail call void @_Z7pr_realP8_IO_FILEiPKcf(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.4, float noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !36
  %.fr8.i = freeze i32 %i.ae                      ; 4 uses
  %.not.i = icmp eq i32 %.fr8.i, 0
  %i.af = sitofp i32 %.fr8.i to double
  %i.ag = fdiv double 3.600000e+02, %i.af
  %i.ah = fptrunc double %i.ag to float
  %i.ai = mul i32 %.fr8.i, %.fr8.i
  %i.aj = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef nonnull %i.ad, i32 noundef %i.a, ptr noundef nonnull @.str.5)
  br i1 %i.aj, label %bb.b, label %_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #5 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph5.i, label %_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit

.lr.ph5.i:                                        ; preds = %bb.b
  br i1 %.not.i, label %.lr.ph5.split.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph5.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 1)
  %wide.trip.count.i = zext i32 %umax.i to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.0433.us.i = phi i64 [ %i.cj, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 6 uses
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5 ; 0 uses
  %i.au = select i1 %4, i64 %.0433.us.i, i64 -1
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %i.au) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.0421.us.i = phi float [ -1.800000e+02, %.lr.ph.us.i ], [ %.1.us.i, %bb.e ] ; 3 uses
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !36
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ay = srem i32 %i.ax, %i.aw
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = fpext float %.0421.us.i to double
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, double noundef %i.ba) #5 ; 0 uses
  %i.bc = fadd float %.0421.us.i, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.i = phi float [ %i.bc, %bb.d ], [ %.0421.us.i, %bb.c ]
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.0433.us.i
  %i.bf = shl nuw nsw i64 %indvars.iv.i, 2        ; 4 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !42
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, double noundef %i.bj) #5 ; 0 uses
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.0433.us.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !42
  %i.br = fpext float %i.bq to double
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, double noundef %i.br) #5 ; 0 uses
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.0433.us.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bf
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !42
  %i.bz = fpext float %i.by to double
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, double noundef %i.bz) #5 ; 0 uses
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.0433.us.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bf
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !42
  %i.ch = fpext float %i.cg to double
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, double noundef %i.ch) #5 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !9

._crit_edge.us.i:                                 ; preds = %bb.e
  %fputc.us.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.cj = add nuw nsw i64 %.0433.us.i, 1          ; 2 uses
  %i.ck = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %i.cq = icmp slt i64 %i.cj, %i.cp
  br i1 %i.cq, label %.lr.ph.us.i, label %_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit, !llvm.loop !10

.lr.ph5.split.i:                                  ; preds = %.lr.ph5.i
  br i1 %4, label %.lr.ph5.split.split.us.i, label %.lr.ph5.split.split.i

.lr.ph5.split.split.us.i:                         ; preds = %.lr.ph5.split.i, %.lr.ph5.split.split.us.i
  %.0433.us6.i = phi i64 [ %i.ct, %.lr.ph5.split.split.us.i ], [ 0, %.lr.ph5.split.i ] ; 2 uses
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5 ; 0 uses
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %.0433.us6.i) #5 ; 0 uses
  %fputc.us7.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ct = add nuw nsw i64 %.0433.us6.i, 1         ; 2 uses
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 24
  %i.da = icmp slt i64 %i.ct, %i.cz
  br i1 %i.da, label %.lr.ph5.split.split.us.i, label %_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit, !llvm.loop !10

.lr.ph5.split.split.i:                            ; preds = %.lr.ph5.split.i, %.lr.ph5.split.split.i
  %.0433.i = phi i64 [ %i.dd, %.lr.ph5.split.split.i ], [ 0, %.lr.ph5.split.i ]
  %i.db = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5 ; 0 uses
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef -1) #5 ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.dd = add nuw nsw i64 %.0433.i, 1             ; 2 uses
  %i.de = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.df = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 24
  %i.dk = icmp slt i64 %i.dd, %i.dj
  br i1 %i.dk, label %.lr.ph5.split.split.i, label %_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit, !llvm.loop !10

_ZL7pr_cmapP8_IO_FILEiPKcPK10gmx_cmap_tb.exit:    ; preds = %._crit_edge.us.i, %.lr.ph5.split.split.i, %.lr.ph5.split.split.us.i, %._crit_edge, %bb.b
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.dl = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.x) ; 0 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  %i.dn = select i1 %4, i32 %i.dm, i32 -1
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !45
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !48
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.dn, ptr noundef %i.dt) #5 ; 0 uses
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !45
  %i.dy = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.dy, i64 %indvars.iv
  tail call void @_Z10pr_iparamsP8_IO_FILE19InteractionFunctionRK9t_iparams(ptr noundef %0, i32 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(48) %i.dz)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = shl i64 %i.ee, 30
  %i.eg = ashr i64 %i.ef, 32
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %bb.f, label %._crit_edge, !llvm.loop !11
}

declare noundef i32 @_Z8pr_titleP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare void @_Z10pr_iparamsP8_IO_FILE19InteractionFunctionRK9t_iparams(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare void @_Z9pr_doubleP8_IO_FILEiPKcd(ptr noundef, i32 noundef, ptr noundef, double noundef) local_unnamed_addr #1

declare void @_Z7pr_realP8_IO_FILEiPKcf(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !43}
!10 = distinct !{!10, !43}
!11 = distinct !{!11, !43}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseI19InteractionFunctionSaIS0_EE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !15, i64 0}
!17 = !{!"p1 _ZTS9t_iparams", !12, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !20, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!"p1 _ZTS14gmx_cmapdata_t", !12, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !27, i64 0}
!29 = !{!"_ZTS10gmx_cmap_t", !6, i64 0, !28, i64 8}
!30 = !{!"_ZTS14gmx_ffparams_t", !6, i64 0, !16, i64 8, !21, i64 32, !22, i64 56, !23, i64 64, !29, i64 72}
!31 = !{!30, !6, i64 0}
!32 = !{!13, !12, i64 8}
!33 = !{!13, !12, i64 0}
!34 = !{!30, !22, i64 56}
!35 = !{!30, !23, i64 64}
!36 = !{!29, !6, i64 0}
!37 = !{!25, !24, i64 8}
!38 = !{!25, !24, i64 0}
!39 = !{!"p1 float", !12, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!23, !23, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"_ZTS19InteractionFunction", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"p1 omnipotent char", !12, i64 0}
!47 = !{!"_ZTS22t_interaction_function", !46, i64 0, !46, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!48 = !{!47, !46, i64 0}
!49 = !{!18, !17, i64 0}
end_hunk_0
