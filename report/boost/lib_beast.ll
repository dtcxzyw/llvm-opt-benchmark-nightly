Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast9websocket6detail12utf8_checker6finishEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !287
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker5writeEPKhm(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = load i64, ptr %0, align 8, !tbaa !286    ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 6 uses
  %i.c = sub nuw i64 %2, %.sroa.speculated
  %i.d = sub nuw i64 %i.b, %.sroa.speculated      ; 2 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !286
  %.not42200 = icmp eq i64 %2, 0
  br i1 %.not42200, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %xtraiter = and i64 %.sroa.speculated, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.027202.prol = phi i64 [ %i.f, %.prol.preheader ], [ %.sroa.speculated, %.lr.ph ]
  %.0134201.prol = phi ptr [ %i.g, %.prol.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.f = add i64 %.027202.prol, -1                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134201.prol, i64 1 ; 3 uses
  %i.h = load i8, ptr %.0134201.prol, align 1, !tbaa !58
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !287  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !287
  store i8 %i.h, ptr %i.i, align 1, !tbaa !58
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1074

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa317.unr = phi ptr [ poison, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.027202.unr = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.f, %.prol.preheader ]
  %.0134201.unr = phi ptr [ %1, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %i.k = icmp ult i64 %.sroa.speculated, 4
  br i1 %i.k, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.027202 = phi i64 [ %i.x, %.lr.ph.new ], [ %.027202.unr, %.prol.loopexit ]
  %.0134201 = phi ptr [ %i.y, %.lr.ph.new ], [ %.0134201.unr, %.prol.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0134201, i64 1
  %i.m = load i8, ptr %.0134201, align 1, !tbaa !58
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !287  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.e, align 8, !tbaa !287
  store i8 %i.m, ptr %i.n, align 1, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %.0134201, i64 2
  %i.q = load i8, ptr %i.l, align 1, !tbaa !58
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !287  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.e, align 8, !tbaa !287
  store i8 %i.q, ptr %i.r, align 1, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.0134201, i64 3
  %i.u = load i8, ptr %i.p, align 1, !tbaa !58
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !287  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.e, align 8, !tbaa !287
  store i8 %i.u, ptr %i.v, align 1, !tbaa !58
  %i.x = add i64 %.027202, -4                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0134201, i64 4 ; 2 uses
  %i.z = load i8, ptr %i.t, align 1, !tbaa !58
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !287 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !287
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !58
  %.not42.3 = icmp eq i64 %i.x, 0
  br i1 %.not42.3, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !1075

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa317 = phi ptr [ %.lcssa317.unr, %.prol.loopexit ], [ %i.y, %.lr.ph.new ]
  %.pre = load i64, ptr %0, align 8, !tbaa !286
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ac = phi i64 [ %i.d, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.0134.lcssa = phi ptr [ %1, %bb.b ], [ %.lcssa317, %._crit_edge.loopexit ]
  %.not43 = icmp eq i64 %i.ac, 0
  br i1 %.not43, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !58  ; 7 uses
  %i.af = zext i8 %i.ae to i32                    ; 5 uses
  %i.ag = icmp sgt i8 %i.ae, -1
  br i1 %i.ag, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = and i32 %i.af, 224
  %i.ai = icmp eq i32 %i.ah, 192
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !58
  %.not32.i = icmp sgt i8 %i.ak, -65
  %i.al = and i32 %i.af, 30
  %i.am = icmp eq i32 %i.al, 0
  %or.cond.i = or i1 %i.am, %.not32.i
  br i1 %or.cond.i, label %.thread, label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.an = and i32 %i.af, 240
  %i.ao = icmp eq i32 %i.an, 224
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !58  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %.not29.i = icmp eq i32 %i.as, 128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.au = load i8, ptr %i.at, align 2
  %.not30.i = icmp slt i8 %i.au, -64
  %or.cond = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.av = icmp eq i8 %i.ae, -32
  %i.aw = and i32 %i.ar, 32
  %i.ax = icmp eq i32 %i.aw, 0
  %or.cond35.i = and i1 %i.av, %i.ax
  br i1 %or.cond35.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ne i8 %i.ae, -19
  %i.az = and i8 %i.aq, 32
  %.not31.i = icmp eq i8 %i.az, 0
  %or.cond1.i = or i1 %i.ay, %.not31.i
  br i1 %or.cond1.i, label %bb.p, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.ba = and i32 %i.af, 248
  %i.bb = icmp ne i32 %i.ba, 240
  %i.bc = and i32 %i.af, 7
  %i.bd = icmp samesign ugt i32 %i.bc, 4
  %or.cond39.i = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond39.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !58  ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = and i32 %i.bg, 192
  %.not.i = icmp eq i32 %i.bh, 128
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bj = load i8, ptr %i.bi, align 2
  %.not27.i = icmp slt i8 %i.bj, -64
  %or.cond305 = select i1 %.not.i, i1 %.not27.i, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.bl = load i8, ptr %i.bk, align 1
  %.not28.i = icmp slt i8 %i.bl, -64
  %or.cond307 = select i1 %or.cond305, i1 %.not28.i, i1 false
  br i1 %or.cond307, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp eq i8 %i.ae, -16
  %i.bn = and i32 %i.bg, 48
  %i.bo = icmp eq i32 %i.bn, 0
  %or.cond37.i = and i1 %i.bm, %i.bo
  br i1 %or.cond37.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp eq i8 %i.ae, -12
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = icmp ugt i8 %i.bf, -113
  br i1 %i.bq, label %.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.br = icmp samesign ugt i8 %i.ae, -12
  br i1 %i.br, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.e, %bb.i, %bb.n, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bs, align 8, !tbaa !287
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.a
  %.0142 = phi i64 [ %2, %bb.a ], [ %i.c, %bb.p ] ; 5 uses
  %.1135 = phi ptr [ %1, %bb.a ], [ %.0134.lcssa, %bb.p ] ; 6 uses
  %i.bt = icmp ult i64 %.0142, 9
  br i1 %i.bt, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = ptrtoint ptr %.1135 to i64              ; 6 uses
  %i.bv = add i64 %i.bu, 7
  %i.bw = and i64 %i.bv, -8                       ; 3 uses
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp ult ptr %.1135, %i.bx
  br i1 %i.by, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %bb.r
  %i.bz = sub i64 %i.bw, %i.bu
  %scevgep = getelementptr i8, ptr %.1135, i64 %i.bz ; 2 uses
  br label %.lr.ph205

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %bb.s
  %.2136203 = phi ptr [ %i.cb, %bb.s ], [ %.1135, %.lr.ph205.preheader ] ; 4 uses
  %i.ca = load i8, ptr %.2136203, align 1, !tbaa !58
  %.not44 = icmp sgt i8 %i.ca, -1
  br i1 %.not44, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph205
  %i.cb = getelementptr inbounds nuw i8, ptr %.2136203, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.cb, %scevgep
  br i1 %exitcond.not, label %._crit_edge206, label %.lr.ph205, !llvm.loop !1076

bb.t:                                             ; preds = %.lr.ph205
  %i.cc = ptrtoint ptr %.2136203 to i64
  %.neg45 = add i64 %.0142, %i.bu
  %i.cd = sub i64 %.neg45, %i.cc
  br label %bb.ak

._crit_edge206:                                   ; preds = %bb.s, %bb.r
  %.pre-phi = phi i64 [ %i.bu, %bb.r ], [ %i.bw, %bb.s ]
  %.2136.lcssa = phi ptr [ %.1135, %bb.r ], [ %scevgep, %bb.s ] ; 3 uses
  %.neg = sub i64 %i.bu, %.pre-phi
  %i.ce = add i64 %.neg, %.0142                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2136.lcssa, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -7
  %i.ch = icmp sgt i64 %i.ce, 7
  br i1 %i.ch, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge206, %bb.u
  %.3137208 = phi ptr [ %i.cm, %bb.u ], [ %.2136.lcssa, %._crit_edge206 ] ; 4 uses
  %i.ci = load i64, ptr %.3137208, align 8, !tbaa !55
  %i.cj = and i64 %i.ci, -9187201950435737472
  %.not46 = icmp eq i64 %i.cj, 0
  br i1 %.not46, label %bb.u, label %.thread160

.thread160:                                       ; preds = %.lr.ph210
  %i.ck = ptrtoint ptr %.3137208 to i64
  %.neg47 = add i64 %.0142, %i.bu
  %i.cl = sub i64 %.neg47, %i.ck
  br label %bb.ak

bb.u:                                             ; preds = %.lr.ph210
  %i.cm = getelementptr inbounds nuw i8, ptr %.3137208, i64 8 ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.cg
  br i1 %i.cn, label %.lr.ph210, label %._crit_edge211, !llvm.loop !1077

._crit_edge211:                                   ; preds = %bb.u, %._crit_edge206
  %.3137.lcssa = phi ptr [ %.2136.lcssa, %._crit_edge206 ], [ %i.cm, %bb.u ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cf, i64 -3 ; 2 uses
  %i.cp = icmp ult ptr %.3137.lcssa, %i.co
  br i1 %i.cp, label %.lr.ph215, label %.loopexit

.lr.ph215:                                        ; preds = %._crit_edge211, %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68"
  %.4213 = phi ptr [ %i.ee, %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68" ], [ %.3137.lcssa, %._crit_edge211 ] ; 8 uses
  %i.cq = load i8, ptr %.4213, align 1, !tbaa !58 ; 7 uses
  %i.cr = zext i8 %i.cq to i32                    ; 5 uses
  %i.cs = icmp sgt i8 %i.cq, -1
  br i1 %i.cs, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68", label %bb.v

bb.v:                                             ; preds = %.lr.ph215
  %i.ct = and i32 %i.cr, 224
  %i.cu = icmp eq i32 %i.ct, 192
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %.4213, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !58
  %.not32.i66 = icmp sgt i8 %i.cw, -65
  %i.cx = and i32 %i.cr, 30
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond.i67 = or i1 %i.cy, %.not32.i66
  br i1 %or.cond.i67, label %.thread, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68"

bb.x:                                             ; preds = %bb.v
  %i.cz = and i32 %i.cr, 240
  %i.da = icmp eq i32 %i.cz, 224
  br i1 %i.da, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %.4213, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !58  ; 2 uses
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = and i32 %i.dd, 192
  %.not29.i61 = icmp eq i32 %i.de, 128
  br i1 %.not29.i61, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.4213, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !58
  %.not30.i62 = icmp slt i8 %i.dg, -64
  br i1 %.not30.i62, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.dh = icmp eq i8 %i.cq, -32
  %i.di = and i32 %i.dd, 32
  %i.dj = icmp eq i32 %i.di, 0
  %or.cond35.i63 = and i1 %i.dh, %i.dj
  br i1 %or.cond35.i63, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = icmp ne i8 %i.cq, -19
  %i.dl = and i8 %i.dc, 32
  %.not31.i64 = icmp eq i8 %i.dl, 0
  %or.cond1.i65 = or i1 %i.dk, %.not31.i64
  br i1 %or.cond1.i65, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68", label %.thread

bb.ac:                                            ; preds = %bb.x
  %i.dm = and i32 %i.cr, 248
  %i.dn = icmp ne i32 %i.dm, 240
  %i.do = and i32 %i.cr, 7
  %i.dp = icmp samesign ugt i32 %i.do, 4
  %or.cond39.i53 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond39.i53, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.4213, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !58  ; 2 uses
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = and i32 %i.ds, 192
  %.not.i54 = icmp eq i32 %i.dt, 128
  br i1 %.not.i54, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %.4213, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !58
  %.not27.i56 = icmp slt i8 %i.dv, -64
  br i1 %.not27.i56, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %.4213, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !58
  %.not28.i57 = icmp slt i8 %i.dx, -64
  br i1 %.not28.i57, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.dy = icmp eq i8 %i.cq, -16
  %i.dz = and i32 %i.ds, 48
  %i.ea = icmp eq i32 %i.dz, 0
  %or.cond37.i58 = and i1 %i.dy, %i.ea
  br i1 %or.cond37.i58, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = icmp eq i8 %i.cq, -12
  br i1 %i.eb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ec = icmp ugt i8 %i.dr, -113
  br i1 %i.ec, label %.thread, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68"

bb.aj:                                            ; preds = %bb.ah
  %i.ed = icmp samesign ugt i8 %i.cq, -12
  br i1 %i.ed, label %.thread, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68"

"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit68": ; preds = %.lr.ph215, %bb.w, %bb.ab, %bb.ai, %bb.aj
  %.sink3.i60 = phi i64 [ 3, %bb.ab ], [ 2, %bb.w ], [ 1, %.lr.ph215 ], [ 4, %bb.ai ], [ 4, %bb.aj ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.4213, i64 %.sink3.i60 ; 3 uses
  %i.ef = icmp ult ptr %i.ee, %i.co
  br i1 %i.ef, label %.lr.ph215, label %.loopexit, !llvm.loop !1078

bb.ak:                                            ; preds = %.thread160, %bb.t, %bb.q
  %.2144 = phi i64 [ %.0142, %bb.q ], [ %i.cl, %.thread160 ], [ %i.cd, %bb.t ] ; 2 uses
  %.6138 = phi ptr [ %.1135, %bb.q ], [ %.3137208, %.thread160 ], [ %.2136203, %bb.t ] ; 3 uses
  %i.eg = getelementptr i8, ptr %.6138, i64 %.2144
  %i.eh = getelementptr i8, ptr %i.eg, i64 -3
  %.not48217 = icmp sgt i64 %.2144, 3
  br i1 %.not48217, label %.lr.ph220, label %.loopexit

.lr.ph220:                                        ; preds = %bb.ak, %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit84"
  %.7139218 = phi ptr [ %i.fw, %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit84" ], [ %.6138, %bb.ak ] ; 8 uses
  %i.ei = load i8, ptr %.7139218, align 1, !tbaa !58 ; 7 uses
  %i.ej = zext i8 %i.ei to i32                    ; 5 uses
  %i.ek = icmp sgt i8 %i.ei, -1
  br i1 %i.ek, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit84", label %bb.al

bb.al:                                            ; preds = %.lr.ph220
  %i.el = and i32 %i.ej, 224
  %i.em = icmp eq i32 %i.el, 192
  br i1 %i.em, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %.7139218, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !58
  %.not32.i82 = icmp sgt i8 %i.eo, -65
  %i.ep = and i32 %i.ej, 30
  %i.eq = icmp eq i32 %i.ep, 0
  %or.cond.i83 = or i1 %i.eq, %.not32.i82
  br i1 %or.cond.i83, label %.thread, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit84"

bb.an:                                            ; preds = %bb.al
  %i.er = and i32 %i.ej, 240
  %i.es = icmp eq i32 %i.er, 224
  br i1 %i.es, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %.7139218, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !58  ; 2 uses
  %i.ev = zext i8 %i.eu to i32                    ; 2 uses
  %i.ew = and i32 %i.ev, 192
  %.not29.i77 = icmp eq i32 %i.ew, 128
  br i1 %.not29.i77, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %.7139218, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !58
  %.not30.i78 = icmp slt i8 %i.ey, -64
  br i1 %.not30.i78, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ez = icmp eq i8 %i.ei, -32
  %i.fa = and i32 %i.ev, 32
  %i.fb = icmp eq i32 %i.fa, 0
  %or.cond35.i79 = and i1 %i.ez, %i.fb
  br i1 %or.cond35.i79, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = icmp ne i8 %i.ei, -19
  %i.fd = and i8 %i.eu, 32
  %.not31.i80 = icmp eq i8 %i.fd, 0
  %or.cond1.i81 = or i1 %i.fc, %.not31.i80
  br i1 %or.cond1.i81, label %"_ZZN5boost5beast9websocket6detail12utf8_checker5writeEPKhmENK3$_0clERS5_.exit84", label %.thread

end_hunk_0
