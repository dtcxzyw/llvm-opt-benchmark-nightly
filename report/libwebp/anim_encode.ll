Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/anim_encode?download=true
inline.NumInlined: 124
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@GenerateCandidates:bb.a
  %i.dd = and i32 %i.dc, 255
  %i.de = sub nsw i32 %i.dd, %i.db
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %i.dg = mul nuw nsw i32 %i.df, %i.cr
  %.not.i.i = icmp sgt i32 %i.dg, %i.bu
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = sub nsw i32 %i.ct, %i.cx
  %i.di = tail call i32 @llvm.abs.i32(i32 %i.dh, i1 true)
  %i.dj = mul nuw nsw i32 %i.di, %i.cr
  %.not23.i.i = icmp samesign ugt i32 %i.dj, %i.bu
  br i1 %.not23.i.i, label %.thread, label %PixelsAreSimilar.exit.i

PixelsAreSimilar.exit.i:                          ; preds = %bb.i
  %i.dk = sub nsw i32 %i.cu, %i.cy
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = mul nuw nsw i32 %i.dl, %i.cr
  %.not30.i = icmp samesign ugt i32 %i.dm, %i.bu
  br i1 %.not30.i, label %.thread, label %.critedge.i101

.critedge.i101:                                   ; preds = %PixelsAreSimilar.exit.i, %bb.f
  %indvars.iv.next.i102 = add nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next.i102, %i.cc
  br i1 %i.dn, label %bb.f, label %._crit_edge.i103, !llvm.loop !145

._crit_edge.i103:                                 ; preds = %.critedge.i101
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.do = icmp slt i64 %indvars.iv.next39.i, %i.cf
  br i1 %i.do, label %.lr.ph.i98, label %.thread, !llvm.loop !146

.thread:                                          ; preds = %._crit_edge.i103, %PixelsAreSimilar.exit.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread136, %CopyCurrentCanvas.exit
  %i.dp = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %i.ay, %.thread136 ], [ %i.ay, %.lr.ph35.i ], [ %i.ay, %PixelsAreSimilar.exit.i ], [ %i.ay, %bb.g ], [ %i.ay, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %._crit_edge.i103 ] ; 3 uses
  %i.dq = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread136 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.i103 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !84
  %.not90 = icmp eq i32 %i.ds, 0
  br i1 %.not90, label %.split, label %bb.j

.split:                                           ; preds = %.thread
  %.not91 = icmp eq i32 %4, 0
  br i1 %.not91, label %PickBestCandidate.exit.thread, label %CopyCurrentCanvas.exit105

bb.j:                                             ; preds = %.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !101
  %.not92 = icmp eq i32 %i.du, 0
  br i1 %.not92, label %bb.k, label %CopyCurrentCanvas.exit105

bb.k:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dw = tail call i32 @WebPGetColorPalette(ptr noundef nonnull %i.dv, ptr noundef null) #14 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 193
  br i1 %i.dx, label %PickBestCandidate.exit.thread, label %.thread138

.thread138:                                       ; preds = %bb.k
  %i.dy = icmp sgt i32 %i.dw, 30                  ; 2 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !36
  %i.dz = icmp eq i32 %.pre, 0
  br i1 %i.dz, label %CopyCurrentCanvas.exit105, label %bb.l

bb.l:                                             ; preds = %.thread138
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !72
  tail call void @WebPCopyPixels(ptr noundef %i.eb, ptr noundef nonnull %i.d) #14
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 144
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !73
  store <2 x ptr> %i.ef, ptr %i.ee, align 8, !tbaa !73
  store i32 0, ptr %i.g, align 8, !tbaa !36
  br label %CopyCurrentCanvas.exit105

CopyCurrentCanvas.exit105:                        ; preds = %bb.j, %.split, %.thread138, %bb.l
  %.083.shrunk141181 = phi i1 [ %i.dy, %bb.l ], [ %i.dy, %.thread138 ], [ true, %bb.j ], [ false, %.split ] ; 2 uses
  br i1 %i.dp, label %bb.m, label %bb.q

bb.m:                                             ; preds = %CopyCurrentCanvas.exit105
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !104
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !105
  %i.en = mul nsw i32 %i.em, %i.ek
  %i.eo = sext i32 %i.en to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.eq = load i32, ptr %i.el, align 4, !tbaa !51 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph41.i, label %IncreaseTransparency.exit

.lr.ph41.i:                                       ; preds = %bb.m
  %i.es = load ptr, ptr %i.eg, align 8, !tbaa !37
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !49 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.pre.i = load i32, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %.pre46.i = load i32, ptr %i.ej, align 8, !tbaa !50 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i106, %.lr.ph41.i
  %i.ey = phi i32 [ %i.eq, %.lr.ph41.i ], [ %i.gg, %._crit_edge.i106 ]
  %i.ez = phi i32 [ %i.et, %.lr.ph41.i ], [ %i.gh, %._crit_edge.i106 ]
  %i.fa = phi i32 [ %.pre46.i, %.lr.ph41.i ], [ %i.gi, %._crit_edge.i106 ] ; 2 uses
  %i.fb = phi i32 [ %.pre.i, %.lr.ph41.i ], [ %i.gj, %._crit_edge.i106 ] ; 2 uses
  %i.fc = phi i32 [ %.pre46.i, %.lr.ph41.i ], [ %i.gk, %._crit_edge.i106 ] ; 2 uses
  %i.fd = phi i32 [ %.pre.i, %.lr.ph41.i ], [ %i.gl, %._crit_edge.i106 ] ; 2 uses
  %.039.i = phi ptr [ %i.es, %.lr.ph41.i ], [ %i.gn, %._crit_edge.i106 ] ; 2 uses
  %.03038.i = phi i32 [ 0, %.lr.ph41.i ], [ %.1.lcssa.i, %._crit_edge.i106 ] ; 2 uses
  %.03137.i = phi i32 [ %i.et, %.lr.ph41.i ], [ %i.go, %._crit_edge.i106 ] ; 3 uses
  %i.fe = load ptr, ptr %i.eu, align 8, !tbaa !52
  %i.ff = load i32, ptr %i.ev, align 8, !tbaa !53
  %i.fg = mul nsw i32 %i.ff, %.03137.i
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fh
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !52
  %i.fk = load i32, ptr %i.ex, align 8, !tbaa !53
  %i.fl = mul nsw i32 %i.fk, %.03137.i
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = icmp sgt i32 %i.fc, 0
  br i1 %i.fo, label %.lr.ph.preheader.i, label %._crit_edge.i106

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.fp = sext i32 %i.fd to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.p, %.lr.ph.preheader.i
  %i.fq = phi i32 [ %i.fa, %.lr.ph.preheader.i ], [ %i.gb, %bb.p ]
  %i.fr = phi i32 [ %i.fb, %.lr.ph.preheader.i ], [ %i.gc, %bb.p ]
  %indvars.iv.i108 = phi i64 [ %i.fp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i110, %bb.p ] ; 4 uses
  %.135.i = phi i32 [ %.03038.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.p ]
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %indvars.iv.i108
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !18
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv.i108 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = icmp ne i32 %i.ft, %i.fv
  %.not.i109 = icmp eq i32 %i.fv, 0
  %or.cond.i = or i1 %i.fw, %.not.i109
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i107
  store i32 0, ptr %i.fu, align 4, !tbaa !18
  %i.fx = load i32, ptr %i.ei, align 8, !tbaa !48
  %i.fy = sext i32 %i.fx to i64
  %i.fz = sub nsw i64 %indvars.iv.i108, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.039.i, i64 %i.fz
  store i8 1, ptr %i.ga, align 1, !tbaa !21
  %.pre47.i = load i32, ptr %i.ei, align 8, !tbaa !48
  %.pre48.i = load i32, ptr %i.ej, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i107
  %i.gb = phi i32 [ %.pre48.i, %bb.o ], [ %i.fq, %.lr.ph.i107 ] ; 4 uses
  %i.gc = phi i32 [ %.pre47.i, %bb.o ], [ %i.fr, %.lr.ph.i107 ] ; 4 uses
  %.2.i = phi i32 [ 1, %bb.o ], [ %.135.i, %.lr.ph.i107 ] ; 2 uses
  %indvars.iv.next.i110 = add nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next.i110, %i.ge
  br i1 %i.gf, label %.lr.ph.i107, label %._crit_edge.loopexit.i, !llvm.loop !147

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.pre49.i = load i32, ptr %i.ep, align 4, !tbaa !49
  %.pre50.i = load i32, ptr %i.el, align 4, !tbaa !51
  br label %._crit_edge.i106

._crit_edge.i106:                                 ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.gg = phi i32 [ %i.ey, %bb.n ], [ %.pre50.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gh = phi i32 [ %i.ez, %bb.n ], [ %.pre49.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gi = phi i32 [ %i.fa, %bb.n ], [ %i.gb, %._crit_edge.loopexit.i ]
  %i.gj = phi i32 [ %i.fb, %bb.n ], [ %i.gc, %._crit_edge.loopexit.i ]
  %i.gk = phi i32 [ %i.fc, %bb.n ], [ %i.gb, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gl = phi i32 [ %i.fd, %bb.n ], [ %i.gc, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.03038.i, %bb.n ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds i8, ptr %.039.i, i64 %i.gm
  %i.go = add nsw i32 %.03137.i, 1                ; 2 uses
  %i.gp = add nsw i32 %i.gh, %i.gg
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.n, label %IncreaseTransparency.exit, !llvm.loop !148

IncreaseTransparency.exit:                        ; preds = %._crit_edge.i106, %bb.m
  %.030.lcssa.i = phi i32 [ 0, %bb.m ], [ %.1.lcssa.i, %._crit_edge.i106 ]
  store i32 %.030.lcssa.i, ptr %i.g, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %IncreaseTransparency.exit, %CopyCurrentCanvas.exit105
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %12, ptr noundef nonnull readonly align 4 dereferenceable(116) %7, i64 116, i1 false), !tbaa.struct !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !86
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.gu, align 4, !tbaa !153
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gw = load <2 x i32>, ptr %i.gs, align 4, !tbaa !18
  store <2 x i32> %i.gw, ptr %i.gv, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.gx, align 8, !tbaa !154
  %not..i = xor i1 %i.dp, true
  %i.gy = zext i1 %not..i to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !155
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.ha, align 8, !tbaa !156
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #14
  %i.hb = load i32, ptr %12, align 4, !tbaa !71
  %i.hc = icmp eq i32 %i.hb, 0
  %or.cond.i111 = and i1 %i.dp, %i.hc
  br i1 %or.cond.i111, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 0, ptr %i.hd, align 4, !tbaa !157
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 0, ptr %i.he, align 4, !tbaa !158
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.gr, align 8, !tbaa !61
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @WebPMemoryWrite, ptr %i.hf, align 8, !tbaa !93
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr %i.b, ptr %i.hg, align 8, !tbaa !94
  %i.hh = call i32 @WebPEncode(ptr noundef nonnull %12, ptr noundef nonnull %i.gr) #14
  %.not.i.not.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.not.i, label %EncodeCandidate.exit, label %EncodeCandidate.exit.thread

EncodeCandidate.exit.thread:                      ; preds = %bb.s
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 1, ptr %i.hi, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.t

EncodeCandidate.exit:                             ; preds = %bb.s
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !63 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %.not94 = icmp eq i32 %i.hk, 0
  br i1 %.not94, label %bb.t, label %PickBestCandidate.exit135

bb.t:                                             ; preds = %EncodeCandidate.exit.thread, %EncodeCandidate.exit
  %i.hl = load i32, ptr %i.g, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !159
  %i.hn = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !160
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !160
  %i.ht = icmp ult i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.v, label %.split146

bb.v:                                             ; preds = %bb.u, %bb.t
  %.idx.i = select i1 %.not, i64 0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %i.hv, i64 48, i1 false), !tbaa.struct !161
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.hw = getelementptr i8, ptr %i.b, i64 8
  %.val30.i = load i64, ptr %i.hw, align 8, !tbaa !97
  store ptr %.val.i, ptr %i.hu, align 8, !tbaa !59
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %.val30.i, ptr %i.hx, align 8, !tbaa !83
  br i1 %.not, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !64
  %i.ia = getelementptr i8, ptr %0, i64 1096
  %.val.i.i = load ptr, ptr %i.ia, align 8, !tbaa !44
  %i.ib = getelementptr i8, ptr %0, i64 1112
  %.val13.i.i = load i64, ptr %i.ib, align 8, !tbaa !74
  %i.ic = getelementptr [104 x i8], ptr %.val.i.i, i64 %.val13.i.i
  %i.id = getelementptr [104 x i8], ptr %i.ic, i64 %i.hz ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !81
  %.not.i.i113 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i113, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ig = getelementptr i8, ptr %i.id, i64 -176
  store i32 %2, ptr %i.ig, align 8, !tbaa !85
  br label %SetPreviousDisposeMethod.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ih = getelementptr i8, ptr %i.id, i64 -112
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !77
  %.not12.i.i = icmp eq i32 %i.ii, 0
  %i.ij = select i1 %.not12.i.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.i

SetPreviousDisposeMethod.exit.i:                  ; preds = %bb.y, %bb.x
  %.sink14.i.i = phi i64 [ %i.ij, %bb.y ], [ -128, %bb.x ]
  %i.ik = getelementptr i8, ptr %i.id, i64 %.sink14.i.i
  store i32 %2, ptr %i.ik, align 8, !tbaa !89
  %i.il = load i32, ptr %i.hm, align 8, !tbaa !159 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.il, ptr %i.im, align 8, !tbaa !80
  %.not28.i = icmp eq i32 %i.il, 0
  br i1 %.not28.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %SetPreviousDisposeMethod.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !38
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !37
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !38
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %SetPreviousDisposeMethod.exit.i, %bb.v
  %i.ir = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %.not29.i = icmp eq ptr %i.ir, null
  br i1 %.not29.i, label %.split147, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.ir) #14
  %i.is = load ptr, ptr %9, align 8, !tbaa !73
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 100
  store i32 0, ptr %i.it, align 4, !tbaa !103
  br label %.split147

.split147:                                        ; preds = %bb.ab, %bb.aa
  store ptr %i.b, ptr %9, align 8, !tbaa !73
  br i1 %.083.shrunk141181, label %PickBestCandidate.exit.thread, label %PickBestCandidate.exit135

.split146:                                        ; preds = %bb.u
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.iu, align 4, !tbaa !103
  br i1 %.083.shrunk141181, label %PickBestCandidate.exit.thread, label %PickBestCandidate.exit135

PickBestCandidate.exit.thread:                    ; preds = %bb.k, %.split, %.split147, %.split146
  %i.iv = load i32, ptr %i.g, align 8, !tbaa !36
  %.not.i114 = icmp eq i32 %i.iv, 0
  br i1 %.not.i114, label %CopyCurrentCanvas.exit115, label %bb.ac

bb.ac:                                            ; preds = %PickBestCandidate.exit.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !72
  call void @WebPCopyPixels(ptr noundef %i.ix, ptr noundef nonnull %i.d) #14
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !72
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 144
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.jb = load <2 x ptr>, ptr %i.iz, align 8, !tbaa !73
  store <2 x ptr> %i.jb, ptr %i.ja, align 8, !tbaa !73
  store i32 0, ptr %i.g, align 8, !tbaa !36
  br label %CopyCurrentCanvas.exit115

CopyCurrentCanvas.exit115:                        ; preds = %PickBestCandidate.exit.thread, %bb.ac
  br i1 %i.dq, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %CopyCurrentCanvas.exit115
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !37
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 11 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !162
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 292 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !163
  %i.jj = mul nsw i32 %i.ji, %i.jg
  %i.jk = sext i32 %i.jj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jd, i8 0, i64 %i.jk, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !100
  %i.jn = load ptr, ptr %i.jc, align 8, !tbaa !37
  %i.jo = fpext float %i.jm to double
  %i.jp = fdiv double %i.jo, 1.000000e+02
  %i.jq = call double @pow(double noundef %i.jp, double noundef 5.000000e-01) #14 ; 2 uses
  %i.jr = fsub double 1.000000e+00, %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.jr, double 3.100000e+01, double %i.jq)
  %i.jt = fadd double %i.js, 5.000000e-01
  %i.ju = fptosi double %i.jt to i32              ; 24 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 284
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !49 ; 3 uses
  %i.jx = and i32 %i.jw, -8
  %i.jy = add nsw i32 %i.jx, 8                    ; 3 uses
  %i.jz = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.ka = add nsw i32 %i.jz, %i.jw
  %i.kb = and i32 %i.ka, -8                       ; 2 uses
  %i.kc = load i32, ptr %i.je, align 8, !tbaa !48 ; 3 uses
  %i.kd = and i32 %i.kc, -8
  %i.ke = add i32 %i.kd, 8                        ; 3 uses
  %i.kf = load i32, ptr %i.jf, align 8, !tbaa !50 ; 2 uses
  %i.kg = add nsw i32 %i.kf, %i.kc
  %i.kh = and i32 %i.kg, -8                       ; 2 uses
  %i.ki = icmp slt i32 %i.jy, %i.kb
  br i1 %i.ki, label %.preheader99.lr.ph.i, label %FlattenSimilarBlocks.exit

.preheader99.lr.ph.i:                             ; preds = %bb.ad
  %i.kj = icmp slt i32 %i.ke, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.kl = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 9 uses
  br i1 %i.kj, label %.preheader99.us.preheader.i, label %FlattenSimilarBlocks.exit

.preheader99.us.preheader.i:                      ; preds = %.preheader99.lr.ph.i
  %i.ko = sub nsw i32 %i.jy, %i.jw
  %i.kp = mul nsw i32 %i.ko, %i.kf
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %i.jn, i64 %i.kq
  %i.ks = sub nsw i32 %i.ke, %i.kc
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 %i.kt
  %i.kv = sext i32 %i.ke to i64
  %i.kw = sext i32 %i.kh to i64
  br label %.preheader99.us.i

.preheader99.us.i:                                ; preds = %._crit_edge.us.i, %.preheader99.us.preheader.i
  %.090117.us.i = phi ptr [ %i.py, %._crit_edge.us.i ], [ %i.ku, %.preheader99.us.preheader.i ] ; 2 uses
  %.091116.us.i = phi i32 [ %.293.us.i, %._crit_edge.us.i ], [ 0, %.preheader99.us.preheader.i ]
  %.094115.us.i = phi i32 [ %i.pz, %._crit_edge.us.i ], [ %i.jy, %.preheader99.us.preheader.i ] ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.us.i, %.preheader99.us.i
  %indvars.iv128.i = phi i64 [ %i.kv, %.preheader99.us.i ], [ %indvars.iv.next129.i, %.loopexit.us.i ] ; 3 uses
  %.089114.us.i = phi ptr [ %.090117.us.i, %.preheader99.us.i ], [ %i.mq, %.loopexit.us.i ] ; 9 uses
  %.192113.us.i = phi i32 [ %.091116.us.i, %.preheader99.us.i ], [ %.293.us.i, %.loopexit.us.i ]
  %i.kx = load ptr, ptr %i.kk, align 8, !tbaa !52
  %i.ky = load i32, ptr %i.kl, align 8, !tbaa !53 ; 2 uses
  %i.kz = mul nsw i32 %i.ky, %.094115.us.i
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.la
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %indvars.iv128.i
  %i.ld = load ptr, ptr %i.km, align 8, !tbaa !52
  %i.le = load i32, ptr %i.kn, align 8, !tbaa !53 ; 2 uses
  %i.lf = mul nsw i32 %i.le, %.094115.us.i
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.lg
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %indvars.iv128.i ; 9 uses
  %i.lj = sext i32 %i.ky to i64
  %i.lk = sext i32 %i.le to i64
  br label %.preheader98.us.i

13:                                               ; preds = %.preheader98.us.i
  %14 = load i32, ptr %invariant.gep138.i, align 4, !tbaa !18 ; 4 uses
  %15 = lshr i32 %207, 8
  %16 = and i32 %15, 255                          ; 2 uses
  %17 = and i32 %207, 255                         ; 2 uses
  %18 = lshr i32 %14, 8
  %19 = and i32 %18, 255
  %20 = and i32 %14, 255
  %21 = icmp ugt i32 %14, -16777217
  br i1 %21, label %22, label %PixelsAreSimilar.exit.thread.us.i

22:                                               ; preds = %13
  %23 = lshr i32 %14, 16
  %24 = and i32 %23, 255
  %25 = lshr i32 %207, 16
  %26 = and i32 %25, 255                          ; 2 uses
  %27 = sub nsw i32 %26, %24
  %28 = call i32 @llvm.abs.i32(i32 %27, i1 true)
  %.not.i.us.i = icmp sgt i32 %28, %i.ju
  br i1 %.not.i.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %29

29:                                               ; preds = %22
  %30 = sub nsw i32 %16, %19
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %.not23.i.us.i = icmp samesign ugt i32 %31, %i.ju
  br i1 %.not23.i.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %PixelsAreSimilar.exit.us.i

PixelsAreSimilar.exit.us.i:                       ; preds = %29
  %32 = sub nsw i32 %17, %20
  %33 = call i32 @llvm.abs.i32(i32 %32, i1 true)
  %.not97.us.i = icmp samesign ugt i32 %33, %i.ju
  br i1 %.not97.us.i, label %PixelsAreSimilar.exit.thread.us.i, label %34

34:                                               ; preds = %PixelsAreSimilar.exit.us.i
  %35 = add nsw i32 %.086105.us.i, 1
  %36 = add i32 %26, %.083106.us.i
  %37 = add i32 %16, %.080107.us.i
  %38 = add i32 %17, %.078108.us.i
  br label %PixelsAreSimilar.exit.thread.us.i

PixelsAreSimilar.exit.thread.us.i:                ; preds = %34, %PixelsAreSimilar.exit.us.i, %29, %22, %13, %.preheader98.us.i
  %.288.us.i = phi i32 [ %35, %34 ], [ %.086105.us.i, %PixelsAreSimilar.exit.us.i ], [ %.086105.us.i, %.preheader98.us.i ], [ %.086105.us.i, %29 ], [ %.086105.us.i, %22 ], [ %.086105.us.i, %13 ] ; 6 uses
  %.285.us.i = phi i32 [ %36, %34 ], [ %.083106.us.i, %PixelsAreSimilar.exit.us.i ], [ %.083106.us.i, %.preheader98.us.i ], [ %.083106.us.i, %29 ], [ %.083106.us.i, %22 ], [ %.083106.us.i, %13 ] ; 6 uses
  %.282.us.i = phi i32 [ %37, %34 ], [ %.080107.us.i, %PixelsAreSimilar.exit.us.i ], [ %.080107.us.i, %.preheader98.us.i ], [ %.080107.us.i, %29 ], [ %.080107.us.i, %22 ], [ %.080107.us.i, %13 ] ; 6 uses
  %.2.us.i = phi i32 [ %38, %34 ], [ %.078108.us.i, %PixelsAreSimilar.exit.us.i ], [ %.078108.us.i, %.preheader98.us.i ], [ %.078108.us.i, %29 ], [ %.078108.us.i, %22 ], [ %.078108.us.i, %13 ] ; 6 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 4
  %39 = load i32, ptr %gep.i.1, align 4, !tbaa !18 ; 4 uses
  %40 = icmp ugt i32 %39, -16777217
  br i1 %40, label %41, label %PixelsAreSimilar.exit.thread.us.i.1

41:                                               ; preds = %PixelsAreSimilar.exit.thread.us.i
  %gep139.i.1 = getelementptr i8, ptr %invariant.gep138.i, i64 4
  %42 = load i32, ptr %gep139.i.1, align 4, !tbaa !18 ; 4 uses
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 255                          ; 2 uses
  %45 = and i32 %39, 255                          ; 2 uses
  %46 = lshr i32 %42, 8
  %47 = and i32 %46, 255
  %48 = and i32 %42, 255
  %49 = icmp ugt i32 %42, -16777217
  br i1 %49, label %50, label %PixelsAreSimilar.exit.thread.us.i.1

50:                                               ; preds = %41
  %51 = lshr i32 %42, 16
  %52 = and i32 %51, 255
  %53 = lshr i32 %39, 16
  %54 = and i32 %53, 255                          ; 2 uses
  %55 = sub nsw i32 %54, %52
  %56 = call i32 @llvm.abs.i32(i32 %55, i1 true)
  %.not.i.us.i.1 = icmp sgt i32 %56, %i.ju
  br i1 %.not.i.us.i.1, label %PixelsAreSimilar.exit.thread.us.i.1, label %57

57:                                               ; preds = %50
  %58 = sub nsw i32 %44, %47
  %59 = call i32 @llvm.abs.i32(i32 %58, i1 true)
  %.not23.i.us.i.1 = icmp samesign ugt i32 %59, %i.ju
  br i1 %.not23.i.us.i.1, label %PixelsAreSimilar.exit.thread.us.i.1, label %PixelsAreSimilar.exit.us.i.1

PixelsAreSimilar.exit.us.i.1:                     ; preds = %57
  %60 = sub nsw i32 %45, %48
  %61 = call i32 @llvm.abs.i32(i32 %60, i1 true)
  %.not97.us.i.1 = icmp samesign ugt i32 %61, %i.ju
  br i1 %.not97.us.i.1, label %PixelsAreSimilar.exit.thread.us.i.1, label %62

62:                                               ; preds = %PixelsAreSimilar.exit.us.i.1
  %63 = add nsw i32 %.288.us.i, 1
  %64 = add i32 %54, %.285.us.i
  %65 = add i32 %44, %.282.us.i
  %66 = add i32 %45, %.2.us.i
  br label %PixelsAreSimilar.exit.thread.us.i.1

PixelsAreSimilar.exit.thread.us.i.1:              ; preds = %62, %PixelsAreSimilar.exit.us.i.1, %57, %50, %41, %PixelsAreSimilar.exit.thread.us.i
  %.288.us.i.1 = phi i32 [ %63, %62 ], [ %.288.us.i, %PixelsAreSimilar.exit.us.i.1 ], [ %.288.us.i, %PixelsAreSimilar.exit.thread.us.i ], [ %.288.us.i, %57 ], [ %.288.us.i, %50 ], [ %.288.us.i, %41 ] ; 6 uses
  %.285.us.i.1 = phi i32 [ %64, %62 ], [ %.285.us.i, %PixelsAreSimilar.exit.us.i.1 ], [ %.285.us.i, %PixelsAreSimilar.exit.thread.us.i ], [ %.285.us.i, %57 ], [ %.285.us.i, %50 ], [ %.285.us.i, %41 ] ; 6 uses
  %.282.us.i.1 = phi i32 [ %65, %62 ], [ %.282.us.i, %PixelsAreSimilar.exit.us.i.1 ], [ %.282.us.i, %PixelsAreSimilar.exit.thread.us.i ], [ %.282.us.i, %57 ], [ %.282.us.i, %50 ], [ %.282.us.i, %41 ] ; 6 uses
  %.2.us.i.1 = phi i32 [ %66, %62 ], [ %.2.us.i, %PixelsAreSimilar.exit.us.i.1 ], [ %.2.us.i, %PixelsAreSimilar.exit.thread.us.i ], [ %.2.us.i, %57 ], [ %.2.us.i, %50 ], [ %.2.us.i, %41 ] ; 6 uses
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 8
  %67 = load i32, ptr %gep.i.2, align 4, !tbaa !18 ; 4 uses
  %68 = icmp ugt i32 %67, -16777217
  br i1 %68, label %69, label %PixelsAreSimilar.exit.thread.us.i.2

69:                                               ; preds = %PixelsAreSimilar.exit.thread.us.i.1
  %gep139.i.2 = getelementptr i8, ptr %invariant.gep138.i, i64 8
  %70 = load i32, ptr %gep139.i.2, align 4, !tbaa !18 ; 4 uses
  %71 = lshr i32 %67, 8
  %72 = and i32 %71, 255                          ; 2 uses
  %73 = and i32 %67, 255                          ; 2 uses
  %74 = lshr i32 %70, 8
  %75 = and i32 %74, 255
  %76 = and i32 %70, 255
  %77 = icmp ugt i32 %70, -16777217
  br i1 %77, label %78, label %PixelsAreSimilar.exit.thread.us.i.2

78:                                               ; preds = %69
  %79 = lshr i32 %70, 16
  %80 = and i32 %79, 255
  %81 = lshr i32 %67, 16
  %82 = and i32 %81, 255                          ; 2 uses
  %83 = sub nsw i32 %82, %80
  %84 = call i32 @llvm.abs.i32(i32 %83, i1 true)
  %.not.i.us.i.2 = icmp sgt i32 %84, %i.ju
  br i1 %.not.i.us.i.2, label %PixelsAreSimilar.exit.thread.us.i.2, label %85

85:                                               ; preds = %78
  %86 = sub nsw i32 %72, %75
  %87 = call i32 @llvm.abs.i32(i32 %86, i1 true)
  %.not23.i.us.i.2 = icmp samesign ugt i32 %87, %i.ju
  br i1 %.not23.i.us.i.2, label %PixelsAreSimilar.exit.thread.us.i.2, label %PixelsAreSimilar.exit.us.i.2

PixelsAreSimilar.exit.us.i.2:                     ; preds = %85
  %88 = sub nsw i32 %73, %76
  %89 = call i32 @llvm.abs.i32(i32 %88, i1 true)
  %.not97.us.i.2 = icmp samesign ugt i32 %89, %i.ju
  br i1 %.not97.us.i.2, label %PixelsAreSimilar.exit.thread.us.i.2, label %90

90:                                               ; preds = %PixelsAreSimilar.exit.us.i.2
  %91 = add nsw i32 %.288.us.i.1, 1
  %92 = add i32 %82, %.285.us.i.1
  %93 = add i32 %72, %.282.us.i.1
  %94 = add i32 %73, %.2.us.i.1
  br label %PixelsAreSimilar.exit.thread.us.i.2

PixelsAreSimilar.exit.thread.us.i.2:              ; preds = %90, %PixelsAreSimilar.exit.us.i.2, %85, %78, %69, %PixelsAreSimilar.exit.thread.us.i.1
  %.288.us.i.2 = phi i32 [ %91, %90 ], [ %.288.us.i.1, %PixelsAreSimilar.exit.us.i.2 ], [ %.288.us.i.1, %PixelsAreSimilar.exit.thread.us.i.1 ], [ %.288.us.i.1, %85 ], [ %.288.us.i.1, %78 ], [ %.288.us.i.1, %69 ] ; 6 uses
  %.285.us.i.2 = phi i32 [ %92, %90 ], [ %.285.us.i.1, %PixelsAreSimilar.exit.us.i.2 ], [ %.285.us.i.1, %PixelsAreSimilar.exit.thread.us.i.1 ], [ %.285.us.i.1, %85 ], [ %.285.us.i.1, %78 ], [ %.285.us.i.1, %69 ] ; 6 uses
  %.282.us.i.2 = phi i32 [ %93, %90 ], [ %.282.us.i.1, %PixelsAreSimilar.exit.us.i.2 ], [ %.282.us.i.1, %PixelsAreSimilar.exit.thread.us.i.1 ], [ %.282.us.i.1, %85 ], [ %.282.us.i.1, %78 ], [ %.282.us.i.1, %69 ] ; 6 uses
  %.2.us.i.2 = phi i32 [ %94, %90 ], [ %.2.us.i.1, %PixelsAreSimilar.exit.us.i.2 ], [ %.2.us.i.1, %PixelsAreSimilar.exit.thread.us.i.1 ], [ %.2.us.i.1, %85 ], [ %.2.us.i.1, %78 ], [ %.2.us.i.1, %69 ] ; 6 uses
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 12
  %95 = load i32, ptr %gep.i.3, align 4, !tbaa !18 ; 4 uses
  %96 = icmp ugt i32 %95, -16777217
  br i1 %96, label %97, label %PixelsAreSimilar.exit.thread.us.i.3

97:                                               ; preds = %PixelsAreSimilar.exit.thread.us.i.2
  %gep139.i.3 = getelementptr i8, ptr %invariant.gep138.i, i64 12
  %98 = load i32, ptr %gep139.i.3, align 4, !tbaa !18 ; 4 uses
  %99 = lshr i32 %95, 8
  %100 = and i32 %99, 255                         ; 2 uses
  %101 = and i32 %95, 255                         ; 2 uses
  %102 = lshr i32 %98, 8
  %103 = and i32 %102, 255
  %104 = and i32 %98, 255
  %105 = icmp ugt i32 %98, -16777217
  br i1 %105, label %106, label %PixelsAreSimilar.exit.thread.us.i.3

106:                                              ; preds = %97
  %107 = lshr i32 %98, 16
  %108 = and i32 %107, 255
  %109 = lshr i32 %95, 16
  %110 = and i32 %109, 255                        ; 2 uses
  %111 = sub nsw i32 %110, %108
  %112 = call i32 @llvm.abs.i32(i32 %111, i1 true)
  %.not.i.us.i.3 = icmp sgt i32 %112, %i.ju
  br i1 %.not.i.us.i.3, label %PixelsAreSimilar.exit.thread.us.i.3, label %113

113:                                              ; preds = %106
  %114 = sub nsw i32 %100, %103
  %115 = call i32 @llvm.abs.i32(i32 %114, i1 true)
  %.not23.i.us.i.3 = icmp samesign ugt i32 %115, %i.ju
  br i1 %.not23.i.us.i.3, label %PixelsAreSimilar.exit.thread.us.i.3, label %PixelsAreSimilar.exit.us.i.3

PixelsAreSimilar.exit.us.i.3:                     ; preds = %113
  %116 = sub nsw i32 %101, %104
  %117 = call i32 @llvm.abs.i32(i32 %116, i1 true)
  %.not97.us.i.3 = icmp samesign ugt i32 %117, %i.ju
  br i1 %.not97.us.i.3, label %PixelsAreSimilar.exit.thread.us.i.3, label %118

118:                                              ; preds = %PixelsAreSimilar.exit.us.i.3
  %119 = add nsw i32 %.288.us.i.2, 1
  %120 = add i32 %110, %.285.us.i.2
  %121 = add i32 %100, %.282.us.i.2
  %122 = add i32 %101, %.2.us.i.2
  br label %PixelsAreSimilar.exit.thread.us.i.3

PixelsAreSimilar.exit.thread.us.i.3:              ; preds = %118, %PixelsAreSimilar.exit.us.i.3, %113, %106, %97, %PixelsAreSimilar.exit.thread.us.i.2
  %.288.us.i.3 = phi i32 [ %119, %118 ], [ %.288.us.i.2, %PixelsAreSimilar.exit.us.i.3 ], [ %.288.us.i.2, %PixelsAreSimilar.exit.thread.us.i.2 ], [ %.288.us.i.2, %113 ], [ %.288.us.i.2, %106 ], [ %.288.us.i.2, %97 ] ; 6 uses
  %.285.us.i.3 = phi i32 [ %120, %118 ], [ %.285.us.i.2, %PixelsAreSimilar.exit.us.i.3 ], [ %.285.us.i.2, %PixelsAreSimilar.exit.thread.us.i.2 ], [ %.285.us.i.2, %113 ], [ %.285.us.i.2, %106 ], [ %.285.us.i.2, %97 ] ; 6 uses
  %.282.us.i.3 = phi i32 [ %121, %118 ], [ %.282.us.i.2, %PixelsAreSimilar.exit.us.i.3 ], [ %.282.us.i.2, %PixelsAreSimilar.exit.thread.us.i.2 ], [ %.282.us.i.2, %113 ], [ %.282.us.i.2, %106 ], [ %.282.us.i.2, %97 ] ; 6 uses
  %.2.us.i.3 = phi i32 [ %122, %118 ], [ %.2.us.i.2, %PixelsAreSimilar.exit.us.i.3 ], [ %.2.us.i.2, %PixelsAreSimilar.exit.thread.us.i.2 ], [ %.2.us.i.2, %113 ], [ %.2.us.i.2, %106 ], [ %.2.us.i.2, %97 ] ; 6 uses
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 16
  %123 = load i32, ptr %gep.i.4, align 4, !tbaa !18 ; 4 uses
  %124 = icmp ugt i32 %123, -16777217
  br i1 %124, label %125, label %PixelsAreSimilar.exit.thread.us.i.4

125:                                              ; preds = %PixelsAreSimilar.exit.thread.us.i.3
  %gep139.i.4 = getelementptr i8, ptr %invariant.gep138.i, i64 16
  %126 = load i32, ptr %gep139.i.4, align 4, !tbaa !18 ; 4 uses
  %127 = lshr i32 %123, 8
  %128 = and i32 %127, 255                        ; 2 uses
  %129 = and i32 %123, 255                        ; 2 uses
  %130 = lshr i32 %126, 8
  %131 = and i32 %130, 255
  %132 = and i32 %126, 255
  %133 = icmp ugt i32 %126, -16777217
  br i1 %133, label %134, label %PixelsAreSimilar.exit.thread.us.i.4

134:                                              ; preds = %125
  %135 = lshr i32 %126, 16
  %136 = and i32 %135, 255
  %137 = lshr i32 %123, 16
  %138 = and i32 %137, 255                        ; 2 uses
  %139 = sub nsw i32 %138, %136
  %140 = call i32 @llvm.abs.i32(i32 %139, i1 true)
  %.not.i.us.i.4 = icmp sgt i32 %140, %i.ju
  br i1 %.not.i.us.i.4, label %PixelsAreSimilar.exit.thread.us.i.4, label %141

141:                                              ; preds = %134
  %142 = sub nsw i32 %128, %131
  %143 = call i32 @llvm.abs.i32(i32 %142, i1 true)
  %.not23.i.us.i.4 = icmp samesign ugt i32 %143, %i.ju
  br i1 %.not23.i.us.i.4, label %PixelsAreSimilar.exit.thread.us.i.4, label %PixelsAreSimilar.exit.us.i.4

PixelsAreSimilar.exit.us.i.4:                     ; preds = %141
  %144 = sub nsw i32 %129, %132
  %145 = call i32 @llvm.abs.i32(i32 %144, i1 true)
  %.not97.us.i.4 = icmp samesign ugt i32 %145, %i.ju
  br i1 %.not97.us.i.4, label %PixelsAreSimilar.exit.thread.us.i.4, label %146

146:                                              ; preds = %PixelsAreSimilar.exit.us.i.4
  %147 = add nsw i32 %.288.us.i.3, 1
  %148 = add i32 %138, %.285.us.i.3
  %149 = add i32 %128, %.282.us.i.3
  %150 = add i32 %129, %.2.us.i.3
  br label %PixelsAreSimilar.exit.thread.us.i.4

PixelsAreSimilar.exit.thread.us.i.4:              ; preds = %146, %PixelsAreSimilar.exit.us.i.4, %141, %134, %125, %PixelsAreSimilar.exit.thread.us.i.3
  %.288.us.i.4 = phi i32 [ %147, %146 ], [ %.288.us.i.3, %PixelsAreSimilar.exit.us.i.4 ], [ %.288.us.i.3, %PixelsAreSimilar.exit.thread.us.i.3 ], [ %.288.us.i.3, %141 ], [ %.288.us.i.3, %134 ], [ %.288.us.i.3, %125 ] ; 6 uses
  %.285.us.i.4 = phi i32 [ %148, %146 ], [ %.285.us.i.3, %PixelsAreSimilar.exit.us.i.4 ], [ %.285.us.i.3, %PixelsAreSimilar.exit.thread.us.i.3 ], [ %.285.us.i.3, %141 ], [ %.285.us.i.3, %134 ], [ %.285.us.i.3, %125 ] ; 6 uses
  %.282.us.i.4 = phi i32 [ %149, %146 ], [ %.282.us.i.3, %PixelsAreSimilar.exit.us.i.4 ], [ %.282.us.i.3, %PixelsAreSimilar.exit.thread.us.i.3 ], [ %.282.us.i.3, %141 ], [ %.282.us.i.3, %134 ], [ %.282.us.i.3, %125 ] ; 6 uses
  %.2.us.i.4 = phi i32 [ %150, %146 ], [ %.2.us.i.3, %PixelsAreSimilar.exit.us.i.4 ], [ %.2.us.i.3, %PixelsAreSimilar.exit.thread.us.i.3 ], [ %.2.us.i.3, %141 ], [ %.2.us.i.3, %134 ], [ %.2.us.i.3, %125 ] ; 6 uses
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 20
  %151 = load i32, ptr %gep.i.5, align 4, !tbaa !18 ; 4 uses
  %152 = icmp ugt i32 %151, -16777217
  br i1 %152, label %bb.af, label %PixelsAreSimilar.exit.thread.us.i.5

bb.af:                                            ; preds = %PixelsAreSimilar.exit.thread.us.i.4
  %gep139.i.5 = getelementptr i8, ptr %invariant.gep138.i, i64 20
  %153 = load i32, ptr %gep139.i.5, align 4, !tbaa !18 ; 4 uses
  %154 = lshr i32 %151, 8
  %155 = and i32 %154, 255                        ; 2 uses
  %156 = and i32 %151, 255                        ; 2 uses
  %157 = lshr i32 %153, 8
  %158 = and i32 %157, 255
  %159 = and i32 %153, 255
  %i.ll = icmp ugt i32 %153, -16777217
  br i1 %i.ll, label %160, label %PixelsAreSimilar.exit.thread.us.i.5

160:                                              ; preds = %bb.af
  %161 = lshr i32 %153, 16
  %162 = and i32 %161, 255
  %163 = lshr i32 %151, 16
  %164 = and i32 %163, 255                        ; 2 uses
  %165 = sub nsw i32 %164, %162
  %166 = call i32 @llvm.abs.i32(i32 %165, i1 true)
  %.not.i.us.i.5 = icmp sgt i32 %166, %i.ju
  br i1 %.not.i.us.i.5, label %PixelsAreSimilar.exit.thread.us.i.5, label %167

167:                                              ; preds = %160
  %168 = sub nsw i32 %155, %158
  %169 = call i32 @llvm.abs.i32(i32 %168, i1 true)
  %.not23.i.us.i.5 = icmp samesign ugt i32 %169, %i.ju
  br i1 %.not23.i.us.i.5, label %PixelsAreSimilar.exit.thread.us.i.5, label %PixelsAreSimilar.exit.us.i.5

PixelsAreSimilar.exit.us.i.5:                     ; preds = %167
  %170 = sub nsw i32 %156, %159
  %171 = call i32 @llvm.abs.i32(i32 %170, i1 true)
  %.not97.us.i.5 = icmp samesign ugt i32 %171, %i.ju
  br i1 %.not97.us.i.5, label %PixelsAreSimilar.exit.thread.us.i.5, label %172

172:                                              ; preds = %PixelsAreSimilar.exit.us.i.5
  %173 = add nsw i32 %.288.us.i.4, 1
  %174 = add i32 %164, %.285.us.i.4
  %175 = add i32 %155, %.282.us.i.4
  %176 = add i32 %156, %.2.us.i.4
  br label %PixelsAreSimilar.exit.thread.us.i.5

PixelsAreSimilar.exit.thread.us.i.5:              ; preds = %172, %PixelsAreSimilar.exit.us.i.5, %167, %160, %bb.af, %PixelsAreSimilar.exit.thread.us.i.4
  %.288.us.i.5 = phi i32 [ %173, %172 ], [ %.288.us.i.4, %PixelsAreSimilar.exit.us.i.5 ], [ %.288.us.i.4, %PixelsAreSimilar.exit.thread.us.i.4 ], [ %.288.us.i.4, %167 ], [ %.288.us.i.4, %160 ], [ %.288.us.i.4, %bb.af ] ; 6 uses
  %.285.us.i.5 = phi i32 [ %174, %172 ], [ %.285.us.i.4, %PixelsAreSimilar.exit.us.i.5 ], [ %.285.us.i.4, %PixelsAreSimilar.exit.thread.us.i.4 ], [ %.285.us.i.4, %167 ], [ %.285.us.i.4, %160 ], [ %.285.us.i.4, %bb.af ] ; 6 uses
  %.282.us.i.5 = phi i32 [ %175, %172 ], [ %.282.us.i.4, %PixelsAreSimilar.exit.us.i.5 ], [ %.282.us.i.4, %PixelsAreSimilar.exit.thread.us.i.4 ], [ %.282.us.i.4, %167 ], [ %.282.us.i.4, %160 ], [ %.282.us.i.4, %bb.af ] ; 6 uses
  %.2.us.i.5 = phi i32 [ %176, %172 ], [ %.2.us.i.4, %PixelsAreSimilar.exit.us.i.5 ], [ %.2.us.i.4, %PixelsAreSimilar.exit.thread.us.i.4 ], [ %.2.us.i.4, %167 ], [ %.2.us.i.4, %160 ], [ %.2.us.i.4, %bb.af ] ; 6 uses
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 24
  %177 = load i32, ptr %gep.i.6, align 4, !tbaa !18 ; 4 uses
  %178 = icmp ugt i32 %177, -16777217
  br i1 %178, label %bb.ag, label %PixelsAreSimilar.exit.thread.us.i.a

bb.ag:                                            ; preds = %PixelsAreSimilar.exit.thread.us.i.5
  %gep139.i.6 = getelementptr i8, ptr %invariant.gep138.i, i64 24
  %i.lm = load i32, ptr %gep139.i.6, align 4, !tbaa !18 ; 4 uses
  %i.ln = lshr i32 %177, 8
  %i.lo = and i32 %i.ln, 255                      ; 2 uses
  %i.lp = and i32 %177, 255                       ; 2 uses
  %i.lq = lshr i32 %i.lm, 8
  %i.lr = and i32 %i.lq, 255
  %i.ls = and i32 %i.lm, 255
  %i.lt = icmp ugt i32 %i.lm, -16777217
  br i1 %i.lt, label %bb.ah, label %PixelsAreSimilar.exit.thread.us.i.a

bb.ah:                                            ; preds = %bb.ag
  %i.lu = lshr i32 %i.lm, 16
  %i.lv = and i32 %i.lu, 255
  %i.lw = lshr i32 %177, 16
  %i.lx = and i32 %i.lw, 255                      ; 2 uses
  %i.ly = sub nsw i32 %i.lx, %i.lv
  %i.lz = call i32 @llvm.abs.i32(i32 %i.ly, i1 true)
  %.not.i.us.i.a = icmp sgt i32 %i.lz, %i.ju
  br i1 %.not.i.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ma = sub nsw i32 %i.lo, %i.lr
  %i.mb = call i32 @llvm.abs.i32(i32 %i.ma, i1 true)
  %.not23.i.us.i.a = icmp samesign ugt i32 %i.mb, %i.ju
  br i1 %.not23.i.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %PixelsAreSimilar.exit.us.i.a

PixelsAreSimilar.exit.us.i.a:                     ; preds = %bb.ai
  %i.mc = sub nsw i32 %i.lp, %i.ls
  %i.md = call i32 @llvm.abs.i32(i32 %i.mc, i1 true)
  %.not97.us.i.a = icmp samesign ugt i32 %i.md, %i.ju
  br i1 %.not97.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %bb.aj

bb.aj:                                            ; preds = %PixelsAreSimilar.exit.us.i.a
  %i.me = add nsw i32 %.288.us.i.5, 1
  %i.mf = add i32 %i.lx, %.285.us.i.5
  %i.mg = add i32 %i.lo, %.282.us.i.5
  %i.mh = add i32 %i.lp, %.2.us.i.5
  br label %PixelsAreSimilar.exit.thread.us.i.a

PixelsAreSimilar.exit.thread.us.i.a:              ; preds = %bb.aj, %PixelsAreSimilar.exit.us.i.a, %bb.ai, %bb.ah, %bb.ag, %PixelsAreSimilar.exit.thread.us.i.5
  %.288.us.i.a = phi i32 [ %i.me, %bb.aj ], [ %.288.us.i.5, %PixelsAreSimilar.exit.us.i.a ], [ %.288.us.i.5, %PixelsAreSimilar.exit.thread.us.i.5 ], [ %.288.us.i.5, %bb.ai ], [ %.288.us.i.5, %bb.ah ], [ %.288.us.i.5, %bb.ag ] ; 6 uses
  %.285.us.i.a = phi i32 [ %i.mf, %bb.aj ], [ %.285.us.i.5, %PixelsAreSimilar.exit.us.i.a ], [ %.285.us.i.5, %PixelsAreSimilar.exit.thread.us.i.5 ], [ %.285.us.i.5, %bb.ai ], [ %.285.us.i.5, %bb.ah ], [ %.285.us.i.5, %bb.ag ] ; 6 uses
  %.282.us.i.a = phi i32 [ %i.mg, %bb.aj ], [ %.282.us.i.5, %PixelsAreSimilar.exit.us.i.a ], [ %.282.us.i.5, %PixelsAreSimilar.exit.thread.us.i.5 ], [ %.282.us.i.5, %bb.ai ], [ %.282.us.i.5, %bb.ah ], [ %.282.us.i.5, %bb.ag ] ; 6 uses
  %.2.us.i.a = phi i32 [ %i.mh, %bb.aj ], [ %.2.us.i.5, %PixelsAreSimilar.exit.us.i.a ], [ %.2.us.i.5, %PixelsAreSimilar.exit.thread.us.i.5 ], [ %.2.us.i.5, %bb.ai ], [ %.2.us.i.5, %bb.ah ], [ %.2.us.i.5, %bb.ag ] ; 6 uses
  %gep.i.7 = getelementptr i8, ptr %invariant.gep.i, i64 28
  %179 = load i32, ptr %gep.i.7, align 4, !tbaa !18 ; 4 uses
  %180 = icmp ugt i32 %179, -16777217
  br i1 %180, label %181, label %bb.ak

181:                                              ; preds = %PixelsAreSimilar.exit.thread.us.i.a
  %gep139.i.7 = getelementptr i8, ptr %invariant.gep138.i, i64 28
  %182 = load i32, ptr %gep139.i.7, align 4, !tbaa !18 ; 4 uses
  %183 = lshr i32 %179, 8
  %184 = and i32 %183, 255                        ; 2 uses
  %185 = and i32 %179, 255                        ; 2 uses
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = and i32 %182, 255
  %189 = icmp ugt i32 %182, -16777217
  br i1 %189, label %190, label %bb.ak

190:                                              ; preds = %181
  %191 = lshr i32 %182, 16
  %192 = and i32 %191, 255
  %193 = lshr i32 %179, 16
  %194 = and i32 %193, 255                        ; 2 uses
  %195 = sub nsw i32 %194, %192
  %196 = call i32 @llvm.abs.i32(i32 %195, i1 true)
  %.not.i.us.i.7 = icmp sgt i32 %196, %i.ju
  br i1 %.not.i.us.i.7, label %bb.ak, label %197

197:                                              ; preds = %190
  %198 = sub nsw i32 %184, %187
  %199 = call i32 @llvm.abs.i32(i32 %198, i1 true)
  %.not23.i.us.i.7 = icmp samesign ugt i32 %199, %i.ju
  br i1 %.not23.i.us.i.7, label %bb.ak, label %PixelsAreSimilar.exit.us.i.7

PixelsAreSimilar.exit.us.i.7:                     ; preds = %197
  %200 = sub nsw i32 %185, %188
  %201 = call i32 @llvm.abs.i32(i32 %200, i1 true)
  %.not97.us.i.7 = icmp samesign ugt i32 %201, %i.ju
  br i1 %.not97.us.i.7, label %bb.ak, label %202

202:                                              ; preds = %PixelsAreSimilar.exit.us.i.7
  %203 = add nsw i32 %.288.us.i.a, 1
  %204 = add i32 %194, %.285.us.i.a
  %205 = add i32 %184, %.282.us.i.a
  %206 = add i32 %185, %.2.us.i.a
  br label %bb.ak

bb.ak:                                            ; preds = %202, %PixelsAreSimilar.exit.us.i.7, %197, %190, %181, %PixelsAreSimilar.exit.thread.us.i.a
  %.288.us.i.7 = phi i32 [ %203, %202 ], [ %.288.us.i.a, %PixelsAreSimilar.exit.us.i.7 ], [ %.288.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ], [ %.288.us.i.a, %197 ], [ %.288.us.i.a, %190 ], [ %.288.us.i.a, %181 ] ; 2 uses
  %.285.us.i.7 = phi i32 [ %204, %202 ], [ %.285.us.i.a, %PixelsAreSimilar.exit.us.i.7 ], [ %.285.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ], [ %.285.us.i.a, %197 ], [ %.285.us.i.a, %190 ], [ %.285.us.i.a, %181 ] ; 2 uses
  %.282.us.i.7 = phi i32 [ %205, %202 ], [ %.282.us.i.a, %PixelsAreSimilar.exit.us.i.7 ], [ %.282.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ], [ %.282.us.i.a, %197 ], [ %.282.us.i.a, %190 ], [ %.282.us.i.a, %181 ] ; 2 uses
  %.2.us.i.7 = phi i32 [ %206, %202 ], [ %.2.us.i.a, %PixelsAreSimilar.exit.us.i.7 ], [ %.2.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ], [ %.2.us.i.a, %197 ], [ %.2.us.i.a, %190 ], [ %.2.us.i.a, %181 ] ; 2 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %exitcond125.not.i = icmp eq i64 %indvars.iv.next123.i, 8
  br i1 %exitcond125.not.i, label %bb.al, label %.preheader98.us.i, !llvm.loop !149

bb.al:                                            ; preds = %bb.ak
  %i.mi = icmp eq i32 %.288.us.i.7, 64
  br i1 %i.mi, label %bb.am, label %.loopexit.us.i

bb.am:                                            ; preds = %bb.al
  %i.mj = sdiv i32 %.285.us.i.7, 64
  %i.mk = shl i32 %i.mj, 16
  %i.ml = sdiv i32 %.282.us.i.7, 64
  %i.mm = shl i32 %i.ml, 8
  %i.mn = or i32 %i.mm, %i.mk
  %i.mo = sdiv i32 %.2.us.i.7, 64
  %i.mp = or i32 %i.mn, %i.mo                     ; 8 uses
  br label %.preheader.us.i

.loopexit.us.i:                                   ; preds = %.preheader.us.i, %bb.al
  %.293.us.i = phi i32 [ %.192113.us.i, %bb.al ], [ 1, %.preheader.us.i ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.089114.us.i, i64 8
  %indvars.iv.next129.i = add nsw i64 %indvars.iv128.i, 8 ; 2 uses
  %i.mr = icmp slt i64 %indvars.iv.next129.i, %i.kw
  br i1 %i.mr, label %bb.ae, label %._crit_edge.us.i, !llvm.loop !150

.preheader.us.i:                                  ; preds = %.preheader.us.i, %bb.am
  %.1111.us.i = phi i32 [ 0, %bb.am ], [ %i.ps, %.preheader.us.i ] ; 17 uses
  %i.ms = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.mt = mul nsw i32 %i.ms, %.1111.us.i
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mu
  store i32 %i.mp, ptr %i.mv, align 4, !tbaa !18
  %i.mw = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.mx = mul nsw i32 %i.mw, %.1111.us.i
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds i8, ptr %.089114.us.i, i64 %i.my
  store i8 1, ptr %i.mz, align 1, !tbaa !21
  %i.na = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.nb = mul nsw i32 %i.na, %.1111.us.i
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr [4 x i8], ptr %i.li, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.nd, i64 4
  store i32 %i.mp, ptr %i.ne, align 4, !tbaa !18
  %i.nf = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.ng = mul nsw i32 %i.nf, %.1111.us.i
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr i8, ptr %.089114.us.i, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 1
  store i8 1, ptr %i.nj, align 1, !tbaa !21
  %i.nk = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.nl = mul nsw i32 %i.nk, %.1111.us.i
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr [4 x i8], ptr %i.li, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 8
  store i32 %i.mp, ptr %i.no, align 4, !tbaa !18
  %i.np = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.nq = mul nsw i32 %i.np, %.1111.us.i
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr i8, ptr %.089114.us.i, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 2
  store i8 1, ptr %i.nt, align 1, !tbaa !21
  %i.nu = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.nv = mul nsw i32 %i.nu, %.1111.us.i
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr [4 x i8], ptr %i.li, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 12
  store i32 %i.mp, ptr %i.ny, align 4, !tbaa !18
  %i.nz = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.oa = mul nsw i32 %i.nz, %.1111.us.i
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr i8, ptr %.089114.us.i, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 3
  store i8 1, ptr %i.od, align 1, !tbaa !21
  %i.oe = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.of = mul nsw i32 %i.oe, %.1111.us.i
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr [4 x i8], ptr %i.li, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.oh, i64 16
  store i32 %i.mp, ptr %i.oi, align 4, !tbaa !18
  %i.oj = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.ok = mul nsw i32 %i.oj, %.1111.us.i
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr i8, ptr %.089114.us.i, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 4
  store i8 1, ptr %i.on, align 1, !tbaa !21
  %i.oo = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.op = mul nsw i32 %i.oo, %.1111.us.i
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr [4 x i8], ptr %i.li, i64 %i.oq
  %i.os = getelementptr i8, ptr %i.or, i64 20
  store i32 %i.mp, ptr %i.os, align 4, !tbaa !18
  %i.ot = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.ou = mul nsw i32 %i.ot, %.1111.us.i
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr i8, ptr %.089114.us.i, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 5
  store i8 1, ptr %i.ox, align 1, !tbaa !21
  %i.oy = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.oz = mul nsw i32 %i.oy, %.1111.us.i
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr [4 x i8], ptr %i.li, i64 %i.pa
  %i.pc = getelementptr i8, ptr %i.pb, i64 24
  store i32 %i.mp, ptr %i.pc, align 4, !tbaa !18
  %i.pd = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.pe = mul nsw i32 %i.pd, %.1111.us.i
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr i8, ptr %.089114.us.i, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 6
  store i8 1, ptr %i.ph, align 1, !tbaa !21
  %i.pi = load i32, ptr %i.kn, align 8, !tbaa !53
  %i.pj = mul nsw i32 %i.pi, %.1111.us.i
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr [4 x i8], ptr %i.li, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 28
  store i32 %i.mp, ptr %i.pm, align 4, !tbaa !18
  %i.pn = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.po = mul nsw i32 %i.pn, %.1111.us.i
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr i8, ptr %.089114.us.i, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 7
  store i8 1, ptr %i.pr, align 1, !tbaa !21
  %i.ps = add nuw nsw i32 %.1111.us.i, 1          ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.ps, 8
  br i1 %exitcond127.not.i, label %.loopexit.us.i, label %.preheader.us.i, !llvm.loop !151

.preheader98.us.i:                                ; preds = %bb.ak, %bb.ae
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.ak ], [ 0, %bb.ae ] ; 3 uses
  %.078108.us.i = phi i32 [ %.2.us.i.7, %bb.ak ], [ 0, %bb.ae ] ; 6 uses
  %.080107.us.i = phi i32 [ %.282.us.i.7, %bb.ak ], [ 0, %bb.ae ] ; 6 uses
  %.083106.us.i = phi i32 [ %.285.us.i.7, %bb.ak ], [ 0, %bb.ae ] ; 6 uses
  %.086105.us.i = phi i32 [ %.288.us.i.7, %bb.ak ], [ 0, %bb.ae ] ; 6 uses
  %i.pt = mul nsw i64 %indvars.iv122.i, %i.lj
  %i.pu = mul nsw i64 %indvars.iv122.i, %i.lk
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.lc, i64 %i.pt ; 8 uses
  %invariant.gep138.i = getelementptr [4 x i8], ptr %i.li, i64 %i.pu ; 8 uses
  %207 = load i32, ptr %invariant.gep.i, align 4, !tbaa !18 ; 4 uses
  %208 = icmp ugt i32 %207, -16777217
  br i1 %208, label %13, label %PixelsAreSimilar.exit.thread.us.i

._crit_edge.us.i:                                 ; preds = %.loopexit.us.i
  %i.pv = load i32, ptr %i.jf, align 8, !tbaa !50
  %i.pw = shl nsw i32 %i.pv, 3
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds i8, ptr %.090117.us.i, i64 %i.px
  %i.pz = add nsw i32 %.094115.us.i, 8            ; 2 uses
  %i.qa = icmp slt i32 %i.pz, %i.kb
  br i1 %i.qa, label %.preheader99.us.i, label %FlattenSimilarBlocks.exit, !llvm.loop !152

FlattenSimilarBlocks.exit:                        ; preds = %._crit_edge.us.i, %bb.ad, %.preheader99.lr.ph.i
  %.091.lcssa.i = phi i32 [ 0, %bb.ad ], [ 0, %.preheader99.lr.ph.i ], [ %.293.us.i, %._crit_edge.us.i ]
  store i32 %.091.lcssa.i, ptr %i.g, align 8, !tbaa !36
  br label %bb.an

bb.an:                                            ; preds = %FlattenSimilarBlocks.exit, %CopyCurrentCanvas.exit115
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %11, ptr noundef nonnull readonly align 4 dereferenceable(116) %8, i64 116, i1 false), !tbaa.struct !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.qc, i64 16, i1 false), !tbaa.struct !86
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 3, ptr %i.qe, align 4, !tbaa !153
  %i.qf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.qg = load <2 x i32>, ptr %i.qc, align 4, !tbaa !18
  store <2 x i32> %i.qg, ptr %i.qf, align 8, !tbaa !18
  %i.qh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.qh, align 8, !tbaa !154
  %not..i118 = xor i1 %i.dq, true
  %i.qi = zext i1 %not..i118 to i32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !155
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.qk, align 8, !tbaa !156
  call void @WebPMemoryWriterInit(ptr noundef nonnull %i.c) #14
  %i.ql = load i32, ptr %11, align 4, !tbaa !71
  %i.qm = icmp eq i32 %i.ql, 0
  %or.cond.i119 = and i1 %i.dq, %i.qm
  br i1 %or.cond.i119, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.qn = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 0, ptr %i.qn, align 4, !tbaa !157
  %i.qo = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 0, ptr %i.qo, align 4, !tbaa !158
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 1, ptr %i.qb, align 8, !tbaa !61
  %i.qp = getelementptr inbounds nuw i8, ptr %6, i64 392
  store ptr @WebPMemoryWrite, ptr %i.qp, align 8, !tbaa !93
  %i.qq = getelementptr inbounds nuw i8, ptr %6, i64 400
  store ptr %i.c, ptr %i.qq, align 8, !tbaa !94
  %i.qr = call i32 @WebPEncode(ptr noundef nonnull %11, ptr noundef nonnull %i.qb) #14
  %.not.i.not.i120 = icmp eq i32 %i.qr, 0
  br i1 %.not.i.not.i120, label %EncodeCandidate.exit122, label %EncodeCandidate.exit122.thread

EncodeCandidate.exit122.thread:                   ; preds = %bb.ap
  %i.qs = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 1, ptr %i.qs, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.aq

EncodeCandidate.exit122:                          ; preds = %bb.ap
  %i.qt = getelementptr inbounds nuw i8, ptr %6, i64 432
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !63 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %.not95 = icmp eq i32 %i.qu, 0
  br i1 %.not95, label %bb.aq, label %PickBestCandidate.exit135

bb.aq:                                            ; preds = %EncodeCandidate.exit122.thread, %EncodeCandidate.exit122
  %i.qv = load i32, ptr %i.g, align 8, !tbaa !36
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store i32 %i.qv, ptr %i.qw, align 8, !tbaa !159
  store i32 1, ptr %i.g, align 8, !tbaa !36
  %i.qx = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !160
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !160
  %i.rd = icmp ult i64 %i.ra, %i.rc
  br i1 %i.rd, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.idx.i124 = select i1 %.not, i64 0, i64 48
  %i.re = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i124 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.re, ptr noundef nonnull align 8 dereferenceable(48) %i.rf, i64 48, i1 false), !tbaa.struct !161
  %.val.i125 = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.rg = getelementptr i8, ptr %i.c, i64 8
  %.val30.i126 = load i64, ptr %i.rg, align 8, !tbaa !97
  store ptr %.val.i125, ptr %i.re, align 8, !tbaa !59
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i64 %.val30.i126, ptr %i.rh, align 8, !tbaa !83
  br i1 %.not, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !64
  %i.rk = getelementptr i8, ptr %0, i64 1096
  %.val.i.i128 = load ptr, ptr %i.rk, align 8, !tbaa !44
  %i.rl = getelementptr i8, ptr %0, i64 1112
  %.val13.i.i129 = load i64, ptr %i.rl, align 8, !tbaa !74
  %i.rm = getelementptr [104 x i8], ptr %.val.i.i128, i64 %.val13.i.i129
  %i.rn = getelementptr [104 x i8], ptr %i.rm, i64 %i.rj ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !81
  %.not.i.i130 = icmp eq i32 %i.rp, 0
  br i1 %.not.i.i130, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rq = getelementptr i8, ptr %i.rn, i64 -176
  store i32 %2, ptr %i.rq, align 8, !tbaa !85
  br label %SetPreviousDisposeMethod.exit.i131

bb.av:                                            ; preds = %bb.at
  %i.rr = getelementptr i8, ptr %i.rn, i64 -112
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !77
  %.not12.i.i134 = icmp eq i32 %i.rs, 0
  %i.rt = select i1 %.not12.i.i134, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.i131

SetPreviousDisposeMethod.exit.i131:               ; preds = %bb.av, %bb.au
  %.sink14.i.i132 = phi i64 [ %i.rt, %bb.av ], [ -128, %bb.au ]
  %i.ru = getelementptr i8, ptr %i.rn, i64 %.sink14.i.i132
  store i32 %2, ptr %i.ru, align 8, !tbaa !89
  %i.rv = load i32, ptr %i.qw, align 8, !tbaa !159 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.rv, ptr %i.rw, align 8, !tbaa !80
  %.not28.i133 = icmp eq i32 %i.rv, 0
  br i1 %.not28.i133, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %SetPreviousDisposeMethod.exit.i131
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !38
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !37
  store ptr %i.sa, ptr %i.rx, align 8, !tbaa !38
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !37
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %SetPreviousDisposeMethod.exit.i131, %bb.as
  %i.sb = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %.not29.i127 = icmp eq ptr %i.sb, null
  br i1 %.not29.i127, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.sb) #14
  %i.sc = load ptr, ptr %9, align 8, !tbaa !73
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 100
  store i32 0, ptr %i.sd, align 4, !tbaa !103
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.c, ptr %9, align 8, !tbaa !73
  br label %PickBestCandidate.exit135

bb.ba:                                            ; preds = %bb.ar
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.c) #14
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 0, ptr %i.se, align 4, !tbaa !103
  br label %PickBestCandidate.exit135

PickBestCandidate.exit135:                        ; preds = %bb.ba, %bb.az, %.split147, %.split146, %EncodeCandidate.exit122, %EncodeCandidate.exit
  %.0 = phi i32 [ %i.qu, %EncodeCandidate.exit122 ], [ %i.hk, %EncodeCandidate.exit ], [ 0, %.split147 ], [ 0, %bb.ba ], [ 0, %.split146 ], [ 0, %bb.az ]
  ret i32 %.0
}

declare void @WebPMemoryWriterClear(ptr noundef) local_unnamed_addr #3

declare i32 @WebPGetColorPalette(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WebPMemoryWriterInit(ptr noundef) local_unnamed_addr #3

declare i32 @WebPMemoryWrite(ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @WebPEncode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetFrame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetCanvasSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxSetImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WebPMuxCreateInternal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPDecode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPInitDecoderConfigInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = distinct !{!3, !54}
!4 = distinct !{!4, !54}
!5 = distinct !{!5, !54}
!6 = distinct !{!6, !54}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"WebPMuxAnimParams", !12, i64 0, !12, i64 4}
!16 = !{!"WebPAnimEncoderOptions", !15, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28}
!17 = !{!16, !12, i64 16}
!18 = !{!12, !12, i64 0}
!19 = !{!16, !12, i64 20}
!20 = !{!16, !12, i64 24}
!21 = !{!11, !11, i64 0}
!22 = !{!"any pointer", !11, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !11, i64 0}
!26 = !{!"WebPConfig", !12, i64 0, !25, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !25, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112}
!27 = !{!"p1 _ZTS11WebPPicture", !22, i64 0}
!28 = !{!"p1 omnipotent char", !22, i64 0}
!29 = !{!"p1 int", !22, i64 0}
!30 = !{!"p1 _ZTS12WebPAuxStats", !22, i64 0}
!31 = !{!"WebPPicture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !28, i64 16, !28, i64 24, !28, i64 32, !12, i64 40, !12, i64 44, !28, i64 48, !12, i64 56, !11, i64 60, !29, i64 72, !12, i64 80, !11, i64 84, !22, i64 96, !22, i64 104, !12, i64 112, !28, i64 120, !30, i64 128, !12, i64 136, !22, i64 144, !22, i64 152, !11, i64 160, !28, i64 176, !28, i64 184, !11, i64 192, !22, i64 224, !22, i64 232, !11, i64 240}
!32 = !{!"long", !11, i64 0}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!34 = !{!"p1 _ZTS7WebPMux", !22, i64 0}
!35 = !{!"WebPAnimEncoder", !12, i64 0, !12, i64 4, !16, i64 8, !26, i64 52, !26, i64 168, !27, i64 288, !31, i64 296, !12, i64 552, !31, i64 560, !31, i64 816, !28, i64 1072, !12, i64 1080, !28, i64 1088, !22, i64 1096, !32, i64 1104, !32, i64 1112, !32, i64 1120, !32, i64 1128, !32, i64 1136, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !33, i64 1164, !12, i64 1180, !12, i64 1184, !32, i64 1192, !32, i64 1200, !34, i64 1208, !11, i64 1216}
!36 = !{!35, !12, i64 552}
!37 = !{!35, !28, i64 1072}
!38 = !{!35, !28, i64 1088}
!39 = !{!35, !32, i64 1136}
!40 = !{!35, !12, i64 1144}
!41 = !{!35, !12, i64 24}
!42 = !{!35, !12, i64 20}
!43 = !{!35, !32, i64 1104}
!44 = !{!35, !22, i64 1096}
!45 = !{!35, !34, i64 1208}
!46 = !{!35, !12, i64 1180}
!47 = !{!35, !12, i64 1184}
!48 = !{!33, !12, i64 0}
!49 = !{!33, !12, i64 4}
!50 = !{!33, !12, i64 8}
!51 = !{!33, !12, i64 12}
!52 = !{!31, !29, i64 72}
!53 = !{!31, !12, i64 80}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!31, !12, i64 8}
!56 = !{!31, !12, i64 12}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"WebPData", !28, i64 0, !32, i64 8}
!59 = !{!58, !28, i64 0}
!60 = !{!"llvm.loop.unswitch.partial.disable"}
!61 = !{!31, !12, i64 0}
!62 = !{!35, !12, i64 1156}
!63 = !{!31, !12, i64 136}
!64 = !{!35, !32, i64 1120}
!65 = !{!35, !12, i64 1152}
!66 = !{!35, !12, i64 0}
!67 = !{!35, !12, i64 4}
!68 = !{!35, !12, i64 32}
!69 = !{!25, !25, i64 0}
!70 = !{i64 0, i64 4, !18, i64 4, i64 4, !69, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !18, i64 20, i64 4, !69, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 4, !18, i64 36, i64 4, !18, i64 40, i64 4, !18, i64 44, i64 4, !18, i64 48, i64 4, !18, i64 52, i64 4, !18, i64 56, i64 4, !18, i64 60, i64 4, !18, i64 64, i64 4, !18, i64 68, i64 4, !18, i64 72, i64 4, !18, i64 76, i64 4, !18, i64 80, i64 4, !18, i64 84, i64 4, !18, i64 88, i64 4, !18, i64 92, i64 4, !18, i64 96, i64 4, !18, i64 100, i64 4, !18, i64 104, i64 4, !18, i64 108, i64 4, !18, i64 112, i64 4, !18}
!71 = !{!26, !12, i64 0}
!72 = !{!35, !27, i64 288}
!73 = !{!22, !22, i64 0}
!74 = !{!35, !32, i64 1112}
!75 = !{!"WebPMuxFrameInfo", !58, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40}
!76 = !{!"", !75, i64 0, !75, i64 48, !12, i64 96}
!77 = !{!76, !12, i64 96}
!78 = !{!35, !32, i64 1128}
!79 = !{!35, !12, i64 1148}
!80 = !{!35, !12, i64 1080}
!81 = !{!35, !12, i64 1160}
!82 = !{!35, !32, i64 1192}
!83 = !{!58, !32, i64 8}
!84 = !{!35, !12, i64 28}
!85 = !{!76, !12, i64 32}
!86 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18}
!87 = !{!75, !12, i64 16}
!88 = !{!75, !12, i64 20}
!89 = !{!75, !12, i64 32}
!90 = !{!35, !32, i64 1200}
!91 = !{!32, !32, i64 0}
!92 = !{!28, !28, i64 0}
!93 = !{!31, !22, i64 96}
!94 = !{!31, !22, i64 104}
!95 = !{!"WebPMemoryWriter", !28, i64 0, !32, i64 8, !32, i64 16, !11, i64 24}
!96 = !{!95, !28, i64 0}
!97 = !{!95, !32, i64 8}
!98 = !{!"", !12, i64 0, !12, i64 4, !33, i64 8, !31, i64 24, !33, i64 280, !31, i64 296}
!99 = !{!98, !12, i64 4}
!100 = !{!26, !25, i64 4}
!101 = !{!35, !12, i64 16}
!102 = !{!"", !95, i64 0, !75, i64 32, !33, i64 80, !12, i64 96, !12, i64 100}
!103 = !{!102, !12, i64 100}
!104 = !{!98, !12, i64 16}
!105 = !{!98, !12, i64 20}
!106 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !18, i64 20, i64 4, !18, i64 24, i64 4, !18, i64 28, i64 16, !21}
!107 = !{!16, !12, i64 8}
!108 = !{!16, !12, i64 12}
!109 = !{!35, !12, i64 304}
!110 = !{!35, !12, i64 308}
!111 = !{!35, !12, i64 296}
!112 = distinct !{!112, !57}
!113 = distinct !{!113, !54, !60}
!114 = !{ptr @ComparePixelsLossless, ptr @ComparePixelsLossy}
!115 = distinct !{!115, !54}
!116 = distinct !{!116, !54, !60}
!117 = distinct !{!117, !54}
!118 = distinct !{!118, !54, !60}
!119 = !{!76, !32, i64 8}
!120 = !{!76, !32, i64 56}
!121 = !{!76, !12, i64 24}
!122 = !{!35, !12, i64 52}
!123 = !{!76, !12, i64 28}
!124 = !{!76, !12, i64 16}
!125 = !{!76, !12, i64 20}
!126 = !{!76, !12, i64 36}
!127 = !{!76, !12, i64 72}
!128 = !{!75, !12, i64 36}
!129 = !{i64 0, i64 8, !92, i64 8, i64 8, !91, i64 16, i64 4, !18, i64 20, i64 4, !18, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 4, !18, i64 36, i64 4, !18, i64 40, i64 4, !21, i64 48, i64 8, !92, i64 56, i64 8, !91, i64 64, i64 4, !18, i64 68, i64 4, !18, i64 72, i64 4, !18, i64 76, i64 4, !18, i64 80, i64 4, !18, i64 84, i64 4, !18, i64 88, i64 4, !21, i64 96, i64 4, !18}
!130 = distinct !{!130, !57}
!131 = !{!"WebPBitstreamFeatures", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20}
!132 = !{!"WebPDecBuffer", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 96, !28, i64 112}
!133 = !{!"WebPDecoderOptions", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !11, i64 56}
!134 = !{!"WebPDecoderConfig", !131, i64 0, !132, i64 40, !133, i64 160}
!135 = !{!134, !12, i64 0}
!136 = !{!134, !12, i64 4}
!137 = !{!134, !12, i64 52}
!138 = !{!134, !12, i64 40}
!139 = !{i64 0, i64 8, !92, i64 8, i64 8, !91}
!140 = !{!98, !12, i64 0}
!141 = !{!98, !12, i64 8}
!142 = !{!98, !12, i64 12}
!143 = distinct !{!143, !54}
!144 = distinct !{!144, !54}
!145 = distinct !{!145, !54}
!146 = distinct !{!146, !54}
!147 = distinct !{!147, !54}
!148 = distinct !{!148, !54}
!149 = distinct !{!149, !54}
!150 = distinct !{!150, !54}
!151 = distinct !{!151, !54}
!152 = distinct !{!152, !54}
!153 = !{!102, !12, i64 60}
!154 = !{!102, !12, i64 64}
!155 = !{!102, !12, i64 68}
!156 = !{!102, !12, i64 56}
!157 = !{!26, !12, i64 44}
!158 = !{!26, !12, i64 32}
!159 = !{!102, !12, i64 96}
!160 = !{!102, !32, i64 8}
!161 = !{i64 0, i64 8, !92, i64 8, i64 8, !91, i64 16, i64 4, !18, i64 20, i64 4, !18, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 4, !18, i64 36, i64 4, !18, i64 40, i64 4, !21}
!162 = !{!98, !12, i64 288}
!163 = !{!98, !12, i64 292}
end_hunk_0
