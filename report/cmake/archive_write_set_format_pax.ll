begin_hunk_0_@build_ustar_entry_name:bb.a
  %i.aa = load i8, ptr %.0118.ptr.ptr.lcssa, align 1, !tbaa !32
  %i.ab = icmp eq i8 %i.aa, 47
  %or.cond146.not = and i1 %.0118.idx.lcssa, %i.ab
  %.0118.ptr.add = zext i1 %or.cond146.not to i64
  %.1119.idx = add nsw i64 %.0116.ptr.add.lcssa, %.0118.ptr.add ; 3 uses
  %.1119.ptr = getelementptr inbounds i8, ptr %1, i64 %.1119.idx ; 8 uses
  %i.ac = sub i64 %i.z, %.0208                    ; 3 uses
  %i.ad = add nsw i64 %.1119.idx, %i.ac
  %i.ae = icmp sgt i64 %.0116.idx.lcssa212226, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.1119.ptr, i64 %i.ac
  %.1117 = select i1 %i.ae, ptr %i.af, ptr %.0116.ptr.ptr.lcssa214222
  %i.ag = ptrtoint ptr %.1117 to i64
  %i.ah = ptrtoint ptr %.1119.ptr to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = sub i64 %i.ac, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.al = icmp slt i64 %.1119.idx, 154
  %.0125 = select i1 %i.al, ptr %.1119.ptr, ptr %i.ak ; 3 uses
  %i.am = icmp ugt ptr %.0125, %1
  br i1 %i.am, label %.lr.ph184, label %.critedge3

.lr.ph184:                                        ; preds = %.critedge, %bb.k
  %.1126183 = phi ptr [ %i.ao, %bb.k ], [ %.0125, %.critedge ] ; 3 uses
  %i.an = load i8, ptr %.1126183, align 1, !tbaa !32
  %.not143 = icmp eq i8 %i.an, 47
  br i1 %.not143, label %.critedge3, label %bb.k

bb.k:                                             ; preds = %.lr.ph184
  %i.ao = getelementptr inbounds i8, ptr %.1126183, i64 -1 ; 2 uses
  %i.ap = icmp ugt ptr %i.ao, %1
  br i1 %i.ap, label %.lr.ph184, label %.critedge3, !llvm.loop !66

.critedge3:                                       ; preds = %.lr.ph184, %bb.k, %.critedge
  %.1126.lcssa = phi ptr [ %.0125, %.critedge ], [ %1, %bb.k ], [ %.1126183, %.lr.ph184 ] ; 4 uses
  %i.aq = icmp ult ptr %.1126.lcssa, %.1119.ptr
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge3
  %i.ar = load i8, ptr %.1126.lcssa, align 1, !tbaa !32
  %i.as = icmp eq i8 %i.ar, 47
  %spec.select147.idx = zext i1 %i.as to i64
  %spec.select147 = getelementptr inbounds nuw i8, ptr %.1126.lcssa, i64 %spec.select147.idx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge3
  %.2127 = phi ptr [ %.1126.lcssa, %.critedge3 ], [ %spec.select147, %bb.l ] ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2127, i64 %i.aj ; 2 uses
  %i.au = icmp ugt ptr %i.at, %.1119.ptr
  %spec.select148 = select i1 %i.au, ptr %.1119.ptr, ptr %i.at ; 2 uses
  %i.av = icmp ult ptr %spec.select148, %.2127
  %.1121 = select i1 %i.av, ptr %.2127, ptr %spec.select148 ; 3 uses
  %i.aw = icmp ugt ptr %.1121, %.2127
  br i1 %i.aw, label %.lr.ph189, label %.critedge5

.lr.ph189:                                        ; preds = %bb.m, %bb.n
  %.2122188 = phi ptr [ %i.ay, %bb.n ], [ %.1121, %bb.m ] ; 3 uses
  %i.ax = load i8, ptr %.2122188, align 1, !tbaa !32
  %.not144 = icmp eq i8 %i.ax, 47
  br i1 %.not144, label %.critedge5, label %bb.n

bb.n:                                             ; preds = %.lr.ph189
  %i.ay = getelementptr inbounds i8, ptr %.2122188, i64 -1 ; 3 uses
  %i.az = icmp ugt ptr %i.ay, %.2127
  br i1 %i.az, label %.lr.ph189, label %.critedge5, !llvm.loop !67

.critedge5:                                       ; preds = %.lr.ph189, %bb.n, %bb.m
  %.2122.lcssa = phi ptr [ %.1121, %bb.m ], [ %i.ay, %bb.n ], [ %.2122188, %.lr.ph189 ] ; 4 uses
  %i.ba = icmp ult ptr %.2122.lcssa, %.1119.ptr
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge5
  %i.bb = load i8, ptr %.2122.lcssa, align 1, !tbaa !32
  %i.bc = icmp eq i8 %i.bb, 47
  %spec.select149.idx = zext i1 %i.bc to i64
  %spec.select149 = getelementptr inbounds nuw i8, ptr %.2122.lcssa, i64 %spec.select149.idx
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge5
  %.3123 = phi ptr [ %.2122.lcssa, %.critedge5 ], [ %spec.select149, %bb.o ] ; 2 uses
  %i.bd = icmp ugt ptr %.2127, %1
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = ptrtoint ptr %.2127 to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = tail call ptr @strncpy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.bg) #15 ; 0 uses
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bg
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0115 = phi ptr [ %i.bi, %bb.q ], [ %0, %bb.p ] ; 3 uses
  %i.bj = icmp ugt ptr %.3123, %.2127
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = ptrtoint ptr %.3123 to i64
  %i.bl = ptrtoint ptr %.2127 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = tail call ptr @strncpy(ptr noundef %.0115, ptr noundef %.2127, i64 noundef %i.bm) #15 ; 0 uses
  %i.bo = getelementptr inbounds i8, ptr %.0115, i64 %i.bm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1 = phi ptr [ %i.bo, %bb.s ], [ %.0115, %bb.r ] ; 3 uses
  br i1 %i.a, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.1, ptr noundef nonnull dereferenceable(1) %3) #15 ; 0 uses
  %i.bq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 47, ptr %i.br, align 1, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2 = phi ptr [ %i.bs, %bb.u ], [ %.1, %bb.t ]  ; 2 uses
  %i.bt = tail call ptr @strncpy(ptr noundef %.2, ptr noundef %.1119.ptr, i64 noundef %i.ai) #15 ; 0 uses
  %i.bu = getelementptr inbounds i8, ptr %.2, i64 %i.ai ; 3 uses
  br i1 %.not.lcssa213224, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 47, ptr %i.bu, align 1, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi ptr [ %i.bv, %bb.w ], [ %i.bu, %bb.v ]
  store i8 0, ptr %.3, align 1, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @archive_entry_set_hardlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_symlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_pax_attr_int(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !32
  %.0.i = tail call i64 @llvm.abs.i64(i64 %2, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %.1.i = phi i64 [ %.0.i, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = urem i64 %.1.i, 10
  %i.d = getelementptr inbounds nuw i8, ptr @.str.58, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32
  %i.f = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 3 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !32
  %i.g = udiv i64 %.1.i, 10
  %.not.i = icmp ult i64 %.1.i, 10
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !68

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %bb.d, label %format_int.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.i, align 1, !tbaa !32
  br label %format_int.exit

format_int.exit:                                  ; preds = %bb.c, %bb.d
  %.110.i = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110.i) #17
  call fastcc void @add_pax_attr_binary(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.110.i, i64 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i64 @archive_entry_rdevmajor(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_rdevminor(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_fflags_text(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_xattr_count(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_acl_types(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_symlink_type(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_ctime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_ctime_nsec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_pax_attr_time(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 49 ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01725 = phi i32 [ 10, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %.02124 = phi i64 [ %3, %bb.a ], [ %i.d, %bb.b ] ; 3 uses
  %i.c = urem i64 %.02124, 10                     ; 3 uses
  %i.d = udiv i64 %.02124, 10                     ; 3 uses
  %i.e = add nsw i32 %.01725, -1                  ; 4 uses
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.g = icmp eq i64 %i.c, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.c, !llvm.loop !69

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.i = icmp sgt i32 %.01725, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %4 = getelementptr inbounds nuw i8, ptr @.str.58, i64 %i.c
  %5 = load i8, ptr %4, align 1, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store i8 %5, ptr %6, align 16, !tbaa !32
  %7 = urem i64 %i.d, 10
  %8 = udiv i64 %.02124, 100
  %9 = add nsw i32 %.01725, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.029.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %6, %.lr.ph.prol ]
  %.11828.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %9, %.lr.ph.prol ]
  %.12027.in.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %7, %.lr.ph.prol ]
  %.12226.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %8, %.lr.ph.prol ]
  %.lcssa45.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %6, %.lr.ph.prol ]
  %10 = icmp eq i32 %.01725, 2
  br i1 %10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.029 = phi ptr [ %i.l, %.lr.ph ], [ %.029.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.11828 = phi i32 [ %i.o, %.lr.ph ], [ %.11828.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.12027.in = phi i64 [ %i.m, %.lr.ph ], [ %.12027.in.unr, %.lr.ph.prol.loopexit ]
  %.12226 = phi i64 [ %i.n, %.lr.ph ], [ %.12226.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr @.str.58, i64 %.12027.in
  %12 = load i8, ptr %11, align 1, !tbaa !32
  %13 = getelementptr inbounds i8, ptr %.029, i64 -1
  store i8 %12, ptr %13, align 1, !tbaa !32
  %14 = urem i64 %.12226, 10
  %15 = udiv i64 %.12226, 10
  %i.j = getelementptr inbounds nuw i8, ptr @.str.58, i64 %14
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  %i.l = getelementptr inbounds i8, ptr %.029, i64 -2 ; 3 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !32
  %i.m = urem i64 %15, 10
  %i.n = udiv i64 %.12226, 100
  %i.o = add nsw i32 %.11828, -2
  %16 = icmp sgt i32 %.11828, 2
  br i1 %16, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ %i.b, %.preheader ], [ %.lcssa45.unr, %.lr.ph.prol.loopexit ], [ %i.l, %.lr.ph ]
  %i.p = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1 ; 2 uses
  store i8 46, ptr %i.p, align 1, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.1 = phi ptr [ %i.p, %._crit_edge ], [ %i.b, %bb.c ]
  %.0.i = tail call i64 @llvm.abs.i64(i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.09.i = phi ptr [ %.1, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.1.i = phi i64 [ %.0.i, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  %i.q = urem i64 %.1.i, 10
  %i.r = getelementptr inbounds nuw i8, ptr @.str.58, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  %i.t = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 3 uses
  store i8 %i.s, ptr %i.t, align 1, !tbaa !32
  %i.u = udiv i64 %.1.i, 10
  %.not.i = icmp ult i64 %.1.i, 10
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !68

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i64 %2, 0
  br i1 %i.v, label %bb.g, label %format_int.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.w, align 1, !tbaa !32
  br label %format_int.exit

format_int.exit:                                  ; preds = %bb.f, %bb.g
  %.110.i = phi ptr [ %i.w, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110.i) #17
  call fastcc void @add_pax_attr_binary(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.110.i, i64 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i64 @archive_entry_atime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_atime_nsec(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_birthtime_is_set(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_birthtime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_birthtime_nsec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @add_pax_acl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 25, 522) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @archive_entry_acl_types(ptr noundef %1) #15
  %i.b = and i32 %i.a, 15360
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 256
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not20 = icmp samesign ult i32 %3, 512
  br i1 %.not20, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.017 = phi ptr [ @.str.60, %bb.b ], [ @.str.59, %bb.a ], [ @.str.61, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call ptr @_archive_entry_acl_to_text_l(ptr noundef %1, ptr noundef null, i32 noundef %3, ptr noundef %i.e) #15 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #18
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = icmp eq i32 %i.i, 12
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %.017) #15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %.017, ptr noundef nonnull @.str.66) #15
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.f, align 1, !tbaa !32
  %.not21 = icmp eq i8 %i.k, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #17
  tail call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.l, ptr noundef nonnull %.017, ptr noundef nonnull %i.f, i64 noundef %i.m)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @free(ptr noundef nonnull %i.f) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.g, %bb.f
  %.0 = phi i32 [ -30, %bb.f ], [ -20, %bb.g ], [ 0, %bb.j ], [ -30, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @build_gnu_sparse_name(ptr noundef nonnull returned %0, ptr noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !32
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.67, i64 20, i1 false) #15
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d, %.backedge
  %.0.idx27 = phi i64 [ %.0.add23, %.backedge ], [ %i.d, %bb.d ] ; 6 uses
  %.0.ptr28 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx27
  %.0.add23 = add nsw i64 %.0.idx27, -1           ; 2 uses
  %.ptr24 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.add23
  %i.f = load i8, ptr %.ptr24, align 1, !tbaa !32 ; 2 uses
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %.backedge, label %bb.e

.backedge:                                        ; preds = %.lr.ph, %bb.g
  %i.h = icmp samesign ugt i64 %.0.idx27, 1
  br i1 %i.h, label %.lr.ph, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %.0.idx27, 1
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i8 %i.f, 46
  br i1 %i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds i8, ptr %.0.ptr28, i64 -2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  %i.l = icmp eq i8 %i.k, 47
  br i1 %i.l, label %.backedge, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %.backedge, %bb.d
  %.0.idx.lcssa = phi i64 [ %i.d, %bb.d ], [ 0, %.backedge ], [ 1, %bb.e ], [ %.0.idx27, %bb.f ], [ %.0.idx27, %bb.g ]
  %i.m = tail call fastcc ptr @build_ustar_entry_name(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.idx.lcssa, ptr noundef nonnull @.str.68) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c
  ret ptr %0
}

declare void @archive_string_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sparse_list_add(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 5 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = add i64 %i.g, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.i = icmp slt i64 %.014, %1
  br i1 %i.i, label %bb.d, label %_sparse_list_add_block.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_sparse_list_add_block.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = sub nsw i64 %1, %.014
  store ptr null, ptr %i.j, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.014, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.l, ptr %i.o, align 8, !tbaa !46
end_hunk_0
