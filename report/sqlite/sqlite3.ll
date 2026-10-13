Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3BtreeIndexMoveto:bb.a

bb.bg:                                            ; preds = %bb.bd, %bb.bb
  %.1148 = phi i32 [ %i.jh, %bb.bb ], [ %.0147, %bb.bd ] ; 6 uses
  %.1145 = phi i32 [ %.0144, %bb.bb ], [ %i.ji, %bb.bd ] ; 3 uses
  %i.jl = icmp sgt i32 %.1148, %.1145
  %i.jm = add nsw i32 %.1145, %.1148
  br i1 %i.jl, label %bb.bh, label %bb.ae

bb.bh:                                            ; preds = %bb.bg
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !1116
  %.not187 = icmp eq i8 %i.jo, 0
  br i1 %.not187, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jp = trunc i32 %.0142 to i16
  store i16 %i.jp, ptr %i.ey, align 2, !tbaa !1119
  store i32 %.2, ptr %2, align 4, !tbaa !570
  br label %.thread225

bb.bj:                                            ; preds = %bb.bh
  %i.jq = load i16, ptr %i.fi, align 8, !tbaa !1501
  %i.jr = zext i16 %i.jq to i32
  %.not188 = icmp slt i32 %.1148, %i.jr
  %i.js = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !989 ; 2 uses
  br i1 %.not188, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !1067
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jw ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !733
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw i32 %i.ka, 24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 9
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !733
  %i.ke = zext i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 16
  %i.kg = or disjoint i32 %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 10
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !733
  %i.kj = zext i8 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, 8
  %i.kl = or disjoint i32 %i.kg, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 11
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.kn = load i16, ptr %i.fm, align 2, !tbaa !1117
  %i.ko = zext i16 %i.kn to i64
  %i.kp = load ptr, ptr %i.fn, align 8, !tbaa !1118
  %i.kq = shl nsw i32 %.1148, 1
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !733
  %i.ku = zext i8 %i.kt to i64
  %i.kv = shl nuw nsw i64 %i.ku, 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !733
  %i.ky = zext i8 %i.kx to i64
  %i.kz = or disjoint i64 %i.kv, %i.ky
  %i.la = and i64 %i.kz, %i.ko
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.la ; 4 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !733
  %i.ld = zext i8 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !733
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 16
  %i.lj = or disjoint i32 %i.li, %i.le
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !733
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw nsw i32 %i.lm, 8
  %i.lo = or disjoint i32 %i.lj, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 3
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink360.in = phi ptr [ %i.lp, %bb.bl ], [ %i.km, %bb.bk ]
  %.sink = phi i32 [ %i.lo, %bb.bl ], [ %i.kl, %bb.bk ]
  %.sink360 = load i8, ptr %.sink360.in, align 1, !tbaa !733
  store i16 0, ptr %i.fa, align 2, !tbaa !1618
  %i.lq = load i8, ptr %i.ez, align 1, !tbaa !1060
  %i.lr = and i8 %i.lq, -7
  store i8 %i.lr, ptr %i.ez, align 1, !tbaa !1060
  %i.ls = load i8, ptr %i.fb, align 4, !tbaa !1613 ; 3 uses
  %i.lt = icmp sgt i8 %i.ls, 18
  br i1 %i.lt, label %.thread254, label %bb.bn

.thread254:                                       ; preds = %bb.bm
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79468, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.bn:                                            ; preds = %bb.bm
  %i.lu = zext i8 %.sink360 to i32
  %i.lv = or disjoint i32 %.sink, %i.lu
  %i.lw = trunc i32 %.1148 to i16
  %i.lx = sext i8 %i.ls to i64                    ; 2 uses
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.lx
  store i16 %i.lw, ptr %i.ly, align 2, !tbaa !783
  %i.lz = load ptr, ptr %i.ev, align 8, !tbaa !1115
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.lx
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !1514
  store i16 0, ptr %i.ey, align 2, !tbaa !1119
  %i.mb = add nsw i8 %i.ls, 1
  store i8 %i.mb, ptr %i.fb, align 4, !tbaa !1613
  %i.mc = load ptr, ptr %i.ex, align 8, !tbaa !1220
  %i.md = load i8, ptr %i.fe, align 2, !tbaa !1794
  %i.me = zext i8 %i.md to i32
  %i.mf = tail call fastcc i32 @getAndInitPage(ptr noundef %i.mc, i32 noundef %i.lv, ptr noundef nonnull %i.ev, i32 noundef %i.me) ; 2 uses
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.mh = load ptr, ptr %i.ev, align 8, !tbaa !1115 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load i16, ptr %i.mi, align 8, !tbaa !1501 ; 2 uses
  %i.mk = icmp eq i16 %i.mj, 0
  br i1 %i.mk, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !1497
  %i.mn = load i8, ptr %i.ff, align 1, !tbaa !1614
  %.not189 = icmp eq i8 %i.mm, %i.mn
  br i1 %.not189, label %bb.ad, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.mo = getelementptr i8, ptr %i.mh, i64 112
  %.val.i = load ptr, ptr %i.mo, align 8, !tbaa !1010 ; 7 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.mq = load i16, ptr %i.mp, align 4, !tbaa !895
  %i.mr = and i16 %i.mq, 32
  %.not.i.i.i = icmp eq i16 %i.mr, 0
  br i1 %.not.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ms = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !896 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 152 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !897
  %i.mw = add nsw i32 %i.mv, -1
  store i32 %i.mw, ptr %i.mu, align 8, !tbaa !897
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 168 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !898
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.my, ptr %i.mz, align 8, !tbaa !899
  store ptr %.val.i, ptr %i.mx, align 8, !tbaa !898
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !900 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !901
  %i.ne = add i32 %i.nd, -1
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mt, i64 200
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !630
  %i.ni = mul nsw i64 %i.nh, %i.nf
  %i.nj = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !894
  %i.nl = load ptr, ptr %i.nb, align 8, !tbaa !863
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 144
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !903
  %i.no = tail call i32 %i.nn(ptr noundef nonnull %i.nb, i64 noundef %i.ni, ptr noundef %i.nk) #57, !inline_history !193 ; 0 uses
  br label %releasePage.exit

bb.bs:                                            ; preds = %bb.bq
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.br, %bb.bs
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79479, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bn, %releasePage.exit
  %.7.ph = phi i32 [ 11, %releasePage.exit ], [ %i.mf, %bb.bn ]
  %i.np = load i8, ptr %i.fb, align 4, !tbaa !1613
  %i.nq = add i8 %i.np, -1                        ; 2 uses
  store i8 %i.nq, ptr %i.fb, align 4, !tbaa !1613
  %i.nr = sext i8 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !1514
  store ptr %i.nt, ptr %i.ev, align 8, !tbaa !1115
  br label %.thread225

.thread225:                                       ; preds = %bb.ap, %bb.au, %sqlite3_mutex_enter.exit.i, %bb.av, %bb.ao, %bb.bf, %bb.be, %bb.ag, %bb.bi, %.loopexit
  %.8.ph = phi i32 [ %.7.ph, %.loopexit ], [ 0, %bb.bi ], [ 11, %bb.bf ], [ 11, %bb.ag ], [ 0, %bb.be ], [ %i.hz, %bb.au ], [ %i.hz, %sqlite3_mutex_enter.exit.i ], [ 11, %bb.ao ], [ %i.hz, %bb.av ], [ 7, %bb.ap ]
  store i16 0, ptr %i.fa, align 2, !tbaa !1618
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.s, %.thread254, %cursorOnLastPage.exit, %.thread225, %bb.ab
  %.5163 = phi i32 [ %i.eu, %cursorOnLastPage.exit ], [ 0, %bb.ab ], [ %.8.ph, %.thread225 ], [ 11, %.thread254 ], [ 11, %bb.aa ], [ 0, %bb.s ]
  ret i32 %.5163
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeNext(ptr noundef captures(none) initializes((70, 72)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 0, ptr %i.a, align 2, !tbaa !1618
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1060
  %i.d = and i8 %i.c, -7
  store i8 %i.d, ptr %i.b, align 1, !tbaa !1060
  %i.e = load i8, ptr %0, align 8, !tbaa !1120
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %moveToLeftmost.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1115 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !1119 ; 2 uses
  %i.j = add i16 %i.i, 1                          ; 2 uses
  store i16 %i.j, ptr %i.h, align 2, !tbaa !1119
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !1501
  %.not11 = icmp ult i16 %i.j, %i.l
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.i, ptr %i.h, align 2, !tbaa !1119
  br label %moveToLeftmost.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1116
  %.not12 = icmp eq i8 %i.n, 0
  br i1 %.not12, label %.preheader, label %moveToLeftmost.exit

.preheader:                                       ; preds = %bb.d, %bb.e
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !1115 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1116
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.e, label %moveToLeftmost.exit

bb.e:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !989
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1117
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1118
  %i.y = load i16, ptr %i.h, align 2, !tbaa !1119
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !733
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = and i64 %i.ai, %i.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = tail call fastcc i32 @moveToChild(ptr noundef nonnull %0, i32 noundef %i.am), !inline_history !234 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.preheader, label %moveToLeftmost.exit, !llvm.loop !85

moveToLeftmost.exit.sink.split:                   ; preds = %bb.a, %bb.c
  %i.ap = tail call fastcc i32 @btreeNext(ptr noundef nonnull %0)
  br label %moveToLeftmost.exit

moveToLeftmost.exit:                              ; preds = %bb.e, %.preheader, %moveToLeftmost.exit.sink.split, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.ap, %moveToLeftmost.exit.sink.split ], [ 0, %.preheader ], [ %i.an, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeRecordUnpack(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((30, 31)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1724
  %i.e = load ptr, ptr %2, align 8, !tbaa !1721   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.f, align 2, !tbaa !1723
  %i.g = load i8, ptr %1, align 1, !tbaa !733     ; 4 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.g to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733   ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = and i8 %i.g, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 7
  %i.q = or disjoint i32 %i.p, %i.l
  br label %sqlite3GetVarint32.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i8 %i.s to i32
  %i.v = and i8 %i.g, 127
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 14
  %i.y = shl nuw nsw i32 %i.l, 7
  %i.z = and i32 %i.y, 16256
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = or disjoint i32 %i.aa, %i.u
  br label %sqlite3GetVarint32.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.b)
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !565 ; 2 uses
  %.not.i = icmp ult i64 %i.ad, 4294967296
  %i.ae = trunc nuw i64 %i.ad to i32
  %storemerge.i = select i1 %.not.i, i32 %i.ae, i32 -1
  %i.af = zext nneg i8 %i.ac to i32
  br label %sqlite3GetVarint32.exit

sqlite3GetVarint32.exit:                          ; preds = %bb.d, %bb.f, %bb.g
  %storemerge.sink.i = phi i32 [ %storemerge.i, %bb.g ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ]
  %.0.i = phi i32 [ %i.af, %bb.g ], [ 3, %bb.f ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br label %bb.h

bb.h:                                             ; preds = %sqlite3GetVarint32.exit, %bb.b
  %.059 = phi i32 [ %i.i, %bb.b ], [ %storemerge.sink.i, %sqlite3GetVarint32.exit ] ; 2 uses
  %i.ag = phi i32 [ 1, %bb.b ], [ %.0.i, %sqlite3GetVarint32.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeSerialTypeLen.exit, %bb.h
  %.044 = phi i32 [ %.059, %bb.h ], [ %i.cg, %sqlite3VdbeSerialTypeLen.exit ] ; 4 uses
  %.043 = phi i32 [ %i.ag, %bb.h ], [ %i.bq, %sqlite3VdbeSerialTypeLen.exit ] ; 3 uses
  %.041 = phi i16 [ 0, %bb.h ], [ %i.ch, %sqlite3VdbeSerialTypeLen.exit ] ; 2 uses
  %.040 = phi ptr [ %i.d, %bb.h ], [ %i.cj, %sqlite3VdbeSerialTypeLen.exit ] ; 7 uses
  %i.ak = icmp ult i32 %.043, %.059
  %i.al = icmp ule i32 %.044, %0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.an = zext i32 %.043 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733 ; 4 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = zext nneg i8 %i.ap to i32
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !733 ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp sgt i8 %i.at, -1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = and i8 %i.ap, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 7
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %sqlite3GetVarint32.exit53

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !733 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = zext nneg i8 %i.bb to i32
  %i.be = and i8 %i.ap, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 14
  %i.bh = shl nuw nsw i32 %i.au, 7
  %i.bi = and i32 %i.bh, 16256
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = or disjoint i32 %i.bj, %i.bd
end_hunk_0
begin_hunk_1_@vdbeRecordCompareInt:bb.a

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !1797
  %i.bl = sext i8 %i.bk to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !1722
  %i.bo = icmp ugt i16 %i.bn, 1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call fastcc i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !1723
  %i.bs = sext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 1, ptr %i.bt, align 2, !tbaa !1725
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.p, %bb.q, %bb.n, %bb.j, %bb.i
  %.052 = phi i32 [ %i.bb, %bb.j ], [ %i.ba, %bb.i ], [ %i.bh, %bb.l ], [ %i.bl, %bb.n ], [ %i.bp, %bb.p ], [ %i.bs, %bb.q ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define internal i32 @vdbeRecordCompareString(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !733   ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = and i8 %i.c, 127
  %i.h = zext nneg i8 %i.g to i32                 ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 14
  %i.j = shl nuw nsw i32 %i.h, 7
  br label %bb.b

bb.b:                                             ; preds = %sqlite3GetVarint32.exit, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %storemerge.sink.i, %sqlite3GetVarint32.exit ] ; 4 uses
  %i.k = icmp slt i32 %.0, 12
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %.0, 0
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.m = load i8, ptr %i.e, align 1, !tbaa !733   ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, -1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = or disjoint i32 %i.j, %i.n
  br label %sqlite3GetVarint32.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.f, align 1, !tbaa !733   ; 2 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %i.q to i32
  %i.t = shl nuw nsw i32 %i.n, 7
  %i.u = and i32 %i.t, 16256
  %i.v = or disjoint i32 %i.u, %i.i
  %i.w = or disjoint i32 %i.v, %i.s
  br label %sqlite3GetVarint32.exit

bb.h:                                             ; preds = %bb.f
  %i.x = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !565  ; 2 uses
  %.not.i = icmp ult i64 %i.y, 4294967296
  %i.z = trunc nuw i64 %i.y to i32
  br i1 %.not.i, label %sqlite3GetVarint32.exit, label %sqlite3GetVarint32.exit.thread

sqlite3GetVarint32.exit.thread:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %.loopexit

sqlite3GetVarint32.exit:                          ; preds = %bb.h, %bb.e, %bb.g
  %storemerge.sink.i = phi i32 [ %i.p, %bb.e ], [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.aa = icmp sgt i32 %storemerge.sink.i, 11
  br i1 %i.aa, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %sqlite3GetVarint32.exit, %bb.c, %sqlite3GetVarint32.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !1796
  %i.ad = sext i8 %i.ac to i32
  br label %bb.x

bb.i:                                             ; preds = %bb.b
  %i.ae = and i32 %.0, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1797
  %i.ah = sext i8 %i.ag to i32
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %1, align 1, !tbaa !733    ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %.0, -12
  %i.al = lshr i32 %i.ak, 1                       ; 4 uses
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %.not46 = icmp sgt i32 %i.am, %0
  br i1 %.not46, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 92971, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 31
  store i8 11, ptr %i.an, align 1, !tbaa !1742
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1798 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %i.al
  %. = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.al)
  %i.ar = zext i8 %i.ai to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !733
  %i.av = sext i32 %. to i64
  %i.aw = tail call i32 @memcmp(ptr noundef nonnull %i.as, ptr noundef %i.au, i64 noundef %i.av) #58 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !1797
  %i.ba = sext i8 %i.az to i32
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.bb = icmp slt i32 %i.aw, 0
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !1796
  %i.be = sext i8 %i.bd to i32
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.bf = icmp eq i32 %i.al, %i.ap
  br i1 %i.bf, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !1722
  %i.bi = icmp ugt i16 %i.bh, 1
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call fastcc i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !1723
  %i.bm = sext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 1, ptr %i.bn, align 2, !tbaa !1725
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !1797
  %i.bq = sext i8 %i.bp to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1796
  %i.bt = sext i8 %i.bs to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.l, %bb.p, %bb.v, %bb.w, %bb.s, %bb.t, %bb.n, %.loopexit, %bb.j
  %.138 = phi i32 [ %i.ah, %bb.j ], [ %i.ad, %.loopexit ], [ 0, %bb.l ], [ %i.ba, %bb.n ], [ %i.be, %bb.p ], [ %i.bj, %bb.s ], [ %i.bm, %bb.t ], [ %i.bq, %bb.v ], [ %i.bt, %bb.w ]
  ret i32 %.138
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @btreeNext(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !1120    ; 4 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.thread55.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread55

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.d = icmp eq i8 %i.b, 4
  br i1 %i.d, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 8, !tbaa !1120
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !1037 ; 2 uses
  %.not.i51 = icmp eq ptr %i.e, null
  br i1 %.not.i51, label %sqlite3FaultSim.exit52.thread, label %sqlite3FaultSim.exit52

sqlite3FaultSim.exit52:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(i32 noundef 410) #57, !inline_history !4265
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %sqlite3FaultSim.exit52.thread, label %.thread61

sqlite3FaultSim.exit52.thread:                    ; preds = %bb.d, %sqlite3FaultSim.exit52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1617
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1616
  %i.k = call fastcc i32 @btreeMoveto(ptr noundef nonnull %0, ptr noundef %i.h, i64 noundef %i.j, i32 noundef 0, ptr noundef %i.a), !inline_history !4268 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.thread61

bb.e:                                             ; preds = %sqlite3FaultSim.exit52.thread
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !1617 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i50 = icmp eq i32 %i.o, 0
  br i1 %.not.i50, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.q(ptr noundef nonnull %i.p) #57, !inline_history !4269
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.h, %bb.g
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.m) #57, !inline_history !4266
  %i.t = sext i32 %i.s to i64
  %i.u = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.v = sub nsw i64 %i.u, %i.t
  store i64 %i.v, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.x = add nsw i64 %i.w, -1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.y(ptr noundef nonnull %i.m) #57, !inline_history !4270
  %i.z = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.aa(ptr noundef nonnull %i.z) #57, !inline_history !4271
  br label %sqlite3_free.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ab(ptr noundef nonnull %i.m) #57, !inline_history !4270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.e, %sqlite3_mutex_enter.exit.i, %bb.i, %bb.j
  store ptr null, ptr %i.g, align 8, !tbaa !1617
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %.not16.i = icmp eq i32 %i.ac, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %.not16.i, label %bb.k, label %.thread

.thread:                                          ; preds = %sqlite3_free.exit
  store i32 %i.ac, ptr %.phi.trans.insert, align 4, !tbaa !1611
  %.pr.pre.pre91 = load i8, ptr %0, align 8, !tbaa !1120
  br label %bb.l

bb.k:                                             ; preds = %sqlite3_free.exit
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1611
  %i.ad = icmp eq i32 %.pre, 0
  %.pr.pre.pre = load i8, ptr %0, align 8, !tbaa !1120 ; 2 uses
  br i1 %i.ad, label %.thread57, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pr.pre.pre92 = phi i8 [ %.pr.pre.pre91, %.thread ], [ %.pr.pre.pre, %bb.k ] ; 2 uses
  %i.ae = icmp eq i8 %.pr.pre.pre92, 0
  br i1 %i.ae, label %bb.m, label %.thread57

bb.m:                                             ; preds = %bb.l
  store i8 2, ptr %0, align 8, !tbaa !1120
  br label %.thread57

.thread57:                                        ; preds = %bb.k, %bb.l, %bb.m
  %.pr.pre = phi i8 [ %.pr.pre.pre, %bb.k ], [ %.pr.pre.pre92, %bb.l ], [ 2, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %.thread55

.thread61:                                        ; preds = %sqlite3FaultSim.exit52.thread, %sqlite3FaultSim.exit52
  %.014.i.ph = phi i32 [ %i.k, %sqlite3FaultSim.exit52.thread ], [ 10, %sqlite3FaultSim.exit52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %moveToLeftmost.exit

bb.n:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1611 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %.not36 = icmp eq i32 %i.ag, 0
  br i1 %.not36, label %.thread55.thread, label %moveToLeftmost.exit

.thread55:                                        ; preds = %.thread57, %bb.b
  %i.ah = phi i8 [ %i.b, %bb.b ], [ %.pr.pre, %.thread57 ]
  switch i8 %i.ah, label %.thread55.thread [
    i8 1, label %moveToLeftmost.exit
    i8 2, label %bb.o
  ]

bb.o:                                             ; preds = %.thread55
  store i8 0, ptr %0, align 8, !tbaa !1120
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1611
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %moveToLeftmost.exit, label %.thread55.thread

.thread55.thread:                                 ; preds = %bb.n, %.thread55, %bb.o, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1115 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 86 ; 7 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !1119
  %i.ap = add i16 %i.ao, 1                        ; 2 uses
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !1119
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !1037 ; 2 uses
  %.not.i45 = icmp eq ptr %i.aq, null
  br i1 %.not.i45, label %sqlite3FaultSim.exit.thread, label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %.thread55.thread
  %i.ar = tail call i32 %i.aq(i32 noundef 412) #57, !inline_history !61
  %.not37 = icmp eq i32 %i.ar, 0
  br i1 %.not37, label %sqlite3FaultSim.exit.thread, label %.thread67

.thread67:                                        ; preds = %sqlite3FaultSim.exit
  store i8 0, ptr %i.am, align 8, !tbaa !1502
  br label %bb.p

sqlite3FaultSim.exit.thread:                      ; preds = %.thread55.thread, %sqlite3FaultSim.exit
  %.pr66 = load i8, ptr %i.am, align 8, !tbaa !1502
  %.not38 = icmp eq i8 %.pr66, 0
  br i1 %.not38, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread67, %sqlite3FaultSim.exit.thread
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79580, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %moveToLeftmost.exit

bb.q:                                             ; preds = %sqlite3FaultSim.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = load i16, ptr %i.as, align 8, !tbaa !1501
  %.not39 = icmp ult i16 %i.ap, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !1116
  %.not40 = icmp eq i8 %i.av, 0                   ; 2 uses
  br i1 %.not39, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not40, label %bb.s, label %.preheader72

.preheader72:                                     ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !989
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !1067
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = tail call fastcc i32 @moveToChild(ptr noundef nonnull %0, i32 noundef %i.bi) ; 2 uses
  %.not42 = icmp eq i32 %i.bj, 0
end_hunk_1
begin_hunk_2_@unicodeNext:bb.a

.critedge4:                                       ; preds = %.critedge4.backedge, %bb.l
  %i.cg = phi ptr [ %i.cd, %bb.l ], [ %.pre, %.critedge4.backedge ] ; 2 uses
  %.4117 = phi i32 [ %.2115180, %bb.l ], [ %.7120.ph225, %.critedge4.backedge ] ; 14 uses
  %.0108 = phi ptr [ %i.cd, %bb.l ], [ %.3111, %.critedge4.backedge ] ; 2 uses
  %.4 = phi ptr [ %.2182, %bb.l ], [ %.7.ph227, %.critedge4.backedge ] ; 7 uses
  %.4267 = ptrtoaddr ptr %.4 to i64
  %i.ch = ptrtoint ptr %.0108 to i64              ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = load i32, ptr %i.ce, align 8, !tbaa !5815 ; 2 uses
  %i.cl = add nsw i32 %i.ck, -4
  %i.cm = sext i32 %i.cl to i64
  %.not135 = icmp slt i64 %i.cj, %i.cm
  br i1 %.not135, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.critedge4
  %i.cn = tail call i32 @sqlite3_initialize(), !inline_history !1234
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread189

sqlite3_realloc64.exit:                           ; preds = %bb.m
  %i.co = add nsw i32 %i.ck, 64
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.cg, i64 noundef %i.cp), !inline_history !1234 ; 3 uses
  %.not136.not = icmp eq ptr %i.cq, null
  br i1 %.not136.not, label %.thread189, label %bb.n

bb.n:                                             ; preds = %sqlite3_realloc64.exit
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !2596
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.ch, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !2596
  %i.cv = load i32, ptr %i.ce, align 8, !tbaa !5815
  %i.cw = add nsw i32 %i.cv, 64
  store i32 %i.cw, ptr %i.ce, align 8, !tbaa !5815
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4
  %.2110 = phi ptr [ %i.cu, %bb.n ], [ %.0108, %.critedge4 ] ; 10 uses
  %i.cx = load i32, ptr %i.cf, align 8, !tbaa !2586 ; 2 uses
  %i.cy = icmp slt i32 %.4117, 128
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = add i32 %.4117, -65
  %or.cond.i = icmp ult i32 %i.cz, 26
  %i.da = or disjoint i32 %.4117, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.da, i32 %.4117
  br label %sqlite3FtsUnicodeFold.exit

bb.q:                                             ; preds = %bb.o
  %i.db = icmp samesign ult i32 %.4117, 65536
  br i1 %i.db, label %.preheader.i, label %bb.ad

.preheader.i:                                     ; preds = %bb.q, %.preheader.i
  %.048.i = phi i32 [ %.1.i, %.preheader.i ], [ -1, %bb.q ]
  %.03447.i = phi i32 [ %.135.i, %.preheader.i ], [ 0, %bb.q ] ; 2 uses
  %.03646.i = phi i32 [ %.137.i, %.preheader.i ], [ 162, %bb.q ] ; 2 uses
  %i.dc = add nsw i32 %.03646.i, %.03447.i
  %i.dd = sdiv i32 %i.dc, 2                       ; 4 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr @sqlite3FtsUnicodeFold.aEntry, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !5817
  %i.dh = zext i16 %i.dg to i32
  %.not43.i = icmp samesign ult i32 %.4117, %i.dh ; 3 uses
  %i.di = add nsw i32 %i.dd, 1
  %i.dj = add nsw i32 %i.dd, -1
  %.137.i = select i1 %.not43.i, i32 %i.dj, i32 %.03646.i ; 2 uses
  %.135.i = select i1 %.not43.i, i32 %.03447.i, i32 %i.di ; 2 uses
  %.1.i = select i1 %.not43.i, i32 %.048.i, i32 %i.dd ; 2 uses
  %.not.i149 = icmp slt i32 %.137.i, %.135.i
  br i1 %.not.i149, label %bb.r, label %.preheader.i, !llvm.loop !5809

bb.r:                                             ; preds = %.preheader.i
  %i.dk = sext i32 %.1.i to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr @sqlite3FtsUnicodeFold.aEntry, i64 %i.dk ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !5817
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !5818
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, %i.dn
  %i.ds = icmp samesign ult i32 %.4117, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !5819
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = xor i32 %.4117, %i.dn
  %i.dx = and i32 %i.dw, 1
  %i.dy = and i32 %i.dx, %i.dv
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = lshr i32 %i.dv, 1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @sqlite3FtsUnicodeFold.aiOff, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !783
  %.tr.i = trunc nuw i32 %.4117 to i16
  %.narrow.i = add i16 %i.ed, %.tr.i
  %i.ee = zext i16 %.narrow.i to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.038.i = phi i32 [ %i.ee, %bb.t ], [ %.4117, %bb.s ], [ %.4117, %bb.r ] ; 5 uses
  %.not42.i = icmp eq i32 %i.cx, 0
  br i1 %.not42.i, label %sqlite3FtsUnicodeFold.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = shl nuw nsw i32 %.038.i, 3
  %i.eg = or disjoint i32 %i.ef, 7
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.029.i.i = phi i32 [ 0, %bb.v ], [ %.1.i.i151, %bb.w ] ; 2 uses
  %.01928.i.i = phi i32 [ 125, %bb.v ], [ %.120.i.i150, %bb.w ] ; 2 uses
  %.02127.i.i = phi i32 [ 0, %bb.v ], [ %.122.i.i, %bb.w ]
  %i.eh = add nsw i32 %.01928.i.i, %.029.i.i
  %i.ei = sdiv i32 %i.eh, 2                       ; 4 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr @__const.remove_diacritic.aDia, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !783
  %i.em = zext i16 %i.el to i32
  %.not26.i.i = icmp samesign ult i32 %i.eg, %i.em ; 3 uses
  %i.en = add nsw i32 %i.ei, 1
  %i.eo = add nsw i32 %i.ei, -1
  %.122.i.i = select i1 %.not26.i.i, i32 %.02127.i.i, i32 %i.ei ; 2 uses
  %.120.i.i150 = select i1 %.not26.i.i, i32 %i.eo, i32 %.01928.i.i ; 2 uses
  %.1.i.i151 = select i1 %.not26.i.i, i32 %.029.i.i, i32 %i.en ; 2 uses
  %.not.i.i152 = icmp slt i32 %.120.i.i150, %.1.i.i151
  br i1 %.not.i.i152, label %bb.x, label %bb.w, !llvm.loop !5810

bb.x:                                             ; preds = %bb.w
  %.not45.i = icmp eq i32 %i.cx, 2
  %i.ep = sext i32 %.122.i.i to i64               ; 3 uses
  br i1 %.not45.i, label %._crit_edge.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds i8, ptr @__const.remove_diacritic.aChar, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !733
  %.not25.i.i153 = icmp sgt i8 %i.er, -1
  br i1 %.not25.i.i153, label %._crit_edge.i.i, label %sqlite3FtsUnicodeFold.exit

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.x
  %i.es = getelementptr inbounds [2 x i8], ptr @__const.remove_diacritic.aDia, i64 %i.ep
  %i.et = load i16, ptr %i.es, align 2, !tbaa !783
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = and i32 %i.eu, 7
  %i.ex = add nuw nsw i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i32 %.038.i, %i.ex
  br i1 %i.ey, label %sqlite3FtsUnicodeFold.exit.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ez = getelementptr inbounds i8, ptr @__const.remove_diacritic.aChar, i64 %i.ep
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !733
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i32
  br label %sqlite3FtsUnicodeFold.exit

sqlite3FtsUnicodeFold.exit:                       ; preds = %bb.p, %bb.u, %bb.y, %bb.z
  %.2.i = phi i32 [ %.038.i, %bb.u ], [ %i.fc, %bb.z ], [ %spec.select.i, %bb.p ], [ %.038.i, %bb.y ] ; 2 uses
  %.not137 = icmp eq i32 %.2.i, 0
  br i1 %.not137, label %bb.ae, label %sqlite3FtsUnicodeFold.exit.thread

sqlite3FtsUnicodeFold.exit.thread:                ; preds = %._crit_edge.i.i, %sqlite3FtsUnicodeFold.exit
  %.2.i200 = phi i32 [ %.2.i, %sqlite3FtsUnicodeFold.exit ], [ %.038.i, %._crit_edge.i.i ] ; 8 uses
  %i.fd = icmp slt i32 %.2.i200, 128
  %i.fe = getelementptr inbounds nuw i8, ptr %.2110, i64 1 ; 3 uses
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %sqlite3FtsUnicodeFold.exit.thread
  %i.ff = trunc i32 %.2.i200 to i8
  store i8 %i.ff, ptr %.2110, align 1, !tbaa !733
  br label %bb.ae

bb.ab:                                            ; preds = %sqlite3FtsUnicodeFold.exit.thread
  %i.fg = icmp samesign ult i32 %.2.i200, 2048
  br i1 %i.fg, label %bb.ac, label %.thread241

bb.ac:                                            ; preds = %bb.ab
  %i.fh = lshr i32 %.2.i200, 6
  %i.fi = trunc nuw nsw i32 %i.fh to i8
  %i.fj = or disjoint i8 %i.fi, -64
  store i8 %i.fj, ptr %.2110, align 1, !tbaa !733
  %i.fk = trunc i32 %.2.i200 to i8
  %i.fl = and i8 %i.fk, 63
  %i.fm = or disjoint i8 %i.fl, -128
  %i.fn = getelementptr inbounds nuw i8, ptr %.2110, i64 2
  store i8 %i.fm, ptr %i.fe, align 1, !tbaa !733
  br label %bb.ae

bb.ad:                                            ; preds = %bb.q
  %i.fo = add nsw i32 %.4117, -66560
  %or.cond3.i = icmp ult i32 %i.fo, 40
  %i.fp = add nuw nsw i32 %.4117, 40
  %spec.select44.i = select i1 %or.cond3.i, i32 %i.fp, i32 %.4117 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %.2110, i64 4
  %i.fq = lshr i32 %spec.select44.i, 18
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = lshr i32 %spec.select44.i, 12
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = lshr i32 %spec.select44.i, 6
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = trunc i32 %spec.select44.i to i8
  %i.fx = insertelement <4 x i8> poison, i8 %i.fr, i64 0
  %i.fy = insertelement <4 x i8> %i.fx, i8 %i.ft, i64 1
  %i.fz = insertelement <4 x i8> %i.fy, i8 %i.fv, i64 2
  %i.ga = insertelement <4 x i8> %i.fz, i8 %i.fw, i64 3
  %i.gb = and <4 x i8> %i.ga, <i8 7, i8 63, i8 63, i8 63>
  %i.gc = or disjoint <4 x i8> %i.gb, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.gc, ptr %.2110, align 1, !tbaa !733
  br label %bb.ae

.thread241:                                       ; preds = %bb.ab
  %i.gd = lshr i32 %.2.i200, 12
  %i.ge = trunc nuw nsw i32 %i.gd to i8
  %i.gf = or disjoint i8 %i.ge, -32
  store i8 %i.gf, ptr %.2110, align 1, !tbaa !733
  %i.gg = lshr i32 %.2.i200, 6
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = and i8 %i.gh, 63
  %i.gj = or disjoint i8 %i.gi, -128
  %i.gk = getelementptr inbounds nuw i8, ptr %.2110, i64 2
  store i8 %i.gj, ptr %i.fe, align 1, !tbaa !733
  %i.gl = trunc i32 %.2.i200 to i8
  %i.gm = and i8 %i.gl, 63
  %i.gn = or disjoint i8 %i.gm, -128
  %i.go = getelementptr inbounds nuw i8, ptr %.2110, i64 3
  store i8 %i.gn, ptr %i.gk, align 1, !tbaa !733
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %.thread241, %bb.ad, %bb.ac, %sqlite3FtsUnicodeFold.exit
  %.3111 = phi ptr [ %i.fe, %bb.aa ], [ %i.fn, %bb.ac ], [ %i.go, %.thread241 ], [ %6, %bb.ad ], [ %.2110, %sqlite3FtsUnicodeFold.exit ] ; 2 uses
  %.not138 = icmp ult ptr %.4, %i.l
  br i1 %.not138, label %bb.af, label %sqlite3FtsUnicodeIsdiacritic.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gp = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 4 uses
  %i.gq = load i8, ptr %.4, align 1, !tbaa !733   ; 3 uses
  %i.gr = zext i8 %i.gq to i32
  %i.gs = icmp ugt i8 %i.gq, -65
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gt = zext i8 %i.gq to i64
  %i.gu = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -192
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !733
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = icmp ult ptr %i.gp, %i.l
  br i1 %i.gy, label %.lr.ph255.preheader, label %.critedge2

.lr.ph255.preheader:                              ; preds = %bb.ag
  %scevgep266 = getelementptr i8, ptr %.4, i64 %i.o
  %i.gz = sub i64 0, %.4267
  %scevgep268 = getelementptr i8, ptr %scevgep266, i64 %i.gz ; 2 uses
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %bb.ah
  %.5254 = phi ptr [ %i.hf, %bb.ah ], [ %i.gp, %.lr.ph255.preheader ] ; 3 uses
  %.5118253 = phi i32 [ %i.hh, %bb.ah ], [ %i.gx, %.lr.ph255.preheader ] ; 2 uses
  %i.ha = load i8, ptr %.5254, align 1, !tbaa !733
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = and i32 %i.hb, 192
  %i.hd = icmp eq i32 %i.hc, 128
  br i1 %i.hd, label %bb.ah, label %.critedge2

bb.ah:                                            ; preds = %.lr.ph255
  %i.he = shl i32 %.5118253, 6
  %i.hf = getelementptr inbounds nuw i8, ptr %.5254, i64 1 ; 2 uses
  %i.hg = and i32 %i.hb, 63
  %i.hh = or disjoint i32 %i.hg, %i.he            ; 2 uses
  %exitcond269.not = icmp eq ptr %i.hf, %scevgep268
  br i1 %exitcond269.not, label %.critedge2, label %.lr.ph255, !llvm.loop !5811

.critedge2:                                       ; preds = %.lr.ph255, %bb.ah, %bb.ag
  %.5118.lcssa = phi i32 [ %i.gx, %bb.ag ], [ %i.hh, %bb.ah ], [ %.5118253, %.lr.ph255 ] ; 4 uses
  %.5.lcssa = phi ptr [ %i.gp, %bb.ag ], [ %scevgep268, %bb.ah ], [ %.5254, %.lr.ph255 ] ; 2 uses
  %i.hi = icmp ult i32 %.5118.lcssa, 128
  %i.hj = and i32 %.5118.lcssa, -2048
  %i.hk = icmp eq i32 %i.hj, 55296
  %or.cond145 = or i1 %i.hi, %i.hk
  %i.hl = and i32 %.5118.lcssa, -2
  %i.hm = icmp eq i32 %i.hl, 65534
  %or.cond147 = or i1 %i.hm, %or.cond145
  br i1 %or.cond147, label %.thread229, label %bb.ai

bb.ai:                                            ; preds = %.critedge2, %bb.af
  %.7120.ph = phi i32 [ %.5118.lcssa, %.critedge2 ], [ %i.gr, %bb.af ] ; 7 uses
  %.7.ph = phi ptr [ %.5.lcssa, %.critedge2 ], [ %i.gp, %bb.af ] ; 3 uses
  %i.hn = icmp ult i32 %.7120.ph, 128
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ho = lshr i32 %.7120.ph, 5
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aAscii, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !570
  %i.hs = and i32 %.7120.ph, 31
  %i.ht = xor i32 %i.hr, -1
  %i.hu = lshr i32 %i.ht, %i.hs
  %i.hv = and i32 %i.hu, 1
  br label %sqlite3FtsUnicodeIsalnum.exit.i154

bb.ak:                                            ; preds = %bb.ai
  %i.hw = icmp ult i32 %.7120.ph, 4194304
  br i1 %i.hw, label %.thread229, label %sqlite3FtsUnicodeIsalnum.exit.i154

.thread229:                                       ; preds = %.critedge2, %bb.ak
  %.7120.ph226233 = phi i32 [ %.7120.ph, %bb.ak ], [ 65533, %.critedge2 ] ; 3 uses
  %.7.ph228232 = phi ptr [ %.7.ph, %bb.ak ], [ %.5.lcssa, %.critedge2 ]
  %i.hx = shl nuw i32 %.7120.ph226233, 10
  %i.hy = or disjoint i32 %i.hx, 1023
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.thread229
  %.028.i.i167 = phi i32 [ 0, %.thread229 ], [ %.1.i.i173, %bb.al ] ; 2 uses
  %.01827.i.i168 = phi i32 [ 405, %.thread229 ], [ %.119.i.i172, %bb.al ] ; 2 uses
  %.02026.i.i169 = phi i32 [ 0, %.thread229 ], [ %.121.i.i171, %bb.al ]
  %i.hz = add nuw nsw i32 %.01827.i.i168, %.028.i.i167
  %i.ia = lshr i32 %i.hz, 1                       ; 4 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !570
  %.not25.i.i170 = icmp ult i32 %i.hy, %i.id      ; 3 uses
  %i.ie = add nuw nsw i32 %i.ia, 1
  %i.if = add nsw i32 %i.ia, -1
  %.121.i.i171 = select i1 %.not25.i.i170, i32 %.02026.i.i169, i32 %i.ia ; 2 uses
  %.119.i.i172 = select i1 %.not25.i.i170, i32 %i.if, i32 %.01827.i.i168 ; 2 uses
  %.1.i.i173 = select i1 %.not25.i.i170, i32 %.028.i.i167, i32 %i.ie ; 2 uses
  %.not.i.i174 = icmp slt i32 %.119.i.i172, %.1.i.i173
  br i1 %.not.i.i174, label %bb.am, label %bb.al, !llvm.loop !472

bb.am:                                            ; preds = %bb.al
  %i.ig = zext nneg i32 %.121.i.i171 to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !570 ; 2 uses
  %i.ij = lshr i32 %i.ii, 10
  %i.ik = and i32 %i.ii, 1023
  %i.il = add nuw nsw i32 %i.ij, %i.ik
  %i.im = icmp samesign uge i32 %.7120.ph226233, %i.il
  %i.in = zext i1 %i.im to i32
  br label %sqlite3FtsUnicodeIsalnum.exit.i154

sqlite3FtsUnicodeIsalnum.exit.i154:               ; preds = %bb.am, %bb.ak, %bb.aj
  %.7.ph227 = phi ptr [ %.7.ph, %bb.aj ], [ %.7.ph228232, %bb.am ], [ %.7.ph, %bb.ak ] ; 3 uses
  %.7120.ph225 = phi i32 [ %.7120.ph, %bb.aj ], [ %.7120.ph226233, %bb.am ], [ %.7120.ph, %bb.ak ] ; 6 uses
  %.022.i.i155 = phi i32 [ %i.hv, %bb.aj ], [ %i.in, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %i.io = load i32, ptr %i.m, align 4, !tbaa !2597 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.preheader.i.i157, label %unicodeIsAlnum.exit175

.lr.ph.preheader.i.i157:                          ; preds = %sqlite3FtsUnicodeIsalnum.exit.i154
  %i.iq = load ptr, ptr %i.n, align 8, !tbaa !2589
  %i.ir = add nsw i32 %i.io, -1
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %bb.an, %.lr.ph.preheader.i.i157
  %.01731.i.i159 = phi i32 [ %.118.i.i163, %bb.an ], [ %i.ir, %.lr.ph.preheader.i.i157 ] ; 2 uses
  %.01930.i.i160 = phi i32 [ %.120.i.i162, %bb.an ], [ 0, %.lr.ph.preheader.i.i157 ] ; 2 uses
  %i.is = add nuw nsw i32 %.01930.i.i160, %.01731.i.i159
  %i.it = lshr i32 %i.is, 1                       ; 3 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !570 ; 2 uses
  %.not28.i.i161 = icmp eq i32 %.7120.ph225, %i.iw
  br i1 %.not28.i.i161, label %unicodeIsException.exit.loopexit.i165, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i158
  %i.ix = icmp sgt i32 %.7120.ph225, %i.iw        ; 2 uses
  %i.iy = add nuw nsw i32 %i.it, 1
  %i.iz = add nsw i32 %i.it, -1
  %.120.i.i162 = select i1 %i.ix, i32 %i.iy, i32 %.01930.i.i160 ; 2 uses
  %.118.i.i163 = select i1 %i.ix, i32 %.01731.i.i159, i32 %i.iz ; 2 uses
  %.not.not.i.i164 = icmp slt i32 %.118.i.i163, %.120.i.i162
  br i1 %.not.not.i.i164, label %unicodeIsException.exit.loopexit.i165, label %.lr.ph.i.i158, !llvm.loop !5807

unicodeIsException.exit.loopexit.i165:            ; preds = %bb.an, %.lr.ph.i.i158
  %.3.i.ph.i166 = phi i32 [ 1, %.lr.ph.i.i158 ], [ 0, %bb.an ]
  %i.ja = xor i32 %.3.i.ph.i166, %.022.i.i155
  br label %unicodeIsAlnum.exit175

unicodeIsAlnum.exit175:                           ; preds = %sqlite3FtsUnicodeIsalnum.exit.i154, %unicodeIsException.exit.loopexit.i165
  %.3.i.i156 = phi i32 [ %.022.i.i155, %sqlite3FtsUnicodeIsalnum.exit.i154 ], [ %i.ja, %unicodeIsException.exit.loopexit.i165 ]
  %.not139 = icmp eq i32 %.3.i.i156, 0
  br i1 %.not139, label %bb.ao, label %.critedge4.backedge

bb.ao:                                            ; preds = %unicodeIsAlnum.exit175
  %i.jb = add i32 %.7120.ph225, -818
  %or.cond.i176 = icmp ult i32 %i.jb, -50
  br i1 %or.cond.i176, label %sqlite3FtsUnicodeIsdiacritic.exit.thread, label %sqlite3FtsUnicodeIsdiacritic.exit

sqlite3FtsUnicodeIsdiacritic.exit:                ; preds = %bb.ao
  %i.jc = icmp samesign ult i32 %.7120.ph225, 800 ; 2 uses
  %. = select i1 %i.jc, i32 -768, i32 -800
  %.288 = select i1 %i.jc, i32 134389727, i32 221688
  %i.jd = add nsw i32 %.7120.ph225, %.
end_hunk_2
