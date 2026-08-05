inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cmd__path_utils:bb.a
  %i.ir = tail call i32 @close(i32 noundef %i.ic) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %check_dotfile.exit

bb.ci:                                            ; preds = %bb.by, %.critedge241
  %i.is = icmp samesign ugt i32 %0, 5
  br i1 %i.is, label %bb.cj, label %.thread338

bb.cj:                                            ; preds = %bb.ci
  %i.it = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(12) @.str.34) #14
  %.not224 = icmp eq i32 %i.it, 0
  br i1 %.not224, label %bb.ck, label %.thread338

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !12
  %i.iw = tail call i64 @__isoc23_strtol(ptr noundef %i.iv, ptr noundef null, i32 noundef 10) #15 ; 4 uses
  %i.ix = icmp slt i64 %i.iw, 1
  br i1 %i.ix, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.35, ptr noundef %i.iy) #16
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !12
  %i.jb = tail call i64 @__isoc23_strtol(ptr noundef %i.ja, ptr noundef null, i32 noundef 10) #15 ; 3 uses
  %i.jc = icmp slt i64 %i.jb, 1
  %i.jd = icmp sgt i64 %i.jb, %i.iw
  %or.cond = or i1 %i.jc, %i.jd
  br i1 %or.cond, label %bb.cn, label %.lr.ph369

.lr.ph369:                                        ; preds = %bb.cm
  %i.je = zext nneg i32 %0 to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 48
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jg = load ptr, ptr %i.iz, align 8, !tbaa !12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef %i.iw, ptr noundef %i.jg) #16
  unreachable

bb.co:                                            ; preds = %.lr.ph369, %bb.cr
  %.0176368 = phi i64 [ 4, %.lr.ph369 ], [ %i.jr, %bb.cr ] ; 2 uses
  %.0181367 = phi i32 [ 0, %.lr.ph369 ], [ %.1182, %bb.cr ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0176368 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !12
  %i.jj = call i32 @stat64(ptr noundef %i.ji, ptr noundef nonnull %9) #15
  %.not226 = icmp eq i32 %i.jj, 0
  br i1 %.not226, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !12
  %i.jl = call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.27, ptr noundef %i.jk) #15 ; 0 uses
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.jm = load i64, ptr %i.jf, align 8, !tbaa !37
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load ptr, ptr %i.jh, align 8, !tbaa !12
  %i.jp = call ptr @string_list_append(ptr noundef nonnull %8, ptr noundef %i.jo) #15
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.jn, ptr %i.jq, align 8, !tbaa !42
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.1182 = phi i32 [ -1, %bb.cp ], [ %.0181367, %bb.cq ] ; 2 uses
  %i.jr = add nuw nsw i64 %.0176368, 1            ; 2 uses
  %exitcond412.not = icmp eq i64 %i.jr, %i.je
  br i1 %exitcond412.not, label %._crit_edge370, label %bb.co, !llvm.loop !44

._crit_edge370:                                   ; preds = %bb.cr
  %.phi.trans.insert420 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre421 = load i64, ptr %.phi.trans.insert420, align 8, !tbaa !45 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.jt = icmp ugt i64 %.pre421, 1
  br i1 %i.jt, label %bb.cs, label %sane_qsort.exit

bb.cs:                                            ; preds = %._crit_edge370
  %i.ju = load ptr, ptr %8, align 8, !tbaa !48
  call void @qsort(ptr noundef %i.ju, i64 noundef %.pre421, i64 noundef 16, ptr noundef nonnull @cmp_by_st_size) #15
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %._crit_edge370, %bb.cs
  %i.jv = add nsw i64 %i.jb, -1                   ; 2 uses
  %i.jw = load i64, ptr %i.js, align 8, !tbaa !45
  %i.jx = icmp ult i64 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph373, label %._crit_edge374

.lr.ph373:                                        ; preds = %sane_qsort.exit, %.lr.ph373
  %.1177372 = phi i64 [ %i.kb, %.lr.ph373 ], [ %i.jv, %sane_qsort.exit ] ; 2 uses
  %i.jy = load ptr, ptr %8, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %.1177372
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !49
  %puts225 = call i32 @puts(ptr nonnull dereferenceable(1) %i.ka) ; 0 uses
  %i.kb = add nuw nsw i64 %.1177372, %i.iw        ; 2 uses
  %i.kc = load i64, ptr %i.js, align 8, !tbaa !45
  %i.kd = icmp ult i64 %i.kb, %i.kc
  br i1 %i.kd, label %.lr.ph373, label %._crit_edge374, !llvm.loop !50

._crit_edge374:                                   ; preds = %.lr.ph373, %sane_qsort.exit
  %i.ke = icmp ne i32 %.1182, 0
  %i.kf = zext i1 %i.ke to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %check_dotfile.exit

.thread338:                                       ; preds = %bb.ci, %bb.cj, %bb.al
  %i.kg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(17) @.str.37) #14
  %.not227 = icmp eq i32 %i.kg, 0
  br i1 %.not227, label %bb.ct, label %bb.dh

bb.ct:                                            ; preds = %.thread338
  %i.kh = add nsw i32 %0, -1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ki = icmp samesign ugt i32 %0, 2
  br i1 %i.ki, label %bb.cu, label %.thread135.i

bb.cu:                                            ; preds = %bb.ct
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !12 ; 2 uses
  %i.kl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kk, ptr noundef nonnull dereferenceable(20) @.str.74) #14
  %.not.i305 = icmp eq i32 %i.kl, 0
  br i1 %.not.i305, label %bb.cv, label %.thread.i

bb.cv:                                            ; preds = %bb.cu
  %.not92.i = icmp eq i32 %i.kh, 2
  br i1 %.not92.i, label %.thread135.i, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.cv
  %i.km = add nsw i32 %0, -2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %.thread.i

.thread135.i:                                     ; preds = %bb.cv, %bb.ct
  %.05271.ph.i = phi i32 [ 40960, %bb.cv ], [ 33188, %bb.ct ]
  %i.kn = tail call ptr @xmalloc(i64 noundef 8000000) #15
  br label %.lr.ph102.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.cu
  %i.ko = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.kk, %bb.cu ]
  %.05076.i = phi i32 [ %i.km, %..thread_crit_edge.i ], [ %i.kh, %bb.cu ] ; 2 uses
  %.05173.i = phi ptr [ %i.kj, %..thread_crit_edge.i ], [ %i.u, %bb.cu ] ; 2 uses
  %.05272.i = phi i32 [ 40960, %..thread_crit_edge.i ], [ 33188, %bb.cu ]
  %i.kp = tail call i64 @__isoc23_strtoul(ptr noundef %i.ko, ptr noundef null, i32 noundef 0) #15
  %.fr115.i = freeze i64 %i.kp                    ; 5 uses
  %i.kq = icmp ugt i64 %.fr115.i, 2305843009213693951
  br i1 %i.kq, label %bb.cw, label %st_mult.exit.i

bb.cw:                                            ; preds = %.thread.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.79, i64 noundef 8, i64 noundef %.fr115.i) #16
  unreachable

st_mult.exit.i:                                   ; preds = %.thread.i
  %i.kr = shl nuw i64 %.fr115.i, 3
  %i.ks = tail call ptr @xmalloc(i64 noundef %i.kr) #15
  %i.kt = icmp samesign ugt i32 %.05076.i, 2
  br i1 %i.kt, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %st_mult.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.05173.i, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !12
  %i.kw = tail call i64 @__isoc23_strtoul(ptr noundef %i.kv, ptr noundef null, i32 noundef 0) #15 ; 2 uses
  %.not63.i = icmp eq i32 %.05076.i, 3
  br i1 %.not63.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kx = getelementptr inbounds nuw i8, ptr %.05173.i, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !12
  %i.kz = tail call i64 @__isoc23_strtoul(ptr noundef %i.ky, ptr noundef null, i32 noundef 0) #15
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.055.i = phi i64 [ %i.kz, %bb.cy ], [ 20, %bb.cx ] ; 2 uses
  %i.la = icmp ugt i64 %i.kw, %.055.i
  br i1 %i.la, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.75) #16
  unreachable

bb.db:                                            ; preds = %bb.cz, %st_mult.exit.i
  %.057.i = phi i64 [ %i.kw, %bb.cz ], [ 3, %st_mult.exit.i ]
  %.156.i = phi i64 [ %.055.i, %bb.cz ], [ 20, %st_mult.exit.i ]
  %.not114.i = icmp eq i64 %.fr115.i, 0
  br i1 %.not114.i, label %.preheader96.thread.i, label %.lr.ph102.i

.preheader96.thread.i:                            ; preds = %bb.db
  store i32 0, ptr @protect_ntfs, align 4, !tbaa !51
  br label %.preheader95.i

.lr.ph102.i:                                      ; preds = %bb.db, %.thread135.i
  %.fr115145.i = phi i64 [ 1000000, %.thread135.i ], [ %.fr115.i, %bb.db ] ; 2 uses
  %.156144.i = phi i64 [ 20, %.thread135.i ], [ %.156.i, %bb.db ]
  %.057143.i = phi i64 [ 3, %.thread135.i ], [ %.057.i, %bb.db ] ; 3 uses
  %.052718791141.i = phi i32 [ %.05271.ph.i, %.thread135.i ], [ %.05272.i, %bb.db ]
  %i.lb = phi ptr [ %i.kn, %.thread135.i ], [ %i.ks, %bb.db ] ; 2 uses
  %invariant.op.i = add i64 %.156144.i, 1
  %.reass.i = sub i64 %invariant.op.i, %.057143.i ; 2 uses
  %.pre127.i = load i64, ptr @my_random_value, align 8, !tbaa !52
  br label %bb.dd

.preheader96.i:                                   ; preds = %bb.de
  store i32 0, ptr @protect_ntfs, align 4, !tbaa !51
  br label %.preheader95.us.i

.preheader95.us.i:                                ; preds = %.split112.us.us.i, %.preheader96.i
  store i32 0, ptr @protect_hfs, align 4, !tbaa !51
  br label %.lr.ph105.us.us.us.i

.preheader.i.us.us.i:                             ; preds = %.split.us.us.us.i, %.preheader.i.us.us.i
  %.014.i.us.us.i = phi double [ %i.lg, %.preheader.i.us.us.i ], [ %i.mt, %.split.us.us.us.i ] ; 3 uses
  %i.lc = fdiv double %i.mt, %.014.i.us.us.i
  %i.ld = fsub double %i.lc, %.014.i.us.us.i
  %i.le = fmul double %i.ld, 5.000000e-01         ; 2 uses
  %i.lf = tail call double @llvm.fabs.f64(double %i.le)
  %or.cond.i.us.us.i = fcmp uge double %i.lf, f0x3EB0C6F7A0B5ED8D
  %i.lg = fadd double %.014.i.us.us.i, %i.le      ; 2 uses
  br i1 %or.cond.i.us.us.i, label %.preheader.i.us.us.i, label %my_sqrt.exit.us.us.i

my_sqrt.exit.us.us.i:                             ; preds = %.preheader.i.us.us.i, %.split.us.us.us.i
  %.2.i.us.us.i = phi double [ 0.000000e+00, %.split.us.us.us.i ], [ %i.lg, %.preheader.i.us.us.i ]
  %i.lh = insertelement <2 x double> %i.mp, double %.2.i.us.us.i, i64 1
  %i.li = fdiv <2 x double> %i.lh, splat (double 1.000000e+06) ; 2 uses
  %i.lj = extractelement <2 x double> %i.li, i64 0
  %i.lk = extractelement <2 x double> %i.li, i64 1
  %i.ll = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, double noundef %i.lj, double noundef %i.lk) ; 0 uses
  %i.lm = load i32, ptr @protect_hfs, align 4, !tbaa !51 ; 2 uses
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr @protect_hfs, align 4, !tbaa !51
  %i.lo = icmp slt i32 %i.lm, 1
  br i1 %i.lo, label %.lr.ph105.us.us.us.i.backedge, label %.split112.us.us.i

.lr.ph105.us.us.us.i:                             ; preds = %.lr.ph105.us.us.us.i.backedge, %.preheader95.us.i
  %.048109.us.us.us.i = phi double [ 0.000000e+00, %.preheader95.us.i ], [ %.048109.us.us.us.i.be, %.lr.ph105.us.us.us.i.backedge ]
  %.049108.us.us.us.i = phi i64 [ 0, %.preheader95.us.i ], [ %.049108.us.us.us.i.be, %.lr.ph105.us.us.us.i.backedge ]
  %.1107.us.us.us.i = phi i64 [ 0, %.preheader95.us.i ], [ %.1107.us.us.us.i.be, %.lr.ph105.us.us.us.i.backedge ]
  %i.lp = tail call i64 @getnanotime() #15
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.lr.ph105.us.us.us.i
  %.054103.us.us.us.i = phi i64 [ 0, %.lr.ph105.us.us.us.i ], [ %i.lt, %bb.dc ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.054103.us.us.us.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !12
  %i.ls = tail call i32 @verify_path(ptr noundef %i.lr, i32 noundef %.052718791141.i) #15 ; 0 uses
  %i.lt = add nuw i64 %.054103.us.us.us.i, 1      ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.lt, %.fr115145.i
  br i1 %exitcond124.not.i, label %._crit_edge106.us.us.us.i, label %bb.dc, !llvm.loop !53

._crit_edge106.us.us.us.i:                        ; preds = %bb.dc
  %i.lu = tail call i64 @getnanotime() #15
  %i.lv = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.lw = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.lx = sub i64 %i.lu, %i.lp                    ; 4 uses
  %i.ly = uitofp i64 %i.lx to double
  %i.lz = fdiv double %i.ly, 1.000000e+06
  %i.ma = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.lv, i32 noundef %i.lw, double noundef %i.lz) ; 0 uses
  %i.mb = add i64 %i.lx, %.049108.us.us.us.i      ; 2 uses
  %i.mc = mul i64 %i.lx, %i.lx
  %i.md = uitofp i64 %i.mc to double
  %i.me = fadd double %.048109.us.us.us.i, %i.md  ; 2 uses
  %i.mf = add nuw nsw i64 %.1107.us.us.us.i, 1    ; 2 uses
  %exitcond125.not.i = icmp eq i64 %i.mf, 15
  br i1 %exitcond125.not.i, label %.split.us.us.us.i, label %.lr.ph105.us.us.us.i.backedge

.lr.ph105.us.us.us.i.backedge:                    ; preds = %._crit_edge106.us.us.us.i, %my_sqrt.exit.us.us.i
  %.048109.us.us.us.i.be = phi double [ %i.me, %._crit_edge106.us.us.us.i ], [ 0.000000e+00, %my_sqrt.exit.us.us.i ]
  %.049108.us.us.us.i.be = phi i64 [ %i.mb, %._crit_edge106.us.us.us.i ], [ 0, %my_sqrt.exit.us.us.i ]
  %.1107.us.us.us.i.be = phi i64 [ %i.mf, %._crit_edge106.us.us.us.i ], [ 0, %my_sqrt.exit.us.us.i ]
  br label %.lr.ph105.us.us.us.i, !llvm.loop !54

.split.us.us.us.i:                                ; preds = %._crit_edge106.us.us.us.i
  %i.mg = uitofp i64 %i.mb to double
  %i.mh = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mi
  %i.mk = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.me, i64 1
  %i.mp = fdiv <2 x double> %i.mo, splat (double 1.500000e+01) ; 3 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 0 ; 3 uses
  store double %i.mq, ptr %i.mm, align 8, !tbaa !55
  %i.mr = fneg double %i.mq
  %i.ms = extractelement <2 x double> %i.mp, i64 1
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.mq, double %i.ms) ; 3 uses
  %i.mu = fcmp oeq double %i.mt, 0.000000e+00
  br i1 %i.mu, label %my_sqrt.exit.us.us.i, label %.preheader.i.us.us.i

.split112.us.us.i:                                ; preds = %my_sqrt.exit.us.us.i
  %i.mv = load i32, ptr @protect_ntfs, align 4, !tbaa !51 ; 2 uses
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr @protect_ntfs, align 4, !tbaa !51
  %i.mx = icmp slt i32 %i.mv, 1
  br i1 %i.mx, label %.preheader95.us.i, label %.preheader93.i, !llvm.loop !57

bb.dd:                                            ; preds = %bb.de, %.lr.ph102.i
  %i.my = phi i64 [ %.pre127.i, %.lr.ph102.i ], [ %i.no, %bb.de ]
  %.053100.i = phi i64 [ 0, %.lr.ph102.i ], [ %i.np, %bb.de ] ; 2 uses
  %.fr = freeze i64 %i.my
  %i.mz = mul i64 %.fr, 1103515245                ; 2 uses
  %i.na = add i64 %i.mz, 12345                    ; 4 uses
  store i64 %i.na, ptr @my_random_value, align 8, !tbaa !52
  %i.nb = urem i64 %i.na, %.reass.i
  %i.nc = add i64 %i.nb, %.057143.i               ; 5 uses
  %i.nd = tail call ptr @xmallocz(i64 noundef %i.nc) #15
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.053100.i ; 4 uses
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !12
  %my_random_value.promoted.i = load i64, ptr @my_random_value, align 8 ; 3 uses
  %.not6797.i = icmp eq i64 %i.nc, 0
  br i1 %.not6797.i, label %bb.de, label %.lr.ph.i304.preheader

.lr.ph.i304.preheader:                            ; preds = %bb.dd
  %11 = add i64 %.057143.i, %i.mz
  %.neg473 = sub i64 -12344, %11
  %12 = urem i64 %i.na, %.reass.i
  %.neg = sub i64 %12, %i.na
  %xtraiter = and i64 %i.nc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i304.prol.loopexit, label %.lr.ph.i304.prol

.lr.ph.i304.prol:                                 ; preds = %.lr.ph.i304.preheader
  %13 = mul i64 %my_random_value.promoted.i, 1103515245
  %14 = add i64 %13, 12345                        ; 3 uses
  %15 = urem i64 %14, 95
  %16 = trunc nuw nsw i64 %15 to i8
  %17 = add nuw nsw i8 %16, 32
  %18 = load ptr, ptr %i.ne, align 8, !tbaa !12
  %19 = add nsw i64 %i.nc, -1                     ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  store i8 %17, ptr %20, align 1, !tbaa !25
  br label %.lr.ph.i304.prol.loopexit

.lr.ph.i304.prol.loopexit:                        ; preds = %.lr.ph.i304.prol, %.lr.ph.i304.preheader
  %.lcssa467.unr = phi i64 [ poison, %.lr.ph.i304.preheader ], [ %14, %.lr.ph.i304.prol ]
  %.098.i.unr = phi i64 [ %i.nc, %.lr.ph.i304.preheader ], [ %19, %.lr.ph.i304.prol ]
  %.unr = phi i64 [ %my_random_value.promoted.i, %.lr.ph.i304.preheader ], [ %14, %.lr.ph.i304.prol ]
  %21 = icmp eq i64 %.neg, %.neg473
  br i1 %21, label %._crit_edge.i, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.lr.ph.i304.prol.loopexit, %.lr.ph.i304
  %.098.i = phi i64 [ %i.nm, %.lr.ph.i304 ], [ %.098.i.unr, %.lr.ph.i304.prol.loopexit ] ; 2 uses
  %i.nf = phi i64 [ %i.nh, %.lr.ph.i304 ], [ %.unr, %.lr.ph.i304.prol.loopexit ]
  %22 = mul i64 %i.nf, 1103515245
  %23 = add i64 %22, 12345                        ; 2 uses
  %24 = urem i64 %23, 95
  %25 = trunc nuw nsw i64 %24 to i8
  %26 = add nuw nsw i8 %25, 32
  %27 = load ptr, ptr %i.ne, align 8, !tbaa !12
  %28 = getelementptr i8, ptr %27, i64 %.098.i
  %29 = getelementptr i8, ptr %28, i64 -1
  store i8 %26, ptr %29, align 1, !tbaa !25
  %i.ng = mul i64 %23, 1103515245
  %i.nh = add i64 %i.ng, 12345                    ; 3 uses
  %i.ni = urem i64 %i.nh, 95
  %i.nj = trunc nuw nsw i64 %i.ni to i8
  %i.nk = add nuw nsw i8 %i.nj, 32
  %i.nl = load ptr, ptr %i.ne, align 8, !tbaa !12
  %i.nm = add i64 %.098.i, -2                     ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm
  store i8 %i.nk, ptr %i.nn, align 1, !tbaa !25
  %.not67.i.1 = icmp eq i64 %i.nm, 0
  br i1 %.not67.i.1, label %._crit_edge.i, label %.lr.ph.i304, !llvm.loop !58

._crit_edge.i:                                    ; preds = %.lr.ph.i304, %.lr.ph.i304.prol.loopexit
  %.lcssa467 = phi i64 [ %.lcssa467.unr, %.lr.ph.i304.prol.loopexit ], [ %i.nh, %.lr.ph.i304 ] ; 2 uses
  store i64 %.lcssa467, ptr @my_random_value, align 8, !tbaa !52
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.i, %bb.dd
  %i.no = phi i64 [ %.lcssa467, %._crit_edge.i ], [ %my_random_value.promoted.i, %bb.dd ]
  %i.np = add nuw i64 %.053100.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.np, %.fr115145.i
  br i1 %exitcond.not.i, label %.preheader96.i, label %bb.dd, !llvm.loop !59

.preheader95.i:                                   ; preds = %.split112.i, %.preheader96.thread.i
  store i32 0, ptr @protect_hfs, align 4, !tbaa !51
  br label %.preheader94.i

.preheader93.i:                                   ; preds = %.split112.i, %.split112.us.us.i
  %i.nq = load double, ptr %i.b, align 16, !tbaa !55 ; 2 uses
  store i32 0, ptr @protect_ntfs, align 4, !tbaa !51
  br label %.preheader.i

.preheader94.i:                                   ; preds = %my_sqrt.exit.i, %.preheader95.i
  %i.nr = tail call i64 @getnanotime() #15
  %i.ns = tail call i64 @getnanotime() #15
  %i.nt = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.nu = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.nv = sub i64 %i.ns, %i.nr                    ; 4 uses
  %i.nw = uitofp i64 %i.nv to double
  %i.nx = fdiv double %i.nw, 1.000000e+06
  %i.ny = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.nt, i32 noundef %i.nu, double noundef %i.nx) ; 0 uses
  %i.nz = mul i64 %i.nv, %i.nv
  %i.oa = uitofp i64 %i.nz to double
  %i.ob = tail call i64 @getnanotime() #15
  %i.oc = tail call i64 @getnanotime() #15
  %i.od = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.oe = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.of = sub i64 %i.oc, %i.ob                    ; 4 uses
  %i.og = uitofp i64 %i.of to double
  %i.oh = fdiv double %i.og, 1.000000e+06
  %i.oi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.od, i32 noundef %i.oe, double noundef %i.oh) ; 0 uses
  %i.oj = add i64 %i.of, %i.nv
  %i.ok = mul i64 %i.of, %i.of
  %i.ol = uitofp i64 %i.ok to double
  %i.om = fadd double %i.oa, %i.ol
  %i.on = tail call i64 @getnanotime() #15
  %i.oo = tail call i64 @getnanotime() #15
  %i.op = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.oq = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.or = sub i64 %i.oo, %i.on                    ; 4 uses
  %i.os = uitofp i64 %i.or to double
  %i.ot = fdiv double %i.os, 1.000000e+06
  %i.ou = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.op, i32 noundef %i.oq, double noundef %i.ot) ; 0 uses
  %i.ov = add i64 %i.oj, %i.or
  %i.ow = mul i64 %i.or, %i.or
  %i.ox = uitofp i64 %i.ow to double
  %i.oy = fadd double %i.om, %i.ox
  %i.oz = tail call i64 @getnanotime() #15
  %i.pa = tail call i64 @getnanotime() #15
  %i.pb = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.pc = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.pd = sub i64 %i.pa, %i.oz                    ; 4 uses
  %i.pe = uitofp i64 %i.pd to double
  %i.pf = fdiv double %i.pe, 1.000000e+06
  %i.pg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.pb, i32 noundef %i.pc, double noundef %i.pf) ; 0 uses
  %i.ph = add i64 %i.ov, %i.pd
  %i.pi = mul i64 %i.pd, %i.pd
  %i.pj = uitofp i64 %i.pi to double
  %i.pk = fadd double %i.oy, %i.pj
  %i.pl = tail call i64 @getnanotime() #15
  %i.pm = tail call i64 @getnanotime() #15
  %i.pn = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.po = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.pp = sub i64 %i.pm, %i.pl                    ; 4 uses
  %i.pq = uitofp i64 %i.pp to double
  %i.pr = fdiv double %i.pq, 1.000000e+06
  %i.ps = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.pn, i32 noundef %i.po, double noundef %i.pr) ; 0 uses
  %i.pt = add i64 %i.ph, %i.pp
  %i.pu = mul i64 %i.pp, %i.pp
  %i.pv = uitofp i64 %i.pu to double
  %i.pw = fadd double %i.pk, %i.pv
  %i.px = tail call i64 @getnanotime() #15
  %i.py = tail call i64 @getnanotime() #15
  %i.pz = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.qa = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.qb = sub i64 %i.py, %i.px                    ; 4 uses
  %i.qc = uitofp i64 %i.qb to double
  %i.qd = fdiv double %i.qc, 1.000000e+06
  %i.qe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.pz, i32 noundef %i.qa, double noundef %i.qd) ; 0 uses
  %i.qf = add i64 %i.pt, %i.qb
  %i.qg = mul i64 %i.qb, %i.qb
  %i.qh = uitofp i64 %i.qg to double
  %i.qi = fadd double %i.pw, %i.qh
  %i.qj = tail call i64 @getnanotime() #15
  %i.qk = tail call i64 @getnanotime() #15
  %i.ql = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.qm = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.qn = sub i64 %i.qk, %i.qj                    ; 4 uses
  %i.qo = uitofp i64 %i.qn to double
  %i.qp = fdiv double %i.qo, 1.000000e+06
  %i.qq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ql, i32 noundef %i.qm, double noundef %i.qp) ; 0 uses
  %i.qr = add i64 %i.qf, %i.qn
  %i.qs = mul i64 %i.qn, %i.qn
  %i.qt = uitofp i64 %i.qs to double
  %i.qu = fadd double %i.qi, %i.qt
  %i.qv = tail call i64 @getnanotime() #15
  %i.qw = tail call i64 @getnanotime() #15
  %i.qx = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.qy = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.qz = sub i64 %i.qw, %i.qv                    ; 4 uses
  %i.ra = uitofp i64 %i.qz to double
  %i.rb = fdiv double %i.ra, 1.000000e+06
  %i.rc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.qx, i32 noundef %i.qy, double noundef %i.rb) ; 0 uses
  %i.rd = add i64 %i.qr, %i.qz
  %i.re = mul i64 %i.qz, %i.qz
  %i.rf = uitofp i64 %i.re to double
  %i.rg = fadd double %i.qu, %i.rf
  %i.rh = tail call i64 @getnanotime() #15
  %i.ri = tail call i64 @getnanotime() #15
  %i.rj = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.rk = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.rl = sub i64 %i.ri, %i.rh                    ; 4 uses
  %i.rm = uitofp i64 %i.rl to double
  %i.rn = fdiv double %i.rm, 1.000000e+06
  %i.ro = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.rj, i32 noundef %i.rk, double noundef %i.rn) ; 0 uses
  %i.rp = add i64 %i.rd, %i.rl
  %i.rq = mul i64 %i.rl, %i.rl
  %i.rr = uitofp i64 %i.rq to double
  %i.rs = fadd double %i.rg, %i.rr
  %i.rt = tail call i64 @getnanotime() #15
  %i.ru = tail call i64 @getnanotime() #15
  %i.rv = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.rw = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.rx = sub i64 %i.ru, %i.rt                    ; 4 uses
  %i.ry = uitofp i64 %i.rx to double
  %i.rz = fdiv double %i.ry, 1.000000e+06
  %i.sa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.rv, i32 noundef %i.rw, double noundef %i.rz) ; 0 uses
  %i.sb = add i64 %i.rp, %i.rx
  %i.sc = mul i64 %i.rx, %i.rx
  %i.sd = uitofp i64 %i.sc to double
  %i.se = fadd double %i.rs, %i.sd
  %i.sf = tail call i64 @getnanotime() #15
  %i.sg = tail call i64 @getnanotime() #15
  %i.sh = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.si = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.sj = sub i64 %i.sg, %i.sf                    ; 4 uses
  %i.sk = uitofp i64 %i.sj to double
  %i.sl = fdiv double %i.sk, 1.000000e+06
  %i.sm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.sh, i32 noundef %i.si, double noundef %i.sl) ; 0 uses
  %i.sn = add i64 %i.sb, %i.sj
  %i.so = mul i64 %i.sj, %i.sj
  %i.sp = uitofp i64 %i.so to double
  %i.sq = fadd double %i.se, %i.sp
  %i.sr = tail call i64 @getnanotime() #15
  %i.ss = tail call i64 @getnanotime() #15
  %i.st = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.su = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.sv = sub i64 %i.ss, %i.sr                    ; 4 uses
  %i.sw = uitofp i64 %i.sv to double
  %i.sx = fdiv double %i.sw, 1.000000e+06
  %i.sy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.st, i32 noundef %i.su, double noundef %i.sx) ; 0 uses
  %i.sz = add i64 %i.sn, %i.sv
  %i.ta = mul i64 %i.sv, %i.sv
  %i.tb = uitofp i64 %i.ta to double
  %i.tc = fadd double %i.sq, %i.tb
  %i.td = tail call i64 @getnanotime() #15
  %i.te = tail call i64 @getnanotime() #15
  %i.tf = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.tg = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.th = sub i64 %i.te, %i.td                    ; 4 uses
  %i.ti = uitofp i64 %i.th to double
  %i.tj = fdiv double %i.ti, 1.000000e+06
  %i.tk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tf, i32 noundef %i.tg, double noundef %i.tj) ; 0 uses
  %i.tl = add i64 %i.sz, %i.th
  %i.tm = mul i64 %i.th, %i.th
  %i.tn = uitofp i64 %i.tm to double
  %i.to = fadd double %i.tc, %i.tn
  %i.tp = tail call i64 @getnanotime() #15
  %i.tq = tail call i64 @getnanotime() #15
  %i.tr = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ts = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.tt = sub i64 %i.tq, %i.tp                    ; 4 uses
  %i.tu = uitofp i64 %i.tt to double
  %i.tv = fdiv double %i.tu, 1.000000e+06
  %i.tw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.tr, i32 noundef %i.ts, double noundef %i.tv) ; 0 uses
  %i.tx = add i64 %i.tl, %i.tt
  %i.ty = mul i64 %i.tt, %i.tt
  %i.tz = uitofp i64 %i.ty to double
  %i.ua = fadd double %i.to, %i.tz
  %i.ub = tail call i64 @getnanotime() #15
  %i.uc = tail call i64 @getnanotime() #15
  %i.ud = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ue = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.uf = sub i64 %i.uc, %i.ub                    ; 4 uses
  %i.ug = add i64 %i.tx, %i.uf
  %i.uh = mul i64 %i.uf, %i.uf
  %i.ui = uitofp i64 %i.uh to double
  %i.uj = fadd double %i.ua, %i.ui
  %i.uk = insertelement <2 x i64> poison, i64 %i.uf, i64 0
  %i.ul = insertelement <2 x i64> %i.uk, i64 %i.ug, i64 1
  %i.um = uitofp <2 x i64> %i.ul to <2 x double>
  %i.un = fdiv <2 x double> %i.um, <double 1.000000e+06, double 1.500000e+01> ; 3 uses
  %i.uo = extractelement <2 x double> %i.un, i64 0
  %i.up = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.ud, i32 noundef %i.ue, double noundef %i.uo) ; 0 uses
  %i.uq = load i32, ptr @protect_ntfs, align 4, !tbaa !51
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ur
  %i.ut = load i32, ptr @protect_hfs, align 4, !tbaa !51
  %i.uu = sext i32 %i.ut to i64
end_hunk_0
