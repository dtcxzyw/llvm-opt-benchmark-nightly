Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@read_numeral:bb.a
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !227
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.au = zext i8 %i.at to i32
  br label %bb.j

bb.h:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !125
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !127
  %i.bb = call ptr %i.ay(ptr noundef %i.aw, ptr noundef %i.ba, ptr noundef nonnull %i.d) #33, !inline_history !30 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  %i.bd = load i64, ptr %i.d, align 8             ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond.i.i = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond.i.i, label %luaZ_fill.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add i64 %i.bd, -1
  store i64 %i.bf, ptr %i.an, align 8, !tbaa !226
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !227
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !81
  %i.bj = zext i8 %i.bi to i32
  br label %luaZ_fill.exit.i

luaZ_fill.exit.i:                                 ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.bj, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.j

bb.j:                                             ; preds = %luaZ_fill.exit.i, %bb.g
  %i.bk = phi i32 [ %i.au, %bb.g ], [ %.0.i.i, %luaZ_fill.exit.i ] ; 4 uses
  store i32 %i.bk, ptr %0, align 8, !tbaa !228
  %i.bl = and i32 %i.bk, 255                      ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %memchr.bounds = icmp samesign ugt i32 %i.bl, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bn, 43980465111041
  %memchr.bits = icmp eq i64 %i.bo, 0
  %memchr56.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr56.not, label %check_next.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.bk)
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !221 ; 8 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !226 ; 2 uses
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !226
  %.not8.i35 = icmp eq i64 %i.bq, 0
  br i1 %.not8.i35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !227 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !227
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i32
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !125
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !126
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !127
  %i.cd = call ptr %i.ca(ptr noundef %i.by, ptr noundef %i.cc, ptr noundef nonnull %i.c) #33, !inline_history !30 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond.i.i37 = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond.i.i37, label %luaZ_fill.exit.i38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = add i64 %i.cf, -1
  store i64 %i.ch, ptr %i.bp, align 8, !tbaa !226
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !227
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !81
  %i.cl = zext i8 %i.ck to i32
  br label %luaZ_fill.exit.i38

luaZ_fill.exit.i38:                               ; preds = %bb.n, %bb.m
  %.0.i.i39 = phi i32 [ %i.cl, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.o

bb.o:                                             ; preds = %luaZ_fill.exit.i38, %bb.l
  %i.cm = phi i32 [ %i.bw, %bb.l ], [ %.0.i.i39, %luaZ_fill.exit.i38 ] ; 2 uses
  store i32 %i.cm, ptr %0, align 8, !tbaa !228
  br label %check_next.exit40

check_next.exit40:                                ; preds = %bb.f, %bb.o, %bb.j
  %i.cn = phi i32 [ %i.bk, %bb.j ], [ %i.cm, %bb.o ], [ %i.ae, %bb.f ] ; 3 uses
  %i.co = load ptr, ptr %i.af, align 8, !tbaa !176
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !177
  %i.cs = and i16 %i.cr, 8
  %.not2863 = icmp ne i16 %i.cs, 0
  %i.ct = icmp eq i32 %i.cn, 95
  %or.cond3164 = or i1 %i.ct, %.not2863
  br i1 %or.cond3164, label %.critedge2, label %._crit_edge

.critedge2:                                       ; preds = %check_next.exit40, %bb.s
  %i.cu = phi i32 [ %i.ds, %bb.s ], [ %i.cn, %check_next.exit40 ]
  call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.cu)
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !221 ; 8 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !226 ; 2 uses
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !226
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !227 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !227
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !81
  %i.dc = zext i8 %i.db to i32
  br label %bb.s

bb.q:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !125
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !126
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !127
  %i.dj = call ptr %i.dg(ptr noundef %i.de, ptr noundef %i.di, ptr noundef nonnull %i.b) #33, !inline_history !265 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  %i.dl = load i64, ptr %i.b, align 8             ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %or.cond.i41 = select i1 %i.dk, i1 true, i1 %i.dm
  br i1 %or.cond.i41, label %luaZ_fill.exit43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = add i64 %i.dl, -1
  store i64 %i.dn, ptr %i.cv, align 8, !tbaa !226
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !227
  %i.dq = load i8, ptr %i.dj, align 1, !tbaa !81
  %i.dr = zext i8 %i.dq to i32
  br label %luaZ_fill.exit43

luaZ_fill.exit43:                                 ; preds = %bb.q, %bb.r
  %.0.i42 = phi i32 [ %i.dr, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.s

bb.s:                                             ; preds = %luaZ_fill.exit43, %bb.p
  %i.ds = phi i32 [ %i.dc, %bb.p ], [ %.0.i42, %luaZ_fill.exit43 ] ; 4 uses
  store i32 %i.ds, ptr %0, align 8, !tbaa !228
  %i.dt = load ptr, ptr %i.af, align 8, !tbaa !176
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !177
  %i.dx = and i16 %i.dw, 8
  %.not28 = icmp ne i16 %i.dx, 0
  %i.dy = icmp eq i32 %i.ds, 95
  %or.cond31 = or i1 %i.dy, %.not28
  br i1 %or.cond31, label %.critedge2, label %._crit_edge, !llvm.loop !497

._crit_edge:                                      ; preds = %bb.s, %check_next.exit40
  call fastcc void @save(ptr noundef nonnull %0, i32 noundef 0)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !218 ; 25 uses
  %i.eb = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %.val = load ptr, ptr %i.eb, align 8, !tbaa !217 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !167 ; 26 uses
  %i.ec = getelementptr i8, ptr %.val, i64 8
  %.val.val32 = load i64, ptr %i.ec, align 8, !tbaa !264 ; 13 uses
  %.not1.i = icmp eq i64 %.val.val32, 0
  br i1 %.not1.i, label %buffreplace.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %.val.val32, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i64 %.val.val32, 16
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %.val.val32, 8
  %n.vec = and i64 %.val.val32, -16               ; 3 uses
  %i.ee = and i64 %.val.val32, 15
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue115, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue115 ] ; 2 uses
  %i.ef = sub i64 %.val.val32, %index             ; 16 uses
  %i.eg = getelementptr i8, ptr %.val.val, i64 %i.ef ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -16
  %wide.load = load <16 x i8>, ptr %i.eh, align 1, !tbaa !81
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ei = icmp eq <16 x i8> %reverse, splat (i8 46) ; 16 uses
  %i.ej = extractelement <16 x i1> %i.ei, i64 0
  br i1 %i.ej, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ek = getelementptr i8, ptr %i.eg, i64 -1
  store i8 %i.ea, ptr %i.ek, align 1, !tbaa !81
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.el = extractelement <16 x i1> %i.ei, i64 1
  br i1 %i.el, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue
  %i.em = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.en = getelementptr i8, ptr %i.em, i64 -2
  store i8 %i.ea, ptr %i.en, align 1, !tbaa !81
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue
  %i.eo = extractelement <16 x i1> %i.ei, i64 2
  br i1 %i.eo, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.ep = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.eq = getelementptr i8, ptr %i.ep, i64 -3
  store i8 %i.ea, ptr %i.eq, align 1, !tbaa !81
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.er = extractelement <16 x i1> %i.ei, i64 3
  br i1 %i.er, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.es = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  store i8 %i.ea, ptr %i.et, align 1, !tbaa !81
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.eu = extractelement <16 x i1> %i.ei, i64 4
  br i1 %i.eu, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %i.ev = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.ew = getelementptr i8, ptr %i.ev, i64 -5
  store i8 %i.ea, ptr %i.ew, align 1, !tbaa !81
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.ex = extractelement <16 x i1> %i.ei, i64 5
  br i1 %i.ex, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.ey = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.ez = getelementptr i8, ptr %i.ey, i64 -6
  store i8 %i.ea, ptr %i.ez, align 1, !tbaa !81
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.fa = extractelement <16 x i1> %i.ei, i64 6
  br i1 %i.fa, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.fb = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fc = getelementptr i8, ptr %i.fb, i64 -7
  store i8 %i.ea, ptr %i.fc, align 1, !tbaa !81
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.fd = extractelement <16 x i1> %i.ei, i64 7
  br i1 %i.fd, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.fe = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  store i8 %i.ea, ptr %i.ff, align 1, !tbaa !81
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.fg = extractelement <16 x i1> %i.ei, i64 8
  br i1 %i.fg, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.fh = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fi = getelementptr i8, ptr %i.fh, i64 -9
  store i8 %i.ea, ptr %i.fi, align 1, !tbaa !81
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.fj = extractelement <16 x i1> %i.ei, i64 9
  br i1 %i.fj, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.fk = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fl = getelementptr i8, ptr %i.fk, i64 -10
  store i8 %i.ea, ptr %i.fl, align 1, !tbaa !81
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.fm = extractelement <16 x i1> %i.ei, i64 10
  br i1 %i.fm, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.fn = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fo = getelementptr i8, ptr %i.fn, i64 -11
  store i8 %i.ea, ptr %i.fo, align 1, !tbaa !81
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.fp = extractelement <16 x i1> %i.ei, i64 11
  br i1 %i.fp, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.fq = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fr = getelementptr i8, ptr %i.fq, i64 -12
  store i8 %i.ea, ptr %i.fr, align 1, !tbaa !81
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.fs = extractelement <16 x i1> %i.ei, i64 12
  br i1 %i.fs, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.ft = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fu = getelementptr i8, ptr %i.ft, i64 -13
  store i8 %i.ea, ptr %i.fu, align 1, !tbaa !81
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.fv = extractelement <16 x i1> %i.ei, i64 13
  br i1 %i.fv, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.fw = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.fx = getelementptr i8, ptr %i.fw, i64 -14
  store i8 %i.ea, ptr %i.fx, align 1, !tbaa !81
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.fy = extractelement <16 x i1> %i.ei, i64 14
  br i1 %i.fy, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.fz = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.ga = getelementptr i8, ptr %i.fz, i64 -15
  store i8 %i.ea, ptr %i.ga, align 1, !tbaa !81
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.gb = extractelement <16 x i1> %i.ei, i64 15
  br i1 %i.gb, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.gc = getelementptr i8, ptr %.val.val, i64 %i.ef
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  store i8 %i.ea, ptr %i.gd, align 1, !tbaa !81
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !498

middle.block:                                     ; preds = %pred.store.continue115
  %cmp.n = icmp eq i64 %.val.val32, %n.vec
  br i1 %cmp.n, label %buffreplace.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !501

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %.val.val32, -8             ; 2 uses
  %i.gf = and i64 %.val.val32, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue135, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %pred.store.continue135 ] ; 2 uses
  %i.gg = sub i64 %.val.val32, %index117          ; 8 uses
  %i.gh = getelementptr i8, ptr %.val.val, i64 %i.gg ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %wide.load118 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !81
  %reverse119 = shufflevector <8 x i8> %wide.load118, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.gj = icmp eq <8 x i8> %reverse119, splat (i8 46) ; 8 uses
  %i.gk = extractelement <8 x i1> %i.gj, i64 0
  br i1 %i.gk, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %vec.epilog.vector.body
  %i.gl = getelementptr i8, ptr %i.gh, i64 -1
  store i8 %i.ea, ptr %i.gl, align 1, !tbaa !81
  br label %pred.store.continue121

end_hunk_0
