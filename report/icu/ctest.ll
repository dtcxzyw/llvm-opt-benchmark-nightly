Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ctest?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @str_timeDelta(ptr nofree noundef writeonly captures(none) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ogt double %1, 1.100000e+05
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv double %1, 6.000000e+04
  %i.c = tail call double @uprv_floor_78(double noundef %i.b) #25 ; 2 uses
  %i.d = fneg double %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double 6.000000e+04, double %1)
  %i.f = fdiv double %i.e, 1.000000e+03
  %i.g = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.c, double noundef %i.f) #25 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp ogt double %1, 1.500000e+03
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fdiv double %1, 1.000000e+03
  %i.j = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.i) #25 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = fcmp ogt double %1, 9.000000e+02
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = fdiv double %1, 1.000000e+03
  %i.m = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.l) #25 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = fcmp ogt double %1, 5.000000e+00
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %1) #25 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %0, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  ret void
}

declare double @uprv_floor_78(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind uwtable
define void @showTests(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [512 x ptr], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.split3, label %.split

.split:                                           ; preds = %bb.a
  call fastcc void @iterateTestsWithLevel(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.a, i32 noundef 1)
  br label %bb.b

.split3:                                          ; preds = %bb.a
  tail call void (ptr, ...) @log_err(ptr noundef nonnull @.str.7)
  %i.c = tail call double @uprv_getRawUTCtime_78() #25, !inline_history !17 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @log_err(ptr nofree noundef readonly %0, ...) local_unnamed_addr #8 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %.b.i.i = load i1, ptr @ON_LINE, align 1
  br i1 %.b.i.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.78)
  store i1 false, ptr @ON_LINE, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.b6.i.i = load i1, ptr @HANGING_OUTPUT, align 1
  br i1 %.b6.i.i, label %first_line_err.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !19
  %fputc.i = tail call i32 @fputc(i32 33, ptr %i.a) ; 0 uses
  br label %first_line_err.exit

first_line_err.exit:                              ; preds = %bb.b, %bb.c
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 10) #27
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %first_line_err.exit
  %i.c = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @ERROR_COUNT, align 4, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %first_line_err.exit
  store i32 1, ptr @ONE_ERROR, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @vlog_err(ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @iterateTestsWithLevel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 17 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.e = icmp slt i32 %1, 2                       ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @uprv_getRawUTCtime_78() #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.f, %bb.b ], [ -1.000000e+00, %bb.a ]
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %1, 1                        ; 6 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  store ptr %0, ptr %i.j, align 8, !tbaa !13
  %i.k = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.n) #25 ; 0 uses
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  store i16 47, ptr %endptr, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = zext nneg i32 %1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.071.lcssa = phi i64 [ %i.p, %._crit_edge.loopexit ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.071.lcssa ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.s) #25 ; 0 uses
  store i32 %1, ptr @INDENT_LEVEL, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !14
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void (ptr, ...) @log_testinfo_i(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.u)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr @ARGV_0, align 8, !tbaa !22
  call void (ptr, ...) @log_testinfo_i(ptr noundef nonnull @.str.60, ptr noundef %i.w)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i1 true, ptr @ON_LINE, align 1
  %4 = icmp eq i32 %3, 0                          ; 2 uses
  br i1 %4, label %bb.h, label %.thread95

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !16
  %.not84 = icmp eq ptr %i.x, null
  br i1 %.not84, label %5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20 ; 3 uses
  %i.z = load i32, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr %0, ptr @currentTest, align 8, !tbaa !13
  store i32 %i.h, ptr @INDENT_LEVEL, align 4, !tbaa !20
  store i32 0, ptr @ONE_ERROR, align 4, !tbaa !20
  store i1 false, ptr @HANGING_OUTPUT, align 1
  %i.aa = call double @uprv_getRawUTCtime_78() #25
  %i.ab = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @gTestName, ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16
  call void %i.ac() #25
  %i.ad = call double @uprv_getRawUTCtime_78() #25
  %.b83 = load i1, ptr @HANGING_OUTPUT, align 1
  br i1 %.b83, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.61)
  store i1 false, ptr @HANGING_OUTPUT, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %1, ptr @INDENT_LEVEL, align 4, !tbaa !20
  store ptr null, ptr @currentTest, align 8, !tbaa !13
  %i.ae = load i32, ptr @ONE_ERROR, align 4, !tbaa !20
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = load i32, ptr @ERROR_COUNT, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr @ERROR_COUNT, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr @ONE_ERROR, align 4, !tbaa !20
  %i.ai = fsub double %i.ad, %i.aa                ; 2 uses
  call void @str_timeDelta(ptr noundef nonnull %i.c, double noundef %i.ai)
  %i.aj = fdiv double %i.ai, 1.000000e+03
  %i.ak = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.62, double noundef %i.aj) #25 ; 0 uses
  %i.al = load ptr, ptr @XML_FILE, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %ctest_xml_testcase.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %.not85 = icmp eq i32 %i.y, %i.am
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.56, ptr noundef nonnull @XML_PREFIX, ptr noundef nonnull %i.b, ptr noundef nonnull @XML_PREFIX, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #25 ; 0 uses
  %i.ao = load ptr, ptr @XML_FILE, align 8, !tbaa !19 ; 2 uses
  br i1 %.not85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.63) #25 ; 0 uses
  br label %ctest_xml_testcase.exit

bb.p:                                             ; preds = %bb.n
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.58, i64 3, i64 1, ptr %i.ao) ; 0 uses
  br label %ctest_xml_testcase.exit

ctest_xml_testcase.exit:                          ; preds = %bb.m, %bb.o, %bb.p
  %i.aq = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20 ; 2 uses
  %.not86 = icmp eq i32 %i.y, %i.aq
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %ctest_xml_testcase.exit
  %i.ar = sub nsw i32 %i.aq, %i.y
  call void (ptr, ...) @log_testinfo_i(ptr noundef nonnull @.str.64, i32 noundef %i.ar, ptr noundef nonnull %i.b)
  %i.as = load i32, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [128 x i8], ptr @ERROR_LOG, i64 %i.au
  %i.aw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %ctest_xml_testcase.exit
  %.b82 = load i1, ptr @ON_LINE, align 1
  br i1 %.b82, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = sub nsw i32 45, %1
  call void (ptr, ...) @log_testinfo_i(ptr noundef nonnull @.str.65, i32 noundef %i.ax, ptr noundef nonnull @.str.66)
  %i.ay = load i32, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  %i.az = sub nsw i32 %i.ay, %i.z
  %i.ba = icmp sgt i32 %i.az, 25
  br i1 %i.ba, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.67, ptr noundef nonnull %i.b)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #27
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %1, %i.bc
  %i.be = sub i32 44, %i.bd
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.68, i32 noundef %spec.store.select, ptr noundef nonnull @.str.66)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.q
  %i.bf = load i8, ptr %i.c, align 16, !tbaa !14
  %.not87 = icmp eq i8 %i.bf, 0
  br i1 %.not87, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i1 true, ptr @ON_LINE, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %5

5:                                                ; preds = %bb.h, %bb.x
  store i32 %i.h, ptr @INDENT_LEVEL, align 4, !tbaa !20
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %.not90 = icmp eq ptr %7, null
  br i1 %.not90, label %bb.ag, label %bb.y

.thread95:                                        ; preds = %bb.g
  store i32 %1, ptr @INDENT_LEVEL, align 4, !tbaa !20
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  %.not89.a = icmp eq ptr %i.bi, null
  %i.bj = select i1 %.not89.a, i32 47, i32 32
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.b, i32 noundef %i.bj)
  store i32 %i.h, ptr @INDENT_LEVEL, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not9096 = icmp eq ptr %i.bl, null
  br i1 %.not9096, label %bb.ag, label %.thread97

bb.y:                                             ; preds = %5
  %i.bm = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20 ; 2 uses
  %i.bn = load i32, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  store i32 %1, ptr @INDENT_LEVEL, align 4, !tbaa !20
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.71)
  store i32 %i.h, ptr @INDENT_LEVEL, align 4, !tbaa !20
  %i.bo = load ptr, ptr %6, align 8, !tbaa !11
  call fastcc void @iterateTestsWithLevel(ptr noundef %i.bo, i32 noundef %i.h, ptr noundef %2, i32 noundef 0)
  store i32 %1, ptr @INDENT_LEVEL, align 4, !tbaa !20
  call void (ptr, ...) @log_testinfo_i(ptr noundef nonnull @.str.72)
  br i1 %i.k, label %bb.z, label %bb.ab

.thread97:                                        ; preds = %.thread95
  call fastcc void @iterateTestsWithLevel(ptr noundef nonnull %i.bl, i32 noundef %i.h, ptr noundef %2, i32 noundef 1)
  br label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.bp = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, %i.bm
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = sub nsw i32 %i.bp, %i.bm                ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  %i.bt = select i1 %i.bs, ptr @.str.63, ptr @.str.74
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.73, i32 noundef %i.br, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.b)
  br label %bb.af

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.bu = load i32, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  %i.bv = sub nsw i32 %i.bu, %i.bn
  %i.bw = icmp sgt i32 %i.bv, 25
  %i.bx = icmp slt i32 %1, 0
  %or.cond3 = or i1 %i.bx, %i.bw
  br i1 %or.cond3, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i8, ptr %i.b, align 16, !tbaa !14
  %.not92.a = icmp eq i8 %i.by, 0
  br i1 %.not92.a, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.67, ptr noundef nonnull %i.b)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr @ARGV_0, align 8, !tbaa !22
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.75, ptr noundef %i.bz)
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %bb.ad, %bb.aa
  store i1 true, ptr @ON_LINE, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %.thread97, %.thread95, %bb.af, %5
  br i1 %i.e, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ca = call double @uprv_getRawUTCtime_78() #25
  %i.cb = fsub double %i.ca, %.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @str_timeDelta(ptr noundef nonnull %i.a, double noundef %i.cb)
  %i.cc = load i8, ptr %i.a, align 16, !tbaa !14
  %.not.i94 = icmp eq i8 %i.cc, 0
  br i1 %.not.i94, label %print_timeDelta.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull %i.a) ; 0 uses
  br label %print_timeDelta.exit

print_timeDelta.exit:                             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aj

bb.aj:                                            ; preds = %print_timeDelta.exit, %bb.ag
  %.b = load i1, ptr @ON_LINE, align 1
  %or.cond6 = select i1 %4, i1 %.b, i1 false
  br i1 %or.cond6, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.61)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not93 = icmp eq i32 %1, 0
  br i1 %.not93, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  call fastcc void @iterateTestsWithLevel(ptr noundef %i.cf, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @runTests(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [512 x ptr], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.split11, label %.split

.split:                                           ; preds = %bb.a
  store i32 0, ptr @ERROR_COUNT, align 4, !tbaa !20
  store i32 0, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  call fastcc void @iterateTestsWithLevel(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.a, i32 noundef 0)
  br label %bb.b

.split11:                                         ; preds = %bb.a
  tail call void (ptr, ...) @log_err(ptr noundef nonnull @.str.8)
  store i32 0, ptr @ERROR_COUNT, align 4, !tbaa !20
  store i32 0, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.c = tail call double @uprv_getRawUTCtime_78() #25, !inline_history !17 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split11
  store i1 false, ptr @ON_LINE, align 1
  %i.d = load ptr, ptr @knownList, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call signext i8 @udbg_knownIssue_print(ptr noundef nonnull %i.d) #25
  %.not16 = icmp eq i8 %i.e, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !19
  %fwrite = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %i.f) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr @knownList, align 8, !tbaa !23
  call void @udbg_knownIssue_close(ptr noundef %i.g) #25
  store ptr null, ptr @knownList, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !19
  %fwrite18 = call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %i.i) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.k = call i32 @fflush(ptr noundef %i.j)       ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.m = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.11, i32 noundef %i.m) #25 ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.p = call i32 @fflush(ptr noundef %i.o)       ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !19
  %fwrite19 = call i64 @fwrite(ptr nonnull @.str.12, i64 11, i64 1, ptr %i.q) ; 0 uses
  %i.r = load i32, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw [128 x i8], ptr @ERROR_LOG, i64 %indvars.iv
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.u) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.z = load ptr, ptr @SUMMARY_FILE, align 8, !tbaa !22 ; 2 uses
  %.not20 = icmp eq ptr %i.z, null
  br i1 %.not20, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.aa = call noalias ptr @fopen(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.14) ; 3 uses
  %.not21 = icmp eq ptr %i.aa, null
  br i1 %.not21, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ab = load i32, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %.preheader, %.lr.ph25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph25 ], [ 0, %.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr @ERROR_LOG, i64 %indvars.iv28
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ad) #25 ; 0 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.af = load i32, ptr @ERRONEOUS_FUNCTION_COUNT, align 4, !tbaa !20
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next29, %i.ag
  br i1 %i.ah, label %.lr.ph25, label %._crit_edge26, !llvm.loop !30

._crit_edge26:                                    ; preds = %.lr.ph25, %.preheader
  %i.ai = call i32 @fclose(ptr noundef nonnull %i.aa) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull @.str.16)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %._crit_edge26, %._crit_edge, %bb.i
  %i.aj = load i32, ptr @DATA_ERROR_COUNT, align 4, !tbaa !20
  %.not22 = icmp eq i32 %i.aj, 0
  br i1 %.not22, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j
  %i.ak = load i32, ptr @WARN_ON_MISSING_DATA, align 4, !tbaa !20
  %i.al = icmp eq i32 %i.ak, 0
  %.str.17..str.18 = select i1 %i.al, ptr @.str.17, ptr @.str.18
  call void (ptr, ...) @log_testinfo(ptr noundef nonnull %.str.17..str.18)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare signext i8 @udbg_knownIssue_print(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @udbg_knownIssue_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @log_testinfo(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #8 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !19
  %fputc.i = call i32 @fputc(i32 32, ptr %i.a)    ; 0 uses
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.c = call i32 @vfprintf(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.e = call i32 @fflush(ptr noundef %i.d)       ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.f = load i32, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr @GLOBAL_PRINT_COUNT, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @getTestName() local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @currentTest, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define ptr @getTest(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @log_err(ptr noundef nonnull @.str.8)
end_hunk_0
begin_hunk_1_@initArgs:bb.a
  br label %bb.al

bb.aj:                                            ; preds = %.tail.thread.thread, %.thread231, %bb.o, %bb.u, %bb.c, %bb.d, %bb.f, %bb.h, %bb.p, %bb.x, %bb.ab, %bb.ae, %bb.ai, %bb.ad, %bb.z, %bb.v, %bb.q, %bb.r, %bb.g, %bb.e, %.tail120, %.tail, %.tail.thread, %bb.b
  %.3 = phi i32 [ %.091184, %bb.b ], [ %.091184, %.tail ], [ %.091184, %.tail.thread ], [ %.091184, %bb.c ], [ %.091184, %.tail120 ], [ %.091184, %bb.d ], [ %.091184, %bb.e ], [ %.091184, %bb.f ], [ %.091184, %bb.g ], [ %.091184, %bb.h ], [ %.192, %bb.o ], [ %.091184, %bb.p ], [ %.091184, %bb.q ], [ %.091184, %bb.r ], [ %i.dh, %bb.u ], [ %.091184, %bb.v ], [ %.091184, %bb.x ], [ %.091184, %bb.z ], [ %.091184, %bb.ab ], [ %.091184, %bb.ad ], [ %.091184, %bb.ae ], [ %i.em, %bb.ai ], [ %.091184, %.thread231 ], [ %.091184, %.tail.thread.thread ]
  %i.eq = add nuw nsw i32 %.3, 1                  ; 2 uses
  %i.er = icmp slt i32 %i.eq, %0
  br i1 %i.er, label %bb.b, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.aj, %bb.a
  %i.es = load i32, ptr @ICU_TRACE, align 4, !tbaa !20
  %.not = icmp eq i32 %i.es, -1
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  call void @utrace_setFunctions_78(ptr noundef null, ptr noundef nonnull @TraceEntry, ptr noundef nonnull @TraceExit, ptr noundef nonnull @TraceData) #25
  %i.et = load i32, ptr @ICU_TRACE, align 4, !tbaa !20
  call void @utrace_setLevel_78(i32 noundef %i.et) #25
  br label %bb.al

bb.al:                                            ; preds = %.thread, %._crit_edge, %bb.ak, %split, %bb.af, %bb.t
  %.7 = phi i32 [ 0, %.thread ], [ 0, %bb.t ], [ 0, %split ], [ 0, %bb.af ], [ 1, %bb.ak ], [ 1, %._crit_edge ]
  ret i32 %.7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @help(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef %0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  ret void
}

declare void @u_setMemoryFunctions_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @ctest_libMalloc(ptr nofree readnone captures(none) %0, i64 noundef %1) #13 {
bb.a:
  %i.a = load i64, ptr @MINIMUM_MEMORY_SIZE_FAILURE, align 8, !tbaa !25
  %.not = icmp ugt i64 %i.a, %1
  %i.b = load i64, ptr @MAXIMUM_MEMORY_SIZE_FAILURE, align 8
  %.not4 = icmp ugt i64 %1, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @malloc(i64 noundef %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @ctest_libRealloc(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = load i64, ptr @MINIMUM_MEMORY_SIZE_FAILURE, align 8, !tbaa !25
  %.not = icmp ugt i64 %i.a, %2
  %i.b = load i64, ptr @MAXIMUM_MEMORY_SIZE_FAILURE, align 8
  %.not5 = icmp ugt i64 %2, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @realloc(ptr noundef %1, i64 noundef %2) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ctest_libFree(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #15 {
bb.a:
  tail call void @free(ptr noundef %1) #25
  ret void
}

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ctest_xml_setFileName(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  store ptr %0, ptr @XML_FILE_NAME, align 8, !tbaa !22
  ret i32 0
}

declare void @utrace_setFunctions_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @TraceEntry(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load i32, ptr @traceFnNestingDepth, align 4, !tbaa !20
  %i.c = mul nsw i32 %i.b, 3
  %i.d = tail call ptr @utrace_functionName_78(i32 noundef %1) #25
  %i.e = call i32 (ptr, i32, i32, ptr, ...) @utrace_format_78(ptr noundef nonnull %i.a, i32 noundef 500, i32 noundef %i.c, ptr noundef nonnull @.str.83, ptr noundef %i.d) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 499
  store i8 0, ptr %i.f, align 1, !tbaa !14
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.h = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.g) ; 0 uses
  %i.i = load i32, ptr @traceFnNestingDepth, align 4, !tbaa !20
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr @traceFnNestingDepth, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TraceExit(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load i32, ptr @traceFnNestingDepth, align 4, !tbaa !20 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.d, ptr @traceFnNestingDepth, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = mul nsw i32 %i.e, 3
  %i.g = tail call ptr @utrace_functionName_78(i32 noundef %1) #25
  %i.h = call i32 (ptr, i32, i32, ptr, ...) @utrace_format_78(ptr noundef nonnull %i.a, i32 noundef 500, i32 noundef %i.f, ptr noundef nonnull @.str.84, ptr noundef %i.g) #25 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 499 ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !14
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.k = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.j) ; 0 uses
  %i.l = load i32, ptr @traceFnNestingDepth, align 4, !tbaa !20
  %i.m = mul nsw i32 %i.l, 3
  %i.n = call i32 @utrace_vformat_78(ptr noundef nonnull %i.a, i32 noundef 500, i32 noundef %i.m, ptr noundef %2, ptr noundef %3) #25 ; 0 uses
  store i8 0, ptr %i.i, align 1, !tbaa !14
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.p = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.r = call i32 @putc(i32 noundef 10, ptr noundef %i.q) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TraceData(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr noundef %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load i32, ptr @traceFnNestingDepth, align 4, !tbaa !20
  %i.c = mul nsw i32 %i.b, 3
  %i.d = call i32 @utrace_vformat_78(ptr noundef nonnull %i.a, i32 noundef 500, i32 noundef %i.c, ptr noundef %3, ptr noundef %4) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 499
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.g = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.i = call i32 @putc(i32 noundef 10, ptr noundef %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @utrace_setLevel_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @runTestRequest(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [512 x ptr], align 16             ; 3 uses
  %i.b = alloca [512 x ptr], align 16             ; 3 uses
  %i.c = load ptr, ptr @ARGV_0, align 8, !tbaa !22
  %i.d = tail call i32 @ctest_xml_init(ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %ctest_xml_fini.exit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.thread96

.thread96:                                        ; preds = %.preheader
  store i1 false, ptr @ON_LINE, align 1
  br label %bb.j

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %.tail48.thread, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next83, %.tail48.thread ], [ 1, %.lr.ph.preheader ]
  %.061.ph = phi i32 [ %i.aj, %.tail48.thread ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.03660.ph = phi i32 [ 1, %.tail48.thread ], [ 0, %.lr.ph.preheader ]
  %.03859.ph = phi i32 [ %.03859, %.tail48.thread ], [ 0, %.lr.ph.preheader ]
  %.04157.ph = phi ptr [ %.142, %.tail48.thread ], [ %0, %.lr.ph.preheader ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %.tail48
  %indvars.iv = phi i64 [ %indvars.iv.next, %.tail48 ], [ %indvars.iv.ph, %.lr.ph.outer ] ; 4 uses
  %.03660 = phi i32 [ %.137, %.tail48 ], [ %.03660.ph, %.lr.ph.outer ] ; 3 uses
  %.03859 = phi i32 [ %.139, %.tail48 ], [ %.03859.ph, %.lr.ph.outer ] ; 9 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 9 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  switch i8 %i.h, label %.tail.thread.thread [
    i8 47, label %bb.b
    i8 45, label %sub_1
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %i.g) ; 0 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @getTest(ptr noundef %0, ptr noundef nonnull %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.142 = phi ptr [ %i.o, %bb.c ], [ %0, %bb.b ]  ; 4 uses
  %i.p = icmp eq ptr %.142, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %ctest_xml_fini.exit

bb.f:                                             ; preds = %bb.d
  store i1 false, ptr @ON_LINE, align 1
  %i.q = icmp eq i32 %.03859, 1
  br i1 %i.q, label %showTests.exit, label %bb.g

showTests.exit:                                   ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call fastcc void @iterateTestsWithLevel(ptr noundef nonnull %.142, i32 noundef 0, ptr noundef %i.b, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.tail48.thread

bb.g:                                             ; preds = %bb.f
  call void @runTests(ptr noundef nonnull %.142)
  br label %.tail48.thread

sub_1:                                            ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %.not66 = icmp eq i8 %i.s, 97
  br i1 %.not66, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.tail48, label %.thread

.tail.thread:                                     ; preds = %sub_1
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(5) @.str.22) #27
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.tail48, label %sub_150

.tail.thread.thread:                              ; preds = %.lr.ph
  %i.y = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(5) @.str.22) #27
  %i.z = icmp eq i32 %i.y, 0
  %spec.select = select i1 %i.z, i32 0, i32 %.03660
  br label %.tail48

.thread:                                          ; preds = %.tail
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(5) @.str.22) #27
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.tail48, label %sub_150

sub_150:                                          ; preds = %.tail.thread, %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %.not68 = icmp eq i8 %i.ad, 108
  br i1 %.not68, label %sub_251, label %.tail48

sub_251:                                          ; preds = %sub_150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp eq i8 %i.af, 0
  %i.ah = select i1 %i.ag, i32 1, i32 %.03859
  br label %.tail48

.tail48:                                          ; preds = %.tail.thread.thread, %sub_251, %sub_150, %.thread, %.tail, %.tail.thread
  %.139 = phi i32 [ %i.ah, %sub_251 ], [ %.03859, %.thread ], [ %.03859, %.tail ], [ %.03859, %.tail.thread ], [ %.03859, %.tail.thread.thread ], [ %.03859, %sub_150 ] ; 3 uses
  %.137 = phi i32 [ %.03660, %sub_251 ], [ 0, %.thread ], [ 0, %.tail ], [ 0, %.tail.thread ], [ %spec.select, %.tail.thread.thread ], [ %.03660, %sub_150 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

.tail48.thread:                                   ; preds = %showTests.exit, %bb.g
  store i1 false, ptr @ON_LINE, align 1
  %i.ai = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %i.aj = add nsw i32 %i.ai, %.061.ph             ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not84 = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond.not84, label %._crit_edge.thread89, label %.lr.ph.outer, !llvm.loop !33

._crit_edge:                                      ; preds = %.tail48
  %i.ak = icmp eq i32 %.137, 0
  br i1 %i.ak, label %bb.h, label %._crit_edge.thread89

bb.h:                                             ; preds = %._crit_edge
  store i1 false, ptr @ON_LINE, align 1
  %i.al = icmp eq i32 %.139, 1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.am = icmp eq ptr %.04157.ph, null
  br i1 %i.am, label %.split3.i46, label %.split.i45

.split.i45:                                       ; preds = %bb.i
  call fastcc void @iterateTestsWithLevel(ptr noundef nonnull %.04157.ph, i32 noundef 0, ptr noundef %i.a, i32 noundef 1)
  br label %showTests.exit47

.split3.i46:                                      ; preds = %bb.i
  call void (ptr, ...) @log_err(ptr noundef nonnull @.str.7)
  %i.an = call double @uprv_getRawUTCtime_78() #25, !inline_history !17 ; 0 uses
  br label %showTests.exit47

showTests.exit47:                                 ; preds = %.split.i45, %.split3.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.k

bb.j:                                             ; preds = %.thread96, %bb.h
  %.041.lcssa76102 = phi ptr [ %0, %.thread96 ], [ %.04157.ph, %bb.h ]
  %.0.lcssa78101 = phi i32 [ 0, %.thread96 ], [ %.061.ph, %bb.h ]
  call void @runTests(ptr noundef %.041.lcssa76102)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %showTests.exit47
  %.0.lcssa78100 = phi i32 [ %.0.lcssa78101, %bb.j ], [ %.061.ph, %showTests.exit47 ]
  store i1 false, ptr @ON_LINE, align 1
  %i.ao = load i32, ptr @ERROR_COUNT, align 4, !tbaa !20
  %i.ap = add nsw i32 %i.ao, %.0.lcssa78100
  br label %bb.m

._crit_edge.thread89:                             ; preds = %.tail48.thread, %._crit_edge
  %.1398695 = phi i32 [ %.139, %._crit_edge ], [ %.03859, %.tail48.thread ]
  %.18894 = phi i32 [ %.061.ph, %._crit_edge ], [ %i.aj, %.tail48.thread ] ; 4 uses
  %i.aq = icmp eq i32 %.1398695, 0
  %i.ar = icmp sgt i32 %.18894, 0
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread89
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.18894) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread89, %bb.l, %bb.k
  %.2 = phi i32 [ %i.ap, %bb.k ], [ %.18894, %bb.l ], [ %.18894, %._crit_edge.thread89 ] ; 2 uses
  store i32 1, ptr @REPEAT_TESTS_INIT, align 4, !tbaa !20
  %i.at = load ptr, ptr @XML_FILE, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %ctest_xml_fini.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.54, i64 13, i64 1, ptr nonnull %i.at) ; 0 uses
  %i.au = load ptr, ptr @XML_FILE, align 8, !tbaa !19
  %i.av = call i32 @fclose(ptr noundef %i.au)     ; 0 uses
  %i.aw = load ptr, ptr @XML_FILE_NAME, align 8, !tbaa !22
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %i.aw) ; 0 uses
  store ptr null, ptr @XML_FILE, align 8, !tbaa !19
  br label %ctest_xml_fini.exit

ctest_xml_fini.exit:                              ; preds = %bb.n, %bb.m, %bb.a, %bb.e
  %.044 = phi i32 [ 1, %bb.a ], [ -1, %bb.e ], [ %.2, %bb.m ], [ %.2, %bb.n ]
  ret i32 %.044
}

; Function Attrs: nofree nounwind uwtable
end_hunk_1
