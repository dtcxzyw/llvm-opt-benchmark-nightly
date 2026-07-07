inline.NumInlined: 38
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
  %i.he = call i32 @setrlimit(i32 noundef 1, ptr noundef nonnull %12) #16
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.ck, label %set_resource_limit_actual.exit68.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hh = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.hi = load i64, ptr %12, align 8, !tbaa !24
  %i.hj = load i64, ptr %i.hd, align 8, !tbaa !22
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hg, ptr noundef nonnull @.str.82, ptr noundef %i.hh, ptr noundef nonnull @.str.76, i64 noundef %i.hi, i64 noundef %i.hj) #15 ; 0 uses
  br label %set_resource_limit_actual.exit68.i.i

set_resource_limit_actual.exit68.i.i:             ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.cl

bb.cl:                                            ; preds = %set_resource_limit_actual.exit68.i.i, %bb.ci
  %i.hl = load i64, ptr @g_target_core_limit, align 8, !tbaa !15 ; 2 uses
  %.not57.i.i = icmp eq i64 %i.hl, -1
  br i1 %.not57.i.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.hm = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %9) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !22
  %i.hp = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.hl, i64 %i.ho) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !22
  store i64 %i.hp, ptr %10, align 8, !tbaa !24
  %i.hr = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %10) #16
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %bb.cn, label %set_resource_limit_actual.exit69.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hu = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.hv = load i64, ptr %10, align 8, !tbaa !24
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.82, ptr noundef %i.hu, ptr noundef nonnull @.str.77, i64 noundef %i.hv, i64 noundef %i.hw) #15 ; 0 uses
  br label %set_resource_limit_actual.exit69.i.i

set_resource_limit_actual.exit69.i.i:             ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.co

bb.co:                                            ; preds = %set_resource_limit_actual.exit69.i.i, %bb.cl
  %i.hy = load i64, ptr @g_target_file_count_limit, align 8, !tbaa !15 ; 2 uses
  %.not58.i.i = icmp eq i64 %i.hy, -1
  br i1 %.not58.i.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.hz = call i32 @getrlimit(i32 noundef 7, ptr noundef nonnull %7) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !22
  %i.ic = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.hy, i64 %i.ib) ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !22
  store i64 %i.ic, ptr %8, align 8, !tbaa !24
  %i.ie = call i32 @setrlimit(i32 noundef 7, ptr noundef nonnull %8) #16
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.cq, label %set_resource_limit_actual.exit70.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ih = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.ii = load i64, ptr %8, align 8, !tbaa !24
  %i.ij = load i64, ptr %i.id, align 8, !tbaa !22
  %i.ik = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ig, ptr noundef nonnull @.str.82, ptr noundef %i.ih, ptr noundef nonnull @.str.78, i64 noundef %i.ii, i64 noundef %i.ij) #15 ; 0 uses
  br label %set_resource_limit_actual.exit70.i.i

set_resource_limit_actual.exit70.i.i:             ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.cr

bb.cr:                                            ; preds = %set_resource_limit_actual.exit70.i.i, %bb.co
  %i.il = load i64, ptr @g_target_subprocess_count_limit, align 8, !tbaa !15 ; 2 uses
  %.not59.i.i = icmp eq i64 %i.il, -1
  br i1 %.not59.i.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.im = call i32 @getrlimit(i32 noundef 6, ptr noundef nonnull %5) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !22
  %i.ip = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.il, i64 %i.io) ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !22
  store i64 %i.ip, ptr %6, align 8, !tbaa !24
  %i.ir = call i32 @setrlimit(i32 noundef 6, ptr noundef nonnull %6) #16
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %bb.ct, label %set_resource_limit_actual.exit71.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.iu = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.iv = load i64, ptr %6, align 8, !tbaa !24
  %i.iw = load i64, ptr %i.iq, align 8, !tbaa !22
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.82, ptr noundef %i.iu, ptr noundef nonnull @.str.79, i64 noundef %i.iv, i64 noundef %i.iw) #15 ; 0 uses
  br label %set_resource_limit_actual.exit71.i.i

set_resource_limit_actual.exit71.i.i:             ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.cu

bb.cu:                                            ; preds = %set_resource_limit_actual.exit71.i.i, %bb.cr
  %i.iy = load ptr, ptr @g_target_exec_directory, align 8, !tbaa !8 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.iy, null
  br i1 %.not60.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.iz = call i32 @chdir(ptr noundef nonnull %i.iy) #16
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @perror(ptr noundef nonnull @.str.80) #17
  br label %execute.exit

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.jb = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.jc = call i32 @execvp(ptr noundef %i.jb, ptr noundef nonnull %i.dl) #16 ; 0 uses
  call void @perror(ptr noundef nonnull @.str.81) #17
  %i.jd = tail call ptr @__errno_location() #18
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.je, 13
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 126, i32 67
  %switch.selectcmp63.i.i = icmp eq i32 %i.je, 2
  %switch.select64.i.i = select i1 %switch.selectcmp63.i.i, i32 127, i32 %switch.select.i.i
  br label %execute.exit

bb.cy:                                            ; preds = %bb.bd
  store i32 %i.dx, ptr @g_monitored_pid, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.jf = load i32, ptr @g_timeout_in_seconds, align 4, !tbaa !4
  %.not.i6.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i6.i, label %.preheader, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.jg = call i32 @sigemptyset(ptr noundef nonnull %4) #16 ; 0 uses
  %i.jh = call i32 @sigaddset(ptr noundef nonnull %4, i32 noundef 14) #16 ; 0 uses
  %i.ji = load i32, ptr @g_timeout_in_seconds, align 4, !tbaa !4
  %i.jj = call i32 @alarm(i32 noundef %i.ji) #16  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.preheader

.preheader:                                       ; preds = %bb.cz, %bb.cy
  br label %bb.da

bb.da:                                            ; preds = %.preheader, %bb.db
  %i.jk = load i32, ptr @g_monitored_pid, align 4, !tbaa !4
  %i.jl = call i32 @waitpid(i32 noundef %i.jk, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.jm = icmp slt i32 %i.jl, 0
  br i1 %i.jm, label %bb.db, label %.critedge39.i.i

bb.db:                                            ; preds = %bb.da
  %i.jn = tail call ptr @__errno_location() #18
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.jp = icmp eq i32 %i.jo, 4
  br i1 %i.jp, label %bb.da, label %.critedge.i7.i, !llvm.loop !25

.critedge.i7.i:                                   ; preds = %bb.db
  call void @perror(ptr noundef nonnull @.str.83) #17
  br label %monitor_child_process.exit.i

.critedge39.i.i:                                  ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.jq = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #16 ; 0 uses
  %i.jr = load i64, ptr %2, align 8, !tbaa !19
  %i.js = sitofp i64 %i.jr to double
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !21
  %i.jv = sitofp i64 %i.ju to double
  %i.jw = call double @llvm.fmuladd.f64(double %i.jv, double f0x3EB0C6F7A0B5ED8D, double %i.js)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.jx = fsub double %i.jw, %i.dw                ; 3 uses
  %i.jy = load i32, ptr @g_monitored_pid, align 4, !tbaa !4
  %i.jz = sub nsw i32 0, %i.jy
  %i.ka = call i32 @kill(i32 noundef %i.jz, i32 noundef 9) #16 ; 0 uses
  %i.kb = call i32 @getrusage(i32 noundef -1, ptr noundef nonnull %3) #16
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.critedge39.i.i
  call void @perror(ptr noundef nonnull @.str.84) #17
  br label %monitor_child_process.exit.i

bb.dd:                                            ; preds = %.critedge39.i.i
  %i.kd = load i64, ptr %3, align 8, !tbaa !26
  %i.ke = sitofp i64 %i.kd to double
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !28
  %i.kh = sitofp i64 %i.kg to double
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %24 = load i64, ptr %23, align 8, !tbaa !29
  %25 = load i64, ptr %22, align 8, !tbaa !30
  %26 = sitofp i64 %24 to double
  %i.ki = sitofp i64 %25 to double
  %27 = insertelement <2 x double> poison, double %i.ki, i64 0
  %28 = insertelement <2 x double> %27, double %26, i64 1
  %29 = fdiv <2 x double> %28, splat (double 1.000000e+06) ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0
  %31 = fadd double %30, %i.ke                    ; 3 uses
  %32 = extractelement <2 x double> %29, i64 1
  %i.kj = fadd double %32, %i.kh                  ; 3 uses
  %i.kk = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.kl = and i32 %i.kk, 127                      ; 3 uses
  %i.km = shl nuw nsw i32 %i.kl, 24
  %sext.i.i = add nuw i32 %i.km, 16777216
  %i.kn = icmp sgt i32 %sext.i.i, 33554431
  br i1 %i.kn, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kp = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.kq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.85, ptr noundef %i.kp, i32 noundef %i.kl) #15 ; 0 uses
  %i.kr = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ks = and i32 %i.kr, 127
  %i.kt = or disjoint i32 %i.ks, 128
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  %i.ku = icmp eq i32 %i.kl, 0
  br i1 %i.ku, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.kv = lshr i32 %i.kk, 8
  %i.kw = and i32 %i.kv, 255
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de
  %.030.i.i = phi i32 [ %i.kt, %bb.de ], [ %i.kw, %bb.dg ], [ 66, %bb.df ] ; 3 uses
  %i.kx = load ptr, ptr @g_summary_file, align 8, !tbaa !8 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.kx, null
  br i1 %.not36.i.i, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %.b.i.i = load i1, ptr @g_posix_mode, align 4
  %i.ky = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  br i1 %.b.i.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.kz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ky, ptr noundef nonnull @.str.86, double noundef %i.jx, double noundef %31, double noundef %i.kj) #15 ; 0 uses
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ky, ptr noundef nonnull @.str.87, double noundef %i.jx, double noundef %31, double noundef %i.kj) #15 ; 0 uses
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dh
  %i.lb = call noalias ptr @fopen(ptr noundef nonnull %i.kx, ptr noundef nonnull @.str.71) ; 6 uses
  %.not37.not.i.i = icmp eq ptr %i.lb, null
  br i1 %.not37.not.i.i, label %.thread.i.i, label %bb.dm

.thread.i.i:                                      ; preds = %bb.dl
  call void @perror(ptr noundef nonnull @.str.69) #17
  br label %monitor_child_process.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.lc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lb, ptr noundef nonnull @.str.88, i32 noundef %.030.i.i) #16 ; 0 uses
  %i.ld = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lb, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, double noundef %i.jx) #16 ; 0 uses
  %i.le = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lb, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, double noundef %31) #16 ; 0 uses
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lb, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.92, double noundef %i.kj) #16 ; 0 uses
  %i.lg = call i32 @fclose(ptr noundef nonnull %i.lb) ; 0 uses
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk, %bb.dj
  %.b35.i.i = load i1, ptr @g_append_exitstats, align 4
  %i.lh = load ptr, ptr @g_target_program, align 8
  %i.li = icmp ne ptr %i.lh, null
  %or.cond.i.i = select i1 %.b35.i.i, i1 %i.li, i1 false
  br i1 %or.cond.i.i, label %bb.do, label %monitor_child_process.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.lj = load ptr, ptr @g_target_redirect_stdout, align 8, !tbaa !8
  %i.lk = call noalias ptr @fopen(ptr noundef %i.lj, ptr noundef nonnull @.str.93) ; 3 uses
  %.not38.not.i.i = icmp eq ptr %i.lk, null
  br i1 %.not38.not.i.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @perror(ptr noundef nonnull @.str.69) #17
  br label %monitor_child_process.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.lk, ptr noundef nonnull @.str.88, i32 noundef %.030.i.i) #16 ; 0 uses
  %i.lm = call i32 @fclose(ptr noundef nonnull %i.lk) ; 0 uses
  br label %monitor_child_process.exit.i

monitor_child_process.exit.i:                     ; preds = %bb.dq, %bb.dp, %bb.dn, %.thread.i.i, %bb.dc, %.critedge.i7.i
  %.4.i.i = phi i32 [ 66, %.critedge.i7.i ], [ 66, %bb.dc ], [ 66, %.thread.i.i ], [ %.030.i.i, %bb.dn ], [ 0, %bb.dq ], [ 66, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %execute.exit

execute.exit:                                     ; preds = %bb.bc, %bb.bg, %bb.bi, %bb.bm, %bb.bo, %bb.br, %bb.bt, %bb.cw, %bb.cx, %monitor_child_process.exit.i
  %.0.i = phi i32 [ 66, %bb.bc ], [ %.4.i.i, %monitor_child_process.exit.i ], [ 66, %bb.bo ], [ 66, %bb.cw ], [ 66, %bb.bm ], [ %switch.select64.i.i, %bb.cx ], [ 66, %bb.br ], [ 66, %bb.bt ], [ 66, %bb.bg ], [ 66, %bb.bi ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold noreturn nounwind uwtable
define internal fastcc void @usage(i32 noundef range(i32 0, 2) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.27, ptr noundef %i.b) #15 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.28, i64 9, i64 1, ptr %i.d) #17 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #15 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #15 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #15 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #15 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #15 ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #15 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #15 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #15 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #15 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #15 ; 0 uses
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #15 ; 0 uses
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #15 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #15 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #15 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #15 ; 0 uses
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #15 ; 0 uses
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #15 ; 0 uses
  tail call void @_exit(i32 noundef %0) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal void @terminate_handler(i32 noundef %0) #8 {
bb.a:
  %i.a = load i32, ptr @g_monitored_pid, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !12 ; 2 uses
  %i.c = load ptr, ptr @g_program_name, align 8, !tbaa !8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @g_target_program, align 8, !tbaa !8
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.65, ptr noundef %i.c, i32 noundef %0, ptr noundef %i.d) #15 ; 0 uses
  %i.f = load i32, ptr @g_monitored_pid, align 4, !tbaa !4
  %i.g = sub nsw i32 0, %i.f
  %i.h = tail call i32 @kill(i32 noundef %i.g, i32 noundef 9) #16 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.66, ptr noundef %i.c, i32 noundef %0) #15 ; 0 uses
  tail call void @_exit(i32 noundef 68) #19
  unreachable
}

; Function Attrs: cold nounwind uwtable
define internal void @timeout_handler(i32 %0) #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = load ptr, ptr @g_program_name, align 8, !tbaa !8
  %i.c = load ptr, ptr @g_target_program, align 8, !tbaa !8
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.67, ptr noundef %i.b, ptr noundef %i.c) #15 ; 0 uses
  %i.e = load i32, ptr @g_monitored_pid, align 4, !tbaa !4
  %i.f = sub nsw i32 0, %i.e
  %i.g = tail call i32 @kill(i32 noundef %i.f, i32 noundef 9) #16 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nounwind
declare i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #7

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!14 = distinct !{null}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !16, i64 0}
!20 = !{!"timeval", !16, i64 0, !16, i64 8}
!21 = !{!20, !16, i64 8}
!22 = !{!23, !16, i64 8}
!23 = !{!"rlimit", !16, i64 0, !16, i64 8}
!24 = !{!23, !16, i64 0}
!25 = distinct !{!25, !18}
!26 = !{!27, !16, i64 0}
!27 = !{!"rusage", !20, i64 0, !20, i64 16, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136}
!28 = !{!27, !16, i64 16}
!29 = !{!27, !16, i64 24}
!30 = !{!27, !16, i64 8}
end_hunk_0
