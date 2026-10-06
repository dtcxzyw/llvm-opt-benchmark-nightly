Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/conc?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mergevirtual:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 272
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52 ; 2 uses
  %.not92114 = icmp eq ptr %i.cu, null
  br i1 %.not92114, label %.loopexit103, label %.preheader98

.preheader98:                                     ; preds = %.preheader102, %._crit_edge113
  %i.cv = phi ptr [ %i.ed, %._crit_edge113 ], [ %i.cr, %.preheader102 ]
  %i.cw = phi ptr [ %i.eg, %._crit_edge113 ], [ %i.cu, %.preheader102 ] ; 5 uses
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 272
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !52 ; 2 uses
  %cond108 = icmp eq ptr %i.da, null
  %.pre = load i32, ptr %i.cw, align 8
  %.pre166 = and i32 %.pre, 3                     ; 2 uses
  br i1 %cond108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader98
  %i.db = icmp eq i32 %.pre166, 2
  %i.dc = select i1 %i.db, i64 56, i64 -8
  %i.dd = getelementptr inbounds i8, ptr %i.cw, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52 ; 2 uses
  %cond = icmp eq ptr %i.dg, null
  br i1 %cond, label %._crit_edge, label %bb.e, !llvm.loop !89

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %i.dh = phi ptr [ %i.da, %.lr.ph ], [ %i.dg, %bb.d ] ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = and i32 %i.di, 3
  %i.dk = icmp eq i32 %i.dj, 2
  %i.dl = select i1 %i.dk, i64 56, i64 -8
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !56
  %i.do = icmp eq ptr %i.dn, %i.de
  br i1 %i.do, label %.loopexit99, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader98
  %i.dp = icmp eq i32 %.pre166, 2
  %i.dq = select i1 %i.dp, i64 56, i64 -8
  %i.dr = getelementptr inbounds i8, ptr %i.cw, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !56
  %i.dt = tail call ptr @virtual_edge(ptr noundef nonnull %i.k, ptr noundef %i.ds, ptr noundef nonnull %i.cw) #3
  %.pre160 = load ptr, ptr %i.cq, align 8, !tbaa !13
  br label %.loopexit99

.loopexit99:                                      ; preds = %bb.e, %._crit_edge
  %i.du = phi ptr [ %.pre160, %._crit_edge ], [ %i.cv, %bb.e ]
  %.077 = phi ptr [ %i.dt, %._crit_edge ], [ %i.dh, %bb.e ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !51
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !52 ; 2 uses
  %.not94110 = icmp eq ptr %i.dx, null
  br i1 %.not94110, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.loopexit99, %.lr.ph112
  %i.dy = phi ptr [ %i.ec, %.lr.ph112 ], [ %i.dx, %.loopexit99 ] ; 2 uses
  tail call void @merge_oneway(ptr noundef nonnull %i.dy, ptr noundef %.077) #3
  tail call void @delete_fast_edge(ptr noundef nonnull %i.dy) #3
  %i.dz = load ptr, ptr %i.cq, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 256
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !51
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 2 uses
  %.not94 = icmp eq ptr %i.ec, null
  br i1 %.not94, label %._crit_edge113, label %.lr.ph112, !llvm.loop !90

._crit_edge113:                                   ; preds = %.lr.ph112, %.loopexit99
  tail call void @delete_fast_edge(ptr noundef nonnull %i.cw) #3
  %i.ed = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 272
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !65
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !52 ; 2 uses
  %.not92 = icmp eq ptr %i.eg, null
  br i1 %.not92, label %.loopexit103, label %.preheader98, !llvm.loop !91

.loopexit103:                                     ; preds = %._crit_edge113, %.preheader102
  tail call void @delete_fast_node(ptr noundef %0, ptr noundef nonnull %i.cp) #3
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next141 to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader, label %.preheader102, !llvm.loop !88

._crit_edge132.loopexit:                          ; preds = %.lr.ph131.new, %.prol.loopexit
  %indvars.iv.next154.lcssa = phi i64 [ %indvars.iv.next154.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next154.1, %.lr.ph131.new ]
  %i.eh = trunc nsw i64 %indvars.iv.next154.lcssa to i32
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader, %._crit_edge132.loopexit
  %.2.lcssa = phi i32 [ %i.eh, %._crit_edge132.loopexit ], [ %i.l, %.preheader ] ; 2 uses
  store i32 %.2.lcssa, ptr %i.br, align 8, !tbaa !40
  %i.ei = sext i32 %.2.lcssa to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ei
  store ptr null, ptr %i.ej, align 8, !tbaa !43
  ret void

.lr.ph131.new:                                    ; preds = %.prol.loopexit, %.lr.ph131.new
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.1, %.lr.ph131.new ], [ %indvars.iv153.unr, %.prol.loopexit ] ; 4 uses
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.1, %.lr.ph131.new ], [ %indvars.iv151.unr, %.prol.loopexit ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv151
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv153
  store ptr %i.el, ptr %i.em, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 364
  %i.eq = trunc nsw i64 %indvars.iv153 to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !68
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv151
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv.next154
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !43
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 364
  %i.ey = trunc nsw i64 %indvars.iv.next154 to i32
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !68
  %indvars.iv.next154.1 = add nsw i64 %indvars.iv153, 2 ; 2 uses
  %indvars.iv.next152.1 = add nsw i64 %indvars.iv151, 2 ; 2 uses
  %lftr.wideiv158.1 = trunc i64 %indvars.iv.next152.1 to i32
  %exitcond159.not.1 = icmp eq i32 %i.bs, %lftr.wideiv158.1
  br i1 %exitcond159.not.1, label %._crit_edge132.loopexit, label %.lr.ph131.new, !llvm.loop !92
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @rebuild_vlists(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %.not138 = icmp sgt i32 %i.d, %i.f
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = sext i32 %i.d to i64
  %i.j = shl nsw i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.j
  %i.k = sub i32 %i.f, %i.d
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @dot_scan_ranks(ptr noundef nonnull %0) #3
  %i.o = tail call ptr @agfstnode(ptr noundef nonnull %0) #3 ; 2 uses
  %.not115144 = icmp eq ptr %i.o, null
  br i1 %.not115144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %._crit_edge, %._crit_edge143
  %.0100145 = phi ptr [ %i.ag, %._crit_edge143 ], [ %i.o, %._crit_edge ] ; 4 uses
  %.val129 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr i8, ptr %.val129, i64 384
  %.val129.val = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %.0100145, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  %i.t = load i32, ptr %i.s, align 8, !tbaa !63
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val129.val, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph147
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 364
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 364
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68
  %i.ae = icmp sgt i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %infuse.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph147
  store ptr %.0100145, ptr %i.v, align 8, !tbaa !43
  br label %infuse.exit

infuse.exit:                                      ; preds = %bb.b, %bb.c
  %i.af = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.0100145) #3 ; 2 uses
  %.not125141 = icmp eq ptr %i.af, null
  br i1 %.not125141, label %._crit_edge143, label %.preheader132

.preheader132:                                    ; preds = %infuse.exit, %.critedge
  %.098142 = phi ptr [ %i.cb, %.critedge ], [ %i.af, %infuse.exit ] ; 5 uses
  br label %bb.d

._crit_edge143:                                   ; preds = %.critedge, %infuse.exit
  %i.ag = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.0100145) #3 ; 2 uses
  %.not115 = icmp eq ptr %i.ag, null
  br i1 %.not115, label %._crit_edge148, label %.lr.ph147, !llvm.loop !93

bb.d:                                             ; preds = %.preheader132, %bb.d
  %.099 = phi ptr [ %i.ak, %bb.d ], [ %.098142, %.preheader132 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.099, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !102 ; 2 uses
  %.not126 = icmp eq ptr %i.ak, null
  br i1 %.not126, label %.preheader131.preheader, label %bb.d, !llvm.loop !94

.preheader131.preheader:                          ; preds = %bb.d
  %.pre181 = load i32, ptr %.098142, align 8
  br label %.preheader131

.preheader131:                                    ; preds = %.preheader131.preheader, %infuse.exit130
  %1 = phi i32 [ %2, %infuse.exit130 ], [ %.pre181, %.preheader131.preheader ] ; 2 uses
  %.1140 = phi ptr [ %i.ca, %infuse.exit130 ], [ %.099, %.preheader131.preheader ] ; 5 uses
  %i.al = load i32, ptr %.1140, align 8
  %i.am = and i32 %i.al, 3                        ; 2 uses
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = getelementptr inbounds i8, ptr %.1140, i64 -64 ; 2 uses
  %i.ap = select i1 %i.an, ptr %.1140, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 360
  %i.av = load i32, ptr %i.au, align 8, !tbaa !63 ; 2 uses
  %i.aw = and i32 %1, 3
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = select i1 %i.ax, i64 56, i64 -8
  %i.az = getelementptr inbounds i8, ptr %.098142, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 360
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !63
  %i.bf = icmp slt i32 %i.av, %i.be
  br i1 %i.bf, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader131
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bg = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.bg, align 8, !tbaa !101
  %i.bh = sext i32 %i.av to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 364
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 364
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !68
  %i.br = icmp sgt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %infuse.exit130

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ar, ptr %i.bi, align 8, !tbaa !43
  %.pre = load i32, ptr %.098142, align 8
  %.pre.a = load i32, ptr %.1140, align 8
  %.pre181.a = and i32 %.pre.a, 3
  br label %infuse.exit130

infuse.exit130:                                   ; preds = %bb.f, %bb.g
  %.pre-phi = phi i32 [ %i.am, %bb.f ], [ %.pre181.a, %bb.g ]
  %2 = phi i32 [ %1, %bb.f ], [ %.pre, %bb.g ]
  %i.bs = icmp eq i32 %.pre-phi, 2
  %i.bt = select i1 %i.bs, ptr %.1140, ptr %i.ao
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 272
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %.not127 = icmp eq ptr %i.ca, null
  br i1 %.not127, label %.critedge, label %.preheader131, !llvm.loop !95

.critedge:                                        ; preds = %.preheader131, %infuse.exit130
  %i.cb = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.098142) #3 ; 2 uses
  %.not125 = icmp eq ptr %i.cb, null
  br i1 %.not125, label %._crit_edge143, label %.preheader132, !llvm.loop !96

._crit_edge148:                                   ; preds = %._crit_edge143, %._crit_edge
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 340
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35
  %.not116158 = icmp sgt i32 %i.ce, %i.cg
  br i1 %.not116158, label %.preheader, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %._crit_edge148
  %i.ch = sext i32 %i.ce to i64
  br label %.lr.ph161

.preheader:                                       ; preds = %bb.r, %._crit_edge148
  %i.ci = phi ptr [ %i.cc, %._crit_edge148 ], [ %i.gh, %bb.r ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 236
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !64
  %.not117162 = icmp slt i32 %i.ck, 1
  br i1 %.not117162, label %.loopexit, label %.lr.ph164

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %bb.r
  %indvars.iv175 = phi i64 [ %i.ch, %.lr.ph161.preheader ], [ %indvars.iv.next176, %bb.r ] ; 13 uses
  %i.cl = phi ptr [ %i.cc, %.lr.ph161.preheader ], [ %i.gh, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 384
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv175
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43 ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph161
  %i.cr = trunc nsw i64 %indvars.iv175 to i32
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.1, i32 noundef %i.cr) #3
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph161
  %i.cs = tail call ptr @dot_root(ptr noundef nonnull %0) #3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 264
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37
  %i.cx = getelementptr inbounds [88 x i8], ptr %i.cw, i64 %indvars.iv175
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 364
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !68
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  %.not119 = icmp eq ptr %i.dg, %i.cp
  br i1 %.not119, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.di = trunc nsw i64 %indvars.iv175 to i32
  %i.dj = tail call ptr @agnameof(ptr noundef nonnull %i.cp) #3
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 364
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !68
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.2, ptr noundef %i.dj, i32 noundef %i.dm, i32 noundef %i.di) #3
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.dn = tail call ptr @dot_root(ptr noundef nonnull %0) #3
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 264
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !37
  %i.ds = getelementptr inbounds [88 x i8], ptr %i.dr, i64 %indvars.iv175
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !101
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %indvars.iv175
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 364
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !68
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 264
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37 ; 2 uses
  %i.ei = getelementptr inbounds [88 x i8], ptr %i.eh, i64 %indvars.iv175 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !42
  %i.ek = load i32, ptr %i.ei, align 8, !tbaa !40
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph152, label %._crit_edge153.thread

.lr.ph152:                                        ; preds = %bb.k, %.critedge128
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge128 ], [ 0, %bb.k ] ; 4 uses
  %i.em = phi ptr [ %i.fy, %.critedge128 ], [ %i.eh, %bb.k ]
  %.0101150 = phi i32 [ %.2, %.critedge128 ], [ -1, %bb.k ] ; 5 uses
  %i.en = getelementptr inbounds [88 x i8], ptr %i.em, i64 %indvars.iv175
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %._crit_edge153, label %bb.l

bb.l:                                             ; preds = %.lr.ph152
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !13 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 216
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !50
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ey = tail call i32 @agcontains(ptr noundef nonnull %0, ptr noundef nonnull %i.er) #3
  %.not124 = icmp eq i32 %i.ey, 0
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not124, label %._crit_edge153, label %.critedge128

bb.n:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 256
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !51
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0 = phi ptr [ %i.fc, %bb.n ], [ %i.fg, %bb.p ] ; 6 uses
  %.not120 = icmp eq ptr %.0, null
  br i1 %.not120, label %.critedge128, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 160
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not121 = icmp eq ptr %i.fg, null
  br i1 %.not121, label %.critedge2, label %bb.o, !llvm.loop !97

.critedge2:                                       ; preds = %bb.p
  %i.fh = load i32, ptr %.0, align 8
  %i.fi = and i32 %i.fh, 3
  %i.fj = icmp eq i32 %i.fi, 3
  %i.fk = select i1 %i.fj, i64 56, i64 120
  %i.fl = getelementptr inbounds nuw i8, ptr %.0, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !56
  %i.fn = tail call i32 @agcontains(ptr noundef nonnull %0, ptr noundef %i.fm) #3
  %.not122 = icmp eq i32 %i.fn, 0
  br i1 %.not122, label %.critedge128, label %bb.q

bb.q:                                             ; preds = %.critedge2
  %i.fo = load i32, ptr %.0, align 8
  %i.fp = and i32 %i.fo, 3
  %i.fq = icmp eq i32 %i.fp, 2
  %i.fr = select i1 %i.fq, i64 56, i64 -8
  %i.fs = getelementptr inbounds i8, ptr %.0, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !56
  %i.fu = tail call i32 @agcontains(ptr noundef nonnull %0, ptr noundef %i.ft) #3
  %.not123 = icmp eq i32 %i.fu, 0
  %i.fv = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not123, i32 %.0101150, i32 %i.fv
  br label %.critedge128

.critedge128:                                     ; preds = %bb.o, %bb.q, %.critedge2, %bb.m
  %.2 = phi i32 [ %i.ez, %bb.m ], [ %.0101150, %.critedge2 ], [ %spec.select, %bb.q ], [ %.0101150, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 264
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !37 ; 2 uses
  %i.fz = getelementptr inbounds [88 x i8], ptr %i.fy, i64 %indvars.iv175
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !40
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %.lr.ph152, label %._crit_edge153, !llvm.loop !98

._crit_edge153:                                   ; preds = %.critedge128, %.lr.ph152, %bb.m
  %.0101.lcssa = phi i32 [ %.0101150, %bb.m ], [ %.2, %.critedge128 ], [ %.0101150, %.lr.ph152 ] ; 2 uses
  %i.gd = icmp eq i32 %.0101.lcssa, -1
  br i1 %i.gd, label %._crit_edge153.thread, label %bb.r

._crit_edge153.thread:                            ; preds = %bb.k, %._crit_edge153
  %i.ge = tail call ptr @agnameof(ptr noundef nonnull %0) #3
  %i.gf = trunc nsw i64 %indvars.iv175 to i32
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.3, ptr noundef %i.ge, i32 noundef %i.gf) #3
end_hunk_0
