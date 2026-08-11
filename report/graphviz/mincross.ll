inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rec_reset_vlists:bb.a

bb.j:                                             ; preds = %is_a_normal_node_of.exit.thread.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 264
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !144
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.k, label %is_a_vnode_of_an_edge_of.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 280
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !143
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.l, label %is_a_vnode_of_an_edge_of.exit.i

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i, i64 272
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.09.in.i.i = phi ptr [ %i.db, %bb.l ], [ %i.dg, %bb.m ]
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !51 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 152
  %i.df = load i8, ptr %i.de, align 8, !tbaa !111
  %.not.i.i = icmp eq i8 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 160
  br i1 %.not.i.i, label %bb.n, label %bb.m, !llvm.loop !175

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call i32 @agcontains(ptr noundef %0, ptr noundef nonnull %.09.i.i) #20
  %.not11.not.i.i = icmp eq i32 %i.dh, 0
  %spec.select.i = select i1 %.not11.not.i.i, ptr %.01018.i, ptr %.0.i19.i
  %.pre25.i = load ptr, ptr %i.cm, align 8, !tbaa !8
  br label %is_a_vnode_of_an_edge_of.exit.i

is_a_vnode_of_an_edge_of.exit.i:                  ; preds = %bb.n, %bb.k, %bb.j, %is_a_normal_node_of.exit.thread.i, %is_a_normal_node_of.exit.i
  %i.di = phi ptr [ %.pre26.i, %is_a_normal_node_of.exit.i ], [ %.pre25.i, %bb.n ], [ %.val.i, %is_a_normal_node_of.exit.thread.i ], [ %.val.i, %bb.j ], [ %.val.i, %bb.k ] ; 2 uses
  %.1.i = phi ptr [ %.0.i19.i, %is_a_normal_node_of.exit.i ], [ %spec.select.i, %bb.n ], [ %.01018.i, %is_a_normal_node_of.exit.thread.i ], [ %.01018.i, %bb.j ], [ %.01018.i, %bb.k ] ; 2 uses
  %i.dj = load ptr, ptr @Root, align 8, !tbaa !87
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !155
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [88 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 364
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !56
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr [8 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %.0.i.i = load ptr, ptr %i.dy, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %furthestnode.exit33, label %.lr.ph.i, !llvm.loop !176

furthestnode.exit33:                              ; preds = %is_a_vnode_of_an_edge_of.exit.i, %furthestnode.exit
  %.us-phi.i32 = phi ptr [ %i.z, %furthestnode.exit ], [ %.1.i, %is_a_vnode_of_an_edge_of.exit.i ]
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 384
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !168
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv43
  store ptr %.us-phi.i, ptr %i.ec, align 8, !tbaa !42
  %i.ed = tail call ptr @dot_root(ptr noundef %0) #20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 264
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37
  %i.ei = getelementptr inbounds [88 x i8], ptr %i.eh, i64 %indvars.iv43
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 364
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !56 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 264
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !37
  %i.eu = getelementptr inbounds [88 x i8], ptr %i.et, i64 %indvars.iv43 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.eq, ptr %i.ev, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %.us-phi.i32, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 364
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !56
  %reass.sub = sub i32 %i.ez, %i.eo
  %i.fa = add i32 %reass.sub, 1
  store i32 %i.fa, ptr %i.eu, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph40, %furthestnode.exit33
  %i.fb = phi ptr [ %i.v, %.lr.ph40 ], [ %i.er, %furthestnode.exit33 ] ; 2 uses
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 340
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !36
  %i.fe = sext i32 %i.fd to i64
  %.not31.not = icmp slt i64 %indvars.iv43, %i.fe
  br i1 %.not31.not, label %.lr.ph40, label %.loopexit, !llvm.loop !177

.loopexit:                                        ; preds = %bb.o, %bb.b, %._crit_edge
  ret void
}

declare ptr @dot_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @allocate_ranks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = add nsw i32 %i.d, 2                      ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %.not71 = icmp eq i32 %i.e, 0
  br i1 %.not71, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.f, i64 noundef 4) #21
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.d, -2
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.15, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.f, i64 noundef 4) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.f, i64 noundef 4) #21 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.m = shl nuw nsw i64 %i.f, 2
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.16, i64 noundef %i.m) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit:                                   ; preds = %.thread, %bb.d
  %i.o = phi ptr [ %i.g, %.thread ], [ %i.j, %bb.d ] ; 5 uses
  %i.p = tail call ptr @agfstnode(ptr noundef nonnull %0) #20 ; 2 uses
  %.not82 = icmp eq ptr %i.p, null
  br i1 %.not82, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %gv_calloc.exit, %._crit_edge81
  %.04983 = phi ptr [ %i.bi, %._crit_edge81 ], [ %i.p, %gv_calloc.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04983, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  %i.t = load i32, ptr %i.s, align 8, !tbaa !155
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !77
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !77
  %i.y = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.04983) #20 ; 2 uses
  %.not5677 = icmp eq ptr %i.y, null
  br i1 %.not5677, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph84, %._crit_edge
  %.04878 = phi ptr [ %i.bh, %._crit_edge ], [ %i.y, %.lr.ph84 ] ; 4 uses
  %i.z = load i32, ptr %.04878, align 8
  %i.aa = and i32 %i.z, 3                         ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 3
  %i.ac = select i1 %i.ab, i64 56, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.04878, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !155 ; 4 uses
  %i.aj = icmp eq i32 %i.aa, 2
  %i.ak = select i1 %i.aj, i64 56, i64 -8
  %i.al = getelementptr inbounds i8, ptr %.04878, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 360
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !155 ; 4 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aq)
  %spec.select57 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.aq)
  %.075 = add nsw i32 %spec.select57, 1
  %i.ar = icmp slt i32 %.075, %spec.select
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph80
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ai) ; 2 uses
  %smin = sext i32 %i.as to i64
  %i.at = add nsw i64 %smin, 1                    ; 3 uses
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aq) ; 2 uses
  %1 = add i32 %i.au, -2
  %2 = sub i32 %1, %i.as                          ; 2 uses
  %i.av = zext i32 %2 to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %2, 7
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aw, 8589934584              ; 3 uses
  %i.ax = add nsw i64 %i.at, %n.vec
  %i.ay = getelementptr [4 x i8], ptr %i.o, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %index ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !77
  %wide.load109 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !77
  %i.bb = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.bc = add nsw <4 x i32> %wide.load109, splat (i32 1)
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !77
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader112, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader112 ] ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.au, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph80
  %i.bh = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.04878) #20 ; 2 uses
  %.not56 = icmp eq ptr %i.bh, null
  br i1 %.not56, label %._crit_edge81, label %.lr.ph80, !llvm.loop !182

._crit_edge81:                                    ; preds = %._crit_edge, %.lr.ph84
  %i.bi = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.04983) #20 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !183

._crit_edge85:                                    ; preds = %._crit_edge81, %gv_calloc.exit
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 340
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !36 ; 4 uses
  %i.bm = add nsw i32 %i.bl, 2                    ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %.not72 = icmp eq i32 %i.bm, 0
  br i1 %.not72, label %.thread67, label %bb.f

.thread67:                                        ; preds = %._crit_edge85
  %i.bo = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.bn, i64 noundef 88) #21
  br label %gv_calloc.exit61

bb.f:                                             ; preds = %._crit_edge85
  %mul.ov.i60 = icmp slt i32 %i.bl, -2
  br i1 %mul.ov.i60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.15, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.bn, i64 noundef 88) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.br = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.bn, i64 noundef 88) #21 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.i, label %gv_calloc.exit61

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.bu = mul nuw nsw i64 %i.bn, 88
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.16, i64 noundef %i.bu) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit61:                                 ; preds = %.thread67, %bb.h
  %i.bw = phi ptr [ %i.bo, %.thread67 ], [ %i.br, %bb.h ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !14 ; 2 uses
  %.not5586 = icmp sgt i32 %i.bz, %i.bl
  br i1 %.not5586, label %._crit_edge89, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %gv_calloc.exit61
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add i32 %i.bl, 1
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %gv_calloc.exit65
  %indvars.iv92 = phi i64 [ %i.ca, %.lr.ph88.preheader ], [ %indvars.iv.next93, %gv_calloc.exit65 ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv92
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !77 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1                    ; 4 uses
  %i.cf = getelementptr inbounds [88 x i8], ptr %i.bw, i64 %indvars.iv92 ; 4 uses
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.ce, ptr %i.cg, align 8, !tbaa !105
  %i.ch = sext i32 %i.ce to i64                   ; 4 uses
  %.not73 = icmp eq i32 %i.ce, 0
  br i1 %.not73, label %.thread69, label %bb.j

.thread69:                                        ; preds = %.lr.ph88
  %i.ci = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.ch, i64 noundef 8) #21
  br label %gv_calloc.exit65

bb.j:                                             ; preds = %.lr.ph88
  %mul.ov.i64 = icmp slt i32 %i.cd, -1
  br i1 %mul.ov.i64, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.15, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.ch, i64 noundef 8) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cl = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.ch, i64 noundef 8) #21 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.m, label %gv_calloc.exit65

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !64
  %i.co = shl nuw nsw i64 %i.ch, 3
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.16, i64 noundef %i.co) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit65:                                 ; preds = %.thread69, %bb.l
  %i.cq = phi ptr [ %i.ci, %.thread69 ], [ %i.cl, %bb.l ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !106
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv95 = trunc i64 %indvars.iv.next93 to i32
  %exitcond96.not = icmp eq i32 %i.cb, %lftr.wideiv95
  br i1 %exitcond96.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !184

._crit_edge89:                                    ; preds = %gv_calloc.exit65, %gv_calloc.exit61
  tail call void @free(ptr noundef %i.o) #20
  ret void
}

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @install_in_rank(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load i32, ptr %i.c, align 8, !tbaa !155  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = sext i32 %i.d to i64                     ; 4 uses
  %i.j = getelementptr inbounds [88 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @agnameof(ptr noundef nonnull %0) #20
  %i.p = tail call ptr @agnameof(ptr noundef nonnull %1) #20
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.4, i32 noundef 1153, ptr noundef %i.o, ptr noundef %i.p, i32 noundef %i.d, i32 noundef %i.k) #20
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = sext i32 %i.k to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  store i32 %i.k, ptr %i.u, align 4, !tbaa !56
end_hunk_0
