loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@H5FD_multi_delete:bb.a
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8  ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !8
  %.not36.4 = icmp eq i32 %i.fr, 0
  br i1 %.not36.4, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fp
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !9
  %i.fv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.fu, ptr noundef %0) #14
  %or.cond.4 = icmp ugt i32 %i.fv, 1023
  br i1 %or.cond.4, label %bb.ab, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.fp
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !20
  %i.fy = call i32 @H5FDdelete(ptr noundef nonnull %i.a, i64 noundef %i.fx) #14
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.aj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.ga = getelementptr inbounds nuw i8, ptr %.127, i64 24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8  ; 2 uses
  %i.gc = icmp eq i32 %i.gb, 0
  %spec.select.5 = select i1 %i.gc, i32 6, i32 %i.gb
  %i.gd = sext i32 %spec.select.5 to i64          ; 3 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !8
  %.not36.5 = icmp eq i32 %i.gf, 0
  br i1 %.not36.5, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.gd
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !9
  %i.gi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.gh, ptr noundef %0) #14
  %or.cond.5 = icmp ugt i32 %i.gi, 1023
  br i1 %or.cond.5, label %bb.ab, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.gd
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !20
  %i.gl = call i32 @H5FDdelete(ptr noundef nonnull %i.a, i64 noundef %i.gk) #14
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %bb.aj, label %.loopexit

.loopexit:                                        ; preds = %bb.bc, %bb.be, %bb.ap, %bb.ah
  %spec.select37 = phi i32 [ -1, %bb.ah ], [ -1, %bb.ap ], [ 0, %bb.be ], [ 0, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.y, %bb.q
  %.3 = phi i32 [ -1, %bb.y ], [ %spec.select37, %.loopexit ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5FD_multi_ctl(ptr nofree readnone captures(none) %0, i64 %1, i64 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call i32 @H5Eclear2(i64 noundef 0) #14 ; 0 uses
  %i.b = and i64 %2, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @H5open() #14              ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre3 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi i8 [ %i.e, %bb.b ], [ %.pre3, %bb.c ] ; 2 uses
  %i.j = phi i8 [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.k = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.l = trunc nuw i8 %i.j to i1
  %i.m = trunc nuw i8 %i.i to i1
  %i.n = select i1 %i.l, i1 true, i1 %i.m
  br i1 %i.n, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @H5open() #14              ; 0 uses
  %.pre4 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre5 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i8 [ %i.i, %bb.d ], [ %.pre5, %bb.e ]
  %i.q = phi i8 [ %i.j, %bb.d ], [ %.pre4, %bb.e ]
  %i.r = load i64, ptr @H5E_VFL_g, align 8, !tbaa !20
  %i.s = trunc nuw i8 %i.q to i1
  %i.t = trunc nuw i8 %i.p to i1
  %i.u = select i1 %i.s, i1 true, i1 %i.t
  br i1 %i.u, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = load i64, ptr @H5E_FCNTL_g, align 8, !tbaa !20
  %i.x = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5FD_multi_ctl, i32 noundef 2045, i64 noundef %i.k, i64 noundef %i.r, i64 noundef %i.w, ptr noundef nonnull @.str.47) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5Pset_fapl_split(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5FD_multi_fapl_t, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = tail call i32 @H5Eclear2(i64 noundef 0) #14 ; 0 uses
  %i.b = call fastcc i32 @H5FD_split_populate_config(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  %i.c = icmp slt i32 %i.b, 0
  %i.d = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 true, i1 %i.g         ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @H5open() #14              ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre5 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i8 [ %i.f, %bb.b ], [ %.pre5, %bb.c ] ; 2 uses
  %i.k = phi i8 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.l = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.m = trunc nuw i8 %i.k to i1
  %i.n = trunc nuw i8 %i.j to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @H5open() #14              ; 0 uses
  %.pre6 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre7 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = phi i8 [ %i.j, %bb.d ], [ %.pre7, %bb.e ]
  %i.r = phi i8 [ %i.k, %bb.d ], [ %.pre6, %bb.e ]
  %i.s = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !20
  %i.t = trunc nuw i8 %i.r to i1
  %i.u = trunc nuw i8 %i.q to i1
  %i.v = select i1 %i.t, i1 true, i1 %i.u
  br i1 %i.v, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !20
  %i.y = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_fapl_split, i32 noundef 216, i64 noundef %i.l, i64 noundef %i.s, i64 noundef %i.x, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.k, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aa = load i64, ptr @H5FD_MULTI_id_g, align 8, !tbaa !20
  %i.ab = call i32 @H5Pset_driver(i64 noundef %0, i64 noundef %i.aa, ptr noundef nonnull %5) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0 = phi i32 [ -1, %bb.h ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @H5Eclear2(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5FD_split_populate_config(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %.sroa.68 = alloca [3 x ptr], align 16          ; 4 uses
  %.sroa.6 = alloca [3 x i64], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6, i8 0, i64 24, i1 false), !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.68, i8 0, i64 24, i1 false), !tbaa !9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.7) #15
  %.not60 = icmp eq ptr %i.a, null
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.meta_name_g, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 1024) #14 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @H5FD_split_populate_config.meta_name_g, i64 1023), align 1, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.meta_name_g, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.d = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.meta_name_g, ptr noundef nonnull dereferenceable(8) @.str.9, i64 noundef 1024) #14 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @H5FD_split_populate_config.meta_name_g, i64 1023), align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7) #15
  %.not62 = icmp eq ptr %i.e, null
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.raw_name_g, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 1024) #14 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @H5FD_split_populate_config.raw_name_g, i64 1023), align 1, !tbaa !12
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.raw_name_g, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #14 ; 0 uses
  br label %bb.ai

bb.j:                                             ; preds = %bb.f
  %i.h = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @H5FD_split_populate_config.raw_name_g, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 1024) #14 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @H5FD_split_populate_config.raw_name_g, i64 1023), align 1, !tbaa !12
  br label %bb.ai

bb.k:                                             ; preds = %.thread127
  %i.i = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.j, i1 true, i1 %i.l
  br i1 %i.m, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.n = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.o = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.p = tail call i32 @H5Pisa_class(i64 noundef %1, i64 noundef %i.o) #14
  %.not64.1 = icmp eq i32 %i.p, 1
  br i1 %.not64.1, label %bb.n, label %bb.am

bb.n:                                             ; preds = %bb.m
  %.pr = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66.1 = icmp eq i8 %.pr, 0
  br i1 %.not66.1, label %bb.au, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.r, i1 true, i1 %i.t
  br i1 %i.u, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.v = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.w = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.x = tail call i32 @H5Pisa_class(i64 noundef %1, i64 noundef %i.w) #14
  %.not64.2 = icmp eq i32 %i.x, 1
  br i1 %.not64.2, label %bb.r, label %bb.am

bb.r:                                             ; preds = %bb.q
  %.pr110 = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66.2 = icmp eq i8 %.pr110, 0
  br i1 %.not66.2, label %bb.au, label %.thread111

.thread111:                                       ; preds = %bb.at, %bb.r
  %.not63.3 = icmp eq i64 %3, 0
  br i1 %.not63.3, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.thread111
  %i.y = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %i.ac, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.ad = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ae = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.af = tail call i32 @H5Pisa_class(i64 noundef %3, i64 noundef %i.ae) #14
  %.not64.3 = icmp eq i32 %i.af, 1
  br i1 %.not64.3, label %.thread113, label %bb.am

bb.v:                                             ; preds = %.thread111
  %i.ag = load i8, ptr @H5FD_split_populate_config.raw_name_g, align 16, !tbaa !12
  %.not66.3 = icmp eq i8 %i.ag, 0
  br i1 %.not66.3, label %bb.au, label %.thread118

.thread113:                                       ; preds = %bb.u
  %i.ah = load i8, ptr @H5FD_split_populate_config.raw_name_g, align 16, !tbaa !12
  %.not66.3114 = icmp eq i8 %i.ah, 0
  br i1 %.not66.3114, label %bb.au, label %bb.w

bb.w:                                             ; preds = %.thread113
  %i.ai = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %i.am, label %bb.y, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  %i.an = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ao = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.ap = tail call i32 @H5Pisa_class(i64 noundef %3, i64 noundef %i.ao) #14
  %.not64.4 = icmp eq i32 %i.ap, 1
  br i1 %.not64.4, label %bb.z, label %bb.am

bb.z:                                             ; preds = %bb.y
  %.pr117 = load i8, ptr @H5FD_split_populate_config.raw_name_g, align 16, !tbaa !12
  %.not66.4 = icmp eq i8 %.pr117, 0
  br i1 %.not66.4, label %bb.au, label %.thread118

.thread118:                                       ; preds = %bb.v, %bb.z
  br i1 %.not63, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.thread118
  %i.aq = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %i.au, label %bb.ac, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.av = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aw = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.ax = tail call i32 @H5Pisa_class(i64 noundef %1, i64 noundef %i.aw) #14
  %.not64.5 = icmp eq i32 %i.ax, 1
  br i1 %.not64.5, label %.thread120, label %bb.am

bb.ad:                                            ; preds = %.thread118
  %i.ay = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66.5 = icmp eq i8 %i.ay, 0
  br i1 %.not66.5, label %bb.au, label %.critedge67

.thread120:                                       ; preds = %bb.ac
  %i.az = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66.5121 = icmp eq i8 %i.az, 0
  br i1 %.not66.5121, label %bb.au, label %bb.ae

bb.ae:                                            ; preds = %.thread120
  %i.ba = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %i.be, label %bb.ag, label %bb.af, !prof !19

bb.af:                                            ; preds = %bb.ae
  %i.bf = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bg = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.bh = tail call i32 @H5Pisa_class(i64 noundef %1, i64 noundef %i.bg) #14
  %.not64.6 = icmp eq i32 %i.bh, 1
  br i1 %.not64.6, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %.pr124 = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66.6 = icmp eq i8 %.pr124, 0
  br i1 %.not66.6, label %bb.au, label %.critedge67

.critedge67:                                      ; preds = %bb.ad, %bb.ah
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bi, i8 0, i64 184, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 1, i32 3>, ptr %4, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 3, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %.sroa.15.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx1, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %3, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr null, ptr %i.bk, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @H5FD_split_populate_config.meta_name_g, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr @H5FD_split_populate_config.raw_name_g, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 -1, ptr %i.bl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 9223372036854775807, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 -1, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i8 1, ptr %i.bm, align 8, !tbaa !23
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.bb, label %bb.bl

bb.ai:                                            ; preds = %bb.j, %bb.i, %bb.h
  %.not63 = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not63, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %i.bt, label %bb.al, label %bb.ak, !prof !19

bb.ak:                                            ; preds = %bb.aj
  %i.bu = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.bv = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.bw = tail call i32 @H5Pisa_class(i64 noundef %1, i64 noundef %i.bv) #14
  %.not64 = icmp eq i32 %i.bw, 1
  br i1 %.not64, label %.thread127, label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.al
  %i.bx = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %i.cb, label %bb.ao, label %bb.an, !prof !19

bb.an:                                            ; preds = %bb.am
  %i.cc = tail call i32 @H5open() #14             ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre90 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.cd = phi i8 [ %i.bz, %bb.am ], [ %.pre90, %bb.an ] ; 2 uses
  %i.ce = phi i8 [ %i.bx, %bb.am ], [ %.pre, %bb.an ] ; 2 uses
  %i.cf = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.cg = trunc nuw i8 %i.ce to i1
  %i.ch = trunc nuw i8 %i.cd to i1
  %i.ci = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %i.ci, label %bb.aq, label %bb.ap, !prof !19

bb.ap:                                            ; preds = %bb.ao
  %i.cj = tail call i32 @H5open() #14             ; 0 uses
  %.pre91 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre92 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ck = phi i8 [ %i.cd, %bb.ao ], [ %.pre92, %bb.ap ]
  %i.cl = phi i8 [ %i.ce, %bb.ao ], [ %.pre91, %bb.ap ]
  %i.cm = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !20
  %i.cn = trunc nuw i8 %i.cl to i1
  %i.co = trunc nuw i8 %i.ck to i1
  %i.cp = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %i.cp, label %bb.as, label %bb.ar, !prof !19

bb.ar:                                            ; preds = %bb.aq
  %i.cq = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.cr = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !20
  %i.cs = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5FD_split_populate_config, i32 noundef 473, i64 noundef %i.cf, i64 noundef %i.cm, i64 noundef %i.cr, ptr noundef nonnull @.str.12) #14 ; 0 uses
  br label %.critedge

bb.at:                                            ; preds = %bb.ai
  %i.ct = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66 = icmp eq i8 %i.ct, 0
  br i1 %.not66, label %bb.au, label %.thread111

.thread127:                                       ; preds = %bb.al
  %i.cu = load i8, ptr @H5FD_split_populate_config.meta_name_g, align 16, !tbaa !12
  %.not66128 = icmp eq i8 %i.cu, 0
  br i1 %.not66128, label %bb.au, label %bb.k

bb.au:                                            ; preds = %.thread127, %.thread120, %.thread113, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.at
  %i.cv = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cw, i1 true, i1 %i.cy
  br i1 %i.cz, label %bb.aw, label %bb.av, !prof !19

bb.av:                                            ; preds = %bb.au
  %i.da = tail call i32 @H5open() #14             ; 0 uses
  %.pre98 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre99 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.db = phi i8 [ %i.cx, %bb.au ], [ %.pre99, %bb.av ] ; 2 uses
  %i.dc = phi i8 [ %i.cv, %bb.au ], [ %.pre98, %bb.av ] ; 2 uses
  %i.dd = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.de = trunc nuw i8 %i.dc to i1
  %i.df = trunc nuw i8 %i.db to i1
  %i.dg = select i1 %i.de, i1 true, i1 %i.df
  br i1 %i.dg, label %bb.ay, label %bb.ax, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.dh = tail call i32 @H5open() #14             ; 0 uses
  %.pre100 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre101 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.di = phi i8 [ %i.db, %bb.aw ], [ %.pre101, %bb.ax ]
  %i.dj = phi i8 [ %i.dc, %bb.aw ], [ %.pre100, %bb.ax ]
  %i.dk = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !20
  %i.dl = trunc nuw i8 %i.dj to i1
  %i.dm = trunc nuw i8 %i.di to i1
  %i.dn = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %i.dn, label %bb.ba, label %bb.az, !prof !19

bb.az:                                            ; preds = %bb.ay
  %i.do = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.dp = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !20
  %i.dq = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5FD_split_populate_config, i32 noundef 477, i64 noundef %i.dd, i64 noundef %i.dk, i64 noundef %i.dp, ptr noundef nonnull @.str.13) #14 ; 0 uses
  br label %.critedge

bb.bb:                                            ; preds = %.critedge67
  %i.dr = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %i.dv, label %bb.bd, label %bb.bc, !prof !19

bb.bc:                                            ; preds = %bb.bb
  %i.dw = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.dx = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.dy = tail call i64 @H5Pcreate(i64 noundef %i.dx) #14 ; 2 uses
  store i64 %i.dy, ptr %i.bj, align 8, !tbaa !20
  %i.dz = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.dy) #14
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.ci, %bb.ce, %bb.ca, %bb.bw, %bb.bs, %bb.bo, %bb.bd
  %i.eb = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %i.ef, label %bb.bg, label %bb.bf, !prof !19

bb.bf:                                            ; preds = %bb.be
  %i.eg = tail call i32 @H5open() #14             ; 0 uses
  %.pre94 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre95 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.eh = phi i8 [ %i.ed, %bb.be ], [ %.pre95, %bb.bf ] ; 2 uses
  %i.ei = phi i8 [ %i.eb, %bb.be ], [ %.pre94, %bb.bf ] ; 2 uses
  %i.ej = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.ek = trunc nuw i8 %i.ei to i1
  %i.el = trunc nuw i8 %i.eh to i1
  %i.em = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %i.em, label %bb.bi, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %bb.bg
  %i.en = tail call i32 @H5open() #14             ; 0 uses
  %.pre96 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre97 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.eo = phi i8 [ %i.eh, %bb.bg ], [ %.pre97, %bb.bh ]
  %i.ep = phi i8 [ %i.ei, %bb.bg ], [ %.pre96, %bb.bh ]
  %i.eq = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !20
  %i.er = trunc nuw i8 %i.ep to i1
  %i.es = trunc nuw i8 %i.eo to i1
  %i.et = select i1 %i.er, i1 true, i1 %i.es
  br i1 %i.et, label %bb.bk, label %bb.bj, !prof !19

bb.bj:                                            ; preds = %bb.bi
  %i.eu = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.ev = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !20
  %i.ew = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5FD_split_populate_config, i32 noundef 498, i64 noundef %i.ej, i64 noundef %i.eq, i64 noundef %i.ev, ptr noundef nonnull @.str.14) #14 ; 0 uses
  br label %.critedge

bb.bl:                                            ; preds = %.critedge67, %bb.bd
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !20
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.fa = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = select i1 %i.fb, i1 true, i1 %i.fd
  br i1 %i.fe, label %bb.bo, label %bb.bn, !prof !19

bb.bn:                                            ; preds = %bb.bm
  %i.ff = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fg = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.fh = tail call i64 @H5Pcreate(i64 noundef %i.fg) #14 ; 2 uses
  store i64 %i.fh, ptr %i.ex, align 8, !tbaa !20
  %i.fi = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.fh) #14
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.be, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !20
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.fn = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %i.fr, label %bb.bs, label %bb.br, !prof !19

bb.br:                                            ; preds = %bb.bq
  %i.fs = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ft = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.fu = tail call i64 @H5Pcreate(i64 noundef %i.ft) #14 ; 2 uses
  store i64 %i.fu, ptr %i.fk, align 8, !tbaa !20
  %i.fv = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.fu) #14
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.be, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !20
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.ga = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = select i1 %i.gb, i1 true, i1 %i.gd
  br i1 %i.ge, label %bb.bw, label %bb.bv, !prof !19

bb.bv:                                            ; preds = %bb.bu
  %i.gf = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gg = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.gh = tail call i64 @H5Pcreate(i64 noundef %i.gg) #14 ; 2 uses
  store i64 %i.gh, ptr %i.fx, align 8, !tbaa !20
  %i.gi = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.gh) #14
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.be, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !20
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.gn = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.go, i1 true, i1 %i.gq
  br i1 %i.gr, label %bb.ca, label %bb.bz, !prof !19

bb.bz:                                            ; preds = %bb.by
  %i.gs = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gt = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.gu = tail call i64 @H5Pcreate(i64 noundef %i.gt) #14 ; 2 uses
  store i64 %i.gu, ptr %i.gk, align 8, !tbaa !20
  %i.gv = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.gu) #14
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.be, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !20
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.ha = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = select i1 %i.hb, i1 true, i1 %i.hd
  br i1 %i.he, label %bb.ce, label %bb.cd, !prof !19

bb.cd:                                            ; preds = %bb.cc
  %i.hf = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.hg = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.hh = tail call i64 @H5Pcreate(i64 noundef %i.hg) #14 ; 2 uses
  store i64 %i.hh, ptr %i.gx, align 8, !tbaa !20
  %i.hi = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.hh) #14
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.be, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !20
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.cg, label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.hn = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = select i1 %i.ho, i1 true, i1 %i.hq
  br i1 %i.hr, label %bb.ci, label %bb.ch, !prof !19

bb.ch:                                            ; preds = %bb.cg
  %i.hs = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ht = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.hu = tail call i64 @H5Pcreate(i64 noundef %i.ht) #14 ; 2 uses
  store i64 %i.hu, ptr %i.hk, align 8, !tbaa !20
  %i.hv = tail call i32 @H5Pset_fapl_sec2(i64 noundef %i.hu) #14
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %bb.be, label %.critedge

.critedge:                                        ; preds = %bb.bk, %bb.ci, %bb.cf, %bb.ba, %bb.as
  %.4 = phi i32 [ -1, %bb.as ], [ -1, %bb.ba ], [ -1, %bb.bk ], [ 0, %bb.ci ], [ 0, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  ret i32 %.4
}

declare i32 @H5Epush2(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @H5open() local_unnamed_addr #4

declare i32 @H5Pset_driver(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i32 @H5Pset_fapl_multi(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.H5FD_multi_fapl_t, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = tail call i32 @H5Eclear2(i64 noundef 0) #14 ; 0 uses
  %i.b = tail call i32 @H5Iget_type(i64 noundef %0) #14
  %.not = icmp eq i32 %i.b, 11
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @H5open() #14              ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !20
  %i.j = tail call i32 @H5Pisa_class(i64 noundef %0, i64 noundef %i.i) #14
  %.not8 = icmp eq i32 %i.j, 1
  br i1 %.not8, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.k = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.l, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @H5open() #14              ; 0 uses
  %.pre = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre9 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi i8 [ %i.m, %bb.e ], [ %.pre9, %bb.f ] ; 2 uses
  %i.r = phi i8 [ %i.k, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.s = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.t = trunc nuw i8 %i.r to i1
  %i.u = trunc nuw i8 %i.q to i1
  %i.v = select i1 %i.t, i1 true, i1 %i.u
  br i1 %i.v, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @H5open() #14              ; 0 uses
  %.pre10 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre11 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = phi i8 [ %i.q, %bb.g ], [ %.pre11, %bb.h ]
  %i.y = phi i8 [ %i.r, %bb.g ], [ %.pre10, %bb.h ]
  %i.z = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !20
  %i.aa = trunc nuw i8 %i.y to i1
  %i.ab = trunc nuw i8 %i.x to i1
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ae = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !20
  %i.af = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_fapl_multi, i32 noundef 305, i64 noundef %i.s, i64 noundef %i.z, i64 noundef %i.ae, ptr noundef nonnull @.str.3) #14 ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.d
  %i.ag = call fastcc i32 @H5FD_multi_populate_config(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6)
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.aj, i1 true, i1 %i.al      ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  br i1 %i.am, label %bb.o, label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i32 @H5open() #14             ; 0 uses
  %.pre12 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre13 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ao = phi i8 [ %i.ak, %bb.m ], [ %.pre13, %bb.n ] ; 2 uses
  %i.ap = phi i8 [ %i.ai, %bb.m ], [ %.pre12, %bb.n ] ; 2 uses
  %i.aq = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.ar = trunc nuw i8 %i.ap to i1
  %i.as = trunc nuw i8 %i.ao to i1
  %i.at = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %i.at, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.au = tail call i32 @H5open() #14             ; 0 uses
  %.pre14 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre15 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.av = phi i8 [ %i.ao, %bb.o ], [ %.pre15, %bb.p ]
  %i.aw = phi i8 [ %i.ap, %bb.o ], [ %.pre14, %bb.p ]
  %i.ax = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !20
  %i.ay = trunc nuw i8 %i.aw to i1
  %i.az = trunc nuw i8 %i.av to i1
  %i.ba = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bc = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !20
  %i.bd = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_fapl_multi, i32 noundef 307, i64 noundef %i.aq, i64 noundef %i.ax, i64 noundef %i.bc, ptr noundef nonnull @.str.4) #14 ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  br i1 %i.am, label %bb.v, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.be = tail call i32 @H5open() #14             ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bf = load i64, ptr @H5FD_MULTI_id_g, align 8, !tbaa !20
  %i.bg = call i32 @H5Pset_driver(i64 noundef %0, i64 noundef %i.bf, ptr noundef nonnull %6) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.k
  %.0 = phi i32 [ -1, %bb.k ], [ -1, %bb.s ], [ %i.bg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

declare i32 @H5Iget_type(i64 noundef) local_unnamed_addr #4

declare i32 @H5Pisa_class(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5FD_multi_populate_config(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %i.b = alloca [7 x i64], align 16               ; 10 uses
  %i.c = alloca [7 x ptr], align 16               ; 10 uses
  %i.d = alloca [7 x i64], align 16               ; 9 uses
  %i.e = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %.not = icmp eq ptr %0, null
  %.061.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.061.sroa.gep101 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.061.sroa.gep104 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.061.sroa.gep107 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.061.sroa.gep110 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.061.sroa.gep113 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not, label %.preheader85.preheader, label %.loopexit86

.preheader85.preheader:                           ; preds = %bb.a
  %.061.sroa.gep114 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.061.sroa.gep111 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.061.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.061.sroa.gep105 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.061.sroa.gep102 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.061.sroa.gep99 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false), !tbaa !8
  br label %.loopexit86

.loopexit86:                                      ; preds = %.preheader85.preheader, %bb.a
  %.061.sroa.phi = phi ptr [ %.061.sroa.gep, %bb.a ], [ %.061.sroa.gep99, %.preheader85.preheader ]
  %.061.sroa.phi100 = phi ptr [ %.061.sroa.gep101, %bb.a ], [ %.061.sroa.gep102, %.preheader85.preheader ]
  %.061.sroa.phi103 = phi ptr [ %.061.sroa.gep104, %bb.a ], [ %.061.sroa.gep105, %.preheader85.preheader ]
  %.061.sroa.phi106 = phi ptr [ %.061.sroa.gep107, %bb.a ], [ %.061.sroa.gep108, %.preheader85.preheader ]
  %.061.sroa.phi109 = phi ptr [ %.061.sroa.gep110, %bb.a ], [ %.061.sroa.gep111, %.preheader85.preheader ]
  %.061.sroa.phi112 = phi ptr [ %.061.sroa.gep113, %bb.a ], [ %.061.sroa.gep114, %.preheader85.preheader ]
  %.061 = phi ptr [ %0, %bb.a ], [ %i.a, %.preheader85.preheader ] ; 2 uses
end_hunk_0
