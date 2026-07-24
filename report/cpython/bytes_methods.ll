inline.NumInlined: 37
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_bytes_isascii:bb.a
  br i1 %.not28.i, label %bb.b, label %stringlib_find_max_char.exit, !llvm.loop !61

stringlib_find_max_char.exit:                     ; preds = %.thread31.i, %bb.e, %bb.b, %bb.d
  %i.k = phi ptr [ @_Py_FalseStruct, %bb.d ], [ @_Py_FalseStruct, %.thread31.i ], [ @_Py_TrueStruct, %bb.b ], [ @_Py_TrueStruct, %bb.e ]
  ret ptr %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 9223372036854775807, 0) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %stringlib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %stringlib_find_char.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %5, label %bb.p [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %2, align 1, !tbaa !11      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp sgt i64 %1, 15
  br i1 %i.e, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %stringlib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = sext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.01721.i, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %stringlib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !51

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !11      ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = sext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #15 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %stringlib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %stringlib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %stringlib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !52

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i67148 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !52

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %stringlib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !11     ; 3 uses
  br i1 %i.ah, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !11
  %wide.load150 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !11
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi149, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader151

.lr.ph.i69.preheader151:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader151, %.lr.ph.i69
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader151 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader151 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !65

.lr.ph.i71:                                       ; preds = %bb.p, %bb.r
  %.016.i72 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i71
  %i.bb = add i64 %.016.i72, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %stringlib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !66

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 12 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11  ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.ds, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11  ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.179.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa166 = phi i64 [ %i.ds, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa166, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.da, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.ag
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.db, %bb.ag ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.dc, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cq, %i.bv
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = and i8 %i.cs, 63
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ca
  %.not92.us.i = icmp eq i64 %i.cw, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i:                       ; preds = %bb.ag
  br i1 %.not93.i, label %bb.ad, label %stringlib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i
  %i.cx = add i64 %.074109.us.i, 1                ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %4
  br i1 %i.cy, label %stringlib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add i64 %.066110.us.i, %i.bi
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.x, %bb.w
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.w ], [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.ac ], [ %i.cx, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ac ], [ %i.cz, %bb.ae ]
  %i.da = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.da, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !67

bb.ag:                                            ; preds = %bb.y
  %i.db = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.db, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.y, !llvm.loop !68

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dc = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dw, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bi, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.dd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11  ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %.06999.i
  %i.dj = icmp eq i8 %i.de, %i.bk
  %i.dk = xor i64 %.068100.i, -1
  %i.dl = add nsw i64 %i.bi, %i.dk
  %.179.i = select i1 %i.dj, i64 %i.dl, i64 %.07898.i
  %i.dm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11  ; 2 uses
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.di                     ; 3 uses
  %i.dt = icmp eq i8 %i.do, %i.bk
  %i.du = xor i64 %.068100.i, -2
  %i.dv = add nsw i64 %i.bi, %i.du
  %.179.i.1 = select i1 %i.dt, i64 %i.dv, i64 %.179.i ; 3 uses
  %i.dw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dx = icmp eq i32 %5, 0
  %i.dy = select i1 %i.dx, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ah:                                            ; preds = %bb.u
  %i.dz = lshr i64 %3, 2
  %i.ea = mul nuw nsw i64 %i.dz, 3
  %i.eb = lshr i64 %1, 2
  %i.ec = icmp samesign ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ee = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eg = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.s
  %i.eh = add nsw i64 %3, -1                      ; 6 uses
  %i.ei = load i8, ptr %2, align 1, !tbaa !11     ; 5 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek                    ; 2 uses
  %xtraiter171 = and i64 %i.eh, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.am
  %i.em = getelementptr i8, ptr %2, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = or i64 %i.eq, %i.el                     ; 2 uses
  %i.es = icmp eq i8 %i.en, %i.ei
  %i.et = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.es, i64 %i.et, i64 %i.eh ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.am
  %.04660.i.unr = phi i64 [ %i.eh, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.el, %bb.am ], [ %i.er, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.eh, %bb.am ], [ %i.et, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.am ], [ %i.er, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.eu = icmp eq i64 %3, 2
  br i1 %i.eu, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gj, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ev = sub i64 %1, %3                          ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.15065.us.i = phi i64 [ %i.fs, %bb.ar ], [ %i.ev, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = icmp eq i8 %i.ey, %i.ei
  br i1 %i.ez, label %.preheader.us.i80, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.as
  %.04862.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.eh, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04862.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !11
  %i.fj = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.as, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ex, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.aq ], [ %i.fg, %bb.ao ], [ %3, %bb.ap ]
  %i.fr = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !53

bb.as:                                            ; preds = %.preheader.us.i80
  %i.fu = add nsw i64 %.04862.us.i, -1
  %i.fv = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fv, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !54

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gj, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gl, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fw = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11  ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04759.i
  %i.gc = icmp eq i8 %i.fx, %i.ei
  %i.gd = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gc, i64 %i.gd, i64 %.04660.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11  ; 2 uses
end_hunk_0
