Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-io-cmds?download=true
inline.NumInlined: 169
inline.NumDeleted: 33
begin_hunk_0_@read_f:bb.a
  %i.bz = add nuw i64 %spec.select, %.089
  %i.ca = icmp sgt i64 %i.bz, %.0.i140
  %or.cond125 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond125, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.24) #24 ; 0 uses
  br label %bb.at

bb.aa:                                            ; preds = %bb.y
  br i1 %.096, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre = and i32 %.085, 8
  %i.cc = icmp ne i32 %.pre, 0
  br label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.cd = and i64 %.0.i134, 511
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.25, i64 noundef %.0.i134) #24 ; 0 uses
  br label %bb.at

bb.ad:                                            ; preds = %bb.ab
  %i.cg = and i64 %.0.i140, 511
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.26, i64 noundef %.0.i140) #24 ; 0 uses
  br label %bb.at

bb.af:                                            ; preds = %bb.ad
  %i.cj = and i32 %.085, 8
  %.not120 = icmp eq i32 %i.cj, 0
  br i1 %.not120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.27) #24 ; 0 uses
  br label %bb.at

bb.ah:                                            ; preds = %._crit_edge, %bb.af
  %.pre-phi = phi i1 [ %i.cc, %._crit_edge ], [ false, %bb.af ] ; 2 uses
  %i.cl = call fastcc ptr @qemu_io_alloc(ptr noundef %0, i64 noundef %.0.i140, i32 noundef 171, i1 noundef zeroext %.pre-phi) ; 5 uses
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24 ; 0 uses
  br i1 %.096, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = trunc nuw nsw i64 %.0.i140 to i32
  %i.co = call i32 @blk_load_vmstate(ptr noundef %0, ptr noundef %i.cl, i64 noundef range(i64 0, -9223372036854775808) %.0.i134, i32 noundef %i.cn) #24 ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = icmp slt i32 %i.co, 0
  br i1 %i.cq, label %select.unfold, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call i32 @blk_pread(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %.0.i134, i64 noundef range(i64 0, 2147483137) %.0.i140, ptr noundef %i.cl, i32 noundef range(i32 0, 16) %.085) #24 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %select.unfold, label %bb.ak

select.unfold:                                    ; preds = %bb.ai, %bb.aj
  %.093.ph = phi i32 [ %i.cr, %bb.aj ], [ %i.co, %bb.ai ] ; 2 uses
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24 ; 0 uses
  %i.cu = sub i32 0, %.093.ph
  %i.cv = call ptr @strerror(i32 noundef %i.cu) #24
  %i.cw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %i.cv) #24 ; 0 uses
  br label %bb.as

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0147 = phi i64 [ %i.cp, %bb.ai ], [ %.0.i140, %bb.aj ]
  %i.cx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24 ; 0 uses
  br i1 %.0102, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cy = call noalias ptr @g_malloc(i64 noundef %spec.select) #26 ; 3 uses
  %i.cz = trunc i32 %.091 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cy, i8 noundef %i.cz, i64 noundef %spec.select, i1 noundef false) #24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.089
  %bcmp = call i32 @bcmp(ptr %i.da, ptr nonnull %i.cy, i64 %spec.select)
  %.not121 = icmp eq i32 %bcmp, 0
  br i1 %.not121, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = add nuw i64 %.0.i134, %.089
  %i.dc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.29, i64 noundef %i.db, i64 noundef %spec.select) #24 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.194 = phi i32 [ -22, %bb.am ], [ 0, %bb.al ]
  call void @g_free(ptr noundef nonnull %i.cy) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.295 = phi i32 [ %.194, %bb.an ], [ 0, %bb.ak ] ; 2 uses
  br i1 %.0106, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.0104, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @dump_buffer(ptr noundef %i.cl, i64 noundef %.0.i134, i64 noundef %.0.i140)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dd = load i64, ptr %4, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = load i64, ptr %3, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = sub i64 %i.df, %i.di                    ; 4 uses
  %i.dk = icmp slt i64 %i.dj, 0
  %i.dl = add nsw i64 %i.dj, 1000000000
  %.lobit.i = ashr i64 %i.dj, 63
  %.sroa.6.0.i = select i1 %i.dk, i64 %i.dl, i64 %i.dj
  %.sroa.01.0.i = sub i64 %i.dd, %i.dg
  %i.dm = add i64 %.sroa.01.0.i, %.lobit.i
  store i64 %i.dm, ptr %4, align 8
  store i64 %.sroa.6.0.i, ptr %i.de, align 8
  call fastcc void @print_report(ptr noundef nonnull @.str.18, ptr noundef %4, i64 noundef %.0.i134, i64 noundef %.0.i140, i64 noundef %.0147, i32 noundef 1, i1 noundef zeroext %.084)
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar, %select.unfold
  %.3 = phi i32 [ %.093.ph, %select.unfold ], [ %.295, %bb.ao ], [ %.295, %bb.ar ]
  call fastcc void @qemu_io_free(ptr noundef %0, ptr noundef %i.cl, i64 noundef %.0.i140, i1 noundef zeroext %.pre-phi)
  br label %bb.at

bb.at:                                            ; preds = %parse_pattern.exit.thread, %bb.as, %bb.ag, %bb.ae, %bb.ac, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.f
  %.0 = phi i32 [ -22, %bb.n ], [ %i.p, %bb.f ], [ -22, %bb.x ], [ %i.ag, %bb.l ], [ -22, %bb.p ], [ %i.az, %bb.r ], [ %i.bp, %bb.t ], [ -22, %bb.v ], [ -22, %bb.z ], [ -22, %bb.ag ], [ %.3, %bb.as ], [ -22, %bb.ae ], [ -22, %bb.ac ], [ -22, %parse_pattern.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @read_help() #0 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, -9223372036854775808) i64 @cvtnum(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !9
  %i.b = call i32 @qemu_strtosz(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = sext i32 %i.b to i64
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %. = select i1 %i.f, i64 -34, i64 %i.e
  %.0 = select i1 %i.c, i64 %i.d, i64 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @qemu_io_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i32 noundef range(i32 0, -2147483648) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @qemuio_misalign, align 1, !range !10, !noundef !11
  %i.b = shl nuw nsw i8 %i.a, 4
  %i.c = zext nneg i8 %i.b to i64
  %spec.select = add nuw i64 %1, %i.c             ; 3 uses
  %i.d = tail call ptr @blk_blockalign(ptr noundef %0, i64 noundef %spec.select) #24 ; 3 uses
  %i.e = trunc i32 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.d, i8 noundef %i.e, i64 noundef %spec.select, i1 noundef false) #24
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @blk_register_buf(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %spec.select, ptr noundef nonnull @error_abort) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr @qemuio_misalign, align 1, !range !10, !noundef !11
  %i.h = shl nuw nsw i8 %i.g, 4
  %spec.select12.idx = zext nneg i8 %i.h to i64
  %spec.select12 = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select12.idx
  ret ptr %spec.select12
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dump_buffer(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not40 = icmp eq i64 %2, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.a
  %3 = add i64 %2, -1
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.critedge2
  %indvars.iv45 = phi i64 [ %3, %.lr.ph39.preheader ], [ %indvars.iv.next46, %.critedge2 ] ; 2 uses
  %.02338 = phi ptr [ %0, %.lr.ph39.preheader ], [ %i.f, %.critedge2 ] ; 2 uses
  %.02637 = phi i64 [ 0, %.lr.ph39.preheader ], [ %i.w, %.critedge2 ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv45, i64 15)
  %i.a = add i64 %.02637, %1
  %i.b = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, i64 noundef %i.a) #24 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph39, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.134 = phi ptr [ %.02338, %.lr.ph39 ], [ %i.f, %bb.b ] ; 2 uses
  %i.c = load i8, ptr %.134, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %i.d) #24 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.134, i64 1 ; 2 uses
  %i.g = icmp samesign ult i64 %indvars.iv, 15
  %i.h = or disjoint i64 %.02637, %indvars.iv.next
  %i.i = icmp ult i64 %i.h, %2
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.b
  %i.j = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4) #24 ; 0 uses
  %i.k = tail call ptr @__ctype_b_loc() #27
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv42 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next43, %bb.f ] ; 2 uses
  %.036 = phi ptr [ %.02338, %.lr.ph ], [ %i.u, %bb.f ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i8, ptr %.036, align 1              ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 8
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = zext i8 %i.m to i32
  %i.s = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %i.r) #24 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.036, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv42, %umin
  br i1 %exitcond.not, label %.critedge2, label %bb.c, !llvm.loop !20

.critedge2:                                       ; preds = %bb.f
  %i.v = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38) #24 ; 0 uses
  %i.w = add i64 %.02637, 16                      ; 2 uses
  %i.x = icmp ult i64 %i.w, %2
  %indvars.iv.next46 = add i64 %indvars.iv45, -16
  br i1 %i.x, label %.lr.ph39, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_report(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, -2147483648) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !annotation !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, 1.000000e+09           ; 2 uses
  %.pre.i = load i64, ptr %1, align 8             ; 4 uses
  %.not24.i = icmp ne i64 %.pre.i, 0
  %or.cond.i.not = select i1 %6, i1 true, i1 %.not24.i
  br i1 %or.cond.i.not, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.h = sdiv i64 %.pre.i, 3600
  %i.i = trunc i64 %i.h to i32
  %i.j = srem i64 %.pre.i, 3600
  %.lhs.trunc.i = trunc nsw i64 %i.j to i16
  %i.k = sdiv i16 %.lhs.trunc.i, 60
  %i.l = sext i16 %i.k to i32
  %i.m = srem i64 %.pre.i, 60
  %i.n = sitofp i64 %i.m to double
  %i.o = fadd double %i.g, %i.n
  %i.p = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.43, i32 noundef %i.i, i32 noundef %i.l, double noundef %i.o) #24 ; 0 uses
  br label %timestr.exit

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.44, double noundef %i.g) #24 ; 0 uses
  br label %timestr.exit

timestr.exit:                                     ; preds = %.thread.i, %bb.b
  %i.r = sitofp i64 %4 to double                  ; 3 uses
  br i1 %6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %timestr.exit
  call fastcc void @cvtstr(double noundef %i.r, ptr noundef %i.a)
  %i.s = load i64, ptr %1, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = sitofp i64 %i.s to double
  %i.v = sitofp i64 %i.t to double
  %i.w = fdiv double %i.v, 1.000000e+09
  %i.x = fadd double %i.w, %i.u
  %i.y = fdiv double %i.r, %i.x
  call fastcc void @cvtstr(double noundef %i.y, ptr noundef %i.b)
  %i.z = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %0, i64 noundef %4, i64 noundef %3, i64 noundef %2) #24 ; 0 uses
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = load i64, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = sitofp i64 %i.ab to double
  %i.ae = sitofp i64 %i.ac to double
  %i.af = fdiv double %i.ae, 1.000000e+09
  %i.ag = fadd double %i.af, %i.ad
  %i.ah = fdiv double %i.aa, %i.ag
  %i.ai = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, double noundef %i.ah) #24 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %timestr.exit
  %i.aj = load i64, ptr %1, align 8
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = sitofp i64 %i.aj to double
  %i.am = sitofp i64 %i.ak to double
  %i.an = fdiv double %i.am, 1.000000e+09
  %i.ao = fadd double %i.an, %i.al                ; 2 uses
  %i.ap = fdiv double %i.r, %i.ao
  %i.aq = uitofp nneg i32 %5 to double
  %i.ar = fdiv double %i.aq, %i.ao
  %i.as = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, i64 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, double noundef %i.ap, double noundef %i.ar) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @qemu_io_free(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @qemuio_misalign, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %.0.idx = select i1 %i.b, i64 -16, i64 0
  %.0 = getelementptr inbounds i8, ptr %1, i64 %.0.idx ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 16
  %.06 = select i1 %i.b, i64 %i.c, i64 %2
  tail call void @blk_unregister_buf(ptr noundef %0, ptr noundef %.0, i64 noundef %.06) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @qemu_vfree(ptr noundef %.0) #24
  ret void
}

declare i32 @qemu_strtosz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @blk_blockalign(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @blk_register_buf(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @blk_load_vmstate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @blk_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @cvtstr(double noundef %0, ptr noundef nonnull %1) unnamed_addr #12 {
bb.a:
  %i.a = fcmp ult double %0, f0x43B0000000000000
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan double %0, f0x3C30000000000000
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.b) #24 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ult double %0, f0x4310000000000000
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fmul nnan double %0, f0x3CD0000000000000
  %i.f = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.e) #24 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ult double %0, f0x4270000000000000
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = fmul nnan double %0, f0x3D70000000000000
  %i.i = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.h) #24 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = fcmp ult double %0, f0x41D0000000000000
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = fmul nnan double %0, f0x3E10000000000000
  %i.l = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.k) #24 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.m = fcmp ult double %0, f0x4130000000000000
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = fmul nnan double %0, f0x3EB0000000000000
  %i.o = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.n) #24 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.p = fcmp ult double %0, 1.024000e+03
  br i1 %i.p, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = fmul nnan double %0, f0x3F50000000000000
  %i.r = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.q) #24 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.s = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 58, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.53, double noundef %0) #24 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %.0 = phi ptr [ @.str.45, %bb.b ], [ @.str.47, %bb.d ], [ @.str.48, %bb.f ], [ @.str.49, %bb.h ], [ @.str.50, %bb.j ], [ @.str.51, %bb.l ], [ @.str.52, %bb.m ] ; 2 uses
  %i.t = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.54) #25 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %strcpy = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %.0) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %strcat = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %.0) ; 0 uses
  br label %bb.q

end_hunk_0
begin_hunk_1_@resume_f:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @bdrv_debug_resume(ptr noundef %i.a, ptr noundef %i.c) #24 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sub i32 0, %i.d
  %i.g = tail call ptr @strerror(i32 noundef %i.f) #24
  %i.h = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.208, ptr noundef %i.g) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @bdrv_debug_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @wait_break_f(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @blk_bs(ptr noundef %0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @bdrv_debug_is_suspended(ptr noundef %i.a, ptr noundef %i.c) #24
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = tail call ptr @blk_get_aio_context(ptr noundef %0) #24
  %i.f = tail call zeroext i1 @aio_poll(ptr noundef %i.e, i1 noundef zeroext true) #24 ; 0 uses
  %i.g = tail call ptr @blk_bs(ptr noundef %0) #24
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call zeroext i1 @bdrv_debug_is_suspended(ptr noundef %i.g, ptr noundef %i.h) #24
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i32 0
}

declare zeroext i1 @bdrv_debug_is_suspended(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @aio_poll(ptr noundef, i1 noundef zeroext) #3

declare ptr @blk_get_aio_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind sspstrong uwtable
define internal noundef i32 @abort_f(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2) #19 {
bb.a:
  tail call void @abort() #23
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @sleep_f(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 @__isoc23_strtol(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 0) #24 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load i8, ptr %i.g, align 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.215, ptr noundef %i.i) #24 ; 0 uses
  br label %timer_free.exit

bb.d:                                             ; preds = %bb.b
  %i.k = call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #26 ; 5 uses
  call void @timer_init_full(ptr noundef %i.k, ptr noundef null, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @sleep_cb, ptr noundef nonnull %i.b) #24
  %i.l = call i64 @qemu_clock_get_ns(i32 noundef 2) #24
  %i.m = mul i64 %i.e, 1000000
  %i.n = add i64 %i.l, %i.m
  call void @timer_mod(ptr noundef %i.k, i64 noundef %i.n) #24
  %i.o = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  call void @main_loop_wait(i32 noundef 0) #24
  %i.q = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %timer_free.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @timer_del(ptr noundef nonnull %i.k) #24
  call void @g_free(ptr noundef nonnull %i.k) #24
  br label %timer_free.exit

timer_free.exit:                                  ; preds = %bb.e, %._crit_edge, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @sleep_cb(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0) #13 {
bb.a:
  store i8 1, ptr %0, align 1
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #3

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @timer_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @sigraise_f(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !9
  %i.d = call i32 @qemu_strtosz(ptr noundef %i.c, ptr noundef null, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = sext i32 %i.d to i64
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %..i = select i1 %i.h, i64 -34, i64 %i.g
  %.0.i = select i1 %i.e, i64 %i.f, i64 %..i      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.i = icmp slt i64 %.0.i, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %switch.selectcmp.i = icmp eq i64 %.0.i, -34
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i = icmp eq i64 %.0.i, -22
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.30, ptr %switch.select.i
  %i.k = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i, ptr noundef %i.j) #24 ; 0 uses
  %i.l = trunc i64 %.0.i to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %.0.i, 65
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef %i.n) #24 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = call i32 @fflush(ptr noundef %i.p)       ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = call i32 @fflush(ptr noundef %i.r)       ; 0 uses
  %i.t = trunc nuw nsw i64 %.0.i to i32
  %i.u = call i32 @raise(i32 noundef %i.t) #24    ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ -22, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sigraise_help() #0 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.220, i32 noundef 15) #24 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias returned, ptr noalias readonly captures(none)) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { cold nofree noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !8}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{null}
!16 = distinct !{!16, !8}
!17 = distinct !{null}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8, !12}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !12}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8, !12}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
end_hunk_1
