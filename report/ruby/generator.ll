inline.NumInlined: 364
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@convert_UTF8_to_ASCII_only_JSON:bb.a
  %i.eb = icmp ult i64 %i.ea, 2
  br i1 %i.eb, label %bb.q, label %fbuffer_append.exit65.i, !prof !71

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.dv, i64 noundef 2)
  %.pre.i64.i = load i64, ptr %i.dy, align 8, !tbaa !81
  br label %fbuffer_append.exit65.i

fbuffer_append.exit65.i:                          ; preds = %bb.q, %bb.p
  %i.ec = phi i64 [ %i.dz, %bb.p ], [ %.pre.i64.i, %bb.q ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !58
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i16 25180, ptr %i.ef, align 1
  %i.eg = load i64, ptr %i.dy, align 8, !tbaa !81
  %i.eh = add i64 %i.eg, 2
  store i64 %i.eh, ptr %i.dy, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.r:                                             ; preds = %bb.i
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !59
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 4 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !81 ; 2 uses
  %i.en = sub i64 %i.ek, %i.em
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %bb.s, label %fbuffer_append.exit67.i, !prof !71

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ei, i64 noundef 2)
  %.pre.i66.i = load i64, ptr %i.el, align 8, !tbaa !81
  br label %fbuffer_append.exit67.i

fbuffer_append.exit67.i:                          ; preds = %bb.s, %bb.r
  %i.ep = phi i64 [ %i.em, %bb.r ], [ %.pre.i66.i, %bb.s ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i16 26204, ptr %i.es, align 1
  %i.et = load i64, ptr %i.el, align 8, !tbaa !81
  %i.eu = add i64 %i.et, 2
  store i64 %i.eu, ptr %i.el, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.t:                                             ; preds = %bb.i
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 4 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !81 ; 2 uses
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = icmp ult i64 %i.fa, 2
  br i1 %i.fb, label %bb.u, label %fbuffer_append.exit69.i, !prof !71

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ev, i64 noundef 2)
  %.pre.i68.i = load i64, ptr %i.ey, align 8, !tbaa !81
  br label %fbuffer_append.exit69.i

fbuffer_append.exit69.i:                          ; preds = %bb.u, %bb.t
  %i.fc = phi i64 [ %i.ez, %bb.t ], [ %.pre.i68.i, %bb.u ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  store i16 28252, ptr %i.ff, align 1
  %i.fg = load i64, ptr %i.ey, align 8, !tbaa !81
  %i.fh = add i64 %i.fg, 2
  store i64 %i.fh, ptr %i.ey, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.v:                                             ; preds = %bb.i
  %i.fi = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !59
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 4 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !81 ; 2 uses
  %i.fn = sub i64 %i.fk, %i.fm
  %i.fo = icmp ult i64 %i.fn, 2
  br i1 %i.fo, label %bb.w, label %fbuffer_append.exit71.i, !prof !71

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.fi, i64 noundef 2)
  %.pre.i70.i = load i64, ptr %i.fl, align 8, !tbaa !81
  br label %fbuffer_append.exit71.i

fbuffer_append.exit71.i:                          ; preds = %bb.w, %bb.v
  %i.fp = phi i64 [ %i.fm, %bb.v ], [ %.pre.i70.i, %bb.w ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i16 29276, ptr %i.fs, align 1
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !81
  %i.fu = add i64 %i.ft, 2
  store i64 %i.fu, ptr %i.fl, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.x:                                             ; preds = %bb.i
  %i.fv = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !59
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 4 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !81 ; 2 uses
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = icmp ult i64 %i.ga, 2
  br i1 %i.gb, label %bb.y, label %fbuffer_append.exit73.i, !prof !71

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.fv, i64 noundef 2)
  %.pre.i72.i = load i64, ptr %i.fy, align 8, !tbaa !81
  br label %fbuffer_append.exit73.i

fbuffer_append.exit73.i:                          ; preds = %bb.y, %bb.x
  %i.gc = phi i64 [ %i.fz, %bb.x ], [ %.pre.i72.i, %bb.y ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i16 29788, ptr %i.gf, align 1
  %i.gg = load i64, ptr %i.fy, align 8, !tbaa !81
  %i.gh = add i64 %i.gg, 2
  store i64 %i.gh, ptr %i.fy, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.z:                                             ; preds = %bb.i
  %i.gi = zext i8 %i.ch to i32                    ; 2 uses
  %i.gj = lshr i32 %i.gi, 4
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !79
  %i.gn = and i32 %i.gi, 15
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !79
  %i.gr = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !59
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 4 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !81 ; 2 uses
  %i.gw = sub i64 %i.gt, %i.gv
  %i.gx = icmp ult i64 %i.gw, 6
  br i1 %i.gx, label %bb.aa, label %fbuffer_append.exit75.i, !prof !71

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.gr, i64 noundef 6)
  %.pre.i74.i = load i64, ptr %i.gu, align 8, !tbaa !81
  br label %fbuffer_append.exit75.i

fbuffer_append.exit75.i:                          ; preds = %bb.aa, %bb.z
  %i.gy = phi i64 [ %i.gv, %bb.z ], [ %.pre.i74.i, %bb.aa ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy ; 3 uses
  store i32 808482140, ptr %i.hb, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i8 %i.gm, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 5
  store i8 %i.gq, ptr %.sroa.5103.0..sroa_idx.i, align 1
  %i.hc = load i64, ptr %i.gu, align 8, !tbaa !81
  %i.hd = add i64 %i.hc, 6
  store i64 %i.hd, ptr %i.gu, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.ab:                                            ; preds = %bb.h
  %i.he = and i8 %i.ch, 31
  br label %.lr.ph.preheader.i3

bb.ac:                                            ; preds = %bb.h
  %i.hf = and i8 %i.ch, 15
  br label %.lr.ph.preheader.i3

bb.ad:                                            ; preds = %bb.h
  %i.hg = and i8 %i.ch, 7
  br label %.lr.ph.preheader.i3

.lr.ph.preheader.i3:                              ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.h
  %.0.shrunk.i = phi i8 [ 0, %bb.h ], [ %i.he, %bb.ab ], [ %i.hf, %bb.ac ], [ %i.hg, %bb.ad ]
  %.0.i = zext nneg i8 %.0.shrunk.i to i32        ; 2 uses
  %wide.trip.count = zext nneg i8 %i.cg to i64
  %i.hh = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter99 = and i64 %i.hh, 3                  ; 3 uses
  %i.hi = add nsw i8 %i.cg, -2
  %i.hj = icmp ult i8 %i.hi, 3
  br i1 %i.hj, label %.lr.ph.i4.epil.preheader, label %.lr.ph.preheader.i3.new

.lr.ph.preheader.i3.new:                          ; preds = %.lr.ph.preheader.i3
  %unroll_iter = and i64 %i.hh, -4
  br label %.lr.ph.i4

._crit_edge.i5.unr-lcssa:                         ; preds = %.lr.ph.i4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %._crit_edge.i5, label %.lr.ph.i4.epil.preheader

.lr.ph.i4.epil.preheader:                         ; preds = %._crit_edge.i5.unr-lcssa, %.lr.ph.preheader.i3
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader.i3 ], [ %indvars.iv.next.3, %._crit_edge.i5.unr-lcssa ]
  %.1106.i.epil.init = phi i32 [ %.0.i, %.lr.ph.preheader.i3 ], [ %i.ir, %._crit_edge.i5.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter99, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i4.epil

.lr.ph.i4.epil:                                   ; preds = %.lr.ph.i4.epil, %.lr.ph.i4.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.i4.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.i4.epil ] ; 2 uses
  %.1106.i.epil = phi i32 [ %.1106.i.epil.init, %.lr.ph.i4.epil.preheader ], [ %i.hp, %.lr.ph.i4.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i4.epil.preheader ], [ %epil.iter.next, %.lr.ph.i4.epil ]
  %i.hk = shl i32 %.1106.i.epil, 6                ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.epil
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !79
  %i.hn = and i8 %i.hm, 63
  %i.ho = zext nneg i8 %i.hn to i32               ; 2 uses
  %i.hp = or disjoint i32 %i.hk, %i.ho            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %._crit_edge.i5, label %.lr.ph.i4.epil, !llvm.loop !103

._crit_edge.i5:                                   ; preds = %.lr.ph.i4.epil, %._crit_edge.i5.unr-lcssa
  %.lcssa86 = phi i32 [ %i.il, %._crit_edge.i5.unr-lcssa ], [ %i.hk, %.lr.ph.i4.epil ] ; 4 uses
  %.lcssa85 = phi i32 [ %i.iq, %._crit_edge.i5.unr-lcssa ], [ %i.ho, %.lr.ph.i4.epil ] ; 2 uses
  %.lcssa84 = phi i32 [ %i.ir, %._crit_edge.i5.unr-lcssa ], [ %i.hp, %.lr.ph.i4.epil ] ; 3 uses
  %i.hq = icmp ult i32 %.lcssa86, 65536
  br i1 %i.hq, label %bb.ae, label %bb.ag

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i3.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.i3.new ], [ %indvars.iv.next.3, %.lr.ph.i4 ] ; 5 uses
  %.1106.i = phi i32 [ %.0.i, %.lr.ph.preheader.i3.new ], [ %i.ir, %.lr.ph.i4 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i3.new ], [ %niter.next.3, %.lr.ph.i4 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !79
  %i.ht = and i8 %i.hs, 63
  %i.hu = zext nneg i8 %i.ht to i32
  %i.hv = shl i32 %.1106.i, 12
  %i.hw = shl nuw nsw i32 %i.hu, 6
  %i.hx = or disjoint i32 %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !79
  %i.ib = and i8 %i.ia, 63
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = or disjoint i32 %i.hx, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !79
  %i.ih = and i8 %i.ig, 63
  %i.ii = zext nneg i8 %i.ih to i32
  %i.ij = shl i32 %i.id, 12
  %i.ik = shl nuw nsw i32 %i.ii, 6
  %i.il = or disjoint i32 %i.ij, %i.ik            ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !79
  %i.ip = and i8 %i.io, 63
  %i.iq = zext nneg i8 %i.ip to i32               ; 2 uses
  %i.ir = or disjoint i32 %i.il, %i.iq            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i5.unr-lcssa, label %.lr.ph.i4

bb.ae:                                            ; preds = %._crit_edge.i5
  %i.is = lshr i32 %.lcssa86, 12
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !79
  %i.iw = lshr i32 %.lcssa86, 8
  %i.ix = and i32 %i.iw, 15
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !79
  %i.jb = lshr i32 %.lcssa84, 4
  %i.jc = and i32 %i.jb, 15
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !79
  %i.jg = and i32 %.lcssa85, 15
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !79
  %i.jk = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !59
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 4 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !81 ; 2 uses
  %i.jp = sub i64 %i.jm, %i.jo
  %i.jq = icmp ult i64 %i.jp, 6
  br i1 %i.jq, label %bb.af, label %fbuffer_append.exit77.i, !prof !71

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.jk, i64 noundef 6)
  %.pre.i76.i = load i64, ptr %i.jn, align 8, !tbaa !81
  br label %fbuffer_append.exit77.i

fbuffer_append.exit77.i:                          ; preds = %bb.af, %bb.ae
  %i.jr = phi i64 [ %i.jo, %bb.ae ], [ %.pre.i76.i, %bb.af ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !58
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jr ; 5 uses
  store i16 30044, ptr %i.ju, align 1
  %.sroa.5.0..sroa_idx83.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  store i8 %i.iv, ptr %.sroa.5.0..sroa_idx83.i, align 1
  %.sroa.7.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 3
  store i8 %i.ja, ptr %.sroa.7.0..sroa_idx86.i, align 1
  %.sroa.9.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i8 %i.jf, ptr %.sroa.9.0..sroa_idx89.i, align 1
  %.sroa.11.0..sroa_idx92.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 5
  store i8 %i.jj, ptr %.sroa.11.0..sroa_idx92.i, align 1
  %i.jv = load i64, ptr %i.jn, align 8, !tbaa !81
  %i.jw = add i64 %i.jv, 6
  store i64 %i.jw, ptr %i.jn, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.ag:                                            ; preds = %._crit_edge.i5
  %i.jx = add i32 %.lcssa84, 67043328             ; 2 uses
  %i.jy = lshr i32 %i.jx, 10                      ; 2 uses
  %i.jz = add nuw nsw i32 %i.jy, 55296            ; 2 uses
  %i.ka = lshr i32 %i.jz, 12
  %i.kb = and i32 %i.ka, 15
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !79
  %i.kf = lshr i32 %i.jz, 8
  %i.kg = and i32 %i.kf, 15
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !79
  %i.kk = lshr i32 %i.jx, 14
  %i.kl = and i32 %i.kk, 15
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !79
  %i.kp = and i32 %i.jy, 15
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !79
  %i.kt = lshr i32 %.lcssa86, 8
  %i.ku = and i32 %i.kt, 3
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !79
  %i.kz = lshr i32 %.lcssa84, 4
  %i.la = and i32 %i.kz, 15
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !79
  %i.le = and i32 %.lcssa85, 15
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !79
  %i.li = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !59
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 4 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !81 ; 2 uses
  %i.ln = sub i64 %i.lk, %i.lm
  %i.lo = icmp ult i64 %i.ln, 12
  br i1 %i.lo, label %bb.ah, label %fbuffer_append.exit79.i, !prof !71

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.li, i64 noundef 12)
  %.pre.i78.i = load i64, ptr %i.ll, align 8, !tbaa !81
  br label %fbuffer_append.exit79.i

fbuffer_append.exit79.i:                          ; preds = %bb.ah, %bb.ag
  %i.lp = phi i64 [ %i.lm, %bb.ag ], [ %.pre.i78.i, %bb.ah ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !58
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp ; 10 uses
  store i16 30044, ptr %i.ls, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  store i8 %i.ke, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 3
  store i8 %i.kj, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i8 %i.ko, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 5
  store i8 %i.ks, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 6
  store i16 30044, ptr %.sroa.13.0..sroa_idx.i, align 1
  %.sroa.1395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i8 100, ptr %.sroa.1395.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 9
  store i8 %i.ky, ptr %.sroa.14.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 10
  store i8 %i.ld, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 11
  store i8 %i.lh, ptr %.sroa.16.0..sroa_idx.i, align 1
  %i.lt = load i64, ptr %i.ll, align 8, !tbaa !81
  %i.lu = add i64 %i.lt, 12
  store i64 %i.lu, ptr %i.ll, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

full_escape_UTF8_char.exit:                       ; preds = %fbuffer_append.exit.i, %fbuffer_append.exit61.i, %fbuffer_append.exit63.i, %fbuffer_append.exit65.i, %fbuffer_append.exit67.i, %fbuffer_append.exit69.i, %fbuffer_append.exit71.i, %fbuffer_append.exit73.i, %fbuffer_append.exit75.i, %fbuffer_append.exit77.i, %fbuffer_append.exit79.i
  %i.lv = load ptr, ptr %0, align 8, !tbaa !76
  %i.lw = zext nneg i8 %i.cg to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw ; 5 uses
  store ptr %i.lx, ptr %0, align 8, !tbaa !76
  store ptr %i.lx, ptr %i.d, align 8, !tbaa !77
  %i.ly = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.lz = icmp ult ptr %i.lx, %i.ly
  br i1 %i.lz, label %.lr.ph.preheader.i, label %._crit_edge.i

search_ascii_only_escape.exit.thread:             ; preds = %search_ascii_only_escape.exit, %fbuffer_append_reserved.exit.i.i, %._crit_edge.i
  ret void
}
end_hunk_0
