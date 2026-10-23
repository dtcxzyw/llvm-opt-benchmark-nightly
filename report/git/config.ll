Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/config?download=true
inline.NumInlined: 338
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@store_aux:bb.a
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
  %i.ck = load i32, ptr %i.ax, align 8, !tbaa !142
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ax, align 8, !tbaa !142
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
  %i.a = load i32, ptr %3, align 4, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 3 uses
  %.not87 = icmp eq i32 %i.f, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139 ; 5 uses
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !153
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !155
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
  %i.p = load i64, ptr %i.o, align 8, !tbaa !152
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !151  ; 3 uses
  %.14892 = add i32 %i.f, 1                       ; 3 uses
  %i.s = icmp ult i32 %.14892, %i.r
  br i1 %i.s, label %.lr.ph95, label %._crit_edge

.lr.ph95:                                         ; preds = %.thread64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph95, %bb.j
  %.14894 = phi i32 [ %.14892, %.lr.ph95 ], [ %.148, %bb.j ] ; 4 uses
  %.04593 = phi i32 [ %i.a, %.lr.ph95 ], [ %.146.ph, %bb.j ] ; 4 uses
  %i.u = zext i32 %.14894 to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !153
  switch i32 %i.x, label %bb.j [
    i32 3, label %.thread
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !155
  %.not58 = icmp eq i32 %i.z, 0
  br i1 %.not58, label %._crit_edge, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.aa = add i32 %.04593, 1                      ; 3 uses
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !142
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = icmp eq i32 %.14894, %i.af
  br i1 %i.ag, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.146.ph = phi i32 [ %i.aa, %bb.i ], [ %.04593, %bb.g ], [ %.04593, %bb.f ] ; 2 uses
  %.148 = add nuw i32 %.14894, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %.148, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.j, %bb.g, %.thread64
  %.045.lcssa = phi i32 [ %i.a, %.thread64 ], [ %.04593, %bb.g ], [ %.146.ph, %bb.j ]
  %.148.lcssa = phi i32 [ %.14892, %.thread64 ], [ %.14894, %bb.g ], [ %i.r, %bb.j ] ; 2 uses
  store i32 %.045.lcssa, ptr %3, align 4, !tbaa !24
  store i64 %i.p, ptr %1, align 8, !tbaa !25
  %i.ah = load i32, ptr %i.q, align 8, !tbaa !151 ; 2 uses
  %i.ai = icmp ult i32 %.148.lcssa, %i.ah
  %i.aj = add i32 %i.ah, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = zext i32 %.148.lcssa to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.an
  %storemerge.in = select i1 %i.ai, ptr %i.ao, ptr %i.am
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !25
  store i64 %storemerge, ptr %2, align 8, !tbaa !25
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
  %i.a = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
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
  %i.a = load i8, ptr %3, align 1, !tbaa !16      ; 2 uses
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = and i8 %i.e, 6
  %.not11.i = icmp eq i8 %i.f, 0
  br i1 %.not11.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.g, align 1, !tbaa !16
  br label %.preheader.i, !llvm.loop !207

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.165, i32 noundef 5) #29
  br label %_.exit

_.exit:                                           ; preds = %.loopexit, %bb.e
  %.0.i105 = phi ptr [ %i.i, %bb.e ], [ @.str.165, %.loopexit ]
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef %.0.i105, ptr noundef nonnull %3) #29 ; 0 uses
  br label %12

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
  %i.n = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
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
  %i.v = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
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
  %.val104 = load ptr, ptr %6, align 8, !tbaa !148
  %i.y = call ptr @get_tempfile_path(ptr noundef %.val104) #29
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !145
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
  %i.al = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i112 = icmp eq i32 %i.al, 0
  br i1 %.not4.i112, label %_.exit114, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #29
  br label %_.exit114

_.exit114:                                        ; preds = %bb.p, %bb.q
  %.0.i113 = phi ptr [ %i.am, %bb.q ], [ @.str.50, %bb.p ]
  %.val103 = load ptr, ptr %6, align 8, !tbaa !148
  %i.an = call ptr @get_tempfile_path(ptr noundef %.val103) #29
  %i.ao = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i113, ptr noundef %i.an) #29 ; 0 uses
  br label %.thread160

bb.r:                                             ; preds = %.lr.ph197, %bb.ax
  %.061196 = phi i32 [ 0, %.lr.ph197 ], [ %i.aq, %bb.ax ]
  %.066195 = phi i32 [ 0, %.lr.ph197 ], [ %.3, %bb.ax ]
  %.069192 = phi i32 [ 0, %.lr.ph197 ], [ %.4, %bb.ax ] ; 8 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !23 ; 10 uses
  %i.aq = add i32 %.061196, 1                     ; 2 uses
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.as = icmp ugt i64 %i.ar, 524287
  br i1 %i.as, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !16  ; 2 uses
  %.not92189 = icmp eq i8 %i.at, 0
  br i1 %.not92189, label %.critedge.thread, label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.au = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i115 = icmp eq i32 %i.au, 0
  br i1 %.not4.i115, label %.thread166, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.167, i32 noundef 5) #29
  br label %.thread166

.thread166:                                       ; preds = %bb.t, %bb.s
  %.0.i116 = phi ptr [ %i.av, %bb.t ], [ @.str.167, %bb.s ]
  %i.aw = zext i32 %i.aq to i64
  %i.ax = call i32 (ptr, ...) @error(ptr noundef %.0.i116, ptr noundef %.074, i64 noundef %i.aw) #29 ; 0 uses
  br label %.thread160

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %i.ay = phi i8 [ %i.bf, %bb.u ], [ %i.at, %.preheader ] ; 2 uses
  %.060190 = phi i64 [ %i.bd, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = and i8 %i.bb, 1
  %.not93 = icmp eq i8 %i.bc, 0
  br i1 %.not93, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bd = add i64 %.060190, 1                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16  ; 2 uses
  %.not92 = icmp eq i8 %i.bf, 0
  br i1 %.not92, label %.critedge.thread, label %.lr.ph, !llvm.loop !208

.critedge:                                        ; preds = %.lr.ph
  %.not169 = icmp eq i8 %i.ay, 91
  br i1 %.not169, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %.critedge
  %i.bg = load i64, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not94 = icmp eq i64 %i.bg, 0
  br i1 %.not94, label %strbuf_setlen.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.bi = call i64 @write_in_full(i32 noundef %i.l, ptr noundef %i.bh, i64 noundef %i.bg) #29
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.val102 = load ptr, ptr %6, align 8, !tbaa !148
  %i.bk = call ptr @get_tempfile_path(ptr noundef %.val102) #29
  %i.bl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not4.i.i, label %write_error.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #29
  br label %write_error.exit

write_error.exit:                                 ; preds = %bb.x, %bb.y
  %.0.i.i = phi ptr [ %i.bm, %bb.y ], [ @.str.164, %bb.x ]
  %i.bn = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef %i.bk) #29 ; 0 uses
  br label %.thread160

bb.z:                                             ; preds = %bb.w
  store i64 0, ptr %i.ah, align 8, !tbaa !22
  %i.bo = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %.not9.i = icmp eq ptr %i.bo, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.bo, align 1, !tbaa !16
  br label %strbuf_setlen.exit

bb.ab:                                            ; preds = %bb.z
  %i.bp = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !16
  %.not10.i = icmp eq i8 %i.bp, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #30
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.ab, %bb.aa, %bb.v
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@repo_config_copy_or_rename_section_in_file:bb.a
  %.1.i = phi i32 [ %.0.i119, %.thread67.i ], [ 1, %bb.ag ]
  %i.ct = add i64 %.4.i, 1
  br label %.preheader72.i, !llvm.loop !211

.critedge.i:                                      ; preds = %.thread67.i, %bb.ag, %.preheader72.i, %.preheader72.i, %.preheader70.i
  %i.cu = phi i8 [ %i.ck, %.preheader70.i ], [ %i.bu, %.preheader72.i ], [ %i.cp, %.thread67.i ], [ %i.cd, %bb.ag ], [ %i.bu, %.preheader72.i ]
  %.5.i = phi i64 [ %.253.i, %.preheader70.i ], [ %.051.i, %.preheader72.i ], [ %.3.i, %.thread67.i ], [ %.152.i, %bb.ag ], [ %.051.i, %.preheader72.i ]
  %.2.i = phi i64 [ %.049.i, %.preheader70.i ], [ %.049.i, %.preheader72.i ], [ %i.cq, %.thread67.i ], [ %i.bz, %bb.ag ], [ %.049.i, %.preheader72.i ]
  %i.cv = icmp eq i8 %i.cu, 93
  br i1 %i.cv, label %bb.ak, label %.thread140

bb.ak:                                            ; preds = %.critedge.i
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %.2.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %.preheader.i120, label %.thread140

.preheader.i120:                                  ; preds = %bb.ak, %bb.al
  %.6.in.i = phi i64 [ %.6.i, %bb.al ], [ %.5.i, %bb.ak ]
  %.6.i = add i64 %.6.in.i, 1                     ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 %.6.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16  ; 2 uses
  %.not64.i = icmp eq i8 %i.da, 0
  br i1 %.not64.i, label %section_name_match.exit, label %bb.al

bb.al:                                            ; preds = %.preheader.i120
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.de = and i8 %i.dd, 1
  %.not65.i = icmp eq i8 %i.de, 0
  br i1 %.not65.i, label %section_name_match.exit, label %.preheader.i120, !llvm.loop !212

section_name_match.exit:                          ; preds = %.preheader.i120, %bb.al
  %.not95 = icmp eq i64 %.6.i, 0
  br i1 %.not95, label %.thread140, label %bb.am

bb.am:                                            ; preds = %section_name_match.exit
  %i.df = add nsw i32 %.069192, 1                 ; 4 uses
  br i1 %.not, label %bb.ax, label %bb.an, !llvm.loop !213

bb.an:                                            ; preds = %bb.am
  %i.dg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  store i64 %i.dg, ptr %10, align 8, !tbaa !154
  br i1 %.not96, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call fastcc void @store_create_section(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %3, ptr noundef nonnull readonly %10)
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.di = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.dj = call i64 @write_in_full(i32 noundef range(i32 0, -2147483648) %i.l, ptr noundef %i.dh, i64 noundef %i.di) #29
  call void @strbuf_release(ptr noundef nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.val101 = load ptr, ptr %6, align 8, !tbaa !148
  %i.dl = call ptr @get_tempfile_path(ptr noundef %.val101) #29
  call fastcc void @write_error(ptr noundef %i.dl)
  br label %.thread160

bb.aq:                                            ; preds = %bb.ao
  %i.dm = getelementptr i8, ptr %i.ap, i64 %.6.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.060190 ; 3 uses
  %char0 = load i8, ptr %i.dn, align 1
  %.not97 = icmp eq i8 %char0, 0
  br i1 %.not97, label %.thread140, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -1 ; 2 uses
  store i8 9, ptr %i.do, align 1, !tbaa !16
  br label %.thread140

bb.as:                                            ; preds = %bb.an
  call void @strbuf_release(ptr noundef nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call fastcc void @store_create_section(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull %3, ptr noundef %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.thread140

.critedge.thread:                                 ; preds = %bb.u, %.preheader, %.critedge
  %.not98 = icmp eq i32 %.066195, 0
  br i1 %.not98, label %.thread140, label %bb.ax, !llvm.loop !213

.thread140:                                       ; preds = %bb.af, %bb.as, %bb.ar, %bb.aq, %section_name_match.exit, %bb.ak, %strbuf_setlen.exit, %.critedge.i, %.critedge.thread
  %.2146 = phi ptr [ %i.ap, %.critedge.thread ], [ %i.ap, %bb.as ], [ %i.ap, %section_name_match.exit ], [ %i.dn, %bb.aq ], [ %i.do, %bb.ar ], [ %i.ap, %bb.ak ], [ %i.ap, %strbuf_setlen.exit ], [ %i.ap, %.critedge.i ], [ %i.ap, %bb.af ] ; 3 uses
  %.372145 = phi i32 [ %.069192, %.critedge.thread ], [ %i.df, %bb.as ], [ %.069192, %section_name_match.exit ], [ %i.df, %bb.aq ], [ %i.df, %bb.ar ], [ %.069192, %bb.ak ], [ %.069192, %strbuf_setlen.exit ], [ %.069192, %.critedge.i ], [ %.069192, %bb.af ]
  %i.dp = phi i1 [ true, %.critedge.thread ], [ false, %bb.as ], [ false, %section_name_match.exit ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.ak ], [ false, %strbuf_setlen.exit ], [ false, %.critedge.i ], [ false, %bb.af ]
  %i.dq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2146) #28 ; 2 uses
  %i.dr = load i64, ptr %i.ah, align 8
  %i.ds = icmp ne i64 %i.dr, 0
  %or.cond = select i1 %i.dp, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread140
  call void @strbuf_add(ptr noundef nonnull %9, ptr noundef nonnull %.2146, i64 noundef %i.dq) #29
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread140
  %i.dt = call i64 @write_in_full(i32 noundef %i.l, ptr noundef nonnull %.2146, i64 noundef %i.dq) #29
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.val100 = load ptr, ptr %6, align 8, !tbaa !148
  %i.dv = call ptr @get_tempfile_path(ptr noundef %.val100) #29
  %i.dw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i121 = icmp eq i32 %i.dw, 0
  br i1 %.not4.i.i121, label %write_error.exit123, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #29
  br label %write_error.exit123

write_error.exit123:                              ; preds = %bb.av, %bb.aw
  %.0.i.i122 = phi ptr [ %i.dx, %bb.aw ], [ @.str.164, %bb.av ]
  %i.dy = call i32 (ptr, ...) @error(ptr noundef %.0.i.i122, ptr noundef %i.dv) #29 ; 0 uses
  br label %.thread160

bb.ax:                                            ; preds = %bb.am, %bb.au, %.critedge.thread
  %.4 = phi i32 [ %.069192, %.critedge.thread ], [ %.372145, %bb.au ], [ %i.df, %bb.am ] ; 2 uses
  %.3 = phi i32 [ 1, %.critedge.thread ], [ 0, %bb.au ], [ 1, %bb.am ]
  %i.dz = call i32 @strbuf_getwholeline(ptr noundef nonnull %7, ptr noundef nonnull %i.q, i32 noundef 10) #29
  %.not90 = icmp eq i32 %i.dz, 0
  br i1 %.not90, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ax, %.preheader171
  %.069.lcssa = phi i32 [ 0, %.preheader171 ], [ %.4, %bb.ax ]
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !22 ; 2 uses
  %.not91 = icmp eq i64 %i.eb, 0
  br i1 %.not91, label %strbuf_setlen.exit127, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !23
  %i.ee = call i64 @write_in_full(i32 noundef %i.l, ptr noundef %i.ed, i64 noundef %i.eb) #29
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.val = load ptr, ptr %6, align 8, !tbaa !148
  %i.eg = call ptr @get_tempfile_path(ptr noundef %.val) #29
  call fastcc void @write_error(ptr noundef %i.eg)
  br label %.thread160

bb.ba:                                            ; preds = %bb.ay
  store i64 0, ptr %i.ea, align 8, !tbaa !22
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !23 ; 2 uses
  %.not9.i125 = icmp eq ptr %i.eh, @strbuf_slopbuf
  br i1 %.not9.i125, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.eh, align 1, !tbaa !16
  br label %strbuf_setlen.exit127

bb.bc:                                            ; preds = %bb.ba
  %i.ei = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !16
  %.not10.i126 = icmp eq i8 %i.ei, 0
  br i1 %.not10.i126, label %strbuf_setlen.exit127, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #30
  unreachable

strbuf_setlen.exit127:                            ; preds = %bb.bc, %bb.bb, %._crit_edge
  %i.ej = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.k, %strbuf_setlen.exit127
  %.5 = phi i32 [ %.069.lcssa, %strbuf_setlen.exit127 ], [ 0, %bb.k ]
  %i.ek = call i32 @commit_lock_file(ptr noundef nonnull %6) #29
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %bb.bf, label %.thread153

bb.bf:                                            ; preds = %bb.be
  %i.em = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i128 = icmp eq i32 %i.em, 0
  br i1 %.not4.i128, label %_.exit130, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.en = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #29
  br label %_.exit130

_.exit130:                                        ; preds = %bb.bf, %bb.bg
  %.0.i129 = phi ptr [ %i.en, %bb.bg ], [ @.str.52, %bb.bf ]
  %i.eo = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i129, ptr noundef %.074) #29 ; 0 uses
  br label %.thread153

.thread160:                                       ; preds = %bb.ap, %write_error.exit, %write_error.exit123, %_.exit114, %_.exit111, %bb.az, %.thread166
  %.6164 = phi i32 [ -1, %.thread166 ], [ 4, %bb.az ], [ -1, %_.exit114 ], [ -1, %_.exit111 ], [ 4, %write_error.exit123 ], [ 4, %write_error.exit ], [ 4, %bb.ap ]
  %i.ep = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %.thread153

.thread153:                                       ; preds = %bb.k, %bb.be, %_.exit130, %_.exit108, %.thread160
  %.6157 = phi i32 [ -1, %_.exit108 ], [ %.6164, %.thread160 ], [ %i.r, %bb.k ], [ %.5, %bb.be ], [ -1, %_.exit130 ]
  %i.eq = call i32 @rollback_lock_file(ptr noundef nonnull %6) #29 ; 0 uses
  br label %12

12:                                               ; preds = %.thread153, %_.exit
  %.7 = phi i32 [ %.6157, %.thread153 ], [ -1, %_.exit ]
  %.165 = phi ptr [ %.064, %.thread153 ], [ null, %_.exit ]
  call void @free(ptr noundef %.165) #29
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  call void @free(ptr noundef %14) #29
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !137    ; 3 uses
  %switch.i = icmp ult ptr %16, inttoptr (i64 2 to ptr)
  br i1 %switch.i, label %config_store_data_clear.exit, label %17

17:                                               ; preds = %12
  call void @regfree(ptr noundef nonnull %16) #29
  call void @free(ptr noundef %16) #29
  br label %config_store_data_clear.exit

config_store_data_clear.exit:                     ; preds = %12, %17
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  call void @free(ptr noundef %19) #29
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  call void @free(ptr noundef %21) #29
  call void @strbuf_release(ptr noundef nonnull %7) #29
  call void @strbuf_release(ptr noundef nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_config_rename_section(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @repo_config_copy_or_rename_section_in_file(ptr noundef %0, ptr noundef null, ptr noundef readonly %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_config_copy_section_in_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @repo_config_copy_or_rename_section_in_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @repo_config_copy_section(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @repo_config_copy_or_rename_section_in_file(ptr noundef %0, ptr noundef null, ptr noundef readonly %1, ptr noundef %2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @parse_config_key(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ] ; 6 uses
  %.06.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.a = load i8, ptr %.06.i, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.c = load i8, ptr %.07.i, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.e = icmp eq i8 %i.c, %i.a
  br i1 %i.e, label %bb.b, label %skip_prefix_impl.exit, !llvm.loop !215

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.07.i, align 1, !tbaa !16
  %.not = icmp eq i8 %i.f, 46
  br i1 %.not, label %bb.e, label %skip_prefix_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.07.i, i32 noundef 46) #28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %4, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, %.07.i
  %.not16 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not16, label %skip_prefix_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !26
  br label %skip_prefix_impl.exit.sink.split

bb.h:                                             ; preds = %bb.e
  br i1 %.not16, label %skip_prefix_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !26
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  br label %skip_prefix_impl.exit.sink.split

skip_prefix_impl.exit.sink.split:                 ; preds = %bb.g, %bb.i
  %.sink = phi i64 [ %i.m, %bb.i ], [ 0, %bb.g ]
  store i64 %.sink, ptr %3, align 8, !tbaa !25
  br label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %bb.c, %skip_prefix_impl.exit.sink.split, %bb.f, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %skip_prefix_impl.exit.sink.split ], [ -1, %bb.h ], [ -1, %bb.d ], [ 0, %bb.f ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @config_origin_type_name(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 3607, ptr noundef nonnull @.str.61) #30
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_origin_type_name, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @config_scope_name(i32 noundef %0) local_unnamed_addr #23 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_scope_name, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.68, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nounwind memory(read) uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @lookup_config(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call i32 @strcasecmp(ptr noundef %2, ptr noundef nonnull %i.c) #28
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %._crit_edge.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.e, %._crit_edge.loopexit.split.loop.exit ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @strbuf_addch(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %strbuf_avail.exit.thread, label %strbuf_avail.exit

strbuf_avail.exit:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.neg = add i64 %i.c, 1                         ; 2 uses
  %.not = icmp eq i64 %i.a, %.neg
  br i1 %.not, label %strbuf_avail.exit.thread, label %bb.b

strbuf_avail.exit.thread:                         ; preds = %bb.a, %strbuf_avail.exit
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  %.pre7 = add i64 %.pre, 1
  br label %bb.b

bb.b:                                             ; preds = %strbuf_avail.exit.thread, %strbuf_avail.exit
  %.pre-phi = phi i64 [ %.pre7, %strbuf_avail.exit.thread ], [ %.neg, %strbuf_avail.exit ]
  %i.d = phi i64 [ %.pre, %strbuf_avail.exit.thread ], [ %i.c, %strbuf_avail.exit ]
  %i.e = trunc i32 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  store i8 %i.e, ptr %i.i, align 1, !tbaa !16
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.k = load i64, ptr %i.h, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
end_hunk_1
