inline.NumInlined: 308
inline.NumDeleted: 166
begin_hunk_0_@_ZN22veloxprestotpFlexLexer18yy_get_next_bufferEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 8 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = icmp ugt ptr %i.n, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  %.pre59 = load i64, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.pre59
  %.pre60 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %.pre60, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !107
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp eq i64 %i.af, 1
  %. = select i1 %i.ag, i32 1, i32 2
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.ah = xor i64 %i.ae, -1
  %i.ai = add i64 %i.ah, %i.ad                    ; 6 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %i.al = and i64 %i.ai, 2147483647               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 8
  %i.am = sub i64 %i.i, %i.l
  %diff.check = icmp ult i64 %i.am, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp samesign ult i64 %i.al, 128
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ai, 120
  %n.vec = and i64 %i.ai, 2147483520              ; 6 uses
  %i.an = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ao = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.ap = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 4 uses
  %next.gep86 = getelementptr i8, ptr %i.k, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep86, i64 32
  %i.ar = getelementptr i8, ptr %next.gep86, i64 64
  %i.as = getelementptr i8, ptr %next.gep86, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep86, align 1, !tbaa !51
  %wide.load87 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !51
  %wide.load88 = load <32 x i8>, ptr %i.ar, align 1, !tbaa !51
  %wide.load89 = load <32 x i8>, ptr %i.as, align 1, !tbaa !51
  %i.at = getelementptr i8, ptr %next.gep, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 64
  %i.av = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <32 x i8> %wide.load87, ptr %i.at, align 1, !tbaa !51
  store <32 x i8> %wide.load88, ptr %i.au, align 1, !tbaa !51
  store <32 x i8> %wide.load89, ptr %i.av, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.ai, 2147483640            ; 5 uses
  %i.ax = getelementptr i8, ptr %i.h, i64 %n.vec93
  %i.ay = getelementptr i8, ptr %i.k, i64 %n.vec93
  %i.az = trunc nuw nsw i64 %n.vec93 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %i.h, i64 %index94
  %next.gep96 = getelementptr i8, ptr %i.k, i64 %index94
  %wide.load97 = load <8 x i8>, ptr %next.gep96, align 1, !tbaa !51
  store <8 x i8> %wide.load97, ptr %next.gep95, align 1, !tbaa !51
  %index.next98 = add nuw i64 %index94, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.al, %n.vec93
  br i1 %cmp.n99, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03351.ph = phi ptr [ %i.h, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.03450.ph = phi ptr [ %i.k, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.03549.ph = phi i32 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03351 = phi ptr [ %i.bd, %.lr.ph ], [ %.03351.ph, %.lr.ph.preheader ] ; 2 uses
  %.03450 = phi ptr [ %i.bb, %.lr.ph ], [ %.03450.ph, %.lr.ph.preheader ] ; 2 uses
  %.03549 = phi i32 [ %i.be, %.lr.ph ], [ %.03549.ph, %.lr.ph.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.03450, i64 1
  %i.bc = load i8, ptr %.03450, align 1, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.03351, i64 1
  store i8 %i.bc, ptr %.03351, align 1, !tbaa !51
  %i.be = add nuw nsw i32 %.03549, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.aj
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !113

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre61 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.pre62 = load i64, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert63 = getelementptr inbounds nuw [8 x i8], ptr %.pre61, i64 %.pre62
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bf = phi ptr [ %.pre64, %._crit_edge.loopexit ], [ %i.x, %bb.e ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !103
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %.thread47, label %bb.f

.thread47:                                        ; preds = %._crit_edge
  store i32 0, ptr %i.o, align 4, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i32 0, ptr %i.bj, align 4, !tbaa !44
  br label %bb.l

bb.f:                                             ; preds = %._crit_edge
  %i.bk = xor i32 %i.aj, -1                       ; 2 uses
  %.pn.in52 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pn53 = load i32, ptr %.pn.in52, align 8, !tbaa !114 ; 2 uses
  %.03654 = add i32 %.pn53, %i.bk                 ; 2 uses
  %i.bl = icmp slt i32 %.03654, 1
  br i1 %i.bl, label %.lr.ph56.preheader, label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.f
  %.pre65 = load ptr, ptr %i.m, align 8, !tbaa !48
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.i
  %i.bm = phi i32 [ %.pn53, %.lr.ph56.preheader ], [ %.pn, %bb.i ] ; 4 uses
  %i.bn = phi ptr [ %.pre65, %.lr.ph56.preheader ], [ %i.ci, %bb.i ]
  %i.bo = phi ptr [ %i.bf, %.lr.ph56.preheader ], [ %i.cm, %bb.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !104 ; 2 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !115
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %.lr.ph56
  store ptr null, ptr %i.bp, align 8, !tbaa !104
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %1 = icmp slt i32 %i.bm, 1
  %i.bx = shl nuw nsw i32 %i.bm, 1
  %.nonneg = sub i32 0, %i.bm
  %i.by = lshr i32 %.nonneg, 3
  %i.bz = sub nsw i32 %i.bm, %i.by
  %storemerge41 = select i1 %1, i32 %i.bz, i32 %i.bx ; 2 uses
  store i32 %storemerge41, ptr %i.bw, align 8, !tbaa !114
  %i.ca = add nsw i32 %storemerge41, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = tail call noalias noundef ptr @realloc(ptr noundef %i.bq, i64 noundef %i.cb) #38 ; 3 uses
  store ptr %i.cc, ptr %i.bp, align 8, !tbaa !104
  %.not42 = icmp eq ptr %i.cc, null
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.cd = load ptr, ptr %0, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.3)
  %.pre66 = load ptr, ptr %i.bp, align 8, !tbaa !104
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = phi ptr [ %.pre66, %bb.h ], [ %i.cc, %bb.g ]
  %sext43 = shl i64 %i.bt, 32
  %i.ch = ashr exact i64 %sext43, 32
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch ; 2 uses
  store ptr %i.ci, ptr %i.m, align 8, !tbaa !48
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40 ; 3 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.pn = load i32, ptr %.pn.in, align 8, !tbaa !114 ; 2 uses
  %.036 = add i32 %.pn, %i.bk                     ; 2 uses
  %i.cn = icmp slt i32 %.036, 1
  br i1 %i.cn, label %.lr.ph56, label %._crit_edge57, !llvm.loop !116

._crit_edge57:                                    ; preds = %bb.i, %bb.f
  %i.co = phi ptr [ %i.bf, %bb.f ], [ %i.cm, %bb.i ]
  %.036.lcssa = phi i32 [ %.03654, %bb.f ], [ %.036, %bb.i ]
  %i.cp = tail call i32 @llvm.umin.i32(i32 %.036.lcssa, i32 8192)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !104
  %sext = shl i64 %i.ai, 32
  %i.cs = ashr exact i64 %sext, 32
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  %i.cu = load ptr, ptr %0, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef %i.ct, i32 noundef %i.cp) ; 3 uses
  store i32 %i.cx, ptr %i.o, align 4, !tbaa !46
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge57
  %i.cz = load ptr, ptr %0, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.4)
  %.pre67 = load i32, ptr %i.o, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge57, %bb.j
  %.pr = phi i32 [ %i.cx, %._crit_edge57 ], [ %.pre67, %bb.j ] ; 3 uses
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !39
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  store i32 %.pr, ptr %i.dg, align 4, !tbaa !44
  %i.dh = icmp eq i32 %.pr, 0
  br i1 %i.dh, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread47, %bb.k
  %i.di = phi ptr [ %i.bf, %.thread47 ], [ %i.df, %bb.k ] ; 2 uses
  %i.dj = icmp eq i32 %i.aj, 0
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = load ptr, ptr %0, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
  %.pre68 = load i32, ptr %i.o, align 4, !tbaa !46
  %.pre69 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.pre70 = load i64, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert71 = getelementptr inbounds nuw [8 x i8], ptr %.pre69, i64 %.pre70
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8, !tbaa !40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store i32 2, ptr %i.do, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %i.dp = phi ptr [ %.pre72, %bb.m ], [ %i.di, %bb.n ], [ %i.df, %bb.k ] ; 3 uses
  %i.dq = phi i32 [ %.pre68, %bb.m ], [ 0, %bb.n ], [ %.pr, %bb.k ] ; 2 uses
  %.037 = phi i32 [ 1, %bb.m ], [ 2, %bb.n ], [ 0, %bb.k ]
  %i.dr = add nsw i32 %i.dq, %i.aj                ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !114
  %i.du = icmp sgt i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dv = ashr i32 %i.dq, 1
  %i.dw = add nsw i32 %i.dr, %i.dv                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !104
  %i.dz = sext i32 %i.dw to i64
  %i.ea = tail call noalias noundef ptr @realloc(ptr noundef %i.dy, i64 noundef %i.dz) #38 ; 2 uses
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ea, ptr %i.ef, align 8, !tbaa !104
  %.not44 = icmp eq ptr %i.ea, null
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = load ptr, ptr %0, align 8, !tbaa !19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.5)
  %.pre73 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.pre74 = load i64, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert75 = getelementptr inbounds nuw [8 x i8], ptr %.pre73, i64 %.pre74
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 8, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ej = phi ptr [ %.pre76, %bb.q ], [ %i.ee, %bb.p ] ; 2 uses
  %i.ek = add nsw i32 %i.dw, -2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !114
  %.pre77 = load i32, ptr %i.o, align 4, !tbaa !46
  %.pre78 = add nsw i32 %.pre77, %i.aj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pre-phi = phi i32 [ %.pre78, %bb.r ], [ %i.dr, %bb.o ] ; 2 uses
  %i.em = phi ptr [ %i.ej, %bb.r ], [ %i.dp, %bb.o ]
  store i32 %.pre-phi, ptr %i.o, align 4, !tbaa !46
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !104
  %i.ep = sext i32 %.pre-phi to i64
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 %i.ep
  store i8 0, ptr %i.eq, align 1, !tbaa !51
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.es = load i64, ptr %i.c, align 8, !tbaa !39
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !104
  %i.ex = load i32, ptr %i.o, align 4, !tbaa !46
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %i.ew, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 1
  store i8 0, ptr %i.fa, align 1, !tbaa !51
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !39
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !40
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !104
  store ptr %i.fg, ptr %i.j, align 8, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.s
  %.0 = phi i32 [ %., %bb.d ], [ %.037, %bb.s ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN22veloxprestotpFlexLexerC2EPSiPSo(ptr noundef nonnull align 8 dereferenceable(732) initializes((0, 8)) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV22veloxprestotpFlexLexer, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.not = icmp eq ptr %1, null
  %_ZSt3cin. = select i1 %.not, ptr @_ZSt3cin, ptr %1 ; 2 uses
  %i.b = load ptr, ptr %_ZSt3cin., align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %_ZSt3cin., i64 %i.d
  %.in = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.f = load ptr, ptr %.in, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.h, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.i, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 0, ptr %i.j, align 1, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 24), ptr %i.a, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 64), ptr %i.g, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !120
  %i.m = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSi, i64 0), align 8
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.m
end_hunk_0
