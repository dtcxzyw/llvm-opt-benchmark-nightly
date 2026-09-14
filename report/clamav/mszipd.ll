Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mszipd?download=true
inline.NumInlined: 22
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@inflate:bb.a
.lr.ph751.3:                                      ; preds = %.lr.ph751.2
  %i.cs = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.cs, ptr %i.z, align 1, !tbaa !32
  %i.ct = icmp eq i32 %i.ci, 32
  br i1 %i.ct, label %._crit_edge759, label %.thread

.lr.ph758:                                        ; preds = %.lr.ph758.preheader, %bb.y
  %indvars.iv = phi i64 [ %.0295.lcssa.ph, %.lr.ph758.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.5337756 = phi ptr [ %.3335.lcssa, %.lr.ph758.preheader ], [ %.6338, %bb.y ] ; 2 uses
  %.5350755 = phi ptr [ %.3348.lcssa, %.lr.ph758.preheader ], [ %i.dk, %bb.y ] ; 2 uses
  %.not411 = icmp ult ptr %.5350755, %.5337756
  br i1 %.not411, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.lr.ph758
  %i.cu = load ptr, ptr %0, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !20
  %i.da = call i32 %i.cw(ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef %i.cz) #7, !inline_history !0 ; 3 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp eq i32 %i.da, 0
  br i1 %i.dc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i427 = icmp eq i8 %i.dd, 0
  br i1 %.not.i427, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 0, ptr %i.df, align 1, !tbaa !32
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.dg, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i425 = phi i32 [ 2, %bb.w ], [ %i.da, %bb.u ]
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.dh, ptr %i.e, align 8, !tbaa !26
  %i.di = zext nneg i32 %.0.i425 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di ; 2 uses
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph758
  %.6351 = phi ptr [ %i.dh, %bb.x ], [ %.5350755, %.lr.ph758 ] ; 2 uses
  %.6338 = phi ptr [ %i.dj, %bb.x ], [ %.5337756, %.lr.ph758 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.6351, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.6351, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge759, label %.lr.ph758

._crit_edge759:                                   ; preds = %bb.y, %.lr.ph751.3
  %.3322.lcssa981 = phi i32 [ 0, %.lr.ph751.3 ], [ %.3322.lcssa.ph, %bb.y ]
  %.5350.lcssa = phi ptr [ %.3348.lcssa, %.lr.ph751.3 ], [ %i.dk, %bb.y ] ; 2 uses
  %.5337.lcssa = phi ptr [ %.3335.lcssa, %.lr.ph751.3 ], [ %.6338, %bb.y ] ; 2 uses
  %i.dn = load i16, ptr %i.d, align 2             ; 3 uses
  %i.do = load i16, ptr %i.x, align 2
  %i.dp = xor i16 %i.do, %i.dn
  %.not406 = icmp eq i16 %i.dp, -1
  br i1 %.not406, label %.preheader494, label %.thread

.preheader494:                                    ; preds = %._crit_edge759
  %.not407762 = icmp eq i16 %i.dn, 0
  br i1 %.not407762, label %._crit_edge767, label %.lr.ph766.preheader

.lr.ph766.preheader:                              ; preds = %.preheader494
  %i.dq = zext i16 %i.dn to i32
  br label %.lr.ph766

.lr.ph766:                                        ; preds = %.lr.ph766.preheader, %bb.ah
  %.0303765 = phi i32 [ %i.ew, %bb.ah ], [ %i.dq, %.lr.ph766.preheader ] ; 2 uses
  %.7339764 = phi ptr [ %.8340, %bb.ah ], [ %.5337.lcssa, %.lr.ph766.preheader ] ; 2 uses
  %.7352763 = phi ptr [ %i.ev, %bb.ah ], [ %.5350.lcssa, %.lr.ph766.preheader ] ; 2 uses
  %.not408 = icmp ult ptr %.7352763, %.7339764
  br i1 %.not408, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.lr.ph766
  %i.dr = load ptr, ptr %0, align 8, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !31
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dw = load i32, ptr %i.o, align 4, !tbaa !20
  %i.dx = call i32 %i.dt(ptr noundef %i.du, ptr noundef %i.dv, i32 noundef %i.dw) #7, !inline_history !0 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp eq i32 %i.dx, 0
  br i1 %i.dz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i431 = icmp eq i8 %i.ea, 0
  br i1 %.not.i431, label %bb.ac, label %.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store i8 0, ptr %i.ec, align 1, !tbaa !32
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.ed, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0.i429 = phi i32 [ 2, %bb.ac ], [ %i.dx, %bb.aa ]
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.ee, ptr %i.e, align 8, !tbaa !26
  %i.ef = zext nneg i32 %.0.i429 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.g, align 8, !tbaa !25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph766
  %.8353 = phi ptr [ %i.ee, %bb.ad ], [ %.7352763, %.lr.ph766 ] ; 3 uses
  %.8340 = phi ptr [ %i.eg, %bb.ad ], [ %.7339764, %.lr.ph766 ] ; 3 uses
  %i.eh = ptrtoint ptr %.8340 to i64
  %i.ei = ptrtoint ptr %.8353 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %.0303765, i32 %i.ek)
  %i.el = load i32, ptr %i.u, align 8, !tbaa !33  ; 2 uses
  %i.em = sub i32 32768, %i.el
  %.1299 = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.em) ; 3 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !49
  %i.eq = zext i32 %i.el to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.eq
  %i.es = zext nneg i32 %.1299 to i64             ; 2 uses
  call void %i.ep(ptr noundef %.8353, ptr noundef nonnull %i.er, i64 noundef %i.es) #7
  %i.et = load i32, ptr %i.u, align 8, !tbaa !33
  %i.eu = add i32 %i.et, %.1299                   ; 2 uses
  store i32 %i.eu, ptr %i.u, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw i8, ptr %.8353, i64 %i.es ; 2 uses
  %i.ew = sub nuw nsw i32 %.0303765, %.1299       ; 2 uses
  %i.ex = icmp eq i32 %i.eu, 32768
  br i1 %i.ex, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ey = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ez = call i32 %i.ey(ptr noundef nonnull %0, i32 noundef 32768) #7
  %.not410 = icmp eq i32 %i.ez, 0
  br i1 %.not410, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.u, align 8, !tbaa !33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.not407 = icmp eq i32 %i.ew, 0
  br i1 %.not407, label %._crit_edge767, label %.lr.ph766

.thread.sink.split:                               ; preds = %bb.v, %bb.t, %bb.ab, %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.fa, align 8, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %._crit_edge759, %.lr.ph751.3, %bb.af, %.thread.sink.split
  %.1369.ph = phi i32 [ 3, %.thread.sink.split ], [ -3, %bb.af ], [ -4, %.lr.ph751.3 ], [ -2, %._crit_edge759 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.thread477

._crit_edge767:                                   ; preds = %bb.ah, %.preheader494
  %.7352.lcssa = phi ptr [ %.5350.lcssa, %.preheader494 ], [ %i.ev, %bb.ah ]
  %.7339.lcssa = phi ptr [ %.5337.lcssa, %.preheader494 ], [ %.8340, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit498

.preheader500:                                    ; preds = %._crit_edge674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 8, i64 144, i1 false), !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false), !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep882, i8 7, i64 24, i1 false), !tbaa !32
  store i64 578721382704613384, ptr %scevgep884, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 5, i64 32, i1 false), !tbaa !32
  br label %.loopexit501

default.unreachable:                              ; preds = %._crit_edge674
  unreachable

bb.ai:                                            ; preds = %._crit_edge674
  store ptr %.3348.lcssa, ptr %i.e, align 8, !tbaa !26
  store ptr %.3335.lcssa, ptr %i.g, align 8, !tbaa !25
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !27
  store i32 %i.cf, ptr %i.k, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %1 = icmp samesign ult i32 %.2314.lcssa, 7
  br i1 %1, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ai
  %.not248.i = icmp ult ptr %.3348.lcssa, %.3335.lcssa
  br i1 %.not248.i, label %._crit_edge.i.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fb = load ptr, ptr %0, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fe = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.fg = load i32, ptr %i.o, align 4, !tbaa !20
  %i.fh = call i32 %i.fd(ptr noundef %i.fe, ptr noundef %i.ff, i32 noundef %i.fg) #7, !inline_history !42 ; 3 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %zip_read_lens.exit.thread.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = icmp eq i32 %i.fh, 0
  br i1 %i.fj, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fk = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i, label %bb.am, label %zip_read_lens.exit.thread.sink.split

bb.am:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 0, ptr %i.fm, align 1, !tbaa !32
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.fn, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0.i.i = phi i32 [ 2, %bb.am ], [ %i.fh, %bb.ak ]
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.fo, ptr %i.e, align 8, !tbaa !26
  %i.fp = zext nneg i32 %.0.i.i to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp ; 2 uses
  store ptr %i.fq, ptr %i.g, align 8, !tbaa !25
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %bb.an, %.lr.ph.i
  %.1209.i = phi ptr [ %i.fo, %bb.an ], [ %.3348.lcssa, %.lr.ph.i ] ; 2 uses
  %.1197.i = phi ptr [ %i.fq, %bb.an ], [ %.3335.lcssa, %.lr.ph.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.1209.i, i64 1
  %i.fs = load i8, ptr %.1209.i, align 1, !tbaa !32
  %i.ft = zext i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, %i.cf
  %i.fv = or i32 %i.fu, %i.ce
  %i.fw = add nuw nsw i32 %.2314.lcssa, 6
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.ai
  %.0208.lcssa.i = phi ptr [ %.3348.lcssa, %bb.ai ], [ %i.fr, %._crit_edge.i.loopexit ] ; 2 uses
  %.0196.lcssa.i = phi ptr [ %.3335.lcssa, %bb.ai ], [ %.1197.i, %._crit_edge.i.loopexit ] ; 2 uses
  %.0184.lcssa.i = phi i32 [ %i.ce, %bb.ai ], [ %i.fv, %._crit_edge.i.loopexit ] ; 2 uses
  %.0177.lcssa.i = phi i32 [ %i.cf, %bb.ai ], [ %i.fw, %._crit_edge.i.loopexit ] ; 2 uses
  %i.fx = and i32 %.0184.lcssa.i, 31              ; 4 uses
  %i.fy = lshr i32 %.0184.lcssa.i, 5              ; 2 uses
  %i.fz = add nsw i32 %.0177.lcssa.i, -5          ; 2 uses
  %i.ga = add nuw nsw i32 %i.fx, 257              ; 2 uses
  %i.gb = icmp samesign ult i32 %.0177.lcssa.i, 10
  br i1 %i.gb, label %.lr.ph424.i, label %._crit_edge425.i

.lr.ph424.i:                                      ; preds = %._crit_edge.i, %bb.at
  %.1178422.i = phi i32 [ %i.gx, %bb.at ], [ %i.fz, %._crit_edge.i ] ; 3 uses
  %.1185421.i = phi i32 [ %i.gw, %bb.at ], [ %i.fy, %._crit_edge.i ]
  %.2198420.i = phi ptr [ %.3199.i, %bb.at ], [ %.0196.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.2210419.i = phi ptr [ %i.gs, %bb.at ], [ %.0208.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not246.i = icmp ult ptr %.2210419.i, %.2198420.i
  br i1 %.not246.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph424.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !31
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.gg = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.gh = load i32, ptr %i.o, align 4, !tbaa !20
  %i.gi = call i32 %i.ge(ptr noundef %i.gf, ptr noundef %i.gg, i32 noundef %i.gh) #7, !inline_history !42 ; 3 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %zip_read_lens.exit.thread.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gk = icmp eq i32 %i.gi, 0
  br i1 %i.gk, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gl = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i252.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i252.i, label %bb.ar, label %zip_read_lens.exit.thread.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store i8 0, ptr %i.gn, align 1, !tbaa !32
  %i.go = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.go, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.0.i250.i = phi i32 [ 2, %bb.ar ], [ %i.gi, %bb.ap ]
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.gp, ptr %i.e, align 8, !tbaa !26
  %i.gq = zext nneg i32 %.0.i250.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gq ; 2 uses
  store ptr %i.gr, ptr %i.g, align 8, !tbaa !25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph424.i
  %.3211.i = phi ptr [ %i.gp, %bb.as ], [ %.2210419.i, %.lr.ph424.i ] ; 2 uses
  %.3199.i = phi ptr [ %i.gr, %bb.as ], [ %.2198420.i, %.lr.ph424.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.3211.i, i64 1 ; 2 uses
  %i.gt = load i8, ptr %.3211.i, align 1, !tbaa !32
  %i.gu = zext i8 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, %.1178422.i
  %i.gw = or i32 %i.gv, %.1185421.i               ; 2 uses
  %i.gx = add nuw nsw i32 %.1178422.i, 8          ; 2 uses
  %i.gy = icmp slt i32 %.1178422.i, -3
  br i1 %i.gy, label %.lr.ph424.i, label %._crit_edge425.i

._crit_edge425.i:                                 ; preds = %bb.at, %._crit_edge.i
  %.2210.lcssa.i = phi ptr [ %.0208.lcssa.i, %._crit_edge.i ], [ %i.gs, %bb.at ] ; 2 uses
  %.2198.lcssa.i = phi ptr [ %.0196.lcssa.i, %._crit_edge.i ], [ %.3199.i, %bb.at ] ; 2 uses
  %.1185.lcssa.i = phi i32 [ %i.fy, %._crit_edge.i ], [ %i.gw, %bb.at ] ; 2 uses
  %.1178.lcssa.i = phi i32 [ %i.fz, %._crit_edge.i ], [ %i.gx, %bb.at ] ; 2 uses
  %i.gz = and i32 %.1185.lcssa.i, 31              ; 4 uses
  %i.ha = lshr i32 %.1185.lcssa.i, 5              ; 2 uses
  %i.hb = add nsw i32 %.1178.lcssa.i, -5          ; 2 uses
  %i.hc = add nuw nsw i32 %i.gz, 1                ; 2 uses
  %2 = icmp samesign ult i32 %.1178.lcssa.i, 9
  br i1 %2, label %.lr.ph435.i, label %._crit_edge436.i

.lr.ph435.i:                                      ; preds = %._crit_edge425.i, %bb.az
  %.2179433.i = phi i32 [ %i.hy, %bb.az ], [ %i.hb, %._crit_edge425.i ] ; 3 uses
  %.2186432.i = phi i32 [ %i.hx, %bb.az ], [ %i.ha, %._crit_edge425.i ]
  %.4200431.i = phi ptr [ %.5201.i, %bb.az ], [ %.2198.lcssa.i, %._crit_edge425.i ] ; 2 uses
  %.4212430.i = phi ptr [ %i.ht, %bb.az ], [ %.2210.lcssa.i, %._crit_edge425.i ] ; 2 uses
  %.not244.i = icmp ult ptr %.4212430.i, %.4200431.i
  br i1 %.not244.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %.lr.ph435.i
  %i.hd = load ptr, ptr %0, align 8, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !31
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.hh = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.hi = load i32, ptr %i.o, align 4, !tbaa !20
  %i.hj = call i32 %i.hf(ptr noundef %i.hg, ptr noundef %i.hh, i32 noundef %i.hi) #7, !inline_history !42 ; 3 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %zip_read_lens.exit.thread.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = icmp eq i32 %i.hj, 0
  br i1 %i.hl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hm = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i256.i = icmp eq i8 %i.hm, 0
  br i1 %.not.i256.i, label %bb.ax, label %zip_read_lens.exit.thread.sink.split

bb.ax:                                            ; preds = %bb.aw
  %i.hn = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 0, ptr %i.ho, align 1, !tbaa !32
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.hp, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %.0.i254.i = phi i32 [ 2, %bb.ax ], [ %i.hj, %bb.av ]
  %i.hq = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.hq, ptr %i.e, align 8, !tbaa !26
  %i.hr = zext nneg i32 %.0.i254.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  store ptr %i.hs, ptr %i.g, align 8, !tbaa !25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph435.i
  %.5213.i = phi ptr [ %i.hq, %bb.ay ], [ %.4212430.i, %.lr.ph435.i ] ; 2 uses
  %.5201.i = phi ptr [ %i.hs, %bb.ay ], [ %.4200431.i, %.lr.ph435.i ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.5213.i, i64 1 ; 2 uses
  %i.hu = load i8, ptr %.5213.i, align 1, !tbaa !32
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, %.2179433.i
  %i.hx = or i32 %i.hw, %.2186432.i               ; 2 uses
  %i.hy = add nuw nsw i32 %.2179433.i, 8          ; 2 uses
  %i.hz = icmp slt i32 %.2179433.i, -4
  br i1 %i.hz, label %.lr.ph435.i, label %._crit_edge436.i

._crit_edge436.i:                                 ; preds = %bb.az, %._crit_edge425.i
  %.4212.lcssa.i = phi ptr [ %.2210.lcssa.i, %._crit_edge425.i ], [ %i.ht, %bb.az ]
  %.4200.lcssa.i = phi ptr [ %.2198.lcssa.i, %._crit_edge425.i ], [ %.5201.i, %bb.az ]
  %.2186.lcssa.i = phi i32 [ %i.ha, %._crit_edge425.i ], [ %i.hx, %bb.az ] ; 4 uses
  %.2179.lcssa.i = phi i32 [ %i.hb, %._crit_edge425.i ], [ %i.hy, %bb.az ]
  %i.ia = and i32 %.2186.lcssa.i, 15
  %i.ib = lshr i32 %.2186.lcssa.i, 4
  %i.ic = add nsw i32 %.2179.lcssa.i, -4
  %i.id = add nuw nsw i32 %i.ia, 4
  %wide.trip.count.i = zext nneg i32 %i.id to i64 ; 3 uses
  br label %.preheader301.i

.preheader301.i:                                  ; preds = %._crit_edge446.i, %._crit_edge436.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge436.i ], [ %indvars.iv.next.i, %._crit_edge446.i ] ; 3 uses
  %.3180454.i = phi i32 [ %i.ic, %._crit_edge436.i ], [ %i.jq, %._crit_edge446.i ] ; 4 uses
  %.3187453.i = phi i32 [ %i.ib, %._crit_edge436.i ], [ %i.jp, %._crit_edge446.i ] ; 2 uses
  %.6202452.i = phi ptr [ %.4200.lcssa.i, %._crit_edge436.i ], [ %.7203.lcssa.i, %._crit_edge446.i ] ; 3 uses
  %.6214451.i = phi ptr [ %.4212.lcssa.i, %._crit_edge436.i ], [ %.7215.lcssa.i, %._crit_edge446.i ] ; 3 uses
  %3 = icmp samesign ult i32 %.3180454.i, 3
  br i1 %3, label %.lr.ph445.i, label %._crit_edge446.i

.preheader300.i:                                  ; preds = %._crit_edge446.i
  %i.ie = icmp samesign ult i64 %indvars.iv.i, 18
  br i1 %i.ie, label %.lr.ph457.i.preheader, label %._crit_edge458.i

.lr.ph457.i.preheader:                            ; preds = %.preheader300.i
  %i.if = and i32 %.2186.lcssa.i, 15
  %i.ig = and i32 %.2186.lcssa.i, 3               ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %lcmp.mod.not = icmp eq i32 %i.ig, 3
  br i1 %lcmp.mod.not, label %.lr.ph457.i.prol.loopexit, label %.lr.ph457.i.prol

.lr.ph457.i.prol:                                 ; preds = %.lr.ph457.i.preheader, %.lr.ph457.i.prol
  %indvars.iv551.i.prol = phi i64 [ %indvars.iv.next552.i.prol, %.lr.ph457.i.prol ], [ %wide.trip.count.i, %.lr.ph457.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph457.i.prol ], [ 0, %.lr.ph457.i.preheader ]
  %indvars.iv.next552.i.prol = add nuw nsw i64 %indvars.iv551.i.prol, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv551.i.prol
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !32
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.im = xor i64 %prol.iter.next, %i.ih
  %prol.iter.cmp.not = icmp eq i64 %i.im, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph457.i.prol.loopexit, label %.lr.ph457.i.prol, !llvm.loop !43

.lr.ph457.i.prol.loopexit:                        ; preds = %.lr.ph457.i.prol, %.lr.ph457.i.preheader
  %indvars.iv551.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph457.i.preheader ], [ %indvars.iv.next552.i.prol, %.lr.ph457.i.prol ]
  %i.in = add nsw i32 %i.if, -12
  %i.io = icmp ult i32 %i.in, 3
  br i1 %i.io, label %._crit_edge458.i, label %.lr.ph457.i

.lr.ph445.i:                                      ; preds = %.preheader301.i
  %.not242.i = icmp ult ptr %.6214451.i, %.6202452.i
  br i1 %.not242.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph445.i
  %i.ip = load ptr, ptr %0, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !31
  %i.is = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.it = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.iu = load i32, ptr %i.o, align 4, !tbaa !20
  %i.iv = call i32 %i.ir(ptr noundef %i.is, ptr noundef %i.it, i32 noundef %i.iu) #7, !inline_history !42 ; 3 uses
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %zip_read_lens.exit.thread.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ix = icmp eq i32 %i.iv, 0
  br i1 %i.ix, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.iy = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i260.i = icmp eq i8 %i.iy, 0
  br i1 %.not.i260.i, label %bb.bd, label %zip_read_lens.exit.thread.sink.split

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store i8 0, ptr %i.ja, align 1, !tbaa !32
  %i.jb = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.jb, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.0.i258.i = phi i32 [ 2, %bb.bd ], [ %i.iv, %bb.bb ]
  %i.jc = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.jc, ptr %i.e, align 8, !tbaa !26
  %i.jd = zext nneg i32 %.0.i258.i to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd ; 2 uses
  store ptr %i.je, ptr %i.g, align 8, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph445.i, %bb.be
  %.8216.i = phi ptr [ %i.jc, %bb.be ], [ %.6214451.i, %.lr.ph445.i ] ; 2 uses
  %.8204.i = phi ptr [ %i.je, %bb.be ], [ %.6202452.i, %.lr.ph445.i ]
  %4 = or disjoint i32 %.3180454.i, 8
  %i.jf = load i8, ptr %.8216.i, align 1, !tbaa !32
  %i.jg = zext i8 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, %.3180454.i
  %i.ji = or i32 %i.jh, %.3187453.i
  %5 = getelementptr inbounds nuw i8, ptr %.8216.i, i64 1
  br label %._crit_edge446.i

._crit_edge446.i:                                 ; preds = %bb.bf, %.preheader301.i
  %.7215.lcssa.i = phi ptr [ %.6214451.i, %.preheader301.i ], [ %5, %bb.bf ] ; 2 uses
  %.7203.lcssa.i = phi ptr [ %.6202452.i, %.preheader301.i ], [ %.8204.i, %bb.bf ] ; 2 uses
  %.4188.lcssa.i = phi i32 [ %.3187453.i, %.preheader301.i ], [ %i.ji, %bb.bf ] ; 2 uses
  %.4181.lcssa.i = phi i32 [ %.3180454.i, %.preheader301.i ], [ %4, %bb.bf ]
  %i.jj = trunc i32 %.4188.lcssa.i to i8
  %i.jk = and i8 %i.jj, 7
  %i.jl = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !32
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn
  store i8 %i.jk, ptr %i.jo, align 1, !tbaa !32
  %i.jp = lshr i32 %.4188.lcssa.i, 3              ; 2 uses
  %i.jq = add nsw i32 %.4181.lcssa.i, -3          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader300.i, label %.preheader301.i

.lr.ph457.i:                                      ; preds = %.lr.ph457.i.prol.loopexit, %.lr.ph457.i
  %indvars.iv551.i = phi i64 [ %indvars.iv.next552.i.3, %.lr.ph457.i ], [ %indvars.iv551.i.unr, %.lr.ph457.i.prol.loopexit ] ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv551.i
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !32
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jt
  store i8 0, ptr %i.ju, align 1, !tbaa !32
  %i.jv = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv551.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !32
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jy
  store i8 0, ptr %i.jz, align 1, !tbaa !32
  %i.ka = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv551.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !32
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kd
  store i8 0, ptr %i.ke, align 1, !tbaa !32
  %indvars.iv.next552.i.3 = add nuw nsw i64 %indvars.iv551.i, 4 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv551.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !32
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ki
  store i8 0, ptr %i.kj, align 1, !tbaa !32
  %exitcond554.not.i.3 = icmp eq i64 %indvars.iv.next552.i.3, 19
  br i1 %exitcond554.not.i.3, label %._crit_edge458.i, label %.lr.ph457.i

._crit_edge458.i:                                 ; preds = %.lr.ph457.i.prol.loopexit, %.lr.ph457.i, %.preheader300.i
  %i.kk = call fastcc i32 @make_decode_table(i32 noundef 19, i32 noundef 7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not.i433 = icmp eq i32 %i.kk, 0
  br i1 %.not.i433, label %.preheader298.i, label %zip_read_lens.exit.thread

.preheader298.i:                                  ; preds = %._crit_edge458.i
  %i.kl = add nuw nsw i32 %i.hc, %i.ga            ; 2 uses
  br label %.preheader297.i

.preheader297.i:                                  ; preds = %.loopexit.i, %.preheader298.i
  %.2506.i = phi i32 [ 0, %.preheader298.i ], [ %i.pi, %.loopexit.i ] ; 4 uses
  %.0174505.i = phi i8 [ 0, %.preheader298.i ], [ %.1175.i, %.loopexit.i ] ; 2 uses
  %.5182504.i = phi i32 [ %i.jq, %.preheader298.i ], [ %.11.i, %.loopexit.i ] ; 3 uses
  %.5189503.i = phi i32 [ %i.jp, %.preheader298.i ], [ %.11195.i, %.loopexit.i ] ; 2 uses
  %.9205502.i = phi ptr [ %.7203.lcssa.i, %.preheader298.i ], [ %.19.i, %.loopexit.i ] ; 2 uses
  %.9217501.i = phi ptr [ %.7215.lcssa.i, %.preheader298.i ], [ %.19227.i, %.loopexit.i ] ; 2 uses
  %i.km = icmp slt i32 %.5182504.i, 7
  br i1 %i.km, label %.lr.ph463.i, label %._crit_edge464.i

.lr.ph463.i:                                      ; preds = %.preheader297.i, %bb.bl
  %.6183462.i = phi i32 [ %i.li, %bb.bl ], [ %.5182504.i, %.preheader297.i ] ; 3 uses
  %.6190461.i = phi i32 [ %i.lh, %bb.bl ], [ %.5189503.i, %.preheader297.i ]
  %.10206460.i = phi ptr [ %.11207.i, %bb.bl ], [ %.9205502.i, %.preheader297.i ] ; 2 uses
  %.10218459.i = phi ptr [ %i.ld, %bb.bl ], [ %.9217501.i, %.preheader297.i ] ; 2 uses
  %.not240.i = icmp ult ptr %.10218459.i, %.10206460.i
  br i1 %.not240.i, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph463.i
  %i.kn = load ptr, ptr %0, align 8, !tbaa !17
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !31
  %i.kq = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.kr = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ks = load i32, ptr %i.o, align 4, !tbaa !20
  %i.kt = call i32 %i.kp(ptr noundef %i.kq, ptr noundef %i.kr, i32 noundef %i.ks) #7, !inline_history !42 ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 0
  br i1 %i.ku, label %zip_read_lens.exit.thread.sink.split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = icmp eq i32 %i.kt, 0
  br i1 %i.kv, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.kw = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i264.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i264.i, label %bb.bj, label %zip_read_lens.exit.thread.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.kx = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 0, ptr %i.ky, align 1, !tbaa !32
  %i.kz = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.kz, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.0.i262.i = phi i32 [ 2, %bb.bj ], [ %i.kt, %bb.bh ]
  %i.la = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.la, ptr %i.e, align 8, !tbaa !26
  %i.lb = zext nneg i32 %.0.i262.i to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb ; 2 uses
  store ptr %i.lc, ptr %i.g, align 8, !tbaa !25
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph463.i
  %.11219.i = phi ptr [ %i.la, %bb.bk ], [ %.10218459.i, %.lr.ph463.i ] ; 2 uses
  %.11207.i = phi ptr [ %i.lc, %bb.bk ], [ %.10206460.i, %.lr.ph463.i ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.11219.i, i64 1 ; 2 uses
  %i.le = load i8, ptr %.11219.i, align 1, !tbaa !32
  %i.lf = zext i8 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, %.6183462.i
  %i.lh = or i32 %i.lg, %.6190461.i               ; 2 uses
  %i.li = add nsw i32 %.6183462.i, 8              ; 2 uses
  %i.lj = icmp slt i32 %.6183462.i, -1
  br i1 %i.lj, label %.lr.ph463.i, label %._crit_edge464.i

._crit_edge464.i:                                 ; preds = %bb.bl, %.preheader297.i
  %.10218.lcssa.i = phi ptr [ %.9217501.i, %.preheader297.i ], [ %i.ld, %bb.bl ] ; 7 uses
  %.10206.lcssa.i = phi ptr [ %.9205502.i, %.preheader297.i ], [ %.11207.i, %bb.bl ] ; 7 uses
  %.6190.lcssa.i = phi i32 [ %.5189503.i, %.preheader297.i ], [ %i.lh, %bb.bl ] ; 2 uses
  %.6183.lcssa.i = phi i32 [ %.5182504.i, %.preheader297.i ], [ %i.li, %bb.bl ]
  %i.lk = and i32 %.6190.lcssa.i, 127
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !36 ; 4 uses
  %i.lo = zext i16 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !32
  %i.lr = zext i8 %i.lq to i32                    ; 2 uses
  %i.ls = lshr i32 %.6190.lcssa.i, %i.lr          ; 7 uses
  %i.lt = sub nsw i32 %.6183.lcssa.i, %i.lr       ; 10 uses
  %i.lu = icmp ult i16 %i.ln, 16
  br i1 %i.lu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge464.i
  %i.lv = trunc nuw nsw i16 %i.ln to i8           ; 2 uses
  %i.lw = zext i32 %.2506.i to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.lw
  store i8 %i.lv, ptr %i.lx, align 1, !tbaa !32
  br label %.loopexit.i

bb.bn:                                            ; preds = %._crit_edge464.i
  switch i16 %i.ln, label %zip_read_lens.exit.thread [
    i16 16, label %.preheader294.i
    i16 17, label %.preheader295.i
    i16 18, label %.preheader296.i
  ]

.preheader296.i:                                  ; preds = %bb.bn
  %i.ly = icmp slt i32 %i.lt, 7
  br i1 %i.ly, label %.lr.ph473.i, label %._crit_edge474.i

.preheader295.i:                                  ; preds = %bb.bn
  %i.lz = icmp slt i32 %i.lt, 3
  br i1 %i.lz, label %.lr.ph483.i, label %._crit_edge484.i

.preheader294.i:                                  ; preds = %bb.bn
  %i.ma = icmp slt i32 %i.lt, 2
  br i1 %i.ma, label %.lr.ph493.i, label %._crit_edge494.i

.lr.ph493.i:                                      ; preds = %.preheader294.i, %bb.bt
  %.7492.i = phi i32 [ %i.mw, %bb.bt ], [ %i.lt, %.preheader294.i ] ; 3 uses
  %.7191491.i = phi i32 [ %i.mv, %bb.bt ], [ %i.ls, %.preheader294.i ]
  %.12490.i = phi ptr [ %.13.i, %bb.bt ], [ %.10206.lcssa.i, %.preheader294.i ] ; 2 uses
  %.12220489.i = phi ptr [ %i.mr, %bb.bt ], [ %.10218.lcssa.i, %.preheader294.i ] ; 2 uses
  %.not238.i = icmp ult ptr %.12220489.i, %.12490.i
  br i1 %.not238.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph493.i
  %i.mb = load ptr, ptr %0, align 8, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !31
  %i.me = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.mf = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.mg = load i32, ptr %i.o, align 4, !tbaa !20
  %i.mh = call i32 %i.md(ptr noundef %i.me, ptr noundef %i.mf, i32 noundef %i.mg) #7, !inline_history !42 ; 3 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %zip_read_lens.exit.thread.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mj = icmp eq i32 %i.mh, 0
  br i1 %i.mj, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.mk = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i268.i = icmp eq i8 %i.mk, 0
  br i1 %.not.i268.i, label %bb.br, label %zip_read_lens.exit.thread.sink.split

bb.br:                                            ; preds = %bb.bq
  %i.ml = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  store i8 0, ptr %i.mm, align 1, !tbaa !32
  %i.mn = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.mn, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.bs

end_hunk_0
begin_hunk_1_@inflate:bb.a
.loopexit498:                                     ; preds = %bb.cv, %._crit_edge767
  %.22367 = phi ptr [ %.7352.lcssa, %._crit_edge767 ], [ %.12357.lcssa, %bb.cv ] ; 2 uses
  %.22 = phi ptr [ %.7339.lcssa, %._crit_edge767 ], [ %.12344.lcssa, %bb.cv ] ; 2 uses
  %.12331 = phi i32 [ %.3322.lcssa981, %._crit_edge767 ], [ %i.up, %bb.cv ] ; 2 uses
  %.12 = phi i32 [ 0, %._crit_edge767 ], [ %i.uq, %bb.cv ] ; 2 uses
  %.not413 = icmp eq i32 %i.ba, 0
  br i1 %.not413, label %bb.b, label %bb.eb

bb.eb:                                            ; preds = %.loopexit498
  %i.ahe = load i32, ptr %i.u, align 8, !tbaa !33 ; 2 uses
  %.not414 = icmp eq i32 %i.ahe, 0
  br i1 %.not414, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ahf = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ahg = call i32 %i.ahf(ptr noundef nonnull %0, i32 noundef %i.ahe) #7
  %.not415 = icmp eq i32 %i.ahg, 0
  br i1 %.not415, label %bb.ed, label %.thread477

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  store ptr %.22367, ptr %i.e, align 8, !tbaa !26
  store ptr %.22, ptr %i.g, align 8, !tbaa !25
  store i32 %.12331, ptr %i.i, align 4, !tbaa !27
  store i32 %.12, ptr %i.k, align 8, !tbaa !28
  br label %.thread477

.thread477:                                       ; preds = %bb.cj, %.loopexit501, %._crit_edge674, %.loopexit, %bb.cw, %bb.ct, %.preheader491.8, %.preheader488.11, %bb.dy, %bb.dv, %bb.dr, %bb.do, %bb.dj, %bb.dg, %bb.db, %bb.cy, %bb.co, %bb.cl, %bb.o, %bb.l, %bb.g, %bb.d, %zip_read_lens.exit.thread, %.thread, %bb.ec, %bb.ed
  %.7375 = phi i32 [ 3, %bb.dg ], [ 3, %bb.g ], [ 3, %bb.dr ], [ 0, %bb.ed ], [ %.1369.ph, %.thread ], [ -3, %bb.ec ], [ -3, %bb.dv ], [ 3, %bb.o ], [ 3, %bb.dj ], [ 3, %bb.do ], [ -12, %.loopexit ], [ 3, %bb.db ], [ 3, %bb.co ], [ -3, %bb.dy ], [ %.0228.i.ph, %zip_read_lens.exit.thread ], [ 3, %bb.d ], [ 3, %bb.l ], [ 3, %bb.cl ], [ 3, %bb.cy ], [ -3, %bb.ct ], [ -11, %bb.cw ], [ -14, %.preheader488.11 ], [ -14, %.preheader491.8 ], [ -8, %bb.cj ], [ -7, %.loopexit501 ], [ -1, %._crit_edge674 ]
  ret i32 %.7375
}

; Function Attrs: nounwind uwtable
define range(i32 -14, 12) i32 @mszipd_decompress_kwaj(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2992
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !27
  %i.p = load i32, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  %i.q = and i32 %i.p, 7
  %i.r = lshr i32 %i.o, %i.q                      ; 2 uses
  %i.s = and i32 %i.p, -8                         ; 2 uses
  %i.t = icmp slt i32 %i.p, 8
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %.0176 = phi i32 [ %i.ap, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  %.090175 = phi i32 [ %i.ao, %bb.h ], [ %i.r, %bb.b ]
  %.094174 = phi ptr [ %.195, %bb.h ], [ %i.n, %bb.b ] ; 2 uses
  %.098173 = phi ptr [ %i.ak, %bb.h ], [ %i.m, %bb.b ] ; 2 uses
  %.not117 = icmp ult ptr %.098173, %.094174
  br i1 %.not117, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.z = load i32, ptr %i.g, align 4, !tbaa !20
  %i.aa = tail call i32 %i.w(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.z) #7, !inline_history !0 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %i.h, align 8, !tbaa !21
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !32
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.ag, align 1, !tbaa !32
  store i8 1, ptr %i.h, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i32 [ 2, %bb.f ], [ %i.aa, %bb.d ]
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !26
  %i.ai = zext nneg i32 %.0.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.199 = phi ptr [ %i.ah, %bb.g ], [ %.098173, %.lr.ph ] ; 2 uses
  %.195 = phi ptr [ %i.aj, %bb.g ], [ %.094174, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.199, i64 1 ; 2 uses
  %i.al = load i8, ptr %.199, align 1, !tbaa !32
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, %.0176
  %i.ao = or i32 %i.an, %.090175                  ; 2 uses
  %i.ap = add nsw i32 %.0176, 8                   ; 2 uses
  %i.aq = icmp slt i32 %.0176, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %.098.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.ak, %bb.h ] ; 2 uses
  %.094.lcssa = phi ptr [ %i.n, %bb.b ], [ %.195, %bb.h ] ; 2 uses
  %.090.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.ao, %bb.h ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.s, %bb.b ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ar = and i32 %.090.lcssa, 255
  %i.as = lshr i32 %.090.lcssa, 8                 ; 2 uses
  %i.at = add nsw i32 %.0.lcssa, -8               ; 2 uses
  %i.au = icmp slt i32 %.0.lcssa, 16
  br i1 %i.au, label %.lr.ph185, label %._crit_edge186

.lr.ph185:                                        ; preds = %._crit_edge, %bb.n
  %.1183 = phi i32 [ %i.bq, %bb.n ], [ %i.at, %._crit_edge ] ; 3 uses
  %.191182 = phi i32 [ %i.bp, %bb.n ], [ %i.as, %._crit_edge ]
  %.296181 = phi ptr [ %.397, %bb.n ], [ %.094.lcssa, %._crit_edge ] ; 2 uses
  %.2100180 = phi ptr [ %i.bl, %bb.n ], [ %.098.lcssa, %._crit_edge ] ; 2 uses
  %.not115 = icmp ult ptr %.2100180, %.296181
  br i1 %.not115, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph185
  %i.av = load ptr, ptr %0, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ba = load i32, ptr %i.g, align 4, !tbaa !20
  %i.bb = tail call i32 %i.ax(ptr noundef %i.ay, ptr noundef %i.az, i32 noundef %i.ba) #7, !inline_history !0 ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %i.h, align 8, !tbaa !21
  %.not.i121 = icmp eq i8 %i.be, 0
  br i1 %.not.i121, label %bb.l, label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !32
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.bh, align 1, !tbaa !32
  store i8 1, ptr %i.h, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0.i119 = phi i32 [ 2, %bb.l ], [ %i.bb, %bb.j ]
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !26
  %i.bj = zext nneg i32 %.0.i119 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph185
  %.3101 = phi ptr [ %i.bi, %bb.m ], [ %.2100180, %.lr.ph185 ] ; 2 uses
  %.397 = phi ptr [ %i.bk, %bb.m ], [ %.296181, %.lr.ph185 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.3101, i64 1 ; 2 uses
  %i.bm = load i8, ptr %.3101, align 1, !tbaa !32
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, %.1183
  %i.bp = or i32 %i.bo, %.191182                  ; 2 uses
  %i.bq = add nuw nsw i32 %.1183, 8               ; 2 uses
  %i.br = icmp slt i32 %.1183, 0
  br i1 %i.br, label %.lr.ph185, label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.n, %._crit_edge
  %.2100.lcssa = phi ptr [ %.098.lcssa, %._crit_edge ], [ %i.bl, %bb.n ] ; 2 uses
  %.296.lcssa = phi ptr [ %.094.lcssa, %._crit_edge ], [ %.397, %bb.n ] ; 2 uses
  %.191.lcssa = phi i32 [ %i.as, %._crit_edge ], [ %i.bp, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.at, %._crit_edge ], [ %i.bq, %bb.n ] ; 2 uses
  %i.bs = shl i32 %.191.lcssa, 8
  %i.bt = and i32 %i.bs, 65280
  %i.bu = or disjoint i32 %i.bt, %i.ar
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %.preheader139

.preheader139:                                    ; preds = %._crit_edge186
  %i.bw = add nsw i32 %.1.lcssa, -8               ; 2 uses
  %i.bx = lshr i32 %.191.lcssa, 8                 ; 2 uses
  %1 = icmp samesign ult i32 %.1.lcssa, 16
  br i1 %1, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.preheader139, %bb.t
  %.2194 = phi i32 [ %i.ct, %bb.t ], [ %i.bw, %.preheader139 ] ; 3 uses
  %.292193 = phi i32 [ %i.cs, %bb.t ], [ %i.bx, %.preheader139 ]
  %.4192 = phi ptr [ %.5, %bb.t ], [ %.296.lcssa, %.preheader139 ] ; 2 uses
  %.4102191 = phi ptr [ %i.co, %bb.t ], [ %.2100.lcssa, %.preheader139 ] ; 2 uses
  %.not113 = icmp ult ptr %.4102191, %.4192
  br i1 %.not113, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph195
  %i.by = load ptr, ptr %0, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.cd = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ce = tail call i32 %i.ca(ptr noundef %i.cb, ptr noundef %i.cc, i32 noundef %i.cd) #7, !inline_history !0 ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.loopexit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = icmp eq i32 %i.ce, 0
  br i1 %i.cg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ch = load i8, ptr %i.h, align 8, !tbaa !21
  %.not.i125 = icmp eq i8 %i.ch, 0
  br i1 %.not.i125, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cj, align 1, !tbaa !32
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.ck, align 1, !tbaa !32
  store i8 1, ptr %i.h, align 8, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.0.i123 = phi i32 [ 2, %bb.r ], [ %i.ce, %bb.p ]
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !26
  %i.cm = zext nneg i32 %.0.i123 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph195
  %.5103 = phi ptr [ %i.cl, %bb.s ], [ %.4102191, %.lr.ph195 ] ; 2 uses
  %.5 = phi ptr [ %i.cn, %bb.s ], [ %.4192, %.lr.ph195 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.5103, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.5103, align 1, !tbaa !32
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, %.2194
  %i.cs = or i32 %i.cr, %.292193                  ; 2 uses
  %i.ct = add nuw nsw i32 %.2194, 8               ; 2 uses
  %i.cu = icmp slt i32 %.2194, 0
  br i1 %i.cu, label %.lr.ph195, label %._crit_edge196

._crit_edge196:                                   ; preds = %bb.t, %.preheader139
  %.4102.lcssa = phi ptr [ %.2100.lcssa, %.preheader139 ], [ %i.co, %bb.t ] ; 2 uses
  %.4.lcssa = phi ptr [ %.296.lcssa, %.preheader139 ], [ %.5, %bb.t ] ; 2 uses
  %.292.lcssa = phi i32 [ %i.bx, %.preheader139 ], [ %i.cs, %bb.t ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bw, %.preheader139 ], [ %i.ct, %bb.t ] ; 2 uses
  %i.cv = and i32 %.292.lcssa, 255
  %.not = icmp eq i32 %i.cv, 67
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge196
  %i.cw = add nsw i32 %.2.lcssa, -8               ; 2 uses
  %i.cx = lshr i32 %.292.lcssa, 8                 ; 2 uses
  %2 = icmp samesign ult i32 %.2.lcssa, 16
  br i1 %2, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader, %bb.z
  %.3204 = phi i32 [ %i.dt, %bb.z ], [ %i.cw, %.preheader ] ; 3 uses
  %.393203 = phi i32 [ %i.ds, %bb.z ], [ %i.cx, %.preheader ]
  %.6202 = phi ptr [ %.7, %bb.z ], [ %.4.lcssa, %.preheader ] ; 2 uses
  %.6104201 = phi ptr [ %i.do, %bb.z ], [ %.4102.lcssa, %.preheader ] ; 2 uses
  %.not111 = icmp ult ptr %.6104201, %.6202
  br i1 %.not111, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph205
  %i.cy = load ptr, ptr %0, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dd = load i32, ptr %i.g, align 4, !tbaa !20
  %i.de = tail call i32 %i.da(ptr noundef %i.db, ptr noundef %i.dc, i32 noundef %i.dd) #7, !inline_history !0 ; 3 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.loopexit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = icmp eq i32 %i.de, 0
  br i1 %i.dg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dh = load i8, ptr %i.h, align 8, !tbaa !21
  %.not.i129 = icmp eq i8 %i.dh, 0
  br i1 %.not.i129, label %bb.x, label %.loopexit.sink.split

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i8 0, ptr %i.dj, align 1, !tbaa !32
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %i.dk, align 1, !tbaa !32
  store i8 1, ptr %i.h, align 8, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.0.i127 = phi i32 [ 2, %bb.x ], [ %i.de, %bb.v ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !26
  %i.dm = zext nneg i32 %.0.i127 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm ; 2 uses
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph205
  %.7105 = phi ptr [ %i.dl, %bb.y ], [ %.6104201, %.lr.ph205 ] ; 2 uses
  %.7 = phi ptr [ %i.dn, %bb.y ], [ %.6202, %.lr.ph205 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.7105, i64 1 ; 2 uses
  %i.dp = load i8, ptr %.7105, align 1, !tbaa !32
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, %.3204
  %i.ds = or i32 %i.dr, %.393203                  ; 2 uses
  %i.dt = add nuw nsw i32 %.3204, 8               ; 2 uses
  %i.du = icmp slt i32 %.3204, 0
  br i1 %i.du, label %.lr.ph205, label %._crit_edge206

._crit_edge206:                                   ; preds = %bb.z, %.preheader
  %.6104.lcssa = phi ptr [ %.4102.lcssa, %.preheader ], [ %i.do, %bb.z ]
  %.6.lcssa = phi ptr [ %.4.lcssa, %.preheader ], [ %.7, %bb.z ]
  %.393.lcssa = phi i32 [ %i.cx, %.preheader ], [ %i.ds, %bb.z ] ; 2 uses
  %.3.lcssa = phi i32 [ %i.cw, %.preheader ], [ %i.dt, %bb.z ]
  %i.dv = and i32 %.393.lcssa, 255
  %.not108 = icmp eq i32 %i.dv, 75
  br i1 %.not108, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %._crit_edge206
  %i.dw = add nsw i32 %.3.lcssa, -8
  %i.dx = lshr i32 %.393.lcssa, 8
  store i32 0, ptr %i.i, align 8, !tbaa !33
  store i32 0, ptr %i.j, align 8, !tbaa !29
  store ptr %.6104.lcssa, ptr %i.a, align 8, !tbaa !26
  store ptr %.6.lcssa, ptr %i.b, align 8, !tbaa !25
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !27
  store i32 %i.dw, ptr %i.d, align 8, !tbaa !28
  %i.dy = tail call fastcc i32 @inflate(ptr noundef %0) ; 3 uses
  %.not109 = icmp eq i32 %i.dy, 0
  br i1 %.not109, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = icmp sgt i32 %i.dy, 0
  %i.ea = select i1 %i.dz, i32 %i.dy, i32 11
  br label %.loopexit.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %0, align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.ef = load i32, ptr %i.j, align 8, !tbaa !29
  %i.eg = tail call i32 %i.ed(ptr noundef %i.ee, ptr noundef nonnull %i.l, i32 noundef %i.ef) #7
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !29
  %.not110 = icmp eq i32 %i.eg, %i.eh
  br i1 %.not110, label %bb.b, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ac, %bb.e, %bb.c, %bb.k, %bb.i, %bb.q, %bb.o, %bb.w, %bb.u, %bb.ab
  %.sink = phi i32 [ 3, %bb.e ], [ %i.ea, %bb.ab ], [ 3, %bb.k ], [ 3, %bb.w ], [ 3, %bb.q ], [ 3, %bb.u ], [ 3, %bb.o ], [ 3, %bb.i ], [ 3, %bb.c ], [ 4, %bb.ac ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.ei, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge186, %._crit_edge206, %._crit_edge196, %.loopexit.sink.split
  %.0106 = phi i32 [ %.sink, %.loopexit.sink.split ], [ 8, %._crit_edge206 ], [ 0, %._crit_edge186 ], [ 8, %._crit_edge196 ]
  ret i32 %.0106
}

; Function Attrs: nounwind uwtable
define void @mszipd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  tail call void %i.c(ptr noundef %i.e) #7
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void %i.f(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @make_decode_table(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 6, 10) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1                    ; 5 uses
  %i.b = lshr exact i32 %i.a, 1                   ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16              ; 2 uses
  br label %.preheader144

.preheader144:                                    ; preds = %bb.a, %bb.e
  %indvar = phi i32 [ 0, %bb.a ], [ %indvar.next, %bb.e ] ; 3 uses
  %i.e = phi i32 [ 1, %bb.a ], [ %i.bf, %bb.e ]
  %.0157 = phi i32 [ %i.b, %bb.a ], [ %i.bd, %bb.e ] ; 6 uses
  %.098156 = phi i32 [ 0, %bb.a ], [ %.2, %bb.e ]
  %.0100155 = phi i8 [ 1, %bb.a ], [ %i.be, %bb.e ] ; 4 uses
  %i.f = add i32 %indvar, 1                       ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.e                  ; 5 uses
  %i.h = zext nneg i8 %.0100155 to i32
  %i.i = sub nuw nsw i32 %1, %i.h
  %i.j = add nsw i32 %.0157, -1
  %xtraiter = and i32 %i.f, 3                     ; 3 uses
  %i.k = icmp ult i32 %indvar, 3
  %unroll_iter = and i32 %i.f, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod219 = icmp ne i32 %xtraiter, 0
  %xtraiter220 = and i32 %.0157, 3                ; 2 uses
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  %i.l = icmp ult i32 %i.j, 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader144, %.loopexit143
  %.199154 = phi i32 [ %.098156, %.preheader144 ], [ %.2, %.loopexit143 ] ; 3 uses
  %.0121153 = phi i16 [ 0, %.preheader144 ], [ %i.bb, %.loopexit143 ] ; 7 uses
  %i.m = zext nneg i16 %.0121153 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %.not138 = icmp eq i8 %i.o, %.0100155
  br i1 %.not138, label %bb.c, label %.loopexit143

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i32 %.199154, %i.i                  ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c, %.new
  %.0110 = phi i32 [ %i.ac, %.new ], [ 0, %bb.c ]
  %.0102 = phi i32 [ %i.ad, %.new ], [ %i.p, %bb.c ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.new ], [ 0, %bb.c ]
  %i.q = shl i32 %.0110, 3
  %i.r = shl i32 %.0102, 2
  %i.s = and i32 %i.r, 4
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = and i32 %.0102, 2
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = lshr i32 %.0102, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = lshr i32 %.0102, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 3 uses
  %i.ad = lshr i32 %.0102, 4                      ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.0110.epil.init = phi i32 [ 0, %bb.c ], [ %i.ac, %.unr-lcssa ]
end_hunk_1
