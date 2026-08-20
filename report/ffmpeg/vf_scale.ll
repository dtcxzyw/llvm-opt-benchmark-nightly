inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@init:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 528 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  %i.bx = select i1 %.not.i, ptr @.str.70, ptr %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !44
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.180, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %i.bx, i32 noundef %i.bz) #12
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !43 ; 3 uses
  %.not137 = icmp eq ptr %i.ca, null
  br i1 %.not137, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !45
  %.not138 = icmp eq i8 %i.cb, 0
  br i1 %.not138, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = call i32 @av_opt_set(ptr noundef %i.cd, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ca, i32 noundef 0) #12 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.an
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.cl = load <4 x i32>, ptr %i.ck, align 8, !tbaa !46
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cm, ptr %i.cj, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !29
  %.not139 = icmp eq i32 %i.co, 0
  br i1 %.not139, label %bb.ao, label %bb.ap

bb.al:                                            ; preds = %bb.aj, %bb.an
  %i.cp = phi i1 [ true, %bb.aj ], [ false, %bb.an ]
  %indvars.iv = phi i64 [ 0, %bb.aj ], [ 1, %bb.an ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !47 ; 2 uses
  %i.cs = fcmp nsz une double %i.cr, f0x7FEFFFFFFFFFFFFF
  br i1 %i.cs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store double %i.cr, ptr %i.cv, align 8, !tbaa !47
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  br i1 %i.cp, label %bb.al, label %bb.ak, !llvm.loop !49

bb.ao:                                            ; preds = %bb.ak
  %i.cw = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %0) #13
  store i32 %i.cw, ptr %i.cn, align 8, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.cy = icmp eq ptr %i.cx, @ff_vf_scale2ref
  br i1 %i.cy, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !51
  %.not140 = icmp eq i32 %i.da, 0
  br i1 %.not140, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @__const.init.pad, i64 48, i1 false)
  %i.db = call i32 @ff_append_inpad(ptr noundef nonnull %0, ptr noundef nonnull %1) #12 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %i.dc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.at

bb.at:                                            ; preds = %bb.k, %bb.ai, %bb.n, %bb.m, %bb.ar, %bb.as, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.f
  %.3 = phi i32 [ -22, %bb.f ], [ %i.s, %bb.k ], [ %i.aj, %bb.m ], [ %i.an, %bb.n ], [ 0, %bb.as ], [ %i.db, %bb.ar ], [ -22, %bb.af ], [ -22, %bb.ac ], [ -22, %bb.z ], [ -22, %bb.w ], [ -22, %bb.t ], [ -22, %bb.q ], [ %i.ce, %bb.ai ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  tail call void @av_expr_free(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  tail call void @av_expr_free(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @sws_free_context(ptr noundef nonnull %i.h) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !54
  %i.d = tail call ptr @av_pix_fmt_desc_next(ptr noundef null) #12 ; 2 uses
  %.not87 = icmp eq ptr %i.d, null
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = call i32 @av_pix_fmt_desc_get_id(ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.g = call i32 @sws_test_format(i32 noundef %i.f, i32 noundef 0) #12
  %.not78 = icmp eq i32 %i.g, 0
  br i1 %.not78, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = sext i32 %i.f to i64
  %i.i = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %i.h) #12 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.loopexit79, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = call ptr @av_pix_fmt_desc_next(ptr noundef nonnull %i.e) #12 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.m = load ptr, ptr %1, align 8, !tbaa !57
  %i.n = call i32 @ff_formats_ref(ptr noundef %i.l, ptr noundef %i.m) #12 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit79, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.a, align 8, !tbaa !54
  %i.p = call ptr @av_pix_fmt_desc_next(ptr noundef null) #12 ; 2 uses
  %.not7288 = icmp eq ptr %i.p, null
  br i1 %.not7288, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.d, %bb.f
  %i.q = phi ptr [ %i.y, %bb.f ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = call i32 @av_pix_fmt_desc_get_id(ptr noundef nonnull %i.q) #12 ; 3 uses
  %i.s = call i32 @sws_test_format(i32 noundef %i.r, i32 noundef 1) #12
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp eq i32 %i.r, 11
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph90
  %i.v = sext i32 %i.r to i64
  %i.w = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %i.v) #12 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.loopexit79, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph90
  %i.y = call ptr @av_pix_fmt_desc_next(ptr noundef nonnull %i.q) #12 ; 2 uses
  %.not72 = icmp eq ptr %i.y, null
  br i1 %.not72, label %._crit_edge91, label %.lr.ph90, !llvm.loop !59

._crit_edge91:                                    ; preds = %bb.f, %bb.d
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aa = load ptr, ptr %2, align 8, !tbaa !57
  %i.ab = call i32 @ff_formats_ref(ptr noundef %i.z, ptr noundef %i.aa) #12 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit79, label %bb.g

bb.g:                                             ; preds = %._crit_edge91
  %i.ad = call ptr @ff_all_color_spaces() #12     ; 4 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !54
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60
  %.not110 = icmp eq i32 %i.ae, 0
  br i1 %.not110, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %bb.j, %bb.g
  %.lcssa84 = phi ptr [ %i.ad, %bb.g ], [ %.pre122, %bb.j ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = call i32 @ff_formats_ref(ptr noundef nonnull %.lcssa84, ptr noundef nonnull %i.ag) #12 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit79, label %bb.k

.lr.ph99:                                         ; preds = %bb.g, %bb.j
  %i.aj = phi ptr [ %.pre122, %bb.j ], [ %i.ad, %bb.g ]
  %.05097 = phi i32 [ %i.be, %bb.j ], [ 0, %bb.g ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.am = sext i32 %.05097 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46
  %i.ap = call i32 @sws_test_colorspace(i32 noundef %i.ao, i32 noundef 0) #12
  %.not77 = icmp eq i32 %i.ap, 0
  %.pre122 = load ptr, ptr %i.a, align 8, !tbaa !54 ; 6 uses
  %.pre123 = load i32, ptr %.pre122, align 8, !tbaa !60 ; 3 uses
  br i1 %.not77, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph99
  %i.aq = add nsw i32 %.05097, -1
  %i.ar = add nuw nsw i32 %.05097, 1              ; 2 uses
  %i.as = icmp ult i32 %i.ar, %.pre123
  br i1 %i.as, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.pre122, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 2 uses
  %i.av = sext i32 %i.ar to i64
  %3 = sext i32 %.05097 to i64
  br label %bb.i

._crit_edge95:                                    ; preds = %bb.i, %bb.h
  %.lcssa82 = phi i32 [ %.pre123, %bb.h ], [ %i.ba, %bb.i ]
  %i.aw = add i32 %.lcssa82, -1                   ; 2 uses
  store i32 %i.aw, ptr %.pre122, align 8, !tbaa !60
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph94, %bb.i
  %indvars.iv.a = phi i64 [ %i.av, %.lr.ph94 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.04992 = phi i64 [ %3, %.lr.ph94 ], [ %indvars.iv.a, %bb.i ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.a
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.az = getelementptr inbounds [4 x i8], ptr %i.au, i64 %.04992
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ba = load i32, ptr %.pre122, align 8, !tbaa !60 ; 2 uses
  %i.bb = trunc nsw i64 %indvars.iv.next to i32
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %._crit_edge95, !llvm.loop !66

bb.j:                                             ; preds = %.lr.ph99, %._crit_edge95
  %i.bd = phi i32 [ %.pre123, %.lr.ph99 ], [ %i.aw, %._crit_edge95 ]
  %.151 = phi i32 [ %.05097, %.lr.ph99 ], [ %i.aq, %._crit_edge95 ]
  %i.be = add nsw i32 %.151, 1                    ; 2 uses
  %i.bf = icmp ult i32 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph99, label %._crit_edge100, !llvm.loop !67

bb.k:                                             ; preds = %._crit_edge100
  %i.bg = call ptr @ff_all_color_ranges() #12
  %i.bh = load ptr, ptr %1, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = call i32 @ff_formats_ref(ptr noundef %i.bg, ptr noundef nonnull %i.bi) #12 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.loopexit79, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 540
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %.not73 = icmp eq i32 %i.bm, 2
  br i1 %.not73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call ptr @ff_make_formats_list_singleton(i32 noundef %i.bm) #12 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !54
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bo = call ptr @ff_all_color_spaces() #12     ; 4 uses
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !54
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !60
  %.not111 = icmp eq i32 %i.bp, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.n, %bb.q
  %i.bq = phi ptr [ %.pre124, %bb.q ], [ %i.bo, %bb.n ]
  %.048107 = phi i32 [ %i.cl, %bb.q ], [ 0, %bb.n ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bt = sext i32 %.048107 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bw = call i32 @sws_test_colorspace(i32 noundef %i.bv, i32 noundef 1) #12
  %.not74 = icmp eq i32 %i.bw, 0
  %.pre124 = load ptr, ptr %i.a, align 8, !tbaa !54 ; 6 uses
  %.pre125 = load i32, ptr %.pre124, align 8, !tbaa !60 ; 3 uses
  br i1 %.not74, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph109
  %i.bx = add nsw i32 %.048107, -1
  %i.by = add nuw nsw i32 %.048107, 1             ; 2 uses
  %i.bz = icmp ult i32 %i.by, %.pre125
  br i1 %i.bz, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre124, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 2 uses
  %i.cc = sext i32 %i.by to i64
  %4 = sext i32 %.048107 to i64
  br label %bb.p

._crit_edge104:                                   ; preds = %bb.p, %bb.o
  %.lcssa = phi i32 [ %.pre125, %bb.o ], [ %i.ch, %bb.p ]
  %i.cd = add i32 %.lcssa, -1                     ; 2 uses
  store i32 %i.cd, ptr %.pre124, align 8, !tbaa !60
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph103, %bb.p
  %indvars.iv119 = phi i64 [ %i.cc, %.lr.ph103 ], [ %indvars.iv.next120, %bb.p ] ; 3 uses
  %.0101 = phi i64 [ %4, %.lr.ph103 ], [ %indvars.iv119, %bb.p ]
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %indvars.iv119
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !46
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.0101
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !46
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ch = load i32, ptr %.pre124, align 8, !tbaa !60 ; 2 uses
  %i.ci = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cj = icmp ugt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %._crit_edge104, !llvm.loop !68

bb.q:                                             ; preds = %.lr.ph109, %._crit_edge104
  %i.ck = phi i32 [ %.pre125, %.lr.ph109 ], [ %i.cd, %._crit_edge104 ]
  %.1 = phi i32 [ %.048107, %.lr.ph109 ], [ %i.bx, %._crit_edge104 ]
  %i.cl = add nsw i32 %.1, 1                      ; 2 uses
  %i.cm = icmp ult i32 %i.cl, %i.ck
  br i1 %i.cm, label %.lr.ph109, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %bb.q, %bb.n, %bb.m
  %i.cn = phi ptr [ %i.bn, %bb.m ], [ %i.bo, %bb.n ], [ %.pre124, %bb.q ]
  %i.co = load ptr, ptr %2, align 8, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = call i32 @ff_formats_ref(ptr noundef %i.cn, ptr noundef nonnull %i.cp) #12 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit79, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 564
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !70 ; 2 uses
  %.not75 = icmp eq i32 %i.ct, 0
  br i1 %.not75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = call ptr @ff_make_formats_list_singleton(i32 noundef %i.ct) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = call ptr @ff_all_color_ranges() #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cw = phi ptr [ %i.cu, %bb.s ], [ %i.cv, %bb.t ] ; 2 uses
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !54
  %i.cx = load ptr, ptr %2, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = call i32 @ff_formats_ref(ptr noundef %i.cw, ptr noundef nonnull %i.cy) #12 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.loopexit79, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !71
  %.not76 = icmp eq i32 %i.de, 0
  br i1 %.not76, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = call ptr @ff_make_formats_list_singleton(i32 noundef 2) #12
  %i.dg = load ptr, ptr %1, align 8, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = call i32 @ff_formats_ref(ptr noundef %i.df, ptr noundef nonnull %i.dh) #12 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.loopexit79, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %.loopexit79

.loopexit79:                                      ; preds = %bb.b, %bb.e, %bb.w, %bb.u, %.loopexit, %bb.k, %._crit_edge100, %._crit_edge91, %._crit_edge, %bb.x
  %.054 = phi i32 [ 0, %bb.x ], [ %i.w, %bb.e ], [ %i.n, %._crit_edge ], [ %i.di, %bb.w ], [ %i.ab, %._crit_edge91 ], [ %i.ah, %._crit_edge100 ], [ %i.bj, %bb.k ], [ %i.cq, %.loopexit ], [ %i.cz, %bb.u ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.tail, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1
  %.not33 = icmp eq i8 %i.d, 119
  br i1 %.not33, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_0, %bb.a
  %i.h = phi i1 [ true, %bb.a ], [ false, %sub_0 ], [ %i.g, %sub_1 ] ; 3 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.17) #13
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %.thread, label %sub_030

sub_030:                                          ; preds = %.tail
  %i.j = load i8, ptr %1, align 1
  %.not34 = icmp eq i8 %i.j, 104
  br i1 %.not34, label %sub_131, label %.tail29

sub_131:                                          ; preds = %sub_030
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br label %.tail29

.tail29:                                          ; preds = %sub_030, %sub_131
  %.not23 = phi i1 [ false, %sub_030 ], [ %i.m, %sub_131 ]
  %or.cond = select i1 %i.h, i1 true, i1 %.not23
  br i1 %or.cond, label %.thread, label %.thread25

.thread:                                          ; preds = %.tail, %.tail29
  %.v = select i1 %i.h, i64 184, i64 192
  %.in.v = select i1 %i.h, i64 168, i64 176
  %.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.in.v
  %i.n = load ptr, ptr %.in, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v
  %i.p = tail call fastcc i32 @scale_parse_expr(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread25, label %bb.b

.thread25:                                        ; preds = %.tail29, %.thread
  %.028 = phi i32 [ %i.p, %.thread ], [ -38, %.tail29 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.182) #12
  br label %bb.b

bb.b:                                             ; preds = %.thread25, %.thread
  %.027 = phi i32 [ %.028, %.thread25 ], [ 0, %.thread ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_props(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !73     ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp eq ptr %i.g, @ff_vf_scale2ref       ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %i.s = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #12, !inline_history !84 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !83
  %i.v = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.u) #12, !inline_history !84 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !83
  %i.aa = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.z) #12, !inline_history !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0115.i = phi ptr [ %i.aa, %bb.d ], [ undef, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.x, %bb.d ], [ undef, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ag = load <2 x i32>, ptr %i.ab, align 8, !tbaa !46
  %i.ah = sitofp <2 x i32> %i.ag to <2 x double>  ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  store double %i.ai, ptr %i.ac, align 8, !tbaa !47
  %i.aj = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  store double %i.aj, ptr %i.af, align 8, !tbaa !47
  store <2 x double> %i.ah, ptr %i.ad, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 240 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 232 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.al, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 248 ; 2 uses
end_hunk_0
