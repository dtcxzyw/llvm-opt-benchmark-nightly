Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@timelocalw:bb.a
  br label %bb.ba

cmp.exit.thread:                                  ; preds = %bb.e, %bb.b, %bb.j, %cmp.exit, %cmp.exit85
  %i.cv = tail call fastcc i64 @timegmw(ptr noundef nonnull %0) ; 12 uses
  %i.cw = call fastcc ptr @localtimew(i64 noundef %i.cv, ptr noundef %2)
  %.not60 = icmp eq ptr %i.cw, null
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %cmp.exit.thread
  %i.cx = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cx, ptr noundef nonnull @.str.116) #19
  unreachable

bb.s:                                             ; preds = %cmp.exit.thread
  %i.cy = load i64, ptr %0, align 8, !tbaa !59    ; 4 uses
  %i.cz = load i64, ptr %2, align 8, !tbaa !59    ; 7 uses
  %i.da = and i64 %i.cz, 1                        ; 2 uses
  %i.db = and i64 %i.da, %i.cy
  %or.cond.not.i.i = icmp eq i64 %i.db, 0
  br i1 %or.cond.not.i.i, label %eq.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.s
  %i.dc = icmp eq i64 %i.cy, %i.cz
  br i1 %i.dc, label %bb.x, label %bb.t

eq.exit.i:                                        ; preds = %bb.s
  %i.dd = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cy, i64 noundef 140, i32 noundef 1, i64 noundef %i.cz) #18
  %i.de = and i64 %i.dd, -5
  %.not.i92 = icmp eq i64 %i.de, 0
  br i1 %.not.i92, label %eq.exit.i._crit_edge, label %bb.x

eq.exit.i._crit_edge:                             ; preds = %eq.exit.i
  %.pre = load i64, ptr %0, align 8, !tbaa !59
  br label %bb.t

bb.t:                                             ; preds = %eq.exit.i._crit_edge, %.split.i
  %i.df = phi i64 [ %.pre, %eq.exit.i._crit_edge ], [ %i.cy, %.split.i ] ; 8 uses
  %i.dg = and i64 %i.da, %i.df
  %or.cond.not.i45.i = icmp eq i64 %i.dg, 0
  br i1 %or.cond.not.i45.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp slt i64 %i.df, %i.cz
  br i1 %i.dh, label %select.unfold128, label %cmp.exit.thread.i

bb.v:                                             ; preds = %bb.t
  %i.di = icmp eq i64 %i.df, 0
  %i.dj = and i64 %i.df, 7
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = or i1 %i.di, %i.dk
  br i1 %i.dl, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i91

rbimpl_RB_TYPE_P_fastpath.exit.i.i91:             ; preds = %bb.v
  %i.dm = inttoptr i64 %i.df to ptr
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !33
  %i.do = and i64 %i.dn, 31
  %i.dp = icmp eq i64 %i.do, 10
  br i1 %i.dp, label %bb.w, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i91
  %i.dq = call i64 @rb_big_cmp(i64 noundef %i.df, i64 noundef %i.cz) #18
  %i.dr = call i64 @rb_fix2int(i64 noundef %i.dq) #18
  %i.ds = trunc i64 %i.dr to i32
  br label %cmp.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i91, %bb.v
  %i.dt = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.df, i64 noundef 135, i32 noundef 1, i64 noundef %i.cz) #18
  %i.du = call i32 @rb_cmpint(i64 noundef %i.dt, i64 noundef %i.df, i64 noundef %i.cz) #18
  br label %cmp.exit.i

cmp.exit.i:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %bb.w
  %.0.i46.i = phi i32 [ %i.du, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.ds, %bb.w ]
  %.0.i46.fr.i = freeze i32 %.0.i46.i
  %.inv.i = icmp sgt i32 %.0.i46.fr.i, -1
  br i1 %.inv.i, label %cmp.exit.thread.i, label %select.unfold128

bb.x:                                             ; preds = %eq.exit.i, %.split.i
  %i.dv = getelementptr i8, ptr %0, i64 32
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = trunc i64 %i.dw to i32                  ; 4 uses
  %i.dy = lshr i32 %i.dx, 9
  %i.dz = and i32 %i.dy, 15                       ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = trunc i64 %i.eb to i32                  ; 4 uses
  %i.ed = lshr i32 %i.ec, 9
  %i.ee = and i32 %i.ed, 15                       ; 2 uses
  %.not38.i = icmp eq i32 %i.dz, %i.ee
  br i1 %.not38.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = icmp samesign ult i32 %i.dz, %i.ee
  br i1 %i.ef, label %select.unfold128, label %cmp.exit.thread.i

bb.z:                                             ; preds = %bb.x
  %i.eg = lshr i32 %i.dx, 13
  %i.eh = and i32 %i.eg, 31                       ; 2 uses
  %i.ei = lshr i32 %i.ec, 13
  %i.ej = and i32 %i.ei, 31                       ; 2 uses
  %.not39.i = icmp eq i32 %i.eh, %i.ej
  br i1 %.not39.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = icmp samesign ult i32 %i.eh, %i.ej
  br i1 %i.ek, label %select.unfold128, label %cmp.exit.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.el = lshr i32 %i.dx, 18
  %i.em = and i32 %i.el, 31                       ; 2 uses
  %i.en = lshr i32 %i.ec, 18
  %i.eo = and i32 %i.en, 31                       ; 2 uses
  %.not40.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not40.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = icmp samesign ult i32 %i.em, %i.eo
  br i1 %i.ep, label %select.unfold128, label %cmp.exit.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.eq = lshr i32 %i.dx, 23
  %i.er = and i32 %i.eq, 63                       ; 2 uses
  %i.es = lshr i32 %i.ec, 23
  %i.et = and i32 %i.es, 63                       ; 2 uses
  %.not41.i = icmp eq i32 %i.er, %i.et
  br i1 %.not41.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = icmp samesign ult i32 %i.er, %i.et
  br i1 %i.eu, label %select.unfold128, label %cmp.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.ev = lshr i64 %i.dw, 32
  %i.ew = trunc nuw i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 63                       ; 2 uses
  %i.ey = lshr i64 %i.eb, 32
  %i.ez = trunc nuw i64 %i.ey to i32
  %i.fa = and i32 %i.ez, 63                       ; 2 uses
  %.not42.i = icmp eq i32 %i.ex, %i.fa
  br i1 %.not42.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = icmp samesign ult i32 %i.ex, %i.fa
  br i1 %i.fb, label %select.unfold128, label %cmp.exit.thread.i

bb.ah:                                            ; preds = %bb.af
  %i.fc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !57
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !57 ; 2 uses
  %i.fg = call fastcc i32 @eq(i64 noundef %i.fd, i64 noundef %i.ff)
  %.not43.i = icmp eq i32 %i.fg, 0
  br i1 %.not43.i, label %bb.ai, label %vtmcmp.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fh = load i64, ptr %i.fc, align 8, !tbaa !57
  %i.fi = call fastcc i32 @cmp(i64 noundef %i.fh, i64 noundef %i.ff)
  %.inv44.i = icmp sgt i32 %i.fi, -1
  br i1 %.inv44.i, label %cmp.exit.thread.i, label %select.unfold128

vtmcmp.exit:                                      ; preds = %bb.ah
  %i.fj = call fastcc i64 @wsub(i64 noundef %i.cv, i64 noundef 86400000000001) ; 2 uses
  %i.fk = call fastcc ptr @localtimew(i64 noundef %i.fj, ptr noundef %2)
  %.not61 = icmp eq ptr %i.fk, null
  br i1 %.not61, label %bb.aj, label %cmp.exit.thread.i

bb.aj:                                            ; preds = %vtmcmp.exit
  %i.fl = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fl, ptr noundef nonnull @.str.116) #19
  unreachable

select.unfold128:                                 ; preds = %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.u, %cmp.exit.i, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !78
  %i.fm = call fastcc i64 @wsub(i64 noundef %i.cv, i64 noundef 172800000000001) ; 2 uses
  %i.fn = call fastcc ptr @localtimew(i64 noundef %i.fm, ptr noundef %2)
  %.not63 = icmp eq ptr %i.fn, null
  br i1 %.not63, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %select.unfold128
  %i.fo = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fo, ptr noundef nonnull @.str.116) #19
  unreachable

cmp.exit.thread.i:                                ; preds = %bb.ai, %vtmcmp.exit, %bb.u, %cmp.exit.i, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.055127 = phi i64 [ %i.cv, %bb.u ], [ %i.cv, %bb.y ], [ %i.cv, %bb.aa ], [ %i.cv, %bb.ac ], [ %i.cv, %bb.ae ], [ %i.cv, %bb.ag ], [ %i.fj, %vtmcmp.exit ], [ %i.cv, %cmp.exit.i ], [ %i.cv, %bb.ai ] ; 2 uses
  %i.fp = call fastcc i64 @wadd(i64 noundef %.055127, i64 noundef 172800000000001) ; 2 uses
  %i.fq = call fastcc ptr @localtimew(i64 noundef %i.fp, ptr noundef %3)
  %.not62 = icmp eq ptr %i.fq, null
  br i1 %.not62, label %bb.al, label %bb.am

bb.al:                                            ; preds = %cmp.exit.thread.i
  %i.fr = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fr, ptr noundef nonnull @.str.116) #19
  unreachable

bb.am:                                            ; preds = %cmp.exit.thread.i, %select.unfold128
  %.1 = phi i64 [ %i.fm, %select.unfold128 ], [ %.055127, %cmp.exit.thread.i ]
  %.054 = phi i64 [ %i.cv, %select.unfold128 ], [ %i.fp, %cmp.exit.thread.i ]
  %.val75 = load i64, ptr %2, align 8, !tbaa !59
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.val76 = load i64, ptr %i.fs, align 8
  %i.ft = call fastcc i64 @small_vtm_sub(ptr noundef nonnull %0, i64 %.val75, i64 %.val76) ; 5 uses
  %i.fu = and i64 %i.ft, 7
  %.not140 = icmp eq i64 %i.fu, 0
  br i1 %.not140, label %rbimpl_RB_TYPE_P_fastpath.exit.i93, label %v2w.exit97

rbimpl_RB_TYPE_P_fastpath.exit.i93:               ; preds = %bb.am
  %i.fv = inttoptr i64 %i.ft to ptr               ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !33
  %i.fx = and i64 %i.fw, 31
  %i.fy = icmp eq i64 %i.fx, 15
  br i1 %i.fy, label %bb.an, label %v2w.exit97

bb.an:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i93
  %i.fz = getelementptr i8, ptr %i.fv, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !42
  %.not.i96 = icmp eq i64 %i.ga, 3
  br i1 %.not.i96, label %bb.ao, label %v2w.exit97

bb.ao:                                            ; preds = %bb.an
  %i.gb = getelementptr i8, ptr %i.fv, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !43
  br label %v2w.exit97

v2w.exit97:                                       ; preds = %bb.am, %rbimpl_RB_TYPE_P_fastpath.exit.i93, %bb.an, %bb.ao
  %.06.i95 = phi i64 [ %i.ft, %bb.an ], [ %i.gc, %bb.ao ], [ %i.ft, %rbimpl_RB_TYPE_P_fastpath.exit.i93 ], [ %i.ft, %bb.am ]
  %i.gd = call fastcc i64 @wmul(i64 noundef %.06.i95, i64 noundef 2000000001)
  %i.ge = call fastcc i64 @wadd(i64 noundef %.1, i64 noundef %i.gd) ; 9 uses
  %.val = load i64, ptr %3, align 8, !tbaa !59
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.val74 = load i64, ptr %i.gf, align 8
  %i.gg = call fastcc i64 @small_vtm_sub(ptr noundef nonnull %0, i64 %.val, i64 %.val74) ; 5 uses
  %i.gh = and i64 %i.gg, 7
  %.not141 = icmp eq i64 %i.gh, 0
  br i1 %.not141, label %rbimpl_RB_TYPE_P_fastpath.exit.i98, label %v2w.exit102

rbimpl_RB_TYPE_P_fastpath.exit.i98:               ; preds = %v2w.exit97
  %i.gi = inttoptr i64 %i.gg to ptr               ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !33
  %i.gk = and i64 %i.gj, 31
  %i.gl = icmp eq i64 %i.gk, 15
  br i1 %i.gl, label %bb.ap, label %v2w.exit102

bb.ap:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i98
  %i.gm = getelementptr i8, ptr %i.gi, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !42
  %.not.i101 = icmp eq i64 %i.gn, 3
  br i1 %.not.i101, label %bb.aq, label %v2w.exit102

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr i8, ptr %i.gi, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !43
  br label %v2w.exit102

v2w.exit102:                                      ; preds = %v2w.exit97, %rbimpl_RB_TYPE_P_fastpath.exit.i98, %bb.ap, %bb.aq
  %.06.i100 = phi i64 [ %i.gg, %bb.ap ], [ %i.gp, %bb.aq ], [ %i.gg, %rbimpl_RB_TYPE_P_fastpath.exit.i98 ], [ %i.gg, %v2w.exit97 ]
  %i.gq = call fastcc i64 @wmul(i64 noundef %.06.i100, i64 noundef 2000000001)
  %i.gr = call fastcc i64 @wadd(i64 noundef %.054, i64 noundef %i.gq) ; 7 uses
  %i.gs = and i64 %i.ge, 1
  %i.gt = and i64 %i.gs, %i.gr
  %or.cond.not.i.i103 = icmp eq i64 %i.gt, 0
  br i1 %or.cond.not.i.i103, label %weq.exit, label %.split

.split:                                           ; preds = %v2w.exit102
  %i.gu = icmp eq i64 %i.ge, %i.gr
  br i1 %i.gu, label %bb.ba, label %bb.ar

weq.exit:                                         ; preds = %v2w.exit102
  %i.gv = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ge, i64 noundef 140, i32 noundef 1, i64 noundef %i.gr) #18
  %i.gw = and i64 %i.gv, -5
  %.not156 = icmp eq i64 %i.gw, 0
  br i1 %.not156, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %.split, %weq.exit
  %i.gx = call fastcc ptr @localtimew(i64 noundef %i.ge, ptr noundef %2)
  %.not65 = icmp eq ptr %i.gx, null
  br i1 %.not65, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gy = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gy, ptr noundef nonnull @.str.116) #19
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.gz = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = load i64, ptr %i.fs, align 8
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = and i64 %i.hc, 271119548416
  %or.cond137 = icmp eq i64 %i.hd, 0
  br i1 %or.cond137, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.he = call fastcc ptr @localtimew(i64 noundef %i.gr, ptr noundef %3)
  %.not69 = icmp eq ptr %i.he, null
  br i1 %.not69, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hf = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hf, ptr noundef nonnull @.str.116) #19
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hg = load i64, ptr %i.gz, align 8            ; 2 uses
  %i.hh = load i64, ptr %i.gf, align 8
  %i.hi = xor i64 %i.hh, %i.hg
  %i.hj = and i64 %i.hi, 271119548416
  %or.cond139 = icmp eq i64 %i.hj, 0
  br i1 %or.cond139, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hk = and i64 %i.hg, 6597069766656
  %.not73 = icmp eq i64 %i.hk, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !61
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !61
  %i.hp = call fastcc i32 @cmp(i64 noundef %i.hm, i64 noundef %i.ho)
  %i.hq = icmp slt i32 %i.hp, 0                   ; 2 uses
  br i1 %.not73, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hr = select i1 %i.hq, i64 %i.gr, i64 %i.ge
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hs = select i1 %i.hq, i64 %i.ge, i64 %i.gr
  br label %bb.ba

bb.ba:                                            ; preds = %.split, %bb.aw, %bb.at, %weq.exit, %bb.az, %bb.ay, %v2w.exit
  %.056 = phi i64 [ %i.cu, %v2w.exit ], [ %i.hs, %bb.az ], [ %i.ge, %weq.exit ], [ %i.gr, %bb.at ], [ %i.hr, %bb.ay ], [ %i.ge, %bb.aw ], [ %i.ge, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.056
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @small_vtm_sub(ptr nofree noundef readonly captures(none) %0, i64 %.0.val, i64 %.32.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.d, 63
  %i.f = lshr i64 %.32.val, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = and i32 %i.g, 63
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = trunc i64 %i.b to i32                    ; 2 uses
  %i.k = lshr i32 %i.j, 23
  %i.l = and i32 %i.k, 63
  %i.m = trunc i64 %.32.val to i32                ; 4 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = and i32 %i.n, 63
  %i.p = sub nsw i32 %i.l, %i.o
  %i.q = mul nsw i32 %i.p, 60
  %i.r = add nsw i32 %i.i, %i.q
  %i.s = lshr i32 %i.j, 18
  %i.t = and i32 %i.s, 31
  %i.u = lshr i32 %i.m, 18
  %i.v = and i32 %i.u, 31
  %i.w = sub nsw i32 %i.t, %i.v
  %i.x = mul nsw i32 %i.w, 3600
  %i.y = add nsw i32 %i.r, %i.x                   ; 4 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.aa = and i64 %.0.val, 1                      ; 2 uses
  %i.ab = and i64 %i.aa, %i.z
  %or.cond.not.i = icmp eq i64 %i.ab, 0
  br i1 %or.cond.not.i, label %eq.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.ac = icmp eq i64 %i.z, %.0.val
  br i1 %i.ac, label %bb.f, label %bb.b

eq.exit:                                          ; preds = %bb.a
  %i.ad = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.z, i64 noundef 140, i32 noundef 1, i64 noundef %.0.val) #18
  %i.ae = and i64 %i.ad, -5
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.split, %eq.exit
  %i.af = load i64, ptr %0, align 8, !tbaa !59    ; 8 uses
  %i.ag = and i64 %i.aa, %i.af
  %or.cond.not.i29 = icmp eq i64 %i.ag, 0
  br i1 %or.cond.not.i29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp slt i64 %i.af, %.0.val
  br i1 %i.ah, label %cmp.exit.thread, label %cmp.exit.thread3

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp eq i64 %i.af, 0
  %i.aj = and i64 %i.af, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.am = inttoptr i64 %i.af to ptr
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = and i64 %i.an, 31
  %i.ap = icmp eq i64 %i.ao, 10
  br i1 %i.ap, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aq = tail call i64 @rb_big_cmp(i64 noundef %i.af, i64 noundef %.0.val) #18
  %i.ar = tail call i64 @rb_fix2int(i64 noundef %i.aq) #18
  %i.as = trunc i64 %i.ar to i32
  br label %cmp.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.af, i64 noundef 135, i32 noundef 1, i64 noundef %.0.val) #18
  %i.au = tail call i32 @rb_cmpint(i64 noundef %i.at, i64 noundef %i.af, i64 noundef %.0.val) #18
  br label %cmp.exit

cmp.exit:                                         ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i30 = phi i32 [ %i.au, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.as, %bb.e ]
  %.0.i30.fr = freeze i32 %.0.i30
  %i.av = icmp slt i32 %.0.i30.fr, 0
  br i1 %i.av, label %cmp.exit.thread, label %cmp.exit.thread3

cmp.exit.thread:                                  ; preds = %bb.c, %cmp.exit
  br label %cmp.exit.thread3

cmp.exit.thread3:                                 ; preds = %bb.c, %cmp.exit, %cmp.exit.thread
  %i.aw = phi i32 [ -86400, %cmp.exit.thread ], [ 86400, %cmp.exit ], [ 86400, %bb.c ]
  %i.ax = add nsw i32 %i.aw, %i.y
  br label %bb.j

bb.f:                                             ; preds = %.split, %eq.exit
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i32 %i.az, 9
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = lshr i32 %i.m, 9
  %i.bd = and i32 %i.bc, 15                       ; 2 uses
  %.not27 = icmp eq i32 %i.bb, %i.bd
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = icmp samesign ult i32 %i.bb, %i.bd
  %i.bf = select i1 %i.be, i32 -86400, i32 86400
  %i.bg = add nsw i32 %i.bf, %i.y
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bh = lshr i32 %i.az, 13
  %i.bi = and i32 %i.bh, 31                       ; 2 uses
  %i.bj = lshr i32 %i.m, 13
  %i.bk = and i32 %i.bj, 31                       ; 2 uses
  %.not28 = icmp eq i32 %i.bi, %i.bk
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp samesign ult i32 %i.bi, %i.bk
  %i.bm = select i1 %i.bl, i32 -86400, i32 86400
  %i.bn = add nsw i32 %i.bm, %i.y
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %cmp.exit.thread3
  %.0 = phi i32 [ %i.bg, %bb.g ], [ %i.bn, %bb.i ], [ %i.y, %bb.h ], [ %i.ax, %cmp.exit.thread3 ]
  %i.bo = sext i32 %.0 to i64
  %i.bp = shl nsw i64 %i.bo, 1
  %i.bq = or disjoint i64 %i.bp, 1
  ret i64 %i.bq
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @eq(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = and i64 %i.a, %1
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 140, i32 noundef 1, i64 noundef %1) #18
  %i.e = and i64 %i.d, -5
  %i.f = icmp ne i64 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

declare i64 @rb_big_div(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_Float(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_time_unmagnify_to_float(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 15
  br i1 %i.h, label %quor.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

quor.exit.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call i64 @rb_numeric_quo(i64 noundef %0, i64 noundef 2000000001) #18 ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = and i64 %i.i, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %quov.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %quor.exit.i
  %i.n = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 15
  br i1 %i.q, label %bb.b, label %quov.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = getelementptr i8, ptr %i.n, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %bb.c, label %quov.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  br label %quov.exit

quov.exit:                                        ; preds = %quor.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b, %bb.c
end_hunk_0
