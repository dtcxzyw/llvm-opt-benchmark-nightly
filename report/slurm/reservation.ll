Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reservation?download=true
inline.NumInlined: 103
inline.NumDeleted: 45
begin_hunk_0_@_advance_slot:bb.a

bb.d:                                             ; preds = %bb.c
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.i = and i64 %i.e, 8388608
  %.not29 = icmp eq i64 %i.i, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, 6
  %i.m = sub nsw i32 6, %i.k
  %spec.select = select i1 %i.l, i32 1, i32 %i.m
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.n = and i64 %i.e, 16
  %.not30 = icmp eq i64 %i.n, 0
  br i1 %.not30, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = and i64 %i.e, 4
  %.not31 = icmp eq i64 %i.o, 0
  br i1 %.not31, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = and i64 %i.e, 34359738368
  %.not32 = icmp eq i64 %i.p, 0
  br i1 %.not32, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__._advance_slot) #18 ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.h, %bb.c, %bb.e, %bb.d
  %.021 = phi i32 [ 1, %bb.i ], [ 2, %bb.d ], [ 1, %bb.e ], [ 3, %bb.c ], [ 0, %bb.j ], [ %spec.select, %bb.g ], [ 7, %bb.h ]
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, %.021
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add nsw i32 %i.v, %.0
  store i32 %i.w, ptr %i.u, align 8
  %i.x = call i64 @slurm_mktime(ptr noundef nonnull %1) #18 ; 4 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = load i64, ptr %0, align 8                ; 4 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__._advance_slot, i64 noundef %i.z) #18 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not33 = icmp sgt i64 %i.x, %i.z
  br i1 %.not33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__._advance_slot, i64 noundef %i.z) #18 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ac = sub i64 %i.x, %i.z
  store i64 %i.x, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add nsw i64 %i.ac, %i.ae
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.m, %bb.k
  %.022 = phi i32 [ -1, %bb.m ], [ -1, %bb.o ], [ 0, %bb.p ], [ -1, %bb.k ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.022
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @slurm_mktime(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_resv_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8
  %i.c = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.b, %i.c
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @slurm_with_slurmdbd() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2046) i32 @_append_acct_to_assoc_list(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  %i.b = load ptr, ptr @acct_db_conn, align 8
  %i.c = load i16, ptr @accounting_enforce, align 2
  %i.d = zext i16 %i.c to i32
  %i.e = call i32 @assoc_mgr_fill_in_assoc(ptr noundef %i.b, ptr noundef nonnull %1, i32 noundef %i.d, ptr noundef nonnull %i.a, i1 noundef zeroext true) #18
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @accounting_enforce, align 2
  %i.g = and i16 %i.f, 1
  %.not7 = icmp eq i16 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.147, i32 noundef %i.i, ptr noundef %i.k) #18 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = call i32 @get_log_level() #18
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.147, i32 noundef %i.p, ptr noundef %i.r) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ 2045, %bb.c ], [ 2045, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.s, null
  br i1 %.not8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @list_append(ptr noundef %0, ptr noundef nonnull %i.s) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ 0, %bb.g ], [ %.0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_set_assoc_allow_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.f, null
  %i.g = select i1 %.not.i, ptr @.str.74, ptr @.str.22
  %i.h = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.g, ptr noundef %i.h, i32 noundef %i.b) #18
  ret i32 0
}

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gres_stepmgr_set_job_tres_cnt(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @assoc_mgr_make_tres_str_from_array(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @licenses_2_tres_str(ptr noundef) local_unnamed_addr #2

declare ptr @bb_g_xlate_bb_2_tres_str(ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_make_tres_string_from_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_sched_log_level() local_unnamed_addr #2

declare void @sched_info(ptr noundef, ...) local_unnamed_addr #2

declare ptr @copy_job_resources(ptr noundef) local_unnamed_addr #2

declare ptr @list_shallow_copy(ptr noundef) local_unnamed_addr #2

declare void @license_free_rec(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_handle_add_remove_names(ptr noundef nonnull %0, i32 noundef range(i32 1, 3) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 2                        ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.0124 = select i1 %i.a, ptr %i.b, ptr %i.c     ; 5 uses
  %.0123.v = select i1 %i.a, i64 328, i64 8
  %.0123 = getelementptr inbounds nuw i8, ptr %0, i64 %.0123.v ; 7 uses
  %i.d = load i32, ptr %.0124, align 4            ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %or.cond = and i1 %6, %i.e
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %7, %or.cond.not
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  br i1 %or.cond3, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = or i32 %.pre, %1
  store i32 %i.g, ptr %.phi.trans.insert, align 8
  br label %.preheader164

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %.pre, %1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.preheader164

.preheader164:                                    ; preds = %.thread, %bb.b
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader164
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader290, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue275, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue275 ] ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.k, align 4  ; 2 uses
  %i.l = icmp eq <4 x i32> %wide.load, splat (i32 2)
  %i.m = add <4 x i32> %wide.load, splat (i32 -1)
  %i.n = icmp ult <4 x i32> %i.m, splat (i32 2)   ; 4 uses
  %predphi = select <4 x i1> %i.l, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2) ; 4 uses
  %i.o = extractelement <4 x i1> %i.n, i64 0
  br i1 %i.o, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.p = extractelement <4 x i32> %predphi, i64 0
  store i32 %i.p, ptr %i.k, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.q = extractelement <4 x i1> %i.n, i64 1
  br i1 %i.q, label %pred.store.if270.a, label %pred.store.continue271.a

pred.store.if270.a:                               ; preds = %pred.store.continue
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = extractelement <4 x i32> %predphi, i64 1
  store i32 %i.t, ptr %i.s, align 4
  br label %pred.store.continue271.a

pred.store.continue271.a:                         ; preds = %pred.store.if270.a, %pred.store.continue
  %i.u = extractelement <4 x i1> %i.n, i64 2
  br i1 %i.u, label %pred.store.if272.a, label %pred.store.continue273.a

pred.store.if272.a:                               ; preds = %pred.store.continue271.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = extractelement <4 x i32> %predphi, i64 2
  store i32 %i.x, ptr %i.w, align 4
  br label %pred.store.continue273.a

pred.store.continue273.a:                         ; preds = %pred.store.if272.a, %pred.store.continue271.a
  %i.y = extractelement <4 x i1> %i.n, i64 3
  br i1 %i.y, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273.a
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = extractelement <4 x i32> %predphi, i64 3
  store i32 %i.ab, ptr %i.aa, align 4
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %pred.store.continue275
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader290

.lr.ph.preheader290:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader290, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %.lr.ph.preheader290 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  switch i32 %i.ae, label %bb.d [
    i32 1, label %.sink.split
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 2, %.lr.ph ]
  store i32 %.sink, ptr %i.ad, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.d, %middle.block
  %.not = xor i1 %6, true
  %or.cond5 = or i1 %7, %.not
  br i1 %or.cond5, label %.split, label %.lr.ph183

._crit_edge.thread:                               ; preds = %.preheader164
  %.not240 = xor i1 %6, true
  %or.cond5241 = or i1 %7, %.not240
  br i1 %or.cond5241, label %.split, label %.loopexit

.split:                                           ; preds = %._crit_edge.thread, %._crit_edge
  %spec.select = or i1 %6, %7
  %spec.select138 = and i1 %6, %7                 ; 2 uses
  br i1 %spec.select, label %.split._crit_edge, label %.loopexit163

.split._crit_edge:                                ; preds = %.split
  %.pre227 = load i32, ptr %.0124, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br i1 %6, label %bb.f, label %.loopexit163

bb.f:                                             ; preds = %.split._crit_edge, %bb.e
  %i.af = phi i32 [ %.pre227, %.split._crit_edge ], [ %i.d, %bb.e ] ; 2 uses
  %.0125.shrunk147 = phi i1 [ %spec.select138, %.split._crit_edge ], [ %7, %bb.e ]
  %.not131 = icmp eq i32 %i.af, 0
  br i1 %.not131, label %.loopexit, label %.preheader162

.preheader162:                                    ; preds = %bb.f
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph178, label %.loopexit

.lr.ph178:                                        ; preds = %.preheader162
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %wide.trip.count213 = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph178, %.loopexit158
  %i.aj = phi i32 [ %i.af, %.lr.ph178 ], [ %i.de, %.loopexit158 ] ; 2 uses
  %indvars.iv210 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next211, %.loopexit158 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv210
  %i.al = load i32, ptr %i.ak, align 4
  %.not136 = icmp eq i32 %i.al, 1
  br i1 %.not136, label %.preheader160, label %.loopexit158

.preheader160:                                    ; preds = %bb.g
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph170, label %.loopexit

.lr.ph170:                                        ; preds = %.preheader160
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv210 ; 2 uses
  br i1 %i.a, label %.lr.ph170.split.us, label %.split148

.lr.ph170.split.us:                               ; preds = %.lr.ph170
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv210
  %i.ap = load ptr, ptr %i.ai, align 8
  %i.aq = load i32, ptr %i.ao, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph170.split.us
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.i ], [ 0, %.lr.ph170.split.us ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv201
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp eq i32 %i.as, %i.aq
  br i1 %i.at, label %.split172.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %8 = load i32, ptr %i.b, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %indvars.iv.next202, %9
  br i1 %10, label %bb.h, label %.loopexit, !llvm.loop !93

.split148:                                        ; preds = %.lr.ph170, %bb.j
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %bb.j ], [ 0, %.lr.ph170 ] ; 3 uses
  %i.au = load ptr, ptr %i.ah, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv198
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8
  %i.ay = load i8, ptr %i.aw, align 1
  %i.az = icmp eq i8 %i.ay, 45
  %spec.select.idx.i = zext i1 %i.az to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %spec.select.idx.i
  %i.ba = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select.i, ptr noundef %i.ax) #18
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %.split172.us, label %bb.j

bb.j:                                             ; preds = %.split148
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.bb = load i32, ptr %i.c, align 8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next199, %i.bc
  br i1 %i.bd, label %.split148, label %.loopexit, !llvm.loop !93

.split172.us:                                     ; preds = %.split148, %bb.h
  %.us-phi.in = phi i64 [ %indvars.iv201, %bb.h ], [ %indvars.iv198, %.split148 ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.be = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.bf = load ptr, ptr %.0123, align 8           ; 3 uses
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #19
  %i.bh = tail call ptr @xstrstr(ptr noundef %i.bf, ptr noundef nonnull %i.be) #18 ; 2 uses
  %.not4547.i = icmp eq ptr %i.bh, null
  br i1 %.not4547.i, label %_remove_name_from_str.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split172.us
  %i.bi = trunc i64 %i.bg to i32
  br label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.r
  %i.bj = tail call ptr @xstrstr(ptr noundef %.03046.i, ptr noundef nonnull %i.be) #18 ; 2 uses
  %.not45.i = icmp eq ptr %i.bj, null
  br i1 %.not45.i, label %_remove_name_from_str.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %i.bk = phi ptr [ %i.bj, %.loopexit.i ], [ %i.bh, %.lr.ph.preheader.i ]
  %.030.ph49.i = phi ptr [ %.03046.i, %.loopexit.i ], [ %i.bf, %.lr.ph.preheader.i ]
  %.031.ph48.i = phi i32 [ %spec.select42.i, %.loopexit.i ], [ %i.bi, %.lr.ph.preheader.i ] ; 2 uses
  %i.bl = sext i32 %.031.ph48.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bm = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.bt, %bb.n ] ; 6 uses
  %.03046.i = phi ptr [ %.030.ph49.i, %.lr.ph.i ], [ %i.bs, %bb.n ] ; 2 uses
  %.not36.i = icmp eq ptr %i.bm, %i.bf
  br i1 %.not36.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bo, -2
  %switch.i = icmp eq i8 %i.bp, 44
  br i1 %switch.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bl
  %i.br = load i8, ptr %i.bq, align 1
  switch i8 %i.br, label %bb.n [
    i8 0, label %bb.o
    i8 44, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bt = tail call ptr @xstrstr(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.be) #18 ; 2 uses
  %.not.i139 = icmp eq ptr %i.bt, null
  br i1 %.not.i139, label %_remove_name_from_str.exit, label %bb.k, !llvm.loop !94

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp eq i8 %i.bv, 45                    ; 2 uses
  %i.bx = zext i1 %i.bw to i32
  %spec.select.i140 = add nsw i32 %.031.ph48.i, %i.bx ; 2 uses
  %spec.select41.i = select i1 %i.bw, ptr %i.bu, ptr %i.bm ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %spec.select41.i, i64 -1 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, 44
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = sext i32 %spec.select.i140 to i64
  %i.cc = getelementptr inbounds i8, ptr %spec.select41.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 44
  %i.cf = zext i1 %i.ce to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i = phi i32 [ %i.cf, %bb.p ], [ 1, %bb.o ]
  %.1.i = phi ptr [ %spec.select41.i, %bb.p ], [ %i.by, %bb.o ] ; 2 uses
  %spec.select42.i = add nsw i32 %.sink.i, %spec.select.i140 ; 2 uses
  %i.cg = sext i32 %spec.select42.i to i64
  %invariant.gep.i = getelementptr i8, ptr %.1.i, i64 %i.cg
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ch = load i8, ptr %gep.i, align 1            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i, i64 %indvars.iv.i
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = icmp eq i8 %i.ch, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.cj, label %.loopexit.i, label %bb.r, !llvm.loop !95

_remove_name_from_str.exit:                       ; preds = %.loopexit.i, %bb.n, %.split172.us
  %i.ck = load ptr, ptr %.0123, align 8
  %i.cl = load i8, ptr %i.ck, align 1
  %.not137 = icmp eq i8 %i.cl, 0
  br i1 %.not137, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_remove_name_from_str.exit
  tail call void @slurm_xfree(ptr noundef nonnull %.0123) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_remove_name_from_str.exit
  %i.cm = load i32, ptr %.0124, align 4
  %i.cn = add nsw i32 %i.cm, -1                   ; 3 uses
  store i32 %i.cn, ptr %.0124, align 4
  %i.co = icmp sgt i32 %i.cn, %.us-phi
  br i1 %i.co, label %.lr.ph176, label %.loopexit158

.lr.ph176:                                        ; preds = %bb.t
  %i.cp = and i64 %.us-phi.in, 4294967295         ; 2 uses
  br i1 %i.a, label %.lr.ph176.split.us, label %.lr.ph176.split

.lr.ph176.split.us:                               ; preds = %.lr.ph176, %.lr.ph176.split.us
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph176.split.us ], [ %i.cp, %.lr.ph176 ] ; 2 uses
  %i.cq = load ptr, ptr %i.ai, align 8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv207 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4
  store i32 %i.ct, ptr %i.cr, align 4
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.cu = load i32, ptr %i.b, align 8             ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next208, %i.cv
  br i1 %i.cw, label %.lr.ph176.split.us, label %.loopexit158, !llvm.loop !96

.lr.ph176.split:                                  ; preds = %.lr.ph176, %.lr.ph176.split
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %.lr.ph176.split ], [ %i.cp, %.lr.ph176 ] ; 2 uses
  %i.cx = load ptr, ptr %i.ah, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv204 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  store ptr %i.da, ptr %i.cy, align 8
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.db = load i32, ptr %i.c, align 8             ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next205, %i.dc
  br i1 %i.dd, label %.lr.ph176.split, label %.loopexit158, !llvm.loop !96

.loopexit158:                                     ; preds = %.lr.ph176.split, %.lr.ph176.split.us, %bb.t, %bb.g
  %i.de = phi i32 [ %i.cu, %.lr.ph176.split.us ], [ %i.aj, %bb.g ], [ %i.cn, %bb.t ], [ %i.db, %.lr.ph176.split ]
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %.loopexit163, label %bb.g, !llvm.loop !97

.loopexit163:                                     ; preds = %.loopexit158, %.split, %bb.e
  %.0125.shrunk146 = phi i1 [ %spec.select138, %.split ], [ %7, %bb.e ], [ %.0125.shrunk147, %.loopexit158 ]
  %i.df = icmp sgt i32 %2, 0
  %or.cond184 = and i1 %.0125.shrunk146, %i.df
  br i1 %or.cond184, label %.lr.ph183, label %.loopexit

.lr.ph183:                                        ; preds = %._crit_edge, %.loopexit163
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %wide.trip.count224 = zext nneg i32 %2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph183, %.thread155
  %indvars.iv221 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next222, %.thread155 ] ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv221
  %i.dj = load i32, ptr %i.di, align 4
  %.not132 = icmp eq i32 %i.dj, 2
  br i1 %.not132, label %.preheader, label %.thread155

.preheader:                                       ; preds = %bb.u
  %i.dk = load i32, ptr %.0124, align 4
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %.preheader
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv221
  br i1 %i.a, label %.lr.ph180.split.us, label %.split152

.lr.ph180.split.us:                               ; preds = %.lr.ph180
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv221
  %i.do = load ptr, ptr %i.dh, align 8
  %i.dp = load i32, ptr %i.dn, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph180.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.w ], [ 0, %.lr.ph180.split.us ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv218
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp eq i32 %i.dr, %i.dp
  br i1 %i.ds, label %.thread155, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %11 = load i32, ptr %i.b, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %indvars.iv.next219, %12
  br i1 %13, label %bb.v, label %._crit_edge181, !llvm.loop !98

.split152:                                        ; preds = %.lr.ph180, %bb.x
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %bb.x ], [ 0, %.lr.ph180 ] ; 2 uses
  %i.dt = load ptr, ptr %i.dg, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv215
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = load ptr, ptr %i.dm, align 8
  %i.dx = load i8, ptr %i.dv, align 1
  %i.dy = icmp eq i8 %i.dx, 45
  %spec.select.idx.i141 = zext i1 %i.dy to i64
  %spec.select.i142 = getelementptr inbounds nuw i8, ptr %i.dv, i64 %spec.select.idx.i141
  %i.dz = tail call i32 @xstrcmp(ptr noundef nonnull %spec.select.i142, ptr noundef %i.dw) #18
  %.not.i143 = icmp eq i32 %i.dz, 0
  br i1 %.not.i143, label %.thread155, label %bb.x

bb.x:                                             ; preds = %.split152
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.ea = load i32, ptr %i.c, align 8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next216, %i.eb
  br i1 %i.ec, label %.split152, label %._crit_edge181, !llvm.loop !98

._crit_edge181:                                   ; preds = %bb.x, %bb.w, %.preheader
  %i.ed = load ptr, ptr %.0123, align 8           ; 2 uses
  %.not133 = icmp eq ptr %i.ed, null
  br i1 %.not133, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %._crit_edge181
  %i.ee = load i8, ptr %i.ed, align 1
  %.not134 = icmp eq i8 %i.ee, 0
  br i1 %.not134, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_xstrcat(ptr noundef nonnull %.0123, ptr noundef nonnull @.str.74) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge181
  %i.ef = load i32, ptr %i.f, align 8
  %i.eg = and i32 %i.ef, %1
  %.not135 = icmp eq i32 %i.eg, 0
  br i1 %.not135, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_xstrcat(ptr noundef nonnull %.0123, ptr noundef nonnull @.str.21) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv221 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void @_xstrcat(ptr noundef nonnull %.0123, ptr noundef %i.ei) #18
  br i1 %i.a, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load i32, ptr %i.b, align 8
  %i.ek = add nsw i32 %i.ej, 1
  %i.el = sext i32 %i.ek to i64
  %i.em = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.dh, i64 noundef %i.el, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 2155, ptr noundef nonnull @__func__._handle_add_remove_names) #18 ; 0 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv221
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = load ptr, ptr %i.dh, align 8
  %i.eq = load i32, ptr %i.b, align 8             ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.b, align 8
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.es
  store i32 %i.eo, ptr %i.et, align 4
  br label %.thread155

bb.ae:                                            ; preds = %bb.ac
  %i.eu = load i32, ptr %i.c, align 8
  %i.ev = add nsw i32 %i.eu, 1
  %i.ew = sext i32 %i.ev to i64
  %i.ex = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.dg, i64 noundef %i.ew, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 2161, ptr noundef nonnull @__func__._handle_add_remove_names) #18 ; 0 uses
  %i.ey = load ptr, ptr %i.eh, align 8
  %i.ez = tail call ptr @xstrdup(ptr noundef %i.ey) #18
  %i.fa = load ptr, ptr %i.dg, align 8
  %i.fb = load i32, ptr %i.c, align 8             ; 2 uses
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.c, align 8
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fd
  store ptr %i.ez, ptr %i.fe, align 8
  br label %.thread155

.thread155:                                       ; preds = %.split152, %bb.v, %bb.ad, %bb.ae, %bb.u
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %.loopexit, label %bb.u, !llvm.loop !99

.loopexit:                                        ; preds = %.preheader160, %bb.j, %bb.i, %.thread155, %.preheader162, %._crit_edge.thread, %.loopexit163, %bb.f
  %.0127 = phi i32 [ 0, %.loopexit163 ], [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.i ], [ 0, %.thread155 ], [ 0, %.preheader162 ], [ 0, %._crit_edge.thread ], [ -1, %.preheader160 ]
  ret i32 %.0127
}

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2067) i32 @_remove_from_qos_list(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %2, i8 0, i64 344, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr @acct_db_conn, align 8
  %i.d = load i16, ptr @accounting_enforce, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = call i32 @assoc_mgr_fill_in_qos(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef nonnull %i.a, i1 noundef zeroext true) #18
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @accounting_enforce, align 2
  %i.h = and i16 %i.g, 8
  %.not3 = icmp eq i16 %i.h, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.171, ptr noundef %i.i) #18 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = call i32 @get_log_level() #18
  %i.l = icmp sgt i32 %i.k, 3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.171, ptr noundef %i.m) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ 2066, %bb.c ], [ 2066, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.n, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @list_delete_first(ptr noundef %0, ptr noundef nonnull @slurm_find_ptr_in_list, ptr noundef nonnull %i.n) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ 0, %bb.g ], [ %.0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

declare i32 @assoc_mgr_fill_in_qos(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @list_delete_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @node_conf_nodestr_tokenize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #2

declare ptr @hostlist_shift(ptr noundef) local_unnamed_addr #2

declare ptr @find_node_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_nodes_flags(ptr nofree noundef nonnull readonly captures(address) %0, i32 noundef range(i32 32, 32801) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 256
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.175, ptr noundef nonnull @__func__._set_nodes_flags, ptr noundef %i.j) #18 ; 0 uses
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.l = tail call i32 @bit_set_count(ptr noundef nonnull %i.d) #18
  %.not40 = icmp eq i32 %i.l, 0
  br i1 %.not40, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 256
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.176, ptr noundef nonnull @__func__._set_nodes_flags, ptr noundef %i.r) #18 ; 0 uses
  br label %bb.aa

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
end_hunk_0
