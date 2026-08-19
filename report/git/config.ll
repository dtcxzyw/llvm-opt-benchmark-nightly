inline.NumInlined: 338
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@store_aux:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !192
  %i.am = shl nuw nsw i64 %i.aj, 2
  %i.an = tail call ptr @xrealloc(ptr noundef %i.al, i64 noundef %i.am) #29 ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !192
  %.pre78 = load i32, ptr %i.t, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.ao = phi i32 [ %i.ab, %._crit_edge ], [ %.pre78, %st_mult.exit ]
  %i.ap = phi ptr [ %.pre77, %._crit_edge ], [ %i.an, %st_mult.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !193
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.as
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !20
  %i.au = load i32, ptr %i.t, align 8, !tbaa !183
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.t, align 8, !tbaa !183
  br label %matches.exit.thread

bb.m:                                             ; preds = %bb.a
  %i.aw = and i8 %i.b, 4
  %.not49 = icmp eq i8 %i.aw, 0
  br i1 %.not49, label %matches.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !183 ; 2 uses
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191 ; 2 uses
  %i.bc = icmp ugt i32 %i.az, %i.bb
  br i1 %i.bc, label %st_mult.exit57, label %._crit_edge79

._crit_edge79:                                    ; preds = %bb.n
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !192
  br label %bb.o

st_mult.exit57:                                   ; preds = %bb.n
  %i.bd = mul i32 %i.bb, 3
  %i.be = add i32 %i.bd, 48
  %i.bf = lshr i32 %i.be, 1
  %.53 = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.az) ; 2 uses
  store i32 %.53, ptr %i.ba, align 4, !tbaa !191
  %i.bg = zext i32 %.53 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !192
  %i.bj = shl nuw nsw i64 %i.bg, 2
  %i.bk = tail call ptr @xrealloc(ptr noundef %i.bi, i64 noundef %i.bj) #29 ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !192
  %.pre82 = load i32, ptr %i.ax, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge79, %st_mult.exit57
  %i.bl = phi i32 [ %i.ay, %._crit_edge79 ], [ %.pre82, %st_mult.exit57 ]
  %i.bm = phi ptr [ %.pre81, %._crit_edge79 ], [ %i.bk, %st_mult.exit57 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !193
  %i.bp = zext i32 %i.bl to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !20
  %i.br = load i8, ptr %i.a, align 8
  %i.bs = or i8 %i.br, 2                          ; 2 uses
  store i8 %i.bs, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !176
  %i.bv = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.bu) #28
  %.not.i58 = icmp eq i32 %i.bv, 0
  br i1 %.not.i58, label %bb.p, label %matches.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !204 ; 2 uses
  %i.by = icmp ne ptr %i.bx, null
  %i.bz = icmp ne ptr %1, null                    ; 2 uses
  %or.cond.i60 = and i1 %i.bz, %i.by
  br i1 %or.cond.i60, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(1) %1) #28
  %.not18.i63 = icmp eq i32 %i.ca, 0
  %i.cb = zext i1 %.not18.i63 to i32
  br label %matches.exit64

bb.r:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !178 ; 2 uses
  %magicptr.i61 = ptrtoint ptr %i.cd to i64
  switch i64 %magicptr.i61, label %bb.s [
    i64 0, label %matches.exit64.thread72
    i64 1, label %matches.exit.thread
  ]

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !177 ; 2 uses
  br i1 %i.bz, label %bb.t, label %matches.exit64

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call i32 @regexec(ptr noundef nonnull %i.cd, ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i32 noundef 0) #29
  %.not17.i62 = icmp eq i32 %i.cg, 0
  %i.ch = zext i1 %.not17.i62 to i32
  %i.ci = xor i32 %i.cf, %i.ch
  br label %matches.exit64

matches.exit64:                                   ; preds = %bb.q, %bb.s, %bb.t
  %.0.i59 = phi i32 [ %i.cf, %bb.s ], [ %i.cb, %bb.q ], [ %i.ci, %bb.t ]
  %.not50 = icmp eq i32 %.0.i59, 0
  br i1 %.not50, label %matches.exit.thread, label %matches.exit64.matches.exit64.thread72_crit_edge

matches.exit64.matches.exit64.thread72_crit_edge: ; preds = %matches.exit64
  %.pre83 = load i8, ptr %i.a, align 8
  br label %matches.exit64.thread72

matches.exit64.thread72:                          ; preds = %matches.exit64.matches.exit64.thread72_crit_edge, %bb.r
  %i.cj = phi i8 [ %.pre83, %matches.exit64.matches.exit64.thread72_crit_edge ], [ %i.bs, %bb.r ]
  %i.ck = load i32, ptr %i.ax, align 8, !tbaa !183
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ax, align 8, !tbaa !183
  %i.cm = or i8 %i.cj, 1
  store i8 %i.cm, ptr %i.a, align 8
  br label %matches.exit.thread

matches.exit.thread:                              ; preds = %bb.r, %bb.o, %bb.e, %bb.b, %bb.m, %matches.exit64.thread72, %matches.exit64, %matches.exit, %bb.l
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

declare ptr @xmmap_gently(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @mmap_os_err() local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @maybe_remove_section(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !20     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 3 uses
  %.not87 = icmp eq i32 %i.f, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !180 ; 5 uses
  br i1 %.not87, label %.thread64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.04988 = phi i32 [ 0, %.lr.ph ], [ %.150, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.h = and i64 %indvars.iv.next, 4294967295
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198
  switch i32 %i.k, label %bb.e [
    i32 3, label %.thread
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.not57 = icmp eq i32 %.04988, 0
  br i1 %.not57, label %.thread, label %.thread64

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !203
  %.not56 = icmp eq i32 %i.m, 0
  br i1 %.not56, label %.thread64, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.150 = phi i32 [ %.04988, %bb.b ], [ 1, %bb.d ]
  %i.n = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.thread64, label %bb.b, !llvm.loop !205

.thread64:                                        ; preds = %bb.e, %bb.d, %bb.a, %bb.c
  %.04784 = phi i64 [ %indvars.iv, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ %indvars.iv, %bb.d ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.04784
  %i.p = load i64, ptr %i.o, align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !193  ; 3 uses
  %.14892 = add i32 %i.f, 1                       ; 3 uses
  %i.s = icmp ult i32 %.14892, %i.r
  br i1 %i.s, label %.lr.ph95, label %._crit_edge

.lr.ph95:                                         ; preds = %.thread64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = zext i32 %.14892 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph95, %bb.j
  %indvars.iv107 = phi i64 [ %4, %.lr.ph95 ], [ %indvars.iv.next108, %bb.j ] ; 4 uses
  %.04593 = phi i32 [ %i.a, %.lr.ph95 ], [ %.146.ph, %bb.j ] ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %indvars.iv107 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !198
  switch i32 %i.w, label %bb.j [
    i32 3, label %.thread
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !203
  %.not58 = icmp eq i32 %i.y, 0
  br i1 %.not58, label %._crit_edge.loopexit.split.loop.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = add i32 %.04593, 1                       ; 3 uses
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !183
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20
  %5 = zext i32 %i.ae to i64
  %i.af = icmp eq i64 %indvars.iv107, %5
  br i1 %i.af, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.146.ph = phi i32 [ %i.z, %bb.i ], [ %.04593, %bb.g ], [ %.04593, %bb.f ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !206

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.g
  %6 = trunc nuw i64 %indvars.iv107 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.loopexit.split.loop.exit, %.thread64
  %.045.lcssa = phi i32 [ %i.a, %.thread64 ], [ %.04593, %._crit_edge.loopexit.split.loop.exit ], [ %.146.ph, %bb.j ]
  %.148.lcssa = phi i32 [ %.14892, %.thread64 ], [ %6, %._crit_edge.loopexit.split.loop.exit ], [ %i.r, %bb.j ] ; 2 uses
  store i32 %.045.lcssa, ptr %3, align 4, !tbaa !20
  store i64 %i.p, ptr %1, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !193 ; 2 uses
  %i.ah = icmp ult i32 %.148.lcssa, %i.ag
  %i.ai = add i32 %i.ag, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = zext i32 %.148.lcssa to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.am
  %storemerge.in = select i1 %i.ah, ptr %i.an, ptr %i.al
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !21
  store i64 %storemerge, ptr %2, align 8, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.h, %bb.i, %bb.f, %bb.c, %._crit_edge
  ret void
}

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @commit_lock_file(ptr noundef) local_unnamed_addr #3

declare i32 @rollback_lock_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @write_error(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i = icmp eq i32 %i.a, 0
  br i1 %.not4.i, label %_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #29
  br label %_.exit

_.exit:                                           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ @.str.164, %bb.a ]
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %0) #29 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_config_rename_section_in_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @repo_config_copy_or_rename_section_in_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @repo_config_copy_or_rename_section_in_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  %6 = alloca %struct.lock_file, align 8          ; 12 uses
  %7 = alloca %struct.strbuf, align 8             ; 8 uses
  %8 = alloca %struct.stat, align 8               ; 4 uses
  %9 = alloca %struct.strbuf, align 8             ; 11 uses
  %10 = alloca %struct.config_store_data, align 8 ; 10 uses
  %11 = alloca %struct.strbuf, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.repo_config_copy_or_rename_section_in_file.copystr, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.repo_config_copy_or_rename_section_in_file.copystr, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %10, i8 0, i64 88, i1 false)
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %section_name_is_ok.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !tbaa !12      ; 2 uses
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %i.b = phi i8 [ %.pr.i, %bb.d ], [ %i.a, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %3, %bb.b ]
  switch i8 %i.b, label %bb.c [
    i8 0, label %section_name_is_ok.exit
    i8 46, label %section_name_is_ok.exit
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %.preheader.i
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = and i8 %i.e, 6
  %.not11.i = icmp eq i8 %i.f, 0
  br i1 %.not11.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.g, align 1, !tbaa !12
  br label %.preheader.i, !llvm.loop !207

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.165, i32 noundef 5) #29
  br label %_.exit

_.exit:                                           ; preds = %.loopexit, %bb.e
  %.0.i105 = phi ptr [ %i.i, %bb.e ], [ @.str.165, %.loopexit ]
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef %.0.i105, ptr noundef nonnull %3) #29 ; 0 uses
  br label %bb.bh

section_name_is_ok.exit:                          ; preds = %.preheader.i, %.preheader.i, %bb.a
  %.not87 = icmp eq ptr %1, null
  br i1 %.not87, label %bb.f, label %bb.g

bb.f:                                             ; preds = %section_name_is_ok.exit
  %i.k = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %0, ptr noundef nonnull @.str.26) #29 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %section_name_is_ok.exit
  %.074 = phi ptr [ %1, %section_name_is_ok.exit ], [ %i.k, %bb.f ] ; 7 uses
  %.064 = phi ptr [ null, %section_name_is_ok.exit ], [ %i.k, %bb.f ]
  %i.l = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %6, ptr noundef %.074, i32 noundef 0, i64 noundef 0, i32 noundef 438) #29 ; 5 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i106 = icmp eq i32 %i.n, 0
  br i1 %.not4.i106, label %_.exit108, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #29
  br label %_.exit108

_.exit108:                                        ; preds = %bb.h, %bb.i
  %.0.i107 = phi ptr [ %i.o, %bb.i ], [ @.str.44, %bb.h ]
  %i.p = call i32 (ptr, ...) @error(ptr noundef %.0.i107, ptr noundef %.074) #29 ; 0 uses
  br label %.thread153

bb.j:                                             ; preds = %bb.g
  %i.q = call ptr @git_fopen(ptr noundef %.074, ptr noundef nonnull @.str.166) #29 ; 6 uses
  %.not88 = icmp eq ptr %i.q, null
  br i1 %.not88, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = call i32 @warn_on_fopen_errors(ptr noundef %.074) #29 ; 2 uses
  %.not89 = icmp eq i32 %i.r, 0
  br i1 %.not89, label %bb.be, label %.thread153

bb.l:                                             ; preds = %bb.j
  %i.s = call i32 @fileno(ptr noundef nonnull %i.q) #29
  %i.t = call i32 @fstat64(i32 noundef %i.s, ptr noundef nonnull %8) #29
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i109 = icmp eq i32 %i.v, 0
  br i1 %.not4.i109, label %_.exit111, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #29
  br label %_.exit111

_.exit111:                                        ; preds = %bb.m, %bb.n
  %.0.i110 = phi ptr [ %i.w, %bb.n ], [ @.str.48, %bb.m ]
  %i.x = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i110, ptr noundef %.074) #29 ; 0 uses
  br label %.thread160

bb.o:                                             ; preds = %bb.l
  %.val104 = load ptr, ptr %6, align 8, !tbaa !188
  %i.y = call ptr @get_tempfile_path(ptr noundef %.val104) #29
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !187
  %i.ab = and i32 %i.aa, 4095
  %i.ac = call i32 @chmod(ptr noundef %i.y, i32 noundef %i.ab) #29
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %.preheader171

.preheader171:                                    ; preds = %bb.o
  %i.ae = call i32 @strbuf_getwholeline(ptr noundef nonnull %7, ptr noundef nonnull %i.q, i32 noundef 10) #29
  %.not90191 = icmp eq i32 %i.ae, 0
  br i1 %.not90191, label %.lr.ph197, label %._crit_edge

.lr.ph197:                                        ; preds = %.preheader171
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.not96 = icmp eq i32 %4, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.r

bb.p:                                             ; preds = %bb.o
end_hunk_0
