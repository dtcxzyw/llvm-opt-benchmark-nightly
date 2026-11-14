Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL7decLnOpP9decNumberPKS_P10decContextPj:bb.a
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec281 = and i64 %i.af, -8                   ; 4 uses
  %i.an = getelementptr i8, ptr %i.t, i64 %n.vec281
  %i.ao = getelementptr i8, ptr %i.aa, i64 %n.vec281
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index282 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next286, %vec.epilog.vector.body ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.t, i64 %index282
  %next.gep284 = getelementptr i8, ptr %i.aa, i64 %index282
  %wide.load285 = load <8 x i8>, ptr %next.gep284, align 1, !tbaa !19
  store <8 x i8> %wide.load285, ptr %next.gep283, align 1, !tbaa !19
  %index.next286 = add nuw i64 %index282, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next286, %n.vec281
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n287 = icmp eq i64 %i.af, %n.vec281
  br i1 %cmp.n287, label %.thread232, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.aq, ptr %.032.i, align 1, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.at = icmp ult ptr %i.ar, %i.z
  br i1 %i.at, label %.lr.ph.i, label %.thread232, !llvm.loop !106

bb.i:                                             ; preds = %bb.b
  %i.au = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread232

bb.j:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0                     ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ay = load i32, ptr %1, align 4, !tbaa !18
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bc, align 1, !tbaa !19
  store i8 -64, ptr %i.ba, align 4, !tbaa !16
  br label %.thread232

bb.m:                                             ; preds = %bb.k, %bb.j
  %.not173 = icmp sgt i8 %i.f, -1
  br i1 %.not173, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %3, align 4, !tbaa !21
  %i.be = or i32 %i.bd, 128
  store i32 %i.be, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.o:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.bh = icmp eq i32 %i.bg, 0
  %.pre = load i32, ptr %2, align 4, !tbaa !26    ; 2 uses
  %i.bi = icmp slt i32 %.pre, 41
  %or.cond272 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond272, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !19
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %1, align 4, !tbaa !18
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bo, align 4, !tbaa !33
  %i.bp = call ptr @uprv_decNumberFromString_78(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) ; 0 uses
  %i.bq = load i32, ptr %3, align 4, !tbaa !21
  %i.br = or i32 %i.bq, 2080
  store i32 %i.br, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.t:                                             ; preds = %bb.p
  %i.bs = icmp eq i8 %i.aw, 2
  br i1 %i.bs, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bt = load i32, ptr %1, align 4, !tbaa !18
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bv, align 4, !tbaa !33
  %i.bw = call ptr @uprv_decNumberFromString_78(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %8) ; 0 uses
  %i.bx = load i32, ptr %3, align 4, !tbaa !21
  %i.by = or i32 %i.bx, 2080
  store i32 %i.by, ptr %3, align 4, !tbaa !21
  br label %.thread232

.thread:                                          ; preds = %bb.q, %bb.r, %bb.t, %bb.u, %bb.o
  %i.bz = load i32, ptr %1, align 4, !tbaa !18    ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.pre, i32 %i.bz) ; 2 uses
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 7)
  %i.ca = add nuw nsw i32 %spec.select235, 2      ; 6 uses
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 16) ; 2 uses
  %i.cc = icmp slt i32 %spec.select, 48
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19
  %i.cg = zext i8 %i.cf to i32
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %i.ch = phi i32 [ %i.cg, %bb.w ], [ %i.cb, %.thread ] ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 49
  br i1 %i.ci, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %narrow = add nuw i32 %i.ch, 11
  %i.cj = zext i32 %narrow to i64
  %i.ck = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cj) #16 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre243 = load i32, ptr %1, align 4, !tbaa !18
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = load i32, ptr %3, align 4, !tbaa !21
  %i.cn = or i32 %i.cm, 16
  store i32 %i.cn, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.aa:                                            ; preds = %._crit_edge, %bb.x
  %i.co = phi i32 [ %i.bz, %bb.x ], [ %.pre243, %._crit_edge ]
  %.0149 = phi ptr [ null, %bb.x ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.0148 = phi ptr [ %4, %bb.x ], [ %i.ck, %._crit_edge ] ; 16 uses
  %i.cp = add nsw i32 %i.co, %i.ca                ; 2 uses
  %i.cq = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 16) ; 2 uses
  %i.cr = icmp slt i32 %i.cp, 50
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19
  %i.cv = zext i8 %i.cu to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cw = phi i32 [ %i.cv, %bb.ab ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cx = icmp samesign ugt i32 %i.cw, 85
  br i1 %i.cx, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %narrow174 = add nuw i32 %i.cw, 11
  %i.cy = zext i32 %narrow174 to i64
  %i.cz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cy) #16 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %3, align 4, !tbaa !21
  %i.dc = or i32 %i.db, 16
  store i32 %i.dc, ptr %3, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0147 = phi ptr [ null, %bb.ac ], [ %i.cz, %bb.ad ]
  %.0 = phi ptr [ %5, %bb.ac ], [ %i.cz, %bb.ad ] ; 26 uses
  %i.dd = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %8, i32 noundef 64) ; 0 uses
  %i.de = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.df = load i32, ptr %1, align 4, !tbaa !18
  %i.dg = add nsw i32 %i.df, %i.de                ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0148, i64 8 ; 9 uses
  store i8 0, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 5 uses
  store i32 0, ptr %i.di, align 4, !tbaa !17
  store i32 1, ptr %.0148, align 4, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.0148, i64 9 ; 9 uses
  store i8 0, ptr %i.dj, align 1, !tbaa !19
  %i.dk = icmp eq i32 %i.dg, 0
  br i1 %i.dk, label %uprv_decNumberFromInt32_78.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.af
  %.0.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
  %.018.i.i = phi ptr [ %i.do, %.preheader.i.i ], [ %i.dj, %.preheader.i.preheader.i ] ; 2 uses
  %.01417.i.i = phi i32 [ %i.dn, %.preheader.i.i ], [ %.0.i, %.preheader.i.preheader.i ] ; 3 uses
  %i.dl = urem i32 %.01417.i.i, 10
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  store i8 %i.dm, ptr %.018.i.i, align 1, !tbaa !19
  %i.dn = udiv i32 %.01417.i.i, 10
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp ult i32 %.01417.i.i, 10
  br i1 %.not.i.i, label %bb.ag, label %.preheader.i.i, !llvm.loop !0

bb.ag:                                            ; preds = %.preheader.i.i
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = trunc i64 %i.dr to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.dr, 32
  %i.dt = ashr exact i64 %sext.i.i, 32
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.dt
  %.01011.i.i.i = getelementptr i8, ptr %i.du, i64 -1 ; 2 uses
  %.not12.i.i.i = icmp ult ptr %.01011.i.i.i, %i.dj
  br i1 %.not12.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %bb.ah
  %.01014.i.i.i = phi ptr [ %.010.i.i.i, %bb.ah ], [ %.01011.i.i.i, %bb.ag ] ; 2 uses
  %.013.i.i.i = phi i32 [ %i.dy, %bb.ah ], [ %i.ds, %bb.ag ] ; 3 uses
  %i.dv = load i8, ptr %.01014.i.i.i, align 1, !tbaa !19
  %i.dw = icmp ne i8 %i.dv, 0
  %i.dx = icmp eq i32 %.013.i.i.i, 1
  %or.cond.i.i.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.dy = add nsw i32 %.013.i.i.i, -1
  %.010.i.i.i = getelementptr i8, ptr %.01014.i.i.i, i64 -1 ; 2 uses
  %.not.i.i.i = icmp ult ptr %.010.i.i.i, %i.dj
  br i1 %.not.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

uprv_decNumberFromUInt32_78.exit.i:               ; preds = %bb.ah, %.lr.ph.i.i.i, %bb.ag
  %.0.lcssa.i.i.i = phi i32 [ %i.ds, %bb.ag ], [ 0, %bb.ah ], [ %.013.i.i.i, %.lr.ph.i.i.i ]
  store i32 %.0.lcssa.i.i.i, ptr %.0148, align 4, !tbaa !18
  %i.dz = icmp slt i32 %i.dg, 0
  br i1 %i.dz, label %bb.ai, label %uprv_decNumberFromInt32_78.exit

bb.ai:                                            ; preds = %uprv_decNumberFromUInt32_78.exit.i
  store i8 -128, ptr %i.dh, align 4, !tbaa !16
  br label %uprv_decNumberFromInt32_78.exit

uprv_decNumberFromInt32_78.exit:                  ; preds = %bb.af, %uprv_decNumberFromUInt32_78.exit.i, %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 8 uses
  store i32 0, ptr %i.eb, align 4, !tbaa !17
  store i32 1, ptr %.0, align 4, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 9 ; 14 uses
  store <8 x i8> <i8 0, i8 5, i8 8, i8 5, i8 2, i8 0, i8 3, i8 2>, ptr %i.ea, align 4, !tbaa !19
  %i.ed = ptrtoint ptr %i.ec to i64
  %.01011.i.i.i189 = getelementptr i8, ptr %.0, i64 15 ; 2 uses
  %.not12.i.i.i190 = icmp ult ptr %.01011.i.i.i189, %i.ec
  br i1 %.not12.i.i.i190, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %uprv_decNumberFromInt32_78.exit
  %i.ee = load i8, ptr %.01011.i.i.i189, align 1, !tbaa !19
  %.not294 = icmp eq i8 %i.ee, 0
  br i1 %.not294, label %bb.aj, label %uprv_decNumberFromInt32_78.exit199

bb.aj:                                            ; preds = %.lr.ph.i.i.i191
  %.010.i.i.i195 = getelementptr i8, ptr %.0, i64 14 ; 2 uses
  %.not.i.i.i196 = icmp ult ptr %.010.i.i.i195, %i.ec
  br i1 %.not.i.i.i196, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191.1

.lr.ph.i.i.i191.1:                                ; preds = %bb.aj
  %i.ef = load i8, ptr %.010.i.i.i195, align 2, !tbaa !19
  %.not295 = icmp eq i8 %i.ef, 0
  br i1 %.not295, label %bb.ak, label %uprv_decNumberFromInt32_78.exit199

bb.ak:                                            ; preds = %.lr.ph.i.i.i191.1
  %.010.i.i.i195.1 = getelementptr i8, ptr %.0, i64 13 ; 2 uses
  %.not.i.i.i196.1 = icmp ult ptr %.010.i.i.i195.1, %i.ec
  br i1 %.not.i.i.i196.1, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191.2

.lr.ph.i.i.i191.2:                                ; preds = %bb.ak
  %i.eg = load i8, ptr %.010.i.i.i195.1, align 1, !tbaa !19
  %.not296 = icmp eq i8 %i.eg, 0
  br i1 %.not296, label %bb.al, label %uprv_decNumberFromInt32_78.exit199

bb.al:                                            ; preds = %.lr.ph.i.i.i191.2
  %.010.i.i.i195.2 = getelementptr i8, ptr %.0, i64 12 ; 2 uses
  %.not.i.i.i196.2 = icmp ult ptr %.010.i.i.i195.2, %i.ec
  br i1 %.not.i.i.i196.2, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191.3

.lr.ph.i.i.i191.3:                                ; preds = %bb.al
  %i.eh = load i8, ptr %.010.i.i.i195.2, align 4, !tbaa !19
  %.not297 = icmp eq i8 %i.eh, 0
  br i1 %.not297, label %bb.am, label %uprv_decNumberFromInt32_78.exit199

bb.am:                                            ; preds = %.lr.ph.i.i.i191.3
  %.010.i.i.i195.3 = getelementptr i8, ptr %.0, i64 11 ; 2 uses
  %.not.i.i.i196.3 = icmp ult ptr %.010.i.i.i195.3, %i.ec
  br i1 %.not.i.i.i196.3, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191.4

.lr.ph.i.i.i191.4:                                ; preds = %bb.am
  %i.ei = load i8, ptr %.010.i.i.i195.3, align 1, !tbaa !19
  %.not298 = icmp eq i8 %i.ei, 0
  br i1 %.not298, label %bb.an, label %uprv_decNumberFromInt32_78.exit199

bb.an:                                            ; preds = %.lr.ph.i.i.i191.4
  %.010.i.i.i195.4 = getelementptr i8, ptr %.0, i64 10 ; 2 uses
  %.not.i.i.i196.4 = icmp ult ptr %.010.i.i.i195.4, %i.ec
  br i1 %.not.i.i.i196.4, label %uprv_decNumberFromInt32_78.exit199, label %.lr.ph.i.i.i191.5

.lr.ph.i.i.i191.5:                                ; preds = %bb.an
  %i.ej = load i8, ptr %.010.i.i.i195.4, align 2, !tbaa !19
  %.not299 = icmp eq i8 %i.ej, 0
  %spec.select304 = select i1 %.not299, i32 1, i32 2
  br label %uprv_decNumberFromInt32_78.exit199

uprv_decNumberFromInt32_78.exit199:               ; preds = %.lr.ph.i.i.i191.5, %.lr.ph.i.i.i191, %bb.aj, %.lr.ph.i.i.i191.1, %bb.ak, %.lr.ph.i.i.i191.2, %bb.al, %.lr.ph.i.i.i191.3, %bb.am, %.lr.ph.i.i.i191.4, %bb.an, %uprv_decNumberFromInt32_78.exit
  %.0.lcssa.i.i.i198 = phi i32 [ 7, %uprv_decNumberFromInt32_78.exit ], [ 0, %bb.aj ], [ 7, %.lr.ph.i.i.i191 ], [ 6, %.lr.ph.i.i.i191.1 ], [ 0, %bb.ak ], [ 5, %.lr.ph.i.i.i191.2 ], [ 0, %bb.al ], [ 4, %.lr.ph.i.i.i191.3 ], [ 0, %bb.am ], [ 3, %.lr.ph.i.i.i191.4 ], [ 0, %bb.an ], [ %spec.select304, %.lr.ph.i.i.i191.5 ]
  store i32 %.0.lcssa.i.i.i198, ptr %.0, align 4, !tbaa !18
  store i32 -6, ptr %i.eb, align 4, !tbaa !17
  %i.ek = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0148, ptr noundef nonnull %.0148, ptr noundef nonnull %.0, ptr noundef nonnull %8, ptr noundef %i.c) ; 0 uses
  store i32 0, ptr %i.d, align 4, !tbaa !21
  store i32 2, ptr %8, align 4, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 5, ptr %i.el, align 4, !tbaa !33
  %i.em = load i8, ptr %i.e, align 4, !tbaa !16
  store i8 %i.em, ptr %i.ea, align 4, !tbaa !16
  %i.en = load i32, ptr %i.bf, align 4, !tbaa !17
  store i32 %i.en, ptr %i.eb, align 4, !tbaa !17
  %i.eo = load i32, ptr %1, align 4, !tbaa !18
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef nonnull %.0, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %i.av, i32 noundef %i.eo, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  store i32 0, ptr %i.eb, align 4, !tbaa !17
  %i.ep = load i32, ptr %.0, align 4, !tbaa !18   ; 7 uses
  %i.eq = load i8, ptr %i.ea, align 4, !tbaa !16  ; 3 uses
  %i.er = icmp slt i8 %i.eq, 0                    ; 2 uses
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !19  ; 3 uses
  %i.et = icmp eq i8 %i.es, 0
  %i.eu = icmp eq i32 %i.ep, 1
  %or.cond87.i = select i1 %i.et, i1 %i.eu, i1 false
  %i.ev = and i8 %i.eq, 112
  %i.ew = icmp eq i8 %i.ev, 0
  %or.cond89.i = select i1 %or.cond87.i, i1 %i.ew, i1 false
  br i1 %or.cond89.i, label %_ZL9decGetIntPK9decNumber.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %uprv_decNumberFromInt32_78.exit199
  %i.ex = icmp slt i32 %i.ep, 11
  br i1 %i.ex, label %.preheader.i, label %.thread.i200

.preheader.i:                                     ; preds = %bb.ao
  %i.ey = zext i8 %i.es to i32                    ; 3 uses
  %i.ez = icmp sgt i32 %i.ep, 1
  br i1 %i.ez, label %.lr.ph.i202.preheader, label %_ZL9decGetIntPK9decNumber.exit

.lr.ph.i202.preheader:                            ; preds = %.preheader.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.0, i64 10 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ep to i64
  %i.fb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.fb, 3                    ; 3 uses
  %i.fc = add nsw i32 %i.ep, -2
  %i.fd = icmp ult i32 %i.fc, 3
  br i1 %i.fd, label %.lr.ph.i202.epil.preheader, label %.lr.ph.i202.preheader.new

.lr.ph.i202.preheader.new:                        ; preds = %.lr.ph.i202.preheader
  %unroll_iter = and i64 %i.fb, -4
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202, %.lr.ph.i202.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i202.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i202 ] ; 5 uses
  %.6111.i = phi ptr [ %i.fa, %.lr.ph.i202.preheader.new ], [ %i.gi, %.lr.ph.i202 ] ; 5 uses
  %.474110.i = phi i32 [ %i.ey, %.lr.ph.i202.preheader.new ], [ %i.gh, %.lr.ph.i202 ]
  %niter = phi i64 [ 0, %.lr.ph.i202.preheader.new ], [ %niter.next.3, %.lr.ph.i202 ]
  %i.fe = load i8, ptr %.6111.i, align 1, !tbaa !19
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !21
  %i.fi = mul i32 %i.fh, %i.ff
  %i.fj = add i32 %i.fi, %.474110.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.6111.i, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !19
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !21
  %i.fq = mul i32 %i.fp, %i.fm
  %i.fr = add i32 %i.fq, %i.fj
  %i.fs = getelementptr inbounds nuw i8, ptr %.6111.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !19
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !21
  %i.fy = mul i32 %i.fx, %i.fu
  %i.fz = add i32 %i.fy, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %.6111.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !19
  %i.gc = zext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !21
  %i.gg = mul i32 %i.gf, %i.gc
  %i.gh = add i32 %i.gg, %i.fz                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.6111.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i202, !llvm.loop !5

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i202
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i202.epil.preheader

.lr.ph.i202.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i202.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i202.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.6111.i.epil.init = phi ptr [ %i.fa, %.lr.ph.i202.preheader ], [ %i.gi, %._crit_edge.i.unr-lcssa ]
  %.474110.i.epil.init = phi i32 [ %i.ey, %.lr.ph.i202.preheader ], [ %i.gh, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod293 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod293)
  br label %.lr.ph.i202.epil

.lr.ph.i202.epil:                                 ; preds = %.lr.ph.i202.epil, %.lr.ph.i202.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i202.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i202.epil.preheader ] ; 2 uses
  %.6111.i.epil = phi ptr [ %i.gp, %.lr.ph.i202.epil ], [ %.6111.i.epil.init, %.lr.ph.i202.epil.preheader ] ; 2 uses
  %.474110.i.epil = phi i32 [ %i.go, %.lr.ph.i202.epil ], [ %.474110.i.epil.init, %.lr.ph.i202.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i202.epil ], [ 0, %.lr.ph.i202.epil.preheader ]
  %i.gj = load i8, ptr %.6111.i.epil, align 1, !tbaa !19
  %i.gk = zext i8 %i.gj to i32
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i.epil
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !21
  %i.gn = mul i32 %i.gm, %i.gk
  %i.go = add i32 %i.gn, %.474110.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.6111.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i202.epil, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i202.epil, %._crit_edge.i.unr-lcssa
  %.lcssa290 = phi i32 [ %i.gh, %._crit_edge.i.unr-lcssa ], [ %i.go, %.lr.ph.i202.epil ] ; 5 uses
  %i.gq = icmp eq i32 %i.ep, 10
  br i1 %i.gq, label %bb.ap, label %_ZL9decGetIntPK9decNumber.exit

bb.ap:                                            ; preds = %._crit_edge.i
  %i.gr = add nsw i32 %i.ep, -2
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = getelementptr i8, ptr %.0, i64 %i.gs
  %scevgep = getelementptr i8, ptr %i.gt, i64 10
  %i.gu = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !21
  %i.gx = sdiv i32 %.lcssa290, %i.gw
  %i.gy = load i8, ptr %scevgep, align 1, !tbaa !19
  %i.gz = zext i8 %i.gy to i32
  %.not85.i = icmp ne i32 %i.gx, %i.gz
  %i.ha = icmp sgt i32 %.lcssa290, 1999999997
  %or.cond.i = select i1 %i.er, i1 %i.ha, i1 false
  %or.cond93.i = select i1 %.not85.i, i1 true, i1 %or.cond.i
  %i.hb = icmp sgt i8 %i.eq, -1
  %i.hc = icmp sgt i32 %.lcssa290, 999999999
  %or.cond4.i = select i1 %i.hb, i1 %i.hc, i1 false
  %i.hd = select i1 %or.cond93.i, i1 true, i1 %or.cond4.i
  br i1 %i.hd, label %.thread.i200, label %_ZL9decGetIntPK9decNumber.exit

.thread.i200:                                     ; preds = %bb.ap, %bb.ao
  %i.he = trunc i8 %i.es to i1
  %i.hf = select i1 %i.he, i32 30, i32 20
  br label %_ZL9decGetIntPK9decNumber.exit.thread

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %.preheader.i, %._crit_edge.i, %bb.ap
  %.474.lcssa.i225 = phi i32 [ %.lcssa290, %._crit_edge.i ], [ %.lcssa290, %bb.ap ], [ %i.ey, %.preheader.i ] ; 2 uses
  %i.hg = sub nsw i32 0, %.474.lcssa.i225
  %spec.select92.i = select i1 %i.er, i32 %i.hg, i32 %.474.lcssa.i225
  %spec.select92.i.fr = freeze i32 %spec.select92.i ; 3 uses
  %i.hh = icmp slt i32 %spec.select92.i.fr, 10
  %i.hi = mul i32 %spec.select92.i.fr, 10
  %spec.select236 = select i1 %i.hh, i32 %i.hi, i32 %spec.select92.i.fr
  br label %_ZL9decGetIntPK9decNumber.exit.thread

_ZL9decGetIntPK9decNumber.exit.thread:            ; preds = %uprv_decNumberFromInt32_78.exit199, %.thread.i200, %_ZL9decGetIntPK9decNumber.exit
  %i.hj = phi i32 [ %spec.select236, %_ZL9decGetIntPK9decNumber.exit ], [ 0, %uprv_decNumberFromInt32_78.exit199 ], [ %i.hf, %.thread.i200 ]
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr [2 x i8], ptr @_ZL4LNnn, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -20
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !110
  %i.ho = zext i16 %i.hn to i32                   ; 2 uses
  %i.hp = lshr i32 %i.ho, 2                       ; 2 uses
  store i8 0, ptr %i.ea, align 4, !tbaa !16
  store i32 0, ptr %i.eb, align 4, !tbaa !17
  store i32 1, ptr %.0, align 4, !tbaa !18
  store i8 0, ptr %i.ec, align 1, !tbaa !19
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %uprv_decNumberFromInt32_78.exit220, label %.preheader.i.i205.a

.preheader.i.i205.a:                              ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %.preheader.i.i205.a
  %.018.i.i206 = phi ptr [ %i.ht, %.preheader.i.i205.a ], [ %i.ec, %_ZL9decGetIntPK9decNumber.exit.thread ] ; 2 uses
  %.01417.i.i207 = phi i32 [ %10, %.preheader.i.i205.a ], [ %i.hp, %_ZL9decGetIntPK9decNumber.exit.thread ] ; 3 uses
  %i.hr = urem i32 %.01417.i.i207, 10
  %i.hs = trunc nuw nsw i32 %i.hr to i8
  store i8 %i.hs, ptr %.018.i.i206, align 1, !tbaa !19
  %10 = udiv i32 %.01417.i.i207, 10
  %i.ht = getelementptr inbounds nuw i8, ptr %.018.i.i206, i64 1 ; 2 uses
  %.not.i.i208.a = icmp samesign ult i32 %.01417.i.i207, 10
  br i1 %.not.i.i208.a, label %bb.aq, label %.preheader.i.i205.a, !llvm.loop !0

bb.aq:                                            ; preds = %.preheader.i.i205.a
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.ed                    ; 2 uses
  %i.hw = trunc i64 %i.hv to i32                  ; 2 uses
  %sext.i.i209 = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i209, 32
  %i.hy = getelementptr i8, ptr %i.ec, i64 %i.hx
  %.01011.i.i.i210 = getelementptr i8, ptr %i.hy, i64 -1 ; 2 uses
  %.not12.i.i.i211 = icmp ult ptr %.01011.i.i.i210, %i.ec
  br i1 %.not12.i.i.i211, label %uprv_decNumberFromUInt32_78.exit.i218, label %.lr.ph.i.i.i212

.lr.ph.i.i.i212:                                  ; preds = %bb.aq, %bb.ar
  %.01014.i.i.i213 = phi ptr [ %.010.i.i.i216, %bb.ar ], [ %.01011.i.i.i210, %bb.aq ] ; 2 uses
  %.013.i.i.i214 = phi i32 [ %i.ic, %bb.ar ], [ %i.hw, %bb.aq ] ; 3 uses
  %i.hz = load i8, ptr %.01014.i.i.i213, align 1, !tbaa !19
  %i.ia = icmp ne i8 %i.hz, 0
  %i.ib = icmp eq i32 %.013.i.i.i214, 1
  %or.cond.i.i.i215 = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond.i.i.i215, label %uprv_decNumberFromUInt32_78.exit.i218, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i212
  %i.ic = add nsw i32 %.013.i.i.i214, -1
  %.010.i.i.i216 = getelementptr i8, ptr %.01014.i.i.i213, i64 -1 ; 2 uses
  %.not.i.i.i217 = icmp ult ptr %.010.i.i.i216, %i.ec
  br i1 %.not.i.i.i217, label %uprv_decNumberFromUInt32_78.exit.i218, label %.lr.ph.i.i.i212, !llvm.loop !1

uprv_decNumberFromUInt32_78.exit.i218:            ; preds = %bb.ar, %.lr.ph.i.i.i212, %bb.aq
  %.0.lcssa.i.i.i219 = phi i32 [ %i.hw, %bb.aq ], [ 0, %bb.ar ], [ %.013.i.i.i214, %.lr.ph.i.i.i212 ]
  store i32 %.0.lcssa.i.i.i219, ptr %.0, align 4, !tbaa !18
  br label %uprv_decNumberFromInt32_78.exit220

uprv_decNumberFromInt32_78.exit220:               ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %uprv_decNumberFromUInt32_78.exit.i218
  %i.id = and i32 %i.ho, 3
  %i.ie = sub nuw nsw i32 -3, %i.id
  store i32 %i.ie, ptr %i.eb, align 4, !tbaa !17
  store i8 -128, ptr %i.ea, align 4, !tbaa !16
  store i32 16, ptr %8, align 4, !tbaa !26
  store i32 3, ptr %i.el, align 4, !tbaa !33
  %i.if = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0148, ptr noundef nonnull %.0148, ptr noundef nonnull %.0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.ig, align 4, !tbaa !16
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.ih, align 4, !tbaa !17
  store i32 1, ptr %6, align 4, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 1, ptr %i.ii, align 1, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.il = load <2 x i32>, ptr %i.ij, align 4, !tbaa !21
  store <2 x i32> %i.il, ptr %i.ik, align 4, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.im, align 4, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 4 dereferenceable(28) %8, i64 28, i1 false), !tbaa.struct !36
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 1999998, ptr %i.in, align 4, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 -1999998, ptr %i.io, align 4, !tbaa !28
  br label %.outer

.outer:                                           ; preds = %bb.bk, %uprv_decNumberFromInt32_78.exit220
  %spec.select182.sink273 = phi i32 [ %spec.select182, %bb.bk ], [ 9, %uprv_decNumberFromInt32_78.exit220 ] ; 4 uses
  store i32 %spec.select182.sink273, ptr %8, align 4, !tbaa !26
  %i.ip = load i32, ptr %1, align 4, !tbaa !18
  %i.iq = add nsw i32 %i.ip, %spec.select182.sink273
  store i32 %i.iq, ptr %9, align 4, !tbaa !26
  %i.ir = icmp eq i32 %spec.select182.sink273, %i.ca
  br label %bb.as

bb.as:                                            ; preds = %.outer, %bb.bj
  %i.is = load i8, ptr %i.dh, align 4, !tbaa !16
  %i.it = xor i8 %i.is, -128
  store i8 %i.it, ptr %i.dh, align 4, !tbaa !16
  %i.iu = call fastcc noundef ptr @_ZL8decExpOpP9decNumberPKS_P10decContextPj(ptr noundef nonnull %.0, ptr noundef nonnull %.0148, ptr noundef nonnull %9, ptr noundef %i.c) ; 0 uses
  %i.iv = load i8, ptr %i.dh, align 4, !tbaa !16
  %i.iw = xor i8 %i.iv, -128
  store i8 %i.iw, ptr %i.dh, align 4, !tbaa !16
  %i.ix = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0, ptr noundef nonnull %.0, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef %i.c) ; 0 uses
  %i.iy = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0, ptr noundef nonnull %.0, ptr noundef nonnull %6, ptr noundef nonnull %9, i8 noundef zeroext -128, ptr noundef %i.c) ; 0 uses
  %i.iz = load i8, ptr %i.ec, align 1, !tbaa !19
  %i.ja = icmp eq i8 %i.iz, 0                     ; 2 uses
  %.pre244 = load i32, ptr %.0, align 4, !tbaa !18 ; 3 uses
  %i.jb = icmp eq i32 %.pre244, 1
  %or.cond274 = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %or.cond274, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jc = load i8, ptr %i.ea, align 4, !tbaa !16
  %i.jd = and i8 %i.jc, 112
  %i.je = icmp eq i8 %i.jd, 0
  br i1 %i.je, label %._crit_edge245, label %bb.au

._crit_edge245:                                   ; preds = %bb.at
  %.pre246 = load i32, ptr %.0148, align 4, !tbaa !18
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jf = load i32, ptr %.0148, align 4, !tbaa !18 ; 2 uses
  %i.jg = load i32, ptr %i.di, align 4, !tbaa !17
  %i.jh = add nsw i32 %i.jg, %i.jf
  %i.ji = load i32, ptr %i.eb, align 4, !tbaa !17
  %i.jj = add nsw i32 %i.ji, %.pre244
  %i.jk = load i32, ptr %2, align 4, !tbaa !26
  %i.jl = add nsw i32 %i.jj, %i.jk
  %.not175.not = icmp sgt i32 %i.jh, %i.jl
  br i1 %.not175.not, label %bb.av, label %bb.bj

bb.av:                                            ; preds = %._crit_edge245, %bb.au
  %i.jm = phi i32 [ %.pre246, %._crit_edge245 ], [ %i.jf, %bb.au ] ; 2 uses
  %i.jn = icmp eq i32 %i.jm, %i.ca
  br i1 %i.jn, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jo = load i8, ptr %i.dj, align 1, !tbaa !19
  %i.jp = icmp eq i8 %i.jo, 0
  %i.jq = icmp eq i32 %i.jm, 1
  %or.cond = and i1 %i.jq, %i.jp
  br i1 %or.cond, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.jr = load i8, ptr %i.dh, align 4, !tbaa !16
  %i.js = and i8 %i.jr, 112
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.ju = load i8, ptr %i.e, align 4, !tbaa !16
  %i.jv = and i8 %i.ju, 48
  %.not115.i = icmp eq i8 %i.jv, 0
  br i1 %.not115.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %7, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jx = call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, i8 noundef zeroext 0) ; 3 uses
  %i.jy = icmp eq i32 %i.jx, -2147483648
  br i1 %i.jy, label %bb.bb, label %.thread139.i

bb.bb:                                            ; preds = %bb.ba
  %i.jz = load i32, ptr %i.c, align 4, !tbaa !21
  %i.ka = or i32 %i.jz, 16
  store i32 %i.ka, ptr %i.c, align 4, !tbaa !21
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

.thread139.i:                                     ; preds = %bb.ba
  %i.kb = icmp eq i32 %i.jx, 0
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 0, ptr %i.kc, align 4, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.kd, align 4, !tbaa !17
  store i32 1, ptr %7, align 4, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 2 uses
  store i8 0, ptr %i.ke, align 1, !tbaa !19
  br i1 %i.kb, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit, label %bb.bc

bb.bc:                                            ; preds = %.thread139.i
  store i8 1, ptr %i.ke, align 1, !tbaa !19
  %i.kf = icmp slt i32 %i.jx, 0
  br i1 %i.kf, label %bb.bd, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

bb.bd:                                            ; preds = %bb.bc
  store i8 -128, ptr %i.kc, align 4, !tbaa !16
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit: ; preds = %bb.az, %bb.bb, %.thread139.i, %bb.bc, %bb.bd
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !19
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  store i32 0, ptr %i.di, align 4, !tbaa !17
  br label %.loopexit

bb.bf:                                            ; preds = %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  %i.kj = load i32, ptr %3, align 4, !tbaa !21
  %i.kk = or i32 %i.kj, 2080
  store i32 %i.kk, ptr %3, align 4, !tbaa !21
  br label %.loopexit

bb.bg:                                            ; preds = %bb.ax, %bb.aw
  %i.kl = icmp eq i32 %.pre244, 1
  %or.cond275 = select i1 %i.ja, i1 %i.kl, i1 false
  br i1 %or.cond275, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.km = load i8, ptr %i.ea, align 4, !tbaa !16
  %i.kn = and i8 %i.km, 112
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kp = load i32, ptr %i.di, align 4, !tbaa !17
  %i.kq = sub nsw i32 %i.kp, %i.ca
  store i32 %i.kq, ptr %i.eb, align 4, !tbaa !17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.au
  %i.kr = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0148, ptr noundef nonnull %.0148, ptr noundef nonnull %.0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  br i1 %i.ir, label %bb.as, label %bb.bk, !llvm.loop !108

end_hunk_0
