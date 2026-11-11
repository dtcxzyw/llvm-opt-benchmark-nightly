Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@tty_read_csi:bb.a
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.v = icmp ult i64 %i.l, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.l, 9223372036854775804
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.256, ptr noundef nonnull %i.a)
  br label %tty_cpush_char.exit

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.015.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod282 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod282)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.015.i.i.epil = phi i64 [ %.015.i.i.epil.init, %.epil.preheader ], [ %i.ac, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.w = xor i64 %.015.i.i.epil, -1
  %i.x = getelementptr i8, ptr %i.s, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !48
  %i.z = load i64, ptr %i.u, align 8, !tbaa !146
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.015.i.i.epil
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !48
  %i.ac = add nuw nsw i64 %.015.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.h, !llvm.loop !435

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.h, %.preheader.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !146
  %i.af = add nsw i64 %i.ae, %i.m
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !146
  br label %tty_cpush_char.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.015.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bh, %bb.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.i ]
  %i.ag = xor i64 %.015.i.i, -1
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !146
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %.015.i.i
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !48
  %i.am = xor i64 %.015.i.i, -2
  %i.an = getelementptr i8, ptr %i.s, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !146
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.015.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !48
  %i.at = xor i64 %.015.i.i, -3
  %i.au = getelementptr i8, ptr %i.s, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !48
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !146
  %i.ax = getelementptr i8, ptr %i.t, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.015.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.av, ptr %i.az, align 1, !tbaa !48
  %i.ba = xor i64 %.015.i.i, -4
  %i.bb = getelementptr i8, ptr %i.s, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !48
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !146
  %i.be = getelementptr i8, ptr %i.t, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %.015.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 3
  store i8 %i.bc, ptr %i.bg, align 1, !tbaa !48
  %i.bh = add nuw nsw i64 %.015.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !38

tty_cpush_char.exit:                              ; preds = %bb.g, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bi = zext i8 %.1134 to i32
  %i.bj = or disjoint i32 %i.bi, 536870912
  br label %bb.at

bb.j:                                             ; preds = %._crit_edge, %bb.d
  %i.bk = phi i8 [ %.pre232, %._crit_edge ], [ %i.f, %bb.d ] ; 3 uses
  %.0130 = phi i8 [ %i.f, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.bl = icmp ugt i8 %i.bk, 47
  br i1 %i.bl, label %.lr.ph.i, label %tty_read_csi_num.exit159

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.bm = phi i8 [ %.pr.pre, %bb.l ], [ %i.bk, %bb.j ] ; 3 uses
  %.01524.i = phi i32 [ %i.bu, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %.01623.i = phi i64 [ %i.br, %bb.l ], [ 0, %bb.j ] ; 3 uses
  %i.bn = icmp ult i8 %i.bm, 58
  %i.bo = icmp samesign ult i64 %.01623.i, 16
  %or.cond.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bp = call fastcc zeroext i1 @tty_readc_noblock(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %4)
  %.pr.pre = load i8, ptr %i.b, align 1, !tbaa !48 ; 4 uses
  br i1 %i.bp, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.bq = add nsw i8 %i.bm, -48
  %i.br = add nuw nsw i64 %.01623.i, 1
  %i.bs = mul i32 %.01524.i, 10
  %i.bt = zext nneg i8 %i.bq to i32
  %i.bu = add i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp ugt i8 %.pr.pre, 47
  br i1 %i.bv, label %.lr.ph.i, label %tty_read_csi_num.exit159

.critedge.i:                                      ; preds = %bb.k, %.lr.ph.i
  %.pr = phi i8 [ %.pr.pre, %bb.k ], [ %i.bm, %.lr.ph.i ] ; 2 uses
  %i.bw = icmp eq i64 %.01623.i, 0
  %spec.select215 = select i1 %i.bw, i32 1, i32 %.01524.i ; 4 uses
  %i.bx = icmp eq i8 %.pr, 59
  br i1 %i.bx, label %bb.m, label %tty_read_csi_num.exit159

bb.m:                                             ; preds = %.critedge.i
  %i.by = call fastcc zeroext i1 @tty_readc_noblock(ptr noundef %0, ptr noundef %i.b, i64 noundef %4)
  br i1 %i.by, label %bb.n, label %bb.at

bb.n:                                             ; preds = %bb.m
  %i.bz = load i8, ptr %i.b, align 1, !tbaa !48   ; 3 uses
  %i.ca = icmp ugt i8 %i.bz, 47
  br i1 %i.ca, label %.lr.ph.i152, label %tty_read_csi_num.exit159

.lr.ph.i152:                                      ; preds = %bb.n, %bb.p
  %i.cb = phi i8 [ %.pr186.pre.pre, %bb.p ], [ %i.bz, %bb.n ] ; 3 uses
  %.01524.i153 = phi i32 [ %i.cj, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %.01623.i154 = phi i64 [ %i.cg, %bb.p ], [ 0, %bb.n ] ; 3 uses
  %i.cc = icmp ult i8 %i.cb, 58
  %i.cd = icmp samesign ult i64 %.01623.i154, 16
  %or.cond.i155 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i155, label %bb.o, label %.critedge.i156

bb.o:                                             ; preds = %.lr.ph.i152
  %i.ce = call fastcc zeroext i1 @tty_readc_noblock(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %4)
  %.pr186.pre.pre = load i8, ptr %i.b, align 1, !tbaa !48 ; 4 uses
  br i1 %i.ce, label %bb.p, label %.critedge.i156

bb.p:                                             ; preds = %bb.o
  %i.cf = add nsw i8 %i.cb, -48
  %i.cg = add nuw nsw i64 %.01623.i154, 1
  %i.ch = mul i32 %.01524.i153, 10
  %i.ci = zext nneg i8 %i.cf to i32
  %i.cj = add i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = icmp ugt i8 %.pr186.pre.pre, 47
  br i1 %i.ck, label %.lr.ph.i152, label %tty_read_csi_num.exit159

.critedge.i156:                                   ; preds = %bb.o, %.lr.ph.i152
  %.pr186.pre = phi i8 [ %.pr186.pre.pre, %bb.o ], [ %i.cb, %.lr.ph.i152 ]
  %i.cl = icmp eq i64 %.01623.i154, 0
  %spec.select216 = select i1 %i.cl, i32 1, i32 %.01524.i153
  br label %tty_read_csi_num.exit159

tty_read_csi_num.exit159:                         ; preds = %bb.l, %bb.p, %bb.j, %.critedge.i156, %bb.n, %.critedge.i
  %i.cm = phi i8 [ %.pr186.pre.pre, %bb.p ], [ %i.bz, %bb.n ], [ %.pr, %.critedge.i ], [ %i.bk, %bb.j ], [ %.pr186.pre, %.critedge.i156 ], [ %.pr.pre, %bb.l ] ; 8 uses
  %.2182185 = phi i32 [ %spec.select215, %bb.p ], [ %spec.select215, %bb.n ], [ %spec.select215, %.critedge.i ], [ 1, %bb.j ], [ %spec.select215, %.critedge.i156 ], [ %i.bu, %bb.l ] ; 7 uses
  %.0177 = phi i32 [ %i.cj, %bb.p ], [ 1, %bb.n ], [ 1, %.critedge.i ], [ 1, %bb.j ], [ %spec.select216, %.critedge.i156 ], [ 1, %bb.l ] ; 6 uses
  %i.cn = zext i8 %.1134 to i32                   ; 2 uses
  %i.co = icmp eq i8 %.0130, 0
  %narrow = select i1 %i.co, i8 95, i8 %.0130
  %i.cp = zext nneg i8 %narrow to i32
  %i.cq = zext i8 %i.cm to i32
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.254, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef %.2182185, i32 noundef %.0177, i32 noundef %i.cq)
  %i.cr = icmp eq i8 %i.cm, 64                    ; 3 uses
  %i.cs = icmp eq i8 %i.cm, 57                    ; 2 uses
  %or.cond = or i1 %i.cr, %i.cs
  %i.ct = icmp eq i8 %.1134, 91                   ; 4 uses
  %i.cu = icmp eq i32 %.2182185, 1
  %i.cv = and i1 %or.cond, %i.cu
  %or.cond7 = and i1 %i.ct, %i.cv
  br i1 %or.cond7, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %tty_read_csi_num.exit159
  %spec.select217 = select i1 %i.cs, i32 2, i32 1
  %spec.select219 = select i1 %i.cr, i32 3, i32 %spec.select217
  br label %bb.y

bb.q:                                             ; preds = %tty_read_csi_num.exit159
  %i.cw = icmp eq i8 %i.cm, 36
  switch i8 %i.cm, label %bb.t [
    i8 94, label %bb.r
    i8 36, label %bb.s
    i8 64, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.cx = or i32 %3, 1073741824
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.q, %bb.r
  %.0128 = phi i32 [ %i.cx, %bb.r ], [ %3, %bb.q ], [ %3, %bb.q ] ; 2 uses
  %i.cy = or i32 %.0128, 268435456
  %spec.select147 = select i1 %i.cw, i32 %i.cy, i32 %.0128 ; 2 uses
  %i.cz = or i32 %spec.select147, 1342177280
  %.2 = select i1 %i.cr, i32 %i.cz, i32 %spec.select147
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.da = add i8 %i.cm, -97
  %i.db = icmp ult i8 %i.da, 4
  %or.cond19 = and i1 %i.ct, %i.db
  br i1 %or.cond19, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = or i32 %3, 268435456
  %i.dd = add nsw i8 %i.cm, -32
  br label %.thread

bb.v:                                             ; preds = %bb.s, %bb.t
  %.0129 = phi i8 [ %i.cm, %bb.t ], [ 126, %bb.s ] ; 3 uses
  %.3 = phi i32 [ %3, %bb.t ], [ %.2, %bb.s ]     ; 3 uses
  %i.de = icmp eq i8 %.1134, 79
  br i1 %i.de, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.u, %bb.v
  %.3197 = phi i32 [ %.3, %bb.v ], [ %i.dc, %bb.u ] ; 2 uses
  %.0129194 = phi i8 [ %.0129, %bb.v ], [ %i.dd, %bb.u ] ; 4 uses
  %i.df = icmp ne i8 %.0129194, 126
  %i.dg = icmp ne i8 %.0129194, 117
  %i.dh = and i1 %i.df, %i.dg
  %or.cond25 = select i1 %i.ct, i1 %i.dh, i1 false
  %i.di = icmp eq i32 %.0177, 1
  %or.cond27 = and i1 %i.di, %or.cond25
  br i1 %or.cond27, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.old26 = icmp eq i32 %.0177, 1
  br i1 %.old26, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %bb.w
  %i.dj = phi i1 [ false, %.thread ], [ true, %bb.w ] ; 2 uses
  %.3196 = phi i32 [ %.3197, %.thread ], [ %.3, %bb.w ] ; 2 uses
  %.0129193 = phi i8 [ %.0129194, %.thread ], [ %.0129, %bb.w ] ; 2 uses
  %i.dk = add i32 %.2182185, -2
  %or.cond30 = icmp ult i32 %i.dk, 7
  br i1 %or.cond30, label %bb.y, label %.thread198

bb.y:                                             ; preds = %.thread.thread, %bb.x, %bb.w, %.thread
  %i.dl = phi i1 [ true, %bb.w ], [ false, %.thread ], [ %i.dj, %bb.x ], [ false, %.thread.thread ] ; 2 uses
  %.3195 = phi i32 [ %.3, %bb.w ], [ %.3197, %.thread ], [ %.3196, %bb.x ], [ %3, %.thread.thread ] ; 2 uses
  %.0129192 = phi i8 [ %.0129, %bb.w ], [ %.0129194, %.thread ], [ %.0129193, %bb.x ], [ 126, %.thread.thread ] ; 2 uses
  %.1181 = phi i32 [ %.2182185, %bb.w ], [ %.2182185, %.thread ], [ 1, %bb.x ], [ %spec.select219, %.thread.thread ] ; 2 uses
  %.1 = phi i32 [ %.0177, %bb.w ], [ %.0177, %.thread ], [ %.2182185, %bb.x ], [ %.0177, %.thread.thread ] ; 4 uses
  %i.dm = add i32 %.1, -2
  %or.cond33 = icmp ult i32 %i.dm, 8
  br i1 %or.cond33, label %bb.z, label %.thread198

bb.z:                                             ; preds = %bb.y
  %i.dn = icmp eq i32 %.1, 9
  %i.do = add nsw i32 %.1, -1
  %i.dp = select i1 %i.dn, i32 2, i32 %i.do       ; 2 uses
  %i.dq = shl nuw nsw i32 %i.dp, 28
  %spec.select151 = or i32 %i.dq, %.3195
  br label %.thread198

.thread198:                                       ; preds = %bb.x, %bb.z, %bb.y
  %.1181205 = phi i32 [ %.1181, %bb.z ], [ %.1181, %bb.y ], [ %.2182185, %bb.x ] ; 15 uses
  %.0129192204 = phi i8 [ %.0129192, %bb.z ], [ %.0129192, %bb.y ], [ %.0129193, %bb.x ] ; 8 uses
  %i.dr = phi i1 [ %i.dl, %bb.z ], [ %i.dl, %bb.y ], [ %i.dj, %bb.x ]
  %.3179 = phi i32 [ %i.dp, %bb.z ], [ %.1, %bb.y ], [ 1, %bb.x ]
  %.6 = phi i32 [ %spec.select151, %bb.z ], [ %.3195, %bb.y ], [ %.3196, %bb.x ] ; 2 uses
  %i.ds = zext i8 %.0129192204 to i32
  %i.dt = icmp eq i8 %.0129192204, 126
  br i1 %i.dt, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %.thread198
  %switch.tableidx = add i32 %.1181205, -1        ; 2 uses
  %i.du = icmp ult i32 %switch.tableidx, 8
  br i1 %i.du, label %switch.lookup, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = add i32 %.1181205, -10
  %or.cond.i160 = icmp ult i32 %i.dv, 6
  br i1 %or.cond.i160, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dw = add nuw nsw i32 %.1181205, 16777217
  br label %.thread211

bb.ad:                                            ; preds = %bb.ab
  %i.dx = icmp eq i32 %.1181205, 16
  br i1 %i.dx, label %.thread211, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = add i32 %.1181205, -17
  %or.cond3.i = icmp ult i32 %i.dy, 5
  br i1 %or.cond3.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dz = add nuw nsw i32 %.1181205, 16777215
  br label %.thread211

bb.ag:                                            ; preds = %bb.ae
  %i.ea = add i32 %.1181205, -23
  %or.cond5.i = icmp ult i32 %i.ea, 4
  br i1 %or.cond5.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eb = add nuw nsw i32 %.1181205, 16777214
  br label %.thread211

bb.ai:                                            ; preds = %bb.ag
  %i.ec = and i32 %.1181205, -2
  %or.cond7.i = icmp eq i32 %i.ec, 28
  br i1 %or.cond7.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ed = add nuw nsw i32 %.1181205, 16777213
  br label %.thread211

bb.ak:                                            ; preds = %bb.ai
  %i.ee = add i32 %.1181205, -31
  %or.cond9.i = icmp ult i32 %i.ee, 4
  %i.ef = add nuw nsw i32 %.1181205, 16777212
  %spec.select.i = select i1 %or.cond9.i, i32 %i.ef, i32 0
  br label %esc_decode_vt.exit

bb.al:                                            ; preds = %.thread198
  %i.eg = icmp eq i8 %.0129192204, 117
  %or.cond37 = and i1 %i.ct, %i.eg
  br i1 %or.cond37, label %esc_decode_vt.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.dr, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eh = and i8 %.0129192204, -33
  %i.ei = add i8 %i.eh, -65
  %or.cond150 = icmp ult i8 %i.ei, 26
  br i1 %or.cond150, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %switch.tableidx262 = add i8 %.0129192204, -65  ; 3 uses
  %i.ej = icmp ult i8 %switch.tableidx262, 57
  br i1 %i.ej, label %switch.hole_check, label %esc_decode_vt.exit

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ek = icmp eq i32 %.1181205, 1
  %i.el = add i8 %.0129192204, -65
  %i.em = icmp ult i8 %i.el, 26
  %or.cond53 = and i1 %i.ek, %i.em
  br i1 %or.cond53, label %bb.aq, label %esc_decode_vt.exit

bb.aq:                                            ; preds = %bb.ap
  %switch.tableidx267 = add nsw i8 %.0129192204, -65 ; 3 uses
  %i.en = icmp ult i8 %switch.tableidx267, 26
  br i1 %i.en, label %switch.hole_check269, label %esc_decode_vt.exit

switch.lookup:                                    ; preds = %bb.aa
  %i.eo = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tty_read_csi, i64 %i.eo
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread211

switch.hole_check:                                ; preds = %bb.ao
  %switch.maskindex = zext nneg i8 %switch.tableidx262 to i64
  %switch.shifted = lshr i64 144113053544190399, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup264, label %esc_decode_vt.exit

switch.lookup264:                                 ; preds = %switch.hole_check
  %i.ep = zext nneg i8 %switch.tableidx262 to i64
  %switch.gep265 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tty_read_csi.49, i64 %i.ep
  %switch.load266 = load i32, ptr %switch.gep265, align 4
  br label %.thread211

switch.hole_check269:                             ; preds = %bb.aq
  %switch.maskindex271 = zext nneg i8 %switch.tableidx267 to i32
  %switch.shifted272 = lshr i32 67107263, %switch.maskindex271
  %switch.lobit273 = trunc i32 %switch.shifted272 to i1
  br i1 %switch.lobit273, label %switch.lookup270, label %esc_decode_vt.exit

switch.lookup270:                                 ; preds = %switch.hole_check269
  %i.eq = zext nneg i8 %switch.tableidx267 to i64
  %switch.gep274 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tty_read_csi.50, i64 %i.eq
  %switch.load275 = load i32, ptr %switch.gep274, align 4
  br label %.thread211

.thread211:                                       ; preds = %switch.lookup270, %switch.lookup264, %switch.lookup, %bb.ad, %bb.aj, %bb.ah, %bb.af, %bb.ac
  %.0.ph = phi i32 [ %switch.load, %switch.lookup ], [ %switch.load275, %switch.lookup270 ], [ %i.ed, %bb.aj ], [ %i.dw, %bb.ac ], [ %i.dz, %bb.af ], [ %switch.load266, %switch.lookup264 ], [ 16777231, %bb.ad ], [ %i.eb, %bb.ah ]
  %i.er = or i32 %.0.ph, %.6
  br label %bb.at

esc_decode_vt.exit:                               ; preds = %switch.hole_check269, %bb.aq, %switch.hole_check, %bb.ao, %bb.al, %bb.ak, %bb.ap
  %.0 = phi i32 [ 0, %bb.ap ], [ %spec.select.i, %bb.ak ], [ %.1181205, %bb.al ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %switch.hole_check ], [ 0, %switch.hole_check269 ]
  %.0.fr = freeze i32 %.0                         ; 2 uses
  %i.es = icmp eq i32 %.0.fr, 0                   ; 2 uses
  %i.et = icmp ne i8 %.0129192204, 82
  %or.cond61 = and i1 %i.et, %i.es
  br i1 %or.cond61, label %.split, label %bb.ar

.split:                                           ; preds = %esc_decode_vt.exit
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.255, i32 noundef %i.cn, i32 noundef %.1181205, i32 noundef %.3179, i32 noundef %i.ds)
  br label %bb.as
end_hunk_0
