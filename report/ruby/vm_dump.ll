inline.NumInlined: 137
inline.NumDeleted: 53
begin_hunk_0_@rb_vm_bugreport:bb.a
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %.thread175, label %bb.bu

bb.bu:                                            ; preds = %rb_dump_machine_register.exit
  %i.ik = call i32 @backtrace(ptr noundef nonnull @rb_print_backtrace.trace, i32 noundef 1024) #13
  call void @rb_dump_backtrace_with_lines(i32 noundef %i.ik, ptr noundef nonnull @rb_print_backtrace.trace, ptr noundef %1) #13
  %i.il = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %.thread175, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.in = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.27) #13
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %.thread175, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.aj, label %bb.bx, label %bb.cv

bb.bx:                                            ; preds = %bb.bw
  %i.ip = call i32 @rb_during_gc() #14
  %.not120 = icmp eq i32 %i.ip, 0
  br i1 %.not120, label %bb.by, label %bb.cv

bb.by:                                            ; preds = %bb.bx
  %i.iq = getelementptr i8, ptr %i.ae, i64 1216
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !150 ; 2 uses
  %.not121 = icmp eq i64 %i.ir, 0
  br i1 %.not121, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.is = inttoptr i64 %i.ir to ptr               ; 3 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !151
  %i.iv = call i64 @llvm.smin.i64(i64 %i.iu, i64 1024)
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = load i64, ptr %i.is, align 8, !tbaa !35
  %i.iy = and i64 %i.ix, 8192
  %.not.i147 = icmp eq i64 %i.iy, 0
  %i.iz = getelementptr i8, ptr %i.is, i64 24     ; 2 uses
  br i1 %.not.i147, label %RSTRING_PTR.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !48
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bz, %bb.ca
  %i.jb = phi ptr [ %i.ja, %bb.ca ], [ %i.iz, %bb.bz ]
  %i.jc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %i.iw, ptr noundef %i.jb) #13
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %.thread175, label %bb.cb

bb.cb:                                            ; preds = %RSTRING_PTR.exit
  %i.je = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %.thread175, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %i.jg = load i8, ptr @ruby_box_enabled, align 1, !tbaa !153, !range !154, !noundef !139
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ji = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.29) #13
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %.thread175, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not117, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jk = getelementptr i8, ptr %i.af, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !73
  %i.jm = getelementptr i8, ptr %i.af, i64 128
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !155, !range !154, !noundef !139
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jp = getelementptr i8, ptr %i.af, i64 129
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !156, !range !154, !noundef !139
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = select i1 %i.jr, ptr @.str.32, ptr @.str.31
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.jt = phi ptr [ %i.js, %bb.cg ], [ @.str.33, %bb.cf ]
  %i.ju = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef %i.jl, ptr noundef nonnull %i.jt) #13
  %i.jv = icmp slt i32 %i.ju, 0
  br i1 %i.jv, label %.thread175, label %bb.ck

bb.ci:                                            ; preds = %bb.ce
  %i.jw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.34) #13
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %.thread175, label %bb.ck

bb.cj:                                            ; preds = %bb.cc
  %i.jy = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.35) #13
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %.thread175, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ch, %bb.ci
  %.not122 = icmp eq i64 %.0106, 0
  br i1 %.not122, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ka = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.36) #13
  %i.kb = icmp slt i32 %i.ka, 0
  br i1 %i.kb, label %.thread175, label %.preheader180

.preheader180:                                    ; preds = %bb.cl
  %i.kc = inttoptr i64 %.0106 to ptr              ; 3 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 16     ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kc, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader180, %bb.cu
  %.0107 = phi i32 [ %i.ne, %bb.cu ], [ 0, %.preheader180 ] ; 7 uses
  %i.kf = sext i32 %.0107 to i64                  ; 3 uses
  %i.kg = load i64, ptr %i.kc, align 8, !tbaa !35 ; 2 uses
  %i.kh = and i64 %i.kg, 8192
  %.not.i148 = icmp eq i64 %i.kh, 0
  br i1 %.not.i148, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.cm
  %i.ki = load i64, ptr %i.kd, align 8, !tbaa !48
  %i.kj = icmp sgt i64 %i.ki, %i.kf
  br i1 %i.kj, label %bb.cn, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.cm
  %i.kk = lshr i64 %i.kg, 15
  %i.kl = and i64 %i.kk, 127
  %i.km = icmp sgt i64 %i.kl, %i.kf
  br i1 %i.km, label %RARRAY_AREF.exit, label %.loopexit

bb.cn:                                            ; preds = %rb_array_len.exit
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !48
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.cn
  %.0.i.i150 = phi ptr [ %i.kn, %bb.cn ], [ %i.kd, %rb_array_len.exit.thread ]
  %i.ko = getelementptr [8 x i8], ptr %.0.i.i150, i64 %i.kf
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !29 ; 8 uses
  %i.kq = icmp eq i64 %i.kp, 0
  %i.kr = and i64 %i.kp, 7
  %i.ks = icmp ne i64 %i.kr, 0
  %i.kt = or i1 %i.kq, %i.ks
  br i1 %i.kt, label %rbimpl_RB_TYPE_P_fastpath.exit137.thread, label %rbimpl_RB_TYPE_P_fastpath.exit141

rbimpl_RB_TYPE_P_fastpath.exit141:                ; preds = %RARRAY_AREF.exit
  %i.ku = inttoptr i64 %i.kp to ptr               ; 3 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !35 ; 2 uses
  %i.kw = and i64 %i.kv, 31
  switch i64 %i.kw, label %rbimpl_RB_TYPE_P_fastpath.exit137.thread [
    i64 5, label %bb.co
    i64 2, label %rbimpl_RB_TYPE_P_fastpath.exit135
    i64 3, label %rbimpl_RB_TYPE_P_fastpath.exit135.fold.split
  ]

bb.co:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit141
  %i.kx = getelementptr i8, ptr %i.ku, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !151
  %i.kz = call i64 @llvm.smin.i64(i64 %i.ky, i64 1024)
  %i.la = trunc i64 %i.kz to i32
  %i.lb = and i64 %i.kv, 8192
  %.not.i151 = icmp eq i64 %i.lb, 0
  %i.lc = getelementptr i8, ptr %i.ku, i64 24     ; 2 uses
  br i1 %.not.i151, label %RSTRING_PTR.exit152, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !48
  br label %RSTRING_PTR.exit152

RSTRING_PTR.exit152:                              ; preds = %bb.co, %bb.cp
  %i.le = phi ptr [ %i.ld, %bb.cp ], [ %i.lc, %bb.co ]
  %i.lf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %.0107, i32 noundef %i.la, ptr noundef %i.le) #13
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %.thread175, label %bb.cu

rbimpl_RB_TYPE_P_fastpath.exit135.fold.split:     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit141
  br label %rbimpl_RB_TYPE_P_fastpath.exit135

rbimpl_RB_TYPE_P_fastpath.exit135:                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit141, %rbimpl_RB_TYPE_P_fastpath.exit135.fold.split
  %i.lh = phi ptr [ @.str.38, %rbimpl_RB_TYPE_P_fastpath.exit141 ], [ @.str.39, %rbimpl_RB_TYPE_P_fastpath.exit135.fold.split ] ; 2 uses
  %i.li = call i64 @rb_class_real(i64 noundef %i.kp) #14
  %i.lj = call i64 @rb_search_class_path(i64 noundef %i.li) #13 ; 3 uses
  %i.lk = icmp eq i64 %i.lj, 0
  %i.ll = and i64 %i.lj, 7
  %i.lm = icmp ne i64 %i.ll, 0
  %i.ln = or i1 %i.lk, %i.lm
  br i1 %i.ln, label %rbimpl_RB_TYPE_P_fastpath.exit133.thread, label %rbimpl_RB_TYPE_P_fastpath.exit133

rbimpl_RB_TYPE_P_fastpath.exit133:                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit135
  %i.lo = inttoptr i64 %i.lj to ptr               ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !35 ; 2 uses
  %i.lq = and i64 %i.lp, 31
  %i.lr = icmp eq i64 %i.lq, 5
  br i1 %i.lr, label %bb.cq, label %rbimpl_RB_TYPE_P_fastpath.exit133.thread

rbimpl_RB_TYPE_P_fastpath.exit133.thread:         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit135, %rbimpl_RB_TYPE_P_fastpath.exit133
  %i.ls = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %.0107, ptr noundef nonnull %i.lh) #13
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %.thread175, label %bb.cu

bb.cq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit133
  %i.lu = getelementptr i8, ptr %i.lo, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !151
  %i.lw = call i64 @llvm.smin.i64(i64 %i.lv, i64 1024)
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = and i64 %i.lp, 8192
  %.not.i153 = icmp eq i64 %i.ly, 0
  %i.lz = getelementptr i8, ptr %i.lo, i64 24     ; 2 uses
  br i1 %.not.i153, label %RSTRING_PTR.exit154, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !48
  br label %RSTRING_PTR.exit154

RSTRING_PTR.exit154:                              ; preds = %bb.cq, %bb.cr
  %i.mb = phi ptr [ %i.ma, %bb.cr ], [ %i.lz, %bb.cq ]
  %i.mc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %.0107, ptr noundef nonnull %i.lh, i32 noundef %i.lx, ptr noundef %i.mb) #13
  %i.md = icmp slt i32 %i.mc, 0
  br i1 %i.md, label %.thread175, label %bb.cu

rbimpl_RB_TYPE_P_fastpath.exit137.thread:         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit141, %RARRAY_AREF.exit
  %i.me = call i64 @rb_obj_class(i64 noundef %i.kp) #13
  %i.mf = call i64 @rb_search_class_path(i64 noundef %i.me) #13 ; 3 uses
  %i.mg = icmp eq i64 %i.mf, 0
  %i.mh = and i64 %i.mf, 7
  %i.mi = icmp ne i64 %i.mh, 0
  %i.mj = or i1 %i.mg, %i.mi
  br i1 %i.mj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit137.thread
  %i.mk = inttoptr i64 %i.mf to ptr               ; 3 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !35 ; 2 uses
  %i.mm = and i64 %i.ml, 31
  %i.mn = icmp eq i64 %i.mm, 5
  br i1 %i.mn, label %bb.cs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit137.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.mo = call fastcc i64 @rb_class_of(i64 noundef %i.kp) #14
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = inttoptr i64 %i.kp to ptr
  %i.mr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %.0107, ptr noundef %i.mp, ptr noundef %i.mq) #13
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %.thread175, label %bb.cu

bb.cs:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.mt = getelementptr i8, ptr %i.mk, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !151
  %i.mv = call i64 @llvm.smin.i64(i64 %i.mu, i64 1024)
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = and i64 %i.ml, 8192
  %.not.i155 = icmp eq i64 %i.mx, 0
  %i.my = getelementptr i8, ptr %i.mk, i64 24     ; 2 uses
  br i1 %.not.i155, label %RSTRING_PTR.exit156, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !48
  br label %RSTRING_PTR.exit156

RSTRING_PTR.exit156:                              ; preds = %bb.cs, %bb.ct
  %i.na = phi ptr [ %i.mz, %bb.ct ], [ %i.my, %bb.cs ]
  %i.nb = inttoptr i64 %i.kp to ptr
  %i.nc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %.0107, i32 noundef %i.mw, ptr noundef %i.na, ptr noundef %i.nb) #13
  %i.nd = icmp slt i32 %i.nc, 0
  br i1 %i.nd, label %.thread175, label %bb.cu

bb.cu:                                            ; preds = %RSTRING_PTR.exit156, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RSTRING_PTR.exit154, %rbimpl_RB_TYPE_P_fastpath.exit133.thread, %RSTRING_PTR.exit152
  %i.ne = add i32 %.0107, 1
  br label %bb.cm, !llvm.loop !157

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %bb.ck
  %i.nf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  %i.ng = icmp slt i32 %i.nf, 0
  br i1 %i.ng, label %.thread175, label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %bb.bx, %bb.bw
  %i.nh = call noalias ptr @fopen(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) ; 4 uses
  %.not123 = icmp eq ptr %i.nh, null
  br i1 %.not123, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ni = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.46) #13
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %.thread175, label %.preheader

.preheader:                                       ; preds = %bb.cw, %fread.inline.exit
  %i.nk = call i32 @feof(ptr noundef nonnull %i.nh) #13
  %.not124 = icmp eq i32 %i.nk, 0
  br i1 %.not124, label %fread.inline.exit, label %bb.cx

fread.inline.exit:                                ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #13
  %i.nl = call i64 @fread(ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef 256, ptr noundef nonnull %i.nh) ; 2 uses
  %i.nm = call i64 @fwrite(ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.nl, ptr noundef %1)
  %.not125 = icmp eq i64 %i.nm, %i.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #13
  br i1 %.not125, label %.preheader, label %bb.cx

bb.cx:                                            ; preds = %fread.inline.exit, %.preheader
  %i.nn = call i32 @fclose(ptr noundef nonnull %i.nh) ; 0 uses
  %i.no = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.47) #13
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %.thread175, label %bb.cy

.thread175:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RSTRING_PTR.exit156, %rbimpl_RB_TYPE_P_fastpath.exit133.thread, %RSTRING_PTR.exit154, %RSTRING_PTR.exit152, %bb.cx, %bb.cw, %.loopexit, %bb.ch, %bb.cl, %bb.cj, %bb.cd, %bb.cb, %RSTRING_PTR.exit, %bb.ci, %bb.bv, %bb.bu, %rb_dump_machine_register.exit, %bb.q, %bb.p, %rb_ec_ractor_ptr.exit, %bb.n, %bb.m, %bb.l, %bb.f
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv, %bb.f, %.thread175
  %.0 = phi i1 [ false, %.thread175 ], [ true, %bb.f ], [ true, %bb.cv ], [ true, %bb.cx ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @system(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @rb_current_box_in_crash_report() local_unnamed_addr #2

declare ptr @rb_root_box() local_unnamed_addr #2

declare void @rb_backtrace_print_as_bugreport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_during_gc() local_unnamed_addr #8

declare i64 @rb_search_class_path(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #8

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !29
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: alwaysinline nobuiltin nounwind sspstrong uwtable
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef zeroext i1 @rb_vmdebug_stack_dump_all_threads() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !158 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_current_ractor.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !85
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !139, !noundef !139
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140
  br label %rb_current_ractor.exit

rb_current_ractor.exit:                           ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !88 ; 2 uses
  %i.i = getelementptr i8, ptr %.0.i.i, i64 184   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %rb_current_ractor.exit
  %.011.in = phi ptr [ %i.i, %rb_current_ractor.exit ], [ %.011, %bb.e ]
  %.011 = load ptr, ptr %.011.in, align 8, !tbaa !159 ; 5 uses
  %.not = icmp eq ptr %.011, %i.i                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.011, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !161
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %.011, ptr noundef %i.n) #13
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.011, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = tail call zeroext i1 @rb_vmdebug_stack_dump_raw(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.h)
  br i1 %i.u, label %bb.c, label %bb.f, !llvm.loop !163

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i1 %.not
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #2

declare i32 @rb_vm_get_sourceline(ptr noundef) local_unnamed_addr #2

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #2

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #2

declare ptr @rb_vm_frame_method_entry_unchecked(ptr noundef) local_unnamed_addr #2

declare ptr @rb_method_type_name(i32 noundef) local_unnamed_addr #2

declare ptr @rb_raw_obj_info(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
