Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@BN_div:bb.a
  %i.ax = icmp eq <4 x ptr> %i.aw, splat (ptr null)
  %i.ay = bitcast <4 x i1> %i.ax to i4
  %.not340 = icmp eq i4 %i.ay, 0
  br i1 %.not340, label %bb.j, label %bn_wexpand.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.a, align 8, !tbaa !186 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i120, label %bn_minimal_width.exit.i

.lr.ph.i.i120:                                    ; preds = %bb.j
  %i.bb = load ptr, ptr %3, align 8, !tbaa !185   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i120
  %.05.i.i = phi i32 [ %i.az, %.lr.ph.i.i120 ], [ %i.bh, %bb.l ] ; 4 uses
  %i.bc = zext nneg i32 %.05.i.i to i64
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !94
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bn_minimal_width.exit.thread7.i

bb.l:                                             ; preds = %bb.k
  %i.bh = add nsw i32 %.05.i.i, -1
  %i.bi = icmp sgt i32 %.05.i.i, 1
  br i1 %i.bi, label %bb.k, label %BN_num_bits.exit, !llvm.loop !192

bn_minimal_width.exit.i:                          ; preds = %bb.j
  %i.bj = icmp eq i32 %i.az, 0
  br i1 %i.bj, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.k, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.bk = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.bb, %bb.k ]
  %.0.lcssa.i9.i = phi i32 [ %i.az, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.k ]
  %i.bl = add nsw i32 %.0.lcssa.i9.i, -1          ; 2 uses
  %i.bm = shl nsw i32 %i.bl, 6
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !94 ; 3 uses
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = lshr i64 %i.bp, 32                      ; 2 uses
  %.not.i.i119 = icmp eq i64 %i.br, 0             ; 2 uses
  %i.bs = select i1 %.not.i.i119, i32 0, i32 32
  %i.bt = zext i1 %i.bq to i32
  %i.bu = select i1 %.not.i.i119, i64 %i.bp, i64 %i.br ; 2 uses
  %i.bv = lshr i64 %i.bu, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.bv, 0              ; 2 uses
  %i.bw = select i1 %.not52.i.i, i32 0, i32 16
  %i.bx = select i1 %.not52.i.i, i64 %i.bu, i64 %i.bv ; 2 uses
  %i.by = lshr i64 %i.bx, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.by, 0              ; 2 uses
  %i.bz = select i1 %.not53.i.i, i32 0, i32 8
  %i.ca = select i1 %.not53.i.i, i64 %i.bx, i64 %i.by ; 2 uses
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.cb, 0              ; 2 uses
  %i.cc = select i1 %.not54.i.i, i32 0, i32 4
  %i.cd = select i1 %.not54.i.i, i64 %i.ca, i64 %i.cb ; 2 uses
  %i.ce = lshr i64 %i.cd, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ce, 0              ; 2 uses
  %i.cf = select i1 %.not55.i.i, i32 0, i32 2
  %i.cg = select i1 %.not55.i.i, i64 %i.cd, i64 %i.ce
  %i.ch = icmp samesign ugt i64 %i.cg, 1
  %.neg.i.i = zext i1 %i.ch to i32
  %i.ci = or disjoint i32 %i.bm, %i.bt
  %i.cj = or disjoint i32 %i.ci, %i.bs
  %i.ck = or disjoint i32 %i.cj, %i.bw
  %i.cl = or disjoint i32 %i.ck, %i.bz
  %i.cm = or disjoint i32 %i.cl, %i.cc
  %i.cn = or disjoint i32 %i.cm, %i.cf
  %i.co = add i32 %i.cn, %.neg.i.i
  %i.cp = and i32 %i.co, 63
  %i.cq = sub nuw nsw i32 64, %i.cp
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.l, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.cq, %bn_minimal_width.exit.thread7.i ], [ 64, %bn_minimal_width.exit.i ], [ 64, %bb.l ] ; 3 uses
  %i.cr = tail call i32 @BN_lshift(ptr noundef %i.ap, ptr noundef nonnull %3, i32 noundef %.0.i)
  %.not109 = icmp eq i32 %i.cr, 0
  br i1 %.not109, label %bn_wexpand.exit.thread, label %bb.m

bb.m:                                             ; preds = %BN_num_bits.exit
  %i.cs = tail call i32 @BN_lshift(ptr noundef %i.ao, ptr noundef %2, i32 noundef %.0.i)
  %.not110 = icmp eq i32 %i.cs, 0
  br i1 %.not110, label %bn_wexpand.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !186 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i122, label %bn_minimal_width.exit.i121

.lr.ph.i.i122:                                    ; preds = %bb.n
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !185
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i122
  %.05.i.i123 = phi i32 [ %i.cu, %.lr.ph.i.i122 ], [ %i.dc, %bb.p ] ; 4 uses
  %i.cx = zext nneg i32 %.05.i.i123 to i64
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !94
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.p, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.o
  store i32 %.05.i.i123, ptr %i.ct, align 8, !tbaa !186
  br label %bn_set_minimal_width.exit

bb.p:                                             ; preds = %bb.o
  %i.dc = add nsw i32 %.05.i.i123, -1
  %i.dd = icmp sgt i32 %.05.i.i123, 1
  br i1 %i.dd, label %bb.o, label %bn_minimal_width.exit.thread.i, !llvm.loop !192

bn_minimal_width.exit.thread.i:                   ; preds = %bb.p
  store i32 0, ptr %i.ct, align 8, !tbaa !186
  br label %bb.q

bn_minimal_width.exit.i121:                       ; preds = %bb.n
  %i.de = icmp eq i32 %i.cu, 0
  br i1 %i.de, label %bb.q, label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bn_minimal_width.exit.i121, %bn_minimal_width.exit.thread.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.df, align 8, !tbaa !182
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bn_minimal_width.exit.thread5.i, %bn_minimal_width.exit.i121, %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !186 ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i125, label %bn_minimal_width.exit.i124

.lr.ph.i.i125:                                    ; preds = %bn_set_minimal_width.exit
  %i.dj = load ptr, ptr %i.ao, align 8, !tbaa !185
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i125
  %.05.i.i126 = phi i32 [ %i.dh, %.lr.ph.i.i125 ], [ %i.dp, %bb.s ] ; 5 uses
  %i.dk = zext nneg i32 %.05.i.i126 to i64
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !94
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.s, label %bn_minimal_width.exit.thread5.i127

bn_minimal_width.exit.thread5.i127:               ; preds = %bb.r
  store i32 %.05.i.i126, ptr %i.dg, align 8, !tbaa !186
  br label %bn_set_minimal_width.exit129

bb.s:                                             ; preds = %bb.r
  %i.dp = add nsw i32 %.05.i.i126, -1
  %i.dq = icmp sgt i32 %.05.i.i126, 1
  br i1 %i.dq, label %bb.r, label %bn_minimal_width.exit.thread.i128, !llvm.loop !192

bn_minimal_width.exit.thread.i128:                ; preds = %bb.s
  store i32 0, ptr %i.dg, align 8, !tbaa !186
  br label %bb.t

bn_minimal_width.exit.i124:                       ; preds = %bn_set_minimal_width.exit
  %i.dr = icmp eq i32 %i.dh, 0
  br i1 %i.dr, label %bb.t, label %bn_set_minimal_width.exit129

bb.t:                                             ; preds = %bn_minimal_width.exit.i124, %bn_minimal_width.exit.thread.i128
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !182
  br label %bn_set_minimal_width.exit129

bn_set_minimal_width.exit129:                     ; preds = %bn_minimal_width.exit.thread5.i127, %bn_minimal_width.exit.i124, %bb.t
  %i.dt = phi i32 [ %.05.i.i126, %bn_minimal_width.exit.thread5.i127 ], [ %i.dh, %bn_minimal_width.exit.i124 ], [ 0, %bb.t ]
  %i.du = load i32, ptr %i.ct, align 8, !tbaa !186 ; 11 uses
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %i.dw = add nsw i32 %i.du, -1
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !94 ; 5 uses
  %i.ea = icmp eq i32 %i.du, 1
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bn_set_minimal_width.exit129
  %i.eb = sext i32 %i.du to i64
  %i.ec = getelementptr [8 x i8], ptr %i.dv, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !94
  br label %bb.v

bb.v:                                             ; preds = %bn_set_minimal_width.exit129, %bb.u
  %i.ef = phi i64 [ %i.ee, %bb.u ], [ 0, %bn_set_minimal_width.exit129 ]
  %. = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.du)
  %i.eg = add nsw i32 %., 1                       ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = tail call i32 @bn_resize_words(ptr noundef nonnull %i.ao, i64 noundef %i.eh)
  %.not112 = icmp eq i32 %i.ei, 0
  br i1 %.not112, label %bn_wexpand.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = sub nsw i32 %i.eg, %i.du                ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !182
  %i.em = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !182
  %i.eo = xor i32 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !182
  %i.eq = zext i32 %i.ej to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !197
  %.not.i130 = icmp ugt i32 %i.ej, %i.es
  br i1 %.not.i130, label %bb.x, label %bn_wexpand.exit

bb.x:                                             ; preds = %bb.w
  %i.et = icmp ugt i32 %i.ej, 8388607
  br i1 %i.et, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !198
  %i.ew = and i32 %i.ev, 2
  %.not16.i = icmp eq i32 %i.ew, 0
  br i1 %.not16.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.ex = tail call ptr @OPENSSL_calloc(i64 noundef %i.eq, i64 noundef 8) #36 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bn_wexpand.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !186 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = sext i32 %i.fa to i64
  %i.fd = shl nsw i64 %i.fc, 3
  %i.fe = load ptr, ptr %i.as, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr readonly align 1 %i.fe, i64 %i.fd, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.ad, %bb.ac
  %i.ff = load ptr, ptr %i.as, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.ff) #36
  store ptr %i.ex, ptr %i.as, align 8, !tbaa !185
  store i32 %i.ej, ptr %i.er, align 4, !tbaa !197
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.w
  %i.fg = add nsw i32 %i.du, 1                    ; 6 uses
  %i.fh = sext i32 %i.fg to i64                   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !197
  %.not.i132 = icmp ugt i32 %i.fg, %i.fj
  br i1 %.not.i132, label %bb.ae, label %bn_wexpand.exit136

bb.ae:                                            ; preds = %bn_wexpand.exit
  %i.fk = icmp ugt i32 %i.fg, 8388607
  br i1 %i.fk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198
  %i.fn = and i32 %i.fm, 2
  %.not16.i134 = icmp eq i32 %i.fn, 0
  br i1 %.not16.i134, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.fo = tail call ptr @OPENSSL_calloc(i64 noundef %i.fh, i64 noundef 8) #36 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bn_wexpand.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !186 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i135, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = sext i32 %i.fr to i64
  %i.fu = shl nsw i64 %i.ft, 3
  %i.fv = load ptr, ptr %i.an, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr readonly align 1 %i.fv, i64 %i.fu, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i135

_ZL14OPENSSL_memcpyPvPKvm.exit.i135:              ; preds = %bb.ak, %bb.aj
  %i.fw = load ptr, ptr %i.an, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.fw) #36
  store ptr %i.fo, ptr %i.an, align 8, !tbaa !185
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !197
  br label %bn_wexpand.exit136

bn_wexpand.exit136:                               ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i135, %bn_wexpand.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  store i32 %i.ej, ptr %i.fx, align 8, !tbaa !186
  %i.fy = icmp sgt i32 %i.ej, 0
  br i1 %i.fy, label %.lr.ph227, label %._crit_edge

.lr.ph227:                                        ; preds = %bn_wexpand.exit136
  %i.fz = load ptr, ptr %i.ao, align 8, !tbaa !185
  %i.ga = sext i32 %i.du to i64                   ; 6 uses
  %i.gb = zext i64 %i.dz to i128
  %i.gc = icmp sgt i32 %i.du, 1
  %i.gd = zext nneg i32 %i.du to i64
  %i.ge = zext i64 %i.ef to i128                  ; 2 uses
  %i.gf = load ptr, ptr %i.an, align 8, !tbaa !185 ; 6 uses
  %i.gg = load ptr, ptr %i.ap, align 8, !tbaa !185 ; 4 uses
  %i.gh = icmp eq i32 %i.du, 0                    ; 2 uses
  %.not51.i = icmp ult i32 %i.du, 4               ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.ga ; 2 uses
  %i.gj = icmp eq i32 %i.fg, 0
  %.not43.i = icmp ult i32 %i.fg, 4
  %i.gk = load ptr, ptr %i.as, align 8, !tbaa !185
  br label %bb.ar

._crit_edge:                                      ; preds = %bn_sub_words.exit.thread, %bn_wexpand.exit136
  %i.gl = load i32, ptr %i.dg, align 8, !tbaa !186 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.i.i138, label %bn_minimal_width.exit.i137

.lr.ph.i.i138:                                    ; preds = %._crit_edge
  %i.gn = load ptr, ptr %i.ao, align 8, !tbaa !185
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i.i138
  %.05.i.i139 = phi i32 [ %i.gl, %.lr.ph.i.i138 ], [ %i.gt, %bb.am ] ; 4 uses
  %i.go = zext nneg i32 %.05.i.i139 to i64
  %i.gp = getelementptr [8 x i8], ptr %i.gn, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !94
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.am, label %bn_minimal_width.exit.thread5.i140

bn_minimal_width.exit.thread5.i140:               ; preds = %bb.al
  store i32 %.05.i.i139, ptr %i.dg, align 8, !tbaa !186
  br label %bn_set_minimal_width.exit142

bb.am:                                            ; preds = %bb.al
  %i.gt = add nsw i32 %.05.i.i139, -1
  %i.gu = icmp sgt i32 %.05.i.i139, 1
  br i1 %i.gu, label %bb.al, label %bn_minimal_width.exit.thread.i141, !llvm.loop !192

bn_minimal_width.exit.thread.i141:                ; preds = %bb.am
  store i32 0, ptr %i.dg, align 8, !tbaa !186
  br label %bb.an

bn_minimal_width.exit.i137:                       ; preds = %._crit_edge
  %i.gv = icmp eq i32 %i.gl, 0
  br i1 %i.gv, label %bb.an, label %bn_set_minimal_width.exit142

bb.an:                                            ; preds = %bn_minimal_width.exit.i137, %bn_minimal_width.exit.thread.i141
  store i32 0, ptr %i.ek, align 8, !tbaa !182
  br label %bn_set_minimal_width.exit142

bn_set_minimal_width.exit142:                     ; preds = %bn_minimal_width.exit.thread5.i140, %bn_minimal_width.exit.i137, %bb.an
  %i.gw = load i32, ptr %i.fx, align 8, !tbaa !186 ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i.i144, label %bn_minimal_width.exit.i143

.lr.ph.i.i144:                                    ; preds = %bn_set_minimal_width.exit142
  %i.gy = load ptr, ptr %i.as, align 8, !tbaa !185
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i.i144
  %.05.i.i145 = phi i32 [ %i.gw, %.lr.ph.i.i144 ], [ %i.he, %bb.ap ] ; 4 uses
  %i.gz = zext nneg i32 %.05.i.i145 to i64
  %i.ha = getelementptr [8 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 -8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !94
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.ap, label %bn_minimal_width.exit.thread5.i146

bn_minimal_width.exit.thread5.i146:               ; preds = %bb.ao
  store i32 %.05.i.i145, ptr %i.fx, align 8, !tbaa !186
  br label %bn_set_minimal_width.exit148

bb.ap:                                            ; preds = %bb.ao
  %i.he = add nsw i32 %.05.i.i145, -1
  %i.hf = icmp sgt i32 %.05.i.i145, 1
  br i1 %i.hf, label %bb.ao, label %bn_minimal_width.exit.thread.i147, !llvm.loop !192

bn_minimal_width.exit.thread.i147:                ; preds = %bb.ap
  store i32 0, ptr %i.fx, align 8, !tbaa !186
  br label %bb.aq

bn_minimal_width.exit.i143:                       ; preds = %bn_set_minimal_width.exit142
  %i.hg = icmp eq i32 %i.gw, 0
  br i1 %i.hg, label %bb.aq, label %bn_set_minimal_width.exit148

bb.aq:                                            ; preds = %bn_minimal_width.exit.i143, %bn_minimal_width.exit.thread.i147
  store i32 0, ptr %i.ep, align 8, !tbaa !182
  br label %bn_set_minimal_width.exit148

bn_set_minimal_width.exit148:                     ; preds = %bn_minimal_width.exit.thread5.i146, %bn_minimal_width.exit.i143, %bb.aq
  %.not115 = icmp eq ptr %1, null
  br i1 %.not115, label %bb.ax, label %bb.aw

bb.ar:                                            ; preds = %.lr.ph227, %bn_sub_words.exit.thread
  %indvars.iv = phi i64 [ %i.eq, %.lr.ph227 ], [ %indvars.iv.next, %bn_sub_words.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next ; 8 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ga ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !94 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, %i.dz
  br i1 %i.hk, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.dx
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !94 ; 2 uses
  %i.hn = zext i64 %i.hj to i128
  %i.ho = shl nuw i128 %i.hn, 64
  %i.hp = zext i64 %i.hm to i128
  %i.hq = or disjoint i128 %i.ho, %i.hp
  %i.hr = udiv i128 %i.hq, %i.gb                  ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 4 uses
  br i1 %i.gc, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ht = mul i64 %i.dz, %i.hs
  %i.hu = sub i64 %i.hm, %i.ht                    ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hh, i64 %i.gd
  %i.hw = getelementptr i8, ptr %i.hv, i64 -16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !94
  %i.hy = and i128 %i.hr, 18446744073709551615
  %i.hz = mul nuw i128 %i.hy, %i.ge               ; 2 uses
  %i.ia = zext i64 %i.hx to i128                  ; 2 uses
  %i.ib = zext i64 %i.hu to i128
  %i.ic = shl nuw i128 %i.ib, 64
  %i.id = or disjoint i128 %i.ic, %i.ia
  %.not117219 = icmp ugt i128 %i.hz, %i.id
  br i1 %.not117219, label %.lr.ph, label %.preheader50.i

bb.au:                                            ; preds = %.lr.ph
  %i.ie = sub i128 %.0222, %i.ge                  ; 2 uses
  %i.if = zext i64 %i.ij to i128
  %i.ig = shl nuw i128 %i.if, 64
  %i.ih = or disjoint i128 %i.ig, %i.ia
  %.not117 = icmp ugt i128 %i.ie, %i.ih
  br i1 %.not117, label %.lr.ph, label %.loopexit, !llvm.loop !298

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %.0222 = phi i128 [ %i.ie, %bb.au ], [ %i.hz, %bb.at ]
  %.0186221 = phi i64 [ %i.ij, %bb.au ], [ %i.hu, %bb.at ]
  %.0187220 = phi i64 [ %i.ii, %bb.au ], [ %i.hs, %bb.at ]
  %i.ii = add i64 %.0187220, -1                   ; 3 uses
  %i.ij = add i64 %.0186221, %i.dz                ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.dz
  br i1 %i.ik, label %.loopexit, label %bb.au

.loopexit:                                        ; preds = %.lr.ph, %bb.au, %bb.ar, %bb.as
  %.1188 = phi i64 [ %i.hs, %bb.as ], [ -1, %bb.ar ], [ %i.ii, %bb.au ], [ %i.ii, %.lr.ph ] ; 2 uses
  br i1 %i.gh, label %.preheader42.i.thread, label %.preheader50.i

.preheader42.i.thread:                            ; preds = %.loopexit
  store i64 0, ptr %i.gi, align 8, !tbaa !94
  br label %.lr.ph59.preheader.i

.preheader50.i:                                   ; preds = %bb.at, %.loopexit
  %.1188288 = phi i64 [ %.1188, %.loopexit ], [ %i.hs, %bb.at ] ; 5 uses
  %.pre = zext i64 %.1188288 to i128              ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.kf, 0
  br i1 %.not4959.i, label %bn_mul_words.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.163.i.ph = phi ptr [ %i.gf, %.preheader50.i ], [ %i.ke, %.preheader.i ] ; 3 uses
  %.14362.i.ph = phi ptr [ %i.gg, %.preheader50.i ], [ %i.kd, %.preheader.i ] ; 3 uses
  %.14561.i.ph = phi i64 [ %i.ga, %.preheader50.i ], [ %i.kf, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.kc, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.il = load i64, ptr %.14362.i.ph, align 8, !tbaa !94
  %i.im = zext i64 %i.il to i128
  %i.in = mul nuw i128 %.pre, %i.im
  %i.io = zext i64 %.14760.i.ph to i128
  %i.ip = add nuw i128 %i.in, %i.io               ; 2 uses
  %i.iq = trunc i128 %i.ip to i64
  store i64 %i.iq, ptr %.163.i.ph, align 8, !tbaa !94
  %i.ir = lshr i128 %i.ip, 64
  %i.is = trunc nuw i128 %i.ir to i64             ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.163.i.ph, i64 8
  %i.iv = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa347.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.is, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.163.i.ph, %.lr.ph64.i.preheader ], [ %i.iu, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.it, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.iv, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.is, %.lr.ph64.i.prol ]
  %i.iw = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.iw, label %bn_mul_words.exit, label %.lr.ph64.i

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.ke, %.lr.ph.i ], [ %i.gf, %.preheader50.i ] ; 5 uses
  %.04254.i = phi ptr [ %i.kd, %.lr.ph.i ], [ %i.gg, %.preheader50.i ] ; 5 uses
  %.04453.i = phi i64 [ %i.kf, %.lr.ph.i ], [ %i.ga, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.kc, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.ix = load i64, ptr %.04254.i, align 8, !tbaa !94
  %i.iy = zext i64 %i.ix to i128
  %i.iz = mul nuw i128 %i.iy, %.pre
  %i.ja = zext i64 %.04652.i to i128
  %i.jb = add nuw i128 %i.iz, %i.ja               ; 2 uses
  %i.jc = trunc i128 %i.jb to i64
  store i64 %i.jc, ptr %.04155.i, align 8, !tbaa !94
  %i.jd = lshr i128 %i.jb, 64
  %i.je = getelementptr inbounds nuw i8, ptr %.04254.i, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !94
  %i.jg = zext i64 %i.jf to i128
  %i.jh = mul nuw i128 %i.jg, %.pre
  %i.ji = add nuw i128 %i.jh, %i.jd               ; 2 uses
  %i.jj = trunc i128 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !94
  %i.jl = lshr i128 %i.ji, 64
  %i.jm = getelementptr inbounds nuw i8, ptr %.04254.i, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !94
  %i.jo = zext i64 %i.jn to i128
  %i.jp = mul nuw i128 %i.jo, %.pre
  %i.jq = add nuw i128 %i.jp, %i.jl               ; 2 uses
  %i.jr = trunc i128 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16
  store i64 %i.jr, ptr %i.js, align 8, !tbaa !94
  %i.jt = lshr i128 %i.jq, 64
  %i.ju = getelementptr inbounds nuw i8, ptr %.04254.i, i64 24
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !94
  %i.jw = zext i64 %i.jv to i128
  %i.jx = mul nuw i128 %i.jw, %.pre
  %i.jy = add nuw i128 %i.jx, %i.jt               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !94
  %i.kb = lshr i128 %i.jy, 64
  %i.kc = trunc nuw i128 %i.kb to i64             ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.04254.i, i64 32 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.kf = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i149 = icmp ult i64 %i.kf, 4
  br i1 %.not.i149, label %.preheader.i, label %.lr.ph.i, !llvm.loop !299

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.kx, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.kw, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.ky, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.kv, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.kg = load i64, ptr %.14362.i, align 8, !tbaa !94
  %i.kh = zext i64 %i.kg to i128
  %i.ki = mul nuw i128 %.pre, %i.kh
  %i.kj = zext i64 %.14760.i to i128
  %i.kk = add nuw i128 %i.ki, %i.kj               ; 2 uses
  %i.kl = trunc i128 %i.kk to i64
  store i64 %i.kl, ptr %.163.i, align 8, !tbaa !94
  %i.km = lshr i128 %i.kk, 64
  %i.kn = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !94
  %i.kq = zext i64 %i.kp to i128
  %i.kr = mul nuw i128 %.pre, %i.kq
  %i.ks = add nuw i128 %i.kr, %i.km               ; 2 uses
  %i.kt = trunc i128 %i.ks to i64
  store i64 %i.kt, ptr %i.ko, align 8, !tbaa !94
  %i.ku = lshr i128 %i.ks, 64
  %i.kv = trunc nuw i128 %i.ku to i64             ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.14362.i, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %.163.i, i64 16
  %i.ky = add i64 %.14561.i, -2                   ; 2 uses
  %.not49.i.1 = icmp eq i64 %i.ky, 0
  br i1 %.not49.i.1, label %bn_mul_words.exit, label %.lr.ph64.i, !llvm.loop !300

bn_mul_words.exit:                                ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i, %.preheader.i
  %.0.i150 = phi i64 [ %i.kc, %.preheader.i ], [ %.lcssa347.unr, %.lr.ph64.i.prol.loopexit ], [ %i.kv, %.lr.ph64.i ]
  store i64 %.0.i150, ptr %i.gi, align 8, !tbaa !94
  br i1 %i.gj, label %bn_sub_words.exit.thread, label %.preheader42.i

.preheader42.i:                                   ; preds = %bn_mul_words.exit
  br i1 %.not43.i, label %.lr.ph59.preheader.i, label %.lr.ph.i151

.preheader.i153:                                  ; preds = %.lr.ph.i151
  %.not3453.i = icmp eq i64 %i.mv, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.preheader.i

.lr.ph59.preheader.i:                             ; preds = %.preheader42.i.thread, %.preheader.i153, %.preheader42.i
  %.1188289292295 = phi i64 [ %.1188288, %.preheader.i153 ], [ %.1188288, %.preheader42.i ], [ %.1188, %.preheader42.i.thread ]
  %.0.lcssa77.i = phi i64 [ %i.mv, %.preheader.i153 ], [ %i.fh, %.preheader42.i ], [ 1, %.preheader42.i.thread ]
  %.026.lcssa76.i = phi ptr [ %i.mu, %.preheader.i153 ], [ %i.gf, %.preheader42.i ], [ %i.gf, %.preheader42.i.thread ]
  %.028.lcssa75.i = phi ptr [ %i.mt, %.preheader.i153 ], [ %i.hh, %.preheader42.i ], [ %i.hh, %.preheader42.i.thread ] ; 2 uses
  %.040.lcssa73.i = phi i64 [ %i.ms, %.preheader.i153 ], [ 0, %.preheader42.i ], [ 0, %.preheader42.i.thread ]
  br label %.lr.ph59.i

.lr.ph.i151:                                      ; preds = %.preheader42.i, %.lr.ph.i151
  %.048.i = phi i64 [ %i.mv, %.lr.ph.i151 ], [ %i.fh, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.mu, %.lr.ph.i151 ], [ %i.gf, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.mt, %.lr.ph.i151 ], [ %i.hh, %.preheader42.i ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL17bn_sub_part_wordsPmPKmS1_ii:bb.a
  %i.w = or i1 %i.r, %i.u
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.v, ptr %i.y, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94
  %i.ad = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.af, i64 %i.x) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  %i.ai = extractvalue { i64, i1 } %i.ag, 0
  %i.aj = or i1 %i.ae, %i.ah
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ai, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %i.aq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = extractvalue { i64, i1 } %i.aq, 0
  %i.at = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.as, i64 %i.ak) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %i.av = extractvalue { i64, i1 } %i.at, 0
  %i.aw = or i1 %i.ar, %i.au
  %i.ax = zext i1 %i.aw to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bc = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bc, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !219

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bq, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bp, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bm, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bd = load i64, ptr %.12956.i, align 8, !tbaa !94
  %i.be = load i64, ptr %.12757.i, align 8, !tbaa !94
  %i.bf = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bd, i64 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  %i.bi = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bh, i64 %.14154.i) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %i.bl = or i1 %i.bg, %i.bj
  %i.bm = zext i1 %i.bl to i64                    ; 2 uses
  store i64 %i.bk, ptr %.13155.i, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bq = add i64 %.158.i, -1                     ; 2 uses
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !220

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %bb.a, %.preheader.i
  %.032.i = phi i64 [ 0, %bb.a ], [ %i.ax, %.preheader.i ], [ %i.bm, %.lr.ph59.i ] ; 4 uses
  %i.br = icmp eq i32 %4, 0
  br i1 %i.br, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bn_sub_words.exit
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.bv = icmp slt i32 %4, 0
  br i1 %i.bv, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bw = icmp eq i32 %4, 1
  br i1 %i.bw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bx = sub nsw i32 0, %4
  %wide.trip.count55 = zext nneg i32 %i.bx to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv52 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next53, %bb.d ] ; 3 uses
  %.03241 = phi i64 [ %.032.i, %bb.c ], [ %i.ch, %bb.d ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv52
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !94
  %i.ca = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.bz) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %.03241) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = or i1 %i.cb, %i.ce
  %i.ch = zext i1 %i.cg to i64                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv52
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !94
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %bb.d, !llvm.loop !1444

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.139 = phi i64 [ %.032.i, %.lr.ph.preheader.new ], [ %i.cv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !94
  %i.cl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ck, i64 %.139) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  %i.co = zext i1 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !94
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !94
  %i.cs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cr, i64 %i.co) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = zext i1 %i.ct to i64                    ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !94
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit75.unr-lcssa, label %.lr.ph, !llvm.loop !1445

.loopexit.loopexit75.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit75.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit75.unr-lcssa ] ; 2 uses
  %.139.epil.init = phi i64 [ %.032.i, %.lr.ph.preheader ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ]
  %lcmp.mod84 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !94
  %i.cz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cy, i64 %.139.epil.init) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = zext i1 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !94
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit75.unr-lcssa, %bb.d, %bn_sub_words.exit
  %.028 = phi i64 [ %.032.i, %bn_sub_words.exit ], [ %i.ch, %bb.d ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ], [ %i.dc, %.lr.ph.epil.preheader ]
  ret i64 %.028
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 6 uses
  %i.b = icmp slt i32 %3, 8
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, %3
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %5, %3
  %i.f = sext i32 %i.e to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %2, i64 noundef %i.f)
  %i.g = add i32 %5, %4                           ; 2 uses
  %i.h = icmp eq i32 %i.a, %i.g
  br i1 %i.h, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub i32 %i.a, %i.g
  %i.j = sext i32 %i.i to i64
  %i.k = sext i32 %i.a to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = sext i32 %5 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.j, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %3 to i64                  ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q ; 6 uses
  %i.s = sub nsw i32 %3, %4                       ; 3 uses
  %i.t = zext nneg i32 %i.a to i64                ; 15 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t ; 18 uses
  %i.v = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef readonly %1, ptr noundef nonnull readonly %i.r, i32 noundef %4, i32 noundef %i.s)
  %i.w = sub nsw i32 0, %i.s
  %i.x = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef nonnull readonly %i.r, ptr noundef readonly %1, i32 noundef %4, i32 noundef %i.w) ; 0 uses
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.z = add nsw i32 %i.y, %4                     ; 3 uses
  %i.aa = sub nsw i64 0, %i.v                     ; 2 uses
  %7 = zext i32 %i.z to i64                       ; 3 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ab = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #38, !srcloc !156 ; 3 uses
  %i.ac = xor i64 %i.ab, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %7, 4294967292                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert383 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat384 = shufflevector <2 x i64> %broadcast.splatinsert383, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ad, align 8, !tbaa !94
  %wide.load385 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.af, align 8, !tbaa !94
  %wide.load387 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !94
  %i.ah = and <2 x i64> %wide.load, %broadcast.splat
  %i.ai = and <2 x i64> %wide.load385, %broadcast.splat
  %i.aj = and <2 x i64> %wide.load386, %broadcast.splat384
  %i.ak = and <2 x i64> %wide.load387, %broadcast.splat384
  %i.al = or disjoint <2 x i64> %i.aj, %i.ah
  %i.am = or disjoint <2 x i64> %i.ak, %i.ai
  store <2 x i64> %i.al, ptr %i.ad, align 8, !tbaa !94
  store <2 x i64> %i.am, ptr %i.ae, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %7
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.av, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = and i64 %i.ap, %i.ab
  %i.at = and i64 %i.ar, %i.ac
  %i.au = or disjoint i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !94
  %i.av = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %7
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1447

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.aw = getelementptr [8 x i8], ptr %6, i64 %i.q ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q ; 6 uses
  %i.ay = sub nsw i32 %5, %3                      ; 3 uses
  %i.az = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ax, ptr noundef readonly %2, i32 noundef %5, i32 noundef %i.ay)
  %i.ba = sub nsw i32 0, %i.ay
  %i.bb = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.aw, ptr noundef readonly %2, ptr noundef nonnull readonly %i.ax, i32 noundef %5, i32 noundef %i.ba) ; 0 uses
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.bd = add nsw i32 %i.bc, %5                   ; 4 uses
  %i.be = sub nsw i64 0, %i.az                    ; 2 uses
  %i.bf = sext i32 %i.bd to i64                   ; 6 uses
  %.not.i.i184 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i184, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #38, !srcloc !156 ; 5 uses
  %i.bh = xor i64 %i.bg, -1                       ; 4 uses
  %min.iters.check390 = icmp ult i32 %i.bd, 10
  br i1 %min.iters.check390, label %scalar.ph389.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i185
  %i.bi = add nsw i64 %i.bf, %i.q
  %i.bj = shl nsw i64 %i.bi, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bj
  %i.bk = add nsw i64 %i.bf, %i.t
  %i.bl = shl nsw i64 %i.bk, 3
  %scevgep388 = getelementptr i8, ptr %6, i64 %i.bl
  %bound0 = icmp ult ptr %i.aw, %scevgep388
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph389.preheader, label %vector.ph391

vector.ph391:                                     ; preds = %vector.memcheck
  %n.vec392 = and i64 %i.bf, -4                   ; 3 uses
  %broadcast.splatinsert393 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat394 = shufflevector <2 x i64> %broadcast.splatinsert393, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert395 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat396 = shufflevector <2 x i64> %broadcast.splatinsert395, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph391
  %index398 = phi i64 [ 0, %vector.ph391 ], [ %index.next403, %vector.body397 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index398 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load399 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %wide.load400 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index398 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load401 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !94, !alias.scope !1451
  %wide.load402 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !94, !alias.scope !1451
  %i.bq = and <2 x i64> %wide.load399, %broadcast.splat394
  %i.br = and <2 x i64> %wide.load400, %broadcast.splat394
  %i.bs = and <2 x i64> %wide.load401, %broadcast.splat396
  %i.bt = and <2 x i64> %wide.load402, %broadcast.splat396
  %i.bu = or disjoint <2 x i64> %i.bs, %i.bq
  %i.bv = or disjoint <2 x i64> %i.bt, %i.br
  store <2 x i64> %i.bu, ptr %i.bm, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  store <2 x i64> %i.bv, ptr %i.bn, align 8, !tbaa !94, !alias.scope !1448, !noalias !1451
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next403, %n.vec392
  br i1 %i.bw, label %middle.block404, label %vector.body397, !llvm.loop !1453

middle.block404:                                  ; preds = %vector.body397
  %cmp.n405 = icmp eq i64 %n.vec392, %i.bf
  br i1 %cmp.n405, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389.preheader

scalar.ph389.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i185, %middle.block404
  %.09.i.i186.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i185 ], [ %n.vec392, %middle.block404 ] ; 5 uses
  %i.bx = and i32 %i.bd, 1
  %lcmp.mod.not = icmp eq i32 %i.bx, 0
  br i1 %lcmp.mod.not, label %scalar.ph389.prol.loopexit, label %scalar.ph389.prol

scalar.ph389.prol:                                ; preds = %scalar.ph389.preheader
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.09.i.i186.ph ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !94
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186.ph
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !94
  %i.cc = and i64 %i.bz, %i.bg
  %i.cd = and i64 %i.cb, %i.bh
  %i.ce = or disjoint i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !94
  %i.cf = or disjoint i64 %.09.i.i186.ph, 1
  br label %scalar.ph389.prol.loopexit

scalar.ph389.prol.loopexit:                       ; preds = %scalar.ph389.prol, %scalar.ph389.preheader
  %.09.i.i186.unr = phi i64 [ %.09.i.i186.ph, %scalar.ph389.preheader ], [ %i.cf, %scalar.ph389.prol ]
  %i.cg = add nsw i64 %i.bf, -1
  %i.ch = icmp eq i64 %.09.i.i186.ph, %i.cg
  br i1 %i.ch, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389

scalar.ph389:                                     ; preds = %scalar.ph389.prol.loopexit, %scalar.ph389
  %.09.i.i186 = phi i64 [ %i.cx, %scalar.ph389 ], [ %.09.i.i186.unr, %scalar.ph389.prol.loopexit ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.09.i.i186 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !94
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !94
  %i.cm = and i64 %i.cj, %i.bg
  %i.cn = and i64 %i.cl, %i.bh
  %i.co = or disjoint i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.ci, align 8, !tbaa !94
  %i.cp = add nuw i64 %.09.i.i186, 1              ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !94
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !94
  %i.cu = and i64 %i.cr, %i.bg
  %i.cv = and i64 %i.ct, %i.bh
  %i.cw = or disjoint i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !94
  %i.cx = add nuw i64 %.09.i.i186, 2              ; 2 uses
  %exitcond.not.i.i187.1 = icmp eq i64 %i.cx, %i.bf
  br i1 %exitcond.not.i.i187.1, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph389, !llvm.loop !1454

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188:   ; preds = %scalar.ph389.prol.loopexit, %scalar.ph389, %middle.block404, %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.cy = xor i64 %i.be, %i.aa
  %i.cz = icmp eq i32 %3, 8
  br i1 %i.cz, label %bb.e, label %_ZL14OPENSSL_memsetPvim.exit190

bb.e:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.aw)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.db = sext i32 %4 to i64
  %i.dc = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.da, ptr noundef nonnull %i.r, i64 noundef %i.db, ptr noundef nonnull %i.ax, i64 noundef %i.dc)
  %i.dd = add i32 %5, %4                          ; 3 uses
  %i.de = icmp eq i32 %i.dd, 16
  br i1 %i.de, label %.preheader42.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = sub i32 16, %i.dd
  %i.dg = sext i32 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 3
  %i.di = add i32 %i.dd, %i.a
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dk, i8 0, i64 %i.dh, i1 false)
  br label %.preheader42.i

_ZL14OPENSSL_memsetPvim.exit190:                  ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  %i.dl = shl nsw i32 %3, 2
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dm ; 4 uses
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.aw, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dn)
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dn)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.dp = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.do, i8 0, i64 %i.dp, i1 false)
  %i.dq = icmp slt i32 %4, 16
  %i.dr = icmp slt i32 %5, 16
  %or.cond = and i1 %i.dq, %i.dr
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %bb.h

bb.g:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %i.ds = sext i32 %4 to i64
  %i.dt = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.do, ptr noundef nonnull %i.r, i64 noundef %i.ds, ptr noundef nonnull %i.ax, i64 noundef %i.dt)
  br label %.preheader42.i

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0175 = phi i32 [ %i.du, %bb.j ], [ %3, %.preheader ]
  %i.du = sdiv i32 %.0175, 2                      ; 10 uses
  %or.cond182 = icmp slt i32 %i.du, %invariant.smax
  br i1 %or.cond182, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dv = sub nsw i32 %4, %i.du
  %i.dw = sub nsw i32 %5, %i.du
  tail call fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.do, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ax, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dw, ptr noundef nonnull %i.dn)
  br label %.preheader42.i

bb.j:                                             ; preds = %bb.h
  %i.dx = icmp eq i32 %i.du, %4
  %i.dy = icmp eq i32 %i.du, %5
  %or.cond183 = or i1 %i.dx, %i.dy
  br i1 %or.cond183, label %bb.k, label %bb.h, !llvm.loop !1455

bb.k:                                             ; preds = %bb.j
  %i.dz = sub nsw i32 %4, %i.du
  %i.ea = sub nsw i32 %5, %i.du
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.do, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ax, i32 noundef %i.du, i32 noundef %i.dz, i32 noundef %i.ea, ptr noundef nonnull %i.dn)
  br label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.i, %bb.k, %bb.g, %bb.e, %bb.f
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.gc, 0
  br i1 %.not3453.i, label %.preheader42.i191, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.gc, %.lr.ph.i ], [ %i.t, %.preheader42.i ]
end_hunk_1
begin_hunk_2_@_ZN5mldsa12_GLOBAL__N_110vector_addILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_:bb.a
  %i.dw = and i64 %i.ds, %i.dv
  %i.dx = or disjoint i64 %i.dw, %i.du
  %i.dy = trunc nuw i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.6
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !18
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.next.i.6, 256
  br i1 %exitcond.not.i.6, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.6, label %bb.h, !llvm.loop !1256

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.6: ; preds = %bb.h
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 7168
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 7168
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.6
  %indvars.iv.i.7 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.6 ], [ %indvars.iv.next.i.7, %bb.i ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.7
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i.7
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  %i.eh = add i32 %i.eg, %i.ee                    ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = add nsw i64 %i.ei, -8380417
  %.neg.i.i.i.i.7 = ashr i64 %i.ej, 63
  %i.ek = add i32 %i.eh, -8380417
  %i.el = zext i32 %i.ek to i64
  %i.em = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.7) #38, !srcloc !156 ; 2 uses
  %i.en = and i64 %i.em, %i.ei
  %i.eo = xor i64 %i.em, -1
  %i.ep = and i64 %i.el, %i.eo
  %i.eq = or disjoint i64 %i.ep, %i.en
  %i.er = trunc nuw i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.7
  store i32 %i.er, ptr %i.es, align 4, !tbaa !18
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 256
  br i1 %exitcond.not.i.7, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.7, label %bb.i, !llvm.loop !1256

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.7: ; preds = %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi2EEEvPNS0_6scalarEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [136 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %2, align 8, !tbaa !1220
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !1224
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 136, ptr %i.d, align 8, !tbaa !1225
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 66)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.01334 = phi i32 [ 0, %bb.a ], [ %.3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 136)
  br label %bb.d

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.aw, label %bb.b, label %.loopexit, !llvm.loop !1788

bb.d:                                             ; preds = %bb.b, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18
  %.033 = phi i64 [ 0, %bb.b ], [ %i.au, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18 ] ; 3 uses
  %.132 = phi i32 [ %.01334, %bb.b ], [ %.3, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18 ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 15                         ; 2 uses
  %i.i = lshr i32 %i.g, 4                         ; 2 uses
  %i.j = icmp ne i32 %i.h, 15
  %i.k = zext i1 %i.j to i32
  %i.l = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.k) #38, !srcloc !367
  %.not.i.not = icmp eq i32 %i.l, 0
  br i1 %.not.i.not, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit: ; preds = %bb.d
  %.lhs.trunc.i = trunc nuw nsw i32 %i.h to i8
  %i.m = urem i8 %.lhs.trunc.i, 5
  %.zext.i = zext nneg i8 %i.m to i32             ; 2 uses
  %i.n = sub nuw nsw i32 8380419, %.zext.i
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = add nsw i64 %i.o, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.p, 63
  %i.q = sub nsw i32 2, %.zext.i
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.t = and i64 %i.s, %i.o
  %i.u = xor i64 %i.s, -1
  %i.v = and i64 %i.u, %i.r
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = add nsw i32 %.132, 1
  %i.z = sext i32 %.132 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !18
  %i.ab = icmp slt i32 %.132, 255
  br i1 %i.ab, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25, label %.thread

.thread:                                          ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.loopexit

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25: ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit
  %.229 = phi i32 [ %i.y, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit ], [ %.132, %bb.d ] ; 3 uses
  %i.ac = icmp ne i32 %i.i, 15
  %i.ad = zext i1 %i.ac to i32
  %i.ae = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ad) #38, !srcloc !367
  %.not.i14.not = icmp eq i32 %i.ae, 0
  br i1 %.not.i14.not, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18, label %bb.e

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25
  %.lhs.trunc.i15 = trunc nuw nsw i32 %i.i to i8
  %i.af = urem i8 %.lhs.trunc.i15, 5
  %.zext.i16 = zext nneg i8 %i.af to i32          ; 2 uses
  %i.ag = sub nuw nsw i32 8380419, %.zext.i16
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = add nsw i64 %i.ah, -8380417
  %.neg.i.i.i.i.i17 = ashr i64 %i.ai, 63
  %i.aj = sub nsw i32 2, %.zext.i16
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i17) #38, !srcloc !156 ; 2 uses
  %i.am = and i64 %i.al, %i.ah
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.an, %i.ak
  %i.ap = or disjoint i64 %i.am, %i.ao
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = add nsw i32 %.229, 1
  %i.as = sext i32 %.229 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !18
  br label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit18: ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25, %bb.e
  %.3 = phi i32 [ %i.ar, %bb.e ], [ %.229, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi2EEEbjPj.exit.thread25 ] ; 3 uses
  %i.au = add nuw nsw i64 %.033, 1
  %i.av = icmp samesign ult i64 %.033, 135
  %i.aw = icmp slt i32 %.3, 256                   ; 2 uses
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.d, label %bb.c, !llvm.loop !1789

.loopexit:                                        ; preds = %bb.c, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi3EEEvPhPKNS0_6vectorIXT_EEEi(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 10, 13) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 5
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  %i.c = icmp sgt i32 %.2.i, 0
  br i1 %i.c, label %bb.i, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit

bb.c:                                             ; preds = %bb.h, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.03451.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.h ]
  %.03550.i = phi i8 [ 0, %bb.a ], [ %.237.i, %bb.h ]
  %.03849.i = phi ptr [ %0, %bb.a ], [ %.240.i, %bb.h ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.e = load i16, ptr %i.d, align 2, !tbaa !639
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.03148.i = phi i32 [ 0, %bb.c ], [ %i.ac, %bb.g ] ; 2 uses
  %.03247.i = phi i16 [ %i.e, %bb.c ], [ %i.af, %bb.g ] ; 3 uses
  %.146.i = phi i32 [ %.03451.i, %bb.c ], [ %.2.i, %bb.g ] ; 5 uses
  %.13645.i = phi i8 [ %.03550.i, %bb.c ], [ %.237.i, %bb.g ] ; 2 uses
  %.13944.i = phi ptr [ %.03849.i, %bb.c ], [ %.240.i, %bb.g ] ; 3 uses
  %i.f = sub nsw i32 %2, %.03148.i                ; 4 uses
  %i.g = sub nsw i32 8, %.146.i                   ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub i32 7, %.146.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i16
  %i.m = and i16 %.03247.i, %i.l
  %i.n = zext nneg i16 %i.m to i32
  %i.o = shl i32 %i.n, %.146.i
  %i.p = trunc i32 %i.o to i8
  %i.q = or i8 %.13645.i, %i.p
  store i8 %i.q, ptr %.13944.i, align 1, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.13944.i, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %3 = zext nneg i32 %i.f to i64
  %i.s = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %3
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i16
  %i.w = and i16 %.03247.i, %i.v
  %i.x = zext nneg i16 %i.w to i32
  %i.y = shl i32 %i.x, %.146.i
  %i.z = trunc i32 %i.y to i8
  %i.aa = or i8 %.13645.i, %i.z
  %i.ab = add nsw i32 %.146.i, %i.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.240.i = phi ptr [ %i.r, %bb.e ], [ %.13944.i, %bb.f ] ; 3 uses
  %.237.i = phi i8 [ 0, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.f ]  ; 3 uses
  %.0.i = phi i32 [ %i.g, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.ac = add nsw i32 %.0.i, %.03148.i            ; 2 uses
  %i.ad = zext i16 %.03247.i to i32
  %i.ae = lshr i32 %i.ad, %.0.i
  %i.af = trunc nuw i32 %i.ae to i16
  %i.ag = icmp slt i32 %i.ac, %2
  br i1 %i.ag, label %bb.d, label %bb.h, !llvm.loop !1790

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1791

bb.i:                                             ; preds = %bb.b
  store i8 %.237.i, ptr %.240.i, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit: ; preds = %bb.b, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %indvars.iv.next.i.1, %bb.o ] ; 2 uses
  %.03451.i.1 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.2.i.1, %bb.o ]
  %.03550.i.1 = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.237.i.1, %bb.o ]
  %.03849.i.1 = phi ptr [ %i.ah, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.240.i.1, %bb.o ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i.1
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !639
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.03148.i.1 = phi i32 [ 0, %bb.j ], [ %i.bi, %bb.n ] ; 2 uses
  %.03247.i.1 = phi i16 [ %i.ak, %bb.j ], [ %i.bl, %bb.n ] ; 3 uses
  %.146.i.1 = phi i32 [ %.03451.i.1, %bb.j ], [ %.2.i.1, %bb.n ] ; 5 uses
  %.13645.i.1 = phi i8 [ %.03550.i.1, %bb.j ], [ %.237.i.1, %bb.n ] ; 2 uses
  %.13944.i.1 = phi ptr [ %.03849.i.1, %bb.j ], [ %.240.i.1, %bb.n ] ; 3 uses
  %i.al = sub nsw i32 %2, %.03148.i.1             ; 4 uses
  %i.am = sub nsw i32 8, %.146.i.1                ; 2 uses
  %.not.i.1 = icmp slt i32 %i.al, %i.am
  br i1 %.not.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub i32 7, %.146.i.1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i16
  %i.as = and i16 %.03247.i.1, %i.ar
  %i.at = zext nneg i16 %i.as to i32
  %i.au = shl i32 %i.at, %.146.i.1
  %i.av = trunc i32 %i.au to i8
  %i.aw = or i8 %.13645.i.1, %i.av
  store i8 %i.aw, ptr %.13944.i.1, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.13944.i.1, i64 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %4 = zext nneg i32 %i.al to i64
  %i.ay = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %4
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i16
  %i.bc = and i16 %.03247.i.1, %i.bb
  %i.bd = zext nneg i16 %i.bc to i32
  %i.be = shl i32 %i.bd, %.146.i.1
  %i.bf = trunc i32 %i.be to i8
  %i.bg = or i8 %.13645.i.1, %i.bf
  %i.bh = add nsw i32 %.146.i.1, %i.al
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.240.i.1 = phi ptr [ %i.ax, %bb.l ], [ %.13944.i.1, %bb.m ] ; 3 uses
  %.237.i.1 = phi i8 [ 0, %bb.l ], [ %i.bg, %bb.m ] ; 3 uses
  %.2.i.1 = phi i32 [ 0, %bb.l ], [ %i.bh, %bb.m ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.am, %bb.l ], [ %i.al, %bb.m ] ; 2 uses
  %i.bi = add nsw i32 %.0.i.1, %.03148.i.1        ; 2 uses
  %i.bj = zext i16 %.03247.i.1 to i32
  %i.bk = lshr i32 %i.bj, %.0.i.1
  %i.bl = trunc nuw i32 %i.bk to i16
  %i.bm = icmp slt i32 %i.bi, %2
  br i1 %i.bm, label %bb.k, label %bb.o, !llvm.loop !1790

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %bb.p, label %bb.j, !llvm.loop !1791

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp sgt i32 %.2.i.1, 0
  br i1 %i.bn, label %bb.q, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1

bb.q:                                             ; preds = %bb.p
  store i8 %.237.i.1, ptr %.240.i.1, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1: ; preds = %bb.q, %bb.p
  %i.bo = shl nuw nsw i64 %i.b, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %indvars.iv.next.i.2, %bb.w ] ; 2 uses
  %.03451.i.2 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.2.i.2, %bb.w ]
  %.03550.i.2 = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.237.i.2, %bb.w ]
  %.03849.i.2 = phi ptr [ %i.bp, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.240.i.2, %bb.w ]
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.i.2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !639
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.03148.i.2 = phi i32 [ 0, %bb.r ], [ %i.cq, %bb.v ] ; 2 uses
  %.03247.i.2 = phi i16 [ %i.bs, %bb.r ], [ %i.ct, %bb.v ] ; 3 uses
  %.146.i.2 = phi i32 [ %.03451.i.2, %bb.r ], [ %.2.i.2, %bb.v ] ; 5 uses
  %.13645.i.2 = phi i8 [ %.03550.i.2, %bb.r ], [ %.237.i.2, %bb.v ] ; 2 uses
  %.13944.i.2 = phi ptr [ %.03849.i.2, %bb.r ], [ %.240.i.2, %bb.v ] ; 3 uses
  %i.bt = sub nsw i32 %2, %.03148.i.2             ; 4 uses
  %i.bu = sub nsw i32 8, %.146.i.2                ; 2 uses
  %.not.i.2 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = sub i32 7, %.146.i.2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i16
  %i.ca = and i16 %.03247.i.2, %i.bz
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = shl i32 %i.cb, %.146.i.2
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = or i8 %.13645.i.2, %i.cd
  store i8 %i.ce, ptr %.13944.i.2, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.13944.i.2, i64 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %5 = zext nneg i32 %i.bt to i64
  %i.cg = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %5
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i16
  %i.ck = and i16 %.03247.i.2, %i.cj
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = shl i32 %i.cl, %.146.i.2
  %i.cn = trunc i32 %i.cm to i8
  %i.co = or i8 %.13645.i.2, %i.cn
  %i.cp = add nsw i32 %.146.i.2, %i.bt
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.240.i.2 = phi ptr [ %i.cf, %bb.t ], [ %.13944.i.2, %bb.u ] ; 3 uses
  %.237.i.2 = phi i8 [ 0, %bb.t ], [ %i.co, %bb.u ] ; 3 uses
  %.2.i.2 = phi i32 [ 0, %bb.t ], [ %i.cp, %bb.u ] ; 3 uses
  %.0.i.2 = phi i32 [ %i.bu, %bb.t ], [ %i.bt, %bb.u ] ; 2 uses
  %i.cq = add nsw i32 %.0.i.2, %.03148.i.2        ; 2 uses
  %i.cr = zext i16 %.03247.i.2 to i32
  %i.cs = lshr i32 %i.cr, %.0.i.2
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = icmp slt i32 %i.cq, %2
  br i1 %i.cu, label %bb.s, label %bb.w, !llvm.loop !1790

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %bb.x, label %bb.r, !llvm.loop !1791

bb.x:                                             ; preds = %bb.w
  %i.cv = icmp sgt i32 %.2.i.2, 0
  br i1 %i.cv, label %bb.y, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2

bb.y:                                             ; preds = %bb.x
  store i8 %.237.i.2, ptr %.240.i.2, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2: ; preds = %bb.y, %bb.x
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi3EEEiPNS0_6vectorIXT_EEEPKhi(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 10, 13) %2) unnamed_addr #18 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 5
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.03354.i = phi i32 [ 0, %bb.a ], [ %i.q, %bb.f ]
  %.03553.i = phi i8 [ 0, %bb.a ], [ %i.s, %bb.f ]
  %.04152.i = phi ptr [ %1, %bb.a ], [ %.243.i, %bb.f ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.02951.i = phi i32 [ 0, %.preheader.i ], [ %i.t, %bb.d ] ; 3 uses
  %.03050.i = phi i16 [ 0, %.preheader.i ], [ %i.p, %bb.d ]
  %.13449.i = phi i32 [ %.03354.i, %.preheader.i ], [ %i.q, %bb.d ] ; 2 uses
  %.13648.i = phi i8 [ %.03553.i, %.preheader.i ], [ %i.s, %bb.d ]
  %.14247.i = phi ptr [ %.04152.i, %.preheader.i ], [ %.243.i, %bb.d ] ; 3 uses
  %i.c = icmp eq i32 %.13449.i, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.14247.i, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.14247.i, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.243.i = phi ptr [ %i.e, %bb.c ], [ %.14247.i, %bb.b ] ; 2 uses
  %.237.i = phi i8 [ %i.d, %bb.c ], [ %.13648.i, %bb.b ] ; 2 uses
  %.2.i = phi i32 [ 8, %bb.c ], [ %.13449.i, %bb.b ] ; 2 uses
  %i.f = sub nsw i32 %2, %.02951.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %.2.i) ; 4 uses
  %i.g = zext i8 %.237.i to i32
  %i.h = sext i32 %spec.select.i to i64
  %i.i = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = and i8 %i.k, %.237.i
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, %.02951.i
  %i.o = trunc i32 %i.n to i16
  %i.p = or i16 %.03050.i, %i.o                   ; 3 uses
  %i.q = sub nsw i32 %.2.i, %spec.select.i        ; 2 uses
  %i.r = lshr i32 %i.g, %spec.select.i
  %i.s = trunc nuw i32 %i.r to i8                 ; 2 uses
  %i.t = add nsw i32 %spec.select.i, %.02951.i    ; 2 uses
  %i.u = icmp slt i32 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.e, !llvm.loop !1263

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i16 %i.p, 3328
  %i.w = zext i1 %i.v to i32
  %i.x = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.w) #38, !srcloc !367
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.p, ptr %i.y, align 2, !tbaa !639
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.i, label %bb.g, label %.preheader.i, !llvm.loop !1264

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.l, %bb.g
  %indvars.iv.i.1 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.1, %bb.l ] ; 2 uses
  %.03354.i.1 = phi i32 [ 0, %bb.g ], [ %i.ap, %bb.l ]
  %.03553.i.1 = phi i8 [ 0, %bb.g ], [ %i.ar, %bb.l ]
  %.04152.i.1 = phi ptr [ %i.aa, %bb.g ], [ %.243.i.1, %bb.l ]
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.preheader.i.1
  %.02951.i.1 = phi i32 [ 0, %.preheader.i.1 ], [ %i.as, %bb.j ] ; 3 uses
  %.03050.i.1 = phi i16 [ 0, %.preheader.i.1 ], [ %i.ao, %bb.j ]
  %.13449.i.1 = phi i32 [ %.03354.i.1, %.preheader.i.1 ], [ %i.ap, %bb.j ] ; 2 uses
  %.13648.i.1 = phi i8 [ %.03553.i.1, %.preheader.i.1 ], [ %i.ar, %bb.j ]
  %.14247.i.1 = phi ptr [ %.04152.i.1, %.preheader.i.1 ], [ %.243.i.1, %bb.j ] ; 3 uses
  %i.ab = icmp eq i32 %.13449.i.1, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.14247.i.1, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.14247.i.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.243.i.1 = phi ptr [ %i.ad, %bb.i ], [ %.14247.i.1, %bb.h ] ; 2 uses
  %.237.i.1 = phi i8 [ %i.ac, %bb.i ], [ %.13648.i.1, %bb.h ] ; 2 uses
  %.2.i.1 = phi i32 [ 8, %bb.i ], [ %.13449.i.1, %bb.h ] ; 2 uses
  %i.ae = sub nsw i32 %2, %.02951.i.1
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.2.i.1) ; 4 uses
  %i.af = zext i8 %.237.i.1 to i32
  %i.ag = sext i32 %spec.select.i.1 to i64
  %i.ah = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = and i8 %i.aj, %.237.i.1
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, %.02951.i.1
  %i.an = trunc i32 %i.am to i16
  %i.ao = or i16 %.03050.i.1, %i.an               ; 3 uses
  %i.ap = sub nsw i32 %.2.i.1, %spec.select.i.1   ; 2 uses
  %i.aq = lshr i32 %i.af, %spec.select.i.1
  %i.ar = trunc nuw i32 %i.aq to i8               ; 2 uses
  %i.as = add nsw i32 %spec.select.i.1, %.02951.i.1 ; 2 uses
  %i.at = icmp slt i32 %i.as, %2
  br i1 %i.at, label %bb.h, label %bb.k, !llvm.loop !1263

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ugt i16 %i.ao, 3328
  %i.av = zext i1 %i.au to i32
  %i.aw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av) #38, !srcloc !367
  %.not.i.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.1, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.i.1
  store i16 %i.ao, ptr %i.ax, align 2, !tbaa !639
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.i.1, label %bb.m, label %.preheader.i.1, !llvm.loop !1264

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.az = shl nuw nsw i64 %i.b, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  br label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.r, %bb.m
  %indvars.iv.i.2 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i.2, %bb.r ] ; 2 uses
  %.03354.i.2 = phi i32 [ 0, %bb.m ], [ %i.bp, %bb.r ]
  %.03553.i.2 = phi i8 [ 0, %bb.m ], [ %i.br, %bb.r ]
  %.04152.i.2 = phi ptr [ %i.ba, %bb.m ], [ %.243.i.2, %bb.r ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.i.2
  %.02951.i.2 = phi i32 [ 0, %.preheader.i.2 ], [ %i.bs, %bb.p ] ; 3 uses
  %.03050.i.2 = phi i16 [ 0, %.preheader.i.2 ], [ %i.bo, %bb.p ]
  %.13449.i.2 = phi i32 [ %.03354.i.2, %.preheader.i.2 ], [ %i.bp, %bb.p ] ; 2 uses
  %.13648.i.2 = phi i8 [ %.03553.i.2, %.preheader.i.2 ], [ %i.br, %bb.p ]
  %.14247.i.2 = phi ptr [ %.04152.i.2, %.preheader.i.2 ], [ %.243.i.2, %bb.p ] ; 3 uses
  %i.bb = icmp eq i32 %.13449.i.2, 0
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.14247.i.2, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.14247.i.2, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.243.i.2 = phi ptr [ %i.bd, %bb.o ], [ %.14247.i.2, %bb.n ] ; 2 uses
  %.237.i.2 = phi i8 [ %i.bc, %bb.o ], [ %.13648.i.2, %bb.n ] ; 2 uses
  %.2.i.2 = phi i32 [ 8, %bb.o ], [ %.13449.i.2, %bb.n ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5mlkem12_GLOBAL__N_120scalar_inner_productILi4EEEvPNS0_6scalarEPKNS0_6vectorIXT_EEES7_:vector.ph
  %i.he = mul <4 x i32> %i.hd, splat (i32 62207)
  %i.hf = add <4 x i32> %i.he, %i.gz
  %i.hg = trunc <4 x i32> %i.hf to <4 x i16>      ; 2 uses
  %i.hh = add <4 x i16> %i.hg, splat (i16 -3329)  ; 2 uses
  %i.hi = icmp slt <4 x i16> %i.hh, zeroinitializer
  %i.hj = select <4 x i1> %i.hi, <4 x i16> %i.hg, <4 x i16> zeroinitializer
  %i.hk = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hh, <4 x i16> zeroinitializer)
  %i.hl = or <4 x i16> %i.hj, %i.hk
  %interleaved.vec57 = shufflevector <4 x i16> %i.gx, <4 x i16> %i.hl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec57, ptr %i.gy, align 2, !tbaa !639
  %index.next58 = add nuw i64 %index49, 4         ; 2 uses
  %i.hm = icmp eq i64 %index.next58, 128
  br i1 %i.hm, label %vector.body61, label %vector.body48, !llvm.loop !1912

vector.body61:                                    ; preds = %vector.body48, %vector.body61
  %index62 = phi i64 [ %index.next67, %vector.body61 ], [ 0, %vector.body48 ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index62 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %wide.load63 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !639
  %wide.load64 = load <8 x i16>, ptr %i.ho, align 2, !tbaa !639
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index62 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load65 = load <8 x i16>, ptr %i.hp, align 2, !tbaa !639
  %wide.load66 = load <8 x i16>, ptr %i.hq, align 2, !tbaa !639
  %i.hr = add <8 x i16> %wide.load65, %wide.load63 ; 2 uses
  %i.hs = add <8 x i16> %wide.load66, %wide.load64 ; 2 uses
  %i.ht = add <8 x i16> %i.hr, splat (i16 -3329)  ; 2 uses
  %i.hu = add <8 x i16> %i.hs, splat (i16 -3329)  ; 2 uses
  %i.hv = icmp slt <8 x i16> %i.ht, zeroinitializer
  %i.hw = icmp slt <8 x i16> %i.hu, zeroinitializer
  %i.hx = select <8 x i1> %i.hv, <8 x i16> %i.hr, <8 x i16> zeroinitializer
  %i.hy = select <8 x i1> %i.hw, <8 x i16> %i.hs, <8 x i16> zeroinitializer
  %i.hz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ht, <8 x i16> zeroinitializer)
  %i.ia = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hu, <8 x i16> zeroinitializer)
  %i.ib = or <8 x i16> %i.hx, %i.hz
  %i.ic = or <8 x i16> %i.hy, %i.ia
  store <8 x i16> %i.ib, ptr %i.hn, align 2, !tbaa !639
  store <8 x i16> %i.ic, ptr %i.ho, align 2, !tbaa !639
  %index.next67 = add nuw i64 %index62, 16        ; 2 uses
  %i.id = icmp eq i64 %index.next67, 256
  br i1 %i.id, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2, label %vector.body61, !llvm.loop !1913

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2: ; preds = %vector.body61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 1536
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2
  %index71 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.2 ], [ %index.next80, %vector.body70 ] ; 3 uses
  %i.ig = shl nuw nsw i64 %index71, 1             ; 3 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.ig
  %wide.vec72 = load <8 x i16>, ptr %i.ih, align 2, !tbaa !639
  %i.ii = freeze <8 x i16> %wide.vec72            ; 2 uses
  %i.ij = bitcast <8 x i16> %i.ii to <4 x i32>
  %i.ik = bitcast <8 x i16> %i.ii to <4 x i32>
  %i.il = and <4 x i32> %i.ik, splat (i32 65535)  ; 2 uses
  %i.im = lshr <4 x i32> %i.ij, splat (i32 16)    ; 2 uses
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ig
  %wide.vec75 = load <8 x i16>, ptr %i.in, align 2, !tbaa !639
  %i.io = freeze <8 x i16> %wide.vec75            ; 2 uses
  %i.ip = bitcast <8 x i16> %i.io to <4 x i32>
  %i.iq = bitcast <8 x i16> %i.io to <4 x i32>
  %i.ir = and <4 x i32> %i.iq, splat (i32 65535)  ; 2 uses
  %i.is = lshr <4 x i32> %i.ip, splat (i32 16)    ; 2 uses
  %i.it = mul nuw <4 x i32> %i.ir, %i.il
  %i.iu = mul nuw <4 x i32> %i.is, %i.im          ; 2 uses
  %i.iv = mul nuw <4 x i32> %i.is, %i.il
  %i.iw = mul nuw <4 x i32> %i.im, %i.ir
  %i.ix = zext <4 x i32> %i.iu to <4 x i64>
  %i.iy = mul nuw nsw <4 x i64> %i.ix, splat (i64 5039)
  %i.iz = lshr <4 x i64> %i.iy, splat (i64 24)
  %i.ja = trunc nuw nsw <4 x i64> %i.iz to <4 x i32>
  %i.jb = mul <4 x i32> %i.ja, splat (i32 62207)
  %i.jc = add <4 x i32> %i.jb, %i.iu
  %i.jd = trunc <4 x i32> %i.jc to <4 x i16>      ; 2 uses
  %i.je = add <4 x i16> %i.jd, splat (i16 -3329)  ; 2 uses
  %i.jf = icmp slt <4 x i16> %i.je, zeroinitializer
  %i.jg = select <4 x i1> %i.jf, <4 x i16> %i.jd, <4 x i16> zeroinitializer
  %i.jh = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.je, <4 x i16> zeroinitializer)
  %i.ji = or <4 x i16> %i.jg, %i.jh
  %i.jj = zext <4 x i16> %i.ji to <4 x i32>
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_19kModRootsE, i64 %index71
  %wide.load78 = load <4 x i16>, ptr %i.jk, align 8, !tbaa !639
  %i.jl = zext <4 x i16> %wide.load78 to <4 x i32>
  %i.jm = mul nuw <4 x i32> %i.jj, %i.jl
  %i.jn = add <4 x i32> %i.jm, %i.it              ; 2 uses
  %i.jo = zext <4 x i32> %i.jn to <4 x i64>
  %i.jp = mul nuw nsw <4 x i64> %i.jo, splat (i64 5039)
  %i.jq = lshr <4 x i64> %i.jp, splat (i64 24)
  %i.jr = trunc nuw nsw <4 x i64> %i.jq to <4 x i32>
  %i.js = mul <4 x i32> %i.jr, splat (i32 62207)
  %i.jt = add <4 x i32> %i.js, %i.jn
  %i.ju = trunc <4 x i32> %i.jt to <4 x i16>      ; 2 uses
  %i.jv = add <4 x i16> %i.ju, splat (i16 -3329)  ; 2 uses
  %i.jw = icmp slt <4 x i16> %i.jv, zeroinitializer
  %i.jx = select <4 x i1> %i.jw, <4 x i16> %i.ju, <4 x i16> zeroinitializer
  %i.jy = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.jv, <4 x i16> zeroinitializer)
  %i.jz = or <4 x i16> %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ig
  %i.kb = add <4 x i32> %i.iv, %i.iw              ; 2 uses
  %i.kc = zext <4 x i32> %i.kb to <4 x i64>
  %i.kd = mul nuw nsw <4 x i64> %i.kc, splat (i64 5039)
  %i.ke = lshr <4 x i64> %i.kd, splat (i64 24)
  %i.kf = trunc nuw nsw <4 x i64> %i.ke to <4 x i32>
  %i.kg = mul <4 x i32> %i.kf, splat (i32 62207)
  %i.kh = add <4 x i32> %i.kg, %i.kb
  %i.ki = trunc <4 x i32> %i.kh to <4 x i16>      ; 2 uses
  %i.kj = add <4 x i16> %i.ki, splat (i16 -3329)  ; 2 uses
  %i.kk = icmp slt <4 x i16> %i.kj, zeroinitializer
  %i.kl = select <4 x i1> %i.kk, <4 x i16> %i.ki, <4 x i16> zeroinitializer
  %i.km = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.kj, <4 x i16> zeroinitializer)
  %i.kn = or <4 x i16> %i.kl, %i.km
  %interleaved.vec79 = shufflevector <4 x i16> %i.jz, <4 x i16> %i.kn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec79, ptr %i.ka, align 2, !tbaa !639
  %index.next80 = add nuw i64 %index71, 4         ; 2 uses
  %i.ko = icmp eq i64 %index.next80, 128
  br i1 %i.ko, label %vector.body83, label %vector.body70, !llvm.loop !1914

vector.body83:                                    ; preds = %vector.body70, %vector.body83
  %index84 = phi i64 [ %index.next89, %vector.body83 ], [ 0, %vector.body70 ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index84 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %wide.load85 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !639
  %wide.load86 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !639
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index84 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load87 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !639
  %wide.load88 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !639
  %i.kt = add <8 x i16> %wide.load87, %wide.load85 ; 2 uses
  %i.ku = add <8 x i16> %wide.load88, %wide.load86 ; 2 uses
  %i.kv = add <8 x i16> %i.kt, splat (i16 -3329)  ; 2 uses
  %i.kw = add <8 x i16> %i.ku, splat (i16 -3329)  ; 2 uses
  %i.kx = icmp slt <8 x i16> %i.kv, zeroinitializer
  %i.ky = icmp slt <8 x i16> %i.kw, zeroinitializer
  %i.kz = select <8 x i1> %i.kx, <8 x i16> %i.kt, <8 x i16> zeroinitializer
  %i.la = select <8 x i1> %i.ky, <8 x i16> %i.ku, <8 x i16> zeroinitializer
  %i.lb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kv, <8 x i16> zeroinitializer)
  %i.lc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kw, <8 x i16> zeroinitializer)
  %i.ld = or <8 x i16> %i.kz, %i.lb
  %i.le = or <8 x i16> %i.la, %i.lc
  store <8 x i16> %i.ld, ptr %i.kp, align 2, !tbaa !639
  store <8 x i16> %i.le, ptr %i.kq, align 2, !tbaa !639
  %index.next89 = add nuw i64 %index84, 16        ; 2 uses
  %i.lf = icmp eq i64 %index.next89, 256
  br i1 %i.lf, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3, label %vector.body83, !llvm.loop !1915

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.3: ; preds = %vector.body83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi4EEEvPhPKNS0_6vectorIXT_EEEi(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 11, 13) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 5
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  %i.c = icmp sgt i32 %.2.i, 0
  br i1 %i.c, label %bb.i, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit

bb.c:                                             ; preds = %bb.h, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.03451.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.h ]
  %.03550.i = phi i8 [ 0, %bb.a ], [ %.237.i, %bb.h ]
  %.03849.i = phi ptr [ %0, %bb.a ], [ %.240.i, %bb.h ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.e = load i16, ptr %i.d, align 2, !tbaa !639
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.03148.i = phi i32 [ 0, %bb.c ], [ %i.ac, %bb.g ] ; 2 uses
  %.03247.i = phi i16 [ %i.e, %bb.c ], [ %i.af, %bb.g ] ; 3 uses
  %.146.i = phi i32 [ %.03451.i, %bb.c ], [ %.2.i, %bb.g ] ; 5 uses
  %.13645.i = phi i8 [ %.03550.i, %bb.c ], [ %.237.i, %bb.g ] ; 2 uses
  %.13944.i = phi ptr [ %.03849.i, %bb.c ], [ %.240.i, %bb.g ] ; 3 uses
  %i.f = sub nsw i32 %2, %.03148.i                ; 4 uses
  %i.g = sub nsw i32 8, %.146.i                   ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub i32 7, %.146.i
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i16
  %i.m = and i16 %.03247.i, %i.l
  %i.n = zext nneg i16 %i.m to i32
  %i.o = shl i32 %i.n, %.146.i
  %i.p = trunc i32 %i.o to i8
  %i.q = or i8 %.13645.i, %i.p
  store i8 %i.q, ptr %.13944.i, align 1, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.13944.i, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %3 = zext nneg i32 %i.f to i64
  %i.s = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %3
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i16
  %i.w = and i16 %.03247.i, %i.v
  %i.x = zext nneg i16 %i.w to i32
  %i.y = shl i32 %i.x, %.146.i
  %i.z = trunc i32 %i.y to i8
  %i.aa = or i8 %.13645.i, %i.z
  %i.ab = add nsw i32 %.146.i, %i.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.240.i = phi ptr [ %i.r, %bb.e ], [ %.13944.i, %bb.f ] ; 3 uses
  %.237.i = phi i8 [ 0, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.e ], [ %i.ab, %bb.f ]  ; 3 uses
  %.0.i = phi i32 [ %i.g, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.ac = add nsw i32 %.0.i, %.03148.i            ; 2 uses
  %i.ad = zext i16 %.03247.i to i32
  %i.ae = lshr i32 %i.ad, %.0.i
  %i.af = trunc nuw i32 %i.ae to i16
  %i.ag = icmp slt i32 %i.ac, %2
  br i1 %i.ag, label %bb.d, label %bb.h, !llvm.loop !1790

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1791

bb.i:                                             ; preds = %bb.b
  store i8 %.237.i, ptr %.240.i, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit: ; preds = %bb.b, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %indvars.iv.next.i.1, %bb.o ] ; 2 uses
  %.03451.i.1 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.2.i.1, %bb.o ]
  %.03550.i.1 = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.237.i.1, %bb.o ]
  %.03849.i.1 = phi ptr [ %i.ah, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit ], [ %.240.i.1, %bb.o ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i.1
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !639
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.03148.i.1 = phi i32 [ 0, %bb.j ], [ %i.bi, %bb.n ] ; 2 uses
  %.03247.i.1 = phi i16 [ %i.ak, %bb.j ], [ %i.bl, %bb.n ] ; 3 uses
  %.146.i.1 = phi i32 [ %.03451.i.1, %bb.j ], [ %.2.i.1, %bb.n ] ; 5 uses
  %.13645.i.1 = phi i8 [ %.03550.i.1, %bb.j ], [ %.237.i.1, %bb.n ] ; 2 uses
  %.13944.i.1 = phi ptr [ %.03849.i.1, %bb.j ], [ %.240.i.1, %bb.n ] ; 3 uses
  %i.al = sub nsw i32 %2, %.03148.i.1             ; 4 uses
  %i.am = sub nsw i32 8, %.146.i.1                ; 2 uses
  %.not.i.1 = icmp slt i32 %i.al, %i.am
  br i1 %.not.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub i32 7, %.146.i.1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i16
  %i.as = and i16 %.03247.i.1, %i.ar
  %i.at = zext nneg i16 %i.as to i32
  %i.au = shl i32 %i.at, %.146.i.1
  %i.av = trunc i32 %i.au to i8
  %i.aw = or i8 %.13645.i.1, %i.av
  store i8 %i.aw, ptr %.13944.i.1, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.13944.i.1, i64 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %4 = zext nneg i32 %i.al to i64
  %i.ay = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %4
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i16
  %i.bc = and i16 %.03247.i.1, %i.bb
  %i.bd = zext nneg i16 %i.bc to i32
  %i.be = shl i32 %i.bd, %.146.i.1
  %i.bf = trunc i32 %i.be to i8
  %i.bg = or i8 %.13645.i.1, %i.bf
  %i.bh = add nsw i32 %.146.i.1, %i.al
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.240.i.1 = phi ptr [ %i.ax, %bb.l ], [ %.13944.i.1, %bb.m ] ; 3 uses
  %.237.i.1 = phi i8 [ 0, %bb.l ], [ %i.bg, %bb.m ] ; 3 uses
  %.2.i.1 = phi i32 [ 0, %bb.l ], [ %i.bh, %bb.m ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.am, %bb.l ], [ %i.al, %bb.m ] ; 2 uses
  %i.bi = add nsw i32 %.0.i.1, %.03148.i.1        ; 2 uses
  %i.bj = zext i16 %.03247.i.1 to i32
  %i.bk = lshr i32 %i.bj, %.0.i.1
  %i.bl = trunc nuw i32 %i.bk to i16
  %i.bm = icmp slt i32 %i.bi, %2
  br i1 %i.bm, label %bb.k, label %bb.o, !llvm.loop !1790

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %bb.p, label %bb.j, !llvm.loop !1791

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp sgt i32 %.2.i.1, 0
  br i1 %i.bn, label %bb.q, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1

bb.q:                                             ; preds = %bb.p
  store i8 %.237.i.1, ptr %.240.i.1, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1: ; preds = %bb.q, %bb.p
  %i.bo = shl nuw nsw i64 %i.b, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %indvars.iv.next.i.2, %bb.w ] ; 2 uses
  %.03451.i.2 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.2.i.2, %bb.w ]
  %.03550.i.2 = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.237.i.2, %bb.w ]
  %.03849.i.2 = phi ptr [ %i.bp, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.1 ], [ %.240.i.2, %bb.w ]
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.i.2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !639
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.03148.i.2 = phi i32 [ 0, %bb.r ], [ %i.cq, %bb.v ] ; 2 uses
  %.03247.i.2 = phi i16 [ %i.bs, %bb.r ], [ %i.ct, %bb.v ] ; 3 uses
  %.146.i.2 = phi i32 [ %.03451.i.2, %bb.r ], [ %.2.i.2, %bb.v ] ; 5 uses
  %.13645.i.2 = phi i8 [ %.03550.i.2, %bb.r ], [ %.237.i.2, %bb.v ] ; 2 uses
  %.13944.i.2 = phi ptr [ %.03849.i.2, %bb.r ], [ %.240.i.2, %bb.v ] ; 3 uses
  %i.bt = sub nsw i32 %2, %.03148.i.2             ; 4 uses
  %i.bu = sub nsw i32 8, %.146.i.2                ; 2 uses
  %.not.i.2 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = sub i32 7, %.146.i.2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i16
  %i.ca = and i16 %.03247.i.2, %i.bz
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = shl i32 %i.cb, %.146.i.2
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = or i8 %.13645.i.2, %i.cd
  store i8 %i.ce, ptr %.13944.i.2, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.13944.i.2, i64 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %5 = zext nneg i32 %i.bt to i64
  %i.cg = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %5
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i16
  %i.ck = and i16 %.03247.i.2, %i.cj
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = shl i32 %i.cl, %.146.i.2
  %i.cn = trunc i32 %i.cm to i8
  %i.co = or i8 %.13645.i.2, %i.cn
  %i.cp = add nsw i32 %.146.i.2, %i.bt
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.240.i.2 = phi ptr [ %i.cf, %bb.t ], [ %.13944.i.2, %bb.u ] ; 3 uses
  %.237.i.2 = phi i8 [ 0, %bb.t ], [ %i.co, %bb.u ] ; 3 uses
  %.2.i.2 = phi i32 [ 0, %bb.t ], [ %i.cp, %bb.u ] ; 3 uses
  %.0.i.2 = phi i32 [ %i.bu, %bb.t ], [ %i.bt, %bb.u ] ; 2 uses
  %i.cq = add nsw i32 %.0.i.2, %.03148.i.2        ; 2 uses
  %i.cr = zext i16 %.03247.i.2 to i32
  %i.cs = lshr i32 %i.cr, %.0.i.2
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = icmp slt i32 %i.cq, %2
  br i1 %i.cu, label %bb.s, label %bb.w, !llvm.loop !1790

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %bb.x, label %bb.r, !llvm.loop !1791

bb.x:                                             ; preds = %bb.w
  %i.cv = icmp sgt i32 %.2.i.2, 0
  br i1 %i.cv, label %bb.y, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2

bb.y:                                             ; preds = %bb.x
  store i8 %.237.i.2, ptr %.240.i.2, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2: ; preds = %bb.y, %bb.x
  %i.cw = mul nuw nsw i64 %i.b, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1536
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2 ], [ %indvars.iv.next.i.3, %bb.ae ] ; 2 uses
  %.03451.i.3 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2 ], [ %.2.i.3, %bb.ae ]
  %.03550.i.3 = phi i8 [ 0, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2 ], [ %.237.i.3, %bb.ae ]
  %.03849.i.3 = phi ptr [ %i.cx, %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.2 ], [ %.240.i.3, %bb.ae ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv.i.3
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !639
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  %.03148.i.3 = phi i32 [ 0, %bb.z ], [ %i.dy, %bb.ad ] ; 2 uses
  %.03247.i.3 = phi i16 [ %i.da, %bb.z ], [ %i.eb, %bb.ad ] ; 3 uses
  %.146.i.3 = phi i32 [ %.03451.i.3, %bb.z ], [ %.2.i.3, %bb.ad ] ; 5 uses
  %.13645.i.3 = phi i8 [ %.03550.i.3, %bb.z ], [ %.237.i.3, %bb.ad ] ; 2 uses
  %.13944.i.3 = phi ptr [ %.03849.i.3, %bb.z ], [ %.240.i.3, %bb.ad ] ; 3 uses
  %i.db = sub nsw i32 %2, %.03148.i.3             ; 4 uses
  %i.dc = sub nsw i32 8, %.146.i.3                ; 2 uses
  %.not.i.3 = icmp slt i32 %i.db, %i.dc
  br i1 %.not.i.3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = sub i32 7, %.146.i.3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i16
  %i.di = and i16 %.03247.i.3, %i.dh
  %i.dj = zext nneg i16 %i.di to i32
  %i.dk = shl i32 %i.dj, %.146.i.3
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = or i8 %.13645.i.3, %i.dl
  store i8 %i.dm, ptr %.13944.i.3, align 1, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.13944.i.3, i64 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %6 = zext nneg i32 %i.db to i64
  %i.do = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %6
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i16
  %i.ds = and i16 %.03247.i.3, %i.dr
  %i.dt = zext nneg i16 %i.ds to i32
  %i.du = shl i32 %i.dt, %.146.i.3
  %i.dv = trunc i32 %i.du to i8
  %i.dw = or i8 %.13645.i.3, %i.dv
  %i.dx = add nsw i32 %.146.i.3, %i.db
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.240.i.3 = phi ptr [ %i.dn, %bb.ab ], [ %.13944.i.3, %bb.ac ] ; 3 uses
  %.237.i.3 = phi i8 [ 0, %bb.ab ], [ %i.dw, %bb.ac ] ; 3 uses
  %.2.i.3 = phi i32 [ 0, %bb.ab ], [ %i.dx, %bb.ac ] ; 3 uses
  %.0.i.3 = phi i32 [ %i.dc, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  %i.dy = add nsw i32 %.0.i.3, %.03148.i.3        ; 2 uses
  %i.dz = zext i16 %.03247.i.3 to i32
  %i.ea = lshr i32 %i.dz, %.0.i.3
  %i.eb = trunc nuw i32 %i.ea to i16
  %i.ec = icmp slt i32 %i.dy, %2
  br i1 %i.ec, label %bb.aa, label %bb.ae, !llvm.loop !1790

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %bb.af, label %bb.z, !llvm.loop !1791

bb.af:                                            ; preds = %bb.ae
  %i.ed = icmp sgt i32 %.2.i.3, 0
  br i1 %i.ed, label %bb.ag, label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.3

bb.ag:                                            ; preds = %bb.af
  store i8 %.237.i.3, ptr %.240.i.3, align 1, !tbaa !13
  br label %_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.3

_ZN5mlkem12_GLOBAL__N_113scalar_encodeEPhPKNS0_6scalarEi.exit.3: ; preds = %bb.ag, %bb.af
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi4EEEiPNS0_6vectorIXT_EEEPKhi(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 11, 13) %2) unnamed_addr #18 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 5
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.03354.i = phi i32 [ 0, %bb.a ], [ %i.q, %bb.f ]
  %.03553.i = phi i8 [ 0, %bb.a ], [ %i.s, %bb.f ]
  %.04152.i = phi ptr [ %1, %bb.a ], [ %.243.i, %bb.f ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.02951.i = phi i32 [ 0, %.preheader.i ], [ %i.t, %bb.d ] ; 3 uses
  %.03050.i = phi i16 [ 0, %.preheader.i ], [ %i.p, %bb.d ]
  %.13449.i = phi i32 [ %.03354.i, %.preheader.i ], [ %i.q, %bb.d ] ; 2 uses
  %.13648.i = phi i8 [ %.03553.i, %.preheader.i ], [ %i.s, %bb.d ]
  %.14247.i = phi ptr [ %.04152.i, %.preheader.i ], [ %.243.i, %bb.d ] ; 3 uses
  %i.c = icmp eq i32 %.13449.i, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.14247.i, align 1, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.14247.i, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.243.i = phi ptr [ %i.e, %bb.c ], [ %.14247.i, %bb.b ] ; 2 uses
  %.237.i = phi i8 [ %i.d, %bb.c ], [ %.13648.i, %bb.b ] ; 2 uses
  %.2.i = phi i32 [ 8, %bb.c ], [ %.13449.i, %bb.b ] ; 2 uses
  %i.f = sub nsw i32 %2, %.02951.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %.2.i) ; 4 uses
  %i.g = zext i8 %.237.i to i32
  %i.h = sext i32 %spec.select.i to i64
  %i.i = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = and i8 %i.k, %.237.i
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, %.02951.i
  %i.o = trunc i32 %i.n to i16
  %i.p = or i16 %.03050.i, %i.o                   ; 3 uses
  %i.q = sub nsw i32 %.2.i, %spec.select.i        ; 2 uses
  %i.r = lshr i32 %i.g, %spec.select.i
  %i.s = trunc nuw i32 %i.r to i8                 ; 2 uses
  %i.t = add nsw i32 %spec.select.i, %.02951.i    ; 2 uses
  %i.u = icmp slt i32 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.e, !llvm.loop !1263

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i16 %i.p, 3328
  %i.w = zext i1 %i.v to i32
  %i.x = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.w) #38, !srcloc !367
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.p, ptr %i.y, align 2, !tbaa !639
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.i, label %bb.g, label %.preheader.i, !llvm.loop !1264

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.l, %bb.g
  %indvars.iv.i.1 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.1, %bb.l ] ; 2 uses
  %.03354.i.1 = phi i32 [ 0, %bb.g ], [ %i.ap, %bb.l ]
  %.03553.i.1 = phi i8 [ 0, %bb.g ], [ %i.ar, %bb.l ]
  %.04152.i.1 = phi ptr [ %i.aa, %bb.g ], [ %.243.i.1, %bb.l ]
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.preheader.i.1
  %.02951.i.1 = phi i32 [ 0, %.preheader.i.1 ], [ %i.as, %bb.j ] ; 3 uses
  %.03050.i.1 = phi i16 [ 0, %.preheader.i.1 ], [ %i.ao, %bb.j ]
  %.13449.i.1 = phi i32 [ %.03354.i.1, %.preheader.i.1 ], [ %i.ap, %bb.j ] ; 2 uses
  %.13648.i.1 = phi i8 [ %.03553.i.1, %.preheader.i.1 ], [ %i.ar, %bb.j ]
  %.14247.i.1 = phi ptr [ %.04152.i.1, %.preheader.i.1 ], [ %.243.i.1, %bb.j ] ; 3 uses
  %i.ab = icmp eq i32 %.13449.i.1, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.14247.i.1, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.14247.i.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.243.i.1 = phi ptr [ %i.ad, %bb.i ], [ %.14247.i.1, %bb.h ] ; 2 uses
  %.237.i.1 = phi i8 [ %i.ac, %bb.i ], [ %.13648.i.1, %bb.h ] ; 2 uses
  %.2.i.1 = phi i32 [ 8, %bb.i ], [ %.13449.i.1, %bb.h ] ; 2 uses
  %i.ae = sub nsw i32 %2, %.02951.i.1
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.2.i.1) ; 4 uses
  %i.af = zext i8 %.237.i.1 to i32
  %i.ag = sext i32 %spec.select.i.1 to i64
  %i.ah = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = and i8 %i.aj, %.237.i.1
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, %.02951.i.1
  %i.an = trunc i32 %i.am to i16
  %i.ao = or i16 %.03050.i.1, %i.an               ; 3 uses
  %i.ap = sub nsw i32 %.2.i.1, %spec.select.i.1   ; 2 uses
  %i.aq = lshr i32 %i.af, %spec.select.i.1
  %i.ar = trunc nuw i32 %i.aq to i8               ; 2 uses
  %i.as = add nsw i32 %spec.select.i.1, %.02951.i.1 ; 2 uses
  %i.at = icmp slt i32 %i.as, %2
  br i1 %i.at, label %bb.h, label %bb.k, !llvm.loop !1263

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ugt i16 %i.ao, 3328
  %i.av = zext i1 %i.au to i32
  %i.aw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av) #38, !srcloc !367
  %.not.i.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.1, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.i.1
  store i16 %i.ao, ptr %i.ax, align 2, !tbaa !639
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.i.1, label %bb.m, label %.preheader.i.1, !llvm.loop !1264

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.az = shl nuw nsw i64 %i.b, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  br label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.r, %bb.m
  %indvars.iv.i.2 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i.2, %bb.r ] ; 2 uses
  %.03354.i.2 = phi i32 [ 0, %bb.m ], [ %i.bp, %bb.r ]
  %.03553.i.2 = phi i8 [ 0, %bb.m ], [ %i.br, %bb.r ]
  %.04152.i.2 = phi ptr [ %i.ba, %bb.m ], [ %.243.i.2, %bb.r ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.i.2
  %.02951.i.2 = phi i32 [ 0, %.preheader.i.2 ], [ %i.bs, %bb.p ] ; 3 uses
  %.03050.i.2 = phi i16 [ 0, %.preheader.i.2 ], [ %i.bo, %bb.p ]
  %.13449.i.2 = phi i32 [ %.03354.i.2, %.preheader.i.2 ], [ %i.bp, %bb.p ] ; 2 uses
  %.13648.i.2 = phi i8 [ %.03553.i.2, %.preheader.i.2 ], [ %i.br, %bb.p ]
  %.14247.i.2 = phi ptr [ %.04152.i.2, %.preheader.i.2 ], [ %.243.i.2, %bb.p ] ; 3 uses
  %i.bb = icmp eq i32 %.13449.i.2, 0
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.14247.i.2, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.14247.i.2, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.243.i.2 = phi ptr [ %i.bd, %bb.o ], [ %.14247.i.2, %bb.n ] ; 2 uses
  %.237.i.2 = phi i8 [ %i.bc, %bb.o ], [ %.13648.i.2, %bb.n ] ; 2 uses
  %.2.i.2 = phi i32 [ 8, %bb.o ], [ %.13449.i.2, %bb.n ] ; 2 uses
end_hunk_3
