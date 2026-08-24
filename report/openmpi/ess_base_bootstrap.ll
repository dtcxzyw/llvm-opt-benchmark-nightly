Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ess_base_bootstrap?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@prte_ess_base_bootstrap:bb.a

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.k:                                             ; preds = %bb.i
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(18) @.str.8) #14
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(18) @.str.9) #14
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.u, ptr noundef null, i32 noundef 10) #13 ; 0 uses
  br label %.outer

bb.o:                                             ; preds = %bb.m
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(10) @.str.10) #14
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.u, ptr noundef null, i32 noundef 10) #13
  %i.ah = trunc i64 %i.ag to i32
  br label %.outer

bb.q:                                             ; preds = %bb.o
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(9) @.str.11) #14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.s:                                             ; preds = %bb.q
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(11) @.str.12) #14
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.u:                                             ; preds = %bb.s
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(14) @.str.13) #14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.w:                                             ; preds = %bb.u
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(18) @.str.14) #14
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.at = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

bb.y:                                             ; preds = %bb.w
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(13) @.str.15) #14
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.z, label %.outer

bb.z:                                             ; preds = %bb.y
  %i.aw = tail call noalias ptr @strdup(ptr noundef nonnull %i.u) #13
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.p, %bb.t, %bb.x, %bb.z, %bb.y, %bb.v, %bb.r, %bb.n, %bb.j
  %.192 = phi ptr [ %i.x, %bb.j ], [ %.091.ph177, %bb.l ], [ %.091.ph177, %bb.n ], [ %.091.ph177, %bb.p ], [ %.091.ph177, %bb.r ], [ %.091.ph177, %bb.t ], [ %.091.ph177, %bb.v ], [ %.091.ph177, %bb.x ], [ %.091.ph177, %bb.z ], [ %.091.ph177, %bb.y ] ; 2 uses
  %.190 = phi ptr [ %.089.ph178, %bb.j ], [ %i.aa, %bb.l ], [ %.089.ph178, %bb.n ], [ %.089.ph178, %bb.p ], [ %.089.ph178, %bb.r ], [ %.089.ph178, %bb.t ], [ %.089.ph178, %bb.v ], [ %.089.ph178, %bb.x ], [ %.089.ph178, %bb.z ], [ %.089.ph178, %bb.y ] ; 2 uses
  %.186 = phi i32 [ %.085.ph179, %bb.j ], [ %.085.ph179, %bb.l ], [ %.085.ph179, %bb.n ], [ %i.ah, %bb.p ], [ %.085.ph179, %bb.r ], [ %.085.ph179, %bb.t ], [ %.085.ph179, %bb.v ], [ %.085.ph179, %bb.x ], [ %.085.ph179, %bb.z ], [ %.085.ph179, %bb.y ] ; 2 uses
  %.184 = phi ptr [ %.083.ph180, %bb.j ], [ %.083.ph180, %bb.l ], [ %.083.ph180, %bb.n ], [ %.083.ph180, %bb.p ], [ %i.ak, %bb.r ], [ %.083.ph180, %bb.t ], [ %.083.ph180, %bb.v ], [ %.083.ph180, %bb.x ], [ %.083.ph180, %bb.z ], [ %.083.ph180, %bb.y ] ; 2 uses
  %.182 = phi ptr [ %.081.ph181, %bb.j ], [ %.081.ph181, %bb.l ], [ %.081.ph181, %bb.n ], [ %.081.ph181, %bb.p ], [ %.081.ph181, %bb.r ], [ %i.an, %bb.t ], [ %.081.ph181, %bb.v ], [ %.081.ph181, %bb.x ], [ %.081.ph181, %bb.z ], [ %.081.ph181, %bb.y ] ; 2 uses
  %.180 = phi ptr [ %.079.ph182, %bb.j ], [ %.079.ph182, %bb.l ], [ %.079.ph182, %bb.n ], [ %.079.ph182, %bb.p ], [ %.079.ph182, %bb.r ], [ %.079.ph182, %bb.t ], [ %i.aq, %bb.v ], [ %.079.ph182, %bb.x ], [ %.079.ph182, %bb.z ], [ %.079.ph182, %bb.y ] ; 2 uses
  %.178 = phi ptr [ %.077.ph183, %bb.j ], [ %.077.ph183, %bb.l ], [ %.077.ph183, %bb.n ], [ %.077.ph183, %bb.p ], [ %.077.ph183, %bb.r ], [ %.077.ph183, %bb.t ], [ %.077.ph183, %bb.v ], [ %i.at, %bb.x ], [ %.077.ph183, %bb.z ], [ %.077.ph183, %bb.y ] ; 2 uses
  %.1 = phi ptr [ %.076.ph184, %bb.j ], [ %.076.ph184, %bb.l ], [ %.076.ph184, %bb.n ], [ %.076.ph184, %bb.p ], [ %.076.ph184, %bb.r ], [ %.076.ph184, %bb.t ], [ %.076.ph184, %bb.v ], [ %.076.ph184, %bb.x ], [ %i.aw, %bb.z ], [ %.076.ph184, %bb.y ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.j) #13
  %i.ax = tail call ptr @pmix_getline(ptr noundef nonnull %i.d) #13 ; 2 uses
  %.not160 = icmp eq ptr %i.ax, null
  br i1 %.not160, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !20

.lr.ph:                                           ; preds = %.preheader116, %.outer
  %i.ay = phi ptr [ %i.ax, %.outer ], [ %i.f, %.preheader116 ]
  %.076.ph184 = phi ptr [ %.1, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.077.ph183 = phi ptr [ %.178, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.079.ph182 = phi ptr [ %.180, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.081.ph181 = phi ptr [ %.182, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.083.ph180 = phi ptr [ %.184, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.085.ph179 = phi i32 [ %.186, %.outer ], [ -1, %.preheader116 ] ; 10 uses
  %.089.ph178 = phi ptr [ %.190, %.outer ], [ null, %.preheader116 ] ; 10 uses
  %.091.ph177 = phi ptr [ %.192, %.outer ], [ null, %.preheader116 ] ; 10 uses
  br label %bb.c

.outer._crit_edge:                                ; preds = %.outer, %bb.d
  %.091.ph.lcssa159 = phi ptr [ %.091.ph177, %bb.d ], [ %.192, %.outer ] ; 6 uses
  %.089.ph.lcssa157 = phi ptr [ %.089.ph178, %bb.d ], [ %.190, %.outer ]
  %.085.ph.lcssa155 = phi i32 [ %.085.ph179, %bb.d ], [ %.186, %.outer ]
  %.083.ph.lcssa151 = phi ptr [ %.083.ph180, %bb.d ], [ %.184, %.outer ] ; 11 uses
  %.081.ph.lcssa149 = phi ptr [ %.081.ph181, %bb.d ], [ %.182, %.outer ] ; 6 uses
  %.079.ph.lcssa147 = phi ptr [ %.079.ph182, %bb.d ], [ %.180, %.outer ] ; 6 uses
  %.077.ph.lcssa145 = phi ptr [ %.077.ph183, %bb.d ], [ %.178, %.outer ] ; 6 uses
  %.076.ph.lcssa143 = phi ptr [ %.076.ph184, %bb.d ], [ %.1, %.outer ] ; 6 uses
  %i.az = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.ba = icmp eq ptr %.083.ph.lcssa151, null
  br i1 %i.ba, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.outer._crit_edge.thread, %.outer._crit_edge
  %.076.ph.lcssa143287 = phi ptr [ null, %.outer._crit_edge.thread ], [ %.076.ph.lcssa143, %.outer._crit_edge ]
  %.077.ph.lcssa145285 = phi ptr [ null, %.outer._crit_edge.thread ], [ %.077.ph.lcssa145, %.outer._crit_edge ]
  %.079.ph.lcssa147283 = phi ptr [ null, %.outer._crit_edge.thread ], [ %.079.ph.lcssa147, %.outer._crit_edge ]
  %.081.ph.lcssa149281 = phi ptr [ null, %.outer._crit_edge.thread ], [ %.081.ph.lcssa149, %.outer._crit_edge ]
  %.091.ph.lcssa159275 = phi ptr [ null, %.outer._crit_edge.thread ], [ %.091.ph.lcssa159, %.outer._crit_edge ]
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !15
  %i.bc = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %i.bb, ptr noundef %i.c, ptr noundef nonnull @.str.11) #13 ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %.outer._crit_edge
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.bd = tail call i32 @strncasecmp(ptr noundef nonnull %.083.ph.lcssa151, ptr noundef nonnull @.str.19, i64 noundef 5) #14
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bf = getelementptr inbounds nuw i8, ptr %.083.ph.lcssa151, i64 5
  %i.bg = tail call noalias ptr @fopen(ptr noundef nonnull readonly %i.bf, ptr noundef nonnull @.str.1) ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.bq, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ac
  %i.bi = tail call ptr @pmix_getline(ptr noundef nonnull %i.bg) #13 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.backedge.i.i
  %i.bj = phi ptr [ %i.bk, %.backedge.i.i ], [ %i.bi, %.preheader.i.i ] ; 3 uses
  %char0.i.i = load i8, ptr %i.bj, align 1
  switch i8 %char0.i.i, label %bb.ad [
    i8 0, label %.backedge.i.i
    i8 35, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.ad, %.lr.ph.i.i, %.lr.ph.i.i
  call void @free(ptr noundef nonnull %i.bj) #13
  %i.bk = call ptr @pmix_getline(ptr noundef nonnull %i.bg) #13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !23

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.bl = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj) #13 ; 0 uses
  br label %.backedge.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %.preheader.i.i
  %i.bm = call i32 @fclose(ptr noundef nonnull %i.bg) ; 0 uses
  br label %regex_extract_nodes.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bn = tail call noalias ptr @strdup(ptr noundef nonnull %.083.ph.lcssa151) #13 ; 7 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bp = tail call ptr @PMIx_Error_string(i32 noundef -29) #13
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %i.bp, ptr noundef nonnull @.str.21, i32 noundef 266) #13
  br label %bb.bq

bb.ag:                                            ; preds = %bb.ae
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_framework, i64 76), align 4, !tbaa !24 ; 3 uses
  %or.cond.i = icmp ult i32 %i.bq, 64
  br i1 %or.cond.i, label %bb.ah, label %.backedge.i.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !34
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.ai, label %.backedge.i.preheader

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.bq, ptr noundef nonnull @.str.22, ptr noundef nonnull %.083.ph.lcssa151) #13
  br label %.backedge.i.preheader

.backedge.i.preheader:                            ; preds = %bb.ai, %bb.ah, %bb.ag
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.backedge.i.preheader
  %.0111.i = phi ptr [ %i.bn, %.backedge.i.preheader ], [ %.0111.i.be, %.backedge.i.backedge ] ; 21 uses
  %.0108.i = phi i1 [ false, %.backedge.i.preheader ], [ %.0108.i.be, %.backedge.i.backedge ] ; 2 uses
  %.0.i = phi i1 [ false, %.backedge.i.preheader ], [ true, %.backedge.i.backedge ] ; 2 uses
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111.i) #14 ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 10 uses
  %.not172.i = icmp slt i32 %i.bx, 0
  br i1 %.not172.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.backedge.i
  %i.by = and i64 %i.bw, 2147483647
  %i.bz = add nuw i32 %i.bx, 1                    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ak ] ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !22
  switch i8 %i.cb, label %bb.ak [
    i8 91, label %.thread145.i
    i8 44, label %bb.aj
    i8 0, label %.loopexit.loopexit.i
  ]

.thread145.i:                                     ; preds = %.lr.ph.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv.i
  %i.cd = trunc nuw nsw i64 %indvars.iv.i to i32
  store i8 0, ptr %i.cc, align 1, !tbaa !22
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv.i
  %i.cf = trunc nuw nsw i64 %indvars.iv.i to i32
  store i8 0, ptr %i.ce, align 1, !tbaa !22
  br label %.loopexit.i

bb.ak:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.by
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !36

.loopexit.thread.i:                               ; preds = %bb.ak
  br i1 %.0108.i, label %bb.an, label %bb.bp

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %i.cg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.aj, %.backedge.i
  %.0119159.i = phi i32 [ %i.cf, %bb.aj ], [ 0, %.backedge.i ], [ %i.cg, %.loopexit.loopexit.i ] ; 3 uses
  %.1109.i = phi i1 [ false, %bb.aj ], [ %.0108.i, %.backedge.i ], [ false, %.loopexit.loopexit.i ] ; 2 uses
  %.1.i = phi i1 [ true, %bb.aj ], [ %.0.i, %.backedge.i ], [ false, %.loopexit.loopexit.i ]
  %i.ch = icmp ne i32 %.0119159.i, 0
  %or.cond3.i = or i1 %i.ch, %.1109.i
  br i1 %or.cond3.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.bn) #13
  br label %bb.bq

bb.am:                                            ; preds = %.loopexit.i
  br i1 %.1109.i, label %bb.an, label %bb.bp

bb.an:                                            ; preds = %bb.am, %.loopexit.thread.i, %.thread145.i
  %.0119160.i = phi i32 [ %i.cd, %.thread145.i ], [ %.0119159.i, %bb.am ], [ %i.bz, %.loopexit.thread.i ] ; 3 uses
  %i.ci = add nuw nsw i32 %.0119160.i, 1          ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bx
  br i1 %i.cj, label %.lr.ph181.preheader.i, label %._crit_edge.i

.lr.ph181.preheader.i:                            ; preds = %bb.an
  %i.ck = zext i32 %.0119160.i to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = add i32 %.0119160.i, 2
  br label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %bb.ao, %.lr.ph181.preheader.i
  %indvars.iv215.i = phi i32 [ %i.cm, %.lr.ph181.preheader.i ], [ %indvars.iv.next216.i, %bb.ao ] ; 2 uses
  %indvars.iv212.i = phi i64 [ %i.cl, %.lr.ph181.preheader.i ], [ %indvars.iv.next213.i, %bb.ao ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv212.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !22
  %i.cp = icmp eq i8 %i.co, 58
  br i1 %i.cp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph181.i
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next213.i to i32
  %i.cr = icmp slt i32 %i.cq, %i.bx
  %indvars.iv.next216.i = add i32 %indvars.iv215.i, 1
  br i1 %i.cr, label %.lr.ph181.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.an, %bb.ao
  call void @free(ptr noundef %i.bn) #13
  br label %bb.bq

bb.ap:                                            ; preds = %.lr.ph181.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv212.i
  %i.ct = trunc nuw i64 %indvars.iv212.i to i32
  store i8 0, ptr %i.cs, align 1, !tbaa !22
  %i.cu = zext nneg i32 %i.ci to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.cu
  %i.cw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cv, ptr noundef null, i32 noundef 10) #13
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = add nuw nsw i32 %i.ct, 1                ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %i.bx
  br i1 %i.cz, label %.lr.ph186.preheader.i, label %._crit_edge187.i

.lr.ph186.preheader.i:                            ; preds = %bb.ap
  %i.da = zext i32 %indvars.iv215.i to i64
  br label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.aq, %.lr.ph186.preheader.i
  %indvars.iv218.i = phi i64 [ %i.da, %.lr.ph186.preheader.i ], [ %indvars.iv.next219.i, %bb.aq ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv218.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = icmp eq i8 %i.dc, 93
  br i1 %i.dd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph186.i
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv.next219.i to i32
  %i.df = icmp slt i32 %i.de, %i.bx
  br i1 %i.df, label %.lr.ph186.i, label %._crit_edge187.i, !llvm.loop !38

._crit_edge187.i:                                 ; preds = %bb.ap, %bb.aq
  call void @free(ptr noundef %i.bn) #13
  br label %bb.bq

bb.ar:                                            ; preds = %.lr.ph186.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %indvars.iv218.i
  %i.dh = trunc nuw i64 %indvars.iv218.i to i32   ; 3 uses
  store i8 0, ptr %i.dg, align 1, !tbaa !22
  %i.di = add nuw nsw i32 %i.dh, 1                ; 3 uses
  %i.dj = icmp slt i32 %i.di, %i.bx
  br i1 %i.dj, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.dk ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22
  %.not133.i = icmp eq i8 %i.dm, 44
  br i1 %.not133.i, label %bb.aw, label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %bb.as, %bb.at
  %.0115190.i = phi i32 [ %1, %bb.at ], [ %i.di, %bb.as ] ; 3 uses
  %0 = zext nneg i32 %.0115190.i to i64           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %0
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22
  %.not134.i = icmp eq i8 %i.do, 44
  br i1 %.not134.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph191.i
  %1 = add nsw i32 %.0115190.i, 1                 ; 2 uses
  %i.dp = icmp slt i32 %1, %i.bx
  br i1 %i.dp, label %.lr.ph191.i, label %.critedge137.i, !llvm.loop !39

.critedge137.i:                                   ; preds = %bb.at
  %i.dq = call noalias ptr @strdup(ptr noundef nonnull %i.dl) #13
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph191.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %0 ; 2 uses
  store i8 0, ptr %i.dr, align 1, !tbaa !22
  %i.ds = call noalias ptr @strdup(ptr noundef nonnull %i.dl) #13
  store i8 44, ptr %i.dr, align 1, !tbaa !22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.critedge137.i
  %.0115166.i = phi i32 [ %.0115190.i, %bb.au ], [ %i.bx, %.critedge137.i ]
  %i.dt = phi ptr [ %i.ds, %bb.au ], [ %i.dq, %.critedge137.i ]
  %i.du = add nsw i32 %.0115166.i, -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as, %bb.ar
  %.2118.i = phi i32 [ %i.du, %bb.av ], [ %i.dh, %bb.as ], [ %i.dh, %bb.ar ] ; 2 uses
  %.0110.i = phi ptr [ %i.dt, %bb.av ], [ null, %bb.as ], [ null, %bb.ar ] ; 5 uses
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_framework, i64 76), align 4, !tbaa !24 ; 3 uses
  %or.cond5.i = icmp ult i32 %i.dv, 64
  br i1 %or.cond5.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.eb = zext nneg i32 %i.cy to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.eb
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.dv, ptr noundef nonnull @.str.23, ptr noundef nonnull %.0111.i, ptr noundef nonnull %i.ec, ptr noundef %.0110.i) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ed = zext nneg i32 %i.cy to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.ed ; 5 uses
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ee) #14 ; 3 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.preheader.i.i, label %._crit_edge.i138.i

.lr.ph.preheader.i.i:                             ; preds = %bb.az
  %wide.trip.count.i.i = and i64 %i.ef, 2147483647
  br label %.lr.ph.i139.i

.lr.ph.i139.i:                                    ; preds = %bb.bd, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 2 uses
  %.047.i.i = phi ptr [ %i.ee, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.bd ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.i.i ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !22
  %i.ek = icmp eq i8 %i.ej, 44
  br i1 %i.ek, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %.lr.ph.i139.i
  store i8 0, ptr %i.ei, align 1, !tbaa !22
  %i.el = call fastcc i32 @regex_parse_value_range(ptr noundef nonnull readonly %.0111.i, ptr noundef %.047.i.i, i32 noundef %i.cx, ptr noundef readonly %.0110.i, ptr noundef nonnull %i.a) ; 4 uses
  switch i32 %i.el, label %bb.bb [
    i32 0, label %bb.bc
    i32 -2, label %regex_parse_value_ranges.exit.i
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.em = call ptr @PMIx_Error_string(i32 noundef %i.el) #13
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %i.em, ptr noundef nonnull @.str.21, i32 noundef 405) #13
  br label %regex_parse_value_ranges.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i139.i
  %.1.i.i = phi ptr [ %i.en, %bb.bc ], [ %.047.i.i, %.lr.ph.i139.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i138.i, label %.lr.ph.i139.i, !llvm.loop !40

._crit_edge.i138.i:                               ; preds = %bb.bd, %bb.az
  %.0.lcssa.i.i = phi ptr [ %i.ee, %bb.az ], [ %.1.i.i, %bb.bd ] ; 3 uses
  %sext.i.i = shl i64 %i.ef, 32
  %i.eo = ashr exact i64 %sext.i.i, 32
  %i.ep = getelementptr inbounds i8, ptr %i.ee, i64 %i.eo
  %i.eq = icmp ult ptr %.0.lcssa.i.i, %i.ep
  br i1 %i.eq, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %._crit_edge.i138.i
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ess_base_framework, i64 76), align 4, !tbaa !24 ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.er, 64
  br i1 %or.cond.i.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !34
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.er, ptr noundef nonnull @.str.24, ptr noundef %.0.lcssa.i.i) #13
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ex = call fastcc i32 @regex_parse_value_range(ptr noundef nonnull readonly %.0111.i, ptr noundef %.0.lcssa.i.i, i32 noundef %i.cx, ptr noundef readonly %.0110.i, ptr noundef nonnull %i.a) ; 4 uses
  switch i32 %i.ex, label %bb.bi [
    i32 0, label %bb.bj
    i32 -2, label %regex_parse_value_ranges.exit.i
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ey = call ptr @PMIx_Error_string(i32 noundef %i.ex) #13
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %i.ey, ptr noundef nonnull @.str.21, i32 noundef 422) #13
  br label %regex_parse_value_ranges.exit.i

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i138.i
  br label %regex_parse_value_ranges.exit.i

regex_parse_value_ranges.exit.i:                  ; preds = %bb.ba, %bb.bj, %bb.bi, %bb.bh, %bb.bb
  %.035.i.i = phi i32 [ 0, %bb.bj ], [ %i.el, %bb.bb ], [ %i.ex, %bb.bi ], [ %i.ex, %bb.bh ], [ %i.el, %bb.ba ] ; 2 uses
  %.not135.i = icmp eq ptr %.0110.i, null
  br i1 %.not135.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %regex_parse_value_ranges.exit.i
  call void @free(ptr noundef nonnull %.0110.i) #13
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %regex_parse_value_ranges.exit.i
  %.not136.i = icmp eq i32 %.035.i.i, 0
  br i1 %.not136.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef %i.bn) #13
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.ez = add nsw i32 %.2118.i, 1                 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, %i.bx
  br i1 %i.fa, label %bb.bo, label %.thread152.i

bb.bo:                                            ; preds = %bb.bn
  %i.fb = sext i32 %i.ez to i64
  %i.fc = getelementptr inbounds i8, ptr %.0111.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !22
  %i.fe = icmp eq i8 %i.fd, 44
  br i1 %i.fe, label %.split.i, label %.thread152.i

.split.i:                                         ; preds = %bb.bo
  %i.ff = sext i32 %.2118.i to i64
  %i.fg = getelementptr i8, ptr %.0111.i, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 2
  br label %.backedge.i.backedge

bb.bp:                                            ; preds = %bb.am, %.loopexit.thread.i
  %.0119159247251.i = phi i32 [ %i.bz, %.loopexit.thread.i ], [ %.0119159.i, %bb.am ]
  %.1249250.i = phi i1 [ %.0.i, %.loopexit.thread.i ], [ %.1.i, %bb.am ]
  %i.fi = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %.0111.i) #13 ; 0 uses
  %i.fj = zext nneg i32 %.0119159247251.i to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  br i1 %.1249250.i, label %.backedge.i.backedge, label %.thread152.i

.backedge.i.backedge:                             ; preds = %bb.bp, %.split.i
  %.0111.i.be = phi ptr [ %i.fh, %.split.i ], [ %i.fl, %bb.bp ]
  %.0108.i.be = phi i1 [ true, %.split.i ], [ false, %bb.bp ]
  br label %.backedge.i, !llvm.loop !41

.thread152.i:                                     ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @free(ptr noundef %i.bn) #13
  br label %regex_extract_nodes.exit

bb.bq:                                            ; preds = %bb.al, %bb.af, %._crit_edge.i, %._crit_edge187.i, %bb.bm, %bb.ac
  %.0120.i.ph = phi i32 [ -27, %bb.ac ], [ %.035.i.i, %bb.bm ], [ -27, %._crit_edge187.i ], [ -27, %._crit_edge.i ], [ -29, %bb.af ], [ -27, %bb.al ] ; 2 uses
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !15
  %i.fn = call ptr @PMIx_Error_string(i32 noundef %.0120.i.ph) #13
  %i.fo = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef %i.fm, ptr noundef %i.c, ptr noundef nonnull %.083.ph.lcssa151, ptr noundef %i.fn) #13 ; 0 uses
  br label %.loopexit

regex_extract_nodes.exit:                         ; preds = %.thread152.i, %._crit_edge.i.i
  %i.fp = icmp eq ptr %.089.ph.lcssa157, null
  br i1 %i.fp, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %regex_extract_nodes.exit
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !15
  %i.fr = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %i.fq, ptr noundef %i.c, ptr noundef nonnull @.str.8) #13 ; 0 uses
  br label %.loopexit

bb.bs:                                            ; preds = %regex_extract_nodes.exit
  %i.fs = icmp eq i32 %.085.ph.lcssa155, -1
  br i1 %i.fs, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %bb.bs
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42 ; 2 uses
  %.not102198 = icmp eq ptr %i.fu, null
  br i1 %.not102198, label %.loopexit, label %.lr.ph200

bb.bt:                                            ; preds = %bb.bs
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_process_info, i64 800), align 8, !tbaa !15
  %i.fw = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %i.fv, ptr noundef %i.c, ptr noundef nonnull @.str.9) #13 ; 0 uses
  br label %.loopexit

.lr.ph200:                                        ; preds = %.preheader, %.lr.ph200
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph200 ], [ 0, %.preheader ] ; 2 uses
  %i.fx = phi ptr [ %i.gb, %.lr.ph200 ], [ %i.fu, %.preheader ]
  %i.fy = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %i.fy, ptr noundef nonnull %i.fx) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !42 ; 2 uses
end_hunk_0
