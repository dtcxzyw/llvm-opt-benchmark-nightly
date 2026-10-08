Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5SM?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5SM_table_debug:bb.a
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !15
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !17

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5SM_init_g, align 1, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %.thread88, !prof !49

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = icmp eq i32 %5, -1
  %i.j = call i32 @H5F_get_sohm_vers(ptr noundef %0) #11 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, %i.j
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %fwrite = call i64 @fwrite(ptr nonnull @.str.48, i64 60, i64 1, ptr %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.078 = phi i32 [ %5, %bb.d ], [ %5, %bb.e ], [ %i.j, %bb.c ]
  %i.k = icmp eq i32 %6, -1
  %i.l = call i32 @H5F_get_sohm_nindexes(ptr noundef %0) #11 ; 2 uses
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not84 = icmp eq i32 %6, %i.l
  br i1 %.not84, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %fwrite85 = call i64 @fwrite(ptr nonnull @.str.49, i64 62, i64 1, ptr %2) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.077 = phi i32 [ %6, %bb.g ], [ %6, %bb.h ], [ %i.l, %bb.f ] ; 2 uses
  %.not86 = icmp eq i32 %.078, 0
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.n = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !12
  %i.o = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_table_debug, i32 noundef 2492, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.50) #11 ; 0 uses
  br label %.thread88

bb.k:                                             ; preds = %bb.i
  %i.p = add i32 %.077, -9
  %or.cond = icmp ult i32 %i.p, -8
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.r = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !12
  %i.s = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_table_debug, i32 noundef 2495, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.51) #11 ; 0 uses
  br label %.thread88

bb.m:                                             ; preds = %bb.k
  store ptr %0, ptr %7, align 8, !tbaa !47
  %i.t = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_TABLE, i64 noundef %1, ptr noundef nonnull %7, i32 noundef 128) #11 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.v = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.w = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !12
  %i.x = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_table_debug, i32 noundef 2503, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %.thread88

.lr.ph:                                           ; preds = %bb.m
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef %3, ptr noundef nonnull @.str.53) #11 ; 0 uses
  %i.z = add nsw i32 %3, 3                        ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 8 uses
  %wide.trip.count = zext nneg i32 %.077 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 10 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef %3, ptr noundef nonnull @.str.53, i32 noundef %i.ab) #11 ; 0 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = icmp eq i32 %i.ag, 1
  %i.aj = select i1 %i.ai, ptr @.str.58, ptr @.str.59
  %i.ak = select i1 %i.ah, ptr @.str.57, ptr %i.aj
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ak) #11 ; 0 uses
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !52
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.61, i64 noundef %i.ap) #11 ; 0 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.62, i64 noundef %i.au) #11 ; 0 uses
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !35
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.64, i32 noundef %i.ay) #11 ; 0 uses
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !36
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.66, i64 noundef %i.bd) #11 ; 0 uses
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !37
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.67, i64 noundef %i.bi) #11 ; 0 uses
  %i.bk = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.68, i64 noundef %i.bn) #11 ; 0 uses
  %i.bp = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %i.z, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.69, i64 noundef %i.bs) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.o
  %i.bu = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_TABLE, i64 noundef %1, ptr noundef nonnull %i.t, i32 noundef 0) #11
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.p, label %.thread88

bb.p:                                             ; preds = %._crit_edge
  %i.bw = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.bx = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !12
  %i.by = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_table_debug, i32 noundef 2531, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.22) #11 ; 0 uses
  br label %.thread88

.thread88:                                        ; preds = %bb.n, %bb.l, %bb.j, %._crit_edge, %bb.p, %bb.b
  %.1 = phi i32 [ -1, %bb.p ], [ 0, %._crit_edge ], [ 0, %bb.b ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.n ]
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !12
  call void @H5AC_tag(i64 noundef %i.bz, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5SM_list_debug(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.H5SM_list_cache_ud_t, align 8 ; 5 uses
  %7 = alloca %struct.H5SM_table_cache_ud_t, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 -1, ptr %i.a, align 8, !tbaa !12
  call void @H5AC_tag(i64 noundef 5, ptr noundef nonnull %i.a) #11
  %i.b = load i8, ptr @H5SM_init_g, align 1, !tbaa !14, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !15
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !17

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5SM_init_g, align 1, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.u, !prof !18

bb.c:                                             ; preds = %.thread, %bb.b
  store ptr %0, ptr %7, align 8, !tbaa !47
  %i.i = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_TABLE, i64 noundef %5, ptr noundef nonnull %7, i32 noundef 128) #11 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread135, label %bb.d

.thread135:                                       ; preds = %bb.c
  %i.k = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.l = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !12
  %i.m = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2573, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %.not146 = icmp eq i32 %i.o, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %wide.trip.count = zext i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %.not = icmp ne i64 %i.t, -1
  %i.u = icmp eq i64 %i.t, %1
  %or.cond = and i1 %.not, %i.u
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !115

._crit_edge.loopexit:                             ; preds = %bb.e
  %8 = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.094.lcssa = phi i32 [ 0, %bb.d ], [ %8, %._crit_edge.loopexit ] ; 2 uses
  %i.v = icmp eq i32 %.094.lcssa, %i.o
  br i1 %i.v, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store ptr %0, ptr %6, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %9 = zext i32 %.094.lcssa to i64                ; 4 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %9
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !72
  %i.aa = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_LIST, i64 noundef %1, ptr noundef nonnull %6, i32 noundef 128) #11 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread136, label %bb.h

.thread136:                                       ; preds = %bb.g
  %i.ac = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.ad = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !12
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2594, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.40) #11 ; 0 uses
  br label %.thread132

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %.not110 = icmp eq i64 %i.ai, -1
  br i1 %.not110, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @H5HF_open(ptr noundef %0, i64 noundef %i.ai) #11 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.097 = phi ptr [ %i.aj, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.72, i32 noundef %3, ptr noundef nonnull @.str.53) #11 ; 0 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37
  %.not147 = icmp eq i64 %i.ap, 0
  br i1 %.not147, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.j
  %i.aq = add nsw i32 %3, 3                       ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 256 ; 7 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph144, %bb.o
  %i.as = phi i64 [ 0, %.lr.ph144 ], [ %i.cg, %bb.o ] ; 7 uses
  %.195142 = phi i32 [ 0, %.lr.ph144 ], [ %i.cf, %bb.o ] ; 2 uses
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef %3, ptr noundef nonnull @.str.53, i32 noundef %.195142) #11 ; 0 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = zext i32 %i.ax to i64
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.75, i64 noundef %i.ay) #11 ; 0 uses
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.as
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !76
  switch i32 %i.bc, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11 ; 0 uses
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.as
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !77
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.79, i64 noundef %i.bh) #11 ; 0 uses
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.as
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.80, i64 noundef %i.bm) #11 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.81) #11 ; 0 uses
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.as
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.82, i64 noundef %i.bs) #11 ; 0 uses
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.as
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !77
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.83, i64 noundef %i.bx) #11 ; 0 uses
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.as
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !92
  %i.cd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.85, i32 noundef %i.cc) #11 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %i.aq, ptr noundef nonnull @.str.53, i32 noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.86) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.cf = add i32 %.195142, 1                     ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw [72 x i8], ptr %i.ch, i64 %9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !37
  %i.cl = icmp ugt i64 %i.ck, %i.cg
  br i1 %i.cl, label %bb.k, label %._crit_edge145, !llvm.loop !116

._crit_edge145:                                   ; preds = %bb.o, %bb.j
  %.not111 = icmp eq ptr %.097, null
  br i1 %.not111, label %.thread121, label %bb.p

bb.p:                                             ; preds = %._crit_edge145
  %i.cm = call i32 @H5HF_close(ptr noundef nonnull %.097) #11
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %.thread121

bb.q:                                             ; preds = %bb.p
  %i.co = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.cp = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !12
  %i.cq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2630, i64 noundef %i.co, i64 noundef %i.cp, ptr noundef nonnull @.str.87) #11 ; 0 uses
  br label %.thread121

bb.r:                                             ; preds = %bb.i
  %i.cr = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.cs = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !12
  %i.ct = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2599, i64 noundef %i.cr, i64 noundef %i.cs, ptr noundef nonnull @.str.71) #11 ; 0 uses
  br label %.thread121

.thread121:                                       ; preds = %._crit_edge145, %bb.p, %bb.q, %bb.r
  %.1126 = phi i32 [ -1, %bb.r ], [ 0, %._crit_edge145 ], [ 0, %bb.p ], [ -1, %bb.q ]
  %i.cu = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_LIST, i64 noundef %1, ptr noundef nonnull %i.aa, i32 noundef 0) #11
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %.thread132

bb.s:                                             ; preds = %.thread121
  %i.cw = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.cx = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !12
  %i.cy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2632, i64 noundef %i.cw, i64 noundef %i.cx, ptr noundef nonnull @.str.45) #11 ; 0 uses
  br label %.thread132

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %i.cz = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.da = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !12
  %i.db = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2585, i64 noundef %i.cz, i64 noundef %i.da, ptr noundef nonnull @.str.70) #11 ; 0 uses
  br label %.thread132

.thread132:                                       ; preds = %._crit_edge.thread, %.thread121, %bb.s, %.thread136
  %.2134 = phi i32 [ -1, %.thread136 ], [ -1, %._crit_edge.thread ], [ %.1126, %.thread121 ], [ -1, %bb.s ]
  %i.dc = call i32 @H5AC_unprotect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_TABLE, i64 noundef %5, ptr noundef nonnull %i.i, i32 noundef 0) #11
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread132
  %i.de = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.df = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !12
  %i.dg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_list_debug, i32 noundef 2634, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.22) #11 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread135, %.thread132, %bb.t, %bb.b
  %.3 = phi i32 [ -1, %bb.t ], [ %.2134, %.thread132 ], [ -1, %.thread135 ], [ 0, %bb.b ]
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !12
  call void @H5AC_tag(i64 noundef %i.dh, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5SM_ih_size(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5SM_table_cache_ud_t, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 -1, ptr %i.a, align 8, !tbaa !12
  call void @H5AC_tag(i64 noundef 5, ptr noundef nonnull %i.a) #11
  %i.b = load i8, ptr @H5SM_init_g, align 1, !tbaa !14, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !15
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !17

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5SM_init_g, align 1, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.aa, !prof !18

bb.c:                                             ; preds = %.thread, %bb.b
  store ptr %0, ptr %3, align 8, !tbaa !47
  %i.i = call i64 @H5F_get_sohm_addr(ptr noundef %0) #11
  %i.j = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_SOHM_TABLE, i64 noundef %i.i, ptr noundef nonnull %3, i32 noundef 128) #11 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread79.thread87, label %bb.d

.thread79.thread87:                               ; preds = %bb.c
  %i.l = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.m = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !12
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2676, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  store i64 %i.p, ptr %1, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29
  %.not95 = icmp eq i32 %i.r, 0
  br i1 %.not95, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 264 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !31   ; 3 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @H5B2_open(ptr noundef %0, i64 noundef %i.aa, ptr noundef %0) #11 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.ae = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !12
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2688, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.43) #11 ; 0 uses
  br label %.thread83

bb.i:                                             ; preds = %bb.g
  %i.ag = call i32 @H5B2_size(ptr noundef nonnull %i.ab, ptr noundef %2) #11
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.aj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !12
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2691, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.88) #11 ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.al = call i32 @H5B2_close(ptr noundef nonnull %i.ab) #11
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !31
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.ao = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !12
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2695, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.47) #11 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = load i64, ptr %2, align 8, !tbaa !120
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %2, align 8, !tbaa !120
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.f, %bb.m
  %i.au = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %bb.f ], [ %i.u, %bb.m ]
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !48 ; 2 uses
  %.not63 = icmp eq i64 %i.ax, -1
  br i1 %.not63, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = call ptr @H5HF_open(ptr noundef %0, i64 noundef %i.ax) #11 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.bb = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !12
  %i.bc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2708, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.39) #11 ; 0 uses
  br label %.thread83

bb.q:                                             ; preds = %bb.o
  %i.bd = call i32 @H5HF_size(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.t) #11
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.bg = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !12
  %i.bh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2712, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.89) #11 ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bi = call i32 @H5HF_close(ptr noundef nonnull %i.ay) #11
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.bl = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !12
  %i.bm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2716, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.46) #11 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !29
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.e, label %.thread83, !llvm.loop !118

bb.v:                                             ; preds = %bb.r, %bb.t
  %i.bq = call i32 @H5HF_close(ptr noundef nonnull %i.ay) #11
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.w, label %.thread83

bb.w:                                             ; preds = %bb.v
  %i.bs = load i64, ptr @H5E_SOHM_g, align 8, !tbaa !12
  %i.bt = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !12
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5SM_ih_size, i32 noundef 2724, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.46) #11 ; 0 uses
  br label %.thread83

bb.x:                                             ; preds = %bb.l, %bb.j
  %i.bv = call i32 @H5B2_close(ptr noundef nonnull %i.ab) #11
end_hunk_0
