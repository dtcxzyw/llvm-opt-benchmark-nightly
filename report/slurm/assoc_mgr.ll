Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/assoc_mgr?download=true
inline.NumInlined: 108
inline.NumDeleted: 39
begin_hunk_0_@assoc_mgr_tres_weighted:bb.a
  %i.ai = icmp eq i64 %i.af, -3
  %or.cond.us82 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.us82, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.aj = tail call i32 @get_log_level() #16
  %i.ak = icmp sgt i32 %i.aj, 6
  br i1 %i.ak, label %bb.l, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.k
  %.pre108 = fmul double %i.y, %i.ag
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = fmul double %i.y, %i.ag                 ; 2 uses
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.126, ptr noundef %i.an, double noundef %i.ag, double noundef %i.y, double noundef %i.ao) #16
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge103, %bb.l
  %.pre-phi109 = phi double [ %.pre108, %._crit_edge103 ], [ %i.ao, %bb.l ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv96 to i32
  switch i32 %i.ap, label %bb.n [
    i32 3, label %bb.p
    i32 1, label %bb.p
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call i32 @xstrcasecmp(ptr noundef %i.ad, ptr noundef nonnull @.str.127) #16
  %.not65.us = icmp eq i32 %i.aq, 0
  br i1 %.not65.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = fadd double %.05072.us79, %.pre-phi109
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.m, %bb.m
  %i.as = fcmp ogt double %.05371.us80, %.pre-phi109
  %i.at = select i1 %i.as, double %.05371.us80, double %.pre-phi109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.split.split.us
  %.255.us83 = phi double [ %.05371.us80, %bb.o ], [ %.05371.us80, %.lr.ph.split.split.us ], [ %i.at, %bb.p ] ; 2 uses
  %.252.us84 = phi double [ %i.ar, %bb.o ], [ %.05072.us79, %.lr.ph.split.split.us ], [ %.05072.us79, %bb.p ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.au = load i32, ptr @g_tres_count, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next97, %i.av
  br i1 %i.aw, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !122

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %.lr.ph.split ] ; 7 uses
  %.073 = phi double [ %.2, %bb.z ], [ 0.000000e+00, %.lr.ph.split ] ; 4 uses
  %.05072 = phi double [ %.252, %bb.z ], [ 0.000000e+00, %.lr.ph.split ] ; 4 uses
  %.05371 = phi double [ %.255, %bb.z ], [ 0.000000e+00, %.lr.ph.split ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ay = load double, ptr %i.ax, align 8         ; 3 uses
  %i.az = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = uitofp i64 %i.bf to double              ; 3 uses
  %i.bh = icmp eq i64 %indvars.iv, 4
  %i.bi = icmp eq i64 %i.bf, -3
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %bb.z, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split
  %i.bj = tail call i32 @get_log_level() #16
  %i.bk = icmp sgt i32 %i.bj, 6
  br i1 %i.bk, label %bb.s, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.r
  %.pre110 = fmul double %i.ay, %i.bg
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr @assoc_mgr_tres_name_array, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = fmul double %i.ay, %i.bg                ; 2 uses
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.126, ptr noundef %i.bn, double noundef %i.bg, double noundef %i.ay, double noundef %i.bo) #16
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge102, %bb.s
  %.pre-phi111 = phi double [ %.pre110, %._crit_edge102 ], [ %i.bo, %bb.s ] ; 4 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.bp, label %bb.u [
    i32 3, label %bb.v
    i32 1, label %bb.v
    i32 0, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call i32 @xstrcasecmp(ptr noundef %i.bd, ptr noundef nonnull @.str.127) #16
  %.not65 = icmp eq i32 %i.bq, 0
  br i1 %.not65, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.u
  %i.br = tail call i32 @xstrcasecmp(ptr noundef %i.bd, ptr noundef nonnull @.str.127) #16
  %.not67 = icmp eq i32 %i.br, 0
  br i1 %.not67, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = fadd double %.073, %.pre-phi111
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bt = fcmp ogt double %.05371, %.pre-phi111
  %i.bu = select i1 %i.bt, double %.05371, double %.pre-phi111
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bv = fadd double %.05072, %.pre-phi111
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.lr.ph.split.split
  %.255 = phi double [ %.05371, %bb.y ], [ %.05371, %.lr.ph.split.split ], [ %i.bu, %bb.x ], [ %.05371, %bb.w ] ; 2 uses
  %.252 = phi double [ %i.bv, %bb.y ], [ %.05072, %.lr.ph.split.split ], [ %.05072, %bb.x ], [ %.05072, %bb.w ] ; 2 uses
  %.2 = phi double [ %.073, %bb.y ], [ %.073, %.lr.ph.split.split ], [ %.073, %bb.x ], [ %i.bs, %bb.w ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr @g_tres_count, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.z, %bb.q, %bb.j, %bb.f
  %.053.lcssa = phi double [ %.255.us83, %bb.q ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.j ], [ %.255, %bb.z ] ; 2 uses
  %.050.lcssa = phi double [ %.252.us84, %bb.q ], [ 0.000000e+00, %bb.f ], [ %.252.us, %bb.j ], [ %.252, %bb.z ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.j ], [ %.2, %bb.z ]
  %i.bz = and i64 %.pre105, 2048
  %.not61 = icmp eq i64 %i.bz, 0                  ; 2 uses
  %i.ca = fadd double %.053.lcssa, %.0.lcssa
  %.3 = select i1 %.not61, double %.053.lcssa, double %i.ca
  %i.cb = fadd double %.050.lcssa, %.3            ; 3 uses
  %i.cc = tail call i32 @get_log_level() #16
  %i.cd = icmp sgt i32 %i.cc, 6
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.ce = and i64 %.pre105, 2
  %.not62 = icmp eq i64 %i.ce, 0
  %i.cf = select i1 %.not61, ptr @.str.131, ptr @.str.130
  %i.cg = select i1 %.not62, ptr %i.cf, ptr @.str.129
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.cg, double noundef %i.cb) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  br i1 %3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @assoc_mgr_unlock(ptr noundef nonnull @__const.assoc_mgr_set_job_tres_alloc_str.locks)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.a, %bb.c
  %.057 = phi double [ 0.000000e+00, %bb.a ], [ %i.b, %bb.c ], [ %i.cb, %bb.ac ], [ %i.cb, %bb.ab ]
  ret double %.057
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @assoc_mgr_tres_pos_changed() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @assoc_mgr_tres_old_pos, align 8
  %.not = icmp ne ptr %i.a, null
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @assoc_mgr_get_old_tres_pos(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @assoc_mgr_tres_old_pos, align 8 ; 2 uses
  %.not = icmp ne ptr %i.a, null
  %i.b = load i32, ptr @g_tres_count, align 4
  %.not5 = icmp ult i32 %0, %i.b
  %or.cond = select i1 %.not, i1 %.not5, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @assoc_mgr_valid_tres_cnt(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 0, ptr %i.e, align 8
  %i.f = call i32 @slurm_get_next_tres(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #16 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = icmp ne ptr %i.h, null
  %i.j = select i1 %i.g, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.k = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %1, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  %2 = load i64, ptr %i.e, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.k) #16
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  %i.m = load i64, ptr %i.e, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %select.unfold
  %i.o = call i32 @slurm_get_next_tres(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #16 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = icmp ne ptr %i.q, null
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %select.unfold._crit_edge, !llvm.loop !123

bb.e:                                             ; preds = %bb.b
  br i1 %1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = call i32 @xstrcmp(ptr noundef %i.t, ptr noundef nonnull @.str.127) #16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = call zeroext i1 @gres_valid_name(ptr noundef %i.v) #16
  %spec.select = select i1 %i.w, i32 1, i32 -1
  br label %select.unfold

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not20.i = icmp eq ptr %i.y, null
  br i1 %.not20.i, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @assoc_mgr_lock(ptr noundef nonnull @__const.assoc_mgr_set_job_tres_alloc_str.locks)
  %i.z = load i32, ptr @g_tres_count, align 4
  %.not29.i = icmp eq i32 %i.z, 0
  br i1 %.not29.i, label %._crit_edge.i, label %._crit_edge31.i

._crit_edge31.i:                                  ; preds = %bb.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 4 uses
  %.pre.i = load ptr, ptr @assoc_mgr_tres_array, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %.pre32.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre32.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @xstrcasecmp(ptr noundef %i.ab, ptr noundef nonnull %i.y) #16
  %.not22.i = icmp eq i32 %i.ac, 0
  br i1 %.not22.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge31.i
  %i.ad = load ptr, ptr @assoc_mgr_tres_array, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i32 @xstrcasecmp(ptr noundef %i.ah, ptr noundef %i.x) #16
  %.not23.i = icmp eq i32 %i.ai, 0
  br i1 %.not23.i, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge31.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i32, ptr @g_tres_count, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %._crit_edge31.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.j
  %i.am = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i, %bb.i
  %.0.i = phi i32 [ -1, %bb.i ], [ %i.am, %._crit_edge.loopexit.split.loop.exit.i ], [ -1, %bb.k ]
  call void @assoc_mgr_unlock(ptr noundef nonnull @__const.assoc_mgr_set_job_tres_alloc_str.locks)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.g, %._crit_edge.i, %bb.h
  %.0 = phi i32 [ %spec.select, %bb.g ], [ -1, %bb.h ], [ %.0.i, %._crit_edge.i ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.an = icmp eq i32 %.0, -1
  br i1 %i.an, label %select.unfold._crit_edge, label %.backedge

select.unfold._crit_edge:                         ; preds = %.backedge, %select.unfold, %bb.a
  %.05 = phi i32 [ %i.f, %bb.a ], [ -1, %select.unfold ], [ %i.o, %.backedge ]
  %i.ao = icmp eq i32 %.05, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %i.ao
}

declare i32 @slurm_get_next_tres(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_valid_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @assoc_mgr_set_job_tres_alloc_str(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @assoc_mgr_lock(ptr noundef nonnull @__const.assoc_mgr_set_job_tres_alloc_str.locks)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %assoc_mgr_make_tres_str_from_array.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @g_tres_count, align 4     ; 2 uses
  %.not53.i = icmp eq i32 %i.e, 0
  br i1 %.not53.i, label %assoc_mgr_make_tres_str_from_array.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.pre66.i = load ptr, ptr @assoc_mgr_tres_array, align 8
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.g, %.lr.ph.i
  %i.f = phi i32 [ %i.q, %bb.g ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.g = phi ptr [ %i.r, %bb.g ], [ %.pre66.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.g ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv57.i
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not36.us50.i = icmp eq ptr %i.i, null
  br i1 %.not36.us50.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv57.i
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %.not38.us51.i = icmp eq i64 %i.k, 0
  br i1 %.not38.us51.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %i.k, -3
  %spec.store.select.us52.i = select i1 %i.l, i64 0, i64 %i.k
  %i.m = load ptr, ptr %i.a, align 8
  %.not47.us.i = icmp eq ptr %i.m, null
  %i.n = select i1 %.not47.us.i, ptr @.str.3, ptr @.str.119
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i32, ptr %i.o, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.n, i32 noundef %i.p, i64 noundef %spec.store.select.us52.i) #16
  %.pre65.i = load ptr, ptr @assoc_mgr_tres_array, align 8
  %.pre67.i = load i32, ptr @g_tres_count, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.split.split.us.i
  %i.q = phi i32 [ %.pre67.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %.lr.ph.split.split.us.i ] ; 2 uses
  %i.r = phi ptr [ %.pre65.i, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %.lr.ph.split.split.us.i ]
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.s = zext i32 %i.q to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next58.i, %i.s
  br i1 %i.t, label %.lr.ph.split.split.us.i, label %._crit_edge.i.loopexit, !llvm.loop !7

._crit_edge.i.loopexit:                           ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8
  br label %assoc_mgr_make_tres_str_from_array.exit

assoc_mgr_make_tres_str_from_array.exit:          ; preds = %bb.d, %._crit_edge.i.loopexit, %bb.c
  %.033.i = phi ptr [ null, %bb.c ], [ %.pre, %._crit_edge.i.loopexit ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr %.033.i, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.u) #16
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = call ptr @assoc_mgr_make_tres_str_from_array(ptr noundef %i.v, i32 noundef 256, i1 noundef zeroext true)
  store ptr %i.w, ptr %i.u, align 8
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %assoc_mgr_make_tres_str_from_array.exit
  call void @assoc_mgr_unlock(ptr noundef nonnull @__const.assoc_mgr_set_job_tres_alloc_str.locks)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %assoc_mgr_make_tres_str_from_array.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @assoc_mgr_check_assoc_lim_incr(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @assoc_mgr_lock(ptr noundef nonnull @__const.assoc_mgr_check_assoc_lim_incr.locks)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @assoc_mgr_assoc_list, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_find_tres_incr.exit230.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call fastcc ptr @_find_assoc_rec(ptr noundef %0) ; 18 uses
  %.not112 = icmp eq ptr %i.b, null
  br i1 %.not112, label %_find_tres_incr.exit230.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %or.cond.i = icmp ult i32 %i.d, -2
  %i.g = icmp ult i32 %i.f, -2
  %or.cond5.i = and i1 %or.cond.i, %i.g
  %i.h = icmp ugt i32 %i.d, %i.f
  %or.cond13.i = and i1 %i.h, %or.cond5.i
  br i1 %or.cond13.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not136 = icmp eq ptr %1, null
  br i1 %.not136, label %_find_tres_incr.exit230.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @xstrdup(ptr noundef nonnull @.str.133) #16
  br label %_find_tres_incr.exit230.thread.sink.split

bb.h:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
end_hunk_0
