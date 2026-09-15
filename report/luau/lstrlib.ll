Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL10str_unpackP9lua_State:bb.a
  %i.ah = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 8 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aj = sub nsw i32 %i.w, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not327 = icmp eq i32 %i.w, 1
  br i1 %.not327, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next53.i = add nsw i32 %i.ah, -1
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = sub i32 %i.w, %indvars.iv.next53.i
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.ao, %i.at            ; 2 uses
  %i.av = icmp ugt i32 %i.w, 2
  br i1 %i.av, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next53.i.1 = add nsw i32 %i.ah, -2
  %i.aw = shl nuw nsw i64 %i.au, 8
  %i.ax = sub i32 %i.w, %indvars.iv.next53.i.1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ae, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.aw, %i.bb            ; 2 uses
  %.not328 = icmp eq i32 %i.w, 3
  br i1 %.not328, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next53.i.2 = add nsw i32 %i.ah, -3
  %i.bd = shl nuw nsw i64 %i.bc, 8
  %i.be = sub i32 %i.w, %indvars.iv.next53.i.2
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.ae, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bd, %i.bi            ; 2 uses
  %i.bk = icmp ugt i32 %i.w, 4
  br i1 %i.bk, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next53.i.3 = add nsw i32 %i.ah, -4
  %i.bl = shl i64 %i.bj, 8
  %i.bm = sub i32 %i.w, %indvars.iv.next53.i.3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.ae, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bl, %i.bq            ; 2 uses
  %.not329 = icmp eq i32 %i.w, 5
  br i1 %.not329, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next53.i.4 = add nsw i32 %i.ah, -5
  %i.bs = shl i64 %i.br, 8
  %i.bt = sub i32 %i.w, %indvars.iv.next53.i.4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.ae, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bs, %i.bx            ; 2 uses
  %i.bz = icmp ugt i32 %i.w, 6
  br i1 %i.bz, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next53.i.5 = add nsw i32 %i.ah, -6
  %i.ca = shl i64 %i.by, 8
  %i.cb = sub i32 %i.w, %indvars.iv.next53.i.5
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.ae, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i64
  %i.cg = or disjoint i64 %i.ca, %i.cf            ; 2 uses
  %.not330 = icmp eq i32 %i.w, 7
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i32 %i.ah, -7
  %i.ch = shl i64 %i.cg, 8
  %i.ci = sub i32 %i.w, %indvars.iv.next53.i.6
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ae, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ch, %i.cm
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.co = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %.not323 = icmp eq i32 %i.w, 1
  br i1 %.not323, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cu = getelementptr i8, ptr %i.ct, i64 -2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cs, %i.cw            ; 2 uses
  %i.cy = icmp ugt i32 %i.w, 2
  br i1 %i.cy, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.db = getelementptr i8, ptr %i.da, i64 -3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.cz, %i.dd            ; 2 uses
  %.not324 = icmp eq i32 %i.w, 3
  br i1 %.not324, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i64
  %i.dk = or disjoint i64 %i.df, %i.dj            ; 2 uses
  %i.dl = icmp ugt i32 %i.w, 4
  br i1 %i.dl, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.dm = shl i64 %i.dk, 8
  %i.dn = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.do = getelementptr i8, ptr %i.dn, i64 -5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i64
  %i.dr = or disjoint i64 %i.dm, %i.dq            ; 2 uses
  %.not325 = icmp eq i32 %i.w, 5
  br i1 %.not325, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.ds = shl i64 %i.dr, 8
  %i.dt = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.du = getelementptr i8, ptr %i.dt, i64 -6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.ds, %i.dw            ; 2 uses
  %i.dy = icmp ugt i32 %i.w, 6
  br i1 %i.dy, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dz = shl i64 %i.dx, 8
  %i.ea = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eb = getelementptr i8, ptr %i.ea, i64 -7
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = zext i8 %i.ec to i64
  %i.ee = or disjoint i64 %i.dz, %i.ed            ; 2 uses
  %.not326 = icmp eq i32 %i.w, 7
  br i1 %.not326, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.ef = shl i64 %i.ee, 8
  %i.eg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
  %i.ek = or disjoint i64 %i.ef, %i.ej
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7
  %.0.lcssa.i = phi i64 [ %i.cn, %.lr.ph.split.us.i.7 ], [ %i.an, %.lr.ph.split.us.i ], [ %i.au, %.lr.ph.split.us.i.1 ], [ %i.bc, %.lr.ph.split.us.i.2 ], [ %i.bj, %.lr.ph.split.us.i.3 ], [ %i.br, %.lr.ph.split.us.i.4 ], [ %i.by, %.lr.ph.split.us.i.5 ], [ %i.cg, %.lr.ph.split.us.i.6 ], [ %i.cr, %.lr.ph.split.i ], [ %i.cx, %.lr.ph.split.i.1 ], [ %i.de, %.lr.ph.split.i.2 ], [ %i.dk, %.lr.ph.split.i.3 ], [ %i.dr, %.lr.ph.split.i.4 ], [ %i.dx, %.lr.ph.split.i.5 ], [ %i.ee, %.lr.ph.split.i.6 ], [ %i.ek, %.lr.ph.split.i.7 ] ; 5 uses
  %i.el = icmp samesign ult i32 %i.w, 8
  br i1 %i.el, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa62.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.em = shl nsw i32 %i.w, 3
  %i.en = add nsw i32 %i.em, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 2 uses
  %i.eq = xor i64 %.0.lcssa62.i, %i.ep
  %i.er = sub i64 %i.eq, %i.ep
  br label %_ZL9unpackintP9lua_StatePKciii.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.w, 8
  br i1 %.not.i, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.g
  %i.es = icmp sgt i64 %.0.lcssa.i, -1
  %i.et = select i1 %i.es, i32 0, i32 255         ; 2 uses
  %i.eu = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %.not41.i, label %.lr.ph46.split.us.i, label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.i, %bb.h
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.h ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.ev = trunc nsw i64 %indvars.iv58.i to i32
  %i.ew = xor i32 %i.ev, -1
  %i.ex = add nsw i32 %i.w, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ae, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fb = zext i8 %i.fa to i32
  %.not39.us.i = icmp eq i32 %i.et, %i.fb
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next59.i, %i.eu
  br i1 %exitcond217.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next55.i, %i.eu
  br i1 %exitcond216.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.i, !llvm.loop !68

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.i, %bb.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.i ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = zext i8 %i.fd to i32
  %.not39.i = icmp eq i32 %i.et, %i.fe
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.er, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.ff = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.ff)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.fg = sext i32 %i.ab to i64
  %i.fh = getelementptr inbounds i8, ptr %i.f, i64 %i.fg ; 18 uses
  %i.fi = icmp sgt i32 %i.w, 0
  br i1 %i.fi, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit94

.lr.ph.i69:                                       ; preds = %bb.j
  %i.fj = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i70 = icmp eq i32 %i.fj, 0
  %i.fk = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.fl = zext nneg i32 %i.fk to i64              ; 8 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i90, label %.lr.ph.split.i71

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.i69
  %i.fm = sub nsw i32 %i.w, %i.fk
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fh, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %i.fp to i64                    ; 2 uses
  %.not319 = icmp eq i32 %i.w, 1
  br i1 %.not319, label %._crit_edge.i75, label %.lr.ph.split.us.i90.1

.lr.ph.split.us.i90.1:                            ; preds = %.lr.ph.split.us.i90
  %indvars.iv.next53.i93 = add nsw i32 %i.fk, -1
  %i.fr = shl nuw nsw i64 %i.fq, 8
  %i.fs = sub i32 %i.w, %indvars.iv.next53.i93
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fh, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.fw = zext i8 %i.fv to i64
  %i.fx = or disjoint i64 %i.fr, %i.fw            ; 2 uses
  %i.fy = icmp ugt i32 %i.w, 2
  br i1 %i.fy, label %.lr.ph.split.us.i90.2, label %._crit_edge.i75

.lr.ph.split.us.i90.2:                            ; preds = %.lr.ph.split.us.i90.1
  %indvars.iv.next53.i93.1 = add nsw i32 %i.fk, -2
  %i.fz = shl nuw nsw i64 %i.fx, 8
  %i.ga = sub i32 %i.w, %indvars.iv.next53.i93.1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fh, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.ge = zext i8 %i.gd to i64
  %i.gf = or disjoint i64 %i.fz, %i.ge            ; 2 uses
  %.not320 = icmp eq i32 %i.w, 3
  br i1 %.not320, label %._crit_edge.i75, label %.lr.ph.split.us.i90.3

.lr.ph.split.us.i90.3:                            ; preds = %.lr.ph.split.us.i90.2
  %indvars.iv.next53.i93.2 = add nsw i32 %i.fk, -3
  %i.gg = shl nuw nsw i64 %i.gf, 8
  %i.gh = sub i32 %i.w, %indvars.iv.next53.i93.2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.fh, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = or disjoint i64 %i.gg, %i.gl            ; 2 uses
  %i.gn = icmp ugt i32 %i.w, 4
  br i1 %i.gn, label %.lr.ph.split.us.i90.4, label %._crit_edge.i75

.lr.ph.split.us.i90.4:                            ; preds = %.lr.ph.split.us.i90.3
  %indvars.iv.next53.i93.3 = add nsw i32 %i.fk, -4
  %i.go = shl i64 %i.gm, 8
  %i.gp = sub i32 %i.w, %indvars.iv.next53.i93.3
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %i.fh, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i64
  %i.gu = or disjoint i64 %i.go, %i.gt            ; 2 uses
  %.not321 = icmp eq i32 %i.w, 5
  br i1 %.not321, label %._crit_edge.i75, label %.lr.ph.split.us.i90.5

.lr.ph.split.us.i90.5:                            ; preds = %.lr.ph.split.us.i90.4
  %indvars.iv.next53.i93.4 = add nsw i32 %i.fk, -5
  %i.gv = shl i64 %i.gu, 8
  %i.gw = sub i32 %i.w, %indvars.iv.next53.i93.4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %i.fh, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !13
  %i.ha = zext i8 %i.gz to i64
  %i.hb = or disjoint i64 %i.gv, %i.ha            ; 2 uses
  %i.hc = icmp ugt i32 %i.w, 6
  br i1 %i.hc, label %.lr.ph.split.us.i90.6, label %._crit_edge.i75

.lr.ph.split.us.i90.6:                            ; preds = %.lr.ph.split.us.i90.5
  %indvars.iv.next53.i93.5 = add nsw i32 %i.fk, -6
  %i.hd = shl i64 %i.hb, 8
  %i.he = sub i32 %i.w, %indvars.iv.next53.i93.5
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.fh, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i64
  %i.hj = or disjoint i64 %i.hd, %i.hi            ; 2 uses
  %.not322 = icmp eq i32 %i.w, 7
  br i1 %.not322, label %._crit_edge.i75, label %.lr.ph.split.us.i90.7

.lr.ph.split.us.i90.7:                            ; preds = %.lr.ph.split.us.i90.6
  %indvars.iv.next53.i93.6 = add nsw i32 %i.fk, -7
  %i.hk = shl i64 %i.hj, 8
  %i.hl = sub i32 %i.w, %indvars.iv.next53.i93.6
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.fh, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13
  %i.hp = zext i8 %i.ho to i64
  %i.hq = or disjoint i64 %i.hk, %i.hp
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.hr = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.hs = getelementptr i8, ptr %i.hr, i64 -1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !13
  %i.hu = zext i8 %i.ht to i64                    ; 2 uses
  %.not315 = icmp eq i32 %i.w, 1
  br i1 %.not315, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.hv = shl nuw nsw i64 %i.hu, 8
  %i.hw = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.hx = getelementptr i8, ptr %i.hw, i64 -2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !13
  %i.hz = zext i8 %i.hy to i64
  %i.ia = or disjoint i64 %i.hv, %i.hz            ; 2 uses
  %i.ib = icmp ugt i32 %i.w, 2
  br i1 %i.ib, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.ic = shl nuw nsw i64 %i.ia, 8
  %i.id = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ie = getelementptr i8, ptr %i.id, i64 -3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13
  %i.ig = zext i8 %i.if to i64
  %i.ih = or disjoint i64 %i.ic, %i.ig            ; 2 uses
  %.not316 = icmp eq i32 %i.w, 3
  br i1 %.not316, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.ii = shl nuw nsw i64 %i.ih, 8
  %i.ij = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !13
  %i.im = zext i8 %i.il to i64
  %i.in = or disjoint i64 %i.ii, %i.im            ; 2 uses
  %i.io = icmp ugt i32 %i.w, 4
  br i1 %i.io, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.ip = shl i64 %i.in, 8
  %i.iq = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ir = getelementptr i8, ptr %i.iq, i64 -5
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13
  %i.it = zext i8 %i.is to i64
  %i.iu = or disjoint i64 %i.ip, %i.it            ; 2 uses
  %.not317 = icmp eq i32 %i.w, 5
  br i1 %.not317, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.iv = shl i64 %i.iu, 8
  %i.iw = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ix = getelementptr i8, ptr %i.iw, i64 -6
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13
  %i.iz = zext i8 %i.iy to i64
  %i.ja = or disjoint i64 %i.iv, %i.iz            ; 2 uses
  %i.jb = icmp ugt i32 %i.w, 6
  br i1 %i.jb, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.jc = shl i64 %i.ja, 8
  %i.jd = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.je = getelementptr i8, ptr %i.jd, i64 -7
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13
  %i.jg = zext i8 %i.jf to i64
  %i.jh = or disjoint i64 %i.jc, %i.jg            ; 2 uses
  %.not318 = icmp eq i32 %i.w, 7
  br i1 %.not318, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.ji = shl i64 %i.jh, 8
  %i.jj = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !13
  %i.jm = zext i8 %i.jl to i64
  %i.jn = or disjoint i64 %i.ji, %i.jm
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i90.7, %.lr.ph.split.us.i90.6, %.lr.ph.split.us.i90.5, %.lr.ph.split.us.i90.4, %.lr.ph.split.us.i90.3, %.lr.ph.split.us.i90.2, %.lr.ph.split.us.i90.1, %.lr.ph.split.us.i90
  %.lcssa289 = phi i64 [ %i.fq, %.lr.ph.split.us.i90 ], [ %i.fx, %.lr.ph.split.us.i90.1 ], [ %i.gf, %.lr.ph.split.us.i90.2 ], [ %i.gm, %.lr.ph.split.us.i90.3 ], [ %i.gu, %.lr.ph.split.us.i90.4 ], [ %i.hb, %.lr.ph.split.us.i90.5 ], [ %i.hj, %.lr.ph.split.us.i90.6 ], [ %i.hq, %.lr.ph.split.us.i90.7 ] ; 2 uses
  %i.jo = icmp samesign ult i32 %i.w, 9
  br i1 %i.jo, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.preheader.i85

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa288 = phi i64 [ %i.hu, %.lr.ph.split.i71 ], [ %i.ia, %.lr.ph.split.i71.1 ], [ %i.ih, %.lr.ph.split.i71.2 ], [ %i.in, %.lr.ph.split.i71.3 ], [ %i.iu, %.lr.ph.split.i71.4 ], [ %i.ja, %.lr.ph.split.i71.5 ], [ %i.jh, %.lr.ph.split.i71.6 ], [ %i.jn, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.jp = icmp samesign ult i32 %i.w, 9
  br i1 %i.jp, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80.preheader

.lr.ph46.split.i80.preheader:                     ; preds = %._crit_edge.i75.thread
  %wide.trip.count211 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i80

.lr.ph46.split.us.preheader.i85:                  ; preds = %._crit_edge.i75
  %i.jq = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i86

.lr.ph46.split.us.i86:                            ; preds = %bb.k, %.lr.ph46.split.us.preheader.i85
  %indvars.iv58.i87 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i85 ], [ %indvars.iv.next59.i89, %bb.k ] ; 2 uses
  %i.jr = trunc nsw i64 %indvars.iv58.i87 to i32
  %i.js = xor i32 %i.jr, -1
  %i.jt = add nsw i32 %i.w, %i.js
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %i.fh, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !13
  %.not39.us.i88 = icmp eq i8 %i.jw, 0
  br i1 %.not39.us.i88, label %bb.k, label %.split.us.i83

bb.k:                                             ; preds = %.lr.ph46.split.us.i86
  %indvars.iv.next59.i89 = add nuw nsw i64 %indvars.iv58.i87, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next59.i89, %i.jq
  br i1 %exitcond213.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86, !llvm.loop !68

bb.l:                                             ; preds = %.lr.ph46.split.i80
  %indvars.iv.next55.i84 = add nuw nsw i64 %indvars.iv54.i81, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next55.i84, %wide.trip.count211
  br i1 %exitcond212.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80, !llvm.loop !68

.lr.ph46.split.i80:                               ; preds = %.lr.ph46.split.i80.preheader, %bb.l
  %indvars.iv54.i81 = phi i64 [ %indvars.iv.next55.i84, %bb.l ], [ 8, %.lr.ph46.split.i80.preheader ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv54.i81
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !13
  %.not39.i82 = icmp eq i8 %i.jy, 0
  br i1 %.not39.i82, label %bb.l, label %.split.us.i83

.split.us.i83:                                    ; preds = %.lr.ph46.split.i80, %.lr.ph46.split.us.i86
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit94:            ; preds = %bb.l, %bb.k, %._crit_edge.i75.thread, %._crit_edge.i75, %bb.j
  %.1.i68 = phi i64 [ %.lcssa288, %._crit_edge.i75.thread ], [ %.lcssa289, %._crit_edge.i75 ], [ 0, %bb.j ], [ %.lcssa289, %bb.k ], [ %.lcssa288, %bb.l ]
  %i.jz = uitofp i64 %.1.i68 to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.jz)
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ka = sext i32 %i.ab to i64
  %i.kb = getelementptr inbounds i8, ptr %i.f, i64 %i.ka ; 4 uses
  %i.kc = load i32, ptr %i.o, align 8, !tbaa !39
  %i.kd = icmp eq i32 %i.kc, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.kd, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter304 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.kh, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.ke, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.kf, %.lr.ph22.i.prol ], [ %i.kb, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.ke = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.kg = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.kg, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !69

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %2, %.lr.ph22.i.preheader ], [ %i.kh, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.w, %.lr.ph22.i.preheader ], [ %i.ke, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %i.kb, %.lr.ph22.i.preheader ], [ %i.kf, %.lr.ph22.i.prol ]
  %i.ki = icmp ult i32 %i.w, 8
  br i1 %i.ki, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.lh, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.le, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.lf, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.kk = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.kk, ptr %.021.i, align 1, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.kn = load volatile i8, ptr %i.kj, align 1, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.kn, ptr %i.kl, align 1, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.kq = load volatile i8, ptr %i.km, align 1, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.kq, ptr %i.ko, align 1, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.kt = load volatile i8, ptr %i.kp, align 1, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.kt, ptr %i.kr, align 1, !tbaa !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.kw = load volatile i8, ptr %i.ks, align 1, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.kw, ptr %i.ku, align 1, !tbaa !13
  %i.ky = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.kz = load volatile i8, ptr %i.kv, align 1, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.kz, ptr %i.kx, align 1, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.lc = load volatile i8, ptr %i.ky, align 1, !tbaa !13
  %i.ld = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.lc, ptr %i.la, align 1, !tbaa !13
  %i.le = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.lg = load volatile i8, ptr %i.lb, align 1, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.lg, ptr %i.ld, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.le, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.li = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i95.prol
  %.pn17.i.prol = phi ptr [ %.1.i96.prol, %.lr.ph.i95.prol ], [ %i.li, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.lj, %.lr.ph.i95.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.lk, %.lr.ph.i95.prol ], [ %i.kb, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i96.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.lj = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.ll = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.ll, ptr %.1.i96.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !70

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.li, %.lr.ph.preheader.i ], [ %.1.i96.prol, %.lr.ph.i95.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.lj, %.lr.ph.i95.prol ]
  %.11115.i.unr = phi ptr [ %i.kb, %.lr.ph.preheader.i ], [ %i.lk, %.lr.ph.i95.prol ]
  %i.lm = icmp ult i32 %i.w, 8
  br i1 %i.lm, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.pn17.i = phi ptr [ %.1.i96.7, %.lr.ph.i95 ], [ %.pn17.i.unr, %.lr.ph.i95.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.mb, %.lr.ph.i95 ], [ %.1916.i.unr, %.lr.ph.i95.prol.loopexit ]
  %.11115.i = phi ptr [ %i.mc, %.lr.ph.i95 ], [ %.11115.i.unr, %.lr.ph.i95.prol.loopexit ] ; 9 uses
  %.1.i96 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.ln = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.lo = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.lo, ptr %.1.i96, align 1, !tbaa !13
  %.1.i96.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.lp = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.lq = load volatile i8, ptr %i.ln, align 1, !tbaa !13
  store volatile i8 %i.lq, ptr %.1.i96.1, align 1, !tbaa !13
  %.1.i96.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.lr = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.ls = load volatile i8, ptr %i.lp, align 1, !tbaa !13
  store volatile i8 %i.ls, ptr %.1.i96.2, align 1, !tbaa !13
  %.1.i96.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.lt = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.lu = load volatile i8, ptr %i.lr, align 1, !tbaa !13
  store volatile i8 %i.lu, ptr %.1.i96.3, align 1, !tbaa !13
  %.1.i96.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.lv = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.lw = load volatile i8, ptr %i.lt, align 1, !tbaa !13
  store volatile i8 %i.lw, ptr %.1.i96.4, align 1, !tbaa !13
  %.1.i96.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.lx = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.ly = load volatile i8, ptr %i.lv, align 1, !tbaa !13
  store volatile i8 %i.ly, ptr %.1.i96.5, align 1, !tbaa !13
  %.1.i96.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.lz = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.ma = load volatile i8, ptr %i.lx, align 1, !tbaa !13
  store volatile i8 %i.ma, ptr %.1.i96.6, align 1, !tbaa !13
  %.1.i96.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.mb = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.md = load volatile i8, ptr %i.lz, align 1, !tbaa !13
  store volatile i8 %i.md, ptr %.1.i96.7, align 1, !tbaa !13
  %.not.i97.7 = icmp eq i32 %i.mb, 0
  br i1 %.not.i97.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.me = load volatile float, ptr %2, align 8, !tbaa !13
  %i.mf = fpext float %i.me to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.mg = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.mh = load volatile double, ptr %2, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZL10str_unpackP9lua_State:bb.a
  %i.ml = getelementptr inbounds i8, ptr %i.f, i64 %i.mk ; 19 uses
  %i.mm = icmp sgt i32 %i.w, 0
  br i1 %i.mm, label %.lr.ph.i101, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

.lr.ph.i101:                                      ; preds = %bb.s
  %i.mn = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i102 = icmp eq i32 %i.mn, 0
  %i.mo = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.mp = zext nneg i32 %i.mo to i64              ; 8 uses
  br i1 %.not41.i102, label %.lr.ph.split.us.i122, label %.lr.ph.split.i103

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.i101
  %i.mq = sub nsw i32 %i.w, %i.mo
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds i8, ptr %i.ml, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !13
  %i.mu = zext i8 %i.mt to i64                    ; 2 uses
  %.not311 = icmp eq i32 %i.w, 1
  br i1 %.not311, label %._crit_edge.i107, label %.lr.ph.split.us.i122.1

.lr.ph.split.us.i122.1:                           ; preds = %.lr.ph.split.us.i122
  %indvars.iv.next53.i125 = add nsw i32 %i.mo, -1
  %i.mv = shl nuw nsw i64 %i.mu, 8
  %i.mw = sub i32 %i.w, %indvars.iv.next53.i125
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.ml, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i64
  %i.nb = or disjoint i64 %i.mv, %i.na            ; 2 uses
  %i.nc = icmp ugt i32 %i.w, 2
  br i1 %i.nc, label %.lr.ph.split.us.i122.2, label %._crit_edge.i107

.lr.ph.split.us.i122.2:                           ; preds = %.lr.ph.split.us.i122.1
  %indvars.iv.next53.i125.1 = add nsw i32 %i.mo, -2
  %i.nd = shl nuw nsw i64 %i.nb, 8
  %i.ne = sub i32 %i.w, %indvars.iv.next53.i125.1
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %i.ml, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = zext i8 %i.nh to i64
  %i.nj = or disjoint i64 %i.nd, %i.ni            ; 2 uses
  %.not312 = icmp eq i32 %i.w, 3
  br i1 %.not312, label %._crit_edge.i107, label %.lr.ph.split.us.i122.3

.lr.ph.split.us.i122.3:                           ; preds = %.lr.ph.split.us.i122.2
  %indvars.iv.next53.i125.2 = add nsw i32 %i.mo, -3
  %i.nk = shl nuw nsw i64 %i.nj, 8
  %i.nl = sub i32 %i.w, %indvars.iv.next53.i125.2
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %i.ml, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !13
  %i.np = zext i8 %i.no to i64
  %i.nq = or disjoint i64 %i.nk, %i.np            ; 2 uses
  %i.nr = icmp ugt i32 %i.w, 4
  br i1 %i.nr, label %.lr.ph.split.us.i122.4, label %._crit_edge.i107

.lr.ph.split.us.i122.4:                           ; preds = %.lr.ph.split.us.i122.3
  %indvars.iv.next53.i125.3 = add nsw i32 %i.mo, -4
  %i.ns = shl i64 %i.nq, 8
  %i.nt = sub i32 %i.w, %indvars.iv.next53.i125.3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds i8, ptr %i.ml, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !13
  %i.nx = zext i8 %i.nw to i64
  %i.ny = or disjoint i64 %i.ns, %i.nx            ; 2 uses
  %.not313 = icmp eq i32 %i.w, 5
  br i1 %.not313, label %._crit_edge.i107, label %.lr.ph.split.us.i122.5

.lr.ph.split.us.i122.5:                           ; preds = %.lr.ph.split.us.i122.4
  %indvars.iv.next53.i125.4 = add nsw i32 %i.mo, -5
  %i.nz = shl i64 %i.ny, 8
  %i.oa = sub i32 %i.w, %indvars.iv.next53.i125.4
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.ml, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !13
  %i.oe = zext i8 %i.od to i64
  %i.of = or disjoint i64 %i.nz, %i.oe            ; 2 uses
  %i.og = icmp ugt i32 %i.w, 6
  br i1 %i.og, label %.lr.ph.split.us.i122.6, label %._crit_edge.i107

.lr.ph.split.us.i122.6:                           ; preds = %.lr.ph.split.us.i122.5
  %indvars.iv.next53.i125.5 = add nsw i32 %i.mo, -6
  %i.oh = shl i64 %i.of, 8
  %i.oi = sub i32 %i.w, %indvars.iv.next53.i125.5
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.ml, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !13
  %i.om = zext i8 %i.ol to i64
  %i.on = or disjoint i64 %i.oh, %i.om            ; 2 uses
  %.not314 = icmp eq i32 %i.w, 7
  br i1 %.not314, label %._crit_edge.i107, label %.lr.ph.split.us.i122.7

.lr.ph.split.us.i122.7:                           ; preds = %.lr.ph.split.us.i122.6
  %indvars.iv.next53.i125.6 = add nsw i32 %i.mo, -7
  %i.oo = shl i64 %i.on, 8
  %i.op = sub i32 %i.w, %indvars.iv.next53.i125.6
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds i8, ptr %i.ml, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !13
  %i.ot = zext i8 %i.os to i64
  %i.ou = or disjoint i64 %i.oo, %i.ot
  br label %._crit_edge.i107

.lr.ph.split.i103:                                ; preds = %.lr.ph.i101
  %i.ov = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.ow = getelementptr i8, ptr %i.ov, i64 -1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !13
  %i.oy = zext i8 %i.ox to i64                    ; 2 uses
  %.not307 = icmp eq i32 %i.w, 1
  br i1 %.not307, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.1

.lr.ph.split.i103.1:                              ; preds = %.lr.ph.split.i103
  %i.oz = shl nuw nsw i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !13
  %i.pd = zext i8 %i.pc to i64
  %i.pe = or disjoint i64 %i.oz, %i.pd            ; 2 uses
  %i.pf = icmp ugt i32 %i.w, 2
  br i1 %i.pf, label %.lr.ph.split.i103.2, label %._crit_edge.i107.thread

.lr.ph.split.i103.2:                              ; preds = %.lr.ph.split.i103.1
  %i.pg = shl nuw nsw i64 %i.pe, 8
  %i.ph = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pi = getelementptr i8, ptr %i.ph, i64 -3
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !13
  %i.pk = zext i8 %i.pj to i64
  %i.pl = or disjoint i64 %i.pg, %i.pk            ; 2 uses
  %.not308 = icmp eq i32 %i.w, 3
  br i1 %.not308, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.3

.lr.ph.split.i103.3:                              ; preds = %.lr.ph.split.i103.2
  %i.pm = shl nuw nsw i64 %i.pl, 8
  %i.pn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.po = getelementptr i8, ptr %i.pn, i64 -4
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !13
  %i.pq = zext i8 %i.pp to i64
  %i.pr = or disjoint i64 %i.pm, %i.pq            ; 2 uses
  %i.ps = icmp ugt i32 %i.w, 4
  br i1 %i.ps, label %.lr.ph.split.i103.4, label %._crit_edge.i107.thread

.lr.ph.split.i103.4:                              ; preds = %.lr.ph.split.i103.3
  %i.pt = shl i64 %i.pr, 8
  %i.pu = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pv = getelementptr i8, ptr %i.pu, i64 -5
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !13
  %i.px = zext i8 %i.pw to i64
  %i.py = or disjoint i64 %i.pt, %i.px            ; 2 uses
  %.not309 = icmp eq i32 %i.w, 5
  br i1 %.not309, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.5

.lr.ph.split.i103.5:                              ; preds = %.lr.ph.split.i103.4
  %i.pz = shl i64 %i.py, 8
  %i.qa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qb = getelementptr i8, ptr %i.qa, i64 -6
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !13
  %i.qd = zext i8 %i.qc to i64
  %i.qe = or disjoint i64 %i.pz, %i.qd            ; 2 uses
  %i.qf = icmp ugt i32 %i.w, 6
  br i1 %i.qf, label %.lr.ph.split.i103.6, label %._crit_edge.i107.thread

.lr.ph.split.i103.6:                              ; preds = %.lr.ph.split.i103.5
  %i.qg = shl i64 %i.qe, 8
  %i.qh = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qi = getelementptr i8, ptr %i.qh, i64 -7
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !13
  %i.qk = zext i8 %i.qj to i64
  %i.ql = or disjoint i64 %i.qg, %i.qk            ; 2 uses
  %.not310 = icmp eq i32 %i.w, 7
  br i1 %.not310, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.7

.lr.ph.split.i103.7:                              ; preds = %.lr.ph.split.i103.6
  %i.qm = shl i64 %i.ql, 8
  %i.qn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qo = getelementptr i8, ptr %i.qn, i64 -8
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !13
  %i.qq = zext i8 %i.qp to i64
  %i.qr = or disjoint i64 %i.qm, %i.qq
  br label %._crit_edge.i107.thread

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i122.7, %.lr.ph.split.us.i122.6, %.lr.ph.split.us.i122.5, %.lr.ph.split.us.i122.4, %.lr.ph.split.us.i122.3, %.lr.ph.split.us.i122.2, %.lr.ph.split.us.i122.1, %.lr.ph.split.us.i122
  %.lcssa287 = phi i64 [ %i.mu, %.lr.ph.split.us.i122 ], [ %i.nb, %.lr.ph.split.us.i122.1 ], [ %i.nj, %.lr.ph.split.us.i122.2 ], [ %i.nq, %.lr.ph.split.us.i122.3 ], [ %i.ny, %.lr.ph.split.us.i122.4 ], [ %i.of, %.lr.ph.split.us.i122.5 ], [ %i.on, %.lr.ph.split.us.i122.6 ], [ %i.ou, %.lr.ph.split.us.i122.7 ] ; 2 uses
  %i.qs = icmp samesign ult i32 %i.w, 9
  br i1 %i.qs, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.preheader.i117

._crit_edge.i107.thread:                          ; preds = %.lr.ph.split.i103.7, %.lr.ph.split.i103.6, %.lr.ph.split.i103.5, %.lr.ph.split.i103.4, %.lr.ph.split.i103.3, %.lr.ph.split.i103.2, %.lr.ph.split.i103.1, %.lr.ph.split.i103
  %.lcssa = phi i64 [ %i.oy, %.lr.ph.split.i103 ], [ %i.pe, %.lr.ph.split.i103.1 ], [ %i.pl, %.lr.ph.split.i103.2 ], [ %i.pr, %.lr.ph.split.i103.3 ], [ %i.py, %.lr.ph.split.i103.4 ], [ %i.qe, %.lr.ph.split.i103.5 ], [ %i.ql, %.lr.ph.split.i103.6 ], [ %i.qr, %.lr.ph.split.i103.7 ] ; 2 uses
  %i.qt = icmp samesign ult i32 %i.w, 9
  br i1 %i.qt, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112.preheader

.lr.ph46.split.i112.preheader:                    ; preds = %._crit_edge.i107.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i112

.lr.ph46.split.us.preheader.i117:                 ; preds = %._crit_edge.i107
  %i.qu = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i118

.lr.ph46.split.us.i118:                           ; preds = %bb.t, %.lr.ph46.split.us.preheader.i117
  %indvars.iv58.i119 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i117 ], [ %indvars.iv.next59.i121, %bb.t ] ; 2 uses
  %i.qv = trunc nsw i64 %indvars.iv58.i119 to i32
  %i.qw = xor i32 %i.qv, -1
  %i.qx = add nsw i32 %i.w, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %i.ml, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !13
  %.not39.us.i120 = icmp eq i8 %i.ra, 0
  br i1 %.not39.us.i120, label %bb.t, label %.split.us.i115

bb.t:                                             ; preds = %.lr.ph46.split.us.i118
  %indvars.iv.next59.i121 = add nuw nsw i64 %indvars.iv58.i119, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next59.i121, %i.qu
  br i1 %exitcond209.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118, !llvm.loop !68

bb.u:                                             ; preds = %.lr.ph46.split.i112
  %indvars.iv.next55.i116 = add nuw nsw i64 %indvars.iv54.i113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i116, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112, !llvm.loop !68

.lr.ph46.split.i112:                              ; preds = %.lr.ph46.split.i112.preheader, %bb.u
  %indvars.iv54.i113 = phi i64 [ %indvars.iv.next55.i116, %bb.u ], [ 8, %.lr.ph46.split.i112.preheader ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv54.i113
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !13
  %.not39.i114 = icmp eq i8 %i.rc, 0
  br i1 %.not39.i114, label %bb.u, label %.split.us.i115

.split.us.i115:                                   ; preds = %.lr.ph46.split.i112, %.lr.ph46.split.us.i118
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126:           ; preds = %bb.u, %bb.t, %._crit_edge.i107.thread, %._crit_edge.i107
  %.0.lcssa.i108226 = phi i64 [ %.lcssa, %._crit_edge.i107.thread ], [ %.lcssa287, %bb.t ], [ %.lcssa287, %._crit_edge.i107 ], [ %.lcssa, %bb.u ] ; 2 uses
  %i.rd = load i64, ptr %i.b, align 8, !tbaa !12
  %i.re = add nsw i64 %i.mk, %i.x
  %i.rf = sub i64 %i.rd, %i.re
  %.not65 = icmp ugt i64 %.0.lcssa.i108226, %i.rf
  br i1 %.not65, label %bb.v, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

bb.v:                                             ; preds = %_ZL9unpackintP9lua_StatePKciii.exit126
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126.thread:    ; preds = %bb.s, %_ZL9unpackintP9lua_StatePKciii.exit126
  %.1.i100129 = phi i64 [ %.0.lcssa.i108226, %_ZL9unpackintP9lua_StatePKciii.exit126 ], [ 0, %bb.s ] ; 2 uses
  %i.rg = getelementptr inbounds i8, ptr %i.ml, i64 %i.x
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.rg, i64 noundef %.1.i100129)
  %i.rh = trunc i64 %.1.i100129 to i32
  %i.ri = add nsw i32 %i.ab, %i.rh
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.rj = sext i32 %i.ab to i64                   ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %i.f, i64 %i.rj ; 2 uses
  %i.rl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rk) #15 ; 3 uses
  %i.rm = add i64 %i.rl, %i.rj
  %i.rn = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ro = icmp ult i64 %i.rm, %i.rn
  br i1 %i.ro, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.rk, i64 noundef %i.rl)
  %i.rp = trunc i64 %i.rl to i32
  %i.rq = add i32 %i.ab, 1
  %i.rr = add i32 %i.rq, %i.rp
  br label %bb.z

default.unreachable219:                           ; preds = %bb.e
  unreachable

bb.z:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.y, %_ZL9unpackintP9lua_StatePKciii.exit126.thread, %bb.r, %bb.q, %_ZL9unpackintP9lua_StatePKciii.exit94, %_ZL9unpackintP9lua_StatePKciii.exit
  %.160 = phi i32 [ %i.ac, %bb.y ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %.059179, %bb.e ], [ %.059179, %bb.e ], [ %.059179, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.rr, %bb.y ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.ri, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ]
  %i.rs = add nsw i32 %.1, %i.w                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.rt = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !13
  %.not63 = icmp eq i8 %i.ru, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.rv = add nsw i32 %i.rs, 1
  %i.rw = add nsw i32 %.160, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.059.lcssa = phi i32 [ 1, %bb.c ], [ %i.rw, %._crit_edge.loopexit ]
  %.058.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.rv, %._crit_edge.loopexit ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.058.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.059.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_Z17luaL_buffinitsizeP9lua_StateP11luaL_Strbufm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z19luaL_pushresultsizeP11luaL_Strbufm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL12str_find_auxP9lua_Statei(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.MatchState, align 8         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 8 uses
  %i.d = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 9 uses
  %i.e = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12
  %i.g = icmp slt i32 %i.e, 0
  %i.h = trunc i64 %i.f to i32
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = select i1 %i.g, i32 %i.i, i32 0
  %.0.i = add nsw i32 %i.j, %i.e                  ; 3 uses
  %i.k = icmp slt i32 %.0.i, 1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %.0.i, %i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  br label %bb.n

bb.d:                                             ; preds = %bb.a, %bb.b
  %.048 = phi i32 [ %.0.i, %bb.b ], [ 1, %bb.a ]  ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._ZL10nospecialsPKcm.exit.thread_crit_edge, label %bb.e

._ZL10nospecialsPKcm.exit.thread_crit_edge:       ; preds = %bb.d
  %.pre92.pre = load i64, ptr %i.b, align 8, !tbaa !12
  br label %_ZL10nospecialsPKcm.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i32 @_Z13lua_tobooleanP9lua_Statei(ptr noundef %0, i32 noundef 4)
  %.not56 = icmp eq i32 %i.m, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  br i1 %.not56, label %.preheader, label %_ZL10nospecialsPKcm.exit

.preheader:                                       ; preds = %bb.e, %bb.f
  %.0.i64 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i64 ; 2 uses
  %i.o = call noundef ptr @strpbrk(ptr noundef readonly %i.n, ptr noundef nonnull @.str.20) #15
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %_ZL10nospecialsPKcm.exit.thread

bb.f:                                             ; preds = %.preheader
  %i.p = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #15
  %i.q = add i64 %.0.i64, 1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %.not9.i = icmp ugt i64 %i.r, %.pre
  br i1 %.not9.i, label %_ZL10nospecialsPKcm.exit, label %.preheader, !llvm.loop !72

_ZL10nospecialsPKcm.exit:                         ; preds = %bb.f, %bb.e
  %i.s = zext nneg i32 %.048 to i64               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !12
  %i.w = sub i64 %i.v, %i.s
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = icmp eq i64 %.pre, 0
  br i1 %i.y, label %_ZL8lmemfindPKcmS0_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZL10nospecialsPKcm.exit
  %i.z = icmp ugt i64 %.pre, %i.x
  br i1 %i.z, label %.critedge62, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = add i64 %.pre, -1                       ; 2 uses
  %i.ab = sub nuw i64 %i.x, %i.aa
end_hunk_1
