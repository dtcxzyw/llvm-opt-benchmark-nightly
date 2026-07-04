inline.NumInlined: 364
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@search_escape_basic_sse2:bb.a
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr readonly align 1 %i.dy, i64 %i.ed, i1 false)
  %i.eo = load i64, ptr %i.eg, align 8, !tbaa !81
  %i.ep = add i64 %i.eo, %i.ed
  store i64 %i.ep, ptr %i.eg, align 8, !tbaa !81
  %i.eq = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.eq, ptr %i.bx, align 8, !tbaa !77
  br label %sse2_next_match.exit48

bb.u:                                             ; preds = %._crit_edge
  %i.er = icmp ult ptr %i.br, %i.aa
  br i1 %i.er, label %.lr.ph.i.preheader, label %bb.aa

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.es = add nsw i64 %i.bv, -1
  %xtraiter = and i64 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.v
  %i.et = phi ptr [ %i.ey, %bb.v ], [ %i.br, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.lr.ph.i.preheader ]
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !79
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !79
  %.not.i59.prol = icmp eq i8 %i.ex, 0
  br i1 %.not.i59.prol, label %bb.v, label %.loopexit, !prof !27

bb.v:                                             ; preds = %.lr.ph.i.prol
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 3 uses
  store ptr %i.ey, ptr %0, align 8, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !82

.lr.ph.i.prol.loopexit:                           ; preds = %bb.v, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.br, %.lr.ph.i.preheader ], [ %i.ey, %bb.v ]
  %i.ez = icmp ult i64 %i.es, 3
  br i1 %i.ez, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.x
  %i.fa = phi ptr [ %i.gg, %bb.x ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !79
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !79
  %.not.i59 = icmp eq i8 %i.fe, 0
  br i1 %.not.i59, label %.lr.ph.i.1, label %.loopexit, !prof !27

.loopexit.split.loop.exit:                        ; preds = %.lr.ph.i.3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  br label %.loopexit

.loopexit.split.loop.exit135:                     ; preds = %.lr.ph.i.2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  br label %.loopexit

.loopexit.split.loop.exit137:                     ; preds = %.lr.ph.i.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit135, %.loopexit.split.loop.exit137, %.lr.ph.i
  %.lcssa = phi ptr [ %i.fa, %.lr.ph.i ], [ %i.fh, %.loopexit.split.loop.exit137 ], [ %i.fg, %.loopexit.split.loop.exit135 ], [ %i.ff, %.loopexit.split.loop.exit ], [ %i.et, %.lr.ph.i.prol ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !77 ; 3 uses
  %i.fk = icmp ugt ptr %.lcssa, %i.fj
  br i1 %i.fk, label %bb.w, label %sse2_next_match.exit48

bb.w:                                             ; preds = %.loopexit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !78
  %i.fn = ptrtoint ptr %.lcssa to i64
  %i.fo = ptrtoint ptr %i.fj to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call fastcc void @fbuffer_append(ptr noundef %i.fm, ptr noundef %i.fj, i64 noundef %i.fp)
  %i.fq = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.fq, ptr %i.fi, align 8, !tbaa !77
  br label %sse2_next_match.exit48

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  store ptr %i.fr, ptr %0, align 8, !tbaa !76
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !79
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !79
  %.not.i59.1 = icmp eq i8 %i.fv, 0
  br i1 %.not.i59.1, label %.lr.ph.i.2, label %.loopexit.split.loop.exit137, !prof !27

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fa, i64 2 ; 2 uses
  store ptr %i.fw, ptr %0, align 8, !tbaa !76
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !79
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !79
  %.not.i59.2 = icmp eq i8 %i.ga, 0
  br i1 %.not.i59.2, label %.lr.ph.i.3, label %.loopexit.split.loop.exit135, !prof !27

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fa, i64 3 ; 2 uses
  store ptr %i.gb, ptr %0, align 8, !tbaa !76
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !79
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !79
  %.not.i59.3 = icmp eq i8 %i.gf, 0
  br i1 %.not.i59.3, label %bb.x, label %.loopexit.split.loop.exit, !prof !27

bb.x:                                             ; preds = %.lr.ph.i.3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 3 uses
  store ptr %i.gg, ptr %0, align 8, !tbaa !76
  %exitcond.not.i.3 = icmp eq ptr %i.gg, %i.aa
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.x, %.lr.ph.i.prol.loopexit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !77 ; 3 uses
  %i.gj = icmp ugt ptr %i.aa, %i.gi
  br i1 %i.gj, label %bb.y, label %sse2_next_match.exit48

bb.y:                                             ; preds = %._crit_edge.i
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !78 ; 4 uses
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.bs, %i.gm                    ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 4 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !81 ; 2 uses
  %i.gs = sub i64 %i.gp, %i.gr
  %i.gt = icmp ugt i64 %i.gn, %i.gs
  br i1 %i.gt, label %bb.z, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.gl, i64 noundef %i.gn)
  %.pre.i.i = load i64, ptr %i.gq, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.z, %bb.y
  %i.gu = phi i64 [ %i.gr, %bb.y ], [ %.pre.i.i, %bb.z ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !58
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr readonly align 1 %i.gi, i64 %i.gn, i1 false)
  %i.gy = load i64, ptr %i.gq, align 8, !tbaa !81
  %i.gz = add i64 %i.gy, %i.gn
  store i64 %i.gz, ptr %i.gq, align 8, !tbaa !81
  %i.ha = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.ha, ptr %i.gh, align 8, !tbaa !77
  br label %sse2_next_match.exit48

bb.aa:                                            ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !77 ; 3 uses
  %i.hd = icmp ugt ptr %i.br, %i.hc
  br i1 %i.hd, label %bb.ab, label %sse2_next_match.exit48

bb.ab:                                            ; preds = %bb.aa
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !78 ; 4 uses
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.bt, %i.hg                    ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !59
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 4 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !81 ; 2 uses
  %i.hm = sub i64 %i.hj, %i.hl
  %i.hn = icmp ugt i64 %i.hh, %i.hm
  br i1 %i.hn, label %bb.ac, label %fbuffer_append_reserved.exit.i61, !prof !71

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.hf, i64 noundef %i.hh)
  %.pre.i62 = load i64, ptr %i.hk, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i61

fbuffer_append_reserved.exit.i61:                 ; preds = %bb.ac, %bb.ab
  %i.ho = phi i64 [ %i.hl, %bb.ab ], [ %.pre.i62, %bb.ac ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !58
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ho
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr readonly align 1 %i.hc, i64 %i.hh, i1 false)
  %i.hs = load i64, ptr %i.hk, align 8, !tbaa !81
  %i.ht = add i64 %i.hs, %i.hh
  store i64 %i.ht, ptr %i.hk, align 8, !tbaa !81
  %i.hu = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.hu, ptr %i.hb, align 8, !tbaa !77
  br label %sse2_next_match.exit48

sse2_next_match.exit48:                           ; preds = %fbuffer_append_reserved.exit.i61, %bb.aa, %fbuffer_append_reserved.exit.i.i, %._crit_edge.i, %bb.w, %.loopexit, %fbuffer_append_reserved.exit.i56, %bb.r, %fbuffer_append_reserved.exit.i, %bb.j, %bb.d, %bb.c, %bb.q
  %.2 = phi i8 [ 1, %fbuffer_append_reserved.exit.i ], [ 1, %bb.d ], [ 0, %fbuffer_append_reserved.exit.i.i ], [ 1, %fbuffer_append_reserved.exit.i56 ], [ 0, %bb.q ], [ 1, %bb.c ], [ 1, %bb.j ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %.loopexit ], [ 0, %._crit_edge.i ], [ 0, %bb.aa ], [ 0, %fbuffer_append_reserved.exit.i61 ]
  ret i8 %.2
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @search_escape_basic(ptr nofree noundef captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.promoted = load ptr, ptr %0, align 8, !tbaa !76 ; 6 uses
  %i.c = icmp ult ptr %.promoted, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted12 = ptrtoaddr ptr %.promoted to i64
  %1 = ptrtoaddr ptr %i.b to i64
  %i.d = sub i64 %1, %.promoted12
  %2 = freeze i64 %i.d                            ; 3 uses
  %scevgep = getelementptr i8, ptr %.promoted, i64 %2 ; 2 uses
  %i.e = add i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.b
  %i.f = phi ptr [ %i.k, %bb.b ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.g = load i8, ptr %i.f, align 1, !tbaa !79
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !79
  %.not.prol = icmp eq i8 %i.j, 0
  br i1 %.not.prol, label %bb.b, label %.loopexit, !prof !27

bb.b:                                             ; preds = %.lr.ph.prol
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !84

.lr.ph.prol.loopexit:                             ; preds = %bb.b, %.lr.ph.preheader
  %.unr = phi ptr [ %.promoted, %.lr.ph.preheader ], [ %i.k, %bb.b ]
  %i.l = icmp ult i64 %i.e, 3
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.d
  %i.m = phi ptr [ %i.as, %bb.d ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !79
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !79
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %.lr.ph.1, label %.loopexit, !prof !27

.loopexit.split.loop.exit:                        ; preds = %.lr.ph.3
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  br label %.loopexit

.loopexit.split.loop.exit30:                      ; preds = %.lr.ph.2
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  br label %.loopexit

.loopexit.split.loop.exit32:                      ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit30, %.loopexit.split.loop.exit32, %.lr.ph
  %.lcssa22 = phi ptr [ %i.m, %.lr.ph ], [ %i.t, %.loopexit.split.loop.exit32 ], [ %i.s, %.loopexit.split.loop.exit30 ], [ %i.r, %.loopexit.split.loop.exit ], [ %i.f, %.lr.ph.prol ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77   ; 3 uses
  %i.w = icmp ugt ptr %.lcssa22, %i.v
  br i1 %i.w, label %bb.c, label %search_flush.exit7

bb.c:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.z = ptrtoint ptr %.lcssa22 to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call fastcc void @fbuffer_append(ptr noundef %i.y, ptr noundef %i.v, i64 noundef %i.ab)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !77
  br label %search_flush.exit7

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !76
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !79
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !79
  %.not.1 = icmp eq i8 %i.ah, 0
  br i1 %.not.1, label %.lr.ph.2, label %.loopexit.split.loop.exit32, !prof !27

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !76
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !79
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !79
  %.not.2 = icmp eq i8 %i.am, 0
  br i1 %.not.2, label %.lr.ph.3, label %.loopexit.split.loop.exit30, !prof !27

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !76
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !79
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !79
  %.not.3 = icmp eq i8 %i.ar, 0
  br i1 %.not.3, label %bb.d, label %.loopexit.split.loop.exit, !prof !27

bb.d:                                             ; preds = %.lr.ph.3
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !76
  %exitcond.not.3 = icmp eq ptr %i.as, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.d, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %scevgep, %bb.d ], [ %scevgep, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 3 uses
  %i.av = icmp ugt ptr %.lcssa, %i.au
  br i1 %i.av, label %bb.e, label %search_flush.exit7

bb.e:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !78 ; 4 uses
  %i.ay = ptrtoint ptr %.lcssa to i64
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.f, label %fbuffer_append_reserved.exit.i, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ax, i64 noundef %i.ba)
  %.pre.i = load i64, ptr %i.bd, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.f, %bb.e
  %i.bh = phi i64 [ %i.be, %bb.e ], [ %.pre.i, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr readonly align 1 %i.au, i64 %i.ba, i1 false)
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bm = add i64 %i.bl, %i.ba
  store i64 %i.bm, ptr %i.bd, align 8, !tbaa !81
  %i.bn = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !77
  br label %search_flush.exit7

search_flush.exit7:                               ; preds = %fbuffer_append_reserved.exit.i, %._crit_edge, %bb.c, %.loopexit
  %.0 = phi i8 [ 1, %bb.c ], [ 1, %.loopexit ], [ 0, %._crit_edge ], [ 0, %fbuffer_append_reserved.exit.i ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @State_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !39
  tail call void @rb_gc_mark_movable(i64 noundef %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  tail call void @rb_gc_mark_movable(i64 noundef %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  tail call void @rb_gc_mark_movable(i64 noundef %i.e) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  tail call void @rb_gc_mark_movable(i64 noundef %i.g) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  tail call void @rb_gc_mark_movable(i64 noundef %i.i) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  tail call void @rb_gc_mark_movable(i64 noundef %i.k) #24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @State_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ruby_xfree(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @State_memsize(ptr nofree readnone captures(none) %0) #7 {
bb.a:
  ret i64 88
}

; Function Attrs: nounwind uwtable
define internal void @State_compact(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !39
  %i.b = tail call i64 @rb_gc_location(i64 noundef %i.a) #24
  store i64 %i.b, ptr %0, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = tail call i64 @rb_gc_location(i64 noundef %i.d) #24
  store i64 %i.e, ptr %i.c, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43
  %i.h = tail call i64 @rb_gc_location(i64 noundef %i.g) #24
  store i64 %i.h, ptr %i.f, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@json_object_i:bb.a

bb.ae:                                            ; preds = %bb.ad, %fbuffer_append_char.exit71
  call void @generate_json(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str_repeat(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 8 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %fbuffer_inc_capa.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.g)
  br label %fbuffer_inc_capa.exit

fbuffer_inc_capa.exit:                            ; preds = %bb.a, %bb.b
  %.not7 = icmp eq i64 %2, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %fbuffer_inc_capa.exit
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge, label %fbuffer_append_reserved.exit.preheader

fbuffer_append_reserved.exit.preheader:           ; preds = %.lr.ph
  %.pre = load i64, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fbuffer_append_reserved.exit.prol.loopexit, label %fbuffer_append_reserved.exit.prol

fbuffer_append_reserved.exit.prol:                ; preds = %fbuffer_append_reserved.exit.preheader
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pre
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.j, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f                       ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !tbaa !81
  %i.s = add nsw i64 %2, -1
  br label %fbuffer_append_reserved.exit.prol.loopexit

fbuffer_append_reserved.exit.prol.loopexit:       ; preds = %fbuffer_append_reserved.exit.prol, %fbuffer_append_reserved.exit.preheader
  %.unr = phi i64 [ %.pre, %fbuffer_append_reserved.exit.preheader ], [ %i.r, %fbuffer_append_reserved.exit.prol ]
  %.08.unr = phi i64 [ %2, %fbuffer_append_reserved.exit.preheader ], [ %i.s, %fbuffer_append_reserved.exit.prol ]
  %i.t = icmp eq i64 %2, 1
  br i1 %i.t, label %._crit_edge, label %fbuffer_append_reserved.exit

fbuffer_append_reserved.exit:                     ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit
  %i.u = phi i64 [ %i.ac, %fbuffer_append_reserved.exit ], [ %.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %.08 = phi i64 [ %i.ad, %fbuffer_append_reserved.exit ], [ %.08.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.x = load i64, ptr %i.j, align 8, !tbaa !81
  %i.y = add i64 %i.x, %i.f                       ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !81
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, %i.f                     ; 2 uses
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !81
  %i.ad = add i64 %.08, -2                        ; 2 uses
  %.not.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.1, label %._crit_edge, label %fbuffer_append_reserved.exit

._crit_edge:                                      ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit, %.lr.ph, %fbuffer_inc_capa.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @json_inspect_hash_with_mixed_keys(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !97, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.i, 2
  %i.k = select i1 %i.j, i64 20, i64 0
  %i.l = load i64, ptr @mJSON, align 8, !tbaa !10
  %.pr.i = load i64, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.84, i64 noundef 18) #24 ; 3 uses
  store i64 %i.m, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.m, %.lr.ph.i ]
  %i.n = load i64, ptr %0, align 8, !tbaa !91
  %i.o = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.l, i64 noundef %.lcssa.i, i32 noundef 2, i64 noundef %i.n, i64 noundef %i.k) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %rbimpl_intern_const.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 1, -7) i64 @convert_string_subclass(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.a, i32 noundef 0) #24 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !38

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !24

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_obj_class(i64 noundef %0) #24 ; 2 uses
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  %i.m = tail call i64 @rb_obj_class(i64 noundef %i.b) #24
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.85, i64 noundef %i.k, ptr noundef nonnull @.str.53, i64 noundef %i.k, ptr noundef nonnull @.str.59, i64 noundef %i.m) #27
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  ret i64 %i.b
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #19 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #24 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @convert_UTF8_to_ASCII_only_JSON(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.promoted.i24 = load ptr, ptr %0, align 8, !tbaa !76 ; 3 uses
  %i.c = icmp ult ptr %.promoted.i24, %i.b
  br i1 %i.c, label %.lr.ph.preheader.i.lr.ph, label %._crit_edge.i

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %full_escape_UTF8_char.exit
  %.promoted.i25 = phi ptr [ %.promoted.i24, %.lr.ph.preheader.i.lr.ph ], [ %i.lv, %full_escape_UTF8_char.exit ] ; 5 uses
  %i.f = phi ptr [ %i.b, %.lr.ph.preheader.i.lr.ph ], [ %i.lw, %full_escape_UTF8_char.exit ] ; 3 uses
  %2 = ptrtoaddr ptr %i.f to i64
  %.promoted.i2593 = ptrtoaddr ptr %.promoted.i25 to i64
  %i.g = sub i64 %2, %.promoted.i2593
  %i.h = freeze i64 %i.g                          ; 2 uses
  %i.i = add i64 %i.h, -1
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %i.j = phi ptr [ %i.o, %bb.b ], [ %.promoted.i25, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.b ], [ 0, %.lr.ph.preheader.i ]
  %i.k = load i8, ptr %i.j, align 1, !tbaa !79
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !79    ; 2 uses
  %.not.not.i.prol = icmp eq i8 %i.n, 0
  br i1 %.not.not.i.prol, label %bb.b, label %.loopexit, !prof !27

bb.b:                                             ; preds = %.lr.ph.i.prol
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !102

.lr.ph.i.prol.loopexit:                           ; preds = %bb.b, %.lr.ph.preheader.i
  %.unr = phi ptr [ %.promoted.i25, %.lr.ph.preheader.i ], [ %i.o, %bb.b ]
  %i.p = icmp ult i64 %i.i, 3
  br i1 %i.p, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.e
  %i.q = phi ptr [ %i.bg, %bb.e ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !79
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !79    ; 2 uses
  %.not.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !27

.loopexit.split.loop.exit:                        ; preds = %.lr.ph.i.3
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  br label %.loopexit

.loopexit.split.loop.exit125:                     ; preds = %.lr.ph.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  br label %.loopexit

.loopexit.split.loop.exit128:                     ; preds = %.lr.ph.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit125, %.loopexit.split.loop.exit128, %.lr.ph.i
  %.lcssa82 = phi ptr [ %i.q, %.lr.ph.i ], [ %i.x, %.loopexit.split.loop.exit128 ], [ %i.w, %.loopexit.split.loop.exit125 ], [ %i.v, %.loopexit.split.loop.exit ], [ %i.j, %.lr.ph.i.prol ] ; 3 uses
  %.lcssa = phi i8 [ %i.u, %.lr.ph.i ], [ %i.av, %.loopexit.split.loop.exit128 ], [ %i.ba, %.loopexit.split.loop.exit125 ], [ %i.bf, %.loopexit.split.loop.exit ], [ %i.n, %.lr.ph.i.prol ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.z = icmp ugt ptr %.lcssa82, %i.y
  br i1 %i.z, label %bb.c, label %search_ascii_only_escape.exit

bb.c:                                             ; preds = %.loopexit
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.ab = ptrtoint ptr %.lcssa82 to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.d, label %fbuffer_append_reserved.exit.i, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.aa, i64 noundef %i.ad)
  %.pre.i = load i64, ptr %i.ag, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.d, %bb.c
  %i.ak = phi i64 [ %i.ah, %bb.c ], [ %.pre.i, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %i.y, i64 %i.ad, i1 false)
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !81
  %i.ap = add i64 %i.ao, %i.ad
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !81
  %i.aq = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !77
  br label %search_ascii_only_escape.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !76
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !79
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.1 = icmp eq i8 %i.av, 0
  br i1 %.not.not.i.1, label %.lr.ph.i.2, label %.loopexit.split.loop.exit128, !prof !27

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !76
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !79
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.2 = icmp eq i8 %i.ba, 0
  br i1 %.not.not.i.2, label %.lr.ph.i.3, label %.loopexit.split.loop.exit125, !prof !27

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !76
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !79
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.3 = icmp eq i8 %i.bf, 0
  br i1 %.not.not.i.3, label %bb.e, label %.loopexit.split.loop.exit, !prof !27

bb.e:                                             ; preds = %.lr.ph.i.3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !76
  %exitcond.not.i.3 = icmp eq ptr %i.bg, %i.f
  br i1 %exitcond.not.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %bb.e
  %.promoted23.i.le = ptrtoaddr ptr %.promoted.i25 to i64
  %3 = ptrtoaddr ptr %i.f to i64
  %i.bh = sub i64 %3, %.promoted23.i.le
  %scevgep.i.le = getelementptr i8, ptr %.promoted.i25, i64 %i.bh
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %full_escape_UTF8_char.exit, %bb.a, %._crit_edge.i.loopexit
  %.lcssa.i = phi ptr [ %scevgep.i.le, %._crit_edge.i.loopexit ], [ %.promoted.i24, %bb.a ], [ %i.lv, %full_escape_UTF8_char.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77 ; 3 uses
  %i.bk = icmp ugt ptr %.lcssa.i, %i.bj
  br i1 %i.bk, label %bb.f, label %search_ascii_only_escape.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 4 uses
  %i.bn = ptrtoint ptr %.lcssa.i to i64
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !81 ; 2 uses
  %i.bu = sub i64 %i.br, %i.bt
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.g, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.bm, i64 noundef %i.bp)
  %.pre.i.i = load i64, ptr %i.bs, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.g, %bb.f
  %i.bw = phi i64 [ %i.bt, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr readonly align 1 %i.bj, i64 %i.bp, i1 false)
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !81
  %i.cb = add i64 %i.ca, %i.bp
  store i64 %i.cb, ptr %i.bs, align 8, !tbaa !81
  %i.cc = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.cc, ptr %i.bi, align 8, !tbaa !77
  br label %search_ascii_only_escape.exit.thread

search_ascii_only_escape.exit:                    ; preds = %.loopexit, %fbuffer_append_reserved.exit.i
  %i.cd = phi ptr [ %.lcssa82, %.loopexit ], [ %i.aq, %fbuffer_append_reserved.exit.i ] ; 6 uses
  %i.ce = and i8 %.lcssa, 7                       ; 5 uses
  %.not = icmp eq i8 %i.ce, 0
  br i1 %.not, label %search_ascii_only_escape.exit.thread, label %bb.h

bb.h:                                             ; preds = %search_ascii_only_escape.exit
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !79  ; 5 uses
  switch i8 %i.ce, label %.lr.ph.preheader.i3 [
    i8 1, label %bb.i
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.i:                                             ; preds = %bb.h
  switch i8 %i.cf, label %bb.z [
    i8 34, label %bb.j
    i8 92, label %bb.l
    i8 47, label %bb.n
    i8 8, label %bb.p
    i8 12, label %bb.r
    i8 10, label %bb.t
    i8 13, label %bb.v
    i8 9, label %bb.x
  ]

bb.j:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 4 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !81 ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ult i64 %i.cl, 2
  br i1 %i.cm, label %bb.k, label %fbuffer_append.exit.i, !prof !71

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.cg, i64 noundef 2)
  %.pre.i.i6 = load i64, ptr %i.cj, align 8, !tbaa !81
  br label %fbuffer_append.exit.i

fbuffer_append.exit.i:                            ; preds = %bb.k, %bb.j
  %i.cn = phi i64 [ %i.ck, %bb.j ], [ %.pre.i.i6, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i16 8796, ptr %i.cq, align 1
  %i.cr = load i64, ptr %i.cj, align 8, !tbaa !81
  %i.cs = add i64 %i.cr, 2
  store i64 %i.cs, ptr %i.cj, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.l:                                             ; preds = %bb.i
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 4 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !81 ; 2 uses
  %i.cy = sub i64 %i.cv, %i.cx
  %i.cz = icmp ult i64 %i.cy, 2
  br i1 %i.cz, label %bb.m, label %fbuffer_append.exit61.i, !prof !71

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ct, i64 noundef 2)
  %.pre.i60.i = load i64, ptr %i.cw, align 8, !tbaa !81
  br label %fbuffer_append.exit61.i

fbuffer_append.exit61.i:                          ; preds = %bb.m, %bb.l
  %i.da = phi i64 [ %i.cx, %bb.l ], [ %.pre.i60.i, %bb.m ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !58
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i16 23644, ptr %i.dd, align 1
  %i.de = load i64, ptr %i.cw, align 8, !tbaa !81
  %i.df = add i64 %i.de, 2
  store i64 %i.df, ptr %i.cw, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.n:                                             ; preds = %bb.i
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !81 ; 2 uses
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = icmp ult i64 %i.dl, 2
  br i1 %i.dm, label %bb.o, label %fbuffer_append.exit63.i, !prof !71

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.dg, i64 noundef 2)
  %.pre.i62.i = load i64, ptr %i.dj, align 8, !tbaa !81
  br label %fbuffer_append.exit63.i

fbuffer_append.exit63.i:                          ; preds = %bb.o, %bb.n
  %i.dn = phi i64 [ %i.dk, %bb.n ], [ %.pre.i62.i, %bb.o ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i16 12124, ptr %i.dq, align 1
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !81
  %i.ds = add i64 %i.dr, 2
  store i64 %i.ds, ptr %i.dj, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.p:                                             ; preds = %bb.i
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 4 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !81 ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ult i64 %i.dy, 2
  br i1 %i.dz, label %bb.q, label %fbuffer_append.exit65.i, !prof !71

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.dt, i64 noundef 2)
  %.pre.i64.i = load i64, ptr %i.dw, align 8, !tbaa !81
  br label %fbuffer_append.exit65.i

fbuffer_append.exit65.i:                          ; preds = %bb.q, %bb.p
  %i.ea = phi i64 [ %i.dx, %bb.p ], [ %.pre.i64.i, %bb.q ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i16 25180, ptr %i.ed, align 1
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !81
  %i.ef = add i64 %i.ee, 2
  store i64 %i.ef, ptr %i.dw, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

bb.r:                                             ; preds = %bb.i
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !81 ; 2 uses
  %i.el = sub i64 %i.ei, %i.ek
  %i.em = icmp ult i64 %i.el, 2
  br i1 %i.em, label %bb.s, label %fbuffer_append.exit67.i, !prof !71

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.eg, i64 noundef 2)
  %.pre.i66.i = load i64, ptr %i.ej, align 8, !tbaa !81
  br label %fbuffer_append.exit67.i

fbuffer_append.exit67.i:                          ; preds = %bb.s, %bb.r
  %i.en = phi i64 [ %i.ek, %bb.r ], [ %.pre.i66.i, %bb.s ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !58
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i16 26204, ptr %i.eq, align 1
  %i.er = load i64, ptr %i.ej, align 8, !tbaa !81
  %i.es = add i64 %i.er, 2
  store i64 %i.es, ptr %i.ej, align 8, !tbaa !81
  br label %full_escape_UTF8_char.exit

end_hunk_1
