Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5system?download=true
begin_hunk_0_@H5_dirname:bb.a
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.j, label %.critedge4, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.j, %.critedge2
  %i.ae = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull @.str.6) #15
  br label %.critedge2.thread62

.critedge4:                                       ; preds = %.lr.ph89
  %i.af = ptrtoint ptr %.34888 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = tail call noalias ptr @H5MM_strndup(ptr noundef nonnull %0, i64 noundef %i.ah) #15
  br label %.critedge2.thread62

.critedge2.thread62:                              ; preds = %.critedge._crit_edge, %.preheader._crit_edge, %._crit_edge, %.critedge4, %bb.h, %bb.f
  %.2 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.h ], [ %i.ai, %.critedge4 ], [ %i.ae, %._crit_edge ], [ %i.aa, %.critedge._crit_edge ], [ %i.x, %.preheader._crit_edge ] ; 2 uses
  %i.aj = icmp eq ptr %.2, null
  br i1 %i.aj, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %.critedge2.thread62
  %i.ak = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.al = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5_dirname, i32 noundef 1119, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.13) #15 ; 0 uses
  br label %bb.l

.critedge61:                                      ; preds = %.critedge2.thread62
  store ptr %.2, ptr %1, align 8, !tbaa !23
  br label %bb.n

bb.l:                                             ; preds = %bb.c, %bb.k
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %1, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.critedge61, %bb.m, %bb.l, %bb.a
  %.1 = phi i32 [ -1, %bb.m ], [ -1, %bb.l ], [ 0, %.critedge61 ], [ 0, %bb.a ], [ -1, %.thread ]
  ret i32 %.1
}

declare noalias ptr @H5MM_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5_basename(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load i8, ptr @H5_init_g, align 1, !tbaa !13, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !15
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.s, !prof !17

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !18
  %i.i = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5_basename, i32 noundef 1163, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.10) #15 ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5_basename, i32 noundef 1165, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.14) #15 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #17 ; 6 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %0, align 1, !tbaa !24
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull @.str.12) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull %0) #15
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.n, %0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = icmp eq i8 %i.w, 0                       ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull @.str.6) #15
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.z = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull %i.v) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  br i1 %i.x, label %.lr.ph, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull %i.v) #15
  br label %bb.o

.preheader:                                       ; preds = %.lr.ph
  %.not48 = icmp eq ptr %i.ab, %0
  br i1 %.not48, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %bb.m, %.preheader
  %.04164 = phi ptr [ %i.ab, %.preheader ], [ %i.n, %bb.m ] ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %.04164, i64 -1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %.preheader, label %.critedge.preheader, !llvm.loop !34

.critedge.preheader:                              ; preds = %.lr.ph
  %i.ae = sub i64 %i.a, %i.o
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.ae ; 2 uses
  %.not4965 = icmp eq ptr %.04164, %0
  br i1 %.not4965, label %.critedge2, label %.lr.ph67

.preheader._crit_edge:                            ; preds = %.preheader
  %i.af = tail call noalias ptr @H5MM_strdup(ptr noundef nonnull @.str.6) #15
  br label %bb.o

.critedge:                                        ; preds = %.lr.ph67
  %.not49 = icmp eq ptr %i.ag, %0
  br i1 %.not49, label %.critedge2, label %.lr.ph67, !llvm.loop !35

.lr.ph67:                                         ; preds = %.critedge.preheader, %.critedge
  %.066 = phi ptr [ %i.ag, %.critedge ], [ %.04164, %.critedge.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.066, i64 -1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %.not50 = icmp eq i8 %i.ah, 47
  br i1 %.not50, label %..critedge2_crit_edge, label %.critedge, !llvm.loop !35

..critedge2_crit_edge:                            ; preds = %.lr.ph67
  br label %.critedge2, !llvm.loop !35

.critedge2:                                       ; preds = %.critedge, %..critedge2_crit_edge, %.critedge.preheader
  %.0.lcssa = phi ptr [ %scevgep, %.critedge.preheader ], [ %.066, %..critedge2_crit_edge ], [ %scevgep, %.critedge ] ; 2 uses
  %i.ai = ptrtoint ptr %.04164 to i64
  %i.aj = ptrtoint ptr %.0.lcssa to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = tail call noalias ptr @H5MM_strndup(ptr noundef nonnull %.0.lcssa, i64 noundef %i.ak) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %.preheader._crit_edge, %.critedge2, %bb.n, %bb.g, %bb.h
  %.039 = phi ptr [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.y, %bb.k ], [ %i.z, %bb.l ], [ %i.aa, %bb.n ], [ %i.af, %.preheader._crit_edge ], [ %i.al, %.critedge2 ] ; 2 uses
  %i.am = icmp eq ptr %.039, null
  br i1 %i.am, label %bb.p, label %.critedge53

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !18
  %i.ao = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5_basename, i32 noundef 1221, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.15) #15 ; 0 uses
  br label %bb.q

.critedge53:                                      ; preds = %bb.o
  store ptr %.039, ptr %1, align 8, !tbaa !23
  br label %bb.s

bb.q:                                             ; preds = %bb.c, %bb.p
  %.not51 = icmp eq ptr %1, null
  br i1 %.not51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %1, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %.thread, %.critedge53, %bb.r, %bb.q, %bb.a
  %.1 = phi i32 [ -1, %bb.r ], [ -1, %bb.q ], [ 0, %.critedge53 ], [ 0, %bb.a ], [ -1, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -128, 128) i32 @H5_get_option(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @H5_get_option.sp, align 4, !tbaa !28 ; 4 uses
  %i.b = icmp eq i32 %i.a, 1
  %.pre = load i32, ptr @H5_optind, align 4, !tbaa !28 ; 12 uses
  br i1 %i.b, label %bb.b, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.a
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert120 = getelementptr inbounds [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8, !tbaa !23
  br label %bb.r

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %.pre, %0
  br i1 %.not, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.c = sext i32 %.pre to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24
  %.not78 = icmp eq i8 %i.f, 45
  br i1 %.not78, label %bb.d, label %bb.an

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  switch i8 %i.h, label %bb.r [
    i8 0, label %bb.an
    i8 45, label %.tail
  ]

.tail:                                            ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail
  %i.l = add nsw i32 %.pre, 1
  store i32 %i.l, ptr @H5_optind, align 4, !tbaa !28
  br label %bb.an

bb.f:                                             ; preds = %.tail
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.n = tail call noalias ptr @strdup(ptr noundef nonnull %i.m) #15 ; 5 uses
  %i.o = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 61) #17 ; 4 uses
  store ptr %i.o, ptr @H5_optarg, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #17 ; 2 uses
  %.not84 = icmp eq ptr %i.o, null                ; 3 uses
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #17
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.u, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.t, %bb.g ], [ %i.r, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0
  store i8 0, ptr %i.v, align 1, !tbaa !24
  %.not85 = icmp eq ptr %3, null
  br i1 %.not85, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.h
  %i.w = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %.not86110 = icmp eq ptr %i.w, null
  br i1 %.not86110, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph.split, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph.split ] ; 8 uses
  %i.x = phi ptr [ %i.as, %bb.o ], [ %i.w, %.lr.ph.split ]
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.x) #17
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split, label %bb.o

.split:                                           ; preds = %.lr.ph112
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !38
  %i.ad = sext i8 %i.ac to i32                    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not87 = icmp eq i32 %i.af, 0
  br i1 %.not87, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split
  %.not90 = icmp ne i32 %i.af, 2
  %or.cond.not102 = and i1 %.not90, %.not84
  %i.ag = add nsw i32 %0, -1
  %i.ah = icmp slt i32 %.pre, %i.ag
  %or.cond100 = select i1 %or.cond.not102, i1 %i.ah, i1 false
  br i1 %or.cond100, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %.pre, 1                    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %.not91 = icmp eq i8 %i.am, 45
  br i1 %.not91, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr @H5_optind, align 4, !tbaa !28
  store ptr %i.al, ptr @H5_optarg, align 8, !tbaa !23
  br label %.loopexit

bb.l:                                             ; preds = %.split
  br i1 %.not84, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr @H5_opterr, align 4, !tbaa !28
  %.not89 = icmp eq i32 %i.an, 0
  br i1 %.not89, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ap = load ptr, ptr %1, align 8, !tbaa !23
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.18, ptr noundef %i.ap, ptr noundef nonnull %i.n) #19 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %.not86 = icmp eq ptr %i.as, null
  br i1 %.not86, label %.loopexit, label %.lr.ph112

.loopexit:                                        ; preds = %bb.o, %.lr.ph.split, %bb.m, %bb.n, %bb.j, %bb.k, %bb.i, %bb.l
  %.061105 = phi i64 [ %indvars.iv, %bb.n ], [ %indvars.iv, %bb.l ], [ %indvars.iv, %bb.m ], [ %indvars.iv, %bb.i ], [ %indvars.iv, %bb.j ], [ %indvars.iv, %bb.k ], [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.o ]
  %.063.ph = phi i32 [ 63, %bb.n ], [ %i.ad, %bb.l ], [ 63, %bb.m ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ 63, %.lr.ph.split ], [ 63, %bb.o ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.061105
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.loopexit
  %i.aw = load i32, ptr @H5_opterr, align 4, !tbaa !28
  %.not92 = icmp eq i32 %i.aw, 0
  br i1 %.not92, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ay = load ptr, ptr %1, align 8, !tbaa !23
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.19, ptr noundef %i.ay, ptr noundef nonnull %i.n) #19 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.p, %bb.q, %.loopexit
  %.1 = phi i32 [ 63, %bb.p ], [ %.063.ph, %.loopexit ], [ 63, %bb.q ], [ 63, %bb.h ]
  %i.ba = load i32, ptr @H5_optind, align 4, !tbaa !28
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr @H5_optind, align 4, !tbaa !28
  store i32 1, ptr @H5_get_option.sp, align 4, !tbaa !28
  tail call void @free(ptr noundef nonnull %i.n) #15
  br label %bb.an

bb.r:                                             ; preds = %bb.d, %._crit_edge119
  %i.bc = phi ptr [ %.pre121, %._crit_edge119 ], [ %i.e, %bb.d ] ; 3 uses
  %i.bd = sext i32 %i.a to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !24  ; 2 uses
  %i.bg = sext i8 %i.bf to i32                    ; 9 uses
  %i.bh = icmp eq i8 %i.bf, 58
  br i1 %i.bh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.bg) #17 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = load i32, ptr @H5_opterr, align 4, !tbaa !28
  %.not83 = icmp eq i32 %i.bk, 0
  br i1 %.not83, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.bm = load ptr, ptr %1, align 8, !tbaa !23
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.20, ptr noundef %i.bm, i32 noundef %i.bg) #19 ; 0 uses
  %.pre122 = load i32, ptr @H5_optind, align 4, !tbaa !28 ; 2 uses
  %.phi.trans.insert123 = sext i32 %.pre122 to i64
  %.phi.trans.insert124 = getelementptr inbounds [8 x i8], ptr %1, i64 %.phi.trans.insert123
  %.pre125 = load ptr, ptr %.phi.trans.insert124, align 8, !tbaa !23
  %.pre126 = load i32, ptr @H5_get_option.sp, align 4, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bo = phi i32 [ %.pre126, %bb.u ], [ %i.a, %bb.t ]
  %i.bp = phi ptr [ %.pre125, %bb.u ], [ %i.bc, %bb.t ]
  %i.bq = phi i32 [ %.pre122, %bb.u ], [ %.pre, %bb.t ]
  %i.br = add nsw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.br, ptr @H5_get_option.sp, align 4, !tbaa !28
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.bw = add nsw i32 %i.bq, 1
  store i32 %i.bw, ptr @H5_optind, align 4, !tbaa !28
  store i32 1, ptr @H5_get_option.sp, align 4, !tbaa !28
  br label %bb.an

bb.x:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24
  switch i8 %i.by, label %bb.ak [
    i8 58, label %bb.y
    i8 42, label %bb.af
  ]

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %.not80 = icmp eq i8 %i.ca, 0
  %i.cb = add nsw i32 %.pre, 1                    ; 3 uses
  store i32 %i.cb, ptr @H5_optind, align 4, !tbaa !28
  br i1 %.not80, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.bz, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %.not81 = icmp slt i32 %i.cb, %0
  br i1 %.not81, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr @H5_opterr, align 4, !tbaa !28
  %.not82 = icmp eq i32 %i.cc, 0
  br i1 %.not82, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.ce = load ptr, ptr %1, align 8, !tbaa !23
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.21, ptr noundef %i.ce, i32 noundef %i.bg) #19 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.cg = add nsw i32 %.pre, 2
  store i32 %i.cg, ptr @H5_optind, align 4, !tbaa !28
  %i.ch = sext i32 %i.cb to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23
  store ptr %i.cj, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.z
  %.2 = phi i32 [ %i.bg, %bb.z ], [ %i.bg, %bb.ad ], [ 63, %bb.ac ], [ 63, %bb.ab ]
  store i32 1, ptr @H5_get_option.sp, align 4, !tbaa !28
  br label %bb.an

bb.af:                                            ; preds = %bb.x
  %i.ck = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ck, ptr @H5_optind, align 4, !tbaa !28
  %i.cl = add nsw i32 %.pre, 2                    ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %0
  br i1 %i.cm, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cn = sext i32 %i.ck to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %.not79 = icmp eq i8 %i.cq, 45
  br i1 %.not79, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.cl, ptr @H5_optind, align 4, !tbaa !28
  store ptr %i.cp, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  store ptr null, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.an

bb.aj:                                            ; preds = %bb.af
  store ptr null, ptr @H5_optarg, align 8, !tbaa !23
  br label %bb.an

bb.ak:                                            ; preds = %bb.x
  %i.cr = add nsw i32 %i.a, 1                     ; 2 uses
  store i32 %i.cr, ptr @H5_get_option.sp, align 4, !tbaa !28
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.bc, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !24
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cw = add nsw i32 %.pre, 1
  store i32 %i.cw, ptr @H5_optind, align 4, !tbaa !28
  store i32 1, ptr @H5_get_option.sp, align 4, !tbaa !28
  br label %bb.am
end_hunk_0
