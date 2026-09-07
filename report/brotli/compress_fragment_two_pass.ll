Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment_two_pass?download=true
inline.NumInlined: 34
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@BrotliCompressFragmentTwoPassImpl8:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 56
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 56
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 56
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 56
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 56
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 56
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 56
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !81, !noalias !82 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !81
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !81, !noalias !82
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentTwoPassImpl9:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 55
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 55
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 55
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 55
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 55
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 55
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 55
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !126, !noalias !127 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !127, !noalias !126
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !126
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !126, !noalias !127
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentTwoPassImpl10:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 54
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 54
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 54
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 54
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 54
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 54
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 54
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !171, !noalias !172 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !172, !noalias !171
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !171
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !171, !noalias !172
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_2
begin_hunk_3_@BrotliCompressFragmentTwoPassImpl11:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 53
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 53
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 53
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 53
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 53
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 53
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 53
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !216, !noalias !217 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !217, !noalias !216
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !216
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !216, !noalias !217
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_3
begin_hunk_4_@BrotliCompressFragmentTwoPassImpl12:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 52
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 52
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 52
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 52
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 52
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 52
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 52
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !261, !noalias !262 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !262, !noalias !261
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !261
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !261, !noalias !262
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_4
begin_hunk_5_@BrotliCompressFragmentTwoPassImpl13:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 51
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 51
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 51
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 51
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 51
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 51
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 51
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !306, !noalias !307 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !307, !noalias !306
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !306
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !306, !noalias !307
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_5
begin_hunk_6_@BrotliCompressFragmentTwoPassImpl14:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 50
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 50
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 50
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 50
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 50
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 50
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 50
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !351, !noalias !352 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !352, !noalias !351
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !351
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !351, !noalias !352
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_6
begin_hunk_7_@BrotliCompressFragmentTwoPassImpl15:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.bl = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = ptrtoint ptr %.026.i20219 to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr i64 %i.bm, 3
  %i.br = add i64 %i.bp, %i.bq
  br label %FindMatchLengthWithLimit.exit33

bb.g:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i21220, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i20219, i64 8 ; 2 uses
  %i.bu = add i64 %.022.i22221, -8                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 7
  br i1 %i.bv, label %.lr.ph, label %.preheader142, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.h
  %.123.i26227 = phi i64 [ %i.bz, %bb.h ], [ %.022.i22.lcssa, %.lr.ph228.preheader ]
  %.125.i25226 = phi ptr [ %i.ca, %bb.h ], [ %.024.i21.lcssa, %.lr.ph228.preheader ] ; 2 uses
  %.228.i24225 = phi ptr [ %i.cb, %bb.h ], [ %.026.i20.lcssa, %.lr.ph228.preheader ] ; 3 uses
  %i.bw = load i8, ptr %.228.i24225, align 1, !tbaa !15
  %i.bx = load i8, ptr %.125.i25226, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %.critedge.i28

bb.h:                                             ; preds = %.lr.ph228
  %i.bz = add nsw i64 %.123.i26227, -1            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.125.i25226, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.228.i24225, i64 1
  %.not.i27 = icmp eq i64 %i.bz, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph228, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.h, %.lr.ph228, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24225, %.lr.ph228 ], [ %scevgep, %bb.h ]
  %i.cc = ptrtoint ptr %.228.i24.lcssa to i64
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cc, %i.cd
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.f, %.critedge.i28
  %.2.i29 = phi i64 [ %i.br, %bb.f ], [ %i.ce, %.critedge.i28 ] ; 4 uses
  %i.cf = add i64 %.2.i29, 4                      ; 7 uses
  %i.cg = trunc i64 %.us-phi217 to i32            ; 3 uses
  %i.ch = ptrtoint ptr %.0294.i to i64
  %i.ci = sub i64 %.us-phi216, %i.ch              ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.us-phi218, i64 %i.cf ; 8 uses
  %i.cl = icmp ult i32 %i.cj, 6
  br i1 %i.cl, label %EmitInsertLen.exit, label %bb.i

bb.i:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.cm = icmp ult i32 %i.cj, 130
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = add nsw i32 %i.cj, -2                   ; 3 uses
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = sub nuw nsw i32 30, %i.co               ; 3 uses
  %i.cq = lshr i32 %i.cn, %i.cp                   ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cp, 1
  %i.cs = add nuw nsw i32 %i.cq, 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = shl nuw nsw i32 %i.cq, %i.cp
  %i.cv = sub nsw i32 %i.cn, %i.cu
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = or i32 %i.cw, %i.ct
  br label %EmitInsertLen.exit

bb.k:                                             ; preds = %bb.i
  %i.cy = icmp ult i32 %i.cj, 2114
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cj, -66                  ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.da
  %i.db = add nsw i32 %.neg.i, %i.cz
  %i.dc = shl nsw i32 %i.db, 8
  %reass.sub = sub nsw i32 %i.dc, %i.da
  %i.dd = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.de = icmp ult i32 %i.cj, 6210
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = add nsw i32 %i.df, -541163
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ult i32 %i.cj, 22594
  %i.di = shl i32 %i.cj, 8                        ; 2 uses
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = add nsw i32 %i.di, -1589738
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = add i32 %i.di, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q
  %.sink = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.j ], [ %i.dd, %bb.l ], [ %i.dg, %bb.n ], [ %i.dj, %bb.p ], [ %i.cj, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.188, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %sext.i = shl i64 %i.ci, 32
  %i.dm = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %i.dm ; 3 uses
  %i.do = icmp eq i32 %.0290.i.fr, %i.cg
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %EmitInsertLen.exit
  %i.dp = add i32 %i.cg, 3                        ; 3 uses
  %i.dq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true) ; 2 uses
  %i.dr = sub nsw i32 30, %i.dq                   ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 1                        ; 2 uses
  %i.du = or disjoint i32 %i.dt, 2
  %i.dv = shl nuw i32 %i.du, %i.dr
  %i.dw = shl nuw nsw i32 %i.dq, 1
  %reass.sub265 = sub nsw i32 %i.dt, %i.dw
  %i.dx = add nsw i32 %reass.sub265, 138
  %i.dy = sub i32 %i.dp, %i.dv
  %i.dz = shl i32 %i.dy, 8
  %i.ea = or i32 %i.dz, %i.dx
  br label %bb.s

bb.s:                                             ; preds = %EmitInsertLen.exit, %bb.r
  %storemerge = phi i32 [ %i.ea, %bb.r ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.cg, %bb.r ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.dl, align 4, !tbaa !19
  %.289 = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 5 uses
  %i.eb = icmp ult i64 %i.cf, 12
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = trunc nuw nsw i64 %i.cf to i32
  %i.ed = add nuw nsw i32 %i.ec, 20
  store i32 %i.ed, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.u:                                             ; preds = %bb.s
  %i.ee = icmp ult i64 %i.cf, 72
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = add nsw i64 %.2.i29, -4                 ; 3 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = sub nuw nsw i32 30, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = lshr i64 %i.ef, %i.ej                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ej, 1
  %i.em = add nuw nsw i64 %i.ek, 28
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = shl nuw nsw i64 %i.ek, %i.ej
  %i.ep = sub nsw i64 %i.ef, %i.eo
  %i.eq = shl nsw i64 %i.ep, 8
  %i.er = or i64 %i.eq, %i.en
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.289, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.et = icmp ult i64 %i.cf, 136
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = add nsw i64 %.2.i29, -4                 ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = add nuw nsw i64 %i.ev, 54
  %i.ex = shl nuw nsw i64 %i.eu, 8
  %i.ey = and i64 %i.ex, 7936
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  store i32 %i.fa, ptr %.289, align 4, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fb, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = icmp ult i64 %i.cf, 2120
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = add nsw i64 %.2.i29, -68                ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fe, i1 true)
  %i.fg = xor i32 %i.ff, 31
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 52
  %.neg.i36 = shl nsw i64 -1, %i.fh
  %i.fj = add nsw i64 %.neg.i36, %i.fd
  %i.fk = shl nsw i64 %i.fj, 8
  %i.fl = or disjoint i64 %i.fk, %i.fi
  %i.fm = trunc nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %.289, align 4, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fn, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %.tr.i = trunc i64 %i.cf to i32
  %i.fo = shl i32 %.tr.i, 8
  %i.fp = add i32 %i.fo, -542657
  store i32 %i.fp, ptr %.289, align 4, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %.188, i64 12
  store i32 64, ptr %i.fq, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa
  %.sink416 = phi i64 [ 12, %bb.t ], [ 12, %bb.v ], [ 16, %bb.x ], [ 16, %bb.z ], [ 16, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink416 ; 4 uses
  %.not312.i = icmp ult ptr %i.ck, %i.j
  br i1 %.not312.i, label %bb.ab, label %.thread125, !prof !16

bb.ab:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.fs = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.0.copyload.i43 = load i64, ptr %i.fs, align 1 ; 3 uses
  %i.ft = shl i64 %.0.copyload.i43, 8
  %i.fu = and i64 %i.ft, -4294967296
  %i.fv = mul i64 %i.fu, 506832829
  %i.fw = lshr i64 %i.fv, 49
  %i.fx = mul i64 %.0.copyload.i43, 2176830425094160384
  %i.fy = lshr i64 %i.fx, 49
  %i.fz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ga = sub i64 %i.fz, %i.a
  %i.gb = trunc i64 %i.ga to i32                  ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy
  %i.gd = shl i64 %.0.copyload.i43, 24
  %i.ge = and i64 %i.gd, -4294967296
  %i.gf = mul i64 %i.ge, 506832829
  %i.gg = lshr i64 %i.gf, 49
  %i.gh = add i32 %i.gb, -2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !19
  %i.gj = add i32 %i.gb, -1
  store i32 %i.gj, ptr %i.gc, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fw ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gb, ptr %i.gk, align 4, !tbaa !19
  %.pn247 = sext i32 %i.gl to i64                 ; 2 uses
  %.4.i248 = getelementptr inbounds i8, ptr %1, i64 %.pn247 ; 2 uses
  %i.gm = ptrtoint ptr %.4.i248 to i64
  %i.gn = sub i64 %i.fz, %i.gm                    ; 2 uses
  %i.go = icmp slt i64 %i.gn, 262129
  br i1 %i.go, label %.lr.ph253.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph253.preheader:                              ; preds = %bb.ab
  %.0.copyload.i5057 = load i32, ptr %i.ck, align 1
  %.0.copyload.i4958 = load i32, ptr %.4.i248, align 1
  %i.gp = icmp eq i32 %.0.copyload.i5057, %.0.copyload.i4958
  br i1 %i.gp, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %bb.al, %.lr.ph253, %.lr.ph253.preheader, %bb.ab
  %.188.be = phi ptr [ %i.fr, %bb.ab ], [ %i.fr, %.lr.ph253.preheader ], [ %i.jo, %.lr.ph253 ], [ %i.jo, %bb.al ]
  %.0294.i.be = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph253.preheader ], [ %i.hu, %.lr.ph253 ], [ %i.hu, %bb.al ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ab ], [ %.1291.i, %.lr.ph253.preheader ], [ %i.hv, %.lr.ph253 ], [ %i.hv, %bb.al ]
  br label %IsMatch.exit13.thread

.lr.ph253:                                        ; preds = %bb.al
  %.0.copyload.i50 = load i32, ptr %i.hu, align 1
  %.0.copyload.i49 = load i32, ptr %.4.i, align 1
  %i.gq = icmp eq i32 %.0.copyload.i50, %.0.copyload.i49
  br i1 %i.gq, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253
  %.424961 = phi ptr [ %i.jo, %.lr.ph253 ], [ %i.fr, %.lr.ph253.preheader ] ; 3 uses
  %.1.i25160 = phi ptr [ %i.hu, %.lr.ph253 ], [ %i.ck, %.lr.ph253.preheader ] ; 2 uses
  %i.gr = phi i64 [ %.pn, %.lr.ph253 ], [ %.pn247, %.lr.ph253.preheader ]
  %i.gs = phi i64 [ %i.jw, %.lr.ph253 ], [ %i.fz, %.lr.ph253.preheader ]
  %i.gt = phi i64 [ %i.kq, %.lr.ph253 ], [ %i.gn, %.lr.ph253.preheader ]
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 4 ; 2 uses
  %i.gx = sub i64 %.neg136, %i.gs                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 7
  br i1 %i.gy, label %.lr.ph235, label %.preheader

.preheader:                                       ; preds = %bb.ad, %IsMatch.exit13
  %.026.i.lcssa = phi ptr [ %i.gv, %IsMatch.exit13 ], [ %i.hh, %bb.ad ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.gw, %IsMatch.exit13 ], [ %i.hg, %bb.ad ]
  %.022.i.lcssa = phi i64 [ %i.gx, %IsMatch.exit13 ], [ %i.hi, %bb.ad ] ; 3 uses
  %.not.i16239 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16239, label %.critedge.i17, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader
  %scevgep323 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph243

.lr.ph235:                                        ; preds = %IsMatch.exit13, %bb.ad
  %.022.i234 = phi i64 [ %i.hi, %bb.ad ], [ %i.gx, %IsMatch.exit13 ]
  %.024.i233 = phi ptr [ %i.hg, %bb.ad ], [ %i.gw, %IsMatch.exit13 ] ; 2 uses
  %.026.i232 = phi ptr [ %i.hh, %bb.ad ], [ %i.gv, %IsMatch.exit13 ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i233, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i232, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph235
  %i.gz = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gz, i1 true)
  %i.hb = ptrtoint ptr %.026.i232 to i64
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr i64 %i.ha, 3
  %i.hf = add i64 %i.hd, %i.he
  br label %FindMatchLengthWithLimit.exit

bb.ad:                                            ; preds = %.lr.ph235
  %i.hg = getelementptr inbounds nuw i8, ptr %.024.i233, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.026.i232, i64 8 ; 2 uses
  %i.hi = add i64 %.022.i234, -8                  ; 3 uses
  %i.hj = icmp ugt i64 %i.hi, 7
  br i1 %i.hj, label %.lr.ph235, label %.preheader, !llvm.loop !1

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.ae
  %.123.i242 = phi i64 [ %i.hn, %bb.ae ], [ %.022.i.lcssa, %.lr.ph243.preheader ]
  %.125.i241 = phi ptr [ %i.ho, %bb.ae ], [ %.024.i.lcssa, %.lr.ph243.preheader ] ; 2 uses
  %.228.i240 = phi ptr [ %i.hp, %bb.ae ], [ %.026.i.lcssa, %.lr.ph243.preheader ] ; 3 uses
  %i.hk = load i8, ptr %.228.i240, align 1, !tbaa !15
  %i.hl = load i8, ptr %.125.i241, align 1, !tbaa !15
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %.critedge.i17

bb.ae:                                            ; preds = %.lr.ph243
  %i.hn = add nsw i64 %.123.i242, -1              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.125.i241, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.228.i240, i64 1
  %.not.i16 = icmp eq i64 %i.hn, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph243, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ae, %.lr.ph243, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i240, %.lr.ph243 ], [ %scevgep323, %bb.ae ]
  %i.hq = ptrtoint ptr %.228.i.lcssa to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.ac, %.critedge.i17
  %.2.i18 = phi i64 [ %i.hf, %bb.ac ], [ %i.hs, %.critedge.i17 ] ; 3 uses
  %i.ht = add i64 %.2.i18, 4                      ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i25160, i64 %i.ht ; 8 uses
  %i.hv = trunc i64 %i.gt to i32                  ; 3 uses
  %i.hw = icmp ult i64 %i.ht, 10
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hx = trunc nuw nsw i64 %i.ht to i32
  %i.hy = add nuw nsw i32 %i.hx, 38
  br label %EmitCopyLen.exit

bb.ag:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.hz = icmp ult i64 %i.ht, 134
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = add nsw i64 %.2.i18, -2                 ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = sub nuw nsw i32 30, %i.ic
  %i.ie = zext nneg i32 %i.id to i64              ; 3 uses
  %i.if = lshr i64 %i.ia, %i.ie                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ie, 1
  %i.ih = add nuw nsw i64 %i.if, 44
  %i.ii = add nuw nsw i64 %i.ih, %i.ig
  %i.ij = shl nuw nsw i64 %i.if, %i.ie
  %i.ik = sub nsw i64 %i.ia, %i.ij
  %i.il = shl nsw i64 %i.ik, 8
  %i.im = or i64 %i.il, %i.ii
  %i.in = trunc i64 %i.im to i32
  br label %EmitCopyLen.exit

bb.ai:                                            ; preds = %bb.ag
  %i.io = icmp ult i64 %i.ht, 2118
  br i1 %i.io, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = add nsw i64 %.2.i18, -66                ; 2 uses
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = xor i32 %i.ir, 31
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 52
  %.neg.i46 = shl nsw i64 -1, %i.it
  %i.iv = add nsw i64 %.neg.i46, %i.ip
  %i.iw = shl nsw i64 %i.iv, 8
  %i.ix = or disjoint i64 %i.iw, %i.iu
  %i.iy = trunc nsw i64 %i.ix to i32
  br label %EmitCopyLen.exit

bb.ak:                                            ; preds = %bb.ai
  %.tr.i45 = trunc i64 %i.ht to i32
  %i.iz = shl i32 %.tr.i45, 8
  %i.ja = add i32 %i.iz, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak
  %.sink417 = phi i32 [ %i.hy, %bb.af ], [ %i.in, %bb.ah ], [ %i.iy, %bb.aj ], [ %i.ja, %bb.ak ]
  store i32 %.sink417, ptr %.424961, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.424961, i64 4
  %i.jc = add i32 %i.hv, 3                        ; 3 uses
  %i.jd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true) ; 2 uses
  %i.je = sub nsw i32 30, %i.jd                   ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = and i32 %i.jf, 1                        ; 2 uses
  %i.jh = or disjoint i32 %i.jg, 2
  %i.ji = shl nuw i32 %i.jh, %i.je
  %i.jj = shl nuw nsw i32 %i.jd, 1
  %reass.sub266 = sub nsw i32 %i.jg, %i.jj
  %i.jk = add nsw i32 %reass.sub266, 138
  %i.jl = sub i32 %i.jc, %i.ji
  %i.jm = shl i32 %i.jl, 8
  %i.jn = or i32 %i.jm, %i.jk
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %.424961, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.hu, %i.j
  br i1 %.not314.i, label %bb.al, label %.thread125, !prof !16

bb.al:                                            ; preds = %EmitCopyLen.exit
  %i.jp = getelementptr inbounds i8, ptr %i.hu, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.jp, align 1 ; 4 uses
  %i.jq = shl i64 %.0.copyload.i44, 8
  %i.jr = and i64 %i.jq, -4294967296
  %i.js = mul i64 %i.jr, 506832829
  %i.jt = lshr i64 %i.js, 49
  %i.ju = mul i64 %.0.copyload.i44, 2176830425094160384
  %i.jv = lshr i64 %i.ju, 49
  %i.jw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = trunc i64 %i.jx to i32                  ; 4 uses
  %i.jz = add i32 %i.jy, -3
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jv
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !19
  %i.kb = shl i64 %.0.copyload.i44, 24
  %i.kc = and i64 %i.kb, -4294967296
  %i.kd = mul i64 %i.kc, 506832829
  %i.ke = lshr i64 %i.kd, 49
  %i.kf = add i32 %i.jy, -2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !19
  %i.kh = shl i64 %.0.copyload.i44, 16
  %i.ki = and i64 %i.kh, -4294967296
  %i.kj = mul i64 %i.ki, 506832829
  %i.kk = lshr i64 %i.kj, 49
  %i.kl = add i32 %i.jy, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !19
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jt ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !19
  store i32 %i.jy, ptr %i.kn, align 4, !tbaa !19
  %.pn = sext i32 %i.ko to i64                    ; 2 uses
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 2 uses
  %i.kp = ptrtoint ptr %.4.i to i64
  %i.kq = sub i64 %i.jw, %i.kp                    ; 2 uses
  %i.kr = icmp slt i64 %i.kq, 262129
  br i1 %i.kr, label %.lr.ph253, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %IsMatch.exit.us, %IsMatch.exit.us193, %EmitCopyLen.exit, %bb.b
  %.087 = phi ptr [ %3, %bb.b ], [ %.188, %IsMatch.exit.us193 ], [ %i.jo, %EmitCopyLen.exit ], [ %.188, %IsMatch.exit.us ], [ %i.fr, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %IsMatch.exit.us193 ], [ %i.dn, %EmitCopyLen.exit ], [ %.1, %IsMatch.exit.us ], [ %i.dn, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i263, %bb.b ], [ %.0294.i, %IsMatch.exit.us193 ], [ %i.hu, %EmitCopyLen.exit ], [ %.0294.i, %IsMatch.exit.us ], [ %i.ck, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.ks = icmp ult ptr %.3297.i, %i.e
  br i1 %i.ks, label %bb.am, label %CreateCommands.exit

bb.am:                                            ; preds = %.thread125
  %i.kt = ptrtoint ptr %i.e to i64
  %i.ku = ptrtoint ptr %.3297.i to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 10 uses
  %i.kx = icmp ult i32 %i.kw, 6
  br i1 %i.kx, label %EmitInsertLen.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = icmp ult i32 %i.kw, 130
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = add nsw i32 %i.kw, -2                   ; 3 uses
  %i.la = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kz, i1 true)
  %i.lb = sub nuw nsw i32 30, %i.la               ; 3 uses
  %i.lc = lshr i32 %i.kz, %i.lb                   ; 2 uses
  %i.ld = shl nuw nsw i32 %i.lb, 1
  %i.le = add nuw nsw i32 %i.lc, 2
  %i.lf = add nuw nsw i32 %i.le, %i.ld
  %i.lg = shl nuw nsw i32 %i.lc, %i.lb
  %i.lh = sub nsw i32 %i.kz, %i.lg
  %i.li = shl nsw i32 %i.lh, 8
  %i.lj = or i32 %i.li, %i.lf
  br label %EmitInsertLen.exit35

bb.ap:                                            ; preds = %bb.an
  %i.lk = icmp ult i32 %i.kw, 2114
  br i1 %i.lk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ll = add nsw i32 %i.kw, -66                  ; 2 uses
  %i.lm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ll, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.lm
  %i.ln = add nsw i32 %.neg.i34, %i.ll
  %i.lo = shl nsw i32 %i.ln, 8
  %reass.sub267 = sub nsw i32 %i.lo, %i.lm
  %i.lp = add nsw i32 %reass.sub267, 41
  br label %EmitInsertLen.exit35

bb.ar:                                            ; preds = %bb.ap
  %i.lq = icmp ult i32 %i.kw, 6210
  br i1 %i.lq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lr = shl nuw nsw i32 %i.kw, 8
  %i.ls = add nsw i32 %i.lr, -541163
  br label %EmitInsertLen.exit35

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp ult i32 %i.kw, 22594
  %i.lu = shl i32 %i.kw, 8                        ; 2 uses
  br i1 %i.lt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = add nsw i32 %i.lu, -1589738
  br label %EmitInsertLen.exit35

bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink418 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink418, ptr %.087, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.lx, %EmitInsertLen.exit35 ], [ %.087, %.thread125 ]
  %.3 = phi ptr [ %i.lz, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = uitofp nneg i64 %i.d to double
  %i.md = uitofp i64 %i.mb to double
  %i.me = fmul nnan double %i.mc, f0x3FEF5C28F5C28F5C
  %i.mf = fcmp ogt double %i.me, %i.md
  br i1 %i.mf, label %ShouldCompress.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.014.i = phi i64 [ %i.mm, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i263, i64 %.014.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !19
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !19
  %i.mm = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.mn = icmp samesign ult i64 %i.mm, %i.d
  br i1 %i.mn, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.mo = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.mp = uitofp nneg i64 %i.mo to double
  %i.mq = fmul nnan double %i.mp, f0x3FEF5C28F5C28F5C
  %i.mr = fdiv double %i.mq, 4.300000e+01
  %i.ms = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.mt = fcmp uge double %i.ms, %i.mr
  br i1 %i.mt, label %bb.ax, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.mu = ptrtoint ptr %.5 to i64
  %i.mv = sub i64 %i.mu, %i.c
  %i.mw = ashr exact i64 %i.mv, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.mx = load i64, ptr %6, align 8, !tbaa !14, !alias.scope !396, !noalias !397 ; 3 uses
  %i.my = lshr i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15, !alias.scope !397, !noalias !396
  %i.nb = zext i8 %i.na to i64
  store i64 %i.nb, ptr %i.mz, align 1, !noalias !396
  %i.nc = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.nc, ptr %6, align 8, !tbaa !14, !alias.scope !396, !noalias !397
  %i.nd = icmp ult i64 %.037.i262, 65537
  %.0.i54 = select i1 %i.nd, i64 4, i64 5         ; 2 uses
end_hunk_7
begin_hunk_8_@BrotliCompressFragmentTwoPassImpl16:bb.a
bb.h:                                             ; preds = %.lr.ph234
  %i.cu = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = ptrtoint ptr %.026.i20231 to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr i64 %i.cv, 3
  %i.da = add i64 %i.cy, %i.cz
  br label %FindMatchLengthWithLimit.exit33

bb.i:                                             ; preds = %.lr.ph234
  %i.db = getelementptr inbounds nuw i8, ptr %.024.i21232, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.026.i20231, i64 8 ; 2 uses
  %i.dd = add i64 %.022.i22233, -8                ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 7
  br i1 %i.de, label %.lr.ph234, label %.preheader142, !llvm.loop !1

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %bb.j
  %.123.i26241 = phi i64 [ %i.di, %bb.j ], [ %.022.i22.lcssa, %.lr.ph242.preheader ]
  %.125.i25240 = phi ptr [ %i.dj, %bb.j ], [ %.024.i21.lcssa, %.lr.ph242.preheader ] ; 2 uses
  %.228.i24239 = phi ptr [ %i.dk, %bb.j ], [ %.026.i20.lcssa, %.lr.ph242.preheader ] ; 3 uses
  %i.df = load i8, ptr %.228.i24239, align 1, !tbaa !15
  %i.dg = load i8, ptr %.125.i25240, align 1, !tbaa !15
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %.critedge.i28

bb.j:                                             ; preds = %.lr.ph242
  %i.di = add nsw i64 %.123.i26241, -1            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.125.i25240, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.228.i24239, i64 1
  %.not.i27 = icmp eq i64 %i.di, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph242, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.j, %.lr.ph242, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24239, %.lr.ph242 ], [ %scevgep, %bb.j ]
  %i.dl = ptrtoint ptr %.228.i24.lcssa to i64
  %i.dm = ptrtoint ptr %i.cq to i64
  %i.dn = sub i64 %i.dl, %i.dm
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.da, %bb.h ], [ %i.dn, %.critedge.i28 ] ; 4 uses
  %i.do = add i64 %.2.i29, 6                      ; 7 uses
  %i.dp = trunc i64 %.us-phi229 to i32            ; 3 uses
  %i.dq = ptrtoint ptr %.0294.i to i64
  %i.dr = sub i64 %.us-phi228, %i.dq              ; 2 uses
  %i.ds = trunc i64 %i.dr to i32                  ; 10 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.us-phi230, i64 %i.do ; 9 uses
  %i.du = icmp ult i32 %i.ds, 6
  br i1 %i.du, label %EmitInsertLen.exit, label %bb.k

bb.k:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.dv = icmp ult i32 %i.ds, 130
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dw = add nsw i32 %i.ds, -2                   ; 3 uses
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dw, i1 true)
  %i.dy = sub nuw nsw i32 30, %i.dx               ; 3 uses
  %i.dz = lshr i32 %i.dw, %i.dy                   ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dy, 1
  %i.eb = add nuw nsw i32 %i.dz, 2
  %i.ec = add nuw nsw i32 %i.eb, %i.ea
  %i.ed = shl nuw nsw i32 %i.dz, %i.dy
  %i.ee = sub nsw i32 %i.dw, %i.ed
  %i.ef = shl nsw i32 %i.ee, 8
  %i.eg = or i32 %i.ef, %i.ec
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.eh = icmp ult i32 %i.ds, 2114
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = add nsw i32 %i.ds, -66                  ; 2 uses
  %i.ej = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ej
  %i.ek = add nsw i32 %.neg.i, %i.ei
  %i.el = shl nsw i32 %i.ek, 8
  %reass.sub = sub nsw i32 %i.el, %i.ej
  %i.em = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.en = icmp ult i32 %i.ds, 6210
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = shl nuw nsw i32 %i.ds, 8
  %i.ep = add nsw i32 %i.eo, -541163
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.eq = icmp ult i32 %i.ds, 22594
  %i.er = shl i32 %i.ds, 8                        ; 2 uses
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.es = add nsw i32 %i.er, -1589738
  br label %EmitInsertLen.exit

bb.s:                                             ; preds = %bb.q
  %i.et = add i32 %i.er, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s
  %.sink = phi i32 [ %i.et, %bb.s ], [ %i.eg, %bb.l ], [ %i.em, %bb.n ], [ %i.ep, %bb.p ], [ %i.es, %bb.r ], [ %i.ds, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.190, align 4, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %sext.i = shl i64 %i.dr, 32
  %i.ev = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.ev, i1 false)
  %i.ew = getelementptr inbounds i8, ptr %.1, i64 %i.ev ; 3 uses
  %i.ex = icmp eq i32 %.0290.i.fr, %i.dp
  br i1 %i.ex, label %bb.u, label %bb.t

bb.t:                                             ; preds = %EmitInsertLen.exit
  %i.ey = add i32 %i.dp, 3                        ; 3 uses
  %i.ez = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true) ; 2 uses
  %i.fa = sub nsw i32 30, %i.ez                   ; 2 uses
  %i.fb = lshr i32 %i.ey, %i.fa
  %i.fc = and i32 %i.fb, 1                        ; 2 uses
  %i.fd = or disjoint i32 %i.fc, 2
  %i.fe = shl nuw i32 %i.fd, %i.fa
  %i.ff = shl nuw nsw i32 %i.ez, 1
  %reass.sub289 = sub nsw i32 %i.fc, %i.ff
  %i.fg = add nsw i32 %reass.sub289, 138
  %i.fh = sub i32 %i.ey, %i.fe
  %i.fi = shl i32 %i.fh, 8
  %i.fj = or i32 %i.fi, %i.fg
  br label %bb.u

bb.u:                                             ; preds = %EmitInsertLen.exit, %bb.t
  %storemerge = phi i32 [ %i.fj, %bb.t ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.dp, %bb.t ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.eu, align 4, !tbaa !19
  %.291 = getelementptr inbounds nuw i8, ptr %.190, i64 8 ; 5 uses
  %i.fk = icmp ult i64 %i.do, 12
  br i1 %i.fk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fl = trunc nuw nsw i64 %i.do to i32
  %i.fm = add nuw nsw i32 %i.fl, 20
  store i32 %i.fm, ptr %.291, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.fn = icmp ult i64 %i.do, 72
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fp, i1 true)
  %i.fr = sub nuw nsw i32 30, %i.fq
  %i.fs = zext nneg i32 %i.fr to i64              ; 3 uses
  %i.ft = lshr i64 %i.fo, %i.fs                   ; 2 uses
  %i.fu = shl nuw nsw i64 %i.fs, 1
  %i.fv = add nuw nsw i64 %i.ft, 28
  %i.fw = add nuw nsw i64 %i.fv, %i.fu
  %i.fx = shl nuw nsw i64 %i.ft, %i.fs
  %i.fy = sub nsw i64 %i.fo, %i.fx
  %i.fz = shl nsw i64 %i.fy, 8
  %i.ga = or i64 %i.fz, %i.fw
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr %.291, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.gc = icmp ult i64 %i.do, 136
  br i1 %i.gc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gd = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.ge = lshr i64 %i.gd, 5
  %i.gf = add nuw nsw i64 %i.ge, 54
  %i.gg = shl nuw nsw i64 %i.gd, 8
  %i.gh = and i64 %i.gg, 7936
  %i.gi = or i64 %i.gf, %i.gh
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  store i32 %i.gj, ptr %.291, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gk, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %i.gl = icmp ult i64 %i.do, 2120
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gn, i1 true)
  %i.gp = xor i32 %i.go, 31
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = add nuw nsw i64 %i.gq, 52
  %.neg.i36 = shl nsw i64 -1, %i.gq
  %i.gs = add nsw i64 %.neg.i36, %i.gm
  %i.gt = shl nsw i64 %i.gs, 8
  %i.gu = or disjoint i64 %i.gt, %i.gr
  %i.gv = trunc nsw i64 %i.gu to i32
  store i32 %i.gv, ptr %.291, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gw, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.ac:                                            ; preds = %bb.aa
  %.tr.i = trunc i64 %i.do to i32
  %i.gx = shl i32 %.tr.i, 8
  %i.gy = add i32 %i.gx, -542657
  store i32 %i.gy, ptr %.291, align 4, !tbaa !19
  %i.gz = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gz, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac
  %.sink474 = phi i64 [ 12, %bb.v ], [ 12, %bb.x ], [ 16, %bb.z ], [ 16, %bb.ab ], [ 16, %bb.ac ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.190, i64 %.sink474 ; 4 uses
  %.not312.i = icmp ult ptr %i.dt, %i.j
  br i1 %.not312.i, label %bb.ad, label %.thread125, !prof !16

bb.ad:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.hb = getelementptr inbounds i8, ptr %i.dt, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.hb, align 1 ; 3 uses
  %i.hc = mul i64 %.0.copyload.i44, 33215796281344
  %i.hd = lshr i64 %i.hc, 48
  %i.he = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.hf = sub i64 %i.he, %i.a
  %i.hg = trunc i64 %i.hf to i32                  ; 6 uses
  %i.hh = add i32 %i.hg, -5
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hd
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !19
  %i.hj = shl i64 %.0.copyload.i44, 8
  %i.hk = and i64 %i.hj, -65536
  %i.hl = mul i64 %i.hk, 506832829
  %i.hm = lshr i64 %i.hl, 48
  %i.hn = add i32 %i.hg, -4
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hm
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !19
  %i.hp = and i64 %.0.copyload.i44, -65536
  %i.hq = mul i64 %i.hp, 506832829
  %i.hr = lshr i64 %i.hq, 48
  %i.hs = add i32 %i.hg, -3
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hr
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !19
  %i.hu = getelementptr inbounds i8, ptr %i.dt, i64 -2
  %.0.copyload.i43 = load i64, ptr %i.hu, align 1 ; 3 uses
  %i.hv = and i64 %.0.copyload.i43, -65536
  %i.hw = mul i64 %i.hv, 506832829
  %i.hx = lshr i64 %i.hw, 48
  %i.hy = mul i64 %.0.copyload.i43, 33215796281344
  %i.hz = lshr i64 %i.hy, 48
  %i.ia = add i32 %i.hg, -2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hz
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !19
  %i.ic = shl i64 %.0.copyload.i43, 8
  %i.id = and i64 %i.ic, -65536
  %i.ie = mul i64 %i.id, 506832829
  %i.if = lshr i64 %i.ie, 48
  %i.ig = add i32 %i.hg, -1
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.if
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !19
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hx ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !19
  store i32 %i.hg, ptr %i.ii, align 4, !tbaa !19
  %.pn261 = sext i32 %i.ij to i64
  %.4.i262 = getelementptr inbounds i8, ptr %1, i64 %.pn261 ; 3 uses
  %i.ik = ptrtoint ptr %.4.i262 to i64
  %i.il = sub i64 %i.he, %i.ik                    ; 2 uses
  %i.im = icmp slt i64 %i.il, 262129
  br i1 %i.im, label %.lr.ph267.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph267.preheader:                              ; preds = %bb.ad
  %.0.copyload.i5275 = load i32, ptr %i.dt, align 1
  %.0.copyload.i5176 = load i32, ptr %.4.i262, align 1
  %i.in = icmp eq i32 %.0.copyload.i5275, %.0.copyload.i5176
  br i1 %i.in, label %.lr.ph81, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %IsMatch.exit13, %bb.ao, %.lr.ph267, %.lr.ph81, %.lr.ph267.preheader, %bb.ad
  %.190.be = phi ptr [ %i.ha, %bb.ad ], [ %i.ha, %.lr.ph267.preheader ], [ %.426380, %IsMatch.exit13 ], [ %.426380, %.lr.ph81 ], [ %i.ls, %.lr.ph267 ], [ %i.ls, %bb.ao ]
  %.0294.i.be = phi ptr [ %i.dt, %bb.ad ], [ %i.dt, %.lr.ph267.preheader ], [ %.1.i26578, %IsMatch.exit13 ], [ %.1.i26578, %.lr.ph81 ], [ %i.jz, %.lr.ph267 ], [ %i.jz, %bb.ao ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ad ], [ %.1291.i, %.lr.ph267.preheader ], [ %.2292.i26479, %IsMatch.exit13 ], [ %.2292.i26479, %.lr.ph81 ], [ %i.ka, %.lr.ph267 ], [ %i.ka, %bb.ao ]
  br label %IsMatch.exit13.thread

.lr.ph267:                                        ; preds = %bb.ao
  %.0.copyload.i52 = load i32, ptr %i.jz, align 1
  %.0.copyload.i51 = load i32, ptr %.4.i, align 1
  %i.io = icmp eq i32 %.0.copyload.i52, %.0.copyload.i51
  br i1 %i.io, label %.lr.ph81, label %IsMatch.exit13.thread.backedge

.lr.ph81:                                         ; preds = %.lr.ph267.preheader, %.lr.ph267
  %.426380 = phi ptr [ %i.ls, %.lr.ph267 ], [ %i.ha, %.lr.ph267.preheader ] ; 5 uses
  %.2292.i26479 = phi i32 [ %i.ka, %.lr.ph267 ], [ %.1291.i, %.lr.ph267.preheader ] ; 2 uses
  %.1.i26578 = phi ptr [ %i.jz, %.lr.ph267 ], [ %i.dt, %.lr.ph267.preheader ] ; 6 uses
  %.4.i26677 = phi ptr [ %.4.i, %.lr.ph267 ], [ %.4.i262, %.lr.ph267.preheader ] ; 3 uses
  %i.ip = phi i64 [ %i.lw, %.lr.ph267 ], [ %i.he, %.lr.ph267.preheader ]
  %i.iq = phi i64 [ %i.nd, %.lr.ph267 ], [ %i.il, %.lr.ph267.preheader ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 4
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 4
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = icmp eq i8 %i.is, %i.iu
  br i1 %i.iv, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph81
  %i.iw = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 5
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 5
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %.not = icmp eq i8 %i.ix, %i.iz
  br i1 %.not, label %bb.ae, label %IsMatch.exit13.thread.backedge

bb.ae:                                            ; preds = %IsMatch.exit13
  %i.ja = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 6 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 6 ; 2 uses
  %i.jc = sub i64 %.neg136, %i.ip                 ; 3 uses
  %i.jd = icmp ugt i64 %i.jc, 7
  br i1 %i.jd, label %.lr.ph249, label %.preheader

.preheader:                                       ; preds = %bb.ag, %bb.ae
  %.026.i.lcssa = phi ptr [ %i.ja, %bb.ae ], [ %i.jm, %bb.ag ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.jb, %bb.ae ], [ %i.jl, %bb.ag ]
  %.022.i.lcssa = phi i64 [ %i.jc, %bb.ae ], [ %i.jn, %bb.ag ] ; 3 uses
  %.not.i16253 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16253, label %.critedge.i17, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.preheader
  %scevgep363 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph257

.lr.ph249:                                        ; preds = %bb.ae, %bb.ag
  %.022.i248 = phi i64 [ %i.jn, %bb.ag ], [ %i.jc, %bb.ae ]
  %.024.i247 = phi ptr [ %i.jl, %bb.ag ], [ %i.jb, %bb.ae ] ; 2 uses
  %.026.i246 = phi ptr [ %i.jm, %bb.ag ], [ %i.ja, %bb.ae ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i247, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i246, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph249
  %i.je = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.je, i1 true)
  %i.jg = ptrtoint ptr %.026.i246 to i64
  %i.jh = ptrtoint ptr %i.ja to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = lshr i64 %i.jf, 3
  %i.jk = add i64 %i.ji, %i.jj
  br label %FindMatchLengthWithLimit.exit

bb.ag:                                            ; preds = %.lr.ph249
  %i.jl = getelementptr inbounds nuw i8, ptr %.024.i247, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.026.i246, i64 8 ; 2 uses
  %i.jn = add i64 %.022.i248, -8                  ; 3 uses
  %i.jo = icmp ugt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph249, label %.preheader, !llvm.loop !1

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %bb.ah
  %.123.i256 = phi i64 [ %i.js, %bb.ah ], [ %.022.i.lcssa, %.lr.ph257.preheader ]
  %.125.i255 = phi ptr [ %i.jt, %bb.ah ], [ %.024.i.lcssa, %.lr.ph257.preheader ] ; 2 uses
  %.228.i254 = phi ptr [ %i.ju, %bb.ah ], [ %.026.i.lcssa, %.lr.ph257.preheader ] ; 3 uses
  %i.jp = load i8, ptr %.228.i254, align 1, !tbaa !15
  %i.jq = load i8, ptr %.125.i255, align 1, !tbaa !15
  %i.jr = icmp eq i8 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ah, label %.critedge.i17

bb.ah:                                            ; preds = %.lr.ph257
  %i.js = add nsw i64 %.123.i256, -1              ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.125.i255, i64 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.228.i254, i64 1
  %.not.i16 = icmp eq i64 %i.js, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph257, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ah, %.lr.ph257, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i254, %.lr.ph257 ], [ %scevgep363, %bb.ah ]
  %i.jv = ptrtoint ptr %.228.i.lcssa to i64
  %i.jw = ptrtoint ptr %i.ja to i64
  %i.jx = sub i64 %i.jv, %i.jw
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.af, %.critedge.i17
  %.2.i18 = phi i64 [ %i.jk, %bb.af ], [ %i.jx, %.critedge.i17 ] ; 5 uses
  %i.jy = add i64 %.2.i18, 6                      ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 %i.jy ; 9 uses
  %i.ka = trunc i64 %i.iq to i32                  ; 4 uses
  %i.kb = icmp ult i64 %i.jy, 10
  br i1 %i.kb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.kc = trunc nuw nsw i64 %i.jy to i32
  %i.kd = add nuw nsw i32 %i.kc, 38
  br label %EmitCopyLen.exit

bb.aj:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.ke = icmp ult i64 %i.jy, 134
  br i1 %i.ke, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kf = trunc nuw nsw i64 %.2.i18 to i32
  %i.kg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kf, i1 true)
  %i.kh = sub nuw nsw i32 30, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64              ; 3 uses
  %i.kj = lshr i64 %.2.i18, %i.ki                 ; 2 uses
  %i.kk = shl nuw nsw i64 %i.ki, 1
  %i.kl = add nuw nsw i64 %i.kj, 44
  %i.km = add nuw nsw i64 %i.kl, %i.kk
  %i.kn = shl nuw nsw i64 %i.kj, %i.ki
  %i.ko = sub nsw i64 %.2.i18, %i.kn
  %i.kp = shl nsw i64 %i.ko, 8
  %i.kq = or i64 %i.kp, %i.km
  %i.kr = trunc i64 %i.kq to i32
  br label %EmitCopyLen.exit

bb.al:                                            ; preds = %bb.aj
  %i.ks = icmp ult i64 %i.jy, 2118
  br i1 %i.ks, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kt = add nsw i64 %.2.i18, -64                ; 2 uses
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ku, i1 true)
  %i.kw = xor i32 %i.kv, 31
  %i.kx = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.ky = add nuw nsw i64 %i.kx, 52
  %.neg.i48 = shl nsw i64 -1, %i.kx
  %i.kz = add nsw i64 %.neg.i48, %i.kt
  %i.la = shl nsw i64 %i.kz, 8
  %i.lb = or disjoint i64 %i.la, %i.ky
  %i.lc = trunc nsw i64 %i.lb to i32
  br label %EmitCopyLen.exit

bb.an:                                            ; preds = %bb.al
  %.tr.i47 = trunc i64 %i.jy to i32
  %i.ld = shl i32 %.tr.i47, 8
  %i.le = add i32 %i.ld, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.ai, %bb.ak, %bb.am, %bb.an
  %.sink475 = phi i32 [ %i.kd, %bb.ai ], [ %i.kr, %bb.ak ], [ %i.lc, %bb.am ], [ %i.le, %bb.an ]
  store i32 %.sink475, ptr %.426380, align 4, !tbaa !19
  %i.lf = getelementptr inbounds nuw i8, ptr %.426380, i64 4
  %i.lg = add i32 %i.ka, 3                        ; 3 uses
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lg, i1 true) ; 2 uses
  %i.li = sub nsw i32 30, %i.lh                   ; 2 uses
  %i.lj = lshr i32 %i.lg, %i.li
  %i.lk = and i32 %i.lj, 1                        ; 2 uses
  %i.ll = or disjoint i32 %i.lk, 2
  %i.lm = shl nuw i32 %i.ll, %i.li
  %i.ln = shl nuw nsw i32 %i.lh, 1
  %reass.sub290 = sub nsw i32 %i.lk, %i.ln
  %i.lo = add nsw i32 %reass.sub290, 138
  %i.lp = sub i32 %i.lg, %i.lm
  %i.lq = shl i32 %i.lp, 8
  %i.lr = or i32 %i.lq, %i.lo
  store i32 %i.lr, ptr %i.lf, align 4, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %.426380, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.jz, %i.j
  br i1 %.not314.i, label %bb.ao, label %.thread125, !prof !16

bb.ao:                                            ; preds = %EmitCopyLen.exit
  %i.lt = getelementptr inbounds i8, ptr %i.jz, i64 -5
  %.0.copyload.i46 = load i64, ptr %i.lt, align 1 ; 3 uses
  %i.lu = mul i64 %.0.copyload.i46, 33215796281344
  %i.lv = lshr i64 %i.lu, 48
  %i.lw = ptrtoint ptr %i.jz to i64               ; 3 uses
  %i.lx = sub i64 %i.lw, %i.a
  %i.ly = trunc i64 %i.lx to i32                  ; 6 uses
  %i.lz = add i32 %i.ly, -5
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.lv
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !19
  %i.mb = shl i64 %.0.copyload.i46, 8
  %i.mc = and i64 %i.mb, -65536
  %i.md = mul i64 %i.mc, 506832829
  %i.me = lshr i64 %i.md, 48
  %i.mf = add i32 %i.ly, -4
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.me
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !19
  %i.mh = and i64 %.0.copyload.i46, -65536
  %i.mi = mul i64 %i.mh, 506832829
  %i.mj = lshr i64 %i.mi, 48
  %i.mk = add i32 %i.ly, -3
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mj
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !19
  %i.mm = getelementptr inbounds i8, ptr %i.jz, i64 -2
  %.0.copyload.i45 = load i64, ptr %i.mm, align 1 ; 3 uses
  %i.mn = and i64 %.0.copyload.i45, -65536
  %i.mo = mul i64 %i.mn, 506832829
  %i.mp = lshr i64 %i.mo, 48
  %i.mq = mul i64 %.0.copyload.i45, 33215796281344
  %i.mr = lshr i64 %i.mq, 48
  %i.ms = add i32 %i.ly, -2
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mr
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !19
  %i.mu = shl i64 %.0.copyload.i45, 8
  %i.mv = and i64 %i.mu, -65536
  %i.mw = mul i64 %i.mv, 506832829
  %i.mx = lshr i64 %i.mw, 48
  %i.my = add i32 %i.ly, -1
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mp ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !19
  store i32 %i.ly, ptr %i.na, align 4, !tbaa !19
  %.pn = sext i32 %i.nb to i64
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %i.nc = ptrtoint ptr %.4.i to i64
  %i.nd = sub i64 %i.lw, %i.nc                    ; 2 uses
  %i.ne = icmp slt i64 %i.nd, 262129
  br i1 %i.ne, label %.lr.ph267, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.backedge.us, %.backedge.us209, %bb.b
  %.089 = phi ptr [ %3, %bb.b ], [ %.190, %.split ], [ %.190, %.split.us ], [ %.190, %.backedge.us ], [ %.190, %.backedge.us209 ], [ %i.ls, %EmitCopyLen.exit ], [ %i.ha, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %.split ], [ %.1, %.split.us ], [ %.1, %.backedge.us ], [ %.1, %.backedge.us209 ], [ %i.ew, %EmitCopyLen.exit ], [ %i.ew, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i284, %bb.b ], [ %.0294.i, %.split ], [ %.0294.i, %.split.us ], [ %.0294.i, %.backedge.us ], [ %.0294.i, %.backedge.us209 ], [ %i.jz, %EmitCopyLen.exit ], [ %i.dt, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.nf = icmp ult ptr %.3297.i, %i.e
  br i1 %i.nf, label %bb.ap, label %CreateCommands.exit

bb.ap:                                            ; preds = %.thread125
  %i.ng = ptrtoint ptr %i.e to i64
  %i.nh = ptrtoint ptr %.3297.i to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 2 uses
  %i.nj = trunc i64 %i.ni to i32                  ; 10 uses
  %i.nk = icmp ult i32 %i.nj, 6
  br i1 %i.nk, label %EmitInsertLen.exit35, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nl = icmp ult i32 %i.nj, 130
  br i1 %i.nl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nm = add nsw i32 %i.nj, -2                   ; 3 uses
  %i.nn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nm, i1 true)
  %i.no = sub nuw nsw i32 30, %i.nn               ; 3 uses
  %i.np = lshr i32 %i.nm, %i.no                   ; 2 uses
  %i.nq = shl nuw nsw i32 %i.no, 1
  %i.nr = add nuw nsw i32 %i.np, 2
  %i.ns = add nuw nsw i32 %i.nr, %i.nq
  %i.nt = shl nuw nsw i32 %i.np, %i.no
  %i.nu = sub nsw i32 %i.nm, %i.nt
  %i.nv = shl nsw i32 %i.nu, 8
  %i.nw = or i32 %i.nv, %i.ns
  br label %EmitInsertLen.exit35

bb.as:                                            ; preds = %bb.aq
  %i.nx = icmp ult i32 %i.nj, 2114
  br i1 %i.nx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ny = add nsw i32 %i.nj, -66                  ; 2 uses
  %i.nz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ny, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.nz
  %i.oa = add nsw i32 %.neg.i34, %i.ny
  %i.ob = shl nsw i32 %i.oa, 8
  %reass.sub291 = sub nsw i32 %i.ob, %i.nz
  %i.oc = add nsw i32 %reass.sub291, 41
  br label %EmitInsertLen.exit35

bb.au:                                            ; preds = %bb.as
  %i.od = icmp ult i32 %i.nj, 6210
  br i1 %i.od, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oe = shl nuw nsw i32 %i.nj, 8
  %i.of = add nsw i32 %i.oe, -541163
  br label %EmitInsertLen.exit35

bb.aw:                                            ; preds = %bb.au
  %i.og = icmp ult i32 %i.nj, 22594
  %i.oh = shl i32 %i.nj, 8                        ; 2 uses
  br i1 %i.og, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.oi = add nsw i32 %i.oh, -1589738
  br label %EmitInsertLen.exit35

bb.ay:                                            ; preds = %bb.aw
  %i.oj = add i32 %i.oh, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %bb.ay
  %.sink476 = phi i32 [ %i.oj, %bb.ay ], [ %i.nw, %bb.ar ], [ %i.oc, %bb.at ], [ %i.of, %bb.av ], [ %i.oi, %bb.ax ], [ %i.nj, %bb.ap ]
  store i32 %.sink476, ptr %.089, align 4, !tbaa !19
  %i.ok = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.ol = and i64 %i.ni, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ol, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ol
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.ok, %EmitInsertLen.exit35 ], [ %.089, %.thread125 ]
  %.3 = phi ptr [ %i.om, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.on = ptrtoint ptr %.3 to i64
  %i.oo = sub i64 %i.on, %i.b                     ; 2 uses
  %i.op = uitofp nneg i64 %i.d to double
  %i.oq = uitofp i64 %i.oo to double
  %i.or = fmul nnan double %i.op, f0x3FEF5C28F5C28F5C
  %i.os = fcmp ogt double %i.or, %i.oq
  br i1 %i.os, label %ShouldCompress.exit.thread, label %bb.az

bb.az:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.i
  %.014.i = phi i64 [ %i.oz, %.lr.ph.i ], [ 0, %bb.az ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i284, i64 %.014.i
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !15
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ov ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !19
  %i.oy = add i32 %i.ox, 1
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !19
  %i.oz = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.pa = icmp samesign ult i64 %i.oz, %i.d
  br i1 %i.pa, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.pb = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.pc = uitofp nneg i64 %i.pb to double
  %i.pd = fmul nnan double %i.pc, f0x3FEF5C28F5C28F5C
  %i.pe = fdiv double %i.pd, 4.300000e+01
  %i.pf = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.pg = fcmp uge double %i.pf, %i.pe
  br i1 %i.pg, label %bb.ba, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.ph = ptrtoint ptr %.5 to i64
  %i.pi = sub i64 %i.ph, %i.c
  %i.pj = ashr exact i64 %i.pi, 2
end_hunk_8
begin_hunk_9_@BrotliCompressFragmentTwoPassImpl17:bb.a
bb.h:                                             ; preds = %.lr.ph234
  %i.cu = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = ptrtoint ptr %.026.i20231 to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr i64 %i.cv, 3
  %i.da = add i64 %i.cy, %i.cz
  br label %FindMatchLengthWithLimit.exit33

bb.i:                                             ; preds = %.lr.ph234
  %i.db = getelementptr inbounds nuw i8, ptr %.024.i21232, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.026.i20231, i64 8 ; 2 uses
  %i.dd = add i64 %.022.i22233, -8                ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 7
  br i1 %i.de, label %.lr.ph234, label %.preheader142, !llvm.loop !1

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %bb.j
  %.123.i26241 = phi i64 [ %i.di, %bb.j ], [ %.022.i22.lcssa, %.lr.ph242.preheader ]
  %.125.i25240 = phi ptr [ %i.dj, %bb.j ], [ %.024.i21.lcssa, %.lr.ph242.preheader ] ; 2 uses
  %.228.i24239 = phi ptr [ %i.dk, %bb.j ], [ %.026.i20.lcssa, %.lr.ph242.preheader ] ; 3 uses
  %i.df = load i8, ptr %.228.i24239, align 1, !tbaa !15
  %i.dg = load i8, ptr %.125.i25240, align 1, !tbaa !15
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %.critedge.i28

bb.j:                                             ; preds = %.lr.ph242
  %i.di = add nsw i64 %.123.i26241, -1            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.125.i25240, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.228.i24239, i64 1
  %.not.i27 = icmp eq i64 %i.di, 0
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph242, !llvm.loop !2

.critedge.i28:                                    ; preds = %bb.j, %.lr.ph242, %.preheader142
  %.228.i24.lcssa = phi ptr [ %.026.i20.lcssa, %.preheader142 ], [ %.228.i24239, %.lr.ph242 ], [ %scevgep, %bb.j ]
  %i.dl = ptrtoint ptr %.228.i24.lcssa to i64
  %i.dm = ptrtoint ptr %i.cq to i64
  %i.dn = sub i64 %i.dl, %i.dm
  br label %FindMatchLengthWithLimit.exit33

FindMatchLengthWithLimit.exit33:                  ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.da, %bb.h ], [ %i.dn, %.critedge.i28 ] ; 4 uses
  %i.do = add i64 %.2.i29, 6                      ; 7 uses
  %i.dp = trunc i64 %.us-phi229 to i32            ; 3 uses
  %i.dq = ptrtoint ptr %.0294.i to i64
  %i.dr = sub i64 %.us-phi228, %i.dq              ; 2 uses
  %i.ds = trunc i64 %i.dr to i32                  ; 10 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.us-phi230, i64 %i.do ; 9 uses
  %i.du = icmp ult i32 %i.ds, 6
  br i1 %i.du, label %EmitInsertLen.exit, label %bb.k

bb.k:                                             ; preds = %FindMatchLengthWithLimit.exit33
  %i.dv = icmp ult i32 %i.ds, 130
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dw = add nsw i32 %i.ds, -2                   ; 3 uses
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dw, i1 true)
  %i.dy = sub nuw nsw i32 30, %i.dx               ; 3 uses
  %i.dz = lshr i32 %i.dw, %i.dy                   ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dy, 1
  %i.eb = add nuw nsw i32 %i.dz, 2
  %i.ec = add nuw nsw i32 %i.eb, %i.ea
  %i.ed = shl nuw nsw i32 %i.dz, %i.dy
  %i.ee = sub nsw i32 %i.dw, %i.ed
  %i.ef = shl nsw i32 %i.ee, 8
  %i.eg = or i32 %i.ef, %i.ec
  br label %EmitInsertLen.exit

bb.m:                                             ; preds = %bb.k
  %i.eh = icmp ult i32 %i.ds, 2114
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = add nsw i32 %i.ds, -66                  ; 2 uses
  %i.ej = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ej
  %i.ek = add nsw i32 %.neg.i, %i.ei
  %i.el = shl nsw i32 %i.ek, 8
  %reass.sub = sub nsw i32 %i.el, %i.ej
  %i.em = add nsw i32 %reass.sub, 41
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %bb.m
  %i.en = icmp ult i32 %i.ds, 6210
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = shl nuw nsw i32 %i.ds, 8
  %i.ep = add nsw i32 %i.eo, -541163
  br label %EmitInsertLen.exit

bb.q:                                             ; preds = %bb.o
  %i.eq = icmp ult i32 %i.ds, 22594
  %i.er = shl i32 %i.ds, 8                        ; 2 uses
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.es = add nsw i32 %i.er, -1589738
  br label %EmitInsertLen.exit

bb.s:                                             ; preds = %bb.q
  %i.et = add i32 %i.er, -5784041
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %FindMatchLengthWithLimit.exit33, %bb.l, %bb.n, %bb.p, %bb.r, %bb.s
  %.sink = phi i32 [ %i.et, %bb.s ], [ %i.eg, %bb.l ], [ %i.em, %bb.n ], [ %i.ep, %bb.p ], [ %i.es, %bb.r ], [ %i.ds, %FindMatchLengthWithLimit.exit33 ]
  store i32 %.sink, ptr %.190, align 4, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %sext.i = shl i64 %i.dr, 32
  %i.ev = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0294.i, i64 %i.ev, i1 false)
  %i.ew = getelementptr inbounds i8, ptr %.1, i64 %i.ev ; 3 uses
  %i.ex = icmp eq i32 %.0290.i.fr, %i.dp
  br i1 %i.ex, label %bb.u, label %bb.t

bb.t:                                             ; preds = %EmitInsertLen.exit
  %i.ey = add i32 %i.dp, 3                        ; 3 uses
  %i.ez = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true) ; 2 uses
  %i.fa = sub nsw i32 30, %i.ez                   ; 2 uses
  %i.fb = lshr i32 %i.ey, %i.fa
  %i.fc = and i32 %i.fb, 1                        ; 2 uses
  %i.fd = or disjoint i32 %i.fc, 2
  %i.fe = shl nuw i32 %i.fd, %i.fa
  %i.ff = shl nuw nsw i32 %i.ez, 1
  %reass.sub289 = sub nsw i32 %i.fc, %i.ff
  %i.fg = add nsw i32 %reass.sub289, 138
  %i.fh = sub i32 %i.ey, %i.fe
  %i.fi = shl i32 %i.fh, 8
  %i.fj = or i32 %i.fi, %i.fg
  br label %bb.u

bb.u:                                             ; preds = %EmitInsertLen.exit, %bb.t
  %storemerge = phi i32 [ %i.fj, %bb.t ], [ 64, %EmitInsertLen.exit ]
  %.1291.i = phi i32 [ %i.dp, %bb.t ], [ %.0290.i.fr, %EmitInsertLen.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.eu, align 4, !tbaa !19
  %.291 = getelementptr inbounds nuw i8, ptr %.190, i64 8 ; 5 uses
  %i.fk = icmp ult i64 %i.do, 12
  br i1 %i.fk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fl = trunc nuw nsw i64 %i.do to i32
  %i.fm = add nuw nsw i32 %i.fl, 20
  store i32 %i.fm, ptr %.291, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.w:                                             ; preds = %bb.u
  %i.fn = icmp ult i64 %i.do, 72
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fp, i1 true)
  %i.fr = sub nuw nsw i32 30, %i.fq
  %i.fs = zext nneg i32 %i.fr to i64              ; 3 uses
  %i.ft = lshr i64 %i.fo, %i.fs                   ; 2 uses
  %i.fu = shl nuw nsw i64 %i.fs, 1
  %i.fv = add nuw nsw i64 %i.ft, 28
  %i.fw = add nuw nsw i64 %i.fv, %i.fu
  %i.fx = shl nuw nsw i64 %i.ft, %i.fs
  %i.fy = sub nsw i64 %i.fo, %i.fx
  %i.fz = shl nsw i64 %i.fy, 8
  %i.ga = or i64 %i.fz, %i.fw
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr %.291, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.y:                                             ; preds = %bb.w
  %i.gc = icmp ult i64 %i.do, 136
  br i1 %i.gc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gd = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.ge = lshr i64 %i.gd, 5
  %i.gf = add nuw nsw i64 %i.ge, 54
  %i.gg = shl nuw nsw i64 %i.gd, 8
  %i.gh = and i64 %i.gg, 7936
  %i.gi = or i64 %i.gf, %i.gh
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  store i32 %i.gj, ptr %.291, align 4, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gk, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.aa:                                            ; preds = %bb.y
  %i.gl = icmp ult i64 %i.do, 2120
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gn, i1 true)
  %i.gp = xor i32 %i.go, 31
  %i.gq = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gr = add nuw nsw i64 %i.gq, 52
  %.neg.i36 = shl nsw i64 -1, %i.gq
  %i.gs = add nsw i64 %.neg.i36, %i.gm
  %i.gt = shl nsw i64 %i.gs, 8
  %i.gu = or disjoint i64 %i.gt, %i.gr
  %i.gv = trunc nsw i64 %i.gu to i32
  store i32 %i.gv, ptr %.291, align 4, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gw, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

bb.ac:                                            ; preds = %bb.aa
  %.tr.i = trunc i64 %i.do to i32
  %i.gx = shl i32 %.tr.i, 8
  %i.gy = add i32 %i.gx, -542657
  store i32 %i.gy, ptr %.291, align 4, !tbaa !19
  %i.gz = getelementptr inbounds nuw i8, ptr %.190, i64 12
  store i32 64, ptr %i.gz, align 4, !tbaa !19
  br label %EmitCopyLenLastDistance.exit

EmitCopyLenLastDistance.exit:                     ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac
  %.sink474 = phi i64 [ 12, %bb.v ], [ 12, %bb.x ], [ 16, %bb.z ], [ 16, %bb.ab ], [ 16, %bb.ac ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.190, i64 %.sink474 ; 4 uses
  %.not312.i = icmp ult ptr %i.dt, %i.j
  br i1 %.not312.i, label %bb.ad, label %.thread125, !prof !16

bb.ad:                                            ; preds = %EmitCopyLenLastDistance.exit
  %i.hb = getelementptr inbounds i8, ptr %i.dt, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.hb, align 1 ; 3 uses
  %i.hc = mul i64 %.0.copyload.i44, 33215796281344
  %i.hd = lshr i64 %i.hc, 47
  %i.he = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.hf = sub i64 %i.he, %i.a
  %i.hg = trunc i64 %i.hf to i32                  ; 6 uses
  %i.hh = add i32 %i.hg, -5
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hd
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !19
  %i.hj = shl i64 %.0.copyload.i44, 8
  %i.hk = and i64 %i.hj, -65536
  %i.hl = mul i64 %i.hk, 506832829
  %i.hm = lshr i64 %i.hl, 47
  %i.hn = add i32 %i.hg, -4
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hm
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !19
  %i.hp = and i64 %.0.copyload.i44, -65536
  %i.hq = mul i64 %i.hp, 506832829
  %i.hr = lshr i64 %i.hq, 47
  %i.hs = add i32 %i.hg, -3
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hr
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !19
  %i.hu = getelementptr inbounds i8, ptr %i.dt, i64 -2
  %.0.copyload.i43 = load i64, ptr %i.hu, align 1 ; 3 uses
  %i.hv = and i64 %.0.copyload.i43, -65536
  %i.hw = mul i64 %i.hv, 506832829
  %i.hx = lshr i64 %i.hw, 47
  %i.hy = mul i64 %.0.copyload.i43, 33215796281344
  %i.hz = lshr i64 %i.hy, 47
  %i.ia = add i32 %i.hg, -2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hz
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !19
  %i.ic = shl i64 %.0.copyload.i43, 8
  %i.id = and i64 %i.ic, -65536
  %i.ie = mul i64 %i.id, 506832829
  %i.if = lshr i64 %i.ie, 47
  %i.ig = add i32 %i.hg, -1
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.if
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !19
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hx ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !19
  store i32 %i.hg, ptr %i.ii, align 4, !tbaa !19
  %.pn261 = sext i32 %i.ij to i64
  %.4.i262 = getelementptr inbounds i8, ptr %1, i64 %.pn261 ; 3 uses
  %i.ik = ptrtoint ptr %.4.i262 to i64
  %i.il = sub i64 %i.he, %i.ik                    ; 2 uses
  %i.im = icmp slt i64 %i.il, 262129
  br i1 %i.im, label %.lr.ph267.preheader, label %IsMatch.exit13.thread.backedge

.lr.ph267.preheader:                              ; preds = %bb.ad
  %.0.copyload.i5275 = load i32, ptr %i.dt, align 1
  %.0.copyload.i5176 = load i32, ptr %.4.i262, align 1
  %i.in = icmp eq i32 %.0.copyload.i5275, %.0.copyload.i5176
  br i1 %i.in, label %.lr.ph81, label %IsMatch.exit13.thread.backedge

IsMatch.exit13.thread.backedge:                   ; preds = %IsMatch.exit13, %bb.ao, %.lr.ph267, %.lr.ph81, %.lr.ph267.preheader, %bb.ad
  %.190.be = phi ptr [ %i.ha, %bb.ad ], [ %i.ha, %.lr.ph267.preheader ], [ %.426380, %IsMatch.exit13 ], [ %.426380, %.lr.ph81 ], [ %i.ls, %.lr.ph267 ], [ %i.ls, %bb.ao ]
  %.0294.i.be = phi ptr [ %i.dt, %bb.ad ], [ %i.dt, %.lr.ph267.preheader ], [ %.1.i26578, %IsMatch.exit13 ], [ %.1.i26578, %.lr.ph81 ], [ %i.jz, %.lr.ph267 ], [ %i.jz, %bb.ao ]
  %.0290.i.be = phi i32 [ %.1291.i, %bb.ad ], [ %.1291.i, %.lr.ph267.preheader ], [ %.2292.i26479, %IsMatch.exit13 ], [ %.2292.i26479, %.lr.ph81 ], [ %i.ka, %.lr.ph267 ], [ %i.ka, %bb.ao ]
  br label %IsMatch.exit13.thread

.lr.ph267:                                        ; preds = %bb.ao
  %.0.copyload.i52 = load i32, ptr %i.jz, align 1
  %.0.copyload.i51 = load i32, ptr %.4.i, align 1
  %i.io = icmp eq i32 %.0.copyload.i52, %.0.copyload.i51
  br i1 %i.io, label %.lr.ph81, label %IsMatch.exit13.thread.backedge

.lr.ph81:                                         ; preds = %.lr.ph267.preheader, %.lr.ph267
  %.426380 = phi ptr [ %i.ls, %.lr.ph267 ], [ %i.ha, %.lr.ph267.preheader ] ; 5 uses
  %.2292.i26479 = phi i32 [ %i.ka, %.lr.ph267 ], [ %.1291.i, %.lr.ph267.preheader ] ; 2 uses
  %.1.i26578 = phi ptr [ %i.jz, %.lr.ph267 ], [ %i.dt, %.lr.ph267.preheader ] ; 6 uses
  %.4.i26677 = phi ptr [ %.4.i, %.lr.ph267 ], [ %.4.i262, %.lr.ph267.preheader ] ; 3 uses
  %i.ip = phi i64 [ %i.lw, %.lr.ph267 ], [ %i.he, %.lr.ph267.preheader ]
  %i.iq = phi i64 [ %i.nd, %.lr.ph267 ], [ %i.il, %.lr.ph267.preheader ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 4
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 4
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = icmp eq i8 %i.is, %i.iu
  br i1 %i.iv, label %IsMatch.exit13, label %IsMatch.exit13.thread.backedge

IsMatch.exit13:                                   ; preds = %.lr.ph81
  %i.iw = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 5
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 5
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %.not = icmp eq i8 %i.ix, %i.iz
  br i1 %.not, label %bb.ae, label %IsMatch.exit13.thread.backedge

bb.ae:                                            ; preds = %IsMatch.exit13
  %i.ja = getelementptr inbounds nuw i8, ptr %.4.i26677, i64 6 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 6 ; 2 uses
  %i.jc = sub i64 %.neg136, %i.ip                 ; 3 uses
  %i.jd = icmp ugt i64 %i.jc, 7
  br i1 %i.jd, label %.lr.ph249, label %.preheader

.preheader:                                       ; preds = %bb.ag, %bb.ae
  %.026.i.lcssa = phi ptr [ %i.ja, %bb.ae ], [ %i.jm, %bb.ag ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.jb, %bb.ae ], [ %i.jl, %bb.ag ]
  %.022.i.lcssa = phi i64 [ %i.jc, %bb.ae ], [ %i.jn, %bb.ag ] ; 3 uses
  %.not.i16253 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i16253, label %.critedge.i17, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.preheader
  %scevgep363 = getelementptr i8, ptr %.026.i.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph257

.lr.ph249:                                        ; preds = %bb.ae, %bb.ag
  %.022.i248 = phi i64 [ %i.jn, %bb.ag ], [ %i.jc, %bb.ae ]
  %.024.i247 = phi ptr [ %i.jl, %bb.ag ], [ %i.jb, %bb.ae ] ; 2 uses
  %.026.i246 = phi ptr [ %i.jm, %bb.ag ], [ %i.ja, %bb.ae ] ; 3 uses
  %.0.copyload.i39 = load i64, ptr %.024.i247, align 1 ; 2 uses
  %.0.copyload.i38 = load i64, ptr %.026.i246, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i39, %.0.copyload.i38
  br i1 %.not30.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph249
  %i.je = xor i64 %.0.copyload.i38, %.0.copyload.i39
  %i.jf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.je, i1 true)
  %i.jg = ptrtoint ptr %.026.i246 to i64
  %i.jh = ptrtoint ptr %i.ja to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = lshr i64 %i.jf, 3
  %i.jk = add i64 %i.ji, %i.jj
  br label %FindMatchLengthWithLimit.exit

bb.ag:                                            ; preds = %.lr.ph249
  %i.jl = getelementptr inbounds nuw i8, ptr %.024.i247, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.026.i246, i64 8 ; 2 uses
  %i.jn = add i64 %.022.i248, -8                  ; 3 uses
  %i.jo = icmp ugt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph249, label %.preheader, !llvm.loop !1

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %bb.ah
  %.123.i256 = phi i64 [ %i.js, %bb.ah ], [ %.022.i.lcssa, %.lr.ph257.preheader ]
  %.125.i255 = phi ptr [ %i.jt, %bb.ah ], [ %.024.i.lcssa, %.lr.ph257.preheader ] ; 2 uses
  %.228.i254 = phi ptr [ %i.ju, %bb.ah ], [ %.026.i.lcssa, %.lr.ph257.preheader ] ; 3 uses
  %i.jp = load i8, ptr %.228.i254, align 1, !tbaa !15
  %i.jq = load i8, ptr %.125.i255, align 1, !tbaa !15
  %i.jr = icmp eq i8 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ah, label %.critedge.i17

bb.ah:                                            ; preds = %.lr.ph257
  %i.js = add nsw i64 %.123.i256, -1              ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.125.i255, i64 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.228.i254, i64 1
  %.not.i16 = icmp eq i64 %i.js, 0
  br i1 %.not.i16, label %.critedge.i17, label %.lr.ph257, !llvm.loop !2

.critedge.i17:                                    ; preds = %bb.ah, %.lr.ph257, %.preheader
  %.228.i.lcssa = phi ptr [ %.026.i.lcssa, %.preheader ], [ %.228.i254, %.lr.ph257 ], [ %scevgep363, %bb.ah ]
  %i.jv = ptrtoint ptr %.228.i.lcssa to i64
  %i.jw = ptrtoint ptr %i.ja to i64
  %i.jx = sub i64 %i.jv, %i.jw
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.af, %.critedge.i17
  %.2.i18 = phi i64 [ %i.jk, %bb.af ], [ %i.jx, %.critedge.i17 ] ; 5 uses
  %i.jy = add i64 %.2.i18, 6                      ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1.i26578, i64 %i.jy ; 9 uses
  %i.ka = trunc i64 %i.iq to i32                  ; 4 uses
  %i.kb = icmp ult i64 %i.jy, 10
  br i1 %i.kb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.kc = trunc nuw nsw i64 %i.jy to i32
  %i.kd = add nuw nsw i32 %i.kc, 38
  br label %EmitCopyLen.exit

bb.aj:                                            ; preds = %FindMatchLengthWithLimit.exit
  %i.ke = icmp ult i64 %i.jy, 134
  br i1 %i.ke, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kf = trunc nuw nsw i64 %.2.i18 to i32
  %i.kg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kf, i1 true)
  %i.kh = sub nuw nsw i32 30, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64              ; 3 uses
  %i.kj = lshr i64 %.2.i18, %i.ki                 ; 2 uses
  %i.kk = shl nuw nsw i64 %i.ki, 1
  %i.kl = add nuw nsw i64 %i.kj, 44
  %i.km = add nuw nsw i64 %i.kl, %i.kk
  %i.kn = shl nuw nsw i64 %i.kj, %i.ki
  %i.ko = sub nsw i64 %.2.i18, %i.kn
  %i.kp = shl nsw i64 %i.ko, 8
  %i.kq = or i64 %i.kp, %i.km
  %i.kr = trunc i64 %i.kq to i32
  br label %EmitCopyLen.exit

bb.al:                                            ; preds = %bb.aj
  %i.ks = icmp ult i64 %i.jy, 2118
  br i1 %i.ks, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kt = add nsw i64 %.2.i18, -64                ; 2 uses
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ku, i1 true)
  %i.kw = xor i32 %i.kv, 31
  %i.kx = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.ky = add nuw nsw i64 %i.kx, 52
  %.neg.i48 = shl nsw i64 -1, %i.kx
  %i.kz = add nsw i64 %.neg.i48, %i.kt
  %i.la = shl nsw i64 %i.kz, 8
  %i.lb = or disjoint i64 %i.la, %i.ky
  %i.lc = trunc nsw i64 %i.lb to i32
  br label %EmitCopyLen.exit

bb.an:                                            ; preds = %bb.al
  %.tr.i47 = trunc i64 %i.jy to i32
  %i.ld = shl i32 %.tr.i47, 8
  %i.le = add i32 %i.ld, -542145
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.ai, %bb.ak, %bb.am, %bb.an
  %.sink475 = phi i32 [ %i.kd, %bb.ai ], [ %i.kr, %bb.ak ], [ %i.lc, %bb.am ], [ %i.le, %bb.an ]
  store i32 %.sink475, ptr %.426380, align 4, !tbaa !19
  %i.lf = getelementptr inbounds nuw i8, ptr %.426380, i64 4
  %i.lg = add i32 %i.ka, 3                        ; 3 uses
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lg, i1 true) ; 2 uses
  %i.li = sub nsw i32 30, %i.lh                   ; 2 uses
  %i.lj = lshr i32 %i.lg, %i.li
  %i.lk = and i32 %i.lj, 1                        ; 2 uses
  %i.ll = or disjoint i32 %i.lk, 2
  %i.lm = shl nuw i32 %i.ll, %i.li
  %i.ln = shl nuw nsw i32 %i.lh, 1
  %reass.sub290 = sub nsw i32 %i.lk, %i.ln
  %i.lo = add nsw i32 %reass.sub290, 138
  %i.lp = sub i32 %i.lg, %i.lm
  %i.lq = shl i32 %i.lp, 8
  %i.lr = or i32 %i.lq, %i.lo
  store i32 %i.lr, ptr %i.lf, align 4, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %.426380, i64 8 ; 4 uses
  %.not314.i = icmp ult ptr %i.jz, %i.j
  br i1 %.not314.i, label %bb.ao, label %.thread125, !prof !16

bb.ao:                                            ; preds = %EmitCopyLen.exit
  %i.lt = getelementptr inbounds i8, ptr %i.jz, i64 -5
  %.0.copyload.i46 = load i64, ptr %i.lt, align 1 ; 3 uses
  %i.lu = mul i64 %.0.copyload.i46, 33215796281344
  %i.lv = lshr i64 %i.lu, 47
  %i.lw = ptrtoint ptr %i.jz to i64               ; 3 uses
  %i.lx = sub i64 %i.lw, %i.a
  %i.ly = trunc i64 %i.lx to i32                  ; 6 uses
  %i.lz = add i32 %i.ly, -5
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.lv
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !19
  %i.mb = shl i64 %.0.copyload.i46, 8
  %i.mc = and i64 %i.mb, -65536
  %i.md = mul i64 %i.mc, 506832829
  %i.me = lshr i64 %i.md, 47
  %i.mf = add i32 %i.ly, -4
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.me
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !19
  %i.mh = and i64 %.0.copyload.i46, -65536
  %i.mi = mul i64 %i.mh, 506832829
  %i.mj = lshr i64 %i.mi, 47
  %i.mk = add i32 %i.ly, -3
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mj
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !19
  %i.mm = getelementptr inbounds i8, ptr %i.jz, i64 -2
  %.0.copyload.i45 = load i64, ptr %i.mm, align 1 ; 3 uses
  %i.mn = and i64 %.0.copyload.i45, -65536
  %i.mo = mul i64 %i.mn, 506832829
  %i.mp = lshr i64 %i.mo, 47
  %i.mq = mul i64 %.0.copyload.i45, 33215796281344
  %i.mr = lshr i64 %i.mq, 47
  %i.ms = add i32 %i.ly, -2
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mr
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !19
  %i.mu = shl i64 %.0.copyload.i45, 8
  %i.mv = and i64 %i.mu, -65536
  %i.mw = mul i64 %i.mv, 506832829
  %i.mx = lshr i64 %i.mw, 47
  %i.my = add i32 %i.ly, -1
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !19
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mp ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !19
  store i32 %i.ly, ptr %i.na, align 4, !tbaa !19
  %.pn = sext i32 %i.nb to i64
  %.4.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %i.nc = ptrtoint ptr %.4.i to i64
  %i.nd = sub i64 %i.lw, %i.nc                    ; 2 uses
  %i.ne = icmp slt i64 %i.nd, 262129
  br i1 %i.ne, label %.lr.ph267, label %IsMatch.exit13.thread.backedge

.thread125:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.backedge.us, %.backedge.us209, %bb.b
  %.089 = phi ptr [ %3, %bb.b ], [ %.190, %.split ], [ %.190, %.split.us ], [ %.190, %.backedge.us ], [ %.190, %.backedge.us209 ], [ %i.ls, %EmitCopyLen.exit ], [ %i.ha, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.0 = phi ptr [ %4, %bb.b ], [ %.1, %.split ], [ %.1, %.split.us ], [ %.1, %.backedge.us ], [ %.1, %.backedge.us209 ], [ %i.ew, %EmitCopyLen.exit ], [ %i.ew, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %.3297.i = phi ptr [ %.0.i284, %bb.b ], [ %.0294.i, %.split ], [ %.0294.i, %.split.us ], [ %.0294.i, %.backedge.us ], [ %.0294.i, %.backedge.us209 ], [ %i.jz, %EmitCopyLen.exit ], [ %i.dt, %EmitCopyLenLastDistance.exit ] ; 3 uses
  %i.nf = icmp ult ptr %.3297.i, %i.e
  br i1 %i.nf, label %bb.ap, label %CreateCommands.exit

bb.ap:                                            ; preds = %.thread125
  %i.ng = ptrtoint ptr %i.e to i64
  %i.nh = ptrtoint ptr %.3297.i to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 2 uses
  %i.nj = trunc i64 %i.ni to i32                  ; 10 uses
  %i.nk = icmp ult i32 %i.nj, 6
  br i1 %i.nk, label %EmitInsertLen.exit35, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nl = icmp ult i32 %i.nj, 130
  br i1 %i.nl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nm = add nsw i32 %i.nj, -2                   ; 3 uses
  %i.nn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nm, i1 true)
  %i.no = sub nuw nsw i32 30, %i.nn               ; 3 uses
  %i.np = lshr i32 %i.nm, %i.no                   ; 2 uses
  %i.nq = shl nuw nsw i32 %i.no, 1
  %i.nr = add nuw nsw i32 %i.np, 2
  %i.ns = add nuw nsw i32 %i.nr, %i.nq
  %i.nt = shl nuw nsw i32 %i.np, %i.no
  %i.nu = sub nsw i32 %i.nm, %i.nt
  %i.nv = shl nsw i32 %i.nu, 8
  %i.nw = or i32 %i.nv, %i.ns
  br label %EmitInsertLen.exit35

bb.as:                                            ; preds = %bb.aq
  %i.nx = icmp ult i32 %i.nj, 2114
  br i1 %i.nx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ny = add nsw i32 %i.nj, -66                  ; 2 uses
  %i.nz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ny, i1 true) ; 2 uses
  %.neg.i34 = ashr exact i32 -2147483648, %i.nz
  %i.oa = add nsw i32 %.neg.i34, %i.ny
  %i.ob = shl nsw i32 %i.oa, 8
  %reass.sub291 = sub nsw i32 %i.ob, %i.nz
  %i.oc = add nsw i32 %reass.sub291, 41
  br label %EmitInsertLen.exit35

bb.au:                                            ; preds = %bb.as
  %i.od = icmp ult i32 %i.nj, 6210
  br i1 %i.od, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oe = shl nuw nsw i32 %i.nj, 8
  %i.of = add nsw i32 %i.oe, -541163
  br label %EmitInsertLen.exit35

bb.aw:                                            ; preds = %bb.au
  %i.og = icmp ult i32 %i.nj, 22594
  %i.oh = shl i32 %i.nj, 8                        ; 2 uses
  br i1 %i.og, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.oi = add nsw i32 %i.oh, -1589738
  br label %EmitInsertLen.exit35

bb.ay:                                            ; preds = %bb.aw
  %i.oj = add i32 %i.oh, -5784041
  br label %EmitInsertLen.exit35

EmitInsertLen.exit35:                             ; preds = %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %bb.ay
  %.sink476 = phi i32 [ %i.oj, %bb.ay ], [ %i.nw, %bb.ar ], [ %i.oc, %bb.at ], [ %i.of, %bb.av ], [ %i.oi, %bb.ax ], [ %i.nj, %bb.ap ]
  store i32 %.sink476, ptr %.089, align 4, !tbaa !19
  %i.ok = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %i.ol = and i64 %i.ni, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3297.i, i64 %i.ol, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ol
  br label %CreateCommands.exit

CreateCommands.exit:                              ; preds = %.thread125, %EmitInsertLen.exit35
  %.5 = phi ptr [ %i.ok, %EmitInsertLen.exit35 ], [ %.089, %.thread125 ]
  %.3 = phi ptr [ %i.om, %EmitInsertLen.exit35 ], [ %.0, %.thread125 ]
  %i.on = ptrtoint ptr %.3 to i64
  %i.oo = sub i64 %i.on, %i.b                     ; 2 uses
  %i.op = uitofp nneg i64 %i.d to double
  %i.oq = uitofp i64 %i.oo to double
  %i.or = fmul nnan double %i.op, f0x3FEF5C28F5C28F5C
  %i.os = fcmp ogt double %i.or, %i.oq
  br i1 %i.os, label %ShouldCompress.exit.thread, label %bb.az

bb.az:                                            ; preds = %CreateCommands.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.i
  %.014.i = phi i64 [ %i.oz, %.lr.ph.i ], [ 0, %bb.az ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i284, i64 %.014.i
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !15
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ov ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !19
  %i.oy = add i32 %i.ox, 1
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !19
  %i.oz = add nuw nsw i64 %.014.i, 43             ; 2 uses
  %i.pa = icmp samesign ult i64 %i.oz, %i.d
  br i1 %i.pa, label %.lr.ph.i, label %ShouldCompress.exit, !llvm.loop !3

ShouldCompress.exit:                              ; preds = %.lr.ph.i
  %i.pb = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.pc = uitofp nneg i64 %i.pb to double
  %i.pd = fmul nnan double %i.pc, f0x3FEF5C28F5C28F5C
  %i.pe = fdiv double %i.pd, 4.300000e+01
  %i.pf = tail call double @BrotliBitsEntropy(ptr noundef nonnull %0, i64 noundef 256) #9
  %i.pg = fcmp uge double %i.pf, %i.pe
  br i1 %i.pg, label %bb.ba, label %ShouldCompress.exit.thread

ShouldCompress.exit.thread:                       ; preds = %CreateCommands.exit, %ShouldCompress.exit
  %i.ph = ptrtoint ptr %.5 to i64
  %i.pi = sub i64 %i.ph, %i.c
  %i.pj = ashr exact i64 %i.pi, 2
end_hunk_9
