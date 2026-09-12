Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/acct_policy?download=true
inline.NumInlined: 112
inline.NumDeleted: 11
begin_hunk_0_@_foreach_part_qos_limit_usage:bb.a
bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @_find_qos_part(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) #10 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %. = zext i1 %i.a to i32
  ret i32 %.
}

declare void @list_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_rm_usage_node_bitmap(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1184
  %.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 1208
  %.val32 = load ptr, ptr %i.g, align 8           ; 2 uses
  %i.h = icmp eq ptr %.val32, %.val
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = load i64, ptr %3, align 8                ; 2 uses
  %.not27 = icmp ult i64 %i.k, %i.j
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = sub nuw i64 %i.k, %i.j
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i32 @get_log_level() #14
  %i.n = icmp sgt i32 %i.m, 5
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %3, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__._rm_usage_node_bitmap, i64 noundef %i.j, i64 noundef %i.o) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %storemerge = phi i64 [ %i.l, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  store i64 %storemerge, ptr %3, align 8
  br label %bb.t

bb.i:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 255
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.u = load i32, ptr %i.t, align 8
  %.not26 = icmp eq i32 %i.u, 0
  br i1 %.not26, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__._rm_usage_node_bitmap, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.b
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__._rm_usage_node_bitmap) #14 ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._rm_usage_node_bitmap) #14 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.ab = call ptr @next_node_bitmap(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #14
  %.not3133 = icmp eq ptr %i.ab, null
  br i1 %.not3133, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ac = call i32 @bit_set_count(ptr noundef nonnull %1) #14
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %3, align 8
  br label %bb.t

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %i.ae = load i32, ptr %i.a, align 4             ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = add i16 %i.ah, -1                       ; 2 uses
  store i16 %i.ai, ptr %i.ag, align 2
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  call void @bit_clear(ptr noundef nonnull %1, i64 noundef %i.af) #14
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %i.ak = phi i32 [ %i.ae, %.lr.ph ], [ %.pre, %bb.r ]
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call ptr @next_node_bitmap(ptr noundef %i.ao, ptr noundef nonnull %i.a) #14
  %.not31 = icmp eq ptr %i.ap, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph, !llvm.loop !45

bb.t:                                             ; preds = %bb.h, %bb.l, %bb.k, %bb.j, %._crit_edge, %bb.p, %bb.n
  ret void
}

declare void @slurmdb_merge_grp_node_usage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #1

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @assoc_mgr_fill_in_assoc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_acct_policy_validate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 18 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @llvm.stacksave.p0()
  %i.e = alloca i64, i64 %i.c, align 16           ; 4 uses
  %i.f = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = alloca i64, i64 %i.g, align 16           ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.52) #14 ; 0 uses
  br label %bb.ea

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.k = load ptr, ptr %i.j, align 8              ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not221 = icmp eq ptr %i.m, null
  br i1 %.not221, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @bit_set_count(ptr noundef nonnull %i.m) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0205 = phi i32 [ %i.n, %bb.d ], [ 1, %bb.c ]  ; 6 uses
  call void @slurmdb_init_qos_rec(ptr noundef nonnull %8, i1 noundef zeroext false, i32 noundef -1) #14
  call void @assoc_mgr_set_qos_tres_cnt(ptr noundef nonnull %8) #14
  %.not222 = icmp eq ptr %3, null
  br i1 %.not222, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 64                         ; 2 uses
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp eq ptr %4, null
  %or.cond = select i1 %i.s, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.u = load i32, ptr %i.t, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0201.in.in = phi i32 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %.0201.in = lshr i32 %.0201.in.in, 6            ; 2 uses
  %.0201 = trunc i32 %.0201.in to i1              ; 2 uses
  %i.v = trunc i32 %.0201.in to i1                ; 2 uses
  %i.w = call fastcc i32 @_qos_policy_validate(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %8, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %i.k, i32 noundef %.0205, i1 noundef zeroext %i.v)
  %.not362 = icmp eq i32 %i.w, 0
  br i1 %.not362, label %.loopexit370, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call fastcc i32 @_qos_policy_validate(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef %4, ptr noundef %8, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %i.k, i32 noundef %.0205, i1 noundef zeroext %i.v)
  %.not363 = icmp eq i32 %i.x, 0
  br i1 %.not363, label %.loopexit370, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.z = load double, ptr %i.y, align 8           ; 2 uses
  %i.aa = fadd double %i.z, f0xC1EFFFFFFFE00000
  %i.ab = call double @llvm.fabs.f64(double %i.aa)
  %or.cond240 = fcmp olt double %i.ab, 1.000000e-05
  br i1 %or.cond240, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.e, %bb.j
  %.1202331 = phi i1 [ %.0201, %bb.j ], [ true, %bb.e ] ; 3 uses
  %.not224 = icmp eq ptr %4, null
  br i1 %.not224, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ae = fadd double %i.ad, f0xC1EFFFFFFFE00000
  %i.af = call double @llvm.fabs.f64(double %i.ae)
  %or.cond241 = fcmp olt double %i.af, 1.000000e-05
  br i1 %or.cond241, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %.thread, %bb.l
  %.1202330 = phi i1 [ %.1202331, %bb.k ], [ %.1202331, %bb.l ], [ %.1202331, %.thread ], [ %.0201, %bb.j ] ; 6 uses
  %.0200 = phi double [ -1.000000e+00, %bb.k ], [ %i.ad, %bb.l ], [ -1.000000e+00, %.thread ], [ %i.z, %bb.j ] ; 3 uses
  %i.ag = fcmp ugt double %.0200, 0.000000e+00
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 24 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 124
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 240
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge245
  %.0197450 = phi ptr [ %2, %bb.m ], [ %.1, %.critedge245 ] ; 32 uses
  %.not232449 = phi i1 [ true, %bb.m ], [ false, %.critedge245 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0197450, i64 304
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not226 = icmp eq ptr %i.ay, null
  br i1 %.not226, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.0197450, i64 296
  %i.ba = load ptr, ptr %i.az, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bb = phi ptr [ %i.ba, %bb.o ], [ %i.ay, %bb.n ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bc = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.0197450, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %.0197450, i64 216
  br label %bb.y

._crit_edge:                                      ; preds = %_apply_limit_factor.exit248, %bb.p
  %i.bg = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.bh = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bi = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.bj = load i32, ptr @g_tres_count, align 4    ; 4 uses
  %i.bk = icmp ne i32 %i.bj, 0                    ; 2 uses
  %or.cond45.i = select i1 %.1202330, i1 %i.bk, i1 false
  br i1 %or.cond45.i, label %.lr.ph.i, label %.loopexit367

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bl = zext i32 %i.bj to i64                   ; 2 uses
  br i1 %7, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %bb.t
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.t ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv60.i
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = icmp eq i16 %i.bn, -1
  br i1 %i.bo, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv60.i
  %i.bq = load i64, ptr %i.bp, align 8
  %.not.us.us.i = icmp eq i64 %i.bq, -1
  br i1 %.not.us.us.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv60.i
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv60.i
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp ugt i64 %i.bv, %i.bs
  br i1 %i.bw, label %_validate_tres_limits_for_assoc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.lr.ph.split.us.split.us.i
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next61.i, %i.bl
  br i1 %exitcond491.not, label %.loopexit367, label %.lr.ph.split.us.split.us.i, !llvm.loop !1

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i, %bb.x
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.x ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv57.i
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = icmp eq i16 %i.by, -1
  br i1 %i.bz, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv57.i
  %i.cb = load i64, ptr %i.ca, align 8
  %.not.us.i = icmp eq i64 %i.cb, -1
  br i1 %.not.us.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv57.i
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv57.i
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = icmp ugt i64 %i.cg, %i.cd
  br i1 %i.ch, label %_validate_tres_limits_for_assoc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.lr.ph.split.us.split.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58.i, %i.bl
  br i1 %exitcond.not, label %.loopexit367, label %.lr.ph.split.us.split.i, !llvm.loop !1

bb.y:                                             ; preds = %.lr.ph, %_apply_limit_factor.exit248
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_apply_limit_factor.exit248 ] ; 5 uses
  %i.ci = load ptr, ptr %i.be, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ck = load i64, ptr %i.cj, align 8            ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.bf, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load i64, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  store i64 %i.co, ptr %i.cp, align 8
  br i1 %i.ag, label %bb.z, label %_apply_limit_factor.exit248

bb.z:                                             ; preds = %bb.y
  %switch.i = icmp ugt i64 %i.ck, -3
  br i1 %switch.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = sitofp i64 %i.ck to double
  %i.cr = fmul double %.0200, %i.cq
  %i.cs = fptosi double %i.cr to i64              ; 4 uses
  %i.ct = icmp slt i64 %i.cs, 0
  %i.cu = call i32 @get_log_level() #14
  %i.cv = icmp sgt i32 %i.cu, 5                   ; 2 uses
  br i1 %i.ct, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cv, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.103) #14
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.104, i64 noundef %i.ck, i64 noundef %i.cs) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %storemerge.i = phi i64 [ -1, %bb.ab ], [ -1, %bb.ac ], [ %i.cs, %bb.ae ], [ %i.cs, %bb.ad ]
  store i64 %storemerge.i, ptr %i.cl, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.af
  %switch.i246 = icmp ugt i64 %i.co, -3
  br i1 %switch.i246, label %_apply_limit_factor.exit248, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = sitofp i64 %i.co to double
  %i.cx = fmul double %.0200, %i.cw
  %i.cy = fptosi double %i.cx to i64              ; 4 uses
  %i.cz = icmp slt i64 %i.cy, 0
  %i.da = call i32 @get_log_level() #14
  %i.db = icmp sgt i32 %i.da, 5                   ; 2 uses
  br i1 %i.cz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.db, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.103) #14
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.104, i64 noundef %i.co, i64 noundef %i.cy) #14
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %storemerge.i247 = phi i64 [ -1, %bb.ai ], [ -1, %bb.aj ], [ %i.cy, %bb.al ], [ %i.cy, %bb.ak ]
  store i64 %storemerge.i247, ptr %i.cp, align 8
  br label %_apply_limit_factor.exit248

_apply_limit_factor.exit248:                      ; preds = %bb.y, %bb.ag, %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.de, label %bb.y, label %._crit_edge, !llvm.loop !46

_validate_tres_limits_for_assoc.exit:             ; preds = %bb.w, %bb.s
  %storemerge.in = phi i64 [ %indvars.iv60.i, %bb.s ], [ %indvars.iv57.i, %bb.w ] ; 4 uses
  %.not227 = icmp eq ptr %5, null
  br i1 %.not227, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_validate_tres_limits_for_assoc.exit
  %storemerge = trunc i64 %storemerge.in to i32
  %i.df = icmp ult i32 %storemerge, 5
  br i1 %i.df, label %switch.lookup, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr @assoc_mgr_tres_array, align 8
  %sext = shl i64 %storemerge.in, 32
  %i.dh = ashr exact i64 %sext, 32                ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.dl) #14
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %_get_tres_state_reason.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dh
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.dr) #14
  %.not27.i = icmp eq i32 %i.ds, 0
  br i1 %.not27.i, label %_get_tres_state_reason.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dt = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.dx) #14
  %.not29.i = icmp eq i32 %i.dy, 0
  %spec.select = select i1 %.not29.i, i32 110, i32 78
  br label %_get_tres_state_reason.exit

switch.lookup:                                    ; preds = %bb.an
  %i.dz = and i64 %storemerge.in, 7
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._acct_policy_validate, i64 %i.dz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_get_tres_state_reason.exit

_get_tres_state_reason.exit:                      ; preds = %switch.lookup, %bb.aq, %bb.ap, %bb.ao
  %.0.i = phi i32 [ 105, %bb.ap ], [ %switch.ext, %switch.lookup ], [ 99, %bb.ao ], [ %spec.select, %bb.aq ]
  store i32 %.0.i, ptr %5, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %_get_tres_state_reason.exit, %_validate_tres_limits_for_assoc.exit
  %i.ea = call i32 @get_log_level() #14
  %i.eb = icmp sgt i32 %i.ea, 5
  br i1 %i.eb, label %bb.as, label %.thread348

bb.as:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %sext546 = shl i64 %storemerge.in, 32
  %i.ef = ashr exact i64 %sext546, 32             ; 3 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.ah, align 8
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ef
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ef
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.53, ptr noundef %i.k, i32 noundef %i.ed, ptr noundef %i.eh, i64 noundef %i.ek, i64 noundef %i.em, ptr noundef %i.eo) #14
  br label %.thread348

.loopexit367:                                     ; preds = %bb.x, %bb.t, %._crit_edge
  %i.ep = load i32, ptr %i.ak, align 4
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %bb.at, label %bb.az

bb.at:                                            ; preds = %.loopexit367
  %i.er = getelementptr inbounds nuw i8, ptr %.0197450, i64 72
  %i.es = load i32, ptr %i.er, align 8            ; 2 uses
  %.not228 = icmp eq i32 %i.es, -1
  br i1 %.not228, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = add i32 %i.eu, %.0205
  %i.ew = icmp ugt i32 %i.ev, %i.es
  br i1 %i.ew, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.ex = getelementptr inbounds nuw i8, ptr %.0197450, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  %.not239 = icmp eq ptr %5, null
  br i1 %.not239, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 63, ptr %5, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ez = call i32 @get_log_level() #14
  %i.fa = icmp sgt i32 %i.ez, 5
  br i1 %i.fa, label %bb.ay, label %.thread348

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = load i32, ptr %i.ex, align 8
  %i.fe = load i32, ptr %i.ey, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.54, ptr noundef %i.k, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %.0205, ptr noundef %i.fg) #14
  br label %.thread348

bb.az:                                            ; preds = %bb.au, %bb.at, %.loopexit367
  br i1 %7, label %.critedge243, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fh = load i32, ptr %i.am, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0197450, i64 104
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load ptr, ptr %i.an, align 8
  br i1 %.1202330, label %bb.bb, label %.thread334.thread549

.thread334.thread549:                             ; preds = %bb.ba
  store i32 0, ptr %i.a, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.0197450, i64 128 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = load i64, ptr %i.aq, align 8
  %i.fp = load i32, ptr %i.al, align 4
  %.not36.i353 = icmp eq i32 %i.fp, -2
  br i1 %.not36.i353, label %bb.ca, label %.critedge243

bb.bb:                                            ; preds = %bb.ba
  %i.fq = load i16, ptr %i.ao, align 2
  %i.fr = icmp ne i16 %i.fq, -1
  %or.cond.i = select i1 %i.fr, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %.lr.ph.i249, label %.thread334.thread

.lr.ph.i249:                                      ; preds = %bb.bb, %_validate_time_limit.exit.thread.i
  %i.fs = phi i32 [ %i.gp, %_validate_time_limit.exit.thread.i ], [ %i.bj, %bb.bb ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_validate_time_limit.exit.thread.i ], [ 0, %bb.bb ] ; 12 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.fu = load i64, ptr %i.ft, align 8            ; 5 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.i
  %i.fw = load i64, ptr %i.fv, align 8            ; 5 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.i ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i, label %_validate_time_limit.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i249
  %i.fz = load i32, ptr %i.al, align 4            ; 2 uses
  %.not36.i.i = icmp eq i32 %i.fz, -2
  br i1 %.not36.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ga = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.gb = icmp eq i16 %i.ga, -1
  br i1 %i.gb, label %_validate_time_limit.exit.thread.i, label %.thread.i

bb.be:                                            ; preds = %bb.bc
  %i.gc = icmp ne i64 %i.fy, -1
  %i.gd = icmp eq i64 %i.fw, -1
  %or.cond.i.i = or i1 %i.gd, %i.gc
  %i.ge = icmp eq i64 %i.fu, -2
  %or.cond3.i.i = or i1 %i.ge, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_validate_time_limit.exit.thread.i, label %bb.bf

.thread.i:                                        ; preds = %bb.bd
  %i.gf = icmp ne i64 %i.fy, -1
  %i.gg = icmp eq i64 %i.fw, -1
  %or.cond.i18.i = or i1 %i.gg, %i.gf
  %i.gh = icmp eq i64 %i.fu, -2
  %or.cond3.i19.i = or i1 %i.gh, %or.cond.i18.i
  br i1 %or.cond3.i19.i, label %_validate_time_limit.exit.thread.i, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gi = udiv i64 %i.fw, %i.fu
  %i.gj = trunc i64 %i.gi to i32                  ; 3 uses
  %.not20.i.i.i = icmp eq i32 %i.gj, 0
  %.sink.i.i.i = select i1 %.not20.i.i.i, i32 %i.fh, i32 %i.gj
  store i32 %.sink.i.i.i, ptr %i.al, align 4
  store i16 1, ptr %i.ao, align 2
  br label %_validate_time_limit.exit.i

bb.bg:                                            ; preds = %.thread.i
  %i.gk = udiv i64 %i.fw, %i.fu
  %i.gl = trunc i64 %i.gk to i32                  ; 4 uses
  %.not19.i.i.i = icmp ne i16 %i.ga, 0
  %i.gm = icmp ugt i32 %i.fz, %i.gl
  %or.cond.i.i.i = and i1 %.not19.i.i.i, %i.gm
  br i1 %or.cond.i.i.i, label %bb.bh, label %_validate_time_limit.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.gl, ptr %i.al, align 4
  br label %_validate_time_limit.exit.i

_validate_time_limit.exit.i:                      ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.gn = phi i32 [ %i.gl, %bb.bh ], [ %i.gl, %bb.bg ], [ %i.gj, %bb.bf ]
  store i64 %i.fw, ptr %i.fx, align 8
  %i.go = load i32, ptr %i.al, align 4
  %.not.i250 = icmp ugt i32 %i.go, %i.gn
  br i1 %.not.i250, label %_validate_tres_time_limits.exit, label %_validate_time_limit.exit.i._validate_time_limit.exit.thread.i_crit_edge

_validate_time_limit.exit.i._validate_time_limit.exit.thread.i_crit_edge: ; preds = %_validate_time_limit.exit.i
  %.pre = load i32, ptr @g_tres_count, align 4
  br label %_validate_time_limit.exit.thread.i

_validate_time_limit.exit.thread.i:               ; preds = %_validate_time_limit.exit.i._validate_time_limit.exit.thread.i_crit_edge, %.thread.i, %bb.be, %bb.bd, %.lr.ph.i249
  %i.gp = phi i32 [ %.pre, %_validate_time_limit.exit.i._validate_time_limit.exit.thread.i_crit_edge ], [ %i.fs, %.thread.i ], [ %i.fs, %bb.be ], [ %i.fs, %bb.bd ], [ %i.fs, %.lr.ph.i249 ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next.i, %i.gq
  br i1 %i.gr, label %.lr.ph.i249, label %.thread334, !llvm.loop !3

_validate_tres_time_limits.exit:                  ; preds = %_validate_time_limit.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.0197450, i64 104
  %.not229 = icmp eq ptr %5, null
  br i1 %.not229, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %_validate_tres_time_limits.exit
  %i.gt = icmp samesign ult i64 %indvars.iv.i, 5
  br i1 %i.gt, label %switch.lookup41, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.gy) #14
  %.not.i252 = icmp eq i32 %i.gz, 0
  br i1 %.not.i252, label %_get_tres_state_reason.exit255, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.i
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.he) #14
  %.not27.i253 = icmp eq i32 %i.hf, 0
  br i1 %.not27.i253, label %_get_tres_state_reason.exit255, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hg = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.hk) #14
  %.not29.i254 = icmp eq i32 %i.hl, 0
  %spec.select358 = select i1 %.not29.i254, i32 111, i32 79
  br label %_get_tres_state_reason.exit255

switch.lookup41:                                  ; preds = %bb.bi
  %switch.gep42 = getelementptr inbounds nuw i8, ptr @switch.table._acct_policy_validate.12, i64 %indvars.iv.i
  %switch.load43 = load i8, ptr %switch.gep42, align 1
  %switch.ext44 = zext i8 %switch.load43 to i32
  br label %_get_tres_state_reason.exit255

_get_tres_state_reason.exit255:                   ; preds = %switch.lookup41, %bb.bl, %bb.bk, %bb.bj
  %.0.i251 = phi i32 [ 100, %bb.bj ], [ %spec.select358, %bb.bl ], [ %switch.ext44, %switch.lookup41 ], [ 106, %bb.bk ]
  store i32 %.0.i251, ptr %5, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %_get_tres_state_reason.exit255, %_validate_tres_time_limits.exit
  %i.hm = call i32 @get_log_level() #14
  %i.hn = icmp sgt i32 %i.hm, 5
  br i1 %i.hn, label %bb.bn, label %.thread348

bb.bn:                                            ; preds = %bb.bm
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = load i32, ptr %i.al, align 4
  %i.hu = zext i32 %i.ht to i64
  %i.hv = load ptr, ptr %i.ah, align 8
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = mul i64 %i.hx, %i.hu
  %i.hz = load ptr, ptr %i.gs, align 8
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.55, ptr noundef %i.k, i32 noundef %i.hp, ptr noundef %i.hs, i64 noundef %i.hy, i64 noundef %i.ib, ptr noundef %i.id) #14
  br label %.thread348

.thread334:                                       ; preds = %_validate_time_limit.exit.thread.i
  %.pre494 = load i32, ptr %i.am, align 8
  %.pre495 = load ptr, ptr %i.ah, align 8
  br label %.thread334.thread

.thread334.thread:                                ; preds = %bb.bb, %.thread334
  %i.ie = phi i32 [ %.pre494, %.thread334 ], [ %i.fh, %bb.bb ]
  %i.if = phi ptr [ %.pre495, %.thread334 ], [ %i.bg, %bb.bb ]
  %i.ig = phi i32 [ %i.gp, %.thread334 ], [ %i.bj, %bb.bb ] ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.ih = load ptr, ptr %i.ap, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.0197450, i64 120
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.il = icmp ne i16 %i.ik, -1
  %i.im = icmp ne i32 %i.ig, 0
  %or.cond.i257 = select i1 %i.il, i1 %i.im, i1 false
  br i1 %or.cond.i257, label %.lr.ph.i258, label %.thread338.thread355

.lr.ph.i258:                                      ; preds = %.thread334.thread, %_validate_time_limit.exit.thread.i269
  %i.in = phi i32 [ %i.jk, %_validate_time_limit.exit.thread.i269 ], [ %i.ig, %.thread334.thread ] ; 4 uses
  %indvars.iv.i259 = phi i64 [ %indvars.iv.next.i270, %_validate_time_limit.exit.thread.i269 ], [ 0, %.thread334.thread ] ; 13 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i259
  %i.ip = load i64, ptr %i.io, align 8            ; 5 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i259
  %i.ir = load i64, ptr %i.iq, align 8            ; 5 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.i259 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8            ; 2 uses
  %.not.i.i260 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i260, label %_validate_time_limit.exit.thread.i269, label %bb.bo
end_hunk_0
begin_hunk_1_@_acct_policy_validate:bb.a

_validate_time_limit.exit.i267._validate_time_limit.exit.thread.i269_crit_edge: ; preds = %_validate_time_limit.exit.i267
  %.pre496 = load i32, ptr @g_tres_count, align 4
  br label %_validate_time_limit.exit.thread.i269

_validate_time_limit.exit.thread.i269:            ; preds = %_validate_time_limit.exit.i267._validate_time_limit.exit.thread.i269_crit_edge, %.thread.i262, %bb.bq, %bb.bp, %.lr.ph.i258
  %i.jk = phi i32 [ %.pre496, %_validate_time_limit.exit.i267._validate_time_limit.exit.thread.i269_crit_edge ], [ %i.in, %.thread.i262 ], [ %i.in, %bb.bq ], [ %i.in, %bb.bp ], [ %i.in, %.lr.ph.i258 ] ; 2 uses
  %indvars.iv.next.i270 = add nuw nsw i64 %indvars.iv.i259, 1 ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = icmp samesign ult i64 %indvars.iv.next.i270, %i.jl
  br i1 %i.jm, label %.lr.ph.i258, label %.thread338, !llvm.loop !3

_validate_tres_time_limits.exit275:               ; preds = %_validate_time_limit.exit.i267
  %i.jn = getelementptr inbounds nuw i8, ptr %.0197450, i64 120
  %.not230 = icmp eq ptr %5, null
  br i1 %.not230, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %_validate_tres_time_limits.exit275
  %i.jo = icmp samesign ult i64 %indvars.iv.i259, 5
  br i1 %i.jo, label %switch.lookup45, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jp = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i259
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.jt) #14
  %.not.i277 = icmp eq i32 %i.ju, 0
  br i1 %.not.i277, label %_get_tres_state_reason.exit280, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jv = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.i259
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.jz) #14
  %.not27.i278 = icmp eq i32 %i.ka, 0
  br i1 %.not27.i278, label %_get_tres_state_reason.exit280, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kb = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv.i259
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.kf) #14
  %.not29.i279 = icmp eq i32 %i.kg, 0
  %spec.select359 = select i1 %.not29.i279, i32 112, i32 80
  br label %_get_tres_state_reason.exit280

switch.lookup45:                                  ; preds = %bb.bu
  %switch.gep46 = getelementptr inbounds nuw i8, ptr @switch.table._acct_policy_validate.13, i64 %indvars.iv.i259
  %switch.load47 = load i8, ptr %switch.gep46, align 1
  %switch.ext48 = zext i8 %switch.load47 to i32
  br label %_get_tres_state_reason.exit280

_get_tres_state_reason.exit280:                   ; preds = %switch.lookup45, %bb.bx, %bb.bw, %bb.bv
  %.0.i276 = phi i32 [ 107, %bb.bw ], [ %spec.select359, %bb.bx ], [ %switch.ext48, %switch.lookup45 ], [ 101, %bb.bv ]
  store i32 %.0.i276, ptr %5, align 4
  br label %bb.by

bb.by:                                            ; preds = %_get_tres_state_reason.exit280, %_validate_tres_time_limits.exit275
  %i.kh = call i32 @get_log_level() #14
  %i.ki = icmp sgt i32 %i.kh, 5
  br i1 %i.ki, label %bb.bz, label %.thread348

bb.bz:                                            ; preds = %bb.by
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.kk = load i32, ptr %i.kj, align 8
  %i.kl = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i259
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = load i32, ptr %i.al, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = load ptr, ptr %i.ah, align 8
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.i259
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = mul i64 %i.ks, %i.kp
  %i.ku = load ptr, ptr %i.jn, align 8
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i259
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.56, ptr noundef %i.k, i32 noundef %i.kk, ptr noundef %i.kn, i64 noundef %i.kt, i64 noundef %i.kw, ptr noundef %i.ky) #14
  br label %.thread348

.thread338:                                       ; preds = %_validate_time_limit.exit.thread.i269
  %i.kz = trunc nuw nsw i64 %indvars.iv.i259 to i32
  store i32 %i.kz, ptr %i.a, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %.0197450, i64 128 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 8            ; 3 uses
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %i.ld = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.le = load i32, ptr %i.al, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.le, -2
  br i1 %.not36.i, label %bb.ca, label %.thread338..thread357_crit_edge

.thread338..thread357_crit_edge:                  ; preds = %.thread338
  %.pre497 = load i16, ptr %i.ao, align 2
  br label %.thread357

.thread338.thread355:                             ; preds = %.thread334.thread
  %i.lf = getelementptr inbounds nuw i8, ptr %.0197450, i64 128 ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8            ; 3 uses
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.lj = load i32, ptr %i.al, align 4            ; 2 uses
  %.not36.i356 = icmp eq i32 %i.lj, -2
  br i1 %.not36.i356, label %bb.ca, label %.thread357

.thread357:                                       ; preds = %.thread338..thread357_crit_edge, %.thread338.thread355
  %i.lk = phi i16 [ %i.ik, %.thread338.thread355 ], [ %.pre497, %.thread338..thread357_crit_edge ] ; 2 uses
  %i.ll = phi ptr [ %i.lf, %.thread338.thread355 ], [ %i.la, %.thread338..thread357_crit_edge ]
  %i.lm = phi i32 [ %i.lg, %.thread338.thread355 ], [ %i.lb, %.thread338..thread357_crit_edge ] ; 4 uses
  %i.ln = phi i64 [ %i.lh, %.thread338.thread355 ], [ %i.lc, %.thread338..thread357_crit_edge ]
  %i.lo = phi i64 [ %i.li, %.thread338.thread355 ], [ %i.ld, %.thread338..thread357_crit_edge ]
  %i.lp = phi i32 [ %i.lj, %.thread338.thread355 ], [ %i.le, %.thread338..thread357_crit_edge ] ; 2 uses
  %i.lq = icmp eq i16 %i.lk, -1
  br i1 %i.lq, label %.critedge243, label %.thread339

bb.ca:                                            ; preds = %.thread338.thread355, %.thread334.thread549, %.thread338
  %i.lr = phi i64 [ %i.fo, %.thread334.thread549 ], [ %i.ld, %.thread338 ], [ %i.li, %.thread338.thread355 ]
  %i.ls = phi i64 [ %i.fn, %.thread334.thread549 ], [ %i.lc, %.thread338 ], [ %i.lh, %.thread338.thread355 ]
  %i.lt = phi i32 [ %i.fm, %.thread334.thread549 ], [ %i.lb, %.thread338 ], [ %i.lg, %.thread338.thread355 ] ; 3 uses
  %i.lu = phi ptr [ %i.fl, %.thread334.thread549 ], [ %i.la, %.thread338 ], [ %i.lf, %.thread338.thread355 ]
  %i.lv = and i64 %i.lr, 4294967295
  %i.lw = icmp ne i64 %i.lv, 4294967295
  %i.lx = icmp eq i64 %i.ls, 4294967295
  %or.cond6.i = or i1 %i.lw, %i.lx
  br i1 %or.cond6.i, label %.critedge243, label %bb.cb

.thread339:                                       ; preds = %.thread357
  %i.ly = and i64 %i.lo, 4294967295
  %i.lz = icmp ne i64 %i.ly, 4294967295
  %i.ma = icmp eq i64 %i.ln, 4294967295
  %or.cond6.i340 = or i1 %i.ma, %i.lz
  br i1 %or.cond6.i340, label %.critedge243, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mb = load i32, ptr %i.am, align 8
  %.not20.i.i = icmp eq i32 %i.lt, 0
  %.sink.i.i = select i1 %.not20.i.i, i32 %i.mb, i32 %i.lt
  store i32 %.sink.i.i, ptr %i.al, align 4
  store i16 1, ptr %i.ao, align 2
  %.pre498 = load i32, ptr %i.al, align 4
  br label %_validate_time_limit.exit

bb.cc:                                            ; preds = %.thread339
  %.not19.i.i = icmp ne i16 %i.lk, 0
  %i.mc = icmp ugt i32 %i.lp, %i.lm
  %or.cond.i.i283 = and i1 %i.mc, %.not19.i.i
  br i1 %or.cond.i.i283, label %_validate_time_limit.exit.thread, label %_validate_time_limit.exit

_validate_time_limit.exit.thread:                 ; preds = %bb.cc
  store i32 %i.lm, ptr %i.al, align 4
  store i32 %i.lm, ptr %i.aq, align 8
  br label %.critedge243

_validate_time_limit.exit:                        ; preds = %bb.cb, %bb.cc
  %i.md = phi i32 [ %.pre498, %bb.cb ], [ %i.lp, %bb.cc ]
  %i.me = phi i32 [ %i.lt, %bb.cb ], [ %i.lm, %bb.cc ] ; 2 uses
  %i.mf = phi ptr [ %i.lu, %bb.cb ], [ %i.ll, %bb.cc ]
  store i32 %i.me, ptr %i.aq, align 8
  %.not364 = icmp ugt i32 %i.md, %i.me
  br i1 %.not364, label %bb.cd, label %.critedge243

bb.cd:                                            ; preds = %_validate_time_limit.exit
  %.not231 = icmp eq ptr %5, null
  br i1 %.not231, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 64, ptr %5, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.mg = call i32 @get_log_level() #14
  %i.mh = icmp sgt i32 %i.mg, 5
  br i1 %i.mh, label %bb.cg, label %.thread348

bb.cg:                                            ; preds = %bb.cf
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.mj = load i32, ptr %i.mi, align 8
  %i.mk = load i32, ptr %i.al, align 4
  %i.ml = load i32, ptr %i.mf, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.57, ptr noundef %i.k, i32 noundef %i.mj, i32 noundef %i.mk, i32 noundef %i.ml, ptr noundef %i.mn) #14
  br label %.thread348

.critedge243:                                     ; preds = %bb.az, %_validate_time_limit.exit.thread, %.thread334.thread549, %.thread339, %bb.ca, %.thread357, %_validate_time_limit.exit
  br i1 %.not232449, label %bb.ch, label %.critedge245, !llvm.loop !47

bb.ch:                                            ; preds = %.critedge243
  %i.mo = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.mp = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.mq = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.mr = load i32, ptr @g_tres_count, align 4    ; 3 uses
  %i.ms = icmp ne i32 %i.mr, 0                    ; 2 uses
  %or.cond45.i284 = select i1 %.1202330, i1 %i.ms, i1 false
  br i1 %or.cond45.i284, label %.lr.ph.i286, label %.loopexit

.lr.ph.i286:                                      ; preds = %bb.ch
  %i.mt = zext i32 %i.mr to i64                   ; 2 uses
  br i1 %7, label %.lr.ph.split.us.split.us.i291, label %.lr.ph.split.us.split.i287

.lr.ph.split.us.split.us.i291:                    ; preds = %.lr.ph.i286, %bb.cl
  %indvars.iv60.i292 = phi i64 [ %indvars.iv.next61.i294, %bb.cl ], [ 0, %.lr.ph.i286 ] ; 6 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mq, i64 %indvars.iv60.i292
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = icmp eq i16 %i.mv, -1
  br i1 %i.mw, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.split.us.split.us.i291
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv60.i292
  %i.my = load i64, ptr %i.mx, align 8
  %.not.us.us.i293 = icmp eq i64 %i.my, -1
  br i1 %.not.us.us.i293, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv60.i292
  %i.na = load i64, ptr %i.mz, align 8            ; 2 uses
  %i.nb = icmp eq i64 %i.na, -1
  br i1 %i.nb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv60.i292
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = icmp ugt i64 %i.nd, %i.na
  br i1 %i.ne, label %_validate_tres_limits_for_assoc.exit295, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %.lr.ph.split.us.split.us.i291
  %indvars.iv.next61.i294 = add nuw nsw i64 %indvars.iv60.i292, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next61.i294, %i.mt
  br i1 %exitcond493.not, label %.loopexit, label %.lr.ph.split.us.split.us.i291, !llvm.loop !1

.lr.ph.split.us.split.i287:                       ; preds = %.lr.ph.i286, %bb.cp
  %indvars.iv57.i288 = phi i64 [ %indvars.iv.next58.i290, %bb.cp ], [ 0, %.lr.ph.i286 ] ; 6 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.mq, i64 %indvars.iv57.i288
  %i.ng = load i16, ptr %i.nf, align 2
  %i.nh = icmp eq i16 %i.ng, -1
  br i1 %i.nh, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.split.us.split.i287
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv57.i288
  %i.nj = load i64, ptr %i.ni, align 8
  %.not.us.i289 = icmp eq i64 %i.nj, -1
  br i1 %.not.us.i289, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv57.i288
  %i.nl = load i64, ptr %i.nk, align 8            ; 2 uses
  %i.nm = icmp eq i64 %i.nl, -1
  br i1 %i.nm, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv57.i288
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = icmp ugt i64 %i.no, %i.nl
  br i1 %i.np, label %_validate_tres_limits_for_assoc.exit295, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %.lr.ph.split.us.split.i287
  %indvars.iv.next58.i290 = add nuw nsw i64 %indvars.iv57.i288, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next58.i290, %i.mt
  br i1 %exitcond492.not, label %.loopexit, label %.lr.ph.split.us.split.i287, !llvm.loop !1

_validate_tres_limits_for_assoc.exit295:          ; preds = %bb.co, %bb.ck
  %storemerge454.in = phi i64 [ %indvars.iv60.i292, %bb.ck ], [ %indvars.iv57.i288, %bb.co ] ; 4 uses
  %.not233 = icmp eq ptr %5, null
  br i1 %.not233, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %_validate_tres_limits_for_assoc.exit295
  %storemerge454 = trunc i64 %storemerge454.in to i32
  %i.nq = icmp ult i32 %storemerge454, 5
  br i1 %i.nq, label %switch.lookup49, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nr = load ptr, ptr @assoc_mgr_tres_array, align 8
  %sext547 = shl i64 %storemerge454.in, 32
  %i.ns = ashr exact i64 %sext547, 32             ; 3 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nr, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.nw) #14
  %.not.i297 = icmp eq i32 %i.nx, 0
  br i1 %.not.i297, label %_get_tres_state_reason.exit300, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ny = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.ns
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.oc) #14
  %.not27.i298 = icmp eq i32 %i.od, 0
  br i1 %.not27.i298, label %_get_tres_state_reason.exit300, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oe = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.of = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.ns
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.oi) #14
  %.not29.i299 = icmp eq i32 %i.oj, 0
  %spec.select360 = select i1 %.not29.i299, i32 113, i32 81
  br label %_get_tres_state_reason.exit300

switch.lookup49:                                  ; preds = %bb.cq
  %i.ok = and i64 %storemerge454.in, 7
  %switch.gep50 = getelementptr inbounds nuw i8, ptr @switch.table._acct_policy_validate.14, i64 %i.ok
  %switch.load51 = load i8, ptr %switch.gep50, align 1
  %switch.ext52 = zext i8 %switch.load51 to i32
  br label %_get_tres_state_reason.exit300

_get_tres_state_reason.exit300:                   ; preds = %switch.lookup49, %bb.ct, %bb.cs, %bb.cr
  %.0.i296 = phi i32 [ 102, %bb.cr ], [ %spec.select360, %bb.ct ], [ 108, %bb.cs ], [ %switch.ext52, %switch.lookup49 ]
  store i32 %.0.i296, ptr %5, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %_get_tres_state_reason.exit300, %_validate_tres_limits_for_assoc.exit295
  %i.ol = call i32 @get_log_level() #14
  %i.om = icmp sgt i32 %i.ol, 5
  br i1 %i.om, label %bb.cv, label %.thread348

bb.cv:                                            ; preds = %bb.cu
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.oo = load i32, ptr %i.on, align 8
  %i.op = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %sext548 = shl i64 %storemerge454.in, 32
  %i.oq = ashr exact i64 %sext548, 32             ; 3 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.oq
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = load ptr, ptr %i.ah, align 8
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.oq
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.oq
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.58, ptr noundef %i.k, i32 noundef %i.oo, ptr noundef %i.os, i64 noundef %i.ov, i64 noundef %i.ox, ptr noundef %i.oz) #14
  br label %.thread348

.loopexit:                                        ; preds = %bb.cp, %bb.cl, %bb.ch
  store i32 0, ptr %i.a, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.pb = load i64, ptr %i.pa, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %.0197450, i64 232
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = load ptr, ptr %i.as, align 8
  %i.pf = call fastcc zeroext i1 @_validate_tres_limits_for_assoc(ptr noundef %i.a, ptr noundef %i.mo, i64 noundef %i.pb, ptr noundef %i.pd, ptr noundef %i.pe, ptr noundef %i.mq, i1 noundef zeroext %.1202330, i1 noundef zeroext %7)
  br i1 %i.pf, label %bb.dd, label %bb.cw

bb.cw:                                            ; preds = %.loopexit
  %i.pg = getelementptr inbounds nuw i8, ptr %.0197450, i64 232
  %.not234 = icmp eq ptr %5, null
  br i1 %.not234, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ph = load i32, ptr %i.a, align 4             ; 3 uses
  %i.pi = icmp ult i32 %i.ph, 5
  br i1 %i.pi, label %switch.lookup53, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pj = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.pk = sext i32 %i.ph to i64                   ; 3 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.po) #14
  %.not.i302 = icmp eq i32 %i.pp, 0
  br i1 %.not.i302, label %_get_tres_state_reason.exit305, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pq = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %i.pk
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.pu) #14
  %.not27.i303 = icmp eq i32 %i.pv, 0
  br i1 %.not27.i303, label %_get_tres_state_reason.exit305, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pw = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.pk
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.qa) #14
  %.not29.i304 = icmp eq i32 %i.qb, 0
  %spec.select361 = select i1 %.not29.i304, i32 114, i32 82
  br label %_get_tres_state_reason.exit305

switch.lookup53:                                  ; preds = %bb.cx
  %i.qc = zext nneg i32 %i.ph to i64
  %switch.gep54 = getelementptr inbounds nuw i8, ptr @switch.table._acct_policy_validate.15, i64 %i.qc
  %switch.load55 = load i8, ptr %switch.gep54, align 1
  %switch.ext56 = zext i8 %switch.load55 to i32
  br label %_get_tres_state_reason.exit305

_get_tres_state_reason.exit305:                   ; preds = %bb.cz, %switch.lookup53, %bb.da, %bb.cy
  %.0.i301 = phi i32 [ 103, %bb.cy ], [ %spec.select361, %bb.da ], [ %switch.ext56, %switch.lookup53 ], [ 82, %bb.cz ]
  store i32 %.0.i301, ptr %5, align 4
  br label %bb.db

bb.db:                                            ; preds = %_get_tres_state_reason.exit305, %bb.cw
  %i.qd = call i32 @get_log_level() #14
  %i.qe = icmp sgt i32 %i.qd, 5
  br i1 %i.qe, label %bb.dc, label %.thread348

bb.dc:                                            ; preds = %bb.db
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.qg = load i32, ptr %i.qf, align 8
  %i.qh = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.qi = load i32, ptr %i.a, align 4
  %i.qj = sext i32 %i.qi to i64                   ; 3 uses
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.qh, i64 %i.qj
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %i.qj
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = udiv i64 %i.qo, %i.qq
  %i.qs = load ptr, ptr %i.pg, align 8
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.qj
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.59, ptr noundef %i.k, i32 noundef %i.qg, ptr noundef %i.ql, i64 noundef %i.qr, i64 noundef %i.qu, ptr noundef %i.qw) #14
  br label %.thread348

bb.dd:                                            ; preds = %.loopexit
  %i.qx = load i32, ptr %i.at, align 8
  %i.qy = icmp eq i32 %i.qx, -1
  %i.qz = load i32, ptr %i.au, align 4
  %i.ra = icmp eq i32 %i.qz, -1
  %or.cond4 = select i1 %i.qy, i1 %i.ra, i1 false
  br i1 %or.cond4, label %bb.de, label %bb.dk

bb.de:                                            ; preds = %bb.dd
  %i.rb = getelementptr inbounds nuw i8, ptr %.0197450, i64 168
  %i.rc = load i32, ptr %i.rb, align 8            ; 2 uses
  %.not235 = icmp eq i32 %i.rc, -1
  br i1 %.not235, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  %i.re = load i32, ptr %i.rd, align 4
  %i.rf = add i32 %i.re, %.0205
  %i.rg = icmp ugt i32 %i.rf, %i.rc
  br i1 %i.rg, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.rh = getelementptr inbounds nuw i8, ptr %.0197450, i64 168
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  %.not238 = icmp eq ptr %5, null
  br i1 %.not238, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i32 70, ptr %5, align 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.rj = call i32 @get_log_level() #14
  %i.rk = icmp sgt i32 %i.rj, 5
  br i1 %i.rk, label %bb.dj, label %.thread348

bb.dj:                                            ; preds = %bb.di
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.rm = load i32, ptr %i.rl, align 8
  %i.rn = load i32, ptr %i.rh, align 8
  %i.ro = load i32, ptr %i.ri, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.60, ptr noundef %i.k, i32 noundef %i.rm, i32 noundef %i.rn, i32 noundef %i.ro, i32 noundef %.0205, ptr noundef %i.rq) #14
  br label %.thread348

bb.dk:                                            ; preds = %bb.df, %bb.de, %bb.dd
  br i1 %7, label %.critedge245, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rr = load i32, ptr %i.am, align 8            ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0197450, i64 184
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = load ptr, ptr %i.av, align 8
  br i1 %.1202330, label %bb.dm, label %.thread346

bb.dm:                                            ; preds = %bb.dl
  %i.rv = load i16, ptr %i.ao, align 2
  %i.rw = icmp ne i16 %i.rv, -1
  %or.cond.i307 = select i1 %i.rw, i1 %i.ms, i1 false
  br i1 %or.cond.i307, label %.lr.ph.i308, label %.thread346

.lr.ph.i308:                                      ; preds = %bb.dm, %_validate_time_limit.exit.thread.i319
  %i.rx = phi i32 [ %i.su, %_validate_time_limit.exit.thread.i319 ], [ %i.mr, %bb.dm ] ; 4 uses
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i320, %_validate_time_limit.exit.thread.i319 ], [ 0, %bb.dm ] ; 8 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.i309
  %i.rz = load i64, ptr %i.ry, align 8            ; 5 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv.i309
  %i.sb = load i64, ptr %i.sa, align 8            ; 5 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %indvars.iv.i309 ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8            ; 2 uses
  %.not.i.i310 = icmp eq i64 %i.rz, 0
  br i1 %.not.i.i310, label %_validate_time_limit.exit.thread.i319, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i308
  %i.se = load i32, ptr %i.al, align 4            ; 2 uses
  %.not36.i.i311 = icmp eq i32 %i.se, -2
  br i1 %.not36.i.i311, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sf = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.sg = icmp eq i16 %i.sf, -1
  br i1 %i.sg, label %_validate_time_limit.exit.thread.i319, label %.thread.i312

bb.dp:                                            ; preds = %bb.dn
  %i.sh = icmp ne i64 %i.sd, -1
  %i.si = icmp eq i64 %i.sb, -1
  %or.cond.i.i321 = or i1 %i.si, %i.sh
  %i.sj = icmp eq i64 %i.rz, -2
  %or.cond3.i.i322 = or i1 %i.sj, %or.cond.i.i321
  br i1 %or.cond3.i.i322, label %_validate_time_limit.exit.thread.i319, label %bb.dq

.thread.i312:                                     ; preds = %bb.do
  %i.sk = icmp ne i64 %i.sd, -1
  %i.sl = icmp eq i64 %i.sb, -1
  %or.cond.i18.i313 = or i1 %i.sl, %i.sk
  %i.sm = icmp eq i64 %i.rz, -2
  %or.cond3.i19.i314 = or i1 %i.sm, %or.cond.i18.i313
  br i1 %or.cond3.i19.i314, label %_validate_time_limit.exit.thread.i319, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.sn = udiv i64 %i.sb, %i.rz
  %i.so = trunc i64 %i.sn to i32                  ; 3 uses
  %.not20.i.i.i323 = icmp eq i32 %i.so, 0
  %.sink.i.i.i324 = select i1 %.not20.i.i.i323, i32 %i.rr, i32 %i.so
  store i32 %.sink.i.i.i324, ptr %i.al, align 4
  store i16 1, ptr %i.ao, align 2
  br label %_validate_time_limit.exit.i317

bb.dr:                                            ; preds = %.thread.i312
  %i.sp = udiv i64 %i.sb, %i.rz
  %i.sq = trunc i64 %i.sp to i32                  ; 4 uses
  %.not19.i.i.i315 = icmp ne i16 %i.sf, 0
  %i.sr = icmp ugt i32 %i.se, %i.sq
  %or.cond.i.i.i316 = and i1 %.not19.i.i.i315, %i.sr
  br i1 %or.cond.i.i.i316, label %bb.ds, label %_validate_time_limit.exit.i317

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.sq, ptr %i.al, align 4
  br label %_validate_time_limit.exit.i317

_validate_time_limit.exit.i317:                   ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.ss = phi i32 [ %i.sq, %bb.ds ], [ %i.sq, %bb.dr ], [ %i.so, %bb.dq ]
  store i64 %i.sb, ptr %i.sc, align 8
  %i.st = load i32, ptr %i.al, align 4
  %.not.i318 = icmp ugt i32 %i.st, %i.ss
  br i1 %.not.i318, label %_validate_tres_time_limits.exit325, label %_validate_time_limit.exit.i317._validate_time_limit.exit.thread.i319_crit_edge

_validate_time_limit.exit.i317._validate_time_limit.exit.thread.i319_crit_edge: ; preds = %_validate_time_limit.exit.i317
  %.pre499 = load i32, ptr @g_tres_count, align 4
  br label %_validate_time_limit.exit.thread.i319

_validate_time_limit.exit.thread.i319:            ; preds = %_validate_time_limit.exit.i317._validate_time_limit.exit.thread.i319_crit_edge, %.thread.i312, %bb.dp, %bb.do, %.lr.ph.i308
  %i.su = phi i32 [ %.pre499, %_validate_time_limit.exit.i317._validate_time_limit.exit.thread.i319_crit_edge ], [ %i.rx, %.thread.i312 ], [ %i.rx, %bb.dp ], [ %i.rx, %bb.do ], [ %i.rx, %.lr.ph.i308 ] ; 2 uses
  %indvars.iv.next.i320 = add nuw nsw i64 %indvars.iv.i309, 1 ; 2 uses
  %i.sv = zext i32 %i.su to i64
  %i.sw = icmp samesign ult i64 %indvars.iv.next.i320, %i.sv
  br i1 %i.sw, label %.lr.ph.i308, label %.thread346.loopexit, !llvm.loop !3

_validate_tres_time_limits.exit325:               ; preds = %_validate_time_limit.exit.i317
  %i.sx = getelementptr inbounds nuw i8, ptr %.0197450, i64 184
  %.not236 = icmp eq ptr %5, null
  br i1 %.not236, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_validate_tres_time_limits.exit325
  %i.sy = trunc nuw nsw i64 %indvars.iv.i309 to i32
  %i.sz = call fastcc i32 @_get_tres_state_reason(i32 noundef %i.sy, i32 noundef 83)
  store i32 %i.sz, ptr %5, align 4
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %_validate_tres_time_limits.exit325
  %i.ta = call i32 @get_log_level() #14
  %i.tb = icmp sgt i32 %i.ta, 5
  br i1 %i.tb, label %bb.dv, label %.thread348

bb.dv:                                            ; preds = %bb.du
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.td = load i32, ptr %i.tc, align 8
  %i.te = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.i309
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = load i32, ptr %i.al, align 4
  %i.ti = zext i32 %i.th to i64
  %i.tj = load ptr, ptr %i.ah, align 8
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv.i309
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = mul i64 %i.tl, %i.ti
  %i.tn = load ptr, ptr %i.sx, align 8
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.i309
  %i.tp = load i64, ptr %i.to, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.61, ptr noundef %i.k, i32 noundef %i.td, ptr noundef %i.tg, i64 noundef %i.tm, i64 noundef %i.tp, ptr noundef %i.tr) #14
  br label %.thread348

.thread346.loopexit:                              ; preds = %_validate_time_limit.exit.thread.i319
  %.pre500 = load i32, ptr %i.am, align 8
  br label %.thread346

.thread346:                                       ; preds = %.thread346.loopexit, %bb.dl, %bb.dm
  %i.ts = phi i32 [ %.pre500, %.thread346.loopexit ], [ %i.rr, %bb.dl ], [ %i.rr, %bb.dm ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.0197450, i64 240
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = zext i32 %i.tu to i64
  %i.tw = call fastcc zeroext i1 @_validate_time_limit(ptr noundef nonnull %i.al, i32 noundef %i.ts, i64 noundef 1, i64 noundef %i.tv, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ao, i1 noundef zeroext %.1202330, i1 noundef zeroext false)
  br i1 %i.tw, label %.critedge245, label %bb.dw

bb.dw:                                            ; preds = %.thread346
  %i.tx = getelementptr inbounds nuw i8, ptr %.0197450, i64 240
  %.not237 = icmp eq ptr %5, null
  br i1 %.not237, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i32 69, ptr %5, align 4
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ty = call i32 @get_log_level() #14
  %i.tz = icmp sgt i32 %i.ty, 5
  br i1 %i.tz, label %bb.dz, label %.thread348

bb.dz:                                            ; preds = %bb.dy
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ub = load i32, ptr %i.ua, align 8
  %i.uc = load i32, ptr %i.al, align 4
  %i.ud = load i32, ptr %i.tx, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.0197450, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.62, ptr noundef %i.k, i32 noundef %i.ub, i32 noundef %i.uc, i32 noundef %i.ud, ptr noundef %i.uf) #14
  br label %.thread348

.thread348:                                       ; preds = %bb.ar, %bb.db, %bb.du, %bb.di, %bb.cu, %bb.cf, %bb.by, %bb.bm, %bb.ax, %bb.as, %bb.ay, %bb.bn, %bb.bz, %bb.cg, %bb.cv, %bb.dc, %bb.dj, %bb.dv, %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit370

.critedge245:                                     ; preds = %.thread346, %bb.dk, %.critedge243
  %.pn.in = getelementptr inbounds nuw i8, ptr %.0197450, i64 296
  %.pn = load ptr, ptr %.pn.in, align 8
  %.1.in = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %.1 = load ptr, ptr %.1.in, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not225 = icmp eq ptr %.1, null
  br i1 %.not225, label %.loopexit370, label %bb.n

.loopexit370:                                     ; preds = %.critedge245, %.thread348, %bb.h, %bb.i
  %.3 = phi i1 [ false, %.thread348 ], [ false, %bb.h ], [ false, %bb.i ], [ true, %.critedge245 ]
  call void @slurmdb_free_qos_rec_members(ptr noundef nonnull %8) #14
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit370, %bb.b
  %.0196 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit370 ]
  call void @llvm.stackrestore.p0(ptr %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i1 %.0196
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_qos_policy_validate(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(none) %6, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9, i1 noundef zeroext %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread438, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not262 = icmp eq ptr %i.c, null
  br i1 %.not262, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 23 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr @g_tres_count, align 4     ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  %or.cond88.i = select i1 %10, i1 %i.p, i1 false
  br i1 %or.cond88.i, label %.lr.ph.i, label %_validate_tres_limits_for_qos.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %i.q = phi i32 [ %i.ac, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.d ] ; 17 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.not.i = icmp ne i64 %i.x, -1
  %.old1.i = icmp eq i64 %i.s, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.old1.i
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.s, ptr %i.w, align 8
  %.pre91.i = load i64, ptr %i.r, align 8
  %i.ab = icmp ugt i64 %i.z, %.pre91.i
  br i1 %i.ab, label %_validate_tres_limits_for_qos.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr @g_tres_count, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e, %bb.f, %.lr.ph.i
  %i.ac = phi i32 [ %.pre, %._crit_edge ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_validate_tres_limits_for_qos.exit.thread.loopexit, !llvm.loop !2

_validate_tres_limits_for_qos.exit:               ; preds = %bb.g
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.af, ptr %i.a, align 4
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.i, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.i, label %_validate_tres_limits_for_qos.exit._validate_tres_limits_for_qos.exit.thread_crit_edge

_validate_tres_limits_for_qos.exit._validate_tres_limits_for_qos.exit.thread_crit_edge: ; preds = %_validate_tres_limits_for_qos.exit
  %.pre484 = load i32, ptr @g_tres_count, align 4
  br label %_validate_tres_limits_for_qos.exit.thread

bb.i:                                             ; preds = %_validate_tres_limits_for_qos.exit
  %.not263 = icmp eq ptr %5, null
  br i1 %.not263, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i64 %indvars.iv.i, 5
  br i1 %i.an, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 @xstrcmp(ptr noundef nonnull @.str.105, ptr noundef %i.as) #14
  %.not.i288 = icmp eq i32 %i.at, 0
  br i1 %.not.i288, label %_get_tres_state_reason.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call i32 @xstrcmp(ptr noundef nonnull @.str.106, ptr noundef %i.ay) #14
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %_get_tres_state_reason.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i32 @xstrcmp(ptr noundef nonnull @.str.107, ptr noundef %i.be) #14
  %.not29.i = icmp eq i32 %i.bf, 0
  %spec.select = select i1 %.not29.i, i32 168, i32 175
  br label %_get_tres_state_reason.exit

switch.lookup:                                    ; preds = %bb.j
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._qos_policy_validate, i64 %indvars.iv.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_get_tres_state_reason.exit

_get_tres_state_reason.exit:                      ; preds = %switch.lookup, %bb.m, %bb.l, %bb.k
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ %spec.select, %bb.m ], [ 173, %bb.l ], [ 171, %bb.k ]
  store i32 %.0.i, ptr %5, align 4
  br label %bb.n

bb.n:                                             ; preds = %_get_tres_state_reason.exit, %bb.i
  %i.bg = tail call i32 @get_log_level() #14
  %i.bh = icmp sgt i32 %i.bg, 5
  br i1 %i.bh, label %bb.o, label %.thread438

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 760
end_hunk_1
