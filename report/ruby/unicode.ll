Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/unicode?download=true
inline.NumInlined: 47
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = and i32 %i.ap, 7                        ; 8 uses
  %i.ar = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i32 %i.aq, 1
  br i1 %i.as, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  store i32 %i.l, ptr %4, align 4, !tbaa !66
  %i.at = getelementptr i8, ptr %4, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !67
  %i.au = getelementptr i8, ptr %i.am, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10 ; 16 uses
  %i.aw = getelementptr i8, ptr %4, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !10
  %i.ax = add i32 %i.av, -97
  %or.cond.i268 = icmp ult i32 %i.ax, 125155
  br i1 %or.cond.i268, label %bb.j, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ay = and i32 %i.av, 127
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 132
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !12
  %i.bd = zext i16 %i.bc to i32
  %i.be = lshr i32 %i.av, 7
  %i.bf = and i32 %i.be, 127
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !12
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.bd
  %i.bm = lshr i32 %i.av, 14
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !12
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bl, %i.bq            ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, 2884
  br i1 %i.bs, label %bb.k, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !12 ; 2 uses
  %i.bw = icmp sgt i16 %i.bv, -1
  br i1 %i.bw, label %bb.l, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bx = zext nneg i16 %i.bv to i64
  %i.by = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.bx ; 5 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26
  %.fr.i271 = freeze i32 %i.bz
  %.not.i.not.i272 = icmp ne i32 %i.av, %.fr.i271
  %i.ca = getelementptr i8, ptr %i.by, i64 4      ; 2 uses
  %.not260 = icmp eq ptr %i.ca, null
  %or.cond351 = or i1 %.not260, %.not.i.not.i272
  br i1 %or.cond351, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !27 ; 2 uses
  %i.cc = and i32 %i.cb, 4
  %.not261.not = icmp eq i32 %i.cc, 0
  br i1 %.not261.not, label %.preheader365, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread

.preheader365:                                    ; preds = %bb.m
  %i.cd = and i32 %i.cb, 3                        ; 3 uses
  %.not432 = icmp eq i32 %i.cd, 0
  br i1 %.not432, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader365
  %i.ce = getelementptr i8, ptr %i.by, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10 ; 2 uses
  %.not267 = icmp eq i32 %i.cf, %i.d
  br i1 %.not267, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph415
  %i.cg = getelementptr i8, ptr %4, i64 20
  store i32 %i.l, ptr %i.cg, align 4, !tbaa !66
  %i.ch = getelementptr i8, ptr %4, i64 24
  store i32 1, ptr %i.ch, align 4, !tbaa !67
  %i.ci = getelementptr i8, ptr %4, i64 28
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph415, %bb.n
  %.1228 = phi i32 [ 2, %bb.n ], [ 1, %.lr.ph415 ] ; 4 uses
  %exitcond485.not = icmp eq i32 %i.cd, 1
  br i1 %exitcond485.not, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr i8, ptr %i.by, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !10 ; 2 uses
  %.not267.1 = icmp eq i32 %i.ck, %i.d
  br i1 %.not267.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = zext nneg i32 %.1228 to i64
  %i.cm = getelementptr [20 x i8], ptr %4, i64 %i.cl ; 3 uses
  store i32 %i.l, ptr %i.cm, align 4, !tbaa !66
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !67
  %i.co = getelementptr i8, ptr %i.cm, i64 8
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !10
  %i.cp = add nuw nsw i32 %.1228, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1228.1 = phi i32 [ %i.cp, %bb.q ], [ %.1228, %bb.p ] ; 4 uses
  %exitcond485.not.1 = icmp eq i32 %i.cd, 2
  br i1 %exitcond485.not.1, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr i8, ptr %i.by, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10 ; 2 uses
  %.not267.2 = icmp eq i32 %i.cr, %i.d
  br i1 %.not267.2, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = sext i32 %.1228.1 to i64
  %i.ct = getelementptr [20 x i8], ptr %4, i64 %i.cs ; 3 uses
  store i32 %i.l, ptr %i.ct, align 4, !tbaa !66
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  store i32 1, ptr %i.cu, align 4, !tbaa !67
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !10
  %i.cw = add nsw i32 %.1228.1, 1
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread

bb.u:                                             ; preds = %bb.h
  %i.cx = and i32 %1, 1073741824
  %.not256 = icmp eq i32 %i.cx, 0
  br i1 %.not256, label %onigenc_unicode_CaseUnfold_11_lookup.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cy = getelementptr i8, ptr %i.am, i64 8      ; 3 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !10 ; 6 uses
  store i32 %i.cz, ptr %i.a, align 16, !tbaa !10
  %i.da = add i32 %i.cz, -97
  %or.cond.i273 = icmp ult i32 %i.da, 125155
  br i1 %or.cond.i273, label %bb.w, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread

bb.w:                                             ; preds = %bb.v
  %i.db = and i32 %i.cz, 127
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 132
  %i.df = load i16, ptr %i.de, align 2, !tbaa !12
  %i.dg = zext i16 %i.df to i32
  %i.dh = lshr i32 %i.cz, 7
  %i.di = and i32 %i.dh, 127
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !12
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, %i.dg
  %i.dp = lshr i32 %i.cz, 14
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !12
  %i.dt = zext i16 %i.ds to i32
  %i.du = add nuw nsw i32 %i.do, %i.dt            ; 2 uses
  %i.dv = icmp samesign ult i32 %i.du, 2884
  br i1 %i.dv, label %bb.x, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread

bb.x:                                             ; preds = %bb.w
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !12 ; 2 uses
  %i.dz = icmp sgt i16 %i.dy, -1
  br i1 %i.dz, label %bb.y, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread

bb.y:                                             ; preds = %bb.x
  %i.ea = zext nneg i16 %i.dy to i64
  %i.eb = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.ea ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !26
  %.fr.i276 = freeze i32 %i.ec
  %.not.i.not.i277 = icmp ne i32 %i.cz, %.fr.i276
  %i.ed = getelementptr i8, ptr %i.eb, i64 4      ; 2 uses
  %.not259 = icmp eq ptr %i.ed, null
  %or.cond352 = or i1 %.not259, %.not.i.not.i277
  br i1 %or.cond352, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread, label %.preheader375

.preheader375:                                    ; preds = %bb.y
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27 ; 2 uses
  %i.ef = and i32 %i.ee, 7                        ; 2 uses
  %.not429 = icmp eq i32 %i.ef, 0
  br i1 %.not429, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader375
  %i.eg = getelementptr i8, ptr %i.eb, i64 8
  %i.eh = shl i32 %i.ee, 2
  %i.ei = and i32 %i.eh, 28
  %i.ej = zext nneg i32 %i.ei to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %i.eg, i64 range(i64 0, 29) %i.ej, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader375
  %i.ek = add nuw nsw i32 %i.ef, 1
  %i.el = zext nneg i32 %i.ek to i64
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread: ; preds = %._crit_edge, %bb.w, %bb.x, %bb.y, %bb.v
  %.sink = phi i64 [ %i.el, %._crit_edge ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.v ] ; 2 uses
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.em = getelementptr i8, ptr %i.am, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !10 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.en, ptr %i.eo, align 16, !tbaa !10
  %i.ep = add i32 %i.en, -97
  %or.cond.i273.1 = icmp ult i32 %i.ep, 125155
  br i1 %or.cond.i273.1, label %bb.z, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1

bb.z:                                             ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread
  %i.eq = and i32 %i.en, 127
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 132
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !12
  %i.ev = zext i16 %i.eu to i32
  %i.ew = lshr i32 %i.en, 7
  %i.ex = and i32 %i.ew, 127
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !12
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.fc, %i.ev
  %i.fe = lshr i32 %i.en, 14
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !12
  %i.fi = zext i16 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.fd, %i.fi            ; 2 uses
  %i.fk = icmp samesign ult i32 %i.fj, 2884
  br i1 %i.fk, label %bb.aa, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1

bb.aa:                                            ; preds = %bb.z
  %i.fl = zext nneg i32 %i.fj to i64
  %i.fm = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !12 ; 2 uses
  %i.fo = icmp sgt i16 %i.fn, -1
  br i1 %i.fo, label %bb.ab, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1

bb.ab:                                            ; preds = %bb.aa
  %i.fp = zext nneg i16 %i.fn to i64
  %i.fq = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.fp ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !26
  %.fr.i276.1 = freeze i32 %i.fr
  %.not.i.not.i277.1 = icmp ne i32 %i.en, %.fr.i276.1
  %i.fs = getelementptr i8, ptr %i.fq, i64 4      ; 2 uses
  %.not259.1 = icmp eq ptr %i.fs, null
  %or.cond352.1 = or i1 %.not259.1, %.not.i.not.i277.1
  br i1 %or.cond352.1, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1, label %.preheader375.1

.preheader375.1:                                  ; preds = %bb.ab
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !27 ; 2 uses
  %i.fu = and i32 %i.ft, 7                        ; 2 uses
  %.not429.1 = icmp eq i32 %i.fu, 0
  br i1 %.not429.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader375.1
  %i.fv = getelementptr i8, ptr %i.fq, i64 8
  %i.fw = shl i32 %i.ft, 2
  %i.fx = and i32 %i.fw, 28
  %i.fy = zext nneg i32 %i.fx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep.1, ptr align 4 %i.fv, i64 range(i64 0, 29) %i.fy, i1 false), !tbaa !10
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.preheader375.1
  %i.fz = add nuw nsw i32 %i.fu, 1
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1: ; preds = %._crit_edge.1, %bb.ab, %bb.aa, %bb.z, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread
  %.sink.1 = phi i32 [ %i.fz, %._crit_edge.1 ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread ] ; 6 uses
  %exitcond.not.1 = icmp eq i32 %i.aq, 2
  br i1 %exitcond.not.1, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %bb.ac

bb.ac:                                            ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ga = getelementptr i8, ptr %i.am, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !10 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.gb, ptr %i.gc, align 16, !tbaa !10
  %i.gd = add i32 %i.gb, -97
  %or.cond.i273.2 = icmp ult i32 %i.gd, 125155
  br i1 %or.cond.i273.2, label %bb.ad, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2

bb.ad:                                            ; preds = %bb.ac
  %i.ge = and i32 %i.gb, 127
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 132
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !12
  %i.gj = zext i16 %i.gi to i32
  %i.gk = lshr i32 %i.gb, 7
  %i.gl = and i32 %i.gk, 127
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !12
  %i.gq = zext i16 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.gq, %i.gj
  %i.gs = lshr i32 %i.gb, 14
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !12
  %i.gw = zext i16 %i.gv to i32
  %i.gx = add nuw nsw i32 %i.gr, %i.gw            ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, 2884
  br i1 %i.gy, label %bb.ae, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2

bb.ae:                                            ; preds = %bb.ad
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !12 ; 2 uses
  %i.hc = icmp sgt i16 %i.hb, -1
  br i1 %i.hc, label %bb.af, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2

bb.af:                                            ; preds = %bb.ae
  %i.hd = zext nneg i16 %i.hb to i64
  %i.he = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.hd ; 3 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !26
  %.fr.i276.2 = freeze i32 %i.hf
  %.not.i.not.i277.2 = icmp ne i32 %i.gb, %.fr.i276.2
  %i.hg = getelementptr i8, ptr %i.he, i64 4      ; 2 uses
  %.not259.2 = icmp eq ptr %i.hg, null
  %or.cond352.2 = or i1 %.not259.2, %.not.i.not.i277.2
  br i1 %or.cond352.2, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2, label %.preheader375.2

.preheader375.2:                                  ; preds = %bb.af
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !27 ; 2 uses
  %i.hi = and i32 %i.hh, 7                        ; 2 uses
  %.not429.2 = icmp eq i32 %i.hi, 0
  br i1 %.not429.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader375.2
  %i.hj = getelementptr i8, ptr %i.he, i64 8
  %i.hk = shl i32 %i.hh, 2
  %i.hl = and i32 %i.hk, 28
  %i.hm = zext nneg i32 %i.hl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep.2, ptr align 4 %i.hj, i64 range(i64 0, 29) %i.hm, i1 false), !tbaa !10
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.preheader375.2
  %i.hn = add nuw nsw i32 %i.hi, 1
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2: ; preds = %._crit_edge.2, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink.2 = phi i32 [ %i.hn, %._crit_edge.2 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ac ] ; 10 uses
  %exitcond.not.2 = icmp eq i32 %i.aq, 3
  br i1 %exitcond.not.2, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %bb.ag

bb.ag:                                            ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2
  %scevgep.3 = getelementptr i8, ptr %i.a, i64 52
  %i.ho = getelementptr i8, ptr %i.am, i64 20
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !10 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.hp, ptr %i.hq, align 16, !tbaa !10
  %i.hr = add i32 %i.hp, -97
  %or.cond.i273.3 = icmp ult i32 %i.hr, 125155
  br i1 %or.cond.i273.3, label %bb.ah, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3

bb.ah:                                            ; preds = %bb.ag
  %i.hs = and i32 %i.hp, 127
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 132
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !12
  %i.hx = zext i16 %i.hw to i32
  %i.hy = lshr i32 %i.hp, 7
  %i.hz = and i32 %i.hy, 127
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 8
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !12
  %i.ie = zext i16 %i.id to i32
  %i.if = add nuw nsw i32 %i.ie, %i.hx
  %i.ig = lshr i32 %i.hp, 14
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !12
  %i.ik = zext i16 %i.ij to i32
  %i.il = add nuw nsw i32 %i.if, %i.ik            ; 2 uses
  %i.im = icmp samesign ult i32 %i.il, 2884
  br i1 %i.im, label %bb.ai, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3

bb.ai:                                            ; preds = %bb.ah
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !12 ; 2 uses
  %i.iq = icmp sgt i16 %i.ip, -1
  br i1 %i.iq, label %bb.aj, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3

bb.aj:                                            ; preds = %bb.ai
  %i.ir = zext nneg i16 %i.ip to i64
  %i.is = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.ir ; 3 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !26
  %.fr.i276.3 = freeze i32 %i.it
  %.not.i.not.i277.3 = icmp ne i32 %i.hp, %.fr.i276.3
  %i.iu = getelementptr i8, ptr %i.is, i64 4      ; 2 uses
  %.not259.3 = icmp eq ptr %i.iu, null
  %or.cond352.3 = or i1 %.not259.3, %.not.i.not.i277.3
  br i1 %or.cond352.3, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3, label %.preheader375.3

.preheader375.3:                                  ; preds = %bb.aj
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !27 ; 2 uses
  %i.iw = and i32 %i.iv, 7
  %.not429.3 = icmp eq i32 %i.iw, 0
  br i1 %.not429.3, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader375.3
  %i.ix = getelementptr i8, ptr %i.is, i64 8
  %i.iy = shl i32 %i.iv, 2
  %i.iz = and i32 %i.iy, 28
  %i.ja = zext nneg i32 %i.iz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.3, ptr align 4 %i.ix, i64 range(i64 0, 29) %i.ja, i1 false), !tbaa !10
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3: ; preds = %.preheader375.3, %.lr.ph.3, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %exitcond.not.3 = icmp eq i32 %i.aq, 4
  br i1 %exitcond.not.3, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %bb.ak

bb.ak:                                            ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3
  %scevgep.4 = getelementptr i8, ptr %i.a, i64 68
  %i.jb = getelementptr i8, ptr %i.am, i64 24
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !10 ; 6 uses
  %i.jd = getelementptr i8, ptr %i.a, i64 64
  store i32 %i.jc, ptr %i.jd, align 16, !tbaa !10
  %i.je = add i32 %i.jc, -97
  %or.cond.i273.4 = icmp ult i32 %i.je, 125155
  br i1 %or.cond.i273.4, label %bb.al, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4

bb.al:                                            ; preds = %bb.ak
  %i.jf = and i32 %i.jc, 127
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 132
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !12
  %i.jk = zext i16 %i.jj to i32
  %i.jl = lshr i32 %i.jc, 7
  %i.jm = and i32 %i.jl, 127
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !12
  %i.jr = zext i16 %i.jq to i32
  %i.js = add nuw nsw i32 %i.jr, %i.jk
  %i.jt = lshr i32 %i.jc, 14
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !12
  %i.jx = zext i16 %i.jw to i32
  %i.jy = add nuw nsw i32 %i.js, %i.jx            ; 2 uses
  %i.jz = icmp samesign ult i32 %i.jy, 2884
  br i1 %i.jz, label %bb.am, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4

bb.am:                                            ; preds = %bb.al
  %i.ka = zext nneg i32 %i.jy to i64
  %i.kb = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !12 ; 2 uses
  %i.kd = icmp sgt i16 %i.kc, -1
  br i1 %i.kd, label %bb.an, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4

bb.an:                                            ; preds = %bb.am
  %i.ke = zext nneg i16 %i.kc to i64
  %i.kf = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.ke ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !26
  %.fr.i276.4 = freeze i32 %i.kg
  %.not.i.not.i277.4 = icmp ne i32 %i.jc, %.fr.i276.4
  %i.kh = getelementptr i8, ptr %i.kf, i64 4      ; 2 uses
  %.not259.4 = icmp eq ptr %i.kh, null
  %or.cond352.4 = or i1 %.not259.4, %.not.i.not.i277.4
  br i1 %or.cond352.4, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4, label %.preheader375.4

.preheader375.4:                                  ; preds = %bb.an
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !27 ; 2 uses
  %i.kj = and i32 %i.ki, 7
  %.not429.4 = icmp eq i32 %i.kj, 0
  br i1 %.not429.4, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader375.4
  %i.kk = getelementptr i8, ptr %i.kf, i64 8
  %i.kl = shl i32 %i.ki, 2
  %i.km = and i32 %i.kl, 28
  %i.kn = zext nneg i32 %i.km to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.4, ptr align 4 %i.kk, i64 range(i64 0, 29) %i.kn, i1 false), !tbaa !10
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4: ; preds = %.preheader375.4, %.lr.ph.4, %bb.an, %bb.am, %bb.al, %bb.ak
  %exitcond.not.4 = icmp eq i32 %i.aq, 5
  br i1 %exitcond.not.4, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %bb.ao

bb.ao:                                            ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4
  %scevgep.5 = getelementptr i8, ptr %i.a, i64 84
  %i.ko = getelementptr i8, ptr %i.am, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !10 ; 6 uses
  %i.kq = getelementptr i8, ptr %i.a, i64 80
  store i32 %i.kp, ptr %i.kq, align 16, !tbaa !10
  %i.kr = add i32 %i.kp, -97
  %or.cond.i273.5 = icmp ult i32 %i.kr, 125155
  br i1 %or.cond.i273.5, label %bb.ap, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5

bb.ap:                                            ; preds = %bb.ao
  %i.ks = and i32 %i.kp, 127
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 132
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !12
  %i.kx = zext i16 %i.kw to i32
  %i.ky = lshr i32 %i.kp, 7
  %i.kz = and i32 %i.ky, 127
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !12
  %i.le = zext i16 %i.ld to i32
  %i.lf = add nuw nsw i32 %i.le, %i.kx
  %i.lg = lshr i32 %i.kp, 14
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !12
  %i.lk = zext i16 %i.lj to i32
  %i.ll = add nuw nsw i32 %i.lf, %i.lk            ; 2 uses
  %i.lm = icmp samesign ult i32 %i.ll, 2884
  br i1 %i.lm, label %bb.aq, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5

bb.aq:                                            ; preds = %bb.ap
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !12 ; 2 uses
  %i.lq = icmp sgt i16 %i.lp, -1
  br i1 %i.lq, label %bb.ar, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5

bb.ar:                                            ; preds = %bb.aq
  %i.lr = zext nneg i16 %i.lp to i64
  %i.ls = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.lr ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !26
  %.fr.i276.5 = freeze i32 %i.lt
  %.not.i.not.i277.5 = icmp ne i32 %i.kp, %.fr.i276.5
  %i.lu = getelementptr i8, ptr %i.ls, i64 4      ; 2 uses
  %.not259.5 = icmp eq ptr %i.lu, null
  %or.cond352.5 = or i1 %.not259.5, %.not.i.not.i277.5
  br i1 %or.cond352.5, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5, label %.preheader375.5

.preheader375.5:                                  ; preds = %bb.ar
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !27 ; 2 uses
  %i.lw = and i32 %i.lv, 7
  %.not429.5 = icmp eq i32 %i.lw, 0
  br i1 %.not429.5, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader375.5
  %i.lx = getelementptr i8, ptr %i.ls, i64 8
  %i.ly = shl i32 %i.lv, 2
  %i.lz = and i32 %i.ly, 28
  %i.ma = zext nneg i32 %i.lz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.5, ptr align 4 %i.lx, i64 range(i64 0, 29) %i.ma, i1 false), !tbaa !10
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5: ; preds = %.preheader375.5, %.lr.ph.5, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %exitcond.not.5 = icmp eq i32 %i.aq, 6
  br i1 %exitcond.not.5, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %bb.as

bb.as:                                            ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5
  %scevgep.6 = getelementptr i8, ptr %i.a, i64 100
  %i.mb = getelementptr i8, ptr %i.am, i64 32
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !10 ; 6 uses
  %i.md = getelementptr i8, ptr %i.a, i64 96
  store i32 %i.mc, ptr %i.md, align 16, !tbaa !10
  %i.me = add i32 %i.mc, -97
  %or.cond.i273.6 = icmp ult i32 %i.me, 125155
  br i1 %or.cond.i273.6, label %bb.at, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6

bb.at:                                            ; preds = %bb.as
  %i.mf = and i32 %i.mc, 127
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.mg
  %i.mi = getelementptr i8, ptr %i.mh, i64 132
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !12
  %i.mk = zext i16 %i.mj to i32
  %i.ml = lshr i32 %i.mc, 7
  %i.mm = and i32 %i.ml, 127
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !12
  %i.mr = zext i16 %i.mq to i32
  %i.ms = add nuw nsw i32 %i.mr, %i.mk
  %i.mt = lshr i32 %i.mc, 14
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_hash.asso_values, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !12
  %i.mx = zext i16 %i.mw to i32
  %i.my = add nuw nsw i32 %i.ms, %i.mx            ; 2 uses
  %i.mz = icmp samesign ult i32 %i.my, 2884
  br i1 %i.mz, label %bb.au, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6

bb.au:                                            ; preds = %bb.at
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = getelementptr [2 x i8], ptr @onigenc_unicode_CaseUnfold_11_lookup.wordlist, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !12 ; 2 uses
  %i.nd = icmp sgt i16 %i.nc, -1
  br i1 %i.nd, label %bb.av, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6

bb.av:                                            ; preds = %bb.au
  %i.ne = zext nneg i16 %i.nc to i64
  %i.nf = getelementptr [20 x i8], ptr @CaseUnfold_11_Table, i64 %i.ne ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !26
  %.fr.i276.6 = freeze i32 %i.ng
  %.not.i.not.i277.6 = icmp ne i32 %i.mc, %.fr.i276.6
  %i.nh = getelementptr i8, ptr %i.nf, i64 4      ; 2 uses
  %.not259.6 = icmp eq ptr %i.nh, null
  %or.cond352.6 = or i1 %.not259.6, %.not.i.not.i277.6
  br i1 %or.cond352.6, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %.preheader375.6

.preheader375.6:                                  ; preds = %bb.av
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !27 ; 2 uses
  %i.nj = and i32 %i.ni, 7
  %.not429.6 = icmp eq i32 %i.nj, 0
  br i1 %.not429.6, label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.preheader375.6
  %i.nk = getelementptr i8, ptr %i.nf, i64 8
  %i.nl = shl i32 %i.ni, 2
  %i.nm = and i32 %i.nl, 28
  %i.nn = zext nneg i32 %i.nm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.6, ptr align 4 %i.nk, i64 range(i64 0, 29) %i.nn, i1 false), !tbaa !10
  br label %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6

onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6: ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %.lr.ph.6, %.preheader375.6, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1
  %.sroa.7.0 = phi i32 [ %.sink.2, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.5 ], [ undef, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.1 ], [ %.sink.2, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.2 ], [ %.sink.2, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.3 ], [ %.sink.2, %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.4 ], [ %.sink.2, %.preheader375.6 ], [ %.sink.2, %.lr.ph.6 ], [ %.sink.2, %bb.av ], [ %.sink.2, %bb.au ], [ %.sink.2, %bb.at ], [ %.sink.2, %bb.as ] ; 4 uses
  %i.no = icmp eq i32 %i.aq, 2
  br i1 %i.no, label %.preheader368.lr.ph, label %.preheader373.lr.ph

.preheader373.lr.ph:                              ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6
  %i.np = icmp sgt i32 %.sink.1, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ns = icmp sgt i32 %.sroa.7.0, 0
  %or.cond559 = select i1 %i.np, i1 %i.ns, i1 false
  br i1 %or.cond559, label %.preheader373.us.us.preheader, label %._crit_edge388

.preheader373.us.us.preheader:                    ; preds = %.preheader373.lr.ph
  %wide.trip.count454 = zext nneg i32 %.sink.1 to i64
  %wide.trip.count449 = zext nneg i32 %.sroa.7.0 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count449, 1
  %i.nt = icmp eq i32 %.sroa.7.0, 1
  %unroll_iter = and i64 %wide.trip.count449, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod575 = trunc i32 %.sroa.7.0 to i1
  br label %.preheader373.us.us

.preheader373.us.us:                              ; preds = %.preheader373.us.us.preheader, %._crit_edge384.split.us.us.us
  %indvars.iv456 = phi i64 [ 0, %.preheader373.us.us.preheader ], [ %indvars.iv.next457, %._crit_edge384.split.us.us.us ] ; 2 uses
  %.7234386.us.us = phi i32 [ 0, %.preheader373.us.us.preheader ], [ %.lcssa573, %._crit_edge384.split.us.us.us ]
  %i.nu = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv456
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !10
  %i.nw = insertelement <2 x i32> <i32 3, i32 poison>, i32 %i.nv, i64 1 ; 3 uses
  br label %.preheader372.us.us.us

.preheader372.us.us.us:                           ; preds = %._crit_edge381.us.us.us, %.preheader373.us.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge381.us.us.us ], [ 0, %.preheader373.us.us ] ; 2 uses
  %.8235382.us.us.us = phi i32 [ %.lcssa573, %._crit_edge381.us.us.us ], [ %.7234386.us.us, %.preheader373.us.us ] ; 2 uses
  %i.nx = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv451
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !10 ; 3 uses
  br i1 %i.nt, label %.epil.preheader, label %.preheader372.us.us.us.new

.preheader372.us.us.us.new:                       ; preds = %.preheader372.us.us.us, %.preheader372.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader372.us.us.us.new ], [ 0, %.preheader372.us.us.us ] ; 3 uses
  %.9378.us.us.us = phi i32 [ %i.op, %.preheader372.us.us.us.new ], [ %.8235382.us.us.us, %.preheader372.us.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader372.us.us.us.new ], [ 0, %.preheader372.us.us.us ]
  %i.nz = sext i32 %.9378.us.us.us to i64
  %i.oa = getelementptr [20 x i8], ptr %4, i64 %i.nz ; 4 uses
  store i32 %i.l, ptr %i.oa, align 4, !tbaa !66
  %i.ob = getelementptr i8, ptr %i.oa, i64 4
  store <2 x i32> %i.nw, ptr %i.ob, align 4, !tbaa !10
  %i.oc = getelementptr i8, ptr %i.oa, i64 12
  store i32 %i.ny, ptr %i.oc, align 4, !tbaa !10
  %i.od = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !10
  %i.of = getelementptr i8, ptr %i.oa, i64 16
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !10
  %i.og = add i32 %.9378.us.us.us, 1
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr [20 x i8], ptr %4, i64 %i.oh ; 4 uses
  store i32 %i.l, ptr %i.oi, align 4, !tbaa !66
  %i.oj = getelementptr i8, ptr %i.oi, i64 4
  store <2 x i32> %i.nw, ptr %i.oj, align 4, !tbaa !10
  %i.ok = getelementptr i8, ptr %i.oi, i64 12
  store i32 %i.ny, ptr %i.ok, align 4, !tbaa !10
  %i.ol = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv
  %i.om = getelementptr i8, ptr %i.ol, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !10
  %i.oo = getelementptr i8, ptr %i.oi, i64 16
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !10
  %i.op = add i32 %.9378.us.us.us, 2              ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge381.us.us.us.unr-lcssa, label %.preheader372.us.us.us.new, !llvm.loop !56

._crit_edge381.us.us.us.unr-lcssa:                ; preds = %.preheader372.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge381.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge381.us.us.us.unr-lcssa, %.preheader372.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader372.us.us.us ], [ %indvars.iv.next.1, %._crit_edge381.us.us.us.unr-lcssa ]
  %.9378.us.us.us.epil.init = phi i32 [ %.8235382.us.us.us, %.preheader372.us.us.us ], [ %i.op, %._crit_edge381.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod575)
  %i.oq = sext i32 %.9378.us.us.us.epil.init to i64
  %i.or = getelementptr [20 x i8], ptr %4, i64 %i.oq ; 4 uses
  store i32 %i.l, ptr %i.or, align 4, !tbaa !66
  %i.os = getelementptr i8, ptr %i.or, i64 4
  store <2 x i32> %i.nw, ptr %i.os, align 4, !tbaa !10
  %i.ot = getelementptr i8, ptr %i.or, i64 12
  store i32 %i.ny, ptr %i.ot, align 4, !tbaa !10
  %i.ou = getelementptr [4 x i8], ptr %i.nr, i64 %indvars.iv.epil.init
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !10
  %i.ow = getelementptr i8, ptr %i.or, i64 16
  store i32 %i.ov, ptr %i.ow, align 4, !tbaa !10
  %i.ox = add i32 %.9378.us.us.us.epil.init, 1
  br label %._crit_edge381.us.us.us

._crit_edge381.us.us.us:                          ; preds = %._crit_edge381.us.us.us.unr-lcssa, %.epil.preheader
  %.lcssa573 = phi i32 [ %i.op, %._crit_edge381.us.us.us.unr-lcssa ], [ %i.ox, %.epil.preheader ] ; 3 uses
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %._crit_edge384.split.us.us.us, label %.preheader372.us.us.us, !llvm.loop !57

._crit_edge384.split.us.us.us:                    ; preds = %._crit_edge381.us.us.us
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %.sink
  br i1 %exitcond460.not, label %._crit_edge388, label %.preheader373.us.us, !llvm.loop !58

.preheader368.lr.ph:                              ; preds = %onigenc_unicode_CaseUnfold_11_lookup.exit278.thread.6
  %i.oy = icmp sgt i32 %.sink.1, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  br i1 %i.oy, label %.preheader368.us.preheader, label %._crit_edge406

.preheader368.us.preheader:                       ; preds = %.preheader368.lr.ph
  %wide.trip.count469 = zext nneg i32 %.sink.1 to i64 ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count469, 1
  %i.pa = icmp eq i32 %.sink.1, 1
  %unroll_iter588 = and i64 %wide.trip.count469, 2147483646
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  %lcmp.mod587 = trunc i32 %.sink.1 to i1
  br label %.preheader368.us

.preheader368.us:                                 ; preds = %.preheader368.us.preheader, %._crit_edge402.us
  %indvars.iv471 = phi i64 [ 0, %.preheader368.us.preheader ], [ %indvars.iv.next472, %._crit_edge402.us ] ; 2 uses
  %.3230404.us = phi i32 [ 0, %.preheader368.us.preheader ], [ %.lcssa571, %._crit_edge402.us ] ; 2 uses
  %i.pb = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv471
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !10 ; 3 uses
  br i1 %i.pa, label %.epil.preheader583, label %.preheader368.us.new

.preheader368.us.new:                             ; preds = %.preheader368.us, %.preheader368.us.new
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.1, %.preheader368.us.new ], [ 0, %.preheader368.us ] ; 3 uses
  %.4231399.us = phi i32 [ %i.pt, %.preheader368.us.new ], [ %.3230404.us, %.preheader368.us ] ; 3 uses
  %niter589 = phi i64 [ %niter589.next.1, %.preheader368.us.new ], [ 0, %.preheader368.us ]
  %i.pd = sext i32 %.4231399.us to i64
  %i.pe = getelementptr [20 x i8], ptr %4, i64 %i.pd ; 4 uses
  store i32 %i.l, ptr %i.pe, align 4, !tbaa !66
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  store i32 2, ptr %i.pf, align 4, !tbaa !67
  %i.pg = getelementptr i8, ptr %i.pe, i64 8
  store i32 %i.pc, ptr %i.pg, align 4, !tbaa !10
  %i.ph = getelementptr [4 x i8], ptr %i.oz, i64 %indvars.iv466
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !10
  %i.pj = getelementptr i8, ptr %i.pe, i64 12
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !10
  %i.pk = add i32 %.4231399.us, 1
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr [20 x i8], ptr %4, i64 %i.pl ; 4 uses
  store i32 %i.l, ptr %i.pm, align 4, !tbaa !66
  %i.pn = getelementptr i8, ptr %i.pm, i64 4
  store i32 2, ptr %i.pn, align 4, !tbaa !67
  %i.po = getelementptr i8, ptr %i.pm, i64 8
  store i32 %i.pc, ptr %i.po, align 4, !tbaa !10
  %i.pp = getelementptr [4 x i8], ptr %i.oz, i64 %indvars.iv466
  %i.pq = getelementptr i8, ptr %i.pp, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !10
  %i.ps = getelementptr i8, ptr %i.pm, i64 12
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !10
  %i.pt = add i32 %.4231399.us, 2                 ; 3 uses
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter589.next.1 = add i64 %niter589, 2         ; 2 uses
  %niter589.ncmp.1 = icmp eq i64 %niter589.next.1, %unroll_iter588
  br i1 %niter589.ncmp.1, label %._crit_edge402.us.unr-lcssa, label %.preheader368.us.new, !llvm.loop !59

._crit_edge402.us.unr-lcssa:                      ; preds = %.preheader368.us.new
  br i1 %lcmp.mod585.not, label %._crit_edge402.us, label %.epil.preheader583

.epil.preheader583:                               ; preds = %._crit_edge402.us.unr-lcssa, %.preheader368.us
  %indvars.iv466.epil.init = phi i64 [ 0, %.preheader368.us ], [ %indvars.iv.next467.1, %._crit_edge402.us.unr-lcssa ]
  %.4231399.us.epil.init = phi i32 [ %.3230404.us, %.preheader368.us ], [ %i.pt, %._crit_edge402.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod587)
  %i.pu = sext i32 %.4231399.us.epil.init to i64
  %i.pv = getelementptr [20 x i8], ptr %4, i64 %i.pu ; 4 uses
  store i32 %i.l, ptr %i.pv, align 4, !tbaa !66
  %i.pw = getelementptr i8, ptr %i.pv, i64 4
  store i32 2, ptr %i.pw, align 4, !tbaa !67
  %i.px = getelementptr i8, ptr %i.pv, i64 8
  store i32 %i.pc, ptr %i.px, align 4, !tbaa !10
  %i.py = getelementptr [4 x i8], ptr %i.oz, i64 %indvars.iv466.epil.init
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !10
  %i.qa = getelementptr i8, ptr %i.pv, i64 12
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !10
  %i.qb = add i32 %.4231399.us.epil.init, 1
  br label %._crit_edge402.us

._crit_edge402.us:                                ; preds = %._crit_edge402.us.unr-lcssa, %.epil.preheader583
  %.lcssa571 = phi i32 [ %i.pt, %._crit_edge402.us.unr-lcssa ], [ %i.qb, %.epil.preheader583 ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %.sink
  br i1 %exitcond475.not, label %._crit_edge406, label %.preheader368.us, !llvm.loop !60

._crit_edge406:                                   ; preds = %._crit_edge402.us, %.preheader368.lr.ph
  %.3230.lcssa = phi i32 [ 0, %.preheader368.lr.ph ], [ %.lcssa571, %._crit_edge402.us ] ; 9 uses
  %i.qc = load i32, ptr %i.cy, align 4, !tbaa !10 ; 4 uses
  %i.qd = add i32 %i.qc, -97
  %or.cond.i279 = icmp ult i32 %i.qd, 7964
  br i1 %or.cond.i279, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %._crit_edge406
  %i.qe = getelementptr i8, ptr %i.am, i64 12
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !10 ; 4 uses
  %i.qg = add i32 %i.qf, -97
  %or.cond18.i = icmp ult i32 %i.qg, 7964
end_hunk_0
