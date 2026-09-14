Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pshinter?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ps_hints_apply:bb.a

psh_hint_table_align_hints.exit.loopexit:         ; preds = %.lr.ph.i97
  %.pre141 = load ptr, ptr %i.dy, align 8, !tbaa !41
  br label %psh_hint_table_align_hints.exit

psh_hint_table_align_hints.exit:                  ; preds = %psh_hint_table_align_hints.exit.loopexit, %psh_glyph_compute_extrema.exit
  %i.jy = phi ptr [ %.pre141, %psh_hint_table_align_hints.exit.loopexit ], [ %i.jt, %psh_glyph_compute_extrema.exit ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 56 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !64 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !67 ; 2 uses
  %i.kd = load i32, ptr %i.ka, align 8, !tbaa !68 ; 3 uses
  %i.ke = select i1 %i.fw, i32 3, i32 12          ; 2 uses
  %i.kf = getelementptr inbounds nuw [408 x i8], ptr %i.jy, i64 %indvars.iv
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 400
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !44
  %i.ki = call i64 @FT_DivFix(i64 noundef 32, i64 noundef %i.kh) #12
  %i.kj = trunc i64 %i.ki to i32
  %spec.store.select.i100 = call i32 @llvm.smin.i32(i32 %i.kj, i32 12) ; 2 uses
  %i.kk = icmp ugt i32 %i.kd, 1
  br i1 %i.kk, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %psh_hint_table_align_hints.exit
  %i.kl = load i32, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i103 = icmp eq i32 %i.kl, 0
  br i1 %.not.i103, label %psh_glyph_find_strong_points.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.ai
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !70
  %..i = call i32 @llvm.umin.i32(i32 %i.kn, i32 %i.kl)
  %i.ko = getelementptr i8, ptr %i.js, i64 16     ; 3 uses
  %i.kp = getelementptr i8, ptr %i.js, i64 4      ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.au, %.lr.ph.i104
  %i.kq = phi i32 [ %i.kl, %.lr.ph.i104 ], [ %i.ne, %bb.au ] ; 2 uses
  %.pn120.i = phi ptr [ %i.kc, %.lr.ph.i104 ], [ %.056121.i, %bb.au ] ; 3 uses
  %.057119.i = phi i32 [ %i.kd, %.lr.ph.i104 ], [ %i.nf, %bb.au ]
  %.058118.i = phi i32 [ %..i, %.lr.ph.i104 ], [ %.69.i, %bb.au ] ; 3 uses
  %.056121.i = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 24 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.pn120.i, i64 40
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !70
  %.69.i = call i32 @llvm.umin.i32(i32 %i.ks, i32 %i.kq) ; 3 uses
  %i.kt = icmp ugt i32 %.69.i, %.058118.i
  br i1 %i.kt, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.ku = sub nuw i32 %.69.i, %.058118.i
  %i.kv = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.kw = zext i32 %.058118.i to i64
  %i.kx = getelementptr inbounds nuw [72 x i8], ptr %i.kv, i64 %i.kw
  %.056.val.i = load i32, ptr %.056121.i, align 8, !tbaa !71 ; 2 uses
  %i.ky = getelementptr i8, ptr %.pn120.i, i64 32
  %.056.val71.i = load ptr, ptr %i.ky, align 8, !tbaa !72
  %.val.i.i = load i32, ptr %i.js, align 8, !tbaa !62 ; 6 uses
  %.not1.i.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not1.i.i.i, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ak
  %.val52.i.i = load ptr, ptr %i.ju, align 8, !tbaa !63 ; 2 uses
  %xtraiter199 = and i32 %.val.i.i, 3             ; 2 uses
  %lcmp.mod200.not = icmp eq i32 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.03.i.i.i.prol = phi ptr [ %i.le, %.lr.ph.i.i.i.prol ], [ %.val52.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.062.i.i.i.prol = phi i32 [ %i.ld, %.lr.ph.i.i.i.prol ], [ %.val.i.i, %.lr.ph.i.preheader.i.i ]
  %prol.iter201 = phi i32 [ %prol.iter201.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 24 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !74
  %i.lb = and i32 %i.la, -5
  store i32 %i.lb, ptr %i.kz, align 8, !tbaa !74
  %i.lc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 40
  store i32 -1, ptr %i.lc, align 8, !tbaa !170
  %i.ld = add i32 %.062.i.i.i.prol, -1            ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.03.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter201.next = add i32 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i32 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !142

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.03.i.i.i.unr = phi ptr [ %.val52.i.i, %.lr.ph.i.preheader.i.i ], [ %i.le, %.lr.ph.i.i.i.prol ]
  %.062.i.i.i.unr = phi i32 [ %.val.i.i, %.lr.ph.i.preheader.i.i ], [ %i.ld, %.lr.ph.i.i.i.prol ]
  %i.lf = icmp ult i32 %.val.i.i, 4
  br i1 %i.lf, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.lx, %.lr.ph.i.i.i ], [ %.03.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.062.i.i.i = phi i32 [ %i.lw, %.lr.ph.i.i.i ], [ %.062.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !74
  %i.li = and i32 %i.lh, -5
  store i32 %i.li, ptr %i.lg, align 8, !tbaa !74
  %i.lj = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  store i32 -1, ptr %i.lj, align 8, !tbaa !170
  %i.lk = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 72 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !74
  %i.lm = and i32 %i.ll, -5
  store i32 %i.lm, ptr %i.lk, align 8, !tbaa !74
  %i.ln = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 88
  store i32 -1, ptr %i.ln, align 8, !tbaa !170
  %i.lo = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 120 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !74
  %i.lq = and i32 %i.lp, -5
  store i32 %i.lq, ptr %i.lo, align 8, !tbaa !74
  %i.lr = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 136
  store i32 -1, ptr %i.lr, align 8, !tbaa !170
  %i.ls = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 168 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !74
  %i.lu = and i32 %i.lt, -5
  store i32 %i.lu, ptr %i.ls, align 8, !tbaa !74
  %i.lv = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 184
  store i32 -1, ptr %i.lv, align 8, !tbaa !170
  %i.lw = add i32 %.062.i.i.i, -4                 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 192
  %.not.i.i.i.3 = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i.i.3, label %psh_hint_table_deactivate.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !143

psh_hint_table_deactivate.exit.i.i:               ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.ak
  %.not17.i.i = icmp eq i32 %.056.val.i, 0
  br i1 %.not17.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %psh_hint_table_deactivate.exit.i.i
  store i32 0, ptr %i.kp, align 4, !tbaa !75
  %.val75.pre.i = load ptr, ptr %i.ko, align 8, !tbaa !76
  br label %psh_hint_table_activate_mask.exit.i

.lr.ph.i.i:                                       ; preds = %psh_hint_table_deactivate.exit.i.i
  %wide.trip.count.i.i = zext i32 %.056.val.i to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ar, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ar ] ; 2 uses
  %.0435.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.3.i.i, %bb.ar ] ; 6 uses
  %.0453.i.i = phi ptr [ %.056.val71.i, %.lr.ph.i.i ], [ %.146.i.i, %bb.ar ] ; 3 uses
  %.0472.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.148.i.i, %bb.ar ]
  %.0491.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.mo, %bb.ar ] ; 2 uses
  %i.ly = icmp eq i32 %.0491.i.i, 0
  br i1 %i.ly, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lz = getelementptr inbounds nuw i8, ptr %.0453.i.i, i64 1
  %i.ma = load i8, ptr %.0453.i.i, align 1, !tbaa !38
  %i.mb = zext i8 %i.ma to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.150.i.i = phi i32 [ 128, %bb.am ], [ %.0491.i.i, %bb.al ] ; 2 uses
  %.148.i.i = phi i32 [ %i.mb, %bb.am ], [ %.0472.i.i, %bb.al ] ; 2 uses
  %.146.i.i = phi ptr [ %i.lz, %bb.am ], [ %.0453.i.i, %bb.al ]
  %i.mc = and i32 %.148.i.i, %.150.i.i
  %.not.i.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.md = load ptr, ptr %i.ju, align 8, !tbaa !63
  %i.me = getelementptr inbounds nuw [48 x i8], ptr %i.md, i64 %indvars.iv.i.i ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !74 ; 2 uses
  %i.mh = and i32 %i.mg, 4
  %.not51.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not51.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.mi = or disjoint i32 %i.mg, 4
  store i32 %i.mi, ptr %i.mf, align 8, !tbaa !74
  %i.mj = icmp ult i32 %.0435.i.i, %.val.i.i
  br i1 %i.mj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mk = load ptr, ptr %i.ko, align 8, !tbaa !76
  %i.ml = add nuw i32 %.0435.i.i, 1
  %i.mm = zext i32 %.0435.i.i to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.mm
  store ptr %i.me, ptr %i.mn, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.3.i.i = phi i32 [ %.0435.i.i, %bb.an ], [ %.0435.i.i, %bb.ao ], [ %i.ml, %bb.aq ], [ %.0435.i.i, %bb.ap ] ; 6 uses
  %i.mo = lshr i32 %.150.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.al, !llvm.loop !144

._crit_edge.i.i:                                  ; preds = %bb.ar
  store i32 %.3.i.i, ptr %i.kp, align 4, !tbaa !75
  %i.mp = load ptr, ptr %i.ko, align 8, !tbaa !76 ; 5 uses
  %i.mq = icmp ugt i32 %.3.i.i, 1
  br i1 %i.mq, label %.lr.ph15.preheader.i.i, label %psh_hint_table_activate_mask.exit.i

.lr.ph15.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %wide.trip.count24.i.i = zext i32 %.3.i.i to i64
  br label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %._crit_edge11.i.i, %.lr.ph15.preheader.i.i
  %indvars.iv20.i.i = phi i64 [ 1, %.lr.ph15.preheader.i.i ], [ %indvars.iv.next21.i.i, %._crit_edge11.i.i ] ; 3 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv20.i.i
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !77 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !78
  %i.mu = trunc i64 %indvars.iv20.i.i to i32      ; 3 uses
  %i.mv = add i32 %i.mu, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph10.i.i
  %.08.i.i = phi i32 [ %i.mv, %.lr.ph10.i.i ], [ %.0.i.i105, %bb.at ] ; 3 uses
  %.0.in7.i.i = phi i32 [ %i.mu, %.lr.ph10.i.i ], [ %.08.i.i, %bb.at ]
  %i.mw = zext i32 %.08.i.i to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mw ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !77 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !78
  %i.na = icmp slt i32 %i.mz, %i.mt
  br i1 %i.na, label %._crit_edge11.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nb = zext i32 %.0.in7.i.i to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.nb
  store ptr %i.my, ptr %i.nc, align 8, !tbaa !77
  store ptr %i.ms, ptr %i.mx, align 8, !tbaa !77
  %.0.i.i105 = add i32 %.08.i.i, -1               ; 2 uses
  %i.nd = icmp ult i32 %.0.i.i105, %i.mu
  br i1 %i.nd, label %bb.as, label %._crit_edge11.i.i, !llvm.loop !145

._crit_edge11.i.i:                                ; preds = %bb.at, %bb.as
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i, label %psh_hint_table_activate_mask.exit.i, label %.lr.ph10.i.i, !llvm.loop !146

psh_hint_table_activate_mask.exit.i:              ; preds = %._crit_edge11.i.i, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.val75.i = phi ptr [ %i.mp, %._crit_edge.i.i ], [ %.val75.pre.i, %._crit_edge.thread.i.i ], [ %i.mp, %._crit_edge11.i.i ]
  %.val74.i = phi i32 [ %.3.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ], [ %.3.i.i, %._crit_edge11.i.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val74.i, ptr %.val75.i, ptr noundef %i.kx, i32 noundef %i.ku, i32 noundef %spec.store.select.i100, i32 noundef %i.ke)
  %.pre142 = load i32, ptr %4, align 8, !tbaa !26
  br label %bb.au

bb.au:                                            ; preds = %psh_hint_table_activate_mask.exit.i, %bb.aj
  %i.ne = phi i32 [ %.pre142, %psh_hint_table_activate_mask.exit.i ], [ %i.kq, %bb.aj ] ; 2 uses
  %i.nf = add i32 %.057119.i, -1                  ; 2 uses
  %i.ng = icmp ugt i32 %i.nf, 1
  br i1 %i.ng, label %bb.aj, label %.thread.i, !llvm.loop !147

bb.av:                                            ; preds = %psh_hint_table_align_hints.exit
  %i.nh = icmp eq i32 %i.kd, 1
  br i1 %i.nh, label %..thread.i_crit_edge, label %.thread115.i

..thread.i_crit_edge:                             ; preds = %bb.av
  %.pre144 = load i32, ptr %4, align 8, !tbaa !26
  br label %.thread.i

.thread.i:                                        ; preds = %bb.au, %..thread.i_crit_edge
  %i.ni = phi i32 [ %.pre144, %..thread.i_crit_edge ], [ %i.ne, %bb.au ]
  %i.nj = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.nk = load ptr, ptr %i.jz, align 8, !tbaa !64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !67 ; 2 uses
  %.val.i = load i32, ptr %i.nm, align 8, !tbaa !71 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8
  %.val70.i = load ptr, ptr %i.nn, align 8, !tbaa !72
  %.val.i76.i = load i32, ptr %i.js, align 8, !tbaa !62 ; 6 uses
  %.not1.i.i77.i = icmp eq i32 %.val.i76.i, 0
  br i1 %.not1.i.i77.i, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.preheader.i78.i

.lr.ph.i.preheader.i78.i:                         ; preds = %.thread.i
  %.val52.i79.i = load ptr, ptr %i.ju, align 8, !tbaa !63 ; 2 uses
  %xtraiter202 = and i32 %.val.i76.i, 3           ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol

.lr.ph.i.i80.i.prol:                              ; preds = %.lr.ph.i.preheader.i78.i, %.lr.ph.i.i80.i.prol
  %.03.i.i81.i.prol = phi ptr [ %i.nt, %.lr.ph.i.i80.i.prol ], [ %.val52.i79.i, %.lr.ph.i.preheader.i78.i ] ; 3 uses
  %.062.i.i82.i.prol = phi i32 [ %i.ns, %.lr.ph.i.i80.i.prol ], [ %.val.i76.i, %.lr.ph.i.preheader.i78.i ]
  %prol.iter204 = phi i32 [ %prol.iter204.next, %.lr.ph.i.i80.i.prol ], [ 0, %.lr.ph.i.preheader.i78.i ]
  %i.no = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 24 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !74
  %i.nq = and i32 %i.np, -5
  store i32 %i.nq, ptr %i.no, align 8, !tbaa !74
  %i.nr = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 40
  store i32 -1, ptr %i.nr, align 8, !tbaa !170
  %i.ns = add i32 %.062.i.i82.i.prol, -1          ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.03.i.i81.i.prol, i64 48 ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol, !llvm.loop !148

.lr.ph.i.i80.i.prol.loopexit:                     ; preds = %.lr.ph.i.i80.i.prol, %.lr.ph.i.preheader.i78.i
  %.03.i.i81.i.unr = phi ptr [ %.val52.i79.i, %.lr.ph.i.preheader.i78.i ], [ %i.nt, %.lr.ph.i.i80.i.prol ]
  %.062.i.i82.i.unr = phi i32 [ %.val.i76.i, %.lr.ph.i.preheader.i78.i ], [ %i.ns, %.lr.ph.i.i80.i.prol ]
  %i.nu = icmp ult i32 %.val.i76.i, 4
  br i1 %i.nu, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i
  %.03.i.i81.i = phi ptr [ %i.om, %.lr.ph.i.i80.i ], [ %.03.i.i81.i.unr, %.lr.ph.i.i80.i.prol.loopexit ] ; 9 uses
  %.062.i.i82.i = phi i32 [ %i.ol, %.lr.ph.i.i80.i ], [ %.062.i.i82.i.unr, %.lr.ph.i.i80.i.prol.loopexit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 24 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !74
  %i.nx = and i32 %i.nw, -5
  store i32 %i.nx, ptr %i.nv, align 8, !tbaa !74
  %i.ny = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 40
  store i32 -1, ptr %i.ny, align 8, !tbaa !170
  %i.nz = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 72 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !74
  %i.ob = and i32 %i.oa, -5
  store i32 %i.ob, ptr %i.nz, align 8, !tbaa !74
  %i.oc = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 88
  store i32 -1, ptr %i.oc, align 8, !tbaa !170
  %i.od = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 120 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !74
  %i.of = and i32 %i.oe, -5
  store i32 %i.of, ptr %i.od, align 8, !tbaa !74
  %i.og = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 136
  store i32 -1, ptr %i.og, align 8, !tbaa !170
  %i.oh = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 168 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !74
  %i.oj = and i32 %i.oi, -5
  store i32 %i.oj, ptr %i.oh, align 8, !tbaa !74
  %i.ok = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 184
  store i32 -1, ptr %i.ok, align 8, !tbaa !170
  %i.ol = add i32 %.062.i.i82.i, -4               ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.03.i.i81.i, i64 192
  %.not.i.i83.i.3 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i83.i.3, label %psh_hint_table_deactivate.exit.i84.i, label %.lr.ph.i.i80.i, !llvm.loop !143

psh_hint_table_deactivate.exit.i84.i:             ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i, %.thread.i
  %.not17.i85.i = icmp eq i32 %.val.i, 0
  br i1 %.not17.i85.i, label %._crit_edge.thread.i112.i, label %.lr.ph.i86.i

._crit_edge.thread.i112.i:                        ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i32 0, ptr %i.on, align 4, !tbaa !75
  %.phi.trans.insert.i102 = getelementptr i8, ptr %i.js, i64 16
  %.val73.pre.i = load ptr, ptr %.phi.trans.insert.i102, align 8, !tbaa !76
  br label %psh_hint_table_activate_mask.exit113.i

.lr.ph.i86.i:                                     ; preds = %psh_hint_table_deactivate.exit.i84.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.trip.count.i87.i = zext i32 %.val.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %.lr.ph.i86.i
  %indvars.iv.i88.i = phi i64 [ 0, %.lr.ph.i86.i ], [ %indvars.iv.next.i99.i, %bb.bc ] ; 2 uses
  %.0435.i89.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.3.i98.i, %bb.bc ] ; 6 uses
  %.0453.i90.i = phi ptr [ %.val70.i, %.lr.ph.i86.i ], [ %.146.i95.i, %bb.bc ] ; 3 uses
  %.0472.i91.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %.148.i94.i, %bb.bc ]
  %.0491.i92.i = phi i32 [ 0, %.lr.ph.i86.i ], [ %i.pf, %bb.bc ] ; 2 uses
  %i.op = icmp eq i32 %.0491.i92.i, 0
  br i1 %i.op, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.oq = getelementptr inbounds nuw i8, ptr %.0453.i90.i, i64 1
  %i.or = load i8, ptr %.0453.i90.i, align 1, !tbaa !38
  %i.os = zext i8 %i.or to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.150.i93.i = phi i32 [ 128, %bb.ax ], [ %.0491.i92.i, %bb.aw ] ; 2 uses
  %.148.i94.i = phi i32 [ %i.os, %bb.ax ], [ %.0472.i91.i, %bb.aw ] ; 2 uses
  %.146.i95.i = phi ptr [ %i.oq, %bb.ax ], [ %.0453.i90.i, %bb.aw ]
  %i.ot = and i32 %.148.i94.i, %.150.i93.i
  %.not.i96.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i96.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ou = load ptr, ptr %i.ju, align 8, !tbaa !63
  %i.ov = getelementptr inbounds nuw [48 x i8], ptr %i.ou, i64 %indvars.iv.i88.i ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !74 ; 2 uses
  %i.oy = and i32 %i.ox, 4
  %.not51.i97.i = icmp eq i32 %i.oy, 0
  br i1 %.not51.i97.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.oz = or disjoint i32 %i.ox, 4
  store i32 %i.oz, ptr %i.ow, align 8, !tbaa !74
  %i.pa = icmp ult i32 %.0435.i89.i, %.val.i76.i
  br i1 %i.pa, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pb = load ptr, ptr %i.oo, align 8, !tbaa !76
  %i.pc = add nuw i32 %.0435.i89.i, 1
  %i.pd = zext i32 %.0435.i89.i to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.pd
  store ptr %i.ov, ptr %i.pe, align 8, !tbaa !77
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.3.i98.i = phi i32 [ %.0435.i89.i, %bb.ay ], [ %.0435.i89.i, %bb.az ], [ %i.pc, %bb.bb ], [ %.0435.i89.i, %bb.ba ] ; 6 uses
  %i.pf = lshr i32 %.150.i93.i, 1
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %exitcond.not.i100.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i87.i
  br i1 %exitcond.not.i100.i, label %._crit_edge.i101.i, label %bb.aw, !llvm.loop !144

._crit_edge.i101.i:                               ; preds = %bb.bc
  %i.pg = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i32 %.3.i98.i, ptr %i.pg, align 4, !tbaa !75
  %i.ph = load ptr, ptr %i.oo, align 8, !tbaa !76 ; 5 uses
  %i.pi = icmp ugt i32 %.3.i98.i, 1
  br i1 %i.pi, label %.lr.ph15.preheader.i102.i, label %psh_hint_table_activate_mask.exit113.i

.lr.ph15.preheader.i102.i:                        ; preds = %._crit_edge.i101.i
  %wide.trip.count24.i103.i = zext i32 %.3.i98.i to i64
  br label %.lr.ph10.i104.i

.lr.ph10.i104.i:                                  ; preds = %._crit_edge11.i109.i, %.lr.ph15.preheader.i102.i
  %indvars.iv20.i105.i = phi i64 [ 1, %.lr.ph15.preheader.i102.i ], [ %indvars.iv.next21.i110.i, %._crit_edge11.i109.i ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv20.i105.i
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !77 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !78
  %i.pm = trunc i64 %indvars.iv20.i105.i to i32   ; 3 uses
  %i.pn = add i32 %i.pm, -1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %.lr.ph10.i104.i
  %.08.i106.i = phi i32 [ %i.pn, %.lr.ph10.i104.i ], [ %.0.i108.i, %bb.be ] ; 3 uses
  %.0.in7.i107.i = phi i32 [ %i.pm, %.lr.ph10.i104.i ], [ %.08.i106.i, %bb.be ]
  %i.po = zext i32 %.08.i106.i to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.po ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !77 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !78
  %i.ps = icmp slt i32 %i.pr, %i.pl
  br i1 %i.ps, label %._crit_edge11.i109.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pt = zext i32 %.0.in7.i107.i to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pt
  store ptr %i.pq, ptr %i.pu, align 8, !tbaa !77
  store ptr %i.pk, ptr %i.pp, align 8, !tbaa !77
  %.0.i108.i = add i32 %.08.i106.i, -1            ; 2 uses
  %i.pv = icmp ult i32 %.0.i108.i, %i.pm
  br i1 %i.pv, label %bb.bd, label %._crit_edge11.i109.i, !llvm.loop !145

._crit_edge11.i109.i:                             ; preds = %bb.be, %bb.bd
  %indvars.iv.next21.i110.i = add nuw nsw i64 %indvars.iv20.i105.i, 1 ; 2 uses
  %exitcond25.not.i111.i = icmp eq i64 %indvars.iv.next21.i110.i, %wide.trip.count24.i103.i
  br i1 %exitcond25.not.i111.i, label %psh_hint_table_activate_mask.exit113.i, label %.lr.ph10.i104.i, !llvm.loop !146

psh_hint_table_activate_mask.exit113.i:           ; preds = %._crit_edge11.i109.i, %._crit_edge.i101.i, %._crit_edge.thread.i112.i
  %.val73.i = phi ptr [ %i.ph, %._crit_edge.i101.i ], [ %.val73.pre.i, %._crit_edge.thread.i112.i ], [ %i.ph, %._crit_edge11.i109.i ]
  %.val72.i = phi i32 [ %.3.i98.i, %._crit_edge.i101.i ], [ 0, %._crit_edge.thread.i112.i ], [ %.3.i98.i, %._crit_edge11.i109.i ]
  call fastcc void @psh_hint_table_find_strong_points(i32 %.val72.i, ptr %.val73.i, ptr noundef %i.nj, i32 noundef %i.ni, i32 noundef %spec.store.select.i100, i32 noundef %i.ke)
  br label %.thread115.i

.thread115.i:                                     ; preds = %psh_hint_table_activate_mask.exit113.i, %bb.av
  %.pr.i = load i32, ptr %4, align 8, !tbaa !26   ; 7 uses
  %.not66122.i = icmp eq i32 %.pr.i, 0
  br i1 %.not66122.i, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.preheader.i

.lr.ph125.preheader.i:                            ; preds = %.thread115.i
  %i.pw = load ptr, ptr %i.k, align 8, !tbaa !23  ; 4 uses
  %xtraiter205 = and i32 %.pr.i, 1
  %lcmp.mod206.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol

.lr.ph125.i.prol:                                 ; preds = %.lr.ph125.preheader.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !54
  %.not67.i.prol = icmp eq ptr %i.py, null
  br i1 %.not67.i.prol, label %.lr.ph125.i.prol.loopexit.unr-lcssa, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph125.i.prol
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 28 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !53 ; 2 uses
  %i.qb = and i32 %i.qa, 16
  %.not68.i.prol = icmp eq i32 %i.qb, 0
  br i1 %.not68.i.prol, label %bb.bg, label %.lr.ph125.i.prol.loopexit.unr-lcssa

bb.bg:                                            ; preds = %bb.bf
  %i.qc = or disjoint i32 %i.qa, 16
  store i32 %i.qc, ptr %i.pz, align 4, !tbaa !53
  br label %.lr.ph125.i.prol.loopexit.unr-lcssa

.lr.ph125.i.prol.loopexit.unr-lcssa:              ; preds = %bb.bg, %bb.bf, %.lr.ph125.i.prol
  %i.qd = add nsw i32 %.pr.i, -1
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 72
  br label %.lr.ph125.i.prol.loopexit

.lr.ph125.i.prol.loopexit:                        ; preds = %.lr.ph125.i.prol.loopexit.unr-lcssa, %.lr.ph125.preheader.i
  %.0124.i.unr = phi ptr [ %i.pw, %.lr.ph125.preheader.i ], [ %i.qe, %.lr.ph125.i.prol.loopexit.unr-lcssa ]
  %.055123.i.unr = phi i32 [ %.pr.i, %.lr.ph125.preheader.i ], [ %i.qd, %.lr.ph125.i.prol.loopexit.unr-lcssa ]
  %i.qf = icmp eq i32 %.pr.i, 1
  br i1 %i.qf, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.prol.loopexit, %bb.bl
  %.0124.i = phi ptr [ %i.qt, %bb.bl ], [ %.0124.i.unr, %.lr.ph125.i.prol.loopexit ] ; 5 uses
  %.055123.i = phi i32 [ %i.qs, %bb.bl ], [ %.055123.i.unr, %.lr.ph125.i.prol.loopexit ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.0124.i, i64 40
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !54
  %.not67.i = icmp eq ptr %i.qh, null
  br i1 %.not67.i, label %.lr.ph125.i.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph125.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.0124.i, i64 28 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !53 ; 2 uses
  %i.qk = and i32 %i.qj, 16
  %.not68.i = icmp eq i32 %i.qk, 0
  br i1 %.not68.i, label %bb.bi, label %.lr.ph125.i.1

bb.bi:                                            ; preds = %bb.bh
  %i.ql = or disjoint i32 %i.qj, 16
  store i32 %i.ql, ptr %i.qi, align 4, !tbaa !53
  br label %.lr.ph125.i.1

.lr.ph125.i.1:                                    ; preds = %bb.bi, %bb.bh, %.lr.ph125.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.0124.i, i64 112
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !54
  %.not67.i.1 = icmp eq ptr %i.qn, null
  br i1 %.not67.i.1, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph125.i.1
  %i.qo = getelementptr inbounds nuw i8, ptr %.0124.i, i64 100 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !53 ; 2 uses
  %i.qq = and i32 %i.qp, 16
  %.not68.i.1 = icmp eq i32 %i.qq, 0
  br i1 %.not68.i.1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qr = or disjoint i32 %i.qp, 16
  store i32 %i.qr, ptr %i.qo, align 4, !tbaa !53
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.lr.ph125.i.1
  %i.qs = add i32 %.055123.i, -2                  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0124.i, i64 144
  %.not66.i.1 = icmp eq i32 %i.qs, 0
  br i1 %.not66.i.1, label %psh_glyph_find_strong_points.exit, label %.lr.ph125.i, !llvm.loop !149

psh_glyph_find_strong_points.exit:                ; preds = %.lr.ph125.i.prol.loopexit, %bb.bl, %bb.ai, %.thread115.i
  %.val83 = phi i32 [ 0, %.thread115.i ], [ 0, %bb.ai ], [ %.pr.i, %bb.bl ], [ %.pr.i, %.lr.ph125.i.prol.loopexit ] ; 2 uses
  br i1 %i.fx, label %.split75, label %.split

.split:                                           ; preds = %psh_glyph_find_strong_points.exit
  call fastcc void @psh_glyph_interpolate_strong_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_normal_points(ptr noundef %4, i32 noundef 0)
  call fastcc void @psh_glyph_interpolate_other_points(ptr noundef %4, i32 noundef 0)
  %i.qu = load ptr, ptr %i.dx, align 8, !tbaa !168 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !163
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !164
  %i.qz = load i32, ptr %4, align 8, !tbaa !26    ; 2 uses
  %.not20.i = icmp eq i32 %i.qz, 0
  br i1 %.not20.i, label %psh_glyph_save_points.exit, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.split
  %i.ra = load ptr, ptr %i.k, align 8, !tbaa !23
  br label %.lr.ph.split.us.i107

.lr.ph.split.us.i107:                             ; preds = %bb.bn, %.lr.ph.i106
  %i.rb = phi i32 [ %i.rl, %bb.bn ], [ %i.qz, %.lr.ph.i106 ]
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %bb.bn ], [ 0, %.lr.ph.i106 ] ; 3 uses
  %.019.us.i = phi ptr [ %i.rm, %bb.bn ], [ %i.ra, %.lr.ph.i106 ] ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 64
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !79
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %indvars.iv23.i
  store i64 %i.rd, ptr %i.re, align 8, !tbaa !166
  %i.rf = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 28
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !53
  %i.rh = and i32 %i.rg, 16
  %.not.us.i108 = icmp eq i32 %i.rh, 0
  br i1 %.not.us.i108, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.split.us.i107
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qy, i64 %indvars.iv23.i ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !38
  %i.rk = or i8 %i.rj, 32
  store i8 %i.rk, ptr %i.ri, align 1, !tbaa !38
  %.pre26.i = load i32, ptr %4, align 8, !tbaa !26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.split.us.i107
  %i.rl = phi i32 [ %.pre26.i, %bb.bm ], [ %i.rb, %.lr.ph.split.us.i107 ] ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 72
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.rn = zext i32 %i.rl to i64
  %i.ro = icmp samesign ult i64 %indvars.iv.next24.i, %i.rn
  br i1 %i.ro, label %.lr.ph.split.us.i107, label %psh_glyph_save_points.exit, !llvm.loop !150

.split75:                                         ; preds = %psh_glyph_find_strong_points.exit
  %.not15.i = icmp eq i32 %.val83, 0
  br i1 %.not15.i, label %psh_glyph_find_blue_points.exit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.split75
  %.val84 = load ptr, ptr %i.k, align 8, !tbaa !23
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.i110, %.lr.ph19.i
  %.05117.i = phi ptr [ %.val84, %.lr.ph19.i ], [ %i.uc, %.loopexit.i110 ] ; 7 uses
  %.05416.i = phi i32 [ %.val83, %.lr.ph19.i ], [ %i.ub, %.loopexit.i110 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.05117.i, i64 32
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !39
  %i.rr = and i32 %i.rq, 12
  %.not59.i = icmp eq i32 %i.rr, 0
  br i1 %.not59.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.rs = getelementptr inbounds nuw i8, ptr %.05117.i, i64 36
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !40
  %i.ru = and i32 %i.rt, 12
  %.not60.i = icmp eq i32 %i.ru, 0
  br i1 %.not60.i, label %.loopexit.i110, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.rv = getelementptr inbounds nuw i8, ptr %.05117.i, i64 28 ; 3 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !53 ; 3 uses
  %i.rx = and i32 %i.rw, 16
  %.not61.i = icmp eq i32 %i.rx, 0
  br i1 %.not61.i, label %bb.br, label %.loopexit.i110

bb.br:                                            ; preds = %bb.bq
  %i.ry = getelementptr inbounds nuw i8, ptr %.05117.i, i64 48
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !56 ; 4 uses
  %i.sa = load i32, ptr %i.em, align 8, !tbaa !80 ; 2 uses
  %.not625.i = icmp eq i32 %i.sa, 0
  br i1 %.not625.i, label %._crit_edge.i113, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.br
  %i.sb = load i32, ptr %i.fr, align 8, !tbaa !81 ; 2 uses
  %i.sc = sub nsw i32 0, %i.sb
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr %.05117.i, i64 64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %.lr.ph.i112
  %i.sf = phi i32 [ %i.rw, %.lr.ph.i112 ], [ %i.sv, %bb.bx ] ; 4 uses
  %.0527.i = phi i32 [ %i.sa, %.lr.ph.i112 ], [ %i.sw, %bb.bx ]
  %.0556.i = phi ptr [ %i.fq, %.lr.ph.i112 ], [ %i.sx, %bb.bx ] ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0556.i, i64 12
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !82
end_hunk_0
begin_hunk_1_@ps_hints_t1reset:bb.a
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !127  ; 4 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %ps_dimension_end_mask.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i32 %1, ptr %i.o, align 8, !tbaa !70
  br label %ps_dimension_end_mask.exit.i

ps_dimension_end_mask.exit.i:                     ; preds = %bb.d, %bb.c
  %i.p = add i32 %i.j, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129  ; 2 uses
  %i.s = icmp ugt i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %ps_dimension_end_mask.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.f

bb.e:                                             ; preds = %ps_dimension_end_mask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.t = and i32 %i.j, -8
  %i.u = add i32 %i.t, 8                          ; 2 uses
  %i.v = zext i32 %i.r to i64
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 24, i64 noundef %i.v, i64 noundef %i.w, ptr noundef %i.y, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !67
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i, label %ps_dimension_reset_mask.exit

ps_mask_table_ensure.exit.thread.i.i:             ; preds = %bb.e
  store i32 %i.u, ptr %i.q, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.f

bb.f:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i, %._crit_edge.i.i
  %i.ab = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.z, %ps_mask_table_ensure.exit.thread.i.i ]
  %i.ac = zext i32 %i.p to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -24
  store i32 0, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store i32 0, ptr %i.af, align 8, !tbaa !70
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !130 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not24.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.ak = lshr i32 %i.ah, 3
  %i.al = zext nneg i32 %i.ak to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.al, i1 false)
  br label %bb.h

ps_dimension_reset_mask.exit:                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 %i.p, ptr %i.i, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !127 ; 4 uses
  %.not.i.i20 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i20, label %ps_dimension_end_mask.exit.i21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !131
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store i32 %1, ptr %i.as, align 8, !tbaa !70
  br label %ps_dimension_end_mask.exit.i21

ps_dimension_end_mask.exit.i21:                   ; preds = %bb.i, %bb.h
  %i.at = add i32 %i.an, 1                        ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129 ; 2 uses
  %i.aw = icmp ugt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %ps_dimension_end_mask.exit.i21
  %.phi.trans.insert.i.i23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i.i24 = load ptr, ptr %.phi.trans.insert.i.i23, align 8, !tbaa !67
  br label %bb.k

bb.j:                                             ; preds = %ps_dimension_end_mask.exit.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.ax = and i32 %i.an, -8
  %i.ay = add i32 %i.ax, 8                        ; 2 uses
  %i.az = zext i32 %i.av to i64
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.bd = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 24, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !67
  %i.be = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i27, label %ps_mask_table_ensure.exit.thread.i.i29, label %ps_dimension_reset_mask.exit30

ps_mask_table_ensure.exit.thread.i.i29:           ; preds = %bb.j
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.k

bb.k:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i29, %._crit_edge.i.i22
  %i.bf = phi ptr [ %.pre.i.i24, %._crit_edge.i.i22 ], [ %i.bd, %ps_mask_table_ensure.exit.thread.i.i29 ]
  %i.bg = zext i32 %i.at to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  store i32 0, ptr %i.bi, align 8, !tbaa !71
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8
  store i32 0, ptr %i.bj, align 8, !tbaa !70
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !130 ; 2 uses
  %.not24.i.i25 = icmp eq i32 %i.bl, 0
  br i1 %.not24.i.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = zext nneg i32 %i.bo to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 0, i64 %i.bp, i1 false)
  br label %bb.m

ps_dimension_reset_mask.exit30:                   ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.at, ptr %i.am, align 8, !tbaa !68
  br label %bb.o

bb.n:                                             ; preds = %ps_dimension_reset_mask.exit, %bb.b, %ps_dimension_reset_mask.exit30
  %.014.ph = phi i32 [ %i.be, %ps_dimension_reset_mask.exit30 ], [ 6, %bb.b ], [ %i.aa, %ps_dimension_reset_mask.exit ]
  store i32 %.014.ph, ptr %i.c, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.a, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ps_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_end(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.PS_MaskRec_, align 8        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ps_dimension_end_mask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  store i32 %1, ptr %i.h, align 8, !tbaa !70
  br label %ps_dimension_end_mask.exit

ps_dimension_end_mask.exit:                       ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68   ; 4 uses
  %.not.i3 = icmp eq i32 %i.j, 0
  br i1 %.not.i3, label %ps_mask_table_merge_all.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %ps_dimension_end_mask.exit
  %.01740.i = add i32 %i.j, -1
  %i.k = getelementptr i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %ps_mask_table_merge.exit.thread.i, %.lr.ph43.i
  %4 = phi i32 [ %i.j, %.lr.ph43.i ], [ %7, %ps_mask_table_merge.exit.thread.i ] ; 2 uses
  %.01742.i = phi i32 [ %.01740.i, %.lr.ph43.i ], [ %.017.i, %ps_mask_table_merge.exit.thread.i ] ; 6 uses
  %.017.in41.i = phi i32 [ %i.j, %.lr.ph43.i ], [ %.01742.i, %ps_mask_table_merge.exit.thread.i ]
  %5 = add i32 %.017.in41.i, -2                   ; 2 uses
  %6 = icmp ult i32 %5, %.01742.i
  br i1 %6, label %.lr.ph.i, label %ps_mask_table_merge.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %i.l = zext i32 %.01742.i to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !71   ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %ps_mask_table_test_intersect.exit.thread.i, %.lr.ph.i
  %.01639.i = phi i32 [ %5, %.lr.ph.i ], [ %i.dl, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %i.q = zext i32 %.01639.i to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 6 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %i.v = call i32 @llvm.umin.i32(i32 %i.p, i32 %i.u) ; 4 uses
  %i.w = icmp ugt i32 %i.v, 7
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.x = add i32 %i.v, -8
  %i.y = lshr i32 %i.x, 3
  %narrow.i.i = add nuw nsw i32 %i.y, 1
  %i.z = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.o, i64 %i.z
  %scevgep11.i.i = getelementptr i8, ptr %i.t, i64 %i.z
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.06.i.i = phi i32 [ %i.af, %bb.e ], [ %i.v, %.lr.ph.preheader.i.i ]
  %.0225.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.t, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0234.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.o, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.aa = load i8, ptr %.0234.i.i, align 1, !tbaa !38
  %i.ab = load i8, ptr %.0225.i.i, align 1, !tbaa !38
  %i.ac = and i8 %i.ab, %i.aa
  %.not.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i, label %bb.e, label %ps_mask_table_test_intersect.exit.thread27.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0234.i.i, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0225.i.i, i64 1
  %i.af = add i32 %.06.i.i, -8                    ; 3 uses
  %i.ag = icmp ugt i32 %i.af, 7
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !261

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.023.lcssa.i.i = phi ptr [ %i.o, %bb.d ], [ %scevgep.i.i, %bb.e ]
  %.022.lcssa.i.i = phi ptr [ %i.t, %bb.d ], [ %scevgep11.i.i, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ %i.v, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %i.ah = icmp eq i32 %.0.lcssa.i.i, 0
  br i1 %i.ah, label %ps_mask_table_test_intersect.exit.thread.i, label %ps_mask_table_test_intersect.exit.i

ps_mask_table_test_intersect.exit.i:              ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %.023.lcssa.i.i, align 1, !tbaa !38
  %i.aj = load i8, ptr %.022.lcssa.i.i, align 1, !tbaa !38
  %i.ak = and i8 %i.aj, %i.ai
  %i.al = zext i8 %i.ak to i32
  %i.am = lshr i32 255, %.0.lcssa.i.i
  %.not.not.i = icmp samesign ult i32 %i.am, %i.al
  br i1 %.not.not.i, label %ps_mask_table_test_intersect.exit.thread27.i, label %ps_mask_table_test_intersect.exit.thread.i

ps_mask_table_test_intersect.exit.thread27.i:     ; preds = %ps_mask_table_test_intersect.exit.i, %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.not.i21.i = icmp eq i32 %i.p, 0
  br i1 %.not.i21.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %ps_mask_table_test_intersect.exit.thread27.i
  %i.ao = icmp ugt i32 %i.p, %i.u
  br i1 %i.ao, label %bb.g, label %._crit_edge.i22.i

._crit_edge.i22.i:                                ; preds = %bb.f
  %.pre76.i.i = add i32 %i.p, 7
  %.pre77.i.i = lshr i32 %.pre76.i.i, 3
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !130
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %i.as = add i32 %i.p, 7
  %i.at = lshr i32 %i.as, 3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.au = icmp samesign ugt i32 %i.at, %i.ar
  br i1 %i.au, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.av = add nuw nsw i32 %i.at, 7
  %i.aw = and i32 %i.av, 1073741816               ; 2 uses
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 1, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef %i.t, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.az, ptr %i.an, align 8, !tbaa !72
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.i, label %ps_mask_table_merge.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bb = shl i32 %i.aw, 3
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bc = phi ptr [ %i.az, %bb.i ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.p, ptr %i.r, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i22.i
  %i.bd = phi ptr [ %i.t, %._crit_edge.i22.i ], [ %i.bc, %bb.j ] ; 8 uses
  %.pre-phi78.i.i = phi i32 [ %.pre77.i.i, %._crit_edge.i22.i ], [ %i.at, %bb.j ] ; 9 uses
  %.not6672.i.i = icmp eq i32 %.pre-phi78.i.i, 0
  br i1 %.not6672.i.i, label %.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !72  ; 8 uses
  %i.bf = zext nneg i32 %.pre-phi78.i.i to i64    ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi78.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bd, i64 1
  %i.bg = add nsw i32 %.pre-phi78.i.i, -1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %scevgep69 = getelementptr i8, ptr %scevgep, i64 %i.bh
  %scevgep70 = getelementptr i8, ptr %i.be, i64 1
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.bh
  %bound0 = icmp ult ptr %i.bd, %scevgep71
  %bound1 = icmp ult ptr %i.be, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp samesign ult i32 %.pre-phi78.i.i, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.bf, 28
  %n.vec = and i64 %i.bf, 536870880               ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bd, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.be, i64 %n.vec
  %i.bl = trunc nuw nsw i64 %n.vec to i32
  %i.bm = sub nsw i32 %.pre-phi78.i.i, %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %index ; 3 uses
  %next.gep73 = getelementptr i8, ptr %i.be, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %wide.load74 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %i.bo = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load75 = load <16 x i8>, ptr %next.gep73, align 1, !tbaa !38, !alias.scope !272
  %wide.load76 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !38, !alias.scope !272
  %i.bp = or <16 x i8> %wide.load75, %wide.load
  %i.bq = or <16 x i8> %wide.load76, %wide.load74
  store <16 x i8> %i.bp, ptr %next.gep, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  store <16 x i8> %i.bq, ptr %i.bn, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bf
  br i1 %cmp.n, label %.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i24.i.preheader, label %vec.epilog.ph, !prof !273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.bf, 536870908             ; 5 uses
  %i.bs = getelementptr i8, ptr %i.bd, i64 %n.vec79
  %i.bt = getelementptr i8, ptr %i.be, i64 %n.vec79
  %i.bu = trunc nuw nsw i64 %n.vec79 to i32
  %i.bv = sub nsw i32 %.pre-phi78.i.i, %i.bu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.bd, i64 %index80 ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.be, i64 %index80
  %wide.load83 = load <4 x i8>, ptr %next.gep81, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %wide.load84 = load <4 x i8>, ptr %next.gep82, align 1, !tbaa !38, !alias.scope !272
  %i.bw = or <4 x i8> %wide.load84, %wide.load83
  store <4 x i8> %i.bw, ptr %next.gep81, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %index.next85 = add nuw i64 %index80, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next85, %n.vec79
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %n.vec79, %i.bf
  br i1 %cmp.n86, label %.thread.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04975.i.i.ph = phi ptr [ %i.bd, %iter.check ], [ %i.bd, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 2 uses
  %.05074.i.i.ph = phi ptr [ %i.be, %iter.check ], [ %i.be, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 2 uses
  %.05173.i.i.ph = phi i32 [ %.pre-phi78.i.i, %iter.check ], [ %.pre-phi78.i.i, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 4 uses
  %i.by = add nsw i32 %.05173.i.i.ph, -1
  %xtraiter = and i32 %.05173.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader, %.lr.ph.i24.i.prol
  %.04975.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i24.i.prol ], [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ] ; 3 uses
  %.05074.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i24.i.prol ], [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.05173.i.i.prol = phi i32 [ %i.ce, %.lr.ph.i24.i.prol ], [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader ]
  %i.bz = load i8, ptr %.04975.i.i.prol, align 1, !tbaa !38
  %i.ca = load i8, ptr %.05074.i.i.prol, align 1, !tbaa !38
  %i.cb = or i8 %i.ca, %i.bz
  store i8 %i.cb, ptr %.04975.i.i.prol, align 1, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.04975.i.i.prol, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05074.i.i.prol, i64 1 ; 2 uses
  %i.ce = add nsw i32 %.05173.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !267

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader
  %.04975.i.i.unr = phi ptr [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.cc, %.lr.ph.i24.i.prol ]
  %.05074.i.i.unr = phi ptr [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.cd, %.lr.ph.i24.i.prol ]
  %.05173.i.i.unr = phi i32 [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.ce, %.lr.ph.i24.i.prol ]
  %i.cf = icmp ult i32 %i.by, 3
  br i1 %i.cf, label %.thread.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.04975.i.i = phi ptr [ %i.cy, %.lr.ph.i24.i ], [ %.04975.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 6 uses
  %.05074.i.i = phi ptr [ %i.cz, %.lr.ph.i24.i ], [ %.05074.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 5 uses
  %.05173.i.i = phi i32 [ %i.da, %.lr.ph.i24.i ], [ %.05173.i.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %i.cg = load i8, ptr %.04975.i.i, align 1, !tbaa !38
  %i.ch = load i8, ptr %.05074.i.i, align 1, !tbaa !38
  %i.ci = or i8 %i.ch, %i.cg
  store i8 %i.ci, ptr %.04975.i.i, align 1, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 1
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !38
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !38
  %i.cn = or i8 %i.cm, %i.cl
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 2
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !38
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !38
  %i.cs = or i8 %i.cr, %i.cq
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 3
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !38
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !38
  %i.cx = or i8 %i.cw, %i.cv
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 4
  %i.da = add nsw i32 %.05173.i.i, -4             ; 2 uses
  %.not66.i.i.3 = icmp eq i32 %i.da, 0
  br i1 %.not66.i.i.3, label %.thread.i.i, label %.lr.ph.i24.i, !llvm.loop !268

.thread.i.i:                                      ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block, %vec.epilog.middle.block, %bb.k, %ps_mask_table_test_intersect.exit.thread27.i
  store i32 0, ptr %i.m, align 8, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 0, ptr %i.db, align 8, !tbaa !70
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.dd = xor i32 %.01742.i, -1
  %i.de = add i32 %i.dc, %i.dd                    ; 2 uses
  %.not67.i.i = icmp eq i32 %i.de, 0
  br i1 %.not67.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !275
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dg = zext i32 %i.de to i64                   ; 2 uses
  %i.dh = mul nuw nsw i64 %i.dg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.df, i64 %i.dh, i1 false)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i.i
  %i.dj = phi i32 [ %.pre.i.i, %bb.l ], [ %i.dc, %.thread.i.i ]
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  store i32 %i.dk, ptr %i.i, align 8, !tbaa !68
  br label %ps_mask_table_merge.exit.thread.i

ps_mask_table_merge.exit.i:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %ps_mask_table_merge_all.exit

ps_mask_table_test_intersect.exit.thread.i:       ; preds = %ps_mask_table_test_intersect.exit.i, %._crit_edge.i.i
  %i.dl = add i32 %.01639.i, -1                   ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %.01742.i
  br i1 %i.dm, label %bb.d, label %ps_mask_table_merge.exit.thread.i, !llvm.loop !269

ps_mask_table_merge.exit.thread.i:                ; preds = %ps_mask_table_test_intersect.exit.thread.i, %bb.m, %bb.c
  %7 = phi i32 [ %i.dk, %bb.m ], [ %4, %bb.c ], [ %4, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %.017.i = add i32 %.01742.i, -1                 ; 2 uses
  %i.dn = icmp ult i32 %.017.i, %7
  br i1 %i.dn, label %bb.c, label %ps_mask_table_merge_all.exit, !llvm.loop !270

ps_mask_table_merge_all.exit:                     ; preds = %ps_mask_table_merge.exit.thread.i, %ps_dimension_end_mask.exit, %ps_mask_table_merge.exit.i
  %.2.i = phi i32 [ %i.ba, %ps_mask_table_merge.exit.i ], [ 0, %ps_dimension_end_mask.exit ], [ 0, %ps_mask_table_merge.exit.thread.i ]
  ret i32 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_add_t1stem(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp slt i32 %2, 0
  %i.e = icmp eq i32 %2, -21                      ; 2 uses
  %i.f = add i32 %1, -21
  %spec.select50 = select i1 %i.e, i32 3, i32 1
  %.038 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.137 = select i1 %i.e, i32 %i.f, i32 %1        ; 2 uses
  %.1 = select i1 %i.d, i32 %spec.select50, i32 0
  %i.g = load i32, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !277  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03270 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %storemerge69 = phi ptr [ %i.p, %bb.c ], [ %i.i, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %storemerge69, align 4, !tbaa !278
  %i.k = icmp eq i32 %i.j, %.137
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge69, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !279
  %i.n = icmp eq i32 %i.m, %.038
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = add nuw i32 %.03270, 1                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge69, i64 12
  %exitcond.not = icmp eq i32 %i.o, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !276

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.q = add i32 %i.g, 1                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !280  ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.u = and i32 %i.g, -8
  %i.v = add i32 %i.u, 8                          ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = zext i32 %i.v to i64
  %i.y = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 12, i64 noundef %i.w, i64 noundef %i.x, ptr noundef %i.i, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !119
  %i.z = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %ps_hint_table_ensure.exit.thread.i, label %ps_hint_table_alloc.exit

ps_hint_table_ensure.exit.thread.i:               ; preds = %bb.d
  store i32 %i.v, ptr %i.r, align 4, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.e

ps_hint_table_alloc.exit:                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.s

bb.e:                                             ; preds = %ps_hint_table_ensure.exit.thread.i, %._crit_edge
  %i.aa = phi ptr [ %i.y, %ps_hint_table_ensure.exit.thread.i ], [ %i.i, %._crit_edge ]
  %i.ab = zext i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  store i32 %i.q, ptr %0, align 8, !tbaa !118
  store i32 %.137, ptr %i.ad, align 4, !tbaa !278
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  store i32 %.038, ptr %i.ae, align 4, !tbaa !279
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %.1, ptr %i.af, align 4, !tbaa !121
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %.03268 = phi i32 [ %i.g, %bb.e ], [ %.03270, %bb.b ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !68 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !67
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.ao = call ptr @ft_mem_realloc(ptr noundef %3, i64 noundef 24, i64 noundef 0, i64 noundef 8, ptr noundef %i.an, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !67
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i, label %ps_mask_table_last.exit

ps_mask_table_ensure.exit.thread.i.i:             ; preds = %bb.g
  store i32 8, ptr %i.aj, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.h

bb.h:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i, %._crit_edge.i.i
  %i.aq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ao, %ps_mask_table_ensure.exit.thread.i.i ] ; 5 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !130 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.at, 0
  br i1 %.not24.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.aw = lshr i32 %i.at, 3
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.ax, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %i.ag, align 8, !tbaa !68
  br label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !67
  %i.ba = zext i32 %i.ah to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -24
  br label %bb.l

ps_mask_table_last.exit:                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.s

bb.l:                                             ; preds = %bb.k, %bb.j
  %.08.i.ph = phi ptr [ %i.aq, %bb.j ], [ %i.bc, %bb.k ] ; 5 uses
  %i.bd = load i32, ptr %.08.i.ph, align 8, !tbaa !71
  %.not.i = icmp ult i32 %.03268, %i.bd
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add i32 %.03268, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.ph, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !130
  %i.bh = lshr i32 %i.bg, 3                       ; 2 uses
  %i.bi = add i32 %.03268, 8
  %i.bj = lshr i32 %i.bi, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.bk = icmp samesign ugt i32 %i.bj, %i.bh
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = add nuw nsw i32 %i.bj, 7
  %i.bm = and i32 %i.bl, 1073741816               ; 2 uses
  %i.bn = zext nneg i32 %i.bh to i64
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.ph, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = call ptr @ft_mem_realloc(ptr noundef %3, i64 noundef 1, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef %i.bq, ptr noundef nonnull %i.a) #12
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !72
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i53, label %bb.o, label %ps_mask_set_bit.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = shl i32 %i.bm, 3
  store i32 %i.bt, ptr %i.bf, align 4, !tbaa !130
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.be, ptr %.08.i.ph, align 8, !tbaa !71
  br label %bb.q

ps_mask_set_bit.exit:                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.smax.v4i16
!62 = !{!61, !5, i64 0}
!63 = !{!61, !32, i64 8}
!64 = !{!61, !60, i64 56}
!65 = !{!"p1 _ZTS11PS_MaskRec_", !9, i64 0}
!66 = !{!"PS_Mask_TableRec_", !5, i64 0, !5, i64 4, !65, i64 8}
!67 = !{!66, !65, i64 8}
!68 = !{!66, !5, i64 0}
!69 = !{!"PS_MaskRec_", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 16}
!70 = !{!69, !5, i64 16}
!71 = !{!69, !5, i64 0}
!72 = !{!69, !10, i64 8}
!73 = !{!"PSH_HintRec_", !5, i64 0, !5, i64 4, !13, i64 8, !13, i64 16, !5, i64 24, !32, i64 32, !5, i64 40}
!74 = !{!73, !5, i64 24}
!75 = !{!61, !5, i64 4}
!76 = !{!61, !58, i64 16}
!77 = !{!32, !32, i64 0}
!78 = !{!73, !5, i64 0}
!79 = !{!33, !13, i64 64}
!80 = !{!12, !5, i64 0}
!81 = !{!14, !5, i64 3120}
!82 = !{!46, !5, i64 12}
!83 = !{!46, !5, i64 8}
!84 = !{!14, !4, i64 3124}
!85 = !{!14, !5, i64 3116}
!86 = !{!46, !13, i64 32}
!87 = !{!46, !13, i64 40}
!88 = !{!61, !59, i64 40}
!89 = !{!61, !5, i64 32}
!90 = !{!61, !58, i64 24}
!91 = !{!43, !13, i64 400}
!92 = !{!"PSH_WidthRec_", !5, i64 0, !13, i64 8, !13, i64 16}
!93 = !{!92, !5, i64 0}
!94 = !{!92, !13, i64 8}
!95 = !{!46, !5, i64 4}
!96 = !{!46, !13, i64 16}
!97 = !{!73, !13, i64 8}
!98 = !{!73, !13, i64 16}
!99 = !{!73, !5, i64 4}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = !{!"p1 _ZTS16FT_Module_Class_", !9, i64 0}
!103 = !{!"p1 _ZTS14FT_LibraryRec_", !9, i64 0}
!104 = !{!"FT_ModuleRec_", !102, i64 0, !103, i64 8, !11, i64 16}
!105 = !{!"PS_HintsRec_", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 24}
!106 = !{!"PSH_Globals_FuncsRec_", !9, i64 0, !9, i64 8, !9, i64 16}
!107 = !{!"p1 _ZTS12T1_HintsRec_", !9, i64 0}
!108 = !{!"T1_Hints_FuncsRec_", !107, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!109 = !{!"p1 _ZTS12T2_HintsRec_", !9, i64 0}
!110 = !{!"T2_Hints_FuncsRec_", !109, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!111 = !{!"PS_Hinter_Module_Rec_", !104, i64 0, !105, i64 24, !106, i64 144, !108, i64 168, !110, i64 224}
!112 = !{!105, !11, i64 0}
!113 = !{!111, !107, i64 168}
!114 = !{!111, !109, i64 224}
!115 = !{!105, !5, i64 8}
!116 = !{!"p1 _ZTS11PS_HintRec_", !9, i64 0}
!117 = !{!"PS_Hint_TableRec_", !5, i64 0, !5, i64 4, !116, i64 8}
!118 = !{!117, !5, i64 0}
!119 = !{!117, !116, i64 8}
!120 = !{!"PS_HintRec_", !5, i64 0, !5, i64 4, !5, i64 8}
!121 = !{!120, !5, i64 8}
!122 = !{!73, !32, i64 32}
!123 = !{!43, !5, i64 0}
!124 = !{!105, !5, i64 16}
!125 = !{!"PS_DimensionRec_", !117, i64 0, !66, i64 16, !66, i64 32}
!126 = !{!125, !5, i64 0}
!127 = !{!125, !5, i64 16}
!128 = !{!125, !5, i64 32}
!129 = !{!66, !5, i64 4}
!130 = !{!69, !5, i64 4}
!131 = !{!125, !65, i64 24}
!132 = distinct !{!132, !35}
!133 = distinct !{!133, !36}
!134 = distinct !{!134, !36}
!135 = distinct !{!135, !36}
!136 = distinct !{!136, !35}
!137 = distinct !{!137, !35}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !36}
!145 = distinct !{!145, !36}
!146 = distinct !{!146, !36}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !35}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !36}
!151 = distinct !{!151, !36}
!152 = distinct !{!152, !36}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = !{!"p1 _ZTS10FT_Vector_", !9, i64 0}
!156 = !{!"p1 short", !9, i64 0}
!157 = !{!"FT_Outline_", !8, i64 0, !8, i64 2, !155, i64 8, !10, i64 16, !156, i64 24, !5, i64 32}
!158 = !{!157, !8, i64 2}
!159 = !{!157, !8, i64 0}
!160 = !{!157, !156, i64 24}
!161 = !{!33, !17, i64 0}
!162 = !{!33, !18, i64 16}
!163 = !{!157, !155, i64 8}
!164 = !{!157, !10, i64 16}
!165 = !{!"FT_Vector_", !13, i64 0, !13, i64 8}
!166 = !{!165, !13, i64 0}
!167 = !{!165, !13, i64 8}
!168 = !{!21, !19, i64 32}
!169 = !{!33, !13, i64 56}
!170 = !{!73, !5, i64 40}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = distinct !{!173, !36}
!174 = distinct !{!174, !36}
!175 = !{!42, !5, i64 0}
!176 = !{!92, !13, i64 16}
!177 = !{!14, !13, i64 3104}
!178 = !{!14, !5, i64 3112}
!179 = !{!46, !13, i64 24}
!180 = distinct !{!180, !36}
!181 = distinct !{!181, !36, !100, !101}
!182 = distinct !{!182, !36, !101, !100}
!183 = distinct !{!183, !36}
!184 = distinct !{!184, !36}
!185 = distinct !{!185, !36}
!186 = distinct !{!186, !36}
!187 = distinct !{!187, !36}
!188 = !{!17, !17, i64 0}
!189 = distinct !{!189, !36}
!190 = distinct !{!190, !36}
!191 = distinct !{!191, !36}
!192 = distinct !{!192, !36}
!193 = distinct !{!193, !36}
!194 = !{!111, !11, i64 16}
!195 = !{!106, !9, i64 0}
!196 = !{!106, !9, i64 8}
!197 = !{!106, !9, i64 16}
!198 = !{!108, !9, i64 8}
!199 = !{!108, !9, i64 16}
!200 = !{!108, !9, i64 24}
!201 = !{!108, !9, i64 32}
!202 = !{!108, !9, i64 40}
!203 = !{!108, !9, i64 48}
!204 = !{!110, !9, i64 8}
!205 = !{!110, !9, i64 16}
!206 = !{!110, !9, i64 24}
!207 = !{!110, !9, i64 32}
!208 = !{!110, !9, i64 40}
!209 = !{!110, !9, i64 48}
!210 = distinct !{!210, !35}
!211 = distinct !{!211, !36}
!212 = distinct !{!212, !36}
!213 = distinct !{!213, !36}
!214 = distinct !{!214, !36}
!215 = distinct !{!215, !36}
!216 = !{!61, !59, i64 48}
!217 = distinct !{!217, !36}
!218 = distinct !{!218, !36}
!219 = distinct !{!219, !36}
!220 = distinct !{!220, !36}
!221 = distinct !{!221, !36}
!222 = distinct !{!222, !36}
!223 = distinct !{!223, !36}
!224 = distinct !{!224, !36}
!225 = distinct !{!225, !35}
!226 = distinct !{!226, !36}
!227 = distinct !{!227, !35}
!228 = distinct !{!228, !36}
!229 = distinct !{!229, !36, !100, !101}
!230 = distinct !{!230, !36, !101, !100}
!231 = distinct !{!231, !36, !100, !101}
!232 = distinct !{!232, !36, !101, !100}
!233 = distinct !{!233, !36, !100, !101}
!234 = distinct !{!234, !36, !101, !100}
!235 = distinct !{!235, !36, !100, !101}
!236 = distinct !{!236, !36, !101, !100}
!237 = !{!"PS_PrivateRec_", !5, i64 0, !5, i64 4, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !4, i64 40, !4, i64 60, !4, i64 88, !13, i64 112, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 130, !4, i64 132, !4, i64 133, !4, i64 134, !4, i64 135, !4, i64 136, !4, i64 162, !13, i64 192, !13, i64 200, !13, i64 208, !4, i64 216}
!238 = !{!237, !4, i64 132}
!239 = !{!237, !4, i64 133}
!240 = !{!237, !4, i64 8}
!241 = !{!237, !4, i64 9}
!242 = !{!237, !5, i64 124}
!243 = !{!237, !4, i64 10}
!244 = !{!237, !4, i64 11}
!245 = !{!237, !13, i64 112}
!246 = !{!15, !13, i64 3928}
!247 = !{!237, !5, i64 120}
!248 = !{!15, !5, i64 3936}
!249 = !{!15, !5, i64 3944}
!250 = !{!20, !20, i64 0}
!251 = !{!15, !5, i64 1600}
!252 = !{!15, !5, i64 2376}
!253 = !{!15, !5, i64 3152}
!254 = distinct !{!254, !36}
!255 = distinct !{!255, !36}
!256 = distinct !{!256, !36}
!257 = distinct !{!257, !36}
!258 = distinct !{!258, !36}
!259 = distinct !{!259, !36}
!260 = !{!125, !65, i64 40}
!261 = distinct !{!261, !36}
!262 = distinct !{!262, !"LVerDomain"}
!263 = distinct !{!263, !262}
!264 = distinct !{!264, !262}
!265 = distinct !{!265, !36, !100, !101}
!266 = distinct !{!266, !36, !100, !101}
!267 = distinct !{!267, !35}
!268 = distinct !{!268, !36, !100}
!269 = distinct !{!269, !36}
!270 = distinct !{!270, !36}
!271 = !{!263}
!272 = !{!264}
!273 = !{!"branch_weights", i32 4, i32 28}
!274 = !{!10, !10, i64 0}
!275 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 8, !274, i64 16, i64 4, !24}
!276 = distinct !{!276, !36}
!277 = !{!125, !116, i64 8}
!278 = !{!120, !5, i64 0}
!279 = !{!120, !5, i64 4}
!280 = !{!117, !5, i64 4}
!281 = distinct !{!281, !36}
!282 = distinct !{!282, !36}
!283 = distinct !{!283, !36}
!284 = distinct !{!284, !36}
!285 = distinct !{!285, !36}
!286 = distinct !{!286, !36}
end_hunk_2
