Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diffcore-rename?download=true
inline.NumInlined: 140
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@diffcore_rename_extended:bb.a
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !58
  %.not251 = icmp eq i16 %i.ct, 0
  br i1 %.not251, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  tail call fastcc void @register_rename_src(ptr noundef nonnull %i.ab)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w, %bb.v
  br i1 %i.p, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !59
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !59
  tail call fastcc void @register_rename_src(ptr noundef nonnull %i.ab)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.n, %bb.p, %bb.u, %add_rename_dst.exit, %bb.ab, %bb.ac, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !126
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.k, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.ad, %bb.j
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !122
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 1460, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %i.dd) #12
  %i.de = load i32, ptr @rename_dst_nr, align 4, !tbaa !51
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = load i32, ptr @rename_src_nr, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  %or.cond5 = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond5, label %too_many_rename_candidates.exit.thread345, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !122
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1464, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, ptr noundef %i.di) #12
  call void @mem_pool_init(ptr noundef nonnull %20, i64 noundef 32768) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.dj = load i32, ptr @rename_src_nr, align 4, !tbaa !51
  %i.dk = sext i32 %i.dj to i64
  call void @hashmap_init(ptr noundef nonnull %18, ptr noundef null, ptr noundef null, i64 noundef %i.dk) #12
  %i.dl = load i32, ptr @rename_src_nr, align 4, !tbaa !51 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.dn = zext nneg i32 %i.dl to i64
  br label %bb.af

.preheader.i:                                     ; preds = %insert_file_table.exit.i, %bb.ae
  %i.do = load i32, ptr @rename_dst_nr, align 4, !tbaa !51
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph25.i, label %find_exact_renames.exit

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.aj

bb.af:                                            ; preds = %insert_file_table.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %indvars.iv.next.i, %insert_file_table.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !122 ; 2 uses
  %i.ds = load ptr, ptr @rename_src, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv.next.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !63
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25 ; 7 uses
  %i.dw = call ptr @mem_pool_alloc(ptr noundef nonnull %20, i64 noundef 32) #12 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.dy, ptr %i.dx, align 8, !tbaa !153
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dv, ptr %i.dz, align 8, !tbaa !154
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 82
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = and i16 %i.eb, 1
  %.not.i.i.i261 = icmp eq i16 %i.ec, 0
  br i1 %.not.i.i.i261, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ed = call i32 @diff_populate_filespec(ptr noundef %i.dr, ptr noundef nonnull %i.dv, ptr noundef null) #12
  %.not8.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not8.i.i.i, label %bb.ah, label %insert_file_table.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 448
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !149
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !155
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !64
  call void @hash_object_file(ptr noundef %i.ef, ptr noundef %i.eh, i64 noundef %i.ej, i32 noundef 3, ptr noundef nonnull %i.dv) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.val.i.i.i = load i32, ptr %i.dv, align 4
  br label %insert_file_table.exit.i

insert_file_table.exit.i:                         ; preds = %bb.ai, %bb.ag
  %.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.ai ], [ 0, %bb.ag ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %.0.i.i.i, ptr %i.ek, align 8, !tbaa !156
  store ptr null, ptr %i.dw, align 8, !tbaa !157
  call void @hashmap_add(ptr noundef nonnull %18, ptr noundef nonnull %i.dw) #12
  %i.el = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.el, label %bb.af, label %.preheader.i, !llvm.loop !85

bb.aj:                                            ; preds = %find_identical_files.exit.i, %.lr.ph25.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next34.i, %find_identical_files.exit.i ] ; 3 uses
  %.024.i = phi i32 [ 0, %.lr.ph25.i ], [ %i.ih, %find_identical_files.exit.i ]
  %i.em = load ptr, ptr @rename_dst, align 8, !tbaa !53
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %indvars.iv33.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !55
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 10 uses
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !122 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 82
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = and i16 %i.et, 1
  %.not.i.i12.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i12.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ev = call i32 @diff_populate_filespec(ptr noundef %i.er, ptr noundef nonnull %i.eq, ptr noundef null) #12
  %.not8.i.i15.i = icmp eq i32 %i.ev, 0
  br i1 %.not8.i.i15.i, label %bb.al, label %hash_filespec.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 448
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !149
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !155
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !64
  call void @hash_object_file(ptr noundef %i.ex, ptr noundef %i.ez, i64 noundef %i.fb, i32 noundef 3, ptr noundef nonnull %i.eq) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.val.i.i13.i = load i32, ptr %i.eq, align 4
  br label %hash_filespec.exit.i.i

hash_filespec.exit.i.i:                           ; preds = %bb.am, %bb.ak
  %.0.i.i14.i = phi i32 [ %.val.i.i13.i, %bb.am ], [ 0, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  store i32 %.0.i.i14.i, ptr %i.dq, align 8, !tbaa !156
  store ptr null, ptr %17, align 8, !tbaa !157
  %i.fc = call ptr @hashmap_get(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef null) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  %.not66.i.i = icmp eq ptr %i.fc, null
  br i1 %.not66.i.i, label %find_identical_files.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hash_filespec.exit.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  %i.fe = getelementptr i8, ptr %i.eq, i64 40
  br label %bb.an

bb.an:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.03271.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.ph.i.i, %bb.ay ] ; 5 uses
  %.03370.i.i = phi i32 [ 100, %.lr.ph.i.i ], [ %.134.ph.i.i, %bb.ay ] ; 4 uses
  %.03569.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.237.ph.i.i, %bb.ay ] ; 4 uses
  %.03867.i.i = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %i.hb, %bb.ay ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.03867.i.i, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !154 ; 5 uses
  %i.fh = load i128, ptr %i.fg, align 1
  %i.fi = load i128, ptr %i.eq, align 1
  %i.fj = xor i128 %i.fh, %i.fi
  %i.fk = getelementptr i8, ptr %i.fg, i64 16
  %i.fl = getelementptr i8, ptr %i.eq, i64 16
  %i.fm = load i128, ptr %i.fk, align 1
  %i.fn = load i128, ptr %i.fl, align 1
  %i.fo = xor i128 %i.fm, %i.fn
  %i.fp = or i128 %i.fj, %i.fo
  %i.fq = icmp ne i128 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %.not.i51.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i51.not.i.i, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !48 ; 2 uses
  %i.fu = icmp slt i16 %i.ft, -28672
  %.pre.i.i = load i16, ptr %i.fd, align 8, !tbaa !48 ; 2 uses
  %i.fv = icmp slt i16 %.pre.i.i, -28672
  %or.cond.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  %.not44.i.i = icmp eq i16 %i.ft, %.pre.i.i
  %or.cond91.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not44.i.i
  br i1 %or.cond91.i.i, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !59
  %.not45.i.i = icmp eq i32 %i.fx, 0              ; 3 uses
  %i.fy = zext i1 %.not45.i.i to i32
  br i1 %.not45.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fz = load i32, ptr %i.b, align 8, !tbaa !118
  %.not46.i.i = icmp eq i32 %i.fz, 2
  br i1 %.not46.i.i, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ga = getelementptr i8, ptr %i.fg, i64 40
  %.val.i.i = load ptr, ptr %i.ga, align 8, !tbaa !49 ; 3 uses
  %.val50.i.i = load ptr, ptr %i.fe, align 8, !tbaa !49 ; 3 uses
  %i.gb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val.i.i) #14
  %i.gc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val50.i.i) #14
  %sext.i.i.i = shl i64 %i.gb, 32                 ; 2 uses
  %i.gd = ashr exact i64 %sext.i.i.i, 32          ; 2 uses
  %sext19.i.i.i = shl i64 %i.gc, 32               ; 2 uses
  %i.ge = ashr exact i64 %sext19.i.i.i, 32        ; 2 uses
  %i.gf = icmp ne i64 %sext.i.i.i, 0              ; 2 uses
  %i.gg = icmp ne i64 %sext19.i.i.i, 0            ; 2 uses
  %i.gh = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %i.gh, label %.lr.ph544, label %._crit_edge545

bb.as:                                            ; preds = %.lr.ph544
  %i.gi = icmp ne i64 %indvars.iv.next.i.i.i, 0   ; 2 uses
  %i.gj = icmp ne i64 %indvars.iv.next15.i.i.i, 0 ; 2 uses
  %i.gk = and i1 %i.gi, %i.gj
  br i1 %i.gk, label %.lr.ph544, label %._crit_edge545, !llvm.loop !86

.lr.ph544:                                        ; preds = %bb.ar, %bb.as
  %indvars.iv.i.i.i541 = phi i64 [ %indvars.iv.next.i.i.i, %bb.as ], [ %i.gd, %bb.ar ]
  %indvars.iv14.i.i.i540 = phi i64 [ %indvars.iv.next15.i.i.i, %bb.as ], [ %i.ge, %bb.ar ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i541, -1 ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %.val.i.i, i64 %indvars.iv.next.i.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !65  ; 2 uses
  %indvars.iv.next15.i.i.i = add nsw i64 %indvars.iv14.i.i.i540, -1 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.val50.i.i, i64 %indvars.iv.next15.i.i.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !65
  %.not.i52.i.i = icmp eq i8 %i.gm, %i.go         ; 2 uses
  %i.gp = icmp ne i8 %i.gm, 47
  %cond.i.i.i = and i1 %i.gp, %.not.i52.i.i
  br i1 %cond.i.i.i, label %bb.as, label %basename_same.exit.i.i, !llvm.loop !86

._crit_edge545:                                   ; preds = %bb.as, %bb.ar
  %indvars.iv14.i.i.i.lcssa = phi i64 [ %i.ge, %bb.ar ], [ %indvars.iv.next15.i.i.i, %bb.as ]
  %indvars.iv.i.i.i.lcssa = phi i64 [ %i.gd, %bb.ar ], [ %indvars.iv.next.i.i.i, %bb.as ]
  %.lcssa534 = phi i1 [ %i.gf, %bb.ar ], [ %i.gi, %bb.as ]
  %.lcssa532 = phi i1 [ %i.gg, %bb.ar ], [ %i.gj, %bb.as ] ; 2 uses
  br i1 %.lcssa534, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge545
  %i.gq = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i.i.lcssa
  %i.gr = getelementptr i8, ptr %i.gq, i64 -1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !65
  %i.gt = icmp eq i8 %i.gs, 47                    ; 2 uses
  %brmerge.not.i.i.i = select i1 %i.gt, i1 %.lcssa532, i1 false
  br i1 %brmerge.not.i.i.i, label %bb.av, label %basename_same.exit.i.i

bb.au:                                            ; preds = %._crit_edge545
  br i1 %.lcssa532, label %bb.av, label %basename_same.exit.i.i

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gu = getelementptr i8, ptr %.val50.i.i, i64 %indvars.iv14.i.i.i.lcssa
  %i.gv = getelementptr i8, ptr %i.gu, i64 -1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !65
  %i.gx = icmp eq i8 %i.gw, 47
  br label %basename_same.exit.i.i

basename_same.exit.i.i:                           ; preds = %.lr.ph544, %bb.av, %bb.au, %bb.at
  %.2.shrunk.i.i.i = phi i1 [ %i.gx, %bb.av ], [ %i.gt, %bb.at ], [ true, %bb.au ], [ %.not.i52.i.i, %.lr.ph544 ] ; 2 uses
  %.2.i.i.i = zext i1 %.2.shrunk.i.i.i to i32
  %i.gy = add nuw nsw i32 %.2.i.i.i, %i.fy        ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, %.03271.i.i
  br i1 %i.gz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %basename_same.exit.i.i
  %24 = and i1 %.not45.i.i, %.2.shrunk.i.i.i
  br i1 %24, label %select.unfold.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %basename_same.exit.i.i
  %.136.i.i = phi ptr [ %.03867.i.i, %bb.aw ], [ %.03569.i.i, %basename_same.exit.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.gy, %bb.aw ], [ %.03271.i.i, %basename_same.exit.i.i ]
  %i.ha = add nsw i32 %.03370.i.i, -1             ; 2 uses
  %.not47.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not47.i.i, label %select.unfold.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aq, %bb.ao, %bb.an
  %.237.ph.i.i = phi ptr [ %.03569.i.i, %bb.an ], [ %.136.i.i, %bb.ax ], [ %.03569.i.i, %bb.aq ], [ %.03569.i.i, %bb.ao ] ; 2 uses
  %.134.ph.i.i = phi i32 [ %.03370.i.i, %bb.an ], [ %i.ha, %bb.ax ], [ %.03370.i.i, %bb.aq ], [ %.03370.i.i, %bb.ao ]
  %.2.ph.i.i = phi i32 [ %.03271.i.i, %bb.an ], [ %.1.i.i, %bb.ax ], [ %.03271.i.i, %bb.aq ], [ %.03271.i.i, %bb.ao ]
  %i.hb = call ptr @hashmap_get_next(ptr noundef nonnull %18, ptr noundef nonnull %.03867.i.i) #12 ; 2 uses
  %.not.i.i260 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i260, label %select.unfold.i.i, label %bb.an, !llvm.loop !87

select.unfold.i.i:                                ; preds = %bb.ay, %bb.ax, %bb.aw
  %.3.i.i = phi ptr [ %.03867.i.i, %bb.aw ], [ %.237.ph.i.i, %bb.ay ], [ %.136.i.i, %bb.ax ] ; 2 uses
  %.not48.i.i = icmp eq ptr %.3.i.i, null
  br i1 %.not48.i.i, label %find_identical_files.exit.i, label %bb.az

bb.az:                                            ; preds = %select.unfold.i.i
  %i.hc = load ptr, ptr @rename_dst, align 8, !tbaa !53
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %indvars.iv33.i ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !55 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 27 ; 3 uses
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = and i8 %i.hg, 2
  %.not.i53.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i53.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @die(ptr noundef nonnull @.str.20) #13
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.hi = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 16
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !153
  %i.hk = sext i32 %i.hj to i64
  %i.hl = load ptr, ptr @rename_src, align 8, !tbaa !61
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !63
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !25 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72 ; 2 uses
  %i.hq = load <2 x i32>, ptr %i.hp, align 8, !tbaa !51
  %i.hr = add nsw <2 x i32> %i.hq, splat (i32 1)
  store <2 x i32> %i.hr, ptr %i.hp, align 8, !tbaa !51
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !56
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i32 1, ptr %i.hu, align 8, !tbaa !57
  store ptr %i.ho, ptr %i.he, align 8, !tbaa !25
  %i.hv = load i8, ptr %i.hf, align 1
  %i.hw = or i8 %i.hv, 2
  store i8 %i.hw, ptr %i.hf, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !49
  %i.hz = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !49
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(1) %i.ic) #14
  %.not16.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not16.i.i.i, label %bb.bc, label %record_rename_pair.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.if = load i16, ptr %i.ie, align 8, !tbaa !66
  br label %record_rename_pair.exit.i.i

record_rename_pair.exit.i.i:                      ; preds = %bb.bc, %bb.bb
  %.sink.i.i.i = phi i16 [ %i.if, %bb.bc ], [ -5536, %bb.bb ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i16 %.sink.i.i.i, ptr %i.ig, align 8, !tbaa !58
  br label %find_identical_files.exit.i

find_identical_files.exit.i:                      ; preds = %record_rename_pair.exit.i.i, %select.unfold.i.i, %hash_filespec.exit.i.i
  %.039.i.i = phi i32 [ 1, %record_rename_pair.exit.i.i ], [ 0, %select.unfold.i.i ], [ 0, %hash_filespec.exit.i.i ]
  %i.ih = add nuw nsw i32 %.039.i.i, %.024.i      ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ii = load i32, ptr @rename_dst_nr, align 4, !tbaa !51
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next34.i, %i.ij
  br i1 %i.ik, label %bb.aj, label %find_exact_renames.exit, !llvm.loop !88

find_exact_renames.exit:                          ; preds = %find_identical_files.exit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ih, %find_identical_files.exit.i ] ; 2 uses
  call void @hashmap_clear_(ptr noundef nonnull %18, i64 noundef -1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @mem_pool_discard(ptr noundef nonnull %20, i32 noundef 0) #12
  %i.il = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 1477, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, ptr noundef %i.il) #12
  %i.im = sitofp i32 %spec.store.select to double
  %i.in = icmp eq i32 %spec.store.select, 60000
  br i1 %i.in, label %too_many_rename_candidates.exit.thread345, label %bb.bd

bb.bd:                                            ; preds = %find_exact_renames.exit
  %i.io = load ptr, ptr @break_idx, align 8
  %i.ip = icmp ne ptr %i.io, null
  %or.cond7 = select i1 %i.p, i1 true, i1 %i.ip
  br i1 %or.cond7, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.iq = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1491, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef %i.iq) #12
  call fastcc void @remove_unneeded_paths_from_src(i32 noundef %i.q, ptr noundef %2)
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 1493, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef %i.ir) #12
  br label %bb.en

bb.bf:                                            ; preds = %bb.bd
  %i.is = call ptr @getenv(ptr noundef nonnull @.str.9) #12 ; 2 uses
  %.not219 = icmp eq ptr %i.is, null
  br i1 %.not219, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.it = call i64 @__isoc23_strtol(ptr noundef nonnull %i.is, ptr noundef null, i32 noundef 10) #12
  %i.iu = sitofp i64 %i.it to double
  %i.iv = fdiv double %i.iu, 1.000000e+02
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0197 = phi double [ %i.iv, %bb.bg ], [ 5.000000e-01, %bb.bf ] ; 3 uses
  %i.iw = fcmp oge double %.0197, 0.000000e+00
  %i.ix = fcmp ole double %.0197, 1.000000e+00
  %or.cond9 = and i1 %i.iw, %i.ix
  br i1 %or.cond9, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 1502, ptr noundef nonnull @__PRETTY_FUNCTION__.diffcore_rename_extended) #13
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.iy = fsub nnan double 6.000000e+04, %i.im
  %i.iz = fmul double %i.iy, %.0197
  %i.ja = fptosi double %i.iz to i32
  %i.jb = add nsw i32 %spec.store.select, %i.ja   ; 2 uses
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1510, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef %i.jc) #12
  %i.jd = load ptr, ptr @break_idx, align 8
  %.not.i262.not = icmp eq ptr %i.jd, null
  br i1 %.not.i262.not, label %.preheader.i263, label %remove_unneeded_paths_from_src.exit

.preheader.i263:                                  ; preds = %bb.bj
  %i.je = load i32, ptr @rename_src_nr, align 4, !tbaa !51 ; 2 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph.i266, label %._crit_edge.i264

.lr.ph.i266:                                      ; preds = %.preheader.i263
  %i.jg = load ptr, ptr @rename_src, align 8      ; 2 uses
  %wide.trip.count41.i = zext nneg i32 %i.je to i64
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.i266, %bb.bn
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %bb.bn ], [ 0, %.lr.ph.i266 ] ; 3 uses
  %.023.us24.i = phi i32 [ %.1.us27.i, %bb.bn ], [ 0, %.lr.ph.i266 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %indvars.iv37.i ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !63
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 76
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !59
  %.not19.us26.i = icmp eq i32 %i.jl, 0
  br i1 %.not19.us26.i, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.lr.ph.split.split.us.i
  %i.jm = sext i32 %.023.us24.i to i64            ; 2 uses
  %i.jn = icmp sgt i64 %indvars.iv37.i, %i.jm
  br i1 %i.jn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.jg, i64 %i.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jp = add nsw i32 %.023.us24.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.split.split.us.i
  %.1.us27.i = phi i32 [ %i.jp, %bb.bm ], [ %.023.us24.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count41.i
  br i1 %exitcond42.not.i, label %._crit_edge.i264, label %.lr.ph.split.split.us.i, !llvm.loop !1

._crit_edge.i264:                                 ; preds = %bb.bn, %.preheader.i263
  %.0.lcssa.i265 = phi i32 [ 0, %.preheader.i263 ], [ %.1.us27.i, %bb.bn ]
  store i32 %.0.lcssa.i265, ptr @rename_src_nr, align 4, !tbaa !51
  br label %remove_unneeded_paths_from_src.exit

remove_unneeded_paths_from_src.exit:              ; preds = %bb.bj, %._crit_edge.i264
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 1512, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, ptr noundef %i.jq) #12
  %i.jr = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1515, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef %i.jr) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %.not217.not = xor i1 %.not217, true            ; 2 uses
  %or.cond.i = or i1 %i.u, %.not217.not
  br i1 %or.cond.i, label %bb.bp, label %bb.bo

end_hunk_0
begin_hunk_1_@diffcore_rename_extended:bb.a
.lr.ph.i310:                                      ; preds = %.lr.ph.i310, %.lr.ph.preheader.i
  %indvars.iv.i311 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i312, %.lr.ph.i310 ] ; 2 uses
  %.042.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %.lr.ph.i310 ]
  %i.xi = load ptr, ptr @rename_src, align 8, !tbaa !61
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.xi, i64 %indvars.iv.i311
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !63
  %i.xl = call i32 @diff_unmodified_pair(ptr noundef %i.xk) #12
  %.not27.i = icmp eq i32 %i.xl, 0
  %i.xm = zext i1 %.not27.i to i32
  %spec.select.i = add nuw nsw i32 %.042.i, %i.xm ; 2 uses
  %indvars.iv.next.i312 = add nuw nsw i64 %indvars.iv.i311, 1 ; 2 uses
  %exitcond.not.i313 = icmp eq i64 %indvars.iv.next.i312, %wide.trip.count.i
  br i1 %exitcond.not.i313, label %._crit_edge.loopexit.i, label %.lr.ph.i310, !llvm.loop !102

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i310
  %i.xn = zext nneg i32 %spec.select.i to i64
  br label %._crit_edge.i307

._crit_edge.i307:                                 ; preds = %.preheader.i306, %._crit_edge.loopexit.i
  %.0.lcssa.i308 = phi i64 [ 0, %.preheader.i306 ], [ %i.xn, %._crit_edge.loopexit.i ] ; 3 uses
  %mul.i33.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.wz, i64 range(i64 -2147483648, 2147483648) %.0.lcssa.i308)
  %mul.ov.i34.i = extractvalue { i64, i1 } %mul.i33.i, 1
  br i1 %mul.ov.i34.i, label %bb.es, label %st_mult.exit39.i

bb.es:                                            ; preds = %._crit_edge.i307
  call void (ptr, ...) @die(ptr noundef nonnull @.str.28, i64 noundef range(i64 -2147483648, 2147483648) %i.wz, i64 noundef range(i64 -2147483648, 2147483648) %.0.lcssa.i308) #13
  unreachable

st_mult.exit39.i:                                 ; preds = %._crit_edge.i307
  %i.xo = mul nsw i64 %.0.lcssa.i308, %i.wz
  %.not26.i = icmp ugt i64 %i.xo, %i.xd
  br i1 %.not26.i, label %too_many_rename_candidates.exit.thread345, label %too_many_rename_candidates.exit

too_many_rename_candidates.exit:                  ; preds = %st_mult.exit39.i
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 1, ptr %i.xp, align 8, !tbaa !165
  br label %too_many_rename_candidates.exit.thread

too_many_rename_candidates.exit.thread:           ; preds = %bb.eo, %st_mult.exit31.i, %too_many_rename_candidates.exit
  %.not223 = phi i1 [ false, %too_many_rename_candidates.exit ], [ true, %st_mult.exit31.i ], [ true, %bb.eo ]
  %.0201 = phi i32 [ 1, %too_many_rename_candidates.exit ], [ 0, %st_mult.exit31.i ], [ 0, %bb.eo ]
  %i.xq = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1567, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef %i.xq) #12
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !166
  %.not220 = icmp eq i32 %i.xs, 0
  br i1 %.not220, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %too_many_rename_candidates.exit.thread
  %i.xt = load ptr, ptr @the_repository, align 8, !tbaa !131
  %i.xu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !51
  %.not4.i = icmp eq i32 %i.xu, 0
  br i1 %.not4.i, label %_.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #12
  br label %_.exit

_.exit:                                           ; preds = %bb.et, %bb.eu
  %.0.i314 = phi ptr [ %i.xv, %bb.eu ], [ @.str.15, %bb.et ]
  %i.xw = sext i32 %i.wr to i64
  %i.xx = sext i32 %i.ws to i64
  %i.xy = mul nsw i64 %i.xw, %i.xx
  %i.xz = call ptr @start_delayed_progress(ptr noundef %i.xt, ptr noundef %.0.i314, i64 noundef %i.xy) #12
  store ptr %i.xz, ptr %i.a, align 8, !tbaa !121
  br label %bb.ev

bb.ev:                                            ; preds = %_.exit, %too_many_rename_candidates.exit.thread
  store i32 %.0201, ptr %i.h, align 8, !tbaa !37
  %i.ya = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.yb = call i32 @repo_has_promisor_remote(ptr noundef %i.ya) #12
  %.not221 = icmp eq i32 %i.yb, 0
  br i1 %.not221, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yc = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @inexact_prefetch, ptr %i.yc, align 8, !tbaa !160
  %i.yd = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %23, ptr %i.yd, align 8, !tbaa !161
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ye = sext i32 %i.wr to i64                   ; 2 uses
  %mul.ov.i = icmp slt i32 %i.wr, 0
  br i1 %mul.ov.i, label %bb.ey, label %st_mult.exit

bb.ey:                                            ; preds = %bb.ex
  call void (ptr, ...) @die(ptr noundef nonnull @.str.28, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.ye) #13
  unreachable

st_mult.exit:                                     ; preds = %bb.ex
  %i.yf = shl nuw nsw i64 %i.ye, 2
  %i.yg = call ptr @xcalloc(i64 noundef %i.yf, i64 noundef 12) #12 ; 5 uses
  %i.yh = load i32, ptr @rename_dst_nr, align 4, !tbaa !51 ; 2 uses
  %i.yi = icmp sgt i32 %i.yh, 0
  br i1 %i.yi, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %st_mult.exit
  %i.yj = sext i32 %i.ws to i64
  %.pre436 = load ptr, ptr @rename_dst, align 8, !tbaa !53
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph391, %bb.gc
  %i.yk = phi i32 [ %i.yh, %.lr.ph391 ], [ %i.aef, %bb.gc ]
  %i.yl = phi ptr [ %.pre436, %.lr.ph391 ], [ %i.aeg, %bb.gc ] ; 2 uses
  %indvars.iv422 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next423, %bb.gc ] ; 3 uses
  %.0199390 = phi i32 [ 0, %.lr.ph391 ], [ %.1200, %bb.gc ] ; 3 uses
  %i.ym = getelementptr inbounds nuw [24 x i8], ptr %i.yl, i64 %indvars.iv422 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !55
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !31 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !57
  %.not222 = icmp eq i32 %i.yr, 0
  br i1 %.not222, label %.preheader, label %bb.gc

.preheader:                                       ; preds = %bb.ez
  %i.ys = shl nsw i32 %.0199390, 2
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [12 x i8], ptr %i.yg, i64 %i.yt ; 20 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4 ; 2 uses
  store i32 -1, ptr %i.yv, align 4, !tbaa !78
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store i32 -1, ptr %i.yw, align 4, !tbaa !78
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 28
  store i32 -1, ptr %i.yx, align 4, !tbaa !78
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  store i32 -1, ptr %i.yy, align 4, !tbaa !78
  %i.yz = load i32, ptr @rename_src_nr, align 4, !tbaa !51
  %i.za = icmp sgt i32 %i.yz, 0
  br i1 %i.za, label %.lr.ph386, label %._crit_edge387

.lr.ph386:                                        ; preds = %.preheader
  %i.zb = getelementptr i8, ptr %i.yp, i64 40
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yu, i64 20
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yu, i64 10
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yu, i64 22
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yu, i64 28
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yu, i64 34
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yu, i64 44
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yu, i64 46
  %i.zn = trunc nuw nsw i64 %indvars.iv422 to i32
  br label %bb.fa

bb.fa:                                            ; preds = %.lr.ph386, %bb.gb
  %indvars.iv419 = phi i64 [ 0, %.lr.ph386 ], [ %indvars.iv.next420, %bb.gb ] ; 3 uses
  %i.zo = load ptr, ptr @rename_src, align 8, !tbaa !61
  %i.zp = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %indvars.iv419
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !63 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !25 ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 76
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !59
  %i.zu = icmp eq i32 %i.zt, 0
  %or.cond13 = select i1 %i.zu, i1 true, i1 %i.p
  %i.zv = load ptr, ptr @break_idx, align 8
  %i.zw = icmp ne ptr %i.zv, null
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.zw
  br i1 %or.cond15, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 1598, ptr noundef nonnull @__PRETTY_FUNCTION__.diffcore_rename_extended) #13
  unreachable

bb.fc:                                            ; preds = %bb.fa
  br i1 %.not223, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.zx = call i32 @diff_unmodified_pair(ptr noundef nonnull %i.zq) #12
  %.not224 = icmp eq i32 %i.zx, 0
  br i1 %.not224, label %bb.fe, label %bb.gb

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.zy = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.zz = call fastcc i32 @estimate_similarity(ptr noundef %i.zy, ptr noundef nonnull %i.zr, ptr noundef %i.yp, i32 noundef %spec.store.select, ptr noundef %22) ; 2 uses
  %i.aaa = trunc i32 %i.zz to i16                 ; 2 uses
  %i.aab = getelementptr i8, ptr %i.zr, i64 40
  %.val255 = load ptr, ptr %i.aab, align 8, !tbaa !49 ; 3 uses
  %.val256 = load ptr, ptr %i.zb, align 8, !tbaa !49 ; 3 uses
  %i.aac = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val255) #14
  %i.aad = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val256) #14
  %sext.i = shl i64 %i.aac, 32                    ; 2 uses
  %i.aae = ashr exact i64 %sext.i, 32             ; 2 uses
  %sext19.i = shl i64 %i.aad, 32                  ; 2 uses
  %i.aaf = ashr exact i64 %sext19.i, 32           ; 2 uses
  %i.aag = icmp ne i64 %sext.i, 0                 ; 2 uses
  %i.aah = icmp ne i64 %sext19.i, 0               ; 2 uses
  %i.aai = select i1 %i.aag, i1 %i.aah, i1 false
  br i1 %i.aai, label %.lr.ph553, label %._crit_edge554

bb.ff:                                            ; preds = %.lr.ph553
  %i.aaj = icmp ne i64 %indvars.iv.next.i316, 0   ; 2 uses
  %i.aak = icmp ne i64 %indvars.iv.next15.i, 0    ; 2 uses
  %i.aal = and i1 %i.aaj, %i.aak
  br i1 %i.aal, label %.lr.ph553, label %._crit_edge554, !llvm.loop !86

.lr.ph553:                                        ; preds = %bb.fe, %bb.ff
  %indvars.iv.i315550 = phi i64 [ %indvars.iv.next.i316, %bb.ff ], [ %i.aae, %bb.fe ]
  %indvars.iv14.i549 = phi i64 [ %indvars.iv.next15.i, %bb.ff ], [ %i.aaf, %bb.fe ]
  %indvars.iv.next.i316 = add nsw i64 %indvars.iv.i315550, -1 ; 4 uses
  %i.aam = getelementptr inbounds i8, ptr %.val255, i64 %indvars.iv.next.i316
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !65 ; 2 uses
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i549, -1 ; 4 uses
  %i.aao = getelementptr inbounds i8, ptr %.val256, i64 %indvars.iv.next15.i
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !65
  %.not.i317 = icmp eq i8 %i.aan, %i.aap          ; 2 uses
  %i.aaq = icmp ne i8 %i.aan, 47
  %cond.i = and i1 %i.aaq, %.not.i317
  br i1 %cond.i, label %bb.ff, label %basename_same.exit, !llvm.loop !86

._crit_edge554:                                   ; preds = %bb.ff, %bb.fe
  %indvars.iv14.i.lcssa = phi i64 [ %i.aaf, %bb.fe ], [ %indvars.iv.next15.i, %bb.ff ]
  %indvars.iv.i315.lcssa = phi i64 [ %i.aae, %bb.fe ], [ %indvars.iv.next.i316, %bb.ff ]
  %.lcssa526 = phi i1 [ %i.aag, %bb.fe ], [ %i.aaj, %bb.ff ]
  %.lcssa = phi i1 [ %i.aah, %bb.fe ], [ %i.aak, %bb.ff ] ; 2 uses
  br i1 %.lcssa526, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge554
  %i.aar = getelementptr i8, ptr %.val255, i64 %indvars.iv.i315.lcssa
  %i.aas = getelementptr i8, ptr %i.aar, i64 -1
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !65
  %i.aau = icmp eq i8 %i.aat, 47                  ; 2 uses
  %brmerge.not.i = select i1 %i.aau, i1 %.lcssa, i1 false
  br i1 %brmerge.not.i, label %bb.fi, label %basename_same.exit

bb.fh:                                            ; preds = %._crit_edge554
  br i1 %.lcssa, label %bb.fi, label %basename_same.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aav = getelementptr i8, ptr %.val256, i64 %indvars.iv14.i.lcssa
  %i.aaw = getelementptr i8, ptr %i.aav, i64 -1
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !65
  %i.aay = icmp eq i8 %i.aax, 47
  br label %basename_same.exit

basename_same.exit:                               ; preds = %.lr.ph553, %bb.fg, %bb.fh, %bb.fi
  %.2.shrunk.i = phi i1 [ %i.aay, %bb.fi ], [ %i.aau, %bb.fg ], [ true, %bb.fh ], [ %.not.i317, %.lr.ph553 ] ; 2 uses
  %25 = zext i1 %.2.shrunk.i to i16
  %i.aaz = load i32, ptr %i.zc, align 4, !tbaa !78
  %i.aba = icmp slt i32 %i.aaz, 0
  %i.abb = load i32, ptr %i.yv, align 4, !tbaa !78 ; 3 uses
  br i1 %i.aba, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %basename_same.exit
  %i.abc = icmp sgt i32 %i.abb, -1
  %i.abd = zext i1 %i.abc to i32
  br label %score_compare.exit.i

bb.fk:                                            ; preds = %basename_same.exit
  %i.abe = icmp slt i32 %i.abb, 0
  br i1 %i.abe, label %score_compare.exit.thread.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.abf = load i16, ptr %i.zd, align 4, !tbaa !79 ; 2 uses
  %i.abg = load i16, ptr %i.ze, align 4, !tbaa !79 ; 2 uses
  %i.abh = icmp eq i16 %i.abf, %i.abg
  br i1 %i.abh, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.abi = load i16, ptr %i.zf, align 2, !tbaa !80
  %i.abj = sext i16 %i.abi to i32
  %i.abk = load i16, ptr %i.zg, align 2, !tbaa !80
  %i.abl = sext i16 %i.abk to i32
  %i.abm = sub nsw i32 %i.abj, %i.abl
  br label %score_compare.exit.i

bb.fn:                                            ; preds = %bb.fl
  %i.abn = zext i16 %i.abg to i32
  %i.abo = zext i16 %i.abf to i32
  %i.abp = sub nsw i32 %i.abn, %i.abo
  br label %score_compare.exit.i

score_compare.exit.i:                             ; preds = %bb.fn, %bb.fm, %bb.fj
  %.0.i.i318 = phi i32 [ %i.abd, %bb.fj ], [ %i.abp, %bb.fn ], [ %i.abm, %bb.fm ]
  %.0.i.fr.i = freeze i32 %.0.i.i318
  %i.abq = icmp sgt i32 %.0.i.fr.i, 0             ; 2 uses
  %spec.select.i319 = zext i1 %i.abq to i32
  %.phi.trans.insert.i = zext i1 %i.abq to i64
  %.phi.trans.insert21.i = getelementptr inbounds nuw [12 x i8], ptr %i.yu, i64 %.phi.trans.insert.i
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert21.i, i64 4
  %.pre.i320 = load i32, ptr %.phi.trans.insert22.i, align 4, !tbaa !78
  br label %score_compare.exit.thread.i

score_compare.exit.thread.i:                      ; preds = %score_compare.exit.i, %bb.fk
  %i.abr = phi i32 [ %.pre.i320, %score_compare.exit.i ], [ %i.abb, %bb.fk ] ; 3 uses
  %i.abs = phi i32 [ %spec.select.i319, %score_compare.exit.i ], [ 0, %bb.fk ] ; 3 uses
  %i.abt = zext nneg i32 %i.abs to i64            ; 2 uses
  %i.abu = getelementptr inbounds nuw [12 x i8], ptr %i.yu, i64 %i.abt ; 2 uses
  %i.abv = load i32, ptr %i.zh, align 4, !tbaa !78
  %i.abw = icmp slt i32 %i.abv, 0
  br i1 %i.abw, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %score_compare.exit.thread.i
  %i.abx = icmp slt i32 %i.abr, 0
  br i1 %i.abx, label %score_compare.exit.thread.1.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aby = load i16, ptr %i.zi, align 4, !tbaa !79 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.aca = load i16, ptr %i.abz, align 4, !tbaa !79 ; 2 uses
  %i.acb = icmp eq i16 %i.aby, %i.aca
  br i1 %i.acb, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.acc = zext i16 %i.aca to i32
  %i.acd = zext i16 %i.aby to i32
  %i.ace = sub nsw i32 %i.acc, %i.acd
  br label %score_compare.exit.1.i

bb.fr:                                            ; preds = %bb.fp
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abu, i64 10
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !80
  %i.ach = sext i16 %i.acg to i32
  %i.aci = load i16, ptr %i.zj, align 2, !tbaa !80
  %i.acj = sext i16 %i.aci to i32
  %i.ack = sub nsw i32 %i.ach, %i.acj
  br label %score_compare.exit.1.i

bb.fs:                                            ; preds = %score_compare.exit.thread.i
  %i.acl = icmp sgt i32 %i.abr, -1
  %i.acm = zext i1 %i.acl to i32
  br label %score_compare.exit.1.i

score_compare.exit.1.i:                           ; preds = %bb.fs, %bb.fr, %bb.fq
  %.0.i.1.i = phi i32 [ %i.acm, %bb.fs ], [ %i.ace, %bb.fq ], [ %i.ack, %bb.fr ]
  %.0.i.fr.1.i = freeze i32 %.0.i.1.i
  %i.acn = icmp sgt i32 %.0.i.fr.1.i, 0
  %spec.select.1.i = select i1 %i.acn, i32 2, i32 %i.abs ; 2 uses
  %.phi.trans.insert23.i = zext nneg i32 %spec.select.1.i to i64 ; 2 uses
  %.phi.trans.insert24.i = getelementptr inbounds nuw [12 x i8], ptr %i.yu, i64 %.phi.trans.insert23.i
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert24.i, i64 4
  %.pre26.i = load i32, ptr %.phi.trans.insert25.i, align 4, !tbaa !78
  br label %score_compare.exit.thread.1.i

score_compare.exit.thread.1.i:                    ; preds = %score_compare.exit.1.i, %bb.fo
  %.pre-phi.i = phi i64 [ %.phi.trans.insert23.i, %score_compare.exit.1.i ], [ %i.abt, %bb.fo ]
  %i.aco = phi i32 [ %.pre26.i, %score_compare.exit.1.i ], [ %i.abr, %bb.fo ] ; 2 uses
  %i.acp = phi i32 [ %spec.select.1.i, %score_compare.exit.1.i ], [ %i.abs, %bb.fo ]
  %i.acq = getelementptr inbounds nuw [12 x i8], ptr %i.yu, i64 %.pre-phi.i ; 3 uses
  %i.acr = load i32, ptr %i.zk, align 4, !tbaa !78
  %i.acs = icmp slt i32 %i.acr, 0
  br i1 %i.acs, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %score_compare.exit.thread.1.i
  %i.act = icmp slt i32 %i.aco, 0
  br i1 %i.act, label %score_compare.exit14.i.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.acu = load i16, ptr %i.zl, align 4, !tbaa !79 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acw = load i16, ptr %i.acv, align 4, !tbaa !79 ; 2 uses
  %i.acx = icmp eq i16 %i.acu, %i.acw
  br i1 %i.acx, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.acy = zext i16 %i.acw to i32
  %i.acz = zext i16 %i.acu to i32
  %i.ada = sub nsw i32 %i.acy, %i.acz
  br label %score_compare.exit.thread.2.i

bb.fw:                                            ; preds = %bb.fu
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acq, i64 10
  %i.adc = load i16, ptr %i.adb, align 2, !tbaa !80
  %i.add = sext i16 %i.adc to i32
  %i.ade = load i16, ptr %i.zm, align 2, !tbaa !80
  %i.adf = sext i16 %i.ade to i32
  %i.adg = sub nsw i32 %i.add, %i.adf
  br label %score_compare.exit.thread.2.i

bb.fx:                                            ; preds = %score_compare.exit.thread.1.i
  %i.adh = icmp sgt i32 %i.aco, -1
  %i.adi = zext i1 %i.adh to i32
  br label %score_compare.exit.thread.2.i

score_compare.exit.thread.2.i:                    ; preds = %bb.fx, %bb.fw, %bb.fv
  %.0.i.2.i = phi i32 [ %i.adi, %bb.fx ], [ %i.ada, %bb.fv ], [ %i.adg, %bb.fw ]
  %.0.i.fr.2.i = freeze i32 %.0.i.2.i
  %i.adj = icmp sgt i32 %.0.i.fr.2.i, 0
  %spec.select.2.i = select i1 %i.adj, i32 3, i32 %i.acp
  %.phi.trans.insert27.i = zext nneg i32 %spec.select.2.i to i64
  %.phi.trans.insert28.i = getelementptr inbounds nuw [12 x i8], ptr %i.yu, i64 %.phi.trans.insert27.i ; 5 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert28.i, i64 4
  %.pre30.i = load i32, ptr %.phi.trans.insert29.i, align 4, !tbaa !78
  %i.adk = icmp slt i32 %.pre30.i, 0
  br i1 %i.adk, label %score_compare.exit14.i.thread, label %bb.fy

bb.fy:                                            ; preds = %score_compare.exit.thread.2.i
  %i.adl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert28.i, i64 8
  %i.adm = load i16, ptr %i.adl, align 4, !tbaa !79 ; 2 uses
  %i.adn = icmp eq i16 %i.adm, %i.aaa
  br i1 %i.adn, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %26 = zext i1 %.2.shrunk.i to i32
  %i.ado = getelementptr inbounds nuw i8, ptr %.phi.trans.insert28.i, i64 10
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !80
  %i.adq = sext i16 %i.adp to i32
  %i.adr = sub nsw i32 %26, %i.adq
  br label %score_compare.exit14.i

bb.ga:                                            ; preds = %bb.fy
  %i.ads = and i32 %i.zz, 65535
  %i.adt = zext i16 %i.adm to i32
  %i.adu = sub nsw i32 %i.ads, %i.adt
  br label %score_compare.exit14.i

score_compare.exit14.i:                           ; preds = %bb.ga, %bb.fz
  %.0.i13.i = phi i32 [ %i.adr, %bb.fz ], [ %i.adu, %bb.ga ]
  %i.adv = icmp sgt i32 %.0.i13.i, 0
  br i1 %i.adv, label %score_compare.exit14.i.thread, label %record_if_better.exit

score_compare.exit14.i.thread:                    ; preds = %score_compare.exit.thread.2.i, %bb.ft, %score_compare.exit14.i
  %i.adw = phi ptr [ %.phi.trans.insert28.i, %score_compare.exit14.i ], [ %i.acq, %bb.ft ], [ %.phi.trans.insert28.i, %score_compare.exit.thread.2.i ] ; 4 uses
  %i.adx = trunc nuw nsw i64 %indvars.iv419 to i32
  store i32 %i.adx, ptr %i.adw, align 4, !tbaa !51
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  store i32 %i.zn, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !51
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  store i16 %i.aaa, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !167
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adw, i64 10
  store i16 %25, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !167
  br label %record_if_better.exit

record_if_better.exit:                            ; preds = %score_compare.exit14.i, %score_compare.exit14.i.thread
  call void @diff_free_filespec_blob(ptr noundef nonnull %i.zr) #12
  call void @diff_free_filespec_blob(ptr noundef %i.yp) #12
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fd, %record_if_better.exit
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.ady = load i32, ptr @rename_src_nr, align 4, !tbaa !51
  %i.adz = sext i32 %i.ady to i64
  %i.aea = icmp slt i64 %indvars.iv.next420, %i.adz
  br i1 %i.aea, label %bb.fa, label %._crit_edge387, !llvm.loop !103

._crit_edge387:                                   ; preds = %bb.gb, %.preheader
  %i.aeb = add nsw i32 %.0199390, 1               ; 2 uses
  %i.aec = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.aed = sext i32 %i.aeb to i64
  %i.aee = mul nsw i64 %i.aed, %i.yj
  call void @display_progress(ptr noundef %i.aec, i64 noundef %i.aee) #12
  %.pre435 = load ptr, ptr @rename_dst, align 8, !tbaa !53
  %.pre437 = load i32, ptr @rename_dst_nr, align 4, !tbaa !51
  br label %bb.gc

bb.gc:                                            ; preds = %bb.ez, %._crit_edge387
  %i.aef = phi i32 [ %.pre437, %._crit_edge387 ], [ %i.yk, %bb.ez ] ; 2 uses
  %i.aeg = phi ptr [ %.pre435, %._crit_edge387 ], [ %i.yl, %bb.ez ]
  %.1200 = phi i32 [ %i.aeb, %._crit_edge387 ], [ %.0199390, %bb.ez ] ; 2 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %i.aeh = sext i32 %i.aef to i64
  %i.aei = icmp slt i64 %indvars.iv.next423, %i.aeh
  br i1 %i.aei, label %bb.ez, label %._crit_edge392, !llvm.loop !104

._crit_edge392:                                   ; preds = %bb.gc, %st_mult.exit
  %.0199.lcssa = phi i32 [ 0, %st_mult.exit ], [ %.1200, %bb.gc ] ; 3 uses
  %i.aej = load i32, ptr @git_gettext_enabled, align 4, !tbaa !51
  %.not4.i.i = icmp eq i32 %i.aej, 0
  br i1 %.not4.i.i, label %stop_progress.exit, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge392
  %i.aek = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #12
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %._crit_edge392, %bb.gd
  %.0.i.i321 = phi ptr [ %i.aek, %bb.gd ], [ @.str.29, %._crit_edge392 ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i321) #12
  %i.ael = shl nsw i32 %.0199.lcssa, 2
  %i.aem = sext i32 %i.ael to i64
  call void @git_stable_qsort(ptr noundef %i.yg, i64 noundef %i.aem, i64 noundef 12, ptr noundef nonnull @score_compare) #12
  call fastcc void @find_renames(ptr noundef %i.yg, i32 noundef %.0199.lcssa, i32 noundef %spec.store.select, i32 noundef 0, ptr noundef %21, ptr noundef %3)
  br i1 %i.p, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %stop_progress.exit
  call fastcc void @find_renames(ptr noundef %i.yg, i32 noundef %.0199.lcssa, i32 noundef %spec.store.select, i32 noundef 1, ptr noundef %21, ptr noundef %3)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %stop_progress.exit
  call void @free(ptr noundef %i.yg) #12
  %i.aen = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 1634, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef %i.aen) #12
  br label %too_many_rename_candidates.exit.thread345

too_many_rename_candidates.exit.thread345:        ; preds = %st_mult.exit39.i, %bb.er, %bb.en, %find_exact_renames.exit, %._crit_edge, %bb.gf
  %i.aeo = load ptr, ptr %i.f, align 8, !tbaa !122
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 1640, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, ptr noundef %i.aeo) #12
  %i.aep = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !126
  %i.aeq = icmp sgt i32 %i.aep, 0
  br i1 %i.aeq, label %.lr.ph394, label %._crit_edge395

.lr.ph394:                                        ; preds = %too_many_rename_candidates.exit.thread345
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i326 = icmp eq ptr %1, null
  br label %bb.gg

bb.gg:                                            ; preds = %.lr.ph394, %pool_diff_free_filepair.exit
  %indvars.iv425 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next426, %pool_diff_free_filepair.exit ] ; 2 uses
  %i.aes = load ptr, ptr @diff_queued_diff, align 8, !tbaa !127
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %indvars.iv425
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !128 ; 11 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 27
  %i.aew = load i8, ptr %i.aev, align 1           ; 2 uses
  %i.aex = and i8 %i.aew, 4
  %.not227 = icmp eq i8 %i.aex, 0
  br i1 %.not227, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @diff_q(ptr noundef nonnull %19, ptr noundef nonnull %i.aeu) #12
  br label %pool_diff_free_filepair.exit

bb.gi:                                            ; preds = %bb.gg
  %i.aey = load ptr, ptr %i.aeu, align 8, !tbaa !25 ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 80
  %i.afa = load i16, ptr %i.aez, align 8, !tbaa !48
  %.not228 = icmp eq i16 %i.afa, 0
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !31
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 80
  %i.afe = load i16, ptr %i.afd, align 8, !tbaa !48
  %.not229 = icmp eq i16 %i.afe, 0                ; 2 uses
  br i1 %.not228, label %bb.gj, label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  br i1 %.not229, label %.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @diff_q(ptr noundef nonnull %19, ptr noundef nonnull %i.aeu) #12
  br label %pool_diff_free_filepair.exit

bb.gl:                                            ; preds = %bb.gi
  br i1 %.not229, label %bb.gm, label %.thread

bb.gm:                                            ; preds = %bb.gl
  %i.aff = and i8 %i.aew, 1
  %.not232 = icmp eq i8 %i.aff, 0
  br i1 %.not232, label %bb.gt, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.afg = load ptr, ptr @break_idx, align 8, !tbaa !46 ; 3 uses
  %.not.i322 = icmp eq ptr %i.afg, null
  br i1 %.not.i322, label %locate_rename_dst.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aey, i64 40
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !49
  %i.afj = call ptr @strmap_get_entry(ptr noundef nonnull %i.afg, ptr noundef %i.afi) #12 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.afj, null
  br i1 %.not.i.i323, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 64
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !68
  br label %locate_rename_dst.exit

bb.gq:                                            ; preds = %bb.go
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 24
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !19
  %i.afo = ptrtoint ptr %i.afn to i64
  %i.afp = trunc i64 %i.afo to i32
  br label %locate_rename_dst.exit

locate_rename_dst.exit:                           ; preds = %bb.gn, %bb.gp, %bb.gq
  %i.afq = phi i32 [ -1, %bb.gn ], [ %i.afp, %bb.gq ], [ %i.afl, %bb.gp ] ; 3 uses
  %i.afr = icmp ne i32 %i.afq, -1
  %i.afs = load i32, ptr @rename_dst_nr, align 4
  %i.aft = icmp ne i32 %i.afq, %i.afs
  %or.cond.i325.not = select i1 %i.afr, i1 %i.aft, i1 false
  %i.afu = load ptr, ptr @rename_dst, align 8     ; 2 uses
  %i.afv = sext i32 %i.afq to i64
  %i.afw = getelementptr inbounds [24 x i8], ptr %i.afu, i64 %i.afv ; 2 uses
  %i.afx = load ptr, ptr %i.aer, align 8, !tbaa !129
  %i.afy = icmp ne ptr %i.afx, null
  %i.afz = icmp ne ptr %i.afu, null
  %i.aga = select i1 %or.cond.i325.not, i1 %i.afz, i1 false ; 2 uses
  %or.cond17 = select i1 %i.afy, i1 %i.aga, i1 false
  br i1 %or.cond17, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %locate_rename_dst.exit
  %i.agb = load ptr, ptr %i.afw, align 8, !tbaa !55
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !31
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 40
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !49
  %i.agg = load ptr, ptr %i.afb, align 8, !tbaa !31
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 40
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !49
  %i.agj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.agf, ptr noundef nonnull dereferenceable(1) %i.agi) #14
  %.not234 = icmp eq i32 %i.agj, 0
  br i1 %.not234, label %.thread352, label %.thread349

bb.gs:                                            ; preds = %locate_rename_dst.exit
  br i1 %i.aga, label %.thread352, label %.thread349

.thread352:                                       ; preds = %bb.gr, %bb.gs
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !57
  %.not236 = icmp eq i32 %i.agl, 0
  br i1 %.not236, label %.thread349, label %bb.gv

bb.gt:                                            ; preds = %bb.gm
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aey, i64 76
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !59
  %.not233 = icmp eq i32 %i.agn, 0
  br i1 %.not233, label %.thread349, label %bb.gv

.thread349:                                       ; preds = %bb.gt, %.thread352, %bb.gr, %bb.gs
  call void @diff_q(ptr noundef nonnull %19, ptr noundef nonnull %i.aeu) #12
  br label %pool_diff_free_filepair.exit

.thread:                                          ; preds = %bb.gj, %bb.gl
  %i.ago = call i32 @diff_unmodified_pair(ptr noundef nonnull %i.aeu) #12
  %.not238 = icmp eq i32 %i.ago, 0
  br i1 %.not238, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.thread
  call void @diff_q(ptr noundef nonnull %19, ptr noundef nonnull %i.aeu) #12
  br label %pool_diff_free_filepair.exit

bb.gv:                                            ; preds = %.thread, %bb.gt, %.thread352
  br i1 %.not.i326, label %bb.gw, label %bb.gx

end_hunk_1
