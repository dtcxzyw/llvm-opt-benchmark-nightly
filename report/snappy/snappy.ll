Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !28
  %i.gk = zext i16 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gm = trunc i64 %i.q to i16
  %i.gn = add i16 %i.gm, 13
  store i16 %i.gn, ptr %i.gi, align 2, !tbaa !28
  %.0.copyload.i160.1.3 = load i32, ptr %i.gl, align 1
  %.not.1.3 = icmp eq i32 %.0.copyload.i160.1.3, %i.gc
  br i1 %.not.1.3, label %bb.p, label %bb.n, !prof !29

bb.n:                                             ; preds = %bb.m
  %i.go = lshr i64 %.0.copyload.i161.2, 16        ; 2 uses
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
  %i.gq = mul i32 %i.gp, 506832829
  %i.gr = lshr i32 %i.gq, 16
  %i.gs = and i32 %i.gr, %i.b
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = add i64 %i.gt, %i.i
  %i.gv = inttoptr i64 %i.gu to ptr               ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !28
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %i.gx
  %i.gz = trunc i64 %i.q to i16
  %i.ha = add i16 %i.gz, 14
  store i16 %i.ha, ptr %i.gv, align 2, !tbaa !28
  %.0.copyload.i160.2.3 = load i32, ptr %i.gy, align 1
  %.not.2.3 = icmp eq i32 %.0.copyload.i160.2.3, %i.gp
  br i1 %.not.2.3, label %bb.p, label %bb.o, !prof !29

bb.o:                                             ; preds = %bb.n
  %i.hb = lshr i64 %.0.copyload.i161.2, 24        ; 2 uses
  %i.hc = trunc i64 %i.hb to i32                  ; 2 uses
  %i.hd = mul i32 %i.hc, 506832829
  %i.he = lshr i32 %i.hd, 16
  %i.hf = and i32 %i.he, %i.b
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = add i64 %i.hg, %i.i
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !28
  %i.hk = zext i16 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 %i.hk
  %i.hm = trunc i64 %i.q to i16
  %i.hn = add i16 %i.hm, 15
  store i16 %i.hn, ptr %i.hi, align 2, !tbaa !28
  %.0.copyload.i160.3.3 = load i32, ptr %i.hl, align 1
  %.not.3.3 = icmp eq i32 %.0.copyload.i160.3.3, %i.hc
  br i1 %.not.3.3, label %bb.p, label %.thread206, !prof !29

.thread206:                                       ; preds = %bb.o
  %i.ho = getelementptr inbounds nuw i8, ptr %.0118, i64 17
  %.0.copyload.i161.3 = load i64, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.0118, i64 17
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.preheader.3, %bb.l, %bb.k, %bb.j, %.preheader.2, %bb.i, %bb.h, %bb.g, %.preheader.1, %bb.f, %bb.e, %bb.d, %.preheader
  %.1181283.lcssa = phi i64 [ %.0.copyload.i159, %.preheader ], [ %i.ab, %bb.d ], [ %i.ao, %bb.e ], [ %i.bb, %bb.f ], [ %.0.copyload.i161, %.preheader.1 ], [ %i.cb, %bb.g ], [ %i.co, %bb.h ], [ %i.db, %bb.i ], [ %.0.copyload.i161.1, %.preheader.2 ], [ %i.eb, %bb.j ], [ %i.eo, %bb.k ], [ %i.fb, %bb.l ], [ %.0.copyload.i161.2, %.preheader.3 ], [ %i.gb, %bb.m ], [ %i.go, %bb.n ], [ %i.hb, %bb.o ]
  %.lcssa299.wide = phi i64 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %.preheader.1 ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %.preheader.2 ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %.preheader.3 ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ] ; 3 uses
  %.lcssa297 = phi i64 [ %i.y, %.preheader ], [ %i.ak, %bb.d ], [ %i.ax, %bb.e ], [ %i.bk, %bb.f ], [ %i.bx, %.preheader.1 ], [ %i.ck, %bb.g ], [ %i.cx, %bb.h ], [ %i.dk, %bb.i ], [ %i.dx, %.preheader.2 ], [ %i.ek, %bb.j ], [ %i.ex, %bb.k ], [ %i.fk, %bb.l ], [ %i.fx, %.preheader.3 ], [ %i.gk, %bb.m ], [ %i.gx, %bb.n ], [ %i.hk, %bb.o ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa297
  %.tr = trunc nuw nsw i64 %.lcssa299.wide to i8
  %i.hr = shl nuw nsw i8 %.tr, 2
  store i8 %i.hr, ptr %.0117, align 1, !tbaa !16
  %i.hs = getelementptr inbounds nuw i8, ptr %.0117, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hs, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 %.lcssa299.wide
  %i.hu = getelementptr inbounds nuw i8, ptr %.0117, i64 %.lcssa299.wide
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.q:                                             ; preds = %.thread206, %bb.c
  %.5185 = phi i64 [ %.0.copyload.i161.3, %.thread206 ], [ %.0.copyload.i159, %bb.c ]
  %.1151 = phi i32 [ 49, %.thread206 ], [ 33, %bb.c ]
  %.7125 = phi ptr [ %i.hp, %.thread206 ], [ %i.m, %bb.c ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.7125, i64 1 ; 2 uses
  %i.hx = icmp ugt ptr %i.hw, %i.e
  br i1 %i.hx, label %.thread252, label %.lr.ph, !prof !30

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %i.hy = phi ptr [ %i.is, %bb.r ], [ %i.hw, %bb.q ] ; 3 uses
  %i.hz = phi i32 [ %i.iq, %bb.r ], [ %.1151, %bb.q ] ; 2 uses
  %.8126289 = phi ptr [ %i.hy, %bb.r ], [ %.7125, %bb.q ] ; 3 uses
  %.6186288 = phi i64 [ %i.io, %bb.r ], [ %.5185, %bb.q ] ; 3 uses
  %i.ia = trunc i64 %.6186288 to i32              ; 2 uses
  %i.ib = mul i32 %i.ia, 506832829
  %i.ic = lshr i32 %i.ib, 16
  %i.id = and i32 %i.ic, %i.b
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = add i64 %i.ie, %i.i
  %i.ig = inttoptr i64 %i.if to ptr               ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !28
  %i.ii = zext i16 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 %i.ii
  %i.ik = ptrtoint ptr %.8126289 to i64           ; 2 uses
  %i.il = sub i64 %i.ik, %i.h
  %i.im = trunc i64 %i.il to i16
  store i16 %i.im, ptr %i.ig, align 2, !tbaa !28
  %.0.copyload.i162 = load i32, ptr %i.ij, align 1
  %i.in = icmp eq i32 %.0.copyload.i162, %i.ia
  br i1 %i.in, label %bb.s, label %bb.r, !prof !29

bb.r:                                             ; preds = %.lr.ph
  %.0.copyload.i163 = load i32, ptr %i.hy, align 1
  %i.io = zext i32 %.0.copyload.i163 to i64
  %i.ip = lshr i32 %i.hz, 5                       ; 2 uses
  %i.iq = add i32 %i.ip, %i.hz
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ir ; 2 uses
  %i.it = icmp ugt ptr %i.is, %i.e
  br i1 %i.it, label %.thread252, label %.lr.ph, !prof !31

bb.s:                                             ; preds = %.lr.ph
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ii ; 2 uses
  %i.iv = ptrtoint ptr %.0118 to i64
  %i.iw = sub i64 %i.ik, %i.iv                    ; 3 uses
  %i.ix = trunc i64 %i.iw to i32                  ; 3 uses
  %i.iy = add nsw i32 %i.ix, -1                   ; 4 uses
  %i.iz = icmp slt i32 %i.ix, 17
  br i1 %i.iz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.iy to i8
  %i.ja = shl i8 %.tr37.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.0117, align 1, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jb, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %sext = shl i64 %i.iw, 32
  %i.jc = ashr exact i64 %sext, 32
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 %i.jc
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.u:                                             ; preds = %bb.s
  %i.je = icmp samesign ult i32 %i.ix, 61
  br i1 %i.je, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.tr.i = trunc nuw nsw i32 %i.iy to i8
  %i.jf = shl nuw i8 %.tr.i, 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.jg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iy, i1 true)
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = xor i32 %i.jh, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.ji to i8
  %i.jj = shl nuw nsw i8 %.tr38.i, 2
  %i.jk = or disjoint i8 %i.jj, -16
  %i.jl = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i32 %i.iy, ptr %i.jl, align 1
  %i.jm = zext nneg i32 %i.ji to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.jf, %bb.v ], [ %i.jk, %bb.w ]
  %.pn.i = phi ptr [ %.0117, %bb.v ], [ %i.jn, %bb.w ]
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !16
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.jo = and i64 %i.iw, 2147483647
  %i.jp = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.jo ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.030.i = phi ptr [ %.032.i, %bb.x ], [ %i.jq, %bb.y ] ; 2 uses
  %.0.i = phi ptr [ %.0118, %bb.x ], [ %i.jr, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.js = icmp ult ptr %i.jq, %i.jp
  br i1 %i.js, label %bb.y, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9189.ph = phi i64 [ %.1181283.lcssa, %bb.p ], [ %.6186288, %bb.t ], [ %.6186288, %bb.y ]
  %.8148.ph = phi ptr [ %i.hq, %bb.p ], [ %i.iu, %bb.t ], [ %i.iu, %bb.y ]
  %.11129.ph = phi ptr [ %i.ht, %bb.p ], [ %.8126289, %bb.t ], [ %.8126289, %bb.y ]
  %.8.ph = phi ptr [ %i.hv, %bb.p ], [ %i.jd, %bb.t ], [ %i.jp, %bb.y ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.ak
  %.9189 = phi i64 [ %.11191235, %bb.ak ], [ %.9189.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.8148 = phi ptr [ %i.pb, %bb.ak ], [ %.8148.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 6 uses
  %.11129 = phi ptr [ %i.og, %bb.ak ], [ %.11129.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.ak ], [ %.8.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8148, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.ju, %i.k
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !29

bb.z:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.jt, align 1 ; 2 uses
  %.0.copyload.i62.i = load i64, ptr %i.ju, align 1 ; 3 uses
  %.not59.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i62.i
  br i1 %.not59.i, label %.thread.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !29

.thread.i:                                        ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jw = xor i64 %.0.copyload.i62.i, %.0.copyload.i.i ; 2 uses
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 true) ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i63.i = load i64, ptr %i.jz, align 1
  %i.ka = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i63.i, i64 %i.jw, i64 %.0.copyload.i62.i) #23, !srcloc !132
  %i.kb = and i64 %i.jx, 24
  %i.kc = lshr i64 %i.ka, %i.kb
  %i.kd = add nuw nsw i64 %i.jy, 4                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kd
  %i.kf = ptrtoint ptr %.11129 to i64
  %i.kg = ptrtoint ptr %.8148 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  br label %bb.af

bb.aa:                                            ; preds = %.thread.i, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.182.i = phi i64 [ 0, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ju, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.jv, %.thread.i ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.8148, i64 68
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ki, i32 0, i32 3, i32 1)
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kj, i32 0, i32 3, i32 1)
  %.not6098.i = icmp ugt ptr %.1.i, %i.k
  br i1 %.not6098.i, label %.preheader.i, label %.lr.ph.i, !prof !30

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.283.lcssa.i = phi i64 [ %.182.i, %bb.aa ], [ %i.ld, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.lc, %bb.ab ] ; 3 uses
  %i.kk = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.kk, label %.lr.ph104.preheader.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !33

.lr.ph104.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa114.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kl = add i64 %.283.lcssa.i, %i.j
  %i.km = sub i64 %i.kl, %.2.lcssa114.i
  br label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.2100.i = phi ptr [ %i.lc, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28399.i = phi i64 [ %i.ld, %bb.ab ], [ %.182.i, %bb.aa ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.28399.i
  %.0.copyload.i64.i = load i64, ptr %i.kn, align 1 ; 2 uses
  %.0.copyload.i65.i = load i64, ptr %.2100.i, align 1 ; 3 uses
  %i.ko = icmp eq i64 %.0.copyload.i64.i, %.0.copyload.i65.i
  br i1 %i.ko, label %bb.ab, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237: ; preds = %.lr.ph.i
  %i.kp = xor i64 %.0.copyload.i65.i, %.0.copyload.i64.i ; 2 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kp, i1 true) ; 2 uses
  %i.kr = lshr i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %.2100.i, i64 4
  %.0.copyload.i66.i = load i64, ptr %i.ks, align 1
  %i.kt = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i66.i, i64 %i.kp, i64 %.0.copyload.i65.i) #23, !srcloc !133
  %i.ku = and i64 %i.kq, 24
  %i.kv = lshr i64 %i.kt, %i.ku
  %i.kw = or disjoint i64 %i.kr, %.28399.i
  %i.kx = add i64 %i.kw, 4                        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kx
  %i.kz = ptrtoint ptr %.11129 to i64
  %i.la = ptrtoint ptr %.8148 to i64
  %i.lb = sub i64 %i.kz, %i.la
  br label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.2100.i, i64 8 ; 3 uses
  %i.ld = add i64 %.28399.i, 8                    ; 2 uses
  %.not60.i = icmp ugt ptr %i.lc, %i.k
  br i1 %.not60.i, label %.preheader.i, label %.lr.ph.i, !prof !31

.lr.ph104.i:                                      ; preds = %bb.ac, %.lr.ph104.preheader.i
  %.4103.i = phi ptr [ %i.li, %bb.ac ], [ %.2.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %.485102.i = phi i64 [ %i.lj, %bb.ac ], [ %.283.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.485102.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = load i8, ptr %.4103.i, align 1, !tbaa !16
  %i.lh = icmp eq i8 %i.lf, %i.lg
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph104.i
  %i.li = getelementptr inbounds nuw i8, ptr %.4103.i, i64 1 ; 2 uses
  %i.lj = add i64 %.485102.i, 1
  %exitcond.not.i = icmp eq ptr %i.li, %i.c
  br i1 %exitcond.not.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph104.i, !prof !31, !llvm.loop !128

bb.ad:                                            ; preds = %.lr.ph104.i
  %.not61.i = icmp ugt ptr %.4103.i, %i.l
  br i1 %.not61.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i67.i = load i64, ptr %.4103.i, align 1
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad
  %.10190 = phi i64 [ %.9189, %bb.ad ], [ %.0.copyload.i67.i, %bb.ae ] ; 2 uses
  %i.lk = icmp ult i64 %.485102.i, 8
  %i.ll = add i64 %.485102.i, 4                   ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.ll ; 2 uses
  %i.ln = ptrtoint ptr %.11129 to i64
  %i.lo = ptrtoint ptr %.8148 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  br i1 %i.lk, label %bb.af, label %bb.ag

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.485.lcssa.i = phi i64 [ %.283.lcssa.i, %.preheader.i ], [ %i.km, %bb.ac ] ; 2 uses
  %i.lq = icmp ult i64 %.485.lcssa.i, 8
  %i.lr = add i64 %.485.lcssa.i, 4                ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lr ; 2 uses
  %i.lt = ptrtoint ptr %.11129 to i64
  %i.lu = ptrtoint ptr %.8148 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  br i1 %i.lq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lw = phi i64 [ %i.kh, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 3 uses
  %i.lx = phi ptr [ %i.ke, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ]
  %i.ly = phi i64 [ %i.kd, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ]
  %.11191236 = phi i64 [ %i.kc, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ]
  %i.lz = shl nuw nsw i64 %i.ly, 2
  %i.ma = shl i64 %i.lw, 8
  %i.mb = add nuw i64 %i.lz, %i.ma
  %i.mc = trunc i64 %i.mb to i32
  %i.md = trunc i64 %i.lw to i32
  %i.me = lshr i32 %i.md, 3
  %i.mf = and i32 %i.me, 224
  %i.mg = add nsw i32 %i.mf, -15
  %i.mh = icmp ult i64 %i.lw, 2048                ; 2 uses
  %i.mi = select i1 %i.mh, i32 %i.mg, i32 -2
  %i.mj = add i32 %i.mi, %i.mc
  store i32 %i.mj, ptr %.8, align 1
  %i.mk = select i1 %i.mh, i64 2, i64 3
  %i.ml = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mk
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ag:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.mm = phi i64 [ %i.lb, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 6 uses
  %i.mn = phi ptr [ %i.ky, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ] ; 2 uses
  %i.mo = phi i64 [ %i.kx, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ] ; 5 uses
  %.11191244 = phi i64 [ %i.kv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ] ; 2 uses
  %i.mp = icmp ugt i64 %i.mo, 67
  br i1 %i.mp, label %.lr.ph.i167, label %._crit_edge.i164, !prof !34

.lr.ph.i167:                                      ; preds = %bb.ag
  %.tr21.i = trunc i64 %i.mm to i32
  %i.mq = shl i32 %.tr21.i, 8
  %i.mr = or disjoint i32 %i.mq, 254              ; 9 uses
  %i.ms = add i64 %i.mo, -68                      ; 2 uses
  %i.mt = lshr i64 %i.ms, 6
  %i.mu = add nuw nsw i64 %i.mt, 1
  %xtraiter = and i64 %i.mu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i167, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mw, %.prol.preheader ], [ %i.mo, %.lr.ph.i167 ]
  %.01522.i.prol = phi ptr [ %i.mv, %.prol.preheader ], [ %.8, %.lr.ph.i167 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i167 ]
  store i32 %i.mr, ptr %.01522.i.prol, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mw = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i167
  %.023.i.unr = phi i64 [ %i.mo, %.lr.ph.i167 ], [ %i.mw, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i167 ], [ %i.mv, %.prol.preheader ]
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i167 ], [ %i.mv, %.prol.preheader ]
  %.lcssa415.unr = phi i64 [ poison, %.lr.ph.i167 ], [ %i.mw, %.prol.preheader ]
  %i.mx = icmp ult i64 %i.ms, 448
  br i1 %i.mx, label %._crit_edge.i164, label %.lr.ph.i167.new, !prof !30

.lr.ph.i167.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i167.new
  %.023.i = phi i64 [ %i.ng, %.lr.ph.i167.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nf, %.lr.ph.i167.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mr, ptr %.01522.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mr, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mr, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mr, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mr, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mr, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mr, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mr, ptr %i.ne, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.ng = add i64 %.023.i, -512                   ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, 67
  br i1 %i.nh, label %.lr.ph.i167.new, label %._crit_edge.i164, !prof !37, !llvm.loop !130

._crit_edge.i164:                                 ; preds = %.prol.loopexit, %.lr.ph.i167.new, %bb.ag
  %.015.lcssa.i = phi ptr [ %.8, %bb.ag ], [ %.lcssa416.unr, %.prol.loopexit ], [ %i.nf, %.lr.ph.i167.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mo, %bb.ag ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.ng, %.lr.ph.i167.new ] ; 5 uses
  %i.ni = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ni, label %.thread.i165, label %bb.ah

.thread.i165:                                     ; preds = %._crit_edge.i164
  %.tr.i166 = trunc i64 %i.mm to i32              ; 2 uses
  %i.nj = shl i32 %.tr.i166, 8
  %i.nk = or disjoint i32 %i.nj, 238
  store i32 %i.nk, ptr %.015.lcssa.i, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nm = add nsw i64 %.0.lcssa.i, -60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i164
  %i.nn = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nn, label %._crit_edge26.i, label %bb.aj

._crit_edge26.i:                                  ; preds = %bb.ah
  %.pre.i = trunc i64 %i.mm to i32
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge26.i, %.thread.i165
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i166, %.thread.i165 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nm, %.thread.i165 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nl, %.thread.i165 ] ; 2 uses
  %i.no = shl nuw nsw i64 %.120.i, 2
  %i.np = shl i64 %i.mm, 8
  %i.nq = add nuw i64 %i.no, %i.np
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = lshr i32 %.pre-phi.i, 3
  %i.nt = and i32 %i.ns, 224
  %i.nu = add nsw i32 %i.nt, -15
  %i.nv = icmp ult i64 %i.mm, 2048                ; 2 uses
  %i.nw = select i1 %i.nv, i32 %i.nu, i32 -2
  %i.nx = add i32 %i.nw, %i.nr
  store i32 %i.nx, ptr %.11619.i, align 1
  %i.ny = select i1 %i.nv, i64 2, i64 3
  %i.nz = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ny
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.oa = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.ob = shl i64 %i.mm, 8
  %i.oc = add i64 %i.ob, 4294967294
  %i.od = add i64 %i.oc, %i.oa
  %i.oe = trunc i64 %i.od to i32
  store i32 %i.oe, ptr %.015.lcssa.i, align 1
  %i.of = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.aj, %bb.ai, %bb.af
  %i.og = phi ptr [ %i.lx, %bb.af ], [ %i.mn, %bb.ai ], [ %i.mn, %bb.aj ] ; 6 uses
  %.11191235 = phi i64 [ %.11191236, %bb.af ], [ %.11191244, %bb.ai ], [ %.11191244, %bb.aj ] ; 3 uses
  %.9 = phi ptr [ %i.ml, %bb.af ], [ %i.nz, %bb.ai ], [ %i.of, %bb.aj ] ; 3 uses
  %.not158 = icmp ult ptr %i.og, %i.e
  br i1 %.not158, label %bb.ak, label %.thread252, !prof !26

bb.ak:                                            ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.h
  %i.oj = trunc i64 %i.oi to i16                  ; 2 uses
  %i.ok = add i16 %i.oj, -1
  %i.ol = getelementptr inbounds i8, ptr %i.og, i64 -1
  %.0.copyload.i168 = load i32, ptr %i.ol, align 1
  %i.om = mul i32 %.0.copyload.i168, 506832829
  %i.on = lshr i32 %i.om, 16
  %i.oo = and i32 %i.on, %i.b
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = add i64 %i.op, %i.i
  %i.or = inttoptr i64 %i.oq to ptr
  store i16 %i.ok, ptr %i.or, align 2, !tbaa !28
  %i.os = trunc i64 %.11191235 to i32             ; 2 uses
  %i.ot = mul i32 %i.os, 506832829
  %i.ou = lshr i32 %i.ot, 16
  %i.ov = and i32 %i.ou, %i.b
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = add i64 %i.ow, %i.i
  %i.oy = inttoptr i64 %i.ox to ptr               ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !28
  %i.pa = zext i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 %i.pa ; 2 uses
  store i16 %i.oj, ptr %i.oy, align 2, !tbaa !28
  %.0.copyload.i169 = load i32, ptr %i.pb, align 1
  %i.pc = icmp eq i32 %.0.copyload.i169, %i.os
  br i1 %i.pc, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.al, !llvm.loop !131

bb.al:                                            ; preds = %bb.ak
  %i.pd = lshr i64 %.11191235, 8
  %i.pe = trunc i64 %i.pd to i32
  br label %bb.c

.thread252:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.og, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pf = icmp ult ptr %.13, %i.c
  br i1 %i.pf, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.thread252
  %i.pg = ptrtoint ptr %i.c to i64
  %i.ph = ptrtoint ptr %.13 to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 2 uses
  %i.pj = trunc i64 %i.pi to i32                  ; 2 uses
  %i.pk = add nsw i32 %i.pj, -1                   ; 3 uses
  %i.pl = icmp slt i32 %i.pj, 61
  br i1 %i.pl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.tr.i173 = trunc i32 %i.pk to i8
  %i.pm = shl i8 %.tr.i173, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ao:                                            ; preds = %bb.am
  %i.pn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pk, i1 true)
  %i.po = lshr i32 %i.pn, 3
  %i.pp = xor i32 %i.po, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pp to i8
  %i.pq = shl nuw nsw i8 %.tr16.i, 2
  %i.pr = or disjoint i8 %i.pq, -16
  %i.ps = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pk, ptr %i.ps, align 1
  %i.pt = zext nneg i32 %i.pp to i64
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.an, %bb.ao
  %.sink.i170 = phi i8 [ %i.pm, %bb.an ], [ %i.pr, %bb.ao ]
  %.pn.i171 = phi ptr [ %.11, %bb.an ], [ %i.pu, %bb.ao ]
  store i8 %.sink.i170, ptr %.11, align 1, !tbaa !16
  %.0.i172 = getelementptr i8, ptr %.pn.i171, i64 1 ; 2 uses
  %sext257 = shl i64 %i.pi, 32
  %i.pv = ashr exact i64 %sext257, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i172, ptr readonly align 1 %.13, i64 %i.pv, i1 false)
  %i.pw = getelementptr inbounds i8, ptr %.0.i172, i64 %i.pv
  br label %bb.ap

bb.ap:                                            ; preds = %.thread252, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread252 ], [ %i.pw, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 %6) local_unnamed_addr #7 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 15 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread351, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 3 uses
  %i.f = ptrtoint ptr %5 to i64                   ; 9 uses
  %i.g = zext i32 %i.b to i64                     ; 9 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.j = ptrtoaddr ptr %i.c to i64
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 10 uses
  %i.l = trunc i64 %i.j to i32                    ; 5 uses
  %i.m = icmp slt i64 %1, 17
  br i1 %i.m, label %.thread351, label %.lr.ph573.lr.ph, !prof !30

.lr.ph573.lr.ph:                                  ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph573

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.o = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 2 uses
  %i.p = icmp ugt ptr %i.o, %i.e
  br i1 %i.p, label %.thread351, label %.lr.ph573, !prof !139

.lr.ph573:                                        ; preds = %.lr.ph573.lr.ph, %.loopexit.loopexit
  %i.q = phi ptr [ %i.n, %.lr.ph573.lr.ph ], [ %i.o, %.loopexit.loopexit ]
  %.0192578 = phi ptr [ %0, %.lr.ph573.lr.ph ], [ %i.gi, %.loopexit.loopexit ] ; 7 uses
  %.0201577 = phi ptr [ %2, %.lr.ph573.lr.ph ], [ %.3204, %.loopexit.loopexit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0192578, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.y, 9
  %i.t = add i32 %i.y, 1
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u ; 2 uses
  %i.w = icmp ugt ptr %i.v, %i.e
  br i1 %i.w, label %.thread351, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph573, %bb.c
  %i.x = phi ptr [ %i.q, %.lr.ph573 ], [ %i.v, %bb.c ] ; 2 uses
  %i.y = phi i32 [ 513, %.lr.ph573 ], [ %i.t, %bb.c ] ; 2 uses
  %.1193572 = phi ptr [ %i.r, %.lr.ph573 ], [ %i.x, %bb.c ] ; 7 uses
  %.0189 = load i64, ptr %.1193572, align 1       ; 2 uses
  %i.z = mul i64 %.0189, 58295818150454627
  %i.aa = lshr i64 %i.z, 49
  %i.ab = and i64 %i.aa, %i.g
  %i.ac = add i64 %i.ab, %i.f
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !28
  %i.af = zext i16 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = ptrtoint ptr %.1193572 to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = trunc i64 %i.ai to i16                  ; 3 uses
  store i16 %i.aj, ptr %i.ad, align 2, !tbaa !28
  %i.ak = trunc i64 %.0189 to i32                 ; 3 uses
  %.0.copyload.i215 = load i32, ptr %i.ag, align 1
  %i.al = icmp eq i32 %.0.copyload.i215, %i.ak
  br i1 %i.al, label %bb.e, label %bb.g, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1193572, i64 4 ; 3 uses
  %.not34.i = icmp ugt ptr %i.ao, %i.k
  br i1 %.not34.i, label %.critedge28.preheader.i, label %.lr.ph.i

.critedge28.preheader.loopexit.i:                 ; preds = %bb.f
  %i.ap = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge28.preheader.i

.critedge28.preheader.i:                          ; preds = %.critedge28.preheader.loopexit.i, %bb.e
  %.026.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ap, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.ao, %bb.e ], [ %i.ax, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %i.aq = icmp ult ptr %.0.lcssa.i, %i.c
  br i1 %i.aq, label %.lr.ph40.preheader.i, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.preheader.i:                             ; preds = %.critedge28.preheader.i
  %.0.lcssa50.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ar = zext i32 %.026.lcssa.i to i64
  %i.as = add i32 %.026.lcssa.i, %i.l
  %i.at = trunc i64 %.0.lcssa50.i to i32
  %i.au = sub i32 %i.as, %i.at
  br label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.036.i = phi ptr [ %i.ax, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.036.i, align 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i
  %.0.copyload.i29.i = load i64, ptr %i.av, align 1 ; 2 uses
  %i.aw = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i29.i
  br i1 %i.aw, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.ax, %i.k
  br i1 %.not.i, label %.critedge28.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ay = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.az = xor i64 %.0.copyload.i29.i, %.0.copyload.i.i
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = lshr i32 %i.bb, 3
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.i:                                       ; preds = %.critedge28.i, %.lr.ph40.preheader.i
  %indvars.iv48.i = phi i64 [ %i.ar, %.lr.ph40.preheader.i ], [ %indvars.iv.next49.i, %.critedge28.i ] ; 3 uses
  %.139.i = phi ptr [ %.0.lcssa.i, %.lr.ph40.preheader.i ], [ %i.bi, %.critedge28.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv48.i
end_hunk_0
begin_hunk_1_@_ZN6snappy10UncompressEPNS_6SourceEPNS_4SinkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i1 [ %.0, %bb.g ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cf = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !46
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i64 noundef %i.cg) #24, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy17SnappyIOVecReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6snappy6SourceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6snappy17SnappyIOVecReader9AvailableEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6snappy17SnappyIOVecReader4PeekEPm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.b, ptr %1, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy17SnappyIOVecReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = icmp uge i64 %1, %i.b
  %i.d = icmp ne i64 %1, 0
  %i.e = and i1 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = load i64, ptr %i.f, align 8, !tbaa !86
  %.pre27 = load ptr, ptr %i.g, align 8, !tbaa !84
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !86
  %.promoted15 = load ptr, ptr %i.h, align 8
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit
  %i.i = phi ptr [ %.promoted15, %.lr.ph ], [ %i.aa, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.lcssa13 = phi i64 [ %.promoted, %.lr.ph ], [ %i.l, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 2 uses
  %i.j = phi i64 [ %i.b, %.lr.ph ], [ %i.z, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.010 = phi i64 [ %1, %.lr.ph ], [ %i.k, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.k = sub nuw i64 %.010, %i.j                  ; 4 uses
  %i.l = sub i64 %.lcssa13, %i.j                  ; 3 uses
  %i.m = icmp eq i64 %.lcssa13, %i.j
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.peel.begin
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !83
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.peel.next, label %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit

bb.c:                                             ; preds = %.peel.begin
  store i64 %i.l, ptr %i.f, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %i.s = phi ptr [ %i.t, %.peel.next ], [ %i.n, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.peel.next, label %.loopexit.i.loopexit, !llvm.loop !157

.loopexit.i.loopexit:                             ; preds = %.peel.next
  store ptr %i.t, ptr %i.h, align 8, !tbaa !83
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !59
  br label %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit

_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit:     ; preds = %bb.b, %.loopexit.i.loopexit, %bb.c
  %i.y = phi ptr [ null, %bb.c ], [ %i.o, %bb.b ], [ %i.x, %.loopexit.i.loopexit ]
  %i.z = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ], [ %i.v, %.loopexit.i.loopexit ] ; 3 uses
  %i.aa = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.b ], [ %i.t, %.loopexit.i.loopexit ]
  %i.ab = icmp uge i64 %i.k, %i.z
  %i.ac = icmp ne i64 %i.k, 0
  %i.ad = and i1 %i.ac, %i.ab
  br i1 %i.ad, label %.peel.begin, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit, %.._crit_edge_crit_edge
  %i.ae = phi ptr [ %.pre27, %.._crit_edge_crit_edge ], [ %i.y, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.af = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %.0.lcssa = phi i64 [ %1, %.._crit_edge_crit_edge ], [ %i.k, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.lcssa8 = phi i64 [ %i.b, %.._crit_edge_crit_edge ], [ %i.z, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.ag = sub i64 %.lcssa8, %.0.lcssa
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = sub i64 %i.af, %.0.lcssa
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.lcssa
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !84
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !115
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.m, label %bb.c, label %.thread148, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 4)
  %i.s = sub i64 0, %.sroa.speculated.i124
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store ptr %i.t, ptr %i.l, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = load i8, ptr %.091, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit

_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit: ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, %bb.d
  %.0135 = phi i32 [ %i.v, %bb.d ], [ %.0135.be, %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 9 uses
  %i.ad = and i32 %.0135, 255                     ; 4 uses
  %i.ae = and i32 %.0135, 3                       ; 3 uses
  switch i32 %i.ae, label %bb.u [
    i32 0, label %bb.e
    i32 3, label %bb.t
  ], !prof !116

bb.e:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.af = lshr exact i32 %i.ad, 2
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ac, i64 noundef %i.al, i64 noundef %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge: ; preds = %bb.f, %bb.s, %bb.y, %bb.v
  %.0135.be = phi i32 [ %i.ei, %bb.y ], [ %i.da, %bb.s ], [ %i.dv, %bb.v ], [ %i.ap, %bb.f ]
  %.1.be = phi ptr [ %.13, %bb.y ], [ %.8, %bb.s ], [ %i.du, %bb.v ], [ %i.an, %bb.f ]
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit, !llvm.loop !160

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %i.ad, 236
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !29

bb.h:                                             ; preds = %bb.g
  %2 = add nsw i64 %i.ah, -60                     ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %3 = shl nsw i64 %2, 3
  %4 = and i64 %3, 4294967288
  %i.ar = shl nuw i64 4294967295, %4
  %i.as = trunc i64 %i.ar to i32
  %i.at = xor i32 %i.as, -1
  %i.au = and i32 %.0.copyload.i, %i.at
  %i.av = add i32 %i.au, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %2 ; 2 uses
  %.pre170 = ptrtoint ptr %i.ax to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre170, %bb.h ], [ %i.ak, %bb.g ]
  %.092 = phi i64 [ %i.aw, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %.6 = phi ptr [ %i.ax, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %.pre-phi                ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %.092
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.0163 = phi i64 [ %i.ci, %bb.o ], [ %i.ba, %bb.i ] ; 4 uses
  %.7162 = phi ptr [ %i.ch, %bb.o ], [ %.6, %bb.i ]
  %.193161 = phi i64 [ %i.cj, %bb.o ], [ %.092, %bb.i ]
  %i.bc = load i64, ptr %i.w, align 8, !tbaa !63
  %i.bd = add i64 %i.bc, %.0163
  %i.be = load i64, ptr %i.x, align 8, !tbaa !64
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %.thread148, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.not15.i.i = icmp eq i64 %.0163, 0
  br i1 %.not15.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bg = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bt, %bb.n ] ; 2 uses
  %.0917.i.i = phi ptr [ %.7162, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 2 uses
  %storemerge16.i.i = phi i64 [ %.0163, %.lr.ph.i.i ], [ %i.bx, %bb.n ] ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %bb.k
  %.pre22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !61
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !57  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !56
  %.not11.i.i = icmp ult ptr %i.bj, %i.bk
  br i1 %.not11.i.i, label %bb.m, label %.thread148

bb.m:                                             ; preds = %bb.l
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !57
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !59 ; 2 uses
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  store i64 %i.bn, ptr %i.z, align 8, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge21.i.i
  %i.bo = phi ptr [ %i.bl, %bb.m ], [ %.pre22.i.i, %._crit_edge21.i.i ]
  %i.bp = phi i64 [ %i.bn, %bb.m ], [ %i.bg, %._crit_edge21.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %storemerge16.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %.0917.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %i.bq = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.speculated.i.i
  store ptr %i.br, ptr %i.aa, align 8, !tbaa !61
  %i.bs = load i64, ptr %i.z, align 8, !tbaa !62
  %i.bt = sub i64 %i.bs, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bt, ptr %i.z, align 8, !tbaa !62
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !63
  %i.bv = add i64 %i.bu, %.sroa.speculated.i.i
  store i64 %i.bv, ptr %i.w, align 8, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 %.sroa.speculated.i.i
  %i.bx = sub nuw nsw i64 %storemerge16.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.k, !llvm.loop !5

.loopexit:                                        ; preds = %bb.n, %bb.j
  %i.by = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bz = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i64 noundef %i.bz) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cd = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  store i64 %i.ci, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.ci, 0
  br i1 %.not119, label %.thread, label %bb.o

.thread:                                          ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread148

bb.o:                                             ; preds = %.loopexit
  %i.cj = sub nuw nsw i64 %.193161, %.0163        ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 2 uses
  store ptr %i.ck, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.ci, i64 4)
  %i.cl = sub i64 0, %.sroa.speculated.i126
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  store ptr %i.cm, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.cn = icmp ult i64 %i.ci, %i.cj
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %.193.lcssa = phi i64 [ %.092, %bb.i ], [ %i.cj, %bb.o ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.i ], [ %i.ch, %bb.o ] ; 2 uses
  %i.co = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.co, label %bb.p, label %.thread148

bb.p:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.cp, %i.cq
  br i1 %.not118, label %bb.s, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !43
  %i.cr = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cr, label %bb.r, label %.thread148, !prof !26

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.cw, i64 4)
  %i.cx = sub i64 0, %.sroa.speculated.i127
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 %i.cx
  store ptr %i.cy, ptr %i.l, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.cs, %bb.r ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cz = load i8, ptr %.8, align 1, !tbaa !16
  %i.da = zext i8 %i.cz to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %.0.copyload.i128 = load i32, ptr %i.ac, align 1
  %i.db = zext i32 %.0.copyload.i128 to i64
  %i.dc = lshr i32 %i.ad, 2
  %i.dd = add nuw nsw i32 %i.dc, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.db, i64 noundef %i.de, ptr noundef nonnull %i.a)
  br i1 %i.df, label %bb.w, label %.thread148

bb.u:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.dg = zext nneg i32 %i.ad to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !28 ; 2 uses
  %i.dj = sext i16 %i.di to i64
  %.0.copyload.i129 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.dk = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.dl = shl nsw i32 -1, %i.dk
  %i.dm = xor i32 %i.dl, -1
  %i.dn = and i32 %.0.copyload.i129, %i.dm
  %i.do = and i16 %i.di, 255
  %i.dp = zext nneg i16 %i.do to i64              ; 2 uses
  %i.dq = sub nsw i64 %i.dp, %i.dj
  %.tr = trunc nsw i64 %i.dq to i32
  %.narrow = add nsw i32 %i.dn, %.tr
  %i.dr = zext i32 %.narrow to i64
  %i.ds = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dr, i64 noundef %i.dp, ptr noundef nonnull %i.a)
  br i1 %i.ds, label %bb.v, label %.thread148

bb.v:                                             ; preds = %bb.u
  %i.dt = zext nneg i32 %i.ae to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dt ; 3 uses
  %i.dv = lshr i32 %.0.copyload.i129, %i.dk
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not152 = icmp ult ptr %i.du, %i.dw
  br i1 %.not152, label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, label %.thread183, !prof !117

bb.w:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.dy = icmp ult ptr %i.dx, %.pre
  br i1 %i.dy, label %bb.y, label %.thread183, !prof !118

.thread183:                                       ; preds = %bb.v, %bb.w
  %.12186 = phi ptr [ %i.dx, %bb.w ], [ %i.du, %bb.v ]
  store ptr %.12186, ptr %i.c, align 8, !tbaa !43
  %i.dz = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dz, label %bb.x, label %.thread148, !prof !26

bb.x:                                             ; preds = %.thread183
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
end_hunk_1
begin_hunk_2_@_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
  %next.gep112 = getelementptr i8, ptr %.157, i64 %i.bd
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !190
  store <2 x i64> %wide.load, ptr %next.gep112, align 1, !alias.scope !191, !noalias !190
  %index.next = add nuw i64 %index, 1
  %i.be = icmp eq i64 %index, %i.au
  br i1 %i.be, label %._crit_edge91, label %vector.body, !llvm.loop !185

._crit_edge91:                                    ; preds = %vector.body, %.lr.ph90, %bb.k
  %.2.lcssa = phi ptr [ %.157, %bb.k ], [ %i.bh, %.lr.ph90 ], [ %i.bc, %vector.body ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.k ], [ %i.bi, %.lr.ph90 ], [ %i.bb, %vector.body ] ; 3 uses
  %.not69 = icmp ult ptr %.2.lcssa, %2
  br i1 %.not69, label %bb.l, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

.lr.ph90:                                         ; preds = %.lr.ph90.preheader178, %.lr.ph90
  %.05488 = phi ptr [ %i.bi, %.lr.ph90 ], [ %0, %.lr.ph90.preheader178 ] ; 3 uses
  %.287 = phi ptr [ %i.bh, %.lr.ph90 ], [ %.157, %.lr.ph90.preheader178 ] ; 3 uses
  %.val4.i77 = load i64, ptr %.05488, align 1
  store i64 %.val4.i77, ptr %.287, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.05488, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.287, i64 8
  %.val.i78 = load i64, ptr %i.bf, align 1
  store i64 %.val.i78, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.287, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05488, i64 16 ; 2 uses
  %i.bj = icmp ult ptr %i.bh, %i.ao
  br i1 %i.bj, label %.lr.ph90, label %._crit_edge91, !llvm.loop !186

bb.l:                                             ; preds = %._crit_edge91
  %i.bk = getelementptr inbounds i8, ptr %3, i64 -8
  %.not70 = icmp ugt ptr %.2.lcssa, %i.bk
  br i1 %.not70, label %bb.n, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  %.054.val = load i64, ptr %.054.lcssa, align 1
  store i64 %.054.val, ptr %.2.lcssa, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.bm, %bb.m ], [ %.2.lcssa, %bb.l ] ; 7 uses
  %.155 = phi ptr [ %i.bl, %bb.m ], [ %.054.lcssa, %bb.l ] ; 6 uses
  %i.bn = icmp ult ptr %.3, %2
  br i1 %i.bn, label %iter.check, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check:                                       ; preds = %bb.n
  %.155116 = ptrtoaddr ptr %.155 to i64
  %.3115 = ptrtoaddr ptr %.3 to i64               ; 2 uses
  %i.bo = sub i64 %i.a, %.3115                    ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.bo, 4
  %i.bp = sub i64 %.155116, %.3115
  %diff.check = icmp ugt i64 %i.bp, -16
  %or.cond176 = select i1 %min.iters.check118, i1 true, i1 %diff.check
  br i1 %or.cond176, label %.lr.ph.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.bo, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec121 = and i64 %i.bo, -16                  ; 5 uses
  %i.br = getelementptr i8, ptr %.155, i64 %n.vec121
  %i.bs = getelementptr i8, ptr %.3, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %.155, i64 %index123
  %next.gep125 = getelementptr i8, ptr %.3, i64 %index123
  %wide.load126 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !16
  store <16 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !16
  %index.next127 = add nuw i64 %index123, 16      ; 2 uses
  %i.bt = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.bt, label %middle.block128, label %vector.body122, !llvm.loop !187

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.bo, %n.vec121
  br i1 %cmp.n129, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.bo, -4                   ; 4 uses
  %i.bu = getelementptr i8, ptr %.155, i64 %n.vec132
  %i.bv = getelementptr i8, ptr %.3, i64 %n.vec132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.155, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.3, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !16
  store <4 x i8> %wide.load136, ptr %next.gep135, align 1, !tbaa !16
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.bo, %n.vec132
  br i1 %cmp.n138, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.bx, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.bz, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.by = load i8, ptr %.08.i80, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.by, ptr %.057.i81, align 1, !tbaa !16
  %exitcond.not.i82 = icmp eq ptr %i.bz, %2
  br i1 %exitcond.not.i82, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !189

_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block128, %vec.epilog.middle.block, %middle.block155, %vec.epilog.middle.block172, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !114 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !26

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !43
  %i.ad = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i125
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !16    ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !116

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.h
  %2 = add nsw i64 %i.as, -60                     ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %3 = shl nsw i64 %2, 3
  %4 = and i64 %3, 4294967288
  %i.aw = shl nuw i64 4294967295, %4
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %.0.copyload.i, %i.ay
  %i.ba = add i32 %i.az, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.092 = phi i64 [ %i.bb, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bc, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bd = ptrtoint ptr %.6 to i64
  %i.be = sub i64 %i.au, %i.bd                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.092
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.0213 = phi i64 [ %i.bs, %bb.l ], [ %i.be, %bb.j ] ; 2 uses
  %.193211 = phi i64 [ %i.bt, %bb.l ], [ %.092, %bb.j ]
  %.2146210 = phi i64 [ %i.bg, %bb.l ], [ %i.ab, %bb.j ]
  %i.bg = add i64 %.0213, %.2146210               ; 5 uses
  %i.bh = load i64, ptr %1, align 8, !tbaa !77
  %.not199 = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not199, label %.thread192, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bi = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !46
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i64 noundef %i.bj) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bn = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  store i64 %i.bs, ptr %i.v, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.bs, 0
  br i1 %.not119, label %.thread172, label %bb.l

.thread172:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread192

bb.l:                                             ; preds = %bb.k
  %i.bt = sub nuw nsw i64 %.193211, %.0213        ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs ; 3 uses
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.bs, i64 4)
  %i.bv = sub i64 0, %.sroa.speculated.i126       ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  store ptr %i.bw, ptr %i.k, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bx = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !192

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.bz = phi ptr [ %i.al, %bb.j ], [ %i.by, %._crit_edge.loopexit ]
  %.2146.lcssa = phi i64 [ %i.ab, %bb.j ], [ %i.bg, %._crit_edge.loopexit ]
  %.193.lcssa = phi i64 [ %.092, %bb.j ], [ %i.bt, %._crit_edge.loopexit ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.j ], [ %i.br, %._crit_edge.loopexit ]
  %i.ca = add i64 %.193.lcssa, %.2146.lcssa       ; 5 uses
  %i.cb = load i64, ptr %1, align 8, !tbaa !77
  %.not198 = icmp ugt i64 %i.ca, %i.cb
  br i1 %.not198, label %.thread192, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %.not118 = icmp ult ptr %i.cc, %i.bz
  br i1 %.not118, label %.loopexit.backedge, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !43
  %i.cd = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cd, label %.loopexit.sink.split, label %.thread192, !prof !26

bb.o:                                             ; preds = %bb.g
  %.0.copyload.i128 = load i32, ptr %i.ao, align 1
  %i.ce = zext i32 %.0.copyload.i128 to i64
  %i.cf = add nsw i64 %i.ce, -1
  %.not.i = icmp ugt i64 %i.ab, %i.cf
  br i1 %.not.i, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit: ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.ch = lshr i32 %i.an, 2
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = add i64 %i.ab, %i.cj                    ; 3 uses
  %i.cl = load i64, ptr %1, align 8, !tbaa !77
  %.not197 = icmp ugt i64 %i.ck, %i.cl
  br i1 %.not197, label %.thread192, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.cm = zext i8 %i.am to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !28 ; 2 uses
  %i.cp = sext i16 %i.co to i64
  %.0.copyload.i129 = load i32, ptr %i.ao, align 1
  %i.cq = shl nuw nsw i32 %i.ap, 3
  %i.cr = shl nsw i32 -1, %i.cq
  %i.cs = xor i32 %i.cr, -1
  %i.ct = and i32 %.0.copyload.i129, %i.cs
  %i.cu = and i16 %i.co, 255
  %i.cv = zext nneg i16 %i.cu to i64              ; 2 uses
  %i.cw = sub nsw i64 %i.cv, %i.cp
  %.tr = trunc nsw i64 %i.cw to i32
  %.narrow = add nsw i32 %i.ct, %.tr
  %i.cx = zext i32 %.narrow to i64
  %i.cy = add nsw i64 %i.cx, -1
  %.not.i130 = icmp ugt i64 %i.ab, %i.cy
  br i1 %.not.i130, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132: ; preds = %bb.p
  %i.cz = add i64 %i.ab, %i.cv                    ; 4 uses
  %i.da = load i64, ptr %1, align 8, !tbaa !77
  %.not200 = icmp ugt i64 %i.cz, %i.da
  br i1 %.not200, label %.thread192, label %bb.q

bb.q:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132
  %i.db = zext nneg i32 %i.ap to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.db ; 3 uses
  %.not201 = icmp ult ptr %i.dc, %i.al
  br i1 %.not201, label %.loopexit.backedge, label %bb.r

bb.r:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.q
  %.4 = phi i64 [ %i.cz, %bb.q ], [ %i.ck, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.12 = phi ptr [ %i.dc, %bb.q ], [ %i.cg, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.not117 = icmp ult ptr %.12, %i.al
  br i1 %.not117, label %.loopexit.backedge, label %bb.s, !prof !26

bb.s:                                             ; preds = %bb.r
  store ptr %.12, ptr %i.b, align 8, !tbaa !43
  %i.dd = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dd, label %.loopexit.sink.split, label %.thread192, !prof !26

.loopexit.sink.split:                             ; preds = %bb.s, %bb.n
  %.5148.ph = phi i64 [ %i.ca, %bb.n ], [ %.4, %bb.s ]
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %.sroa.speculated.i133 = call i64 @llvm.smin.i64(i64 %i.di, i64 4)
  %i.dj = sub i64 0, %.sroa.speculated.i133
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %i.dj
  store ptr %i.dk, ptr %i.k, align 8, !tbaa !114
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.sink.split, %bb.r, %bb.m, %bb.q
  %.0144.be = phi i64 [ %i.ca, %bb.m ], [ %i.cz, %bb.q ], [ %.4, %bb.r ], [ %.5148.ph, %.loopexit.sink.split ]
  %.1.be = phi ptr [ %i.cc, %bb.m ], [ %i.dc, %bb.q ], [ %.12, %bb.r ], [ %i.de, %.loopexit.sink.split ]
  br label %.loopexit

.thread192:                                       ; preds = %bb.n, %._crit_edge, %bb.p, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, %bb.o, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.s, %bb.e, %.lr.ph, %.thread172, %bb.b
  %.6149 = phi i64 [ %i.m, %bb.b ], [ %i.bg, %.thread172 ], [ %i.bg, %.lr.ph ], [ %i.ca, %bb.n ], [ %i.ca, %._crit_edge ], [ %i.cz, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132 ], [ %i.ck, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ], [ %.4, %bb.s ], [ %i.ab, %bb.o ], [ %i.ab, %bb.e ], [ %i.ab, %bb.p ]
  store i64 %.6149, ptr %i.l, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = add nsw i64 %4, -64                      ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 130
  %i.g = icmp slt i64 %2, %i.b
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.thread144

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -129
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %0, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %.0111 = phi ptr [ %i.i, %bb.b ], [ %i.bv, %bb.m ] ; 9 uses
  %.0104 = phi i64 [ %2, %bb.b ], [ %.4108132.1, %bb.m ] ; 4 uses
  %.093 = phi i64 [ 0, %bb.b ], [ %.4133.1, %bb.m ] ; 4 uses
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.bq, %bb.m ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0111, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.l, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.0
  %i.n = load i16, ptr %i.m, align 2, !tbaa !28   ; 2 uses
  %i.o = sext i16 %i.n to i64                     ; 3 uses
  %i.p = lshr i64 %.0, 2                          ; 2 uses
  %i.q = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0) #23, !srcloc !119 ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0         ; 4 uses
  %i.s = extractvalue { i64, i8 } %i.q, 1         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load volatile i8, ptr %i.v, align 1, !tbaa !16
end_hunk_2
begin_hunk_3_@_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l:bb.a
  %i.bf = extractvalue { i64, i8 } %i.be, 0       ; 4 uses
  %i.bg = extractvalue { i64, i8 } %i.be, 1       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 2
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load volatile i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf
  %i.bn = load volatile i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = trunc nuw i8 %i.bg to i1                ; 2 uses
  %i.bq = select i1 %i.bp, i64 %i.bl, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bd
  %i.bv = select i1 %i.bp, ptr %i.bu, ptr %i.bs   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bo) #24, !srcloc !120
  %.0.copyload.i.1 = load i32, ptr %i.ah, align 1
  %i.bw = and i64 %i.bc, 255                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !18
  %i.bx = shl i64 %i.bf, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %.0.copyload.i58.1 = load i16, ptr %i.by, align 2
  %i.bz = zext i16 %.0.copyload.i58.1 to i32
  %i.ca = and i32 %.0.copyload.i.1, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = sub nsw i64 %i.bc, %i.cb                ; 3 uses
  %i.cd = icmp sgt i64 %i.bc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.ce = add i64 %.4133, %.4108132               ; 3 uses
  %i.cf = sub i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.cc
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %bb.m, !prof !29

bb.j:                                             ; preds = %bb.i
  %.not49.1 = icmp eq i64 %i.bf, 0
  br i1 %.not49.1, label %bb.m, label %.thread134.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ci = and i16 %i.bb, 128
  %.not50.1 = icmp eq i16 %i.ci, 0
  br i1 %.not50.1, label %bb.l, label %.thread134.loopexit, !prof !26

bb.l:                                             ; preds = %bb.k
  %i.cj = add i64 %.4133, %.4108132               ; 3 uses
  %i.ck = sub i64 %i.cj, %i.bw
  %i.cl = add i64 %i.ck, %i.cc
  %i.cm = icmp slt i64 %i.cl, 0
  %.not.1 = icmp eq i64 %i.bw, %i.cc
  %or.cond156.1 = select i1 %i.cm, i1 true, i1 %.not.1, !prof !122
  br i1 %or.cond156.1, label %.thread134.thread, label %.thread126.1, !prof !122

.thread126.1:                                     ; preds = %bb.l
  %i.cn = add i64 %i.bw, %i.cj
  br label %bb.m

bb.m:                                             ; preds = %.thread126.1, %bb.j, %bb.i
  %.4133.1 = phi i64 [ 0, %.thread126.1 ], [ %i.bw, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.4108132.1 = phi i64 [ %i.cn, %.thread126.1 ], [ %i.ce, %bb.i ], [ %i.ce, %bb.j ] ; 2 uses
  %i.co = icmp ult ptr %i.bv, %i.h
  %i.cp = add i64 %.4133.1, %.4108132.1           ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.b
  %or.cond155 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond155, label %bb.c, label %.thread134, !llvm.loop !193

.thread134.thread:                                ; preds = %bb.l, %bb.e
  %.1112169.lcssa181 = phi ptr [ %.0111, %bb.e ], [ %i.ah, %bb.l ]
  %.lcssa = phi i64 [ %i.ar, %bb.e ], [ %i.cj, %bb.l ]
  %i.cr = getelementptr inbounds i8, ptr %.1112169.lcssa181, i64 -1
  br label %.thread144

.thread134.loopexit:                              ; preds = %bb.k, %bb.j, %bb.g, %bb.d
  %.194171.lcssa = phi i64 [ %.093, %bb.g ], [ %.093, %bb.d ], [ %.4133, %bb.j ], [ %.4133, %bb.k ]
  %.1105170.lcssa = phi i64 [ %.0104, %bb.g ], [ %.0104, %bb.d ], [ %.4108132, %bb.j ], [ %.4108132, %bb.k ]
  %.1112169.lcssa = phi ptr [ %.0111, %bb.g ], [ %.0111, %bb.d ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ]
  %.pre = add i64 %.194171.lcssa, %.1105170.lcssa
  br label %.thread134

.thread134:                                       ; preds = %bb.m, %.thread134.loopexit
  %.pre-phi = phi i64 [ %.pre, %.thread134.loopexit ], [ %i.cp, %bb.m ]
  %.1112168 = phi ptr [ %.1112169.lcssa, %.thread134.loopexit ], [ %i.bv, %bb.m ]
  %i.cs = getelementptr inbounds i8, ptr %.1112168, i64 -1
  br label %.thread144

.thread144:                                       ; preds = %.thread134, %.thread134.thread, %bb.a
  %.4115149 = phi ptr [ %i.cs, %.thread134 ], [ %i.cr, %.thread134.thread ], [ %0, %bb.a ]
  %.7 = phi i64 [ %.pre-phi, %.thread134 ], [ %.lcssa, %.thread134.thread ], [ %2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.4115149, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.7, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i127 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i127
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.v = load i8, ptr %.091, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125: ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge, %bb.d
  %.0156 = phi i32 [ %i.w, %bb.d ], [ %.0156.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ]
  %.0146 = phi ptr [ %i.m, %bb.d ], [ %.0146.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ] ; 2 uses
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ] ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !68    ; 4 uses
  %.not115 = icmp eq ptr %i.aa, null
  br i1 %.not115, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ag = ptrtoint ptr %.0146 to i64
  %i.ah = sub i64 %i.ag, %i.ad
  %i.ai = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.aa, i64 noundef %i.ae) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not116 = icmp ult ptr %i.aj, %i.am
  br i1 %.not116, label %bb.h, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !43
  %i.an = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.an, label %bb.g, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.sroa.speculated.i128 = call i64 @llvm.smin.i64(i64 %i.as, i64 4)
  %i.at = sub i64 0, %.sroa.speculated.i128
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  store ptr %i.au, ptr %i.k, align 8, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2 = phi ptr [ %i.ao, %bb.g ], [ %i.aj, %bb.e ] ; 2 uses
  %i.av = load i8, ptr %.2, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125, %bb.h
  %.2158.ph = phi i32 [ %i.aw, %bb.h ], [ %.0156, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 2 uses
  %.1147.ph = phi ptr [ %i.al, %bb.h ], [ %.0146, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 23 uses
  %.5.ph = phi ptr [ %.2, %bb.h ], [ %.1, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.ay = and i32 %.2158.ph, 255                  ; 5 uses
  %i.az = and i32 %.2158.ph, 3                    ; 3 uses
  switch i32 %i.az, label %bb.y [
    i32 0, label %bb.j
    i32 3, label %bb.t
  ], !prof !116

bb.j:                                             ; preds = %bb.i
  %i.ba = lshr exact i32 %i.ay, 2
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.1147.ph to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = icmp samesign ult i32 %i.ay, 64
  %i.bm = icmp ugt i64 %i.bg, 20
  %or.cond.i129 = and i1 %i.bl, %i.bm
  %i.bn = icmp ugt i64 %i.bk, 15
  %or.cond3.i = select i1 %or.cond.i129, i1 %i.bn, i1 false
  br i1 %or.cond3.i, label %bb.k, label %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1147.ph, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge: ; preds = %bb.k, %bb.s, %bb.af, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.0156.be = phi i32 [ %i.fy, %bb.af ], [ %i.fm, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.br, %bb.k ], [ %i.di, %bb.s ]
  %.0146.be = phi ptr [ %.4, %bb.af ], [ %i.es, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bo, %bb.k ], [ %i.cw, %bb.s ]
  %.1.be = phi ptr [ %.13, %bb.af ], [ %i.fl, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bp, %bb.k ], [ %.8, %bb.s ]
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125, !llvm.loop !194

_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.j
  %i.bs = icmp samesign ugt i32 %i.ay, 236
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %2 = add nsw i64 %i.bc, -60                     ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ax, align 1
  %3 = shl nsw i64 %2, 3
  %4 = and i64 %3, 4294967288
  %i.bt = shl nuw i64 4294967295, %4
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = xor i32 %i.bu, -1
  %i.bw = and i32 %.0.copyload.i, %i.bv
  %i.bx = add i32 %i.bw, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %2 ; 2 uses
  %.pre238 = ptrtoint ptr %i.bz to i64
  %.pre239 = sub i64 %i.be, %.pre238
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %.pre-phi240 = phi i64 [ %.pre239, %bb.l ], [ %i.bg, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.by, %bb.l ], [ %i.bc, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.bz, %bb.l ], [ %i.ax, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ca = icmp ult i64 %.pre-phi240, %.092
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.0227 = phi i64 [ %i.cq, %bb.o ], [ %.pre-phi240, %bb.m ] ; 4 uses
  %.7226 = phi ptr [ %i.cp, %bb.o ], [ %.6, %bb.m ]
  %.193225 = phi i64 [ %i.cr, %bb.o ], [ %.092, %bb.m ]
  %.2148224 = phi ptr [ %i.cf, %bb.o ], [ %.1147.ph, %bb.m ] ; 4 uses
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %.2148224 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %.not215 = icmp ult i64 %i.ce, %.0227
  br i1 %.not215, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148224, ptr align 1 %.7226, i64 %.0227, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.2148224, i64 %.0227 ; 4 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ch = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef %i.ch) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.cl = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  store i64 %i.cq, ptr %i.z, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.cq, 0
  br i1 %.not119, label %.thread183, label %bb.o

.thread183:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209

bb.o:                                             ; preds = %bb.n
  %i.cr = sub nuw nsw i64 %.193225, %.0227        ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.cq, i64 4)
  %i.ct = sub i64 0, %.sroa.speculated.i130
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  store ptr %i.cu, ptr %i.k, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cv = icmp ult i64 %i.cq, %i.cr
  br i1 %i.cv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !70
  %.pre241 = ptrtoint ptr %.pre to i64
  %.pre243 = ptrtoint ptr %i.cf to i64
  %.pre245 = sub i64 %.pre241, %.pre243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi246 = phi i64 [ %.pre245, %._crit_edge.loopexit ], [ %i.bk, %bb.m ]
  %.2148.lcssa = phi ptr [ %i.cf, %._crit_edge.loopexit ], [ %.1147.ph, %bb.m ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.cr, %._crit_edge.loopexit ], [ %.092, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.cp, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not214 = icmp ult i64 %.pre-phi246, %.193.lcssa
  br i1 %.not214, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148.lcssa, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.2148.lcssa, i64 %.193.lcssa ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.cx, %i.cy
  br i1 %.not118, label %bb.s, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !43
  %i.cz = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cz, label %bb.r, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %.sroa.speculated.i132 = call i64 @llvm.smin.i64(i64 %i.de, i64 4)
  %i.df = sub i64 0, %.sroa.speculated.i132
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df
  store ptr %i.dg, ptr %i.k, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.da, %bb.r ], [ %i.cx, %bb.p ] ; 2 uses
  %i.dh = load i8, ptr %.8, align 1, !tbaa !16
  %i.di = zext i8 %i.dh to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i133 = load i32, ptr %i.ax, align 1 ; 3 uses
  %i.dj = zext i32 %.0.copyload.i133 to i64       ; 3 uses
  %i.dk = lshr i32 %i.ay, 2                       ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 2 uses
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 4 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !68
  %i.dq = ptrtoint ptr %.1147.ph to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dj
  br i1 %i.dt, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.dv = icmp uge ptr %.1147.ph, %i.du
  %i.dw = icmp ule i32 %.0.copyload.i133, %i.dk
  %i.dx = or i1 %i.dw, %i.dv
  br i1 %i.dx, label %bb.v, label %bb.x, !prof !29

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.dz = icmp ugt ptr %i.do, %i.dy
  %i.ea = icmp eq i32 %.0.copyload.i133, 0
  %or.cond.i124 = or i1 %i.ea, %i.dz
  br i1 %or.cond.i124, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = sub nsw i64 0, %i.dj
  %i.ec = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.eb
  %i.ed = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ec, ptr noundef %.1147.ph, ptr noundef nonnull %i.do, ptr noundef %i.dy) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.x:                                             ; preds = %bb.u
  %i.ee = sub nsw i64 0, %i.dj
  %i.ef = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.ee
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.ef, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.y:                                             ; preds = %bb.i
  %i.eg = zext nneg i32 %i.ay to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !28 ; 2 uses
  %i.ej = sext i16 %i.ei to i64
  %.0.copyload.i134 = load i32, ptr %i.ax, align 1 ; 2 uses
  %i.ek = shl nuw nsw i32 %i.az, 3                ; 2 uses
  %i.el = shl nsw i32 -1, %i.ek
  %i.em = xor i32 %i.el, -1
  %i.en = and i32 %.0.copyload.i134, %i.em
  %i.eo = and i16 %i.ei, 255
  %i.ep = zext nneg i16 %i.eo to i64              ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %i.ej
  %.tr = trunc nsw i64 %i.eq to i32
  %.narrow = add nsw i32 %i.en, %.tr              ; 2 uses
  %i.er = zext i32 %.narrow to i64                ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.ep ; 4 uses
  %i.et = load ptr, ptr %1, align 8, !tbaa !68
  %i.eu = ptrtoint ptr %.1147.ph to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.er
  br i1 %i.ex, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.z, !prof !29

bb.z:                                             ; preds = %bb.y
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ez = icmp uge ptr %.1147.ph, %i.ey
  %i.fa = icmp samesign ult i64 %i.er, %i.ep
  %i.fb = or i1 %i.fa, %i.ez
  br i1 %i.fb, label %bb.aa, label %bb.ac, !prof !29

bb.aa:                                            ; preds = %bb.z
  %i.fc = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.fd = icmp ugt ptr %i.es, %i.fc
  %i.fe = icmp eq i32 %.narrow, 0
  %or.cond.i = or i1 %i.fe, %i.fd
  br i1 %or.cond.i, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = sub nsw i64 0, %i.er
  %i.fg = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.ff
  %i.fh = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fg, ptr noundef %.1147.ph, ptr noundef %i.es, ptr noundef %i.fc) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

bb.ac:                                            ; preds = %bb.z
  %i.fi = sub nsw i64 0, %i.er
  %i.fj = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.fj, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit: ; preds = %bb.ab, %bb.ac
  %i.fk = zext nneg i32 %i.az to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fk ; 3 uses
  %i.fm = lshr i32 %.0.copyload.i134, %i.ek
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not216 = icmp ult ptr %i.fl, %i.fn
  br i1 %.not216, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194: ; preds = %bb.w, %bb.x, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.4 = phi ptr [ %i.es, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %.12 = phi ptr [ %i.fl, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.dl, %bb.w ], [ %i.dl, %bb.x ] ; 3 uses
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not117 = icmp ult ptr %.12, %i.fo
  br i1 %.not117, label %bb.af, label %bb.ad, !prof !26

bb.ad:                                            ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  store ptr %.12, ptr %i.b, align 8, !tbaa !43
  %i.fp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fp, label %bb.ae, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.ae:                                            ; preds = %bb.ad
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %.sroa.speculated.i135 = call i64 @llvm.smin.i64(i64 %i.fu, i64 4)
  %i.fv = sub i64 0, %.sroa.speculated.i135
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv
  store ptr %i.fw, ptr %i.k, align 8, !tbaa !114
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  %.13 = phi ptr [ %i.fq, %bb.ae ], [ %.12, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194 ] ; 2 uses
  %i.fx = load i8, ptr %.13, align 1, !tbaa !16
  %i.fy = zext i8 %i.fx to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209: ; preds = %bb.q, %._crit_edge, %bb.aa, %bb.y, %bb.t, %bb.v, %bb.ad, %bb.f, %.lr.ph, %.thread183, %bb.b
  %.6151 = phi ptr [ %i.m, %bb.b ], [ %i.cf, %.thread183 ], [ %.2148224, %.lr.ph ], [ %.2148.lcssa, %._crit_edge ], [ %i.cw, %bb.q ], [ %.1147.ph, %bb.y ], [ %.1147.ph, %bb.v ], [ %.1147.ph, %bb.t ], [ %.4, %bb.ad ], [ %i.al, %bb.f ], [ %.1147.ph, %bb.aa ]
  store ptr %.6151, ptr %i.l, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.n, ptr %i.a, align 8, !tbaa !115
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.o, label %bb.c, label %.thread178, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i124
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.091, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0141 = phi i32 [ %i.x, %bb.d ], [ %.0141.be, %.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !106 ; 4 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ah, i64 noundef %i.ak, ptr noundef nonnull %i.ac, i64 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !115
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not116 = icmp ult ptr %i.am, %i.ap
  br i1 %.not116, label %bb.i, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !43
  %i.aq = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.aq, label %bb.h, label %.thread178, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.av, i64 4)
  %i.aw = sub i64 0, %.sroa.speculated.i125
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.2 = phi ptr [ %i.ar, %bb.h ], [ %i.am, %bb.f ] ; 2 uses
  %i.ay = load i8, ptr %.2, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.2143.ph = phi i32 [ %i.az, %bb.i ], [ %.0141, %bb.e ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.i ], [ %.1, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.bb = and i32 %.2143.ph, 255                  ; 5 uses
  %i.bc = and i32 %.2143.ph, 3                    ; 3 uses
  switch i32 %i.bc, label %bb.v [
    i32 0, label %bb.k
    i32 3, label %bb.u
  ], !prof !116

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr exact i32 %i.bb, 2
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !115 ; 4 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !124
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp samesign ult i32 %i.bb, 64
  %i.br = icmp ugt i64 %i.bj, 20
  %or.cond.i = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %i.bp, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.l, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !115
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = zext i8 %i.bv to i32
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.ad, %bb.aa
  %.0141.be = phi i32 [ %i.fv, %bb.ad ], [ %i.dt, %bb.t ], [ %i.fi, %bb.aa ], [ %i.bw, %bb.l ]
  %.1.be = phi ptr [ %.13, %bb.ad ], [ %.8, %bb.t ], [ %i.fh, %bb.aa ], [ %i.bu, %bb.l ]
  br label %bb.e, !llvm.loop !196

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.k
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !29

bb.m:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %2 = add nsw i64 %i.bf, -60                     ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ba, align 1
  %3 = shl nsw i64 %2, 3
  %4 = and i64 %3, 4294967288
  %i.by = shl nuw i64 4294967295, %4
  %i.bz = trunc i64 %i.by to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = and i32 %.0.copyload.i, %i.ca
  %i.cc = add i32 %i.cb, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 %2 ; 2 uses
  %.pre198 = ptrtoint ptr %i.ce to i64
  %.pre199 = sub i64 %i.bh, %.pre198
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi200 = phi i64 [ %.pre199, %bb.m ], [ %i.bj, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cd, %bb.m ], [ %i.bf, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ce, %bb.m ], [ %i.ba, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.cf = icmp ult i64 %.pre-phi200, %.092
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.0190 = phi i64 [ %i.cy, %bb.p ], [ %.pre-phi200, %bb.n ] ; 5 uses
  %.7189 = phi ptr [ %i.cx, %bb.p ], [ %.6, %bb.n ] ; 2 uses
  %.193188 = phi i64 [ %i.cz, %bb.p ], [ %.092, %bb.n ]
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !115 ; 4 uses
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !124
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %.not.i = icmp ugt i64 %.0190, %i.ck
  br i1 %.not.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %.7189, i64 %.0190, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.0190
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !115
  br label %bb.o

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cg, ptr %i.m, align 8, !tbaa !107
  %i.cm = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7189, i64 noundef %.0190)
  %i.cn = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !115
  br i1 %i.cm, label %bb.o, label %.thread178

bb.o:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.co = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cp = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i64 noundef %i.cp) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ct = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  store i64 %i.cy, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.cy, 0
  br i1 %.not119, label %.thread163, label %bb.p

.thread163:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread178

bb.p:                                             ; preds = %bb.o
  %i.cz = sub nuw nsw i64 %.193188, %.0190        ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy ; 2 uses
  store ptr %i.da, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.cy, i64 4)
  %i.db = sub i64 0, %.sroa.speculated.i126
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  store ptr %i.dc, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.dd = icmp ult i64 %i.cy, %i.cz
  br i1 %i.dd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %.pre195 = load ptr, ptr %i.aa, align 8, !tbaa !124
  %.pre201 = ptrtoint ptr %.pre195 to i64
  %.pre203 = ptrtoint ptr %.pre to i64
  %.pre205 = sub i64 %.pre201, %.pre203
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi206 = phi i64 [ %.pre205, %._crit_edge.loopexit ], [ %i.bo, %bb.n ]
  %i.de = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.n ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.cz, %._crit_edge.loopexit ], [ %.092, %bb.n ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.cx, %._crit_edge.loopexit ], [ %.6, %bb.n ] ; 3 uses
  %.not.i127 = icmp ugt i64 %.193.lcssa, %.pre-phi206
  br i1 %.not.i127, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.193.lcssa
  store ptr %i.df, ptr %i.a, align 8, !tbaa !115
  br label %bb.q

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130: ; preds = %._crit_edge
  store ptr %i.de, ptr %i.m, align 8, !tbaa !107
  %i.dg = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa)
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !115
  br i1 %i.dg, label %bb.q, label %.thread178

bb.q:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130
  %i.di = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.di, %i.dj
  br i1 %.not118, label %bb.t, label %bb.r, !prof !26

bb.r:                                             ; preds = %bb.q
  store ptr %i.di, ptr %i.c, align 8, !tbaa !43
  %i.dk = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dk, label %bb.s, label %.thread178, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  %.sroa.speculated.i131 = call i64 @llvm.smin.i64(i64 %i.dp, i64 4)
  %i.dq = sub i64 0, %.sroa.speculated.i131
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %i.dq
  store ptr %i.dr, ptr %i.l, align 8, !tbaa !114
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.dl, %bb.s ], [ %i.di, %bb.q ] ; 2 uses
  %i.ds = load i8, ptr %.8, align 1, !tbaa !16
  %i.dt = zext i8 %i.ds to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i132 = load i32, ptr %i.ba, align 1
  %i.du = zext i32 %.0.copyload.i132 to i64
  %i.dv = lshr i32 %i.bb, 2
  %i.dw = add nuw nsw i32 %i.dv, 1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.du, i64 noundef %i.dx, ptr noundef nonnull %i.a)
  br i1 %i.dy, label %bb.ab, label %.thread178

bb.v:                                             ; preds = %bb.j
  %i.dz = zext nneg i32 %i.bb to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !28 ; 2 uses
  %i.ec = sext i16 %i.eb to i64
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ed = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.ee = shl nsw i32 -1, %i.ed
  %i.ef = xor i32 %i.ee, -1
  %i.eg = and i32 %.0.copyload.i133, %i.ef
  %i.eh = and i16 %i.eb, 255
  %i.ei = zext nneg i16 %i.eh to i64              ; 5 uses
  %i.ej = sub nsw i64 %i.ei, %i.ec
  %.tr = trunc nsw i64 %i.ej to i32
  %.narrow = add nsw i32 %i.eg, %.tr              ; 2 uses
  %i.ek = zext i32 %.narrow to i64                ; 5 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !115 ; 9 uses
  %i.em = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.ek               ; 2 uses
  %i.er = load ptr, ptr %i.y, align 8
  %.not.i134 = icmp uge ptr %i.el, %i.er
  %or.cond.not.i = select i1 %i.eq, i1 true, i1 %.not.i134, !prof !122
  %i.es = icmp samesign ult i64 %i.ek, %i.ei
  %i.et = or i1 %i.es, %or.cond.not.i
  br i1 %i.et, label %bb.w, label %bb.z, !prof !29

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp eq i32 %.narrow, 0
  br i1 %i.eu, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei ; 3 uses
  %i.ew = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ex = icmp ugt ptr %i.ev, %i.ew
  %or.cond35.i = select i1 %i.eq, i1 true, i1 %i.ex, !prof !122
  br i1 %or.cond35.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !122

bb.y:                                             ; preds = %bb.x
  %i.ey = sub nsw i64 0, %i.ek
  %i.ez = getelementptr inbounds i8, ptr %i.el, i64 %i.ey
  %i.fa = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ez, ptr noundef %i.el, ptr noundef %i.ev, ptr noundef %i.ew) ; 0 uses
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

bb.z:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  %i.fc = sub nsw i64 0, %i.ek
  %i.fd = getelementptr inbounds i8, ptr %i.el, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.el, ptr noundef nonnull align 1 dereferenceable(64) %i.fd, i64 64, i1 false)
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.ev, %bb.y ], [ %i.fb, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !115
  br label %bb.aa

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.el, ptr %i.m, align 8, !tbaa !107
  %i.fe = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ek, i64 noundef %i.ei)
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !115
end_hunk_3
