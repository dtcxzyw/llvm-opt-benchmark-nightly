Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/qjs?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1014, !llvm.loop !25

._crit_edge:                                      ; preds = %.critedge668, %bb.da
  br i1 %i.fb, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %._crit_edge
  %i.fv = call fastcc { i64, i64 } @load_standalone_module(ptr noundef %i.fg) ; 2 uses
  %i.fw = extractvalue { i64, i64 } %i.fv, 1      ; 3 uses
  %i.fx = and i64 %i.fw, 4294967295
  %i.fy = icmp eq i64 %i.fx, 6
  br i1 %i.fy, label %.thread647, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fz = extractvalue { i64, i64 } %i.fv, 0      ; 2 uses
  %i.ga = call { i64, i64 } @JS_GetPropertyStr(ptr noundef nonnull %i.fg, i64 %i.fz, i64 %i.fw, ptr noundef nonnull @.str.37) #19 ; 2 uses
  %i.gb = extractvalue { i64, i64 } %i.ga, 1      ; 3 uses
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.fz, i64 %i.fw) #19
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = icmp eq i64 %i.gc, 6
  br i1 %i.gd, label %.thread647, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ge = extractvalue { i64, i64 } %i.ga, 0      ; 2 uses
  %i.gf = call { i64, i64 } @JS_Call(ptr noundef nonnull %i.fg, i64 %i.ge, i64 %i.gb, i64 0, i64 3, i32 noundef 0, ptr noundef null) #19 ; 2 uses
  %i.gg = extractvalue { i64, i64 } %i.gf, 0
  %i.gh = extractvalue { i64, i64 } %i.gf, 1
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.ge, i64 %i.gb) #19
  br label %bb.dq

bb.df:                                            ; preds = %._crit_edge
  %.not469 = icmp eq ptr %.6288642, null
  br i1 %.not469, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.gi = call fastcc { i64, i64 } @load_standalone_module(ptr noundef %i.fg) ; 2 uses
  %i.gj = extractvalue { i64, i64 } %i.gi, 1      ; 3 uses
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = icmp eq i64 %i.gk, 6
  br i1 %i.gl, label %.thread647, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.gm = extractvalue { i64, i64 } %i.gi, 0      ; 2 uses
  %i.gn = call { i64, i64 } @JS_GetPropertyStr(ptr noundef nonnull %i.fg, i64 %i.gm, i64 %i.gj, ptr noundef nonnull @.str.38) #19 ; 2 uses
  %i.go = extractvalue { i64, i64 } %i.gn, 0      ; 2 uses
  %i.gp = extractvalue { i64, i64 } %i.gn, 1      ; 3 uses
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.gm, i64 %i.gj) #19
  %i.gq = and i64 %i.gp, 4294967295
  %i.gr = icmp eq i64 %i.gq, 6
  br i1 %i.gr, label %.thread647, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.gs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.6288642) #21
  %i.gt = call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %i.fg, ptr noundef nonnull %.6288642, i64 noundef %i.gs) #19 ; 2 uses
  %i.gu = extractvalue { i64, i64 } %i.gt, 0
  %i.gv = extractvalue { i64, i64 } %i.gt, 1
  store i64 %i.gu, ptr %3, align 16, !tbaa !14
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.gv, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.6302638) #21
  %i.gy = call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %i.fg, ptr noundef nonnull %.6302638, i64 noundef %i.gx) #19 ; 2 uses
  %i.gz = extractvalue { i64, i64 } %i.gy, 0
  %i.ha = extractvalue { i64, i64 } %i.gy, 1
  store i64 %i.gz, ptr %i.gw, align 16, !tbaa !14
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.ha, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !23
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.not475 = icmp eq ptr %.6295640, null
  br i1 %.not475, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.hc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.6295640) #21
  %i.hd = call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %i.fg, ptr noundef nonnull %.6295640, i64 noundef %i.hc) #19 ; 2 uses
  %i.he = extractvalue { i64, i64 } %i.hd, 0
  %i.hf = extractvalue { i64, i64 } %i.hd, 1
  store i64 %i.he, ptr %i.hb, align 16, !tbaa !14
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  store i32 0, ptr %i.hb, align 16
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %.sroa.224.0..sroa_idx, align 4, !tbaa !14
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.sink = phi i64 [ 3, %bb.dk ], [ %i.hf, %bb.dj ]
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %.sink, ptr %i.hg, align 8, !tbaa !23
  %i.hh = call { i64, i64 } @JS_Call(ptr noundef nonnull %i.fg, i64 %i.go, i64 %i.gp, i64 0, i64 3, i32 noundef 3, ptr noundef nonnull %3) #19 ; 2 uses
  %i.hi = extractvalue { i64, i64 } %i.hh, 0
  %i.hj = extractvalue { i64, i64 } %i.hh, 1
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.go, i64 %i.gp) #19
  %i.hk = load i64, ptr %3, align 16
  %i.hl = load i64, ptr %.sroa.431.0..sroa_idx, align 8
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.hk, i64 %i.hl) #19
  %i.hm = load i64, ptr %i.gw, align 16
  %i.hn = load i64, ptr %.sroa.429.0..sroa_idx, align 8
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.hm, i64 %i.hn) #19
  %i.ho = load i64, ptr %i.hb, align 16
  %i.hp = load i64, ptr %i.hg, align 8
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %i.ho, i64 %i.hp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.dq

bb.dm:                                            ; preds = %bb.df
  %.not470 = icmp eq ptr %.6310636, null
  br i1 %.not470, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not473 = icmp ne i32 %.6353626, 0
  %i.hq = zext i1 %.not473 to i32
  %i.hr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.6310636) #21
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = call fastcc i32 @eval_buf(ptr noundef %i.fg, ptr noundef nonnull %.6310636, i32 noundef %i.hs, ptr noundef nonnull @.str.39, i32 noundef %i.hq)
  %.not474 = icmp eq i32 %i.ht, 0
  br i1 %.not474, label %bb.dq, label %.thread647

bb.do:                                            ; preds = %bb.dm
  %.not471 = icmp slt i32 %.12644, %0
  br i1 %.not471, label %bb.dp, label %.thread656

bb.dp:                                            ; preds = %bb.do
  %i.hu = load ptr, ptr %i.fl, align 8, !tbaa !16
  %i.hv = call fastcc i32 @eval_file(ptr noundef %i.fg, ptr noundef %i.hu, i32 noundef %.6353626)
  %.not472 = icmp eq i32 %i.hv, 0
  br i1 %.not472, label %bb.dq, label %.thread647

bb.dq:                                            ; preds = %bb.dl, %bb.de, %bb.dp, %bb.dn
  %.sroa.0173.4 = phi i64 [ %i.gg, %bb.de ], [ %i.hi, %bb.dl ], [ 0, %bb.dn ], [ 0, %bb.dp ] ; 2 uses
  %.sroa.7.4 = phi i64 [ %i.gh, %bb.de ], [ %i.hj, %bb.dl ], [ 3, %bb.dn ], [ 3, %bb.dp ] ; 2 uses
  %.not476 = icmp eq i32 %.6317634, 0
  br i1 %.not476, label %bb.dr, label %.thread656

.thread656:                                       ; preds = %bb.do, %bb.dq
  %.sroa.7.4663 = phi i64 [ %.sroa.7.4, %bb.dq ], [ 3, %bb.do ]
  %.sroa.0173.4661 = phi i64 [ %.sroa.0173.4, %bb.dq ], [ 0, %bb.do ]
  call void @JS_SetHostPromiseRejectionTracker(ptr noundef nonnull %.0272, ptr noundef null, ptr noundef null) #19
  %i.hw = load i32, ptr @qjsc_repl_size, align 4, !tbaa !9
  %i.hx = zext i32 %i.hw to i64
  call void @js_std_eval_binary(ptr noundef nonnull %i.fg, ptr noundef nonnull @qjsc_repl, i64 noundef %i.hx, i32 noundef 0) #19
  br label %bb.dr

bb.dr:                                            ; preds = %.thread656, %bb.dq
  %.sroa.7.4664 = phi i64 [ %.sroa.7.4663, %.thread656 ], [ %.sroa.7.4, %bb.dq ] ; 2 uses
  %.sroa.0173.4662 = phi i64 [ %.sroa.0173.4661, %.thread656 ], [ %.sroa.0173.4, %bb.dq ]
  %i.hy = icmp ne ptr %.6288642, null
  %or.cond8 = or i1 %i.hy, %i.fb
  br i1 %or.cond8, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.hz = and i64 %.sroa.7.4664, 4294967295
  %i.ia = icmp eq i64 %i.hz, 6
  br i1 %i.ia, label %.thread665, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @JS_FreeValue(ptr noundef nonnull %i.fg, i64 %.sroa.0173.4662, i64 %.sroa.7.4664) #19
  br label %bb.du

bb.du:                                            ; preds = %bb.dr, %bb.dt
  %i.ib = call i32 @js_std_loop(ptr noundef nonnull %i.fg) #19
  %.not477 = icmp eq i32 %i.ib, 0
  br i1 %.not477, label %bb.dv, label %.thread665

.thread665:                                       ; preds = %bb.ds, %bb.du
  call void @js_std_dump_error(ptr noundef nonnull %i.fg) #19
  br label %.thread647

bb.dv:                                            ; preds = %bb.du, %bb.cx
  %i.ic = icmp ne i32 %.6325632, 0                ; 2 uses
  br i1 %i.ic, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @JS_ComputeMemoryUsage(ptr noundef nonnull %.0272, ptr noundef nonnull %4) #19
  %i.id = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @JS_DumpMemoryUsage(ptr noundef %i.id, ptr noundef nonnull %4, ptr noundef nonnull %.0272) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  call void @js_std_free_handlers(ptr noundef nonnull %.0272) #19
  call void @JS_FreeContext(ptr noundef nonnull %i.fg) #19
  call void @JS_FreeRuntime(ptr noundef nonnull %.0272) #19
  %or.cond10 = and i1 %i.ic, %i.fi
  br i1 %or.cond10, label %.peel.next1159, label %bb.dy

.peel.next1159:                                   ; preds = %bb.dx
  %i.ie = call i64 @clock() #19
  %i.if = call ptr @JS_NewRuntime() #19           ; 2 uses
  %i.ig = call i64 @clock() #19                   ; 2 uses
  %i.ih = call ptr @JS_NewContext(ptr noundef %i.if) #19
  %i.ii = call i64 @clock() #19                   ; 2 uses
  call void @JS_FreeContext(ptr noundef %i.ih) #19
  %i.ij = call i64 @clock() #19                   ; 2 uses
  call void @JS_FreeRuntime(ptr noundef %i.if) #19
  %i.ik = call i64 @clock() #19
  %i.il = sub nsw i64 %i.ik, %i.ij
  %5 = sitofp i64 %i.il to double
  %i.im = sub nsw i64 %i.ij, %i.ii
  %6 = sitofp i64 %i.im to double
  %7 = sub nsw i64 %i.ii, %i.ig
  %i.in = sitofp i64 %7 to double
  %8 = sub nsw i64 %i.ig, %i.ie
  %i.io = sitofp i64 %8 to double
  %i.ip = insertelement <4 x double> poison, double %i.io, i64 0
  %i.iq = insertelement <4 x double> %i.ip, double %i.in, i64 1
  %i.ir = insertelement <4 x double> %i.iq, double %6, i64 2
  %i.is = insertelement <4 x double> %i.ir, double %5, i64 3
  %i.it = fmul nnan <4 x double> %i.is, splat (double 1.000000e+03)
  %i.iu = fdiv <4 x double> %i.it, splat (double 1.000000e+06)
  br label %.split.preheader

.split.preheader:                                 ; preds = %.split.preheader, %.peel.next1159
  %.02701018 = phi i32 [ 1, %.peel.next1159 ], [ %i.jp, %.split.preheader ]
  %i.iv = phi <4 x double> [ %i.iu, %.peel.next1159 ], [ %i.jo, %.split.preheader ] ; 2 uses
  %i.iw = call i64 @clock() #19
  %i.ix = call ptr @JS_NewRuntime() #19           ; 2 uses
  %i.iy = call i64 @clock() #19                   ; 2 uses
  %i.iz = call ptr @JS_NewContext(ptr noundef %i.ix) #19
  %i.ja = call i64 @clock() #19                   ; 2 uses
  call void @JS_FreeContext(ptr noundef %i.iz) #19
  %i.jb = call i64 @clock() #19                   ; 2 uses
  call void @JS_FreeRuntime(ptr noundef %i.ix) #19
  %i.jc = call i64 @clock() #19
  %i.jd = sub nsw i64 %i.jc, %i.jb
  %9 = sitofp i64 %i.jd to double
  %i.je = sub nsw i64 %i.jb, %i.ja
  %10 = sitofp i64 %i.je to double
  %11 = sub nsw i64 %i.ja, %i.iy
  %i.jf = sitofp i64 %11 to double
  %12 = sub nsw i64 %i.iy, %i.iw
  %i.jg = sitofp i64 %12 to double
  %i.jh = insertelement <4 x double> poison, double %i.jg, i64 0
  %i.ji = insertelement <4 x double> %i.jh, double %i.jf, i64 1
  %i.jj = insertelement <4 x double> %i.ji, double %10, i64 2
  %i.jk = insertelement <4 x double> %i.jj, double %9, i64 3
  %i.jl = fmul nnan <4 x double> %i.jk, splat (double 1.000000e+03)
  %i.jm = fdiv <4 x double> %i.jl, splat (double 1.000000e+06) ; 2 uses
  %i.jn = fcmp ogt <4 x double> %i.iv, %i.jm
  %i.jo = select <4 x i1> %i.jn, <4 x double> %i.jm, <4 x double> %i.iv ; 5 uses
  %i.jp = add nuw nsw i32 %.02701018, 1           ; 2 uses
  %exitcond1156.not = icmp eq i32 %i.jp, 100
  br i1 %exitcond1156.not, label %.loopexit1162, label %.split.preheader, !llvm.loop !26

.loopexit1162:                                    ; preds = %.split.preheader
  %i.jq = extractelement <4 x double> %i.jo, i64 0 ; 2 uses
  %i.jr = extractelement <4 x double> %i.jo, i64 1 ; 2 uses
  %i.js = fadd double %i.jq, %i.jr
  %i.jt = extractelement <4 x double> %i.jo, i64 2 ; 2 uses
  %i.ju = fadd double %i.js, %i.jt
  %i.jv = extractelement <4 x double> %i.jo, i64 3 ; 2 uses
  %i.jw = fadd double %i.ju, %i.jv
  %i.jx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, double noundef %i.jw, double noundef %i.jq, double noundef %i.jr, double noundef %i.jt, double noundef %i.jv) ; 0 uses
  br label %bb.dy

.thread647:                                       ; preds = %.sink.split.i, %bb.dh, %bb.dg, %bb.dd, %bb.dc, %bb.dp, %bb.dn, %.thread665
  call void @js_std_free_handlers(ptr noundef nonnull %.0272) #19
  call void @JS_FreeContext(ptr noundef nonnull %i.fg) #19
  call void @JS_FreeRuntime(ptr noundef nonnull %.0272) #19
  br label %bb.dy

bb.dy:                                            ; preds = %.thread584, %bb.dx, %.loopexit1162, %.thread647
  %.7 = phi i32 [ 0, %.thread584 ], [ 0, %bb.dx ], [ 1, %.thread647 ], [ 0, %.loopexit1162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @parse_limit(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #19
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.43, ptr noundef %0) #24 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %switch.tableidx = add i8 %i.g, -66             ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 44
  br i1 %i.i, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.44, ptr noundef %0) #24 ; 0 uses
  br label %bb.h

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 11136850201121, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %switch.hole_check
  %i.l = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.parse_limit, i64 %i.l
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.m = load i8, ptr %i.h, align 1, !tbaa !14
  %.not11 = icmp eq i8 %i.m, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %switch.lookup
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.45, ptr noundef %0) #24 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %switch.lookup, %bb.c
  %.1 = phi i64 [ %switch.ext, %switch.lookup ], [ 1024, %bb.c ]
  %i.p = uitofp nneg i64 %.1 to double
  %i.q = fmul double %i.b, %i.p
  %i.r = fptosi double %i.q to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.07 = phi i64 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.f ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @JS_NewRuntime2(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @JS_NewRuntime() local_unnamed_addr #2

declare void @JS_SetMemoryLimit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @JS_SetMaxStackSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @JS_SetDumpFlags(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @js_std_set_worker_new_context_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @JS_NewCustomContext(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call ptr @JS_NewContext(ptr noundef %0) #19 ; 19 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @js_init_module_std(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.54) #19 ; 0 uses
  %i.c = tail call ptr @js_init_module_os(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.55) #19 ; 0 uses
  %i.d = tail call ptr @js_init_module_bjson(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.56) #19 ; 0 uses
  %i.e = tail call { i64, i64 } @JS_GetGlobalObject(ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 5 uses
  %i.h = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g, ptr noundef nonnull @global_obj, i32 noundef 1) #19 ; 0 uses
  %i.i = tail call { i64, i64 } @JS_NewArray(ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.l = load i32, ptr @qjs__argc, align 4, !tbaa !9
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.n = load ptr, ptr @qjs__argv, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #21
  %i.r = tail call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, i64 noundef %i.q) #19 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = tail call i32 @JS_SetPropertyUint32(ptr noundef nonnull %i.a, i64 %i.j, i64 %i.k, i32 noundef %i.u, i64 %i.s, i64 %i.t) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr @qjs__argc, align 4, !tbaa !9
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.z = tail call i32 @JS_SetPropertyStr(ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g, ptr noundef nonnull @.str.57, i64 %i.j, i64 %i.k) #19 ; 0 uses
  %i.aa = load ptr, ptr @qjs__argv, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #21
  %i.ad = tail call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab, i64 noundef %i.ac) #19 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = tail call i32 @JS_SetPropertyStr(ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g, ptr noundef nonnull @.str.58, i64 %i.ae, i64 %i.af) #19 ; 0 uses
  %i.ah = tail call { i64, i64 } @JS_NewObject(ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 3 uses
  %i.ak = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %i.a, i64 %i.ai, i64 %i.aj, ptr noundef nonnull @navigator_proto_funcs, i32 noundef 2) #19 ; 0 uses
  %i.al = tail call { i64, i64 } @JS_NewObjectProto(ptr noundef nonnull %i.a, i64 %i.ai, i64 %i.aj) #19 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = tail call i32 @JS_DefinePropertyValueStr(ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g, ptr noundef nonnull @.str.59, i64 %i.am, i64 %i.an, i32 noundef 5) #19 ; 0 uses
  tail call void @JS_FreeValue(ptr noundef nonnull %i.a, i64 %i.f, i64 %i.g) #19
  tail call void @JS_FreeValue(ptr noundef nonnull %i.a, i64 %i.ai, i64 %i.aj) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.a
}

declare void @js_std_init_handlers(ptr noundef) local_unnamed_addr #2

declare void @JS_SetModuleLoaderFunc2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
