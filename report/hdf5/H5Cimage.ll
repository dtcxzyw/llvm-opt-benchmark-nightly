Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Cimage?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5C__prep_image_for_file_close:bb.a

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i49.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.pt = getelementptr inbounds nuw [80 x i8], ptr %i.pb, i64 %indvars.iv.i48.epil ; 3 uses
  store i64 -1, ptr %i.pt, align 8, !tbaa !73
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i32 0, ptr %i.pu, align 8, !tbaa !69
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  store i32 -1, ptr %i.pv, align 8, !tbaa !62
  %indvars.iv.next.i49.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa108, label %.preheader.i.epil, !llvm.loop !221

.epilog-lcssa108:                                 ; preds = %.preheader.i.epil, %.unr-lcssa105
  %i.pw = getelementptr inbounds nuw i8, ptr %i.l, i64 524584
  %.06975.i = load ptr, ptr %i.pw, align 8, !tbaa !146 ; 2 uses
  %.not7376.i = icmp eq ptr %.06975.i, null
  br i1 %.not7376.i, label %._crit_edge.i52, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.epilog-lcssa108, %bb.cp
  %.06978.i = phi ptr [ %.069.i, %bb.cp ], [ %.06975.i, %.epilog-lcssa108 ] ; 14 uses
  %.177.i = phi i32 [ %.2.i51, %bb.cp ], [ 0, %.epilog-lcssa108 ] ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.06978.i, i64 152
  %i.py = load i8, ptr %i.px, align 8, !tbaa !197, !range !10, !noundef !11
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.lr.ph.i50
  %i.qa = getelementptr inbounds nuw i8, ptr %.06978.i, i64 8
  %i.qb = zext i32 %.177.i to i64
  %i.qc = getelementptr inbounds nuw [80 x i8], ptr %i.pb, i64 %i.qb ; 11 uses
  %i.qd = load <2 x i64>, ptr %i.qa, align 8, !tbaa !56
  store <2 x i64> %i.qd, ptr %i.qc, align 8, !tbaa !56
  %i.qe = getelementptr inbounds nuw i8, ptr %.06978.i, i64 64
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !92
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i32 %i.qf, ptr %i.qg, align 8, !tbaa !69
  %i.qh = getelementptr inbounds nuw i8, ptr %.06978.i, i64 40
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !105
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !215 ; 2 uses
  %i.qk = icmp eq i32 %i.qj, 29
  br i1 %i.qk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ql = getelementptr inbounds nuw i8, ptr %.06978.i, i64 208
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !87
  %i.qn = getelementptr inbounds nuw i8, ptr %.06978.i, i64 212
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !93
  %i.qp = call i32 @llvm.smin.i32(i32 %i.qo, i32 99)
  %spec.select.i = add nsw i32 %i.qp, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.sink = phi i32 [ %i.qm, %bb.cn ], [ %i.qj, %bb.cm ]
  %.sink.i = phi i32 [ %spec.select.i, %bb.cn ], [ 0, %bb.cm ]
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i32 %.sink, ptr %i.qq, align 8, !tbaa !62
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qc, i64 20
  store i32 %.sink.i, ptr %i.qr, align 4, !tbaa !70
  %i.qs = getelementptr inbounds nuw i8, ptr %.06978.i, i64 156
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !97
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 28
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !66
  %i.qv = getelementptr inbounds nuw i8, ptr %.06978.i, i64 48
  %i.qw = load i8, ptr %i.qv, align 8, !tbaa !91, !range !10, !noundef !11
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  store i8 %i.qw, ptr %i.qx, align 8, !tbaa !65
  %i.qy = getelementptr inbounds nuw i8, ptr %.06978.i, i64 200
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !199
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qc, i64 36
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !223
  %i.rb = getelementptr inbounds nuw i8, ptr %.06978.i, i64 168 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !96
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qc, i64 40
  store i64 %i.rc, ptr %i.rd, align 8, !tbaa !68
  %i.re = getelementptr inbounds nuw i8, ptr %.06978.i, i64 176
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !100
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !75
  %i.rh = getelementptr inbounds nuw i8, ptr %.06978.i, i64 184
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qc, i64 56
  %i.rj = load <2 x i64>, ptr %i.rh, align 8, !tbaa !56
  store <2 x i64> %i.rj, ptr %i.ri, align 8, !tbaa !56
  %i.rk = getelementptr inbounds nuw i8, ptr %.06978.i, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !102
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qc, i64 72
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !78
  %i.rn = add i32 %.177.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rb, i8 0, i64 16, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph.i50
  %.2.i51 = phi i32 [ %i.rn, %bb.co ], [ %.177.i, %.lr.ph.i50 ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.06978.i, i64 120
  %.069.i = load ptr, ptr %i.ro, align 8, !tbaa !146 ; 2 uses
  %.not73.i = icmp eq ptr %.069.i, null
  br i1 %.not73.i, label %._crit_edge.i52.loopexit, label %.lr.ph.i50, !llvm.loop !224

._crit_edge.i52.loopexit:                         ; preds = %bb.cp
  %.pre66.pre = load i32, ptr %i.oq, align 8, !tbaa !60
  br label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %._crit_edge.i52.loopexit, %.epilog-lcssa108
  %.pre66 = phi i32 [ %.pre66.pre, %._crit_edge.i52.loopexit ], [ %i.or, %.epilog-lcssa108 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %i.l, i64 527704
  store ptr %i.pb, ptr %i.rp, align 8, !tbaa !61
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cl
  %i.rq = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.rr = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.rs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__setup_image_entries_array, i32 noundef 2044, i64 noundef %i.rq, i64 noundef %i.rr, ptr noundef nonnull @.str.35) #15 ; 0 uses
  %i.rt = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ru = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !56
  %i.rv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1057, i64 noundef %i.rt, i64 noundef %i.ru, ptr noundef nonnull @.str.18) #15 ; 0 uses
  br label %bb.cx

bb.cr:                                            ; preds = %._crit_edge63, %._crit_edge.i52
  %i.rw = phi i32 [ %i.or, %._crit_edge63 ], [ %.pre66, %._crit_edge.i52 ]
  %i.rx = phi ptr [ %.pre65, %._crit_edge63 ], [ %i.pb, %._crit_edge.i52 ]
  %i.ry = zext i32 %i.rw to i64
  call void @qsort(ptr noundef %i.rx, i64 noundef %i.ry, i64 noundef 80, ptr noundef nonnull @H5C__image_entry_cmp) #15
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cj
  %i.rz = load i32, ptr %i.ah, align 4, !tbaa !81
  %i.sa = and i32 %i.rz, 2
  %.not44 = icmp eq i32 %i.sa, 0
  br i1 %.not44, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sb = call i32 @H5F__super_ext_remove_msg(ptr noundef nonnull %0, i32 noundef 24) #15
  %i.sc = icmp slt i32 %i.sb, 0
  br i1 %i.sc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.sd = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.se = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !56
  %i.sf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1074, i64 noundef %i.sd, i64 noundef %i.se, ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  store i8 0, ptr %i.ag, align 4, !tbaa !53
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cr
  store i8 1, ptr %1, align 1, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %.thread, %bb.d, %bb.l, %bb.n, %bb.cb, %bb.cc, %bb.ce, %bb.ci, %bb.cq, %bb.cu, %bb.cw, %bb.h, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.cb ], [ -1, %bb.cc ], [ -1, %bb.ce ], [ -1, %bb.ci ], [ -1, %bb.cq ], [ 0, %bb.cw ], [ -1, %bb.cu ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

declare i32 @H5C__serialize_cache(ptr noundef) local_unnamed_addr #4

declare i64 @H5FD_alloc(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @H5FD_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @H5C__image_entry_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !223  ; 2 uses
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %i.h, %i.j
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66   ; 2 uses
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, %i.p
  %spec.select = zext i1 %i.r to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ], [ -1, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_set_cache_image_config(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !225

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1124, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #15 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @H5C_validate_cache_image_config(ptr noundef %2)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !56
  %i.o = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !56
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1128, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.20) #15 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i32 @H5F_get_intent(ptr noundef %0) #15
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 527616 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !83
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) @__const.H5C_set_cache_image_config.default_image_ctl, i64 16, i1 false), !tbaa.struct !83
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_validate_cache_image_config(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.m, !prof !225

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1192, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.21) #15 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 4, !tbaa !226
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.n = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1194, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !227, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.t = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1201, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.23) #15 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !228
  %.not11 = icmp eq i32 %i.w, -1
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.y = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1208, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.24) #15 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !229
  %.not12 = icmp ult i32 %i.ab, 16
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1211, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.25) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.k, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @H5F_get_intent(ptr noundef) local_unnamed_addr #4

declare i32 @H5_checksum_metadata(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #4

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 525) i64 @H5C__cache_image_block_entry_header_size(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 14
  %i.j = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #15
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.i, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #4

declare i32 @H5F_block_read(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %1, ptr %i.g, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !200
end_hunk_0
