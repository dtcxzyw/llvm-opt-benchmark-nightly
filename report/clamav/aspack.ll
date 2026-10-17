Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/aspack?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@unaspack:bb.a
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep510 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.unaspack.5, i64 %i.i
  %switch.load511 = load i16, ptr %switch.gep510, align 2
  %switch.ext512 = zext i16 %switch.load511 to i64
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %switch.load) #11
  %i.j = zext i32 %4 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %switch.ext
  %i.m = tail call noalias dereferenceable_or_null(6144) ptr @calloc(i64 noundef 6144, i64 noundef 1) #12 ; 10 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #11
  br label %bb.ba

bb.d:                                             ; preds = %switch.lookup
  %switch.ext503 = zext i16 %switch.load502 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2884
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %i.o, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 721, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 3140
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr %i.r, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 3252
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 272
  store ptr %i.t, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 280
  store i32 28, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 3508
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 288
  store ptr %i.w, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 3540
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 296
  store ptr %i.y, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 304
  store i32 8, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 3796
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 312
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 3872
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 320
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 328
  store i32 19, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 4128
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 352 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 10 uses
  store i32 65536, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ak = add i32 %4, %switch.ext503              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.0171249 = phi i32 [ 0, %bb.d ], [ %.1172.1, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store i32 %.0171249, ptr %i.al, align 8, !tbaa !18
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add i32 %i.ak, %i.am                    ; 2 uses
  %i.ao = icmp ult i32 %i.an, %1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw i32 1, %i.as
  %i.au = add i32 %i.at, %.0171249
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1172 = phi i32 [ %i.au, %bb.f ], [ %.0171249, %bb.e ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next
  store i32 %.1172, ptr %i.av, align 4, !tbaa !18
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = add i32 %i.ak, %i.aw                    ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %1
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = add i32 %i.bd, %.1172
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1172.1 = phi i32 [ %i.be, %bb.h ], [ %.1172, %bb.g ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 58
  br i1 %exitcond.not.1, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 1132
  %i.bg = zext i32 %1 to i64                      ; 3 uses
  %i.bh = icmp ugt i32 %1, 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(777) %i.bf, i8 0, i64 777, i1 false)
  br i1 %i.bh, label %.lr.ph318, label %.critedge211

.lr.ph318:                                        ; preds = %bb.j
  %i.bi = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.bj = add i64 %i.bg, %i.bi                    ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 336 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 344 ; 4 uses
  %i.bm = add i32 %4, %switch.ext506
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 1128
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bt = add i32 %4, %switch.ext509
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = icmp eq i32 %7, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph318, %.loopexit
  %.1174316483 = phi i32 [ 0, %.lr.ph318 ], [ %.4, %.loopexit ] ; 2 uses
  %.0169317482 = phi ptr [ %i.l, %.lr.ph318 ], [ %.2, %.loopexit ] ; 6 uses
  %i.bx = ptrtoint ptr %.0169317482 to i64        ; 2 uses
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %.not195 = icmp ule i64 %i.by, %i.bj
  %i.bz = icmp ugt i64 %i.by, %i.bi
  %or.cond = and i1 %.not195, %i.bz
  %i.ca = icmp ugt i64 %i.bj, %i.bx
  %or.cond208 = and i1 %i.ca, %or.cond
  br i1 %or.cond208, label %bb.l, label %.critedge211

bb.l:                                             ; preds = %bb.k
  %i.cb = load i32, ptr %.0169317482, align 1, !tbaa !19 ; 4 uses
  %.not196 = icmp eq i32 %i.cb, 0
  br i1 %.not196, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.0169317482, i64 4
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !19 ; 10 uses
  %.not197 = icmp eq i32 %i.cd, 0
  br i1 %.not197, label %.critedge211, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.not198 = icmp ugt i32 %i.cd, %1
  br i1 %.not198, label %.critedge211, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = zext i32 %i.cb to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf ; 17 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = add i64 %i.ce, %i.ch                    ; 2 uses
  %.not200 = icmp ule i64 %i.ci, %i.bj
  %i.cj = icmp ugt i64 %i.ci, %i.bi
  %or.cond209 = and i1 %.not200, %i.cj
  %i.ck = icmp ugt i64 %i.bj, %i.ch
  %or.cond210 = and i1 %i.ck, %or.cond209
  br i1 %or.cond210, label %bb.p, label %.critedge211

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.cb, i32 noundef %i.cd) #11
  %i.cl = add i32 %i.cd, 270
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = tail call ptr @cli_max_calloc(i64 noundef %i.cm, i64 noundef 1) #11 ; 6 uses
  %.not201 = icmp eq ptr %i.cn, null
  br i1 %.not201, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #11
  br label %.critedge211

bb.r:                                             ; preds = %bb.p
  store ptr %i.cn, ptr %i.bk, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store ptr %i.co, ptr %i.bl, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %i.cg, i64 %i.ce, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.bp, i8 0, i64 768, i1 false)
  %i.cp = load ptr, ptr %i.ah, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.cp, i8 0, i64 757, i1 false)
  store i32 32, ptr %8, align 8, !tbaa !22
  %i.cq = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %8)
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %decomp_block.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef range(i32 1, 0) %i.cd) #11
  br label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %.outer.backedge.i.i, %bb.s
  %.074.ph.i21.i = phi i32 [ 0, %bb.s ], [ %.074.ph.be.i.i, %.outer.backedge.i.i ] ; 15 uses
  %i.cr = phi i32 [ 0, %bb.s ], [ %i.cz, %.outer.backedge.i.i ] ; 4 uses
  br label %.outer.split.i.i

.outer.split.i.i:                                 ; preds = %bb.w, %.outer.split.i.preheader.i
  %i.cs = call fastcc i32 @getdec(ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %i.b) ; 5 uses
  %i.ct = load i32, ptr %i.b, align 4, !tbaa !18
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %bb.t, label %decomp_block.exit.thread214

bb.t:                                             ; preds = %.outer.split.i.i
  %i.cu = icmp ult i32 %i.cs, 256
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = trunc nuw i32 %i.cs to i8
  %i.cw = zext i32 %.074.ph.i21.i to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !19
  %i.cy = add nuw i32 %.074.ph.i21.i, 1
  br label %.outer.backedge.i.i

.outer.backedge.i.i:                              ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %bb.u
  %i.cz = phi i32 [ %i.cr, %bb.u ], [ %i.gz, %middle.block ], [ %i.gz, %vec.epilog.middle.block ], [ %i.gz, %.preheader.i.i ], [ %i.gz, %.preheader.i.i.prol.loopexit ]
  %.074.ph.be.i.i = phi i32 [ %i.cy, %bb.u ], [ %i.ho, %middle.block ], [ %i.hz, %vec.epilog.middle.block ], [ %.lcssa536.unr, %.preheader.i.i.prol.loopexit ], [ %i.ju, %.preheader.i.i ] ; 2 uses
  %i.da = icmp ult i32 %.074.ph.be.i.i, %i.cd
  br i1 %i.da, label %.outer.split.i.preheader.i, label %bb.al

bb.v:                                             ; preds = %bb.t
  %i.db = icmp ugt i32 %i.cs, 719
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %8)
  %.not95.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not95.i.i, label %decomp_block.exit.thread214, label %.outer.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.dd = add nsw i32 %i.cs, -256
  %i.de = lshr i32 %i.dd, 3
  %i.df = and i32 %i.cs, 7                        ; 2 uses
  %i.dg = add nuw nsw i32 %i.df, 2                ; 2 uses
  %i.dh = icmp eq i32 %i.df, 7
  br i1 %i.dh, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.x
  %.pr.i99.i.pre.i = load i32, ptr %8, align 8, !tbaa !22
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.di = call fastcc i32 @getdec(ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef %i.b) ; 2 uses
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !18
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = icmp ugt i32 %i.di, 85
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %decomp_block.exit.thread214, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19
  %.pr.i.i.i = load i32, ptr %8, align 8, !tbaa !22 ; 3 uses
  %i.dq = icmp ugt i32 %.pr.i.i.i, 7
  br i1 %i.dq, label %.lr.ph.i.i.i, label %..loopexit121_crit_edge.i.i

..loopexit121_crit_edge.i.i:                      ; preds = %bb.z
  %.pre.i.i = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit121.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.dr = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i259 = icmp ult ptr %.promoted.i.i.i, %i.dr
  br i1 %.not.i.i.i259, label %.lr.ph.preheader, label %decomp_block.exit.thread214

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i
  %.promoted = load i32, ptr %i.ai, align 4
  br label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %exitcond376.not = icmp eq ptr %i.dz, %i.dr
  br i1 %exitcond376.not, label %decomp_block.exit.thread214, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %i.ds = phi i32 [ %i.ea, %bb.aa ], [ %.pr.i.i.i, %.lr.ph.preheader ]
  %i.dt = phi ptr [ %i.dz, %bb.aa ], [ %.promoted.i.i.i, %.lr.ph.preheader ] ; 2 uses
  %i.du = phi i32 [ %i.dy, %bb.aa ], [ %.promoted, %.lr.ph.preheader ]
  %i.dv = shl i32 %i.du, 8
  %i.dw = load i8, ptr %i.dt, align 1, !tbaa !19
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx            ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 3 uses
  %i.ea = add i32 %i.ds, -8                       ; 3 uses
  %i.eb = icmp ugt i32 %i.ea, 7
  br i1 %i.eb, label %bb.aa, label %.loopexit121.i.i.loopexit

.loopexit121.i.i.loopexit:                        ; preds = %.lr.ph
  store i32 %i.dy, ptr %i.ai, align 4
  store ptr %i.dz, ptr %i.bk, align 8
  br label %.loopexit121.i.i

.loopexit121.i.i:                                 ; preds = %.loopexit121.i.i.loopexit, %..loopexit121_crit_edge.i.i
  %i.ec = phi i32 [ %.pr.i.i.i, %..loopexit121_crit_edge.i.i ], [ %i.ea, %.loopexit121.i.i.loopexit ] ; 2 uses
  %i.ed = phi i32 [ %.pre.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dy, %.loopexit121.i.i.loopexit ]
  %i.ee = load i8, ptr %i.dn, align 1, !tbaa !19
  %i.ef = zext i8 %i.ee to i32
  %i.eg = sub nuw nsw i32 8, %i.ec
  %i.eh = lshr i32 %i.ed, %i.eg
  %i.ei = and i32 %i.eh, 16777215
  %i.ej = zext i8 %i.dp to i32                    ; 2 uses
  %i.ek = sub nsw i32 24, %i.ej
  %i.el = lshr i32 %i.ei, %i.ek
  %i.em = add nuw nsw i32 %i.dg, %i.ef
  %i.en = add nuw nsw i32 %i.em, %i.el
  %i.eo = add nuw nsw i32 %i.ec, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit121.i.i, %._crit_edge.i
  %.promoted298 = phi i32 [ %i.eo, %.loopexit121.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.178.i.i = phi i32 [ %i.en, %.loopexit121.i.i ], [ %i.dg, %._crit_edge.i ] ; 14 uses
  %i.ep = zext nneg i32 %i.de to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !18 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !19  ; 2 uses
  %i.ev = zext i8 %i.eu to i32                    ; 4 uses
  %i.ew = load i32, ptr %i.bq, align 8, !tbaa !23
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = icmp ult i8 %i.eu, 3
  %or.cond3.i.i = select i1 %i.ex, i1 true, i1 %i.ey
  %i.ez = icmp ugt i32 %.promoted298, 7           ; 2 uses
  br i1 %or.cond3.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ez, label %.lr.ph.i101.i.i, label %..loopexit117_crit_edge.i.i

..loopexit117_crit_edge.i.i:                      ; preds = %bb.ac
  %.pre134.i.i.a = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit117.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %.promoted.i102.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 2 uses
  %.not.i103.i.i301 = icmp ult ptr %.promoted.i102.i.i, %i.fa
  br i1 %.not.i103.i.i301, label %.lr.ph302.preheader, label %decomp_block.exit.thread214

.lr.ph302.preheader:                              ; preds = %.lr.ph.i101.i.i
  %.promoted291 = load i32, ptr %i.ai, align 4
  br label %.lr.ph302

bb.ad:                                            ; preds = %.lr.ph302
  %exitcond382.not = icmp eq ptr %i.fi, %i.fa
  br i1 %exitcond382.not, label %decomp_block.exit.thread214, label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %bb.ad
  %i.fb = phi i32 [ %i.fj, %bb.ad ], [ %.promoted298, %.lr.ph302.preheader ]
  %i.fc = phi ptr [ %i.fi, %bb.ad ], [ %.promoted.i102.i.i, %.lr.ph302.preheader ] ; 2 uses
  %i.fd = phi i32 [ %i.fh, %bb.ad ], [ %.promoted291, %.lr.ph302.preheader ]
  %i.fe = shl i32 %i.fd, 8
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !19
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fe, %i.fg            ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 1 ; 3 uses
  %i.fj = add i32 %i.fb, -8                       ; 3 uses
  %i.fk = icmp ugt i32 %i.fj, 7
  br i1 %i.fk, label %bb.ad, label %.loopexit117.i.i.loopexit

.loopexit117.i.i.loopexit:                        ; preds = %.lr.ph302
  store i32 %i.fh, ptr %i.ai, align 4
  store ptr %i.fi, ptr %i.bk, align 8
  br label %.loopexit117.i.i

.loopexit117.i.i:                                 ; preds = %.loopexit117.i.i.loopexit, %..loopexit117_crit_edge.i.i
  %i.fl = phi i32 [ %.promoted298, %..loopexit117_crit_edge.i.i ], [ %i.fj, %.loopexit117.i.i.loopexit ] ; 2 uses
  %i.fm = phi i32 [ %.pre134.i.i.a, %..loopexit117_crit_edge.i.i ], [ %i.fh, %.loopexit117.i.i.loopexit ]
  %i.fn = sub nuw nsw i32 8, %i.fl
  %i.fo = lshr i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 16777215
  %i.fq = sub nsw i32 24, %i.ev
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = add i32 %i.fr, %i.er
  %i.ft = add nuw nsw i32 %i.fl, %i.ev
  store i32 %i.ft, ptr %8, align 8, !tbaa !22
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.ez, label %.lr.ph.i107.i.i, label %..loopexit119_crit_edge.i.i

..loopexit119_crit_edge.i.i:                      ; preds = %bb.ae
  %.pre133.i.i = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit119.i.i

.lr.ph.i107.i.i:                                  ; preds = %bb.ae
  %i.fu = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %.promoted.i108.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 2 uses
  %.not.i109.i.i279 = icmp ult ptr %.promoted.i108.i.i, %i.fu
  br i1 %.not.i109.i.i279, label %.lr.ph280.preheader, label %decomp_block.exit.thread214

.lr.ph280.preheader:                              ; preds = %.lr.ph.i107.i.i
  %.promoted269 = load i32, ptr %i.ai, align 4
  br label %.lr.ph280

bb.af:                                            ; preds = %.lr.ph280
  %exitcond379.not = icmp eq ptr %i.gc, %i.fu
  br i1 %exitcond379.not, label %decomp_block.exit.thread214, label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.af
  %i.fv = phi i32 [ %i.gd, %bb.af ], [ %.promoted298, %.lr.ph280.preheader ]
  %i.fw = phi ptr [ %i.gc, %bb.af ], [ %.promoted.i108.i.i, %.lr.ph280.preheader ] ; 2 uses
  %i.fx = phi i32 [ %i.gb, %bb.af ], [ %.promoted269, %.lr.ph280.preheader ]
  %i.fy = shl i32 %i.fx, 8
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fy, %i.ga            ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 3 uses
  %i.gd = add i32 %i.fv, -8                       ; 3 uses
  %i.ge = icmp ugt i32 %i.gd, 7
  br i1 %i.ge, label %bb.af, label %.loopexit119.i.i.loopexit

.loopexit119.i.i.loopexit:                        ; preds = %.lr.ph280
  store i32 %i.gb, ptr %i.ai, align 4
  store ptr %i.gc, ptr %i.bk, align 8
  br label %.loopexit119.i.i

.loopexit119.i.i:                                 ; preds = %.loopexit119.i.i.loopexit, %..loopexit119_crit_edge.i.i
  %i.gf = phi i32 [ %.promoted298, %..loopexit119_crit_edge.i.i ], [ %i.gd, %.loopexit119.i.i.loopexit ] ; 2 uses
  %i.gg = phi i32 [ %.pre133.i.i, %..loopexit119_crit_edge.i.i ], [ %i.gb, %.loopexit119.i.i.loopexit ]
  %i.gh = add nsw i32 %i.ev, -3
  %i.gi = sub nuw nsw i32 8, %i.gf
  %i.gj = lshr i32 %i.gg, %i.gi
  %i.gk = and i32 %i.gj, 16777215
  %i.gl = sub nsw i32 27, %i.ev
  %i.gm = lshr i32 %i.gk, %i.gl
  %i.gn = shl nuw nsw i32 %i.gm, 3
  %i.go = add nsw i32 %i.gh, %i.gf
  store i32 %i.go, ptr %8, align 8, !tbaa !22
  %i.gp = call fastcc i32 @getdec(ptr noundef nonnull %8, i8 noundef zeroext 2, ptr noundef %i.b)
  %i.gq = add i32 %i.gp, %i.er
  %i.gr = add i32 %i.gq, %i.gn
  %i.gs = load i32, ptr %i.b, align 4, !tbaa !18
  %.not90.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not90.i.i, label %bb.ag, label %decomp_block.exit.thread214

bb.ag:                                            ; preds = %.loopexit119.i.i, %.loopexit117.i.i
  %.075.i.i = phi i32 [ %i.fs, %.loopexit117.i.i ], [ %i.gr, %.loopexit119.i.i ] ; 4 uses
  %i.gt = icmp ult i32 %.075.i.i, 3
  br i1 %i.gt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gu = zext nneg i32 %.075.i.i to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !18 ; 2 uses
  %.not92.i.i = icmp eq i32 %.075.i.i, 0
  br i1 %.not92.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.cr, ptr %i.gv, align 4, !tbaa !18
  br label %.sink.split.i.i

bb.aj:                                            ; preds = %bb.ag
  %i.gx = load i32, ptr %i.br, align 4, !tbaa !18
  store i32 %i.gx, ptr %i.bs, align 8, !tbaa !18
  store i32 %i.cr, ptr %i.br, align 4, !tbaa !18
  %i.gy = add i32 %.075.i.i, -3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aj, %bb.ai
  %.sink.i.i = phi i32 [ %i.gw, %bb.ai ], [ %i.gy, %bb.aj ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.a, align 16, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i.i, %bb.ah
  %i.gz = phi i32 [ %i.cr, %bb.ah ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.076.i.i = phi i32 [ %i.gw, %bb.ah ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.076.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.076.i.i, %.074.ph.i21.i
  %i.ha = sub nuw i32 %i.cd, %.074.ph.i21.i
  %i.hb = icmp ugt i32 %.178.i.i, %i.ha
  %or.cond98.i.i = select i1 %or.cond96.i.i, i1 true, i1 %i.hb
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread214, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %min.iters.check = icmp ult i32 %.178.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.hc = add nsw i32 %.178.i.i, -1               ; 2 uses
  %i.hd = xor i32 %.074.ph.i21.i, -1
  %i.he = icmp ugt i32 %i.hc, %i.hd
  %i.hf = sub i32 %.076.i.i, %.074.ph.i21.i
  %i.hg = icmp ult i32 %i.hf, %i.hc
  %i.hh = or i1 %i.he, %i.hg
  br i1 %i.hh, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hi = zext i32 %.074.ph.i21.i to i64
  %i.hj = xor i32 %.076.i.i, -1
  %i.hk = add i32 %.074.ph.i21.i, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %i.hm = sub nsw i64 %i.hl, %i.hi
  %diff.check = icmp ugt i64 %i.hm, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check489 = icmp ult i32 %.178.i.i, 32
  br i1 %min.iters.check489, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hn = and i32 %.178.i.i, 28
  %n.vec = and i32 %.178.i.i, -32                 ; 4 uses
  %i.ho = add i32 %.074.ph.i21.i, %n.vec          ; 2 uses
  %i.hp = and i32 %.178.i.i, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = add i32 %.074.ph.i21.i, %index          ; 2 uses
  %i.hr = add i32 %i.hq, %.neg.i.i
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load = load <16 x i8>, ptr %i.ht, align 1, !tbaa !19
  %wide.load490 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !19
  %i.hv = zext i32 %i.hq to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <16 x i8> %wide.load, ptr %i.hw, align 1, !tbaa !19
  store <16 x i8> %wide.load490, ptr %i.hx, align 1, !tbaa !19
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hy = icmp eq i32 %index.next, %n.vec
  br i1 %i.hy, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.178.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.hn, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec492 = and i32 %.178.i.i, -4               ; 3 uses
  %i.hz = add i32 %.074.ph.i21.i, %n.vec492       ; 2 uses
  %i.ia = and i32 %.178.i.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next495, %vec.epilog.vector.body ] ; 2 uses
  %i.ib = add i32 %.074.ph.i21.i, %index493       ; 2 uses
  %i.ic = add i32 %i.ib, %.neg.i.i
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.id
  %wide.load494 = load <4 x i8>, ptr %i.ie, align 1, !tbaa !19
  %i.if = zext i32 %i.ib to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.if
  store <4 x i8> %wide.load494, ptr %i.ig, align 1, !tbaa !19
  %index.next495 = add nuw i32 %index493, 4       ; 2 uses
  %i.ih = icmp eq i32 %index.next495, %n.vec492
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n496 = icmp eq i32 %.178.i.i, %n.vec492
  br i1 %cmp.n496, label %.outer.backedge.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1126.i.i.ph = phi i32 [ %.074.ph.i21.i, %iter.check ], [ %.074.ph.i21.i, %vector.scevcheck ], [ %.074.ph.i21.i, %vector.memcheck ], [ %i.ho, %vec.epilog.iter.check ], [ %i.hz, %vec.epilog.middle.block ] ; 2 uses
  %.2125.i.i.ph = phi i32 [ %.178.i.i, %iter.check ], [ %.178.i.i, %vector.scevcheck ], [ %.178.i.i, %vector.memcheck ], [ %i.hp, %vec.epilog.iter.check ], [ %i.ia, %vec.epilog.middle.block ] ; 4 uses
  %i.ii = add nsw i32 %.2125.i.i.ph, -1
  %xtraiter = and i32 %.2125.i.i.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.1126.i.i.prol = phi i32 [ %i.iq, %.preheader.i.i.prol ], [ %.1126.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.2125.i.i.prol = phi i32 [ %i.ij, %.preheader.i.i.prol ], [ %.2125.i.i.ph, %.preheader.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.ij = add nsw i32 %.2125.i.i.prol, -1         ; 2 uses
  %i.ik = add i32 %.1126.i.i.prol, %.neg.i.i
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !19
  %i.io = zext i32 %.1126.i.i.prol to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.io
  store i8 %i.in, ptr %i.ip, align 1, !tbaa !19
  %i.iq = add i32 %.1126.i.i.prol, 1              ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !26

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa536.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.iq, %.preheader.i.i.prol ]
  %.1126.i.i.unr = phi i32 [ %.1126.i.i.ph, %.preheader.i.i.preheader ], [ %i.iq, %.preheader.i.i.prol ]
  %.2125.i.i.unr = phi i32 [ %.2125.i.i.ph, %.preheader.i.i.preheader ], [ %i.ij, %.preheader.i.i.prol ]
  %i.ir = icmp ult i32 %i.ii, 3
  br i1 %i.ir, label %.outer.backedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.1126.i.i = phi i32 [ %i.ju, %.preheader.i.i ], [ %.1126.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 7 uses
  %.2125.i.i = phi i32 [ %i.jn, %.preheader.i.i ], [ %.2125.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.is = add i32 %.1126.i.i, %.neg.i.i
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !19
  %i.iw = zext i32 %.1126.i.i to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.iw
  store i8 %i.iv, ptr %i.ix, align 1, !tbaa !19
  %i.iy = add i32 %.1126.i.i, 1
  %i.iz = sub i32 %.1126.i.i, %.076.i.i
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !19
  %i.jd = zext i32 %i.iy to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jd
  store i8 %i.jc, ptr %i.je, align 1, !tbaa !19
  %i.jf = add i32 %.1126.i.i, 2                   ; 2 uses
  %i.jg = add i32 %i.jf, %.neg.i.i
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !19
  %i.jk = zext i32 %i.jf to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jk
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !19
  %i.jm = add i32 %.1126.i.i, 3                   ; 2 uses
  %i.jn = add nsw i32 %.2125.i.i, -4              ; 2 uses
  %i.jo = add i32 %i.jm, %.neg.i.i
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !19
  %i.js = zext i32 %i.jm to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.js
  store i8 %i.jr, ptr %i.jt, align 1, !tbaa !19
  %i.ju = add i32 %.1126.i.i, 4                   ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.jn, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !27

decomp_block.exit.thread214:                      ; preds = %bb.y, %.loopexit119.i.i, %bb.ak, %.lr.ph.i.i.i, %.lr.ph.i107.i.i, %.lr.ph.i101.i.i, %.outer.split.i.i, %bb.w, %bb.aa, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %decomp_block.exit.thread

decomp_block.exit.thread:                         ; preds = %bb.r, %decomp_block.exit.thread214
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #11
  tail call void @free(ptr noundef %i.cn) #11
  br label %.critedge211

bb.al:                                            ; preds = %.outer.backedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #11
  tail call void @free(ptr noundef %i.cn) #11
  %i.jv = icmp eq i32 %.1174316483, 0
  %i.jw = icmp ugt i32 %i.cd, 7
  %or.cond7 = and i1 %i.jv, %i.jw
  br i1 %or.cond7, label %.lr.ph314.preheader, label %.loopexit220

.lr.ph314.preheader:                              ; preds = %bb.al
  %i.jx = add i32 %i.cd, -6
  br label %.lr.ph314

.lr.ph314:                                        ; preds = %.lr.ph314.preheader, %bb.ao
  %.2175313 = phi i32 [ %i.kn, %bb.ao ], [ 0, %.lr.ph314.preheader ] ; 5 uses
  %i.jy = add i32 %.2175313, %i.cb                ; 2 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !19
  %i.kc = and i8 %i.kb, -2
  %or.cond10 = icmp eq i8 %i.kc, -24
  br i1 %or.cond10, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph314
  %i.kd = add i32 %i.jy, 1
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ke ; 3 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !19
  %i.kh = load i8, ptr %i.bv, align 1, !tbaa !19
  %i.ki = icmp eq i8 %i.kg, %i.kh
  br i1 %i.ki, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kj = load i32, ptr %i.kf, align 1, !tbaa !19
  %i.kk = lshr i32 %i.kj, 8
  %i.kl = sub i32 %i.kk, %.2175313
  store i32 %i.kl, ptr %i.kf, align 1, !tbaa !19
  %i.km = add i32 %.2175313, 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %.lr.ph314
  %.3 = phi i32 [ %i.km, %bb.an ], [ %.2175313, %bb.am ], [ %.2175313, %.lr.ph314 ]
  %i.kn = add i32 %.3, 1                          ; 3 uses
  %i.ko = icmp ult i32 %i.kn, %i.jx
  br i1 %i.ko, label %.lr.ph314, label %.loopexit220

.loopexit220:                                     ; preds = %bb.ao, %bb.al
  %.4 = phi i32 [ %.1174316483, %bb.al ], [ %i.kn, %bb.ao ]
  br i1 %i.bw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit220
  %i.kp = getelementptr inbounds nuw i8, ptr %.0169317482, i64 8
  br label %.loopexit

bb.aq:                                            ; preds = %.loopexit220
  %i.kq = getelementptr inbounds nuw i8, ptr %.0169317482, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.0169.pn = phi ptr [ %.0169317482, %bb.aq ], [ %.1170, %bb.ar ] ; 2 uses
  %.0167.in = phi ptr [ %i.kq, %bb.aq ], [ %i.kr, %bb.ar ]
  %.1170 = getelementptr inbounds nuw i8, ptr %.0169.pn, i64 12 ; 2 uses
  %.0167 = load i32, ptr %.0167.in, align 1, !tbaa !19
  %.not207 = icmp eq i32 %.0167, -270
  %i.kr = getelementptr inbounds nuw i8, ptr %.0169.pn, i64 28
  br i1 %.not207, label %bb.ar, label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %bb.ap
  %.2 = phi ptr [ %i.kp, %bb.ap ], [ %.1170, %bb.ar ] ; 2 uses
  %.not194 = icmp ult ptr %.2, %0
  br i1 %.not194, label %.critedge211, label %bb.k

.critedge:                                        ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  %i.ks = load ptr, ptr %i.n, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.ks) #11
  %i.kt = icmp ugt i16 %3, 2
  br i1 %i.kt, label %bb.as, label %bb.au

.critedge211:                                     ; preds = %bb.m, %bb.n, %.loopexit, %bb.o, %bb.k, %bb.j, %bb.q, %decomp_block.exit.thread
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  %i.ku = load ptr, ptr %i.n, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.ku) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  br label %bb.ba

bb.as:                                            ; preds = %.critedge
  %i.kv = zext i16 %3 to i32
  %i.kw = add nsw i32 %i.kv, -2                   ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !34
  %i.la = icmp eq i32 %4, %i.kz
  br i1 %i.la, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lb = zext i16 %3 to i64
  %i.lc = getelementptr [36 x i8], ptr %2, i64 %i.lb
  %i.ld = getelementptr i8, ptr %i.lc, i64 -24
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !35
  %.not204 = icmp eq i32 %i.le, 0
  %i.lf = trunc nuw i32 %i.kw to i16
  %spec.select = select i1 %.not204, i16 %i.lf, i16 %3
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.critedge
  %.0176 = phi i16 [ %spec.select, %bb.at ], [ %3, %.critedge ], [ %3, %bb.as ] ; 5 uses
  %i.lg = zext i16 %.0176 to i64
  %i.lh = mul nuw nsw i64 %i.lg, 36               ; 2 uses
  %i.li = tail call ptr @cli_max_malloc(i64 noundef %i.lh) #11 ; 9 uses
  %.not205 = icmp eq ptr %i.li, null
  br i1 %.not205, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #11
  %i.lj = tail call i64 @cli_writen(i32 noundef %6, ptr noundef %0, i64 noundef %i.bg) #11 ; 0 uses
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %2, i64 %i.lh, i1 false)
  %i.lk = zext i16 %.0176 to i32
  %.not328 = icmp eq i16 %.0176, 0
  br i1 %.not328, label %._crit_edge, label %.lr.ph325.preheader

.lr.ph325.preheader:                              ; preds = %bb.aw
  %wide.trip.count = zext i16 %.0176 to i64       ; 2 uses
  %xtraiter545 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ll = icmp ult i16 %.0176, 4
  br i1 %i.ll, label %.lr.ph325.epil.preheader, label %.lr.ph325.preheader.new

.lr.ph325.preheader.new:                          ; preds = %.lr.ph325.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325, %.lr.ph325.preheader.new
  %indvars.iv383 = phi i64 [ 0, %.lr.ph325.preheader.new ], [ %indvars.iv.next384.3, %.lr.ph325 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph325.preheader.new ], [ %niter.next.3, %.lr.ph325 ]
  %i.lm = getelementptr inbounds nuw [36 x i8], ptr %i.li, i64 %indvars.iv383 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load <2 x i32>, ptr %i.lm, align 4, !tbaa !18
  store <2 x i32> %i.lo, ptr %i.ln, align 4, !tbaa !18
  %i.lp = getelementptr inbounds nuw [36 x i8], ptr %i.li, i64 %indvars.iv383 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 36
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 44
  %i.ls = load <2 x i32>, ptr %i.lq, align 4, !tbaa !18
  store <2 x i32> %i.ls, ptr %i.lr, align 4, !tbaa !18
  %i.lt = getelementptr inbounds nuw [36 x i8], ptr %i.li, i64 %indvars.iv383 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 72
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 80
  %i.lw = load <2 x i32>, ptr %i.lu, align 4, !tbaa !18
  store <2 x i32> %i.lw, ptr %i.lv, align 4, !tbaa !18
  %i.lx = getelementptr inbounds nuw [36 x i8], ptr %i.li, i64 %indvars.iv383 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 108
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 116
  %i.ma = load <2 x i32>, ptr %i.ly, align 4, !tbaa !18
  store <2 x i32> %i.ma, ptr %i.lz, align 4, !tbaa !18
  %indvars.iv.next384.3 = add nuw nsw i64 %indvars.iv383, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph325

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph325
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %._crit_edge, label %.lr.ph325.epil.preheader

.lr.ph325.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph325.preheader
  %indvars.iv383.epil.init = phi i64 [ 0, %.lr.ph325.preheader ], [ %indvars.iv.next384.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod547 = icmp ne i64 %xtraiter545, 0
  tail call void @llvm.assume(i1 %lcmp.mod547)
  br label %.lr.ph325.epil

.lr.ph325.epil:                                   ; preds = %.lr.ph325.epil, %.lr.ph325.epil.preheader
  %indvars.iv383.epil = phi i64 [ %indvars.iv383.epil.init, %.lr.ph325.epil.preheader ], [ %indvars.iv.next384.epil, %.lr.ph325.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph325.epil.preheader ], [ %epil.iter.next, %.lr.ph325.epil ]
  %i.mb = getelementptr inbounds nuw [36 x i8], ptr %i.li, i64 %indvars.iv383.epil ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load <2 x i32>, ptr %i.mb, align 4, !tbaa !18
  store <2 x i32> %i.md, ptr %i.mc, align 4, !tbaa !18
  %indvars.iv.next384.epil = add nuw nsw i64 %indvars.iv383.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter545
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph325.epil, !llvm.loop !28

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph325.epil, %bb.aw
  %i.me = getelementptr inbounds nuw i8, ptr %i.k, i64 %switch.ext512
  %i.mf = load i32, ptr %i.me, align 1, !tbaa !19
  %i.mg = tail call i32 @cli_rebuildpe(ptr noundef %0, ptr noundef nonnull %i.li, i32 noundef %i.lk, i32 noundef %5, i32 noundef %i.mf, i32 noundef 0, i32 noundef 0, i32 noundef %6) #11
  %.not206 = icmp eq i32 %i.mg, 0
  br i1 %.not206, label %bb.ax, label %bb.ay

end_hunk_0
