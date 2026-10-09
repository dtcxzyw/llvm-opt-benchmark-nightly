Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/rmaps_rr_mappers?download=true
inline.NumInlined: 35
inline.NumDeleted: 4
begin_hunk_0_@prte_rmaps_rr_byslot:bb.a
  %i.cy = add nsw i32 %.2149229304, 1             ; 7 uses
  %i.cz = tail call i32 @prte_rmaps_base_check_oversubscribed(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.0146242, ptr noundef nonnull %5) #9 ; 4 uses
  %i.da = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cw) #9
  %i.db = icmp eq i32 %i.da, 35                   ; 3 uses
  switch i32 %i.cz, label %bb.ar [
    i32 -46, label %bb.am
    i32 0, label %bb.aw
  ]

bb.am:                                            ; preds = %bb.al
  br i1 %i.db, label %bb.an, label %pmix_obj_update.exit188

bb.an:                                            ; preds = %bb.am
  %i.dc = tail call ptr @__errno_location() #10
  store i32 35, ptr %i.dc, align 4, !tbaa !46
  tail call void @perror(ptr noundef nonnull @.str.23) #11
  tail call void @abort() #12
  unreachable

pmix_obj_update.exit188:                          ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !67
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !67
  %i.dg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cw) #9 ; 0 uses
  %i.dh = icmp eq i32 %i.df, 0
  br i1 %i.dh, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %pmix_obj_update.exit188
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !68
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !71 ; 2 uses
  %.not6.i = icmp eq ptr %i.dm, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %.lr.ph.i
  %i.dn = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.dm, %bb.ao ]
  %.07.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dl, %bb.ao ]
  tail call void %i.dn(ptr noundef nonnull %i.cw) #9, !inline_history !0
  %i.do = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
  %.not184 = icmp eq ptr %i.dr, null
  br i1 %.not184, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  tail call void %i.dr(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.cw) #9, !inline_history !2
  br label %.critedge

bb.aq:                                            ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.cw) #9
  br label %.critedge

bb.ar:                                            ; preds = %bb.al
  br i1 %i.db, label %bb.as, label %pmix_obj_update.exit187

bb.as:                                            ; preds = %bb.ar
  %i.dt = tail call ptr @__errno_location() #10
  store i32 35, ptr %i.dt, align 4, !tbaa !46
  tail call void @perror(ptr noundef nonnull @.str.23) #11
  tail call void @abort() #12
  unreachable

pmix_obj_update.exit187:                          ; preds = %bb.ar
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !67
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !67
  %i.dx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cw) #9 ; 0 uses
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %bb.at, label %.loopexit203

bb.at:                                            ; preds = %pmix_obj_update.exit187
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !71 ; 2 uses
  %.not6.i190 = icmp eq ptr %i.ed, null
  br i1 %.not6.i190, label %pmix_obj_run_destructors.exit194, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %bb.at, %.lr.ph.i191
  %i.ee = phi ptr [ %i.eg, %.lr.ph.i191 ], [ %i.ed, %bb.at ]
  %.07.i192 = phi ptr [ %i.ef, %.lr.ph.i191 ], [ %i.ec, %bb.at ]
  tail call void %i.ee(ptr noundef nonnull %i.cw) #9, !inline_history !0
  %i.ef = getelementptr inbounds nuw i8, ptr %.07.i192, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !71 ; 2 uses
  %.not.i193 = icmp eq ptr %i.eg, null
  br i1 %.not.i193, label %pmix_obj_run_destructors.exit194, label %.lr.ph.i191, !llvm.loop !1

pmix_obj_run_destructors.exit194:                 ; preds = %.lr.ph.i191, %bb.at
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !72 ; 2 uses
  %.not182 = icmp eq ptr %i.ei, null
  br i1 %.not182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %pmix_obj_run_destructors.exit194
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  tail call void %i.ei(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.cw) #9, !inline_history !2
  br label %.loopexit203

bb.av:                                            ; preds = %pmix_obj_run_destructors.exit194
  tail call void @free(ptr noundef nonnull %i.cw) #9
  br label %.loopexit203

bb.aw:                                            ; preds = %bb.al
  br i1 %i.db, label %bb.ax, label %pmix_obj_update.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ek = tail call ptr @__errno_location() #10
  store i32 35, ptr %i.ek, align 4, !tbaa !46
  tail call void @perror(ptr noundef nonnull @.str.23) #11
  tail call void @abort() #12
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.aw
  %i.el = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !67
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.el, align 8, !tbaa !67
  %i.eo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cw) #9 ; 0 uses
  %i.ep = icmp eq i32 %i.en, 0
  br i1 %i.ep, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %pmix_obj_update.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !71 ; 2 uses
  %.not6.i196 = icmp eq ptr %i.eu, null
  br i1 %.not6.i196, label %pmix_obj_run_destructors.exit200, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.ay, %.lr.ph.i197
  %i.ev = phi ptr [ %i.ex, %.lr.ph.i197 ], [ %i.eu, %bb.ay ]
  %.07.i198 = phi ptr [ %i.ew, %.lr.ph.i197 ], [ %i.et, %bb.ay ]
  tail call void %i.ev(ptr noundef nonnull %i.cw) #9, !inline_history !0
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i198, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !71 ; 2 uses
  %.not.i199 = icmp eq ptr %i.ex, null
  br i1 %.not.i199, label %pmix_obj_run_destructors.exit200, label %.lr.ph.i197, !llvm.loop !1

pmix_obj_run_destructors.exit200:                 ; preds = %.lr.ph.i197, %bb.ay
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !72 ; 2 uses
  %.not181 = icmp eq ptr %i.ez, null
  br i1 %.not181, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %pmix_obj_run_destructors.exit200
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  tail call void %i.ez(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.cw) #9, !inline_history !2
  br label %bb.bb

bb.ba:                                            ; preds = %pmix_obj_run_destructors.exit200
  tail call void @free(ptr noundef nonnull %i.cw) #9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %pmix_obj_update.exit
  %i.fb = add nuw nsw i32 %.0156227305, 1         ; 2 uses
  %i.fc = load i32, ptr %i.an, align 8, !tbaa !60
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph, label %..critedge.loopexit_crit_edge308, !llvm.loop !77

..critedge.loopexit_crit_edge308:                 ; preds = %bb.bb
  br label %.critedge, !llvm.loop !77

.critedge:                                        ; preds = %.lr.ph306, %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge308, %bb.ak, %pmix_obj_update.exit188, %bb.aq, %bb.ap
  %.5 = phi i32 [ -46, %bb.ap ], [ -46, %bb.aq ], [ -46, %pmix_obj_update.exit188 ], [ %.3154, %bb.ak ], [ %.3154, %.lr.ph.preheader ], [ 0, %..critedge.loopexit_crit_edge308 ], [ 0, %.lr.ph ], [ -43, %.lr.ph306 ] ; 2 uses
  %.3150 = phi i32 [ %i.cy, %bb.ap ], [ %i.cy, %bb.aq ], [ %i.cy, %pmix_obj_update.exit188 ], [ %.1148241, %bb.ak ], [ %.1148241, %.lr.ph.preheader ], [ %i.cy, %..critedge.loopexit_crit_edge308 ], [ %i.cy, %.lr.ph ], [ %.2149229304, %.lr.ph306 ] ; 3 uses
  %i.fe = load i32, ptr %i.l, align 8, !tbaa !38
  %i.ff = icmp eq i32 %.3150, %i.fe
  br i1 %i.ff, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  store i16 %.0, ptr %i.a, align 8, !tbaa !18
  %i.fg = load ptr, ptr %i.ar, align 8, !tbaa !73 ; 2 uses
  %.not185 = icmp eq ptr %i.fg, null
  br i1 %.not185, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.fg) #9
  store ptr null, ptr %i.ar, align 8, !tbaa !73
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.ag
  %.6 = phi i32 [ %.5, %bb.bd ], [ %.5, %bb.bc ], [ -2, %bb.ag ] ; 2 uses
  %.4 = phi i32 [ %.3150, %bb.bd ], [ %.3150, %bb.bc ], [ %.1148241, %bb.ag ] ; 2 uses
  %.not175 = icmp eq ptr %.0145245, %i.aj
  br i1 %.not175, label %._crit_edge, label %.lr.ph246, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.be, %bb.n
  %.1152.lcssa = phi i32 [ %.0151, %bb.n ], [ %.6, %bb.be ] ; 2 uses
  %.1148.lcssa = phi i32 [ %.0147, %bb.n ], [ %.4, %bb.be ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0140, %bb.n ], [ %.2, %bb.be ]
  br i1 %.0139, label %.loopexit203, label %bb.bh

.loopexit203:                                     ; preds = %._crit_edge, %pmix_obj_update.exit187, %bb.av, %bb.au
  %.7 = phi i32 [ %i.cz, %pmix_obj_update.exit187 ], [ %i.cz, %bb.au ], [ %i.cz, %bb.av ], [ %.1152.lcssa, %._crit_edge ] ; 2 uses
  %.not183 = icmp eq i32 %.7, -43
  br i1 %.not183, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %.loopexit203
  %i.fh = tail call ptr @prte_strerror(i32 noundef %.7) #9
  %i.fi = icmp eq ptr %1, null
  br i1 %i.fi, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42
  %i.fl = load i32, ptr %i.l, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.bf, %bb.bg
  %i.fm = phi ptr [ %i.fk, %bb.bg ], [ @.str.8, %bb.bf ]
  %i.fn = phi i32 [ %i.fl, %bb.bg ], [ -1, %bb.bf ]
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 38
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !74
  %i.fq = tail call ptr @prte_rmaps_base_print_mapping(i16 noundef zeroext %i.fp) #9
  %i.fr = load i16, ptr %i.a, align 8, !tbaa !18
  %i.fs = tail call ptr @prte_hwloc_base_print_binding(i16 noundef zeroext %i.fr) #9
  %i.ft = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %i.fh, ptr noundef %i.fm, i32 noundef %i.fn, ptr noundef %i.fq, ptr noundef %i.fs) #9 ; 0 uses
  br label %.loopexit

bb.bh:                                            ; preds = %._crit_edge
  %i.fu = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4, !tbaa !29 ; 3 uses
  %or.cond9 = icmp ult i32 %i.fu, 64
  br i1 %or.cond9, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !31
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ga = tail call ptr @prte_util_print_jobids(ptr noundef nonnull %i.as) #9
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.fu, ptr noundef nonnull @.str.9, ptr noundef %i.ga) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.gb = load i32, ptr %i.l, align 8, !tbaa !38  ; 2 uses
  %i.gc = sub nsw i32 %i.gb, %.1148.lcssa
  %i.gd = sitofp i32 %i.gc to float
  %i.ge = load volatile i64, ptr %i.at, align 8, !tbaa !75
  %i.gf = uitofp i64 %i.ge to float
  %i.gg = fdiv float %i.gd, %i.gf                 ; 2 uses
  %i.gh = fptosi float %i.gg to i32               ; 4 uses
  %i.gi = sitofp i32 %i.gh to float
  %i.gj = fcmp ogt float %i.gg, %i.gi
  br i1 %i.gj, label %bb.bl, label %.backedge

bb.bl:                                            ; preds = %bb.bk
  %i.gk = load volatile i64, ptr %i.at, align 8, !tbaa !75
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = mul i32 %i.gl, %i.gh
  %6 = add i32 %.1148.lcssa, %i.gm
  %i.gn = sub i32 %i.gb, %6
  %i.go = add nsw i32 %i.gh, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.bl, %bb.bk
  %.0141.be = phi i32 [ %i.go, %bb.bl ], [ %i.gh, %bb.bk ]
  %.0140.be = phi i32 [ %i.gn, %bb.bl ], [ %.1.lcssa, %bb.bk ]
  br label %bb.n

.loopexit:                                        ; preds = %.critedge, %bb.u, %.loopexit203, %.thread, %bb.f, %bb.j
  %.0157 = phi i32 [ -43, %.thread ], [ -43, %.loopexit203 ], [ -43, %bb.f ], [ -43, %bb.j ], [ 0, %.critedge ], [ %i.bj, %bb.u ]
  ret i32 %.0157
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @prte_util_print_jobids(ptr noundef) local_unnamed_addr #1

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare ptr @prte_util_print_name_args(ptr noundef) local_unnamed_addr #1

declare void @prte_rmaps_base_get_cpuset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @prte_rmaps_base_check_support(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @prte_rmaps_base_get_ncpus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @prte_rmaps_base_check_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @prte_rmaps_base_setup_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @prte_rmaps_base_check_oversubscribed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #1

declare ptr @prte_strerror(i32 noundef) local_unnamed_addr #1

declare ptr @prte_rmaps_base_print_mapping(i16 noundef zeroext) local_unnamed_addr #1

declare ptr @prte_hwloc_base_print_binding(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @prte_rmaps_rr_bynode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4, !tbaa !29 ; 3 uses
  %or.cond = icmp ult i32 %i.c, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = tail call ptr @prte_util_print_jobids(ptr noundef nonnull %i.i) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  %i.m = zext i32 %4 to i64
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.c, ptr noundef nonnull @.str.10, ptr noundef %i.j, i32 noundef %i.l, i32 noundef %3, i64 noundef %i.m) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %i.p = icmp slt i32 %3, %i.o
  br i1 %i.p, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39, !range !40, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !45
  %i.w = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %i.o, ptr noundef %i.u, ptr noundef %i.v) #9 ; 0 uses
  %i.x = load i32, ptr @prte_exit_status, align 4, !tbaa !46
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @prte_debug_output, align 4, !tbaa !46 ; 3 uses
  %or.cond3 = icmp ult i32 %i.z, 64
  br i1 %or.cond3, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #9
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.z, ptr noundef nonnull @.str.3, ptr noundef %i.af, ptr noundef nonnull @.str.4, i32 noundef 240, i32 noundef 1) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i32 1, ptr @prte_exit_status, align 4, !tbaa !46
  br label %.loopexit

bb.k:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 140 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !54
  %i.ak = and i16 %i.aj, 16384
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 1, ptr %i.ai, align 4, !tbaa !54
  store i16 1, ptr %i.a, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.d
  %.0 = phi i16 [ %i.b, %bb.k ], [ 1, %bb.l ], [ %i.b, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.n

bb.n:                                             ; preds = %bb.az, %bb.m
  %i.au = phi i32 [ %i.o, %bb.m ], [ %.pre, %bb.az ]
  %.0118 = phi i32 [ 0, %bb.m ], [ %.1119.lcssa, %bb.az ] ; 2 uses
  %.0116 = phi i32 [ 0, %bb.m ], [ %.1.lcssa, %bb.az ] ; 3 uses
  %.0113 = phi i1 [ false, %bb.m ], [ true, %bb.az ]
  %i.av = sub nsw i32 %i.au, %.0116
  %i.aw = sext i32 %i.av to i64
  %i.ax = load volatile i64, ptr %i.al, align 8, !tbaa !75
  %i.ay = udiv i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.az, i32 1)
  store i32 %spec.select, ptr %i.am, align 8, !tbaa !60
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %.not136192 = icmp eq ptr %i.ba, %i.an
  br i1 %.not136192, label %._crit_edge, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.n, %bb.at
  %.0115195 = phi ptr [ %.0114196, %bb.at ], [ %i.ba, %bb.n ] ; 9 uses
  %.1194 = phi i32 [ %.4, %bb.at ], [ %.0116, %bb.n ] ; 5 uses
  %.1119193 = phi i32 [ %.4122, %bb.at ], [ %.0118, %bb.n ] ; 2 uses
  %.0114196.in = getelementptr inbounds nuw i8, ptr %.0115195, i64 120
  %.0114196 = load ptr, ptr %.0114196.in, align 8, !tbaa !56 ; 2 uses
  tail call void @prte_rmaps_base_get_cpuset(ptr noundef %0, ptr noundef nonnull %.0115195, ptr noundef nonnull %5) #9
  %i.bb = load i8, ptr %i.ap, align 1, !tbaa !39, !range !40, !noundef !41
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph197
  %i.bd = getelementptr inbounds nuw i8, ptr %.0115195, i64 224
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !63 ; 2 uses
  %i.bf = load i32, ptr %i.am, align 8, !tbaa !60
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.be, ptr %i.am, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %.lr.ph197
  %i.bh = tail call i32 @prte_rmaps_base_get_ncpus(ptr noundef nonnull %.0115195, ptr noundef null, ptr noundef nonnull %5) #9
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, %i.bh
  br i1 %i.bj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.0115195, i64 224
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !63
  %.not137 = icmp sgt i32 %i.bi, %i.bl
  br i1 %.not137, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 140 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !54
  %i.bp = and i16 %i.bo, 16384
  %.not138 = icmp eq i16 %i.bp, 0
  br i1 %.not138, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i16 1, ptr %i.a, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@prte_rmaps_rr_bycpu:bb.a

bb.aq:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  tail call void %i.eb(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.dg) #9, !inline_history !2
  br label %.critedge

bb.ar:                                            ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %i.dg) #9
  br label %.critedge

bb.as:                                            ; preds = %bb.am
  br i1 %i.dl, label %bb.at, label %pmix_obj_update.exit217

bb.at:                                            ; preds = %bb.as
  %i.ed = tail call ptr @__errno_location() #10
  store i32 35, ptr %i.ed, align 4, !tbaa !46
  tail call void @perror(ptr noundef nonnull @.str.23) #11
  tail call void @abort() #12
  unreachable

pmix_obj_update.exit217:                          ; preds = %bb.as
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !67
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !67
  %i.eh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dg) #9 ; 0 uses
  %i.ei = icmp eq i32 %i.eg, 0
  br i1 %i.ei, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %pmix_obj_update.exit217
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !68
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !70 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !71 ; 2 uses
  %.not6.i220 = icmp eq ptr %i.en, null
  br i1 %.not6.i220, label %pmix_obj_run_destructors.exit224, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.au, %.lr.ph.i221
  %i.eo = phi ptr [ %i.eq, %.lr.ph.i221 ], [ %i.en, %bb.au ]
  %.07.i222 = phi ptr [ %i.ep, %.lr.ph.i221 ], [ %i.em, %bb.au ]
  tail call void %i.eo(ptr noundef nonnull %i.dg) #9, !inline_history !0
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i222, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !71 ; 2 uses
  %.not.i223 = icmp eq ptr %i.eq, null
  br i1 %.not.i223, label %pmix_obj_run_destructors.exit224, label %.lr.ph.i221, !llvm.loop !1

pmix_obj_run_destructors.exit224:                 ; preds = %.lr.ph.i221, %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72 ; 2 uses
  %.not206 = icmp eq ptr %i.es, null
  br i1 %.not206, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %pmix_obj_run_destructors.exit224
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  tail call void %i.es(ptr noundef nonnull %i.et, ptr noundef nonnull %i.dg) #9, !inline_history !2
  br label %.loopexit

bb.aw:                                            ; preds = %pmix_obj_run_destructors.exit224
  tail call void @free(ptr noundef nonnull %i.dg) #9
  br label %.loopexit

bb.ax:                                            ; preds = %bb.am
  br i1 %i.dl, label %bb.ay, label %pmix_obj_update.exit

bb.ay:                                            ; preds = %bb.ax
  %i.eu = tail call ptr @__errno_location() #10
  store i32 35, ptr %i.eu, align 4, !tbaa !46
  tail call void @perror(ptr noundef nonnull @.str.23) #11
  tail call void @abort() #12
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !67
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !67
  %i.ey = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dg) #9 ; 0 uses
  %i.ez = icmp eq i32 %i.ex, 0
  br i1 %i.ez, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %pmix_obj_update.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !68
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !70 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !71 ; 2 uses
  %.not6.i226 = icmp eq ptr %i.fe, null
  br i1 %.not6.i226, label %pmix_obj_run_destructors.exit230, label %.lr.ph.i227

.lr.ph.i227:                                      ; preds = %bb.az, %.lr.ph.i227
  %i.ff = phi ptr [ %i.fh, %.lr.ph.i227 ], [ %i.fe, %bb.az ]
  %.07.i228 = phi ptr [ %i.fg, %.lr.ph.i227 ], [ %i.fd, %bb.az ]
  tail call void %i.ff(ptr noundef nonnull %i.dg) #9, !inline_history !0
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i228, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !71 ; 2 uses
  %.not.i229 = icmp eq ptr %i.fh, null
  br i1 %.not.i229, label %pmix_obj_run_destructors.exit230, label %.lr.ph.i227, !llvm.loop !1

pmix_obj_run_destructors.exit230:                 ; preds = %.lr.ph.i227, %bb.az
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !72 ; 2 uses
  %.not205 = icmp eq ptr %i.fj, null
  br i1 %.not205, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %pmix_obj_run_destructors.exit230
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  tail call void %i.fj(ptr noundef nonnull %i.fk, ptr noundef nonnull %i.dg) #9, !inline_history !2
  br label %bb.bc

bb.bb:                                            ; preds = %pmix_obj_run_destructors.exit230
  tail call void @free(ptr noundef nonnull %i.dg) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %pmix_obj_update.exit
  %i.fl = add nuw nsw i32 %.0176268356, 1         ; 2 uses
  %i.fm = load i32, ptr %i.at, align 8, !tbaa !60
  %i.fn = icmp slt i32 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !81

..critedge.loopexit_crit_edge:                    ; preds = %bb.bc
  br label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.al, %pmix_obj_update.exit218, %bb.ar, %bb.aq
  %.3174 = phi i32 [ -46, %bb.ar ], [ -46, %pmix_obj_update.exit218 ], [ -46, %bb.aq ], [ %.1172278, %bb.al ], [ 0, %..critedge.loopexit_crit_edge ], [ %.1172278, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  %.3170 = phi i32 [ %i.di, %bb.ar ], [ %i.di, %pmix_obj_update.exit218 ], [ %i.di, %bb.aq ], [ %.1168279, %bb.al ], [ %i.di, %..critedge.loopexit_crit_edge ], [ %.1168279, %.lr.ph.preheader ], [ %i.di, %.lr.ph ] ; 2 uses
  %i.fo = load i32, ptr %i.n, align 8, !tbaa !38
  %i.fp = icmp eq i32 %.3170, %i.fo
  %i.fq = load ptr, ptr %i.ba, align 8, !tbaa !73 ; 3 uses
  %.not211 = icmp eq ptr %i.fq, null              ; 2 uses
  br i1 %i.fp, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %.critedge
  br i1 %.not211, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.fq) #9
  store ptr null, ptr %i.ba, align 8, !tbaa !73
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fr = load ptr, ptr %i.bb, align 8, !tbaa !85 ; 2 uses
  %.not212 = icmp eq ptr %i.fr, null
  br i1 %.not212, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.fr) #9
  store ptr null, ptr %i.bb, align 8, !tbaa !85
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fs = tail call noalias ptr @strdup(ptr noundef %i.aq) #9
  store ptr %i.fs, ptr %i.al, align 8, !tbaa !83
  %.not213 = icmp eq ptr %i.aq, null
  br i1 %.not213, label %bb.bz, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @free(ptr noundef nonnull %i.aq) #9
  br label %bb.bz

bb.bj:                                            ; preds = %.critedge
  br i1 %.not211, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.fq) #9
  store ptr null, ptr %i.ba, align 8, !tbaa !73
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ft = load ptr, ptr %i.bb, align 8, !tbaa !85 ; 2 uses
  %.not209 = icmp eq ptr %i.ft, null
  br i1 %.not209, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.ft) #9
  store ptr null, ptr %i.bb, align 8, !tbaa !85
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fu = load ptr, ptr %i.al, align 8, !tbaa !83 ; 2 uses
  %.not210 = icmp eq ptr %i.fu, null
  br i1 %.not210, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @free(ptr noundef nonnull %i.fu) #9
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fv = tail call noalias ptr @strdup(ptr noundef %i.aq) #9
  store ptr %i.fv, ptr %i.al, align 8, !tbaa !83
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.ah
  %.4175 = phi i32 [ %.3174, %bb.bp ], [ -2, %bb.ah ] ; 2 uses
  %.4 = phi i32 [ %.3170, %bb.bp ], [ %.1168279, %bb.ah ] ; 2 uses
  %.not200 = icmp eq ptr %.0165283, %i.ar
  br i1 %.not200, label %._crit_edge, label %.lr.ph284, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.bq, %bb.n
  %.1172.lcssa = phi i32 [ %.0171, %bb.n ], [ %.4175, %bb.bq ] ; 2 uses
  %.1168.lcssa = phi i32 [ %.0167, %bb.n ], [ %.4, %bb.bq ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0159, %bb.n ], [ %.2, %bb.bq ]
  %i.fw = load i8, ptr %i.ax, align 1, !tbaa !39, !range !40, !noundef !41
  %i.fx = trunc nuw i8 %i.fw to i1
  %or.cond9.not = and i1 %.0164.not, %i.fx
  br i1 %or.cond9.not, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %._crit_edge
  %i.fy = load i32, ptr %i.n, align 8, !tbaa !38  ; 2 uses
  %i.fz = sub nsw i32 %i.fy, %.1168.lcssa
  %i.ga = sitofp i32 %i.fz to float
  %i.gb = load volatile i64, ptr %i.bc, align 8, !tbaa !75
  %i.gc = uitofp i64 %i.gb to float
  %i.gd = fdiv float %i.ga, %i.gc                 ; 2 uses
  %i.ge = fptosi float %i.gd to i32               ; 4 uses
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = fcmp ogt float %i.gd, %i.gf
  br i1 %i.gg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gh = load volatile i64, ptr %i.bc, align 8, !tbaa !75
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = mul i32 %i.gi, %i.ge
  %6 = add i32 %.1168.lcssa, %i.gj
  %i.gk = sub i32 %i.fy, %6
  %i.gl = add nsw i32 %i.ge, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.3163 = phi i32 [ %i.gl, %bb.bs ], [ %i.ge, %bb.br ]
  %.3 = phi i32 [ %i.gk, %bb.bs ], [ %.1.lcssa, %bb.br ]
  %i.gm = load ptr, ptr %i.al, align 8, !tbaa !83 ; 2 uses
  %.not = icmp eq ptr %i.gm, null
  br i1 %.not, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @free(ptr noundef nonnull %i.gm) #9
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.gn = tail call noalias ptr @strdup(ptr noundef %i.aq) #9
  store ptr %i.gn, ptr %i.al, align 8, !tbaa !83
  br label %bb.n

.loopexit:                                        ; preds = %._crit_edge, %pmix_obj_update.exit217, %bb.aw, %bb.av
  %.5 = phi i32 [ %i.dj, %bb.aw ], [ %i.dj, %pmix_obj_update.exit217 ], [ %i.dj, %bb.av ], [ %.1172.lcssa, %._crit_edge ]
  %.not214 = icmp eq i32 %.5, -43
  br i1 %.not214, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  %i.go = icmp eq ptr %1, null
  br i1 %i.go, label %.thread234, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !42
  %i.gr = load i32, ptr %i.n, align 8, !tbaa !38
  br label %.thread234

.thread234:                                       ; preds = %bb.bw, %bb.bx
  %i.gs = phi ptr [ %i.gq, %bb.bx ], [ @.str.8, %bb.bw ]
  %i.gt = phi i32 [ %i.gr, %bb.bx ], [ -1, %bb.bw ]
  %i.gu = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef %i.gs, i32 noundef %i.gt, ptr noundef %i.aq) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.lr.ph357, %.thread234, %.loopexit
  %.not215 = icmp eq ptr %i.aq, null
  br i1 %.not215, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.thread
  tail call void @free(ptr noundef nonnull %i.aq) #9
  br label %bb.bz

bb.bz:                                            ; preds = %.thread, %bb.by, %bb.bh, %bb.bi, %bb.f, %bb.j
  %.0177 = phi i32 [ 0, %bb.bh ], [ -43, %bb.f ], [ -43, %bb.j ], [ 0, %bb.bi ], [ -43, %bb.by ], [ -43, %.thread ]
  ret i32 %.0177
}

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PMIx_Argv_count(ptr noundef) local_unnamed_addr #1

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @prte_rmaps_rr_byobj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_rmaps_base_framework, i64 76), align 4, !tbaa !29 ; 3 uses
  %or.cond = icmp ult i32 %i.a, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88
  %i.i = tail call ptr @hwloc_obj_type_string(i32 noundef %i.h) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = tail call ptr @prte_util_print_jobids(ptr noundef nonnull %i.j) #9
  %i.l = zext i32 %4 to i64
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.a, ptr noundef nonnull @.str.18, ptr noundef %i.i, ptr noundef %i.k, i32 noundef %3, i64 noundef %i.l) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38   ; 4 uses
  %i.o = icmp slt i32 %3, %i.n
  br i1 %i.o, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.q = load i8, ptr %i.p, align 1, !tbaa !39, !range !40, !noundef !41
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !45
  %i.v = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %i.n, ptr noundef %i.t, ptr noundef %i.u) #9 ; 0 uses
  %i.w = load i32, ptr @prte_exit_status, align 4, !tbaa !46
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.thread259

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr @prte_debug_output, align 4, !tbaa !46 ; 3 uses
  %or.cond3 = icmp ult i32 %i.y, 64
  br i1 %or.cond3, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #9
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.y, ptr noundef nonnull @.str.3, ptr noundef %i.ae, ptr noundef nonnull @.str.4, i32 noundef 587, i32 noundef 1) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i32 1, ptr @prte_exit_status, align 4, !tbaa !46
  br label %.thread259

bb.k:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 140 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !54
  %i.aj = and i16 %i.ai, 16384
  %.not = icmp eq i16 %i.aj, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 1, ptr %i.ah, align 4, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i16 1, ptr %i.ak, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.ay = icmp eq ptr %i.ax, %i.al
  br i1 %i.ay, label %.split349, label %.split.preheader

.split.preheader:                                 ; preds = %bb.m
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not204338438 = icmp eq ptr %i.az, %i.al
  br i1 %.not204338438, label %.split349, label %.lr.ph

.split:                                           ; preds = %._crit_edge
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not204338 = icmp eq ptr %i.ba, %i.al
  br i1 %.not204338, label %.split349, label %.lr.ph.backedge

.lr.ph:                                           ; preds = %.split.preheader, %.lr.ph.backedge
  %.0162342 = phi i8 [ %.0162342.be, %.lr.ph.backedge ], [ 1, %.split.preheader ] ; 4 uses
  %.0170341 = phi ptr [ %.0170341.be, %.lr.ph.backedge ], [ %i.az, %.split.preheader ] ; 29 uses
  %.1175340 = phi i32 [ %.6180, %.lr.ph.backedge ], [ 0, %.split.preheader ] ; 4 uses
  %.1182339 = phi i32 [ %.7, %.lr.ph.backedge ], [ 0, %.split.preheader ]
  %.0169.in343 = getelementptr inbounds nuw i8, ptr %.0170341, i64 120 ; 3 uses
  %.0169344 = load ptr, ptr %.0169.in343, align 8, !tbaa !56 ; 2 uses
  tail call void @prte_rmaps_base_get_cpuset(ptr noundef %0, ptr noundef nonnull %.0170341, ptr noundef %5) #9
  %i.bb = load i8, ptr %i.an, align 1, !tbaa !61, !range !40, !noundef !41
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bd = tail call i32 @prte_rmaps_base_check_support(ptr noundef %0, ptr noundef nonnull %.0170341, ptr noundef nonnull %5) #9 ; 5 uses
  switch i32 %i.bd, label %bb.bi [
    i32 0, label %bb.o
    i32 -43, label %.thread259
  ]

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.2183 = phi i32 [ %.1182339, %.lr.ph ], [ %i.bd, %bb.n ] ; 4 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %.0170341, i64 240 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !93
  %i.bi = load i32, ptr %i.ap, align 4, !tbaa !88
  %i.bj = load i32, ptr %i.aq, align 8, !tbaa !94
end_hunk_1
