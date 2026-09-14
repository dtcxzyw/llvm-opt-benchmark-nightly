Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cb_config_list?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ADIOI_cb_config_list_parse:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  store ptr %i.bo, ptr @token_ptr, align 8, !tbaa !18
  br label %bb.t

cb_config_list_lex.exit21.thread40.i:             ; preds = %bb.q, %bb.q
  %.sink.i18.ph.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  store ptr %.sink.i18.ph.i, ptr @token_ptr, align 8, !tbaa !18
  br label %get_max_procs.exit

bb.s:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr @yylval, align 8, !tbaa !18
  %sext.i20.i = shl i64 %i.bl, 32
  %i.bq = ashr exact i64 %sext.i20.i, 32          ; 3 uses
  %i.br = call i32 @ADIOI_Strncpy(ptr noundef %i.bp, ptr noundef nonnull %i.bi, i64 noundef %i.bq) #11 ; 0 uses
  %i.bs = load ptr, ptr @yylval, align 8, !tbaa !18 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !58
  %i.bu = load ptr, ptr @token_ptr, align 8, !tbaa !18
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bq
  store ptr %i.bv, ptr @token_ptr, align 8, !tbaa !18
  %i.bw = call i64 @__isoc23_strtol(ptr noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef 10) #11
  %i.bx = trunc i64 %i.bw to i32
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.bz, 0
  %spec.store.select.i = select i1 %.not.i, i32 %i.bx, i32 1
  %.pre.i = load ptr, ptr @token_ptr, align 8, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread.i
  %i.ca = phi ptr [ %i.bo, %.thread.i ], [ %.pre.i, %bb.s ] ; 8 uses
  %.0.i49 = phi i32 [ %spec.select, %.thread.i ], [ %spec.store.select.i, %bb.s ]
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !58  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %cb_config_list_lex.exit27.thread47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = call i64 @strcspn(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.8) #12 ; 2 uses
  switch i8 %i.cb, label %bb.y [
    i8 58, label %bb.v
    i8 44, label %cb_config_list_lex.exit27.i
    i8 42, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  br label %cb_config_list_lex.exit27.thread49.i

bb.w:                                             ; preds = %bb.u
  %i.cf = and i64 %i.cd, 4294967295
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.x, label %get_max_procs.exit

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  br label %cb_config_list_lex.exit27.thread49.i

bb.y:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr @yylval, align 8, !tbaa !18
  %sext.i26.i = shl i64 %i.cd, 32
  %i.cj = ashr exact i64 %sext.i26.i, 32          ; 3 uses
  %i.ck = call i32 @ADIOI_Strncpy(ptr noundef %i.ci, ptr noundef nonnull %i.ca, i64 noundef %i.cj) #11 ; 0 uses
  %i.cl = load ptr, ptr @yylval, align 8, !tbaa !18
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !58
  %i.cn = load ptr, ptr @token_ptr, align 8, !tbaa !18
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cj
  br label %cb_config_list_lex.exit27.thread49.i

cb_config_list_lex.exit27.thread49.i:             ; preds = %bb.y, %bb.x, %bb.v
  %.sink.i24.ph.i = phi ptr [ %i.ce, %bb.v ], [ %i.ch, %bb.x ], [ %i.co, %bb.y ] ; 2 uses
  store ptr %.sink.i24.ph.i, ptr @token_ptr, align 8, !tbaa !18
  br label %get_max_procs.exit

cb_config_list_lex.exit27.i:                      ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  store ptr %i.cp, ptr @token_ptr, align 8, !tbaa !18
  br label %cb_config_list_lex.exit27.thread47.i

cb_config_list_lex.exit27.thread47.i:             ; preds = %cb_config_list_lex.exit27.i, %bb.t
  %i.cq = phi ptr [ %i.cp, %cb_config_list_lex.exit27.i ], [ %i.ca, %bb.t ]
  %..0.i = call i32 @llvm.smax.i32(i32 %.0.i49, i32 -1)
  br label %get_max_procs.exit

get_max_procs.exit:                               ; preds = %bb.k, %cb_config_list_lex.exit.thread34.i, %bb.m, %cb_config_list_lex.exit.thread31.i, %bb.p, %bb.r, %cb_config_list_lex.exit21.thread40.i, %bb.w, %cb_config_list_lex.exit27.thread49.i, %cb_config_list_lex.exit27.thread47.i
  %i.cr = phi ptr [ %i.bi, %bb.r ], [ %.sink.i24.ph.i, %cb_config_list_lex.exit27.thread49.i ], [ %i.ax, %cb_config_list_lex.exit.thread34.i ], [ %.sink.i18.ph.i, %cb_config_list_lex.exit21.thread40.i ], [ %i.cq, %cb_config_list_lex.exit27.thread47.i ], [ %i.at, %bb.k ], [ %i.at, %bb.m ], [ %.sink.i.ph.i, %cb_config_list_lex.exit.thread31.i ], [ %i.bi, %bb.p ], [ %i.ca, %bb.w ]
  %.014.i = phi i32 [ -1, %bb.r ], [ -1, %cb_config_list_lex.exit27.thread49.i ], [ 1, %cb_config_list_lex.exit.thread34.i ], [ -1, %cb_config_list_lex.exit21.thread40.i ], [ %..0.i, %cb_config_list_lex.exit27.thread47.i ], [ 1, %bb.k ], [ -1, %bb.m ], [ -1, %cb_config_list_lex.exit.thread31.i ], [ -1, %bb.p ], [ -1, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cs = icmp eq ptr %.0, null
  br i1 %i.cs, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %get_max_procs.exit
  %i.ct = icmp eq i32 %.014.i, 0
  br i1 %i.ct, label %.lr.ph122.preheader.i, label %.preheader100.lr.ph.i

.preheader100.lr.ph.i:                            ; preds = %bb.z
  %i.cu = add nsw i32 %.014.i, -1
  br label %.preheader100.i

.lr.ph122.preheader.i:                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 1, i64 %i.u, i1 false), !tbaa !58
  br label %match_procs.exit

.preheader100.i:                                  ; preds = %match_this_proc.exit.i, %.preheader100.lr.ph.i
  %.2 = phi i32 [ %.06197, %.preheader100.lr.ph.i ], [ %spec.select73, %match_this_proc.exit.i ] ; 4 uses
  %.057120.i = phi i32 [ 0, %.preheader100.lr.ph.i ], [ %i.de, %match_this_proc.exit.i ] ; 3 uses
  %i.cv = icmp slt i32 %.057120.i, %i.c
  br i1 %i.cv, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader100.i
  %i.cw = sext i32 %.057120.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.cw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aa ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !58
  %.not.i51 = icmp eq i8 %i.cy, 0
  br i1 %.not.i51, label %.critedge.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next.i, %i.t
  br i1 %exitcond138.not.i, label %match_procs.exit, label %.lr.ph.i, !llvm.loop !51

.critedge.loopexit.i:                             ; preds = %.lr.ph.i
  %i.cz = trunc nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader100.i
  %.1.lcssa.i = phi i32 [ %.057120.i, %.preheader100.i ], [ %i.cz, %.critedge.loopexit.i ] ; 4 uses
  %i.da = icmp eq i32 %.1.lcssa.i, %i.c
  br i1 %i.da, label %match_procs.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i
  %i.db = zext nneg i32 %.2 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  store i32 %.1.lcssa.i, ptr %i.dc, align 4, !tbaa !11
  %i.dd = add nuw nsw i32 %.2, 1                  ; 4 uses
  %i.de = add nsw i32 %.1.lcssa.i, 1              ; 3 uses
  %i.df = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !18 ; 2 uses
  %i.di = sub nsw i32 %spec.select, %i.dd
  %i.dj = call i32 @llvm.smin.i32(i32 range(i32 -2, -2147483648) %i.cu, i32 %i.di) ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ab
  %i.dl = zext nneg i32 %i.dd to i64
  br label %.lr.ph.i.i

.preheader.loopexit.i.i:                          ; preds = %bb.ae
  %i.dm = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.ab
  %.038.lcssa.i.i = phi i32 [ %i.de, %bb.ab ], [ %i.eb, %.preheader.loopexit.i.i ] ; 3 uses
  %.036.lcssa.i.i = phi i32 [ %i.dd, %bb.ab ], [ %i.dm, %.preheader.loopexit.i.i ] ; 3 uses
  %i.dn = icmp sgt i32 %.038.lcssa.i.i, -1
  %i.do = icmp slt i32 %.038.lcssa.i.i, %i.c
  %or.cond.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i, label %.lr.ph.preheader.i43.i.i, label %match_this_proc.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.dl, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 4 uses
  %.066.i.i = phi i32 [ %i.dj, %.lr.ph.preheader.i.i ], [ %i.ec, %bb.ae ] ; 2 uses
  %.03864.i.i = phi i32 [ %i.de, %.lr.ph.preheader.i.i ], [ %i.eb, %bb.ae ] ; 2 uses
  %i.dp = icmp slt i32 %.03864.i.i, %i.c
  br i1 %i.dp, label %.lr.ph.preheader.i.i.i, label %find_name.exit.thread.loopexit82.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.dq = sext i32 %.03864.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dq, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ad ] ; 6 uses
  %i.dr = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18
  %i.dv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dh, ptr noundef nonnull dereferenceable(1) %i.du) #12
  %.not13.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not13.i.i.i, label %find_name.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %i.c, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %find_name.exit.thread.loopexit81.i.i, label %.lr.ph.i.i.i, !llvm.loop !52

find_name.exit.i.i:                               ; preds = %bb.ac
  %i.dw = icmp slt i64 %indvars.iv.i.i.i, 0
  br i1 %i.dw, label %find_name.exit.thread.loopexit82.i.i, label %bb.ae

bb.ae:                                            ; preds = %find_name.exit.i.i
  %i.dx = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dz = and i64 %indvars.iv.i.i.i, 4294967295
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dz
  store i8 1, ptr %i.ea, align 1, !tbaa !58
  %i.eb = add nuw nsw i32 %i.dx, 1                ; 2 uses
  %i.ec = add nsw i32 %.066.i.i, -1
  %i.ed = icmp sgt i32 %.066.i.i, 1
  br i1 %i.ed, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !53

.lr.ph.preheader.i43.i.i:                         ; preds = %.preheader.i.i, %find_name.exit52.thread.i.i
  %.168.i119.i = phi i32 [ %i.en, %find_name.exit52.thread.i.i ], [ %.038.lcssa.i.i, %.preheader.i.i ]
  %i.ee = zext nneg i32 %.168.i119.i to i64
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %bb.ag, %.lr.ph.preheader.i43.i.i
  %indvars.iv.i45.i.i = phi i64 [ %i.ee, %.lr.ph.preheader.i43.i.i ], [ %indvars.iv.next.i47.i.i, %bb.ag ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i45.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !58
  %.not.i46.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i46.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i44.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i45.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !18
  %i.ej = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dh, ptr noundef nonnull dereferenceable(1) %i.ei) #12
  %.not13.i50.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not13.i50.i.i, label %find_name.exit52.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i44.i.i
  %indvars.iv.next.i47.i.i = add nuw nsw i64 %indvars.iv.i45.i.i, 1 ; 2 uses
  %lftr.wideiv.i48.i.i = trunc i64 %indvars.iv.next.i47.i.i to i32
  %exitcond.not.i49.i.i = icmp eq i32 %i.c, %lftr.wideiv.i48.i.i
  br i1 %exitcond.not.i49.i.i, label %match_this_proc.exit.i, label %.lr.ph.i44.i.i, !llvm.loop !52

find_name.exit52.thread.i.i:                      ; preds = %bb.af
  %i.ek = trunc nuw nsw i64 %indvars.iv.i45.i.i to i32
  %i.el = and i64 %indvars.iv.i45.i.i, 4294967295
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.el
  store i8 1, ptr %i.em, align 1, !tbaa !58
  %i.en = add nuw nsw i32 %i.ek, 1                ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.c
  br i1 %i.eo, label %.lr.ph.preheader.i43.i.i, label %match_this_proc.exit.i

find_name.exit.thread.loopexit81.i.i:             ; preds = %bb.ad
  %i.ep = trunc nsw i64 %indvars.iv.i.i to i32
  br label %match_this_proc.exit.i

find_name.exit.thread.loopexit82.i.i:             ; preds = %find_name.exit.i.i, %.lr.ph.i.i
  %i.eq = trunc nsw i64 %indvars.iv.i.i to i32
  br label %match_this_proc.exit.i

match_this_proc.exit.i:                           ; preds = %find_name.exit52.thread.i.i, %bb.ag, %find_name.exit.thread.loopexit82.i.i, %find_name.exit.thread.loopexit81.i.i, %.preheader.i.i
  %.03661.i.i = phi i32 [ %.036.lcssa.i.i, %bb.ag ], [ %.036.lcssa.i.i, %.preheader.i.i ], [ %i.eq, %find_name.exit.thread.loopexit82.i.i ], [ %i.ep, %find_name.exit.thread.loopexit81.i.i ], [ %.036.lcssa.i.i, %find_name.exit52.thread.i.i ]
  %spec.select73 = call i32 @llvm.smax.i32(i32 %.03661.i.i, i32 %i.dd) ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %i.l, i64 %i.df
  store i8 1, ptr %i.er, align 1, !tbaa !58
  %i.es = icmp sgt i32 %spec.select, %spec.select73
  br i1 %i.es, label %.preheader100.i, label %match_procs.exit, !llvm.loop !54

bb.ah:                                            ; preds = %get_max_procs.exit
  %i.et = sub nsw i32 %spec.select, %.06197
  %i.eu = call i32 @llvm.smin.i32(i32 range(i32 -1, -2147483648) %.014.i, i32 %i.et) ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.preheader.i80.i, label %.preheader.i64.i

.lr.ph.preheader.i80.i:                           ; preds = %bb.ah
  %i.ew = zext nneg i32 %.06197 to i64
  br label %.lr.ph.i81.i

.preheader.loopexit.i97.i:                        ; preds = %bb.ak
  %i.ex = trunc nsw i64 %indvars.iv.next.i96.i to i32
  br label %.preheader.i64.i

.preheader.i64.i:                                 ; preds = %.preheader.loopexit.i97.i, %bb.ah
  %.038.lcssa.i65.i = phi i32 [ 0, %bb.ah ], [ %i.fm, %.preheader.loopexit.i97.i ] ; 3 uses
  %.036.lcssa.i66.i = phi i32 [ %.06197, %bb.ah ], [ %i.ex, %.preheader.loopexit.i97.i ] ; 3 uses
  %i.ey = icmp sgt i32 %.038.lcssa.i65.i, -1
  %i.ez = icmp slt i32 %.038.lcssa.i65.i, %i.c
  %or.cond123.i = and i1 %i.ey, %i.ez
  br i1 %or.cond123.i, label %.lr.ph.preheader.i43.i71.i, label %match_this_proc.exit98.i

.lr.ph.i81.i:                                     ; preds = %bb.ak, %.lr.ph.preheader.i80.i
  %indvars.iv.i82.i = phi i64 [ %i.ew, %.lr.ph.preheader.i80.i ], [ %indvars.iv.next.i96.i, %bb.ak ] ; 4 uses
  %.066.i83.i = phi i32 [ %i.eu, %.lr.ph.preheader.i80.i ], [ %i.fn, %bb.ak ] ; 2 uses
  %.03864.i84.i = phi i32 [ 0, %.lr.ph.preheader.i80.i ], [ %i.fm, %bb.ak ] ; 2 uses
  %i.fa = icmp slt i32 %.03864.i84.i, %i.c
  br i1 %i.fa, label %.lr.ph.preheader.i.i86.i, label %find_name.exit.thread.loopexit82.i85.i

.lr.ph.preheader.i.i86.i:                         ; preds = %.lr.ph.i81.i
  %i.fb = sext i32 %.03864.i84.i to i64
  br label %.lr.ph.i.i87.i

.lr.ph.i.i87.i:                                   ; preds = %bb.aj, %.lr.ph.preheader.i.i86.i
  %indvars.iv.i.i88.i = phi i64 [ %i.fb, %.lr.ph.preheader.i.i86.i ], [ %indvars.iv.next.i.i90.i, %bb.aj ] ; 6 uses
  %i.fc = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.i.i88.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !58
  %.not.i.i89.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i89.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i87.i
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.i.i88.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18
  %i.fg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) %i.ff) #12
  %.not13.i.i94.i = icmp eq i32 %i.fg, 0
  br i1 %.not13.i.i94.i, label %find_name.exit.i95.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i87.i
  %indvars.iv.next.i.i90.i = add nsw i64 %indvars.iv.i.i88.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i90.i to i32
  %exitcond = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond, label %find_name.exit.thread.loopexit81.i93.i, label %.lr.ph.i.i87.i, !llvm.loop !52

find_name.exit.i95.i:                             ; preds = %bb.ai
  %i.fh = icmp slt i64 %indvars.iv.i.i88.i, 0
  br i1 %i.fh, label %find_name.exit.thread.loopexit82.i85.i, label %bb.ak

bb.ak:                                            ; preds = %find_name.exit.i95.i
  %i.fi = trunc nuw nsw i64 %indvars.iv.i.i88.i to i32 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i82.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !11
  %indvars.iv.next.i96.i = add nuw nsw i64 %indvars.iv.i82.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.i.i88.i, 4294967295
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fk
  store i8 1, ptr %i.fl, align 1, !tbaa !58
  %i.fm = add nuw nsw i32 %i.fi, 1                ; 2 uses
  %i.fn = add nsw i32 %.066.i83.i, -1
  %i.fo = icmp sgt i32 %.066.i83.i, 1
  br i1 %i.fo, label %.lr.ph.i81.i, label %.preheader.loopexit.i97.i, !llvm.loop !53

.lr.ph.preheader.i43.i71.i:                       ; preds = %.preheader.i64.i, %find_name.exit52.thread.i79.i
  %.168.i70115.i = phi i32 [ %i.fy, %find_name.exit52.thread.i79.i ], [ %.038.lcssa.i65.i, %.preheader.i64.i ]
  %i.fp = zext nneg i32 %.168.i70115.i to i64
  br label %.lr.ph.i44.i72.i

.lr.ph.i44.i72.i:                                 ; preds = %bb.am, %.lr.ph.preheader.i43.i71.i
  %indvars.iv.i45.i73.i = phi i64 [ %i.fp, %.lr.ph.preheader.i43.i71.i ], [ %indvars.iv.next.i47.i75.i, %bb.am ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i45.i73.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !58
  %.not.i46.i74.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i46.i74.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i44.i72.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i45.i73.i
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.fu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) %i.ft) #12
  %.not13.i50.i78.i = icmp eq i32 %i.fu, 0
  br i1 %.not13.i50.i78.i, label %find_name.exit52.thread.i79.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i44.i72.i
  %indvars.iv.next.i47.i75.i = add nuw nsw i64 %indvars.iv.i45.i73.i, 1 ; 2 uses
  %lftr.wideiv.i48.i76.i = trunc i64 %indvars.iv.next.i47.i75.i to i32
  %exitcond.not.i49.i77.i = icmp eq i32 %i.c, %lftr.wideiv.i48.i76.i
  br i1 %exitcond.not.i49.i77.i, label %match_this_proc.exit98.i, label %.lr.ph.i44.i72.i, !llvm.loop !52

find_name.exit52.thread.i79.i:                    ; preds = %bb.al
  %i.fv = trunc nuw nsw i64 %indvars.iv.i45.i73.i to i32
  %i.fw = and i64 %indvars.iv.i45.i73.i, 4294967295
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fw
  store i8 1, ptr %i.fx, align 1, !tbaa !58
  %i.fy = add nuw nsw i32 %i.fv, 1                ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.c
  br i1 %i.fz, label %.lr.ph.preheader.i43.i71.i, label %match_this_proc.exit98.i

find_name.exit.thread.loopexit81.i93.i:           ; preds = %bb.aj
  %i.ga = trunc nsw i64 %indvars.iv.i82.i to i32
  br label %match_this_proc.exit98.i

find_name.exit.thread.loopexit82.i85.i:           ; preds = %find_name.exit.i95.i, %.lr.ph.i81.i
  %i.gb = trunc nsw i64 %indvars.iv.i82.i to i32
  br label %match_this_proc.exit98.i

match_this_proc.exit98.i:                         ; preds = %find_name.exit52.thread.i79.i, %bb.am, %find_name.exit.thread.loopexit82.i85.i, %find_name.exit.thread.loopexit81.i93.i, %.preheader.i64.i
  %.03661.i67.i = phi i32 [ %.036.lcssa.i66.i, %bb.am ], [ %.036.lcssa.i66.i, %.preheader.i64.i ], [ %i.gb, %find_name.exit.thread.loopexit82.i85.i ], [ %i.ga, %find_name.exit.thread.loopexit81.i93.i ], [ %.036.lcssa.i66.i, %find_name.exit52.thread.i79.i ]
  %spec.select74 = call i32 @llvm.smax.i32(i32 %.03661.i67.i, i32 %.06197)
  br label %match_procs.exit

match_procs.exit:                                 ; preds = %.critedge.i, %match_this_proc.exit.i, %bb.aa, %match_this_proc.exit98.i, %.lr.ph122.preheader.i
  %.4 = phi i32 [ %.06197, %.lr.ph122.preheader.i ], [ %.2, %bb.aa ], [ %spec.select74, %match_this_proc.exit98.i ], [ %.2, %.critedge.i ], [ %spec.select73, %match_this_proc.exit.i ] ; 3 uses
  %i.gc = icmp slt i32 %.4, %spec.select
  br i1 %i.gc, label %bb.g, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %match_procs.exit, %.preheader78
  %.061.lcssa = phi i32 [ 0, %.preheader78 ], [ %.4, %match_procs.exit ]
  call void @ADIOI_Free_fn(ptr noundef nonnull %i.f, i32 noundef 363, ptr noundef nonnull @.str) #11
  %i.gd = load ptr, ptr @yylval, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.gd, i32 noundef 364, ptr noundef nonnull @.str) #11
  store ptr null, ptr @yylval, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef nonnull %i.l, i32 noundef 366, ptr noundef nonnull @.str) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %._crit_edge, %.thread, %cb_config_list_lex.exit, %._crit_edge100, %bb.e, %bb.c
  %.042 = phi i32 [ %.061.lcssa, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.e ], [ %spec.select, %._crit_edge100 ], [ %.06197, %cb_config_list_lex.exit ], [ %.06197, %.thread ], [ -1, %bb.a ]
  ret i32 %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ADIOI_Strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"p2 omnipotent char", !10, i64 0}
!14 = !{!"ADIO_cb_name_arrayD", !5, i64 0, !5, i64 4, !13, i64 8}
!15 = !{!14, !5, i64 0}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !13, i64 8}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !12}
!20 = !{!"long", !4, i64 0}
!21 = !{!"long long", !4, i64 0}
!22 = !{!"p1 _ZTS16ADIOI_Fns_struct", !8, i64 0}
!23 = !{!"p1 _ZTS19ompi_communicator_t", !8, i64 0}
!24 = !{!"p1 _ZTS15ompi_datatype_t", !8, i64 0}
!25 = !{!"p1 _ZTS18ADIOI_Hints_struct", !8, i64 0}
!26 = !{!"p1 _ZTS11ompi_info_t", !8, i64 0}
!27 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !20, i64 16}
!28 = !{!"p1 _ZTS11ADIOI_FileD", !8, i64 0}
!29 = !{!"p1 _ZTS17ompi_errhandler_t", !8, i64 0}
!30 = !{!"p1 long long", !8, i64 0}
!31 = !{!"p2 _ZTS15ompi_datatype_t", !10, i64 0}
!32 = !{!"p1 _ZTS10ompi_win_t", !8, i64 0}
!33 = !{!"ADIOI_FileD", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !20, i64 32, !21, i64 40, !21, i64 48, !22, i64 56, !23, i64 64, !5, i64 72, !5, i64 76, !9, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !21, i64 104, !24, i64 112, !24, i64 120, !21, i64 128, !25, i64 136, !26, i64 144, !5, i64 152, !27, i64 160, !24, i64 184, !9, i64 192, !28, i64 200, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !29, i64 224, !8, i64 232, !30, i64 240, !31, i64 248, !5, i64 256, !9, i64 264, !32, i64 272, !5, i64 280, !32, i64 288, !5, i64 296}
!34 = !{!33, !25, i64 136}
!35 = !{!33, !23, i64 64}
!36 = !{!"p1 int", !8, i64 0}
!37 = !{!"ADIOI_Hints_struct", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !9, i64 80, !36, i64 88, !4, i64 96}
!38 = !{!37, !5, i64 20}
!39 = !{!37, !36, i64 88}
!40 = !{!33, !26, i64 144}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !47}
!44 = distinct !{!44, !12}
!45 = !{!"p1 _ZTS19ADIO_cb_name_arrayD", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!8, !8, i64 0}
!49 = distinct !{!49, !12, !56, !57}
!50 = distinct !{!50, !12, !57, !56}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!4, !4, i64 0}
!59 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!60 = !{!59, !59, i64 0}
end_hunk_0
