Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_double_fast?download=true
inline.NumInlined: 476
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZSTD_compressBlock_doubleFast_extDict_generic:bb.a

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi ptr [ %i.cy, %bb.l ], [ %i.dd, %bb.m ] ; 2 uses
  %.1.i = phi ptr [ %i.db, %bb.l ], [ %i.de, %bb.m ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !32
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !32
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val412 = load <2 x i64>, ptr %i.dd, align 1, !tbaa !32
  store <2 x i64> %.val412, ptr %i.dc, align 1, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.df = icmp ult ptr %i.de, %i.cz
  br i1 %i.df, label %bb.m, label %ZSTD_storeSeq.exit364, !llvm.loop !0

bb.n:                                             ; preds = %bb.i
  %.not.i419 = icmp ugt ptr %.0323537, %i.au
  br i1 %.not.i419, label %ZSTD_wildcopy.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = sub i64 %i.aw, %i.cs                    ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.cu, i64 %i.dg ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0323537, align 1, !tbaa !32
  store <2 x i64> %.val19.i, ptr %i.cu, align 1, !tbaa !32
  %i.di = icmp ult i64 %i.dg, 17
  br i1 %i.di, label %ZSTD_wildcopy.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.pn.i.i = phi ptr [ %.0323537, %bb.p ], [ %i.dl, %bb.q ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dj, %bb.p ], [ %i.dm, %bb.q ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !32
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !32
  %i.dk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dl, align 1, !tbaa !32
  store <2 x i64> %.val.i, ptr %i.dk, align 1, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.dh
  br i1 %i.dn, label %bb.q, label %ZSTD_wildcopy.exit.i, !llvm.loop !0

ZSTD_wildcopy.exit.i:                             ; preds = %bb.q, %bb.o, %bb.n
  %.014.i = phi ptr [ %.0323537, %bb.n ], [ %i.au, %bb.o ], [ %i.au, %bb.q ] ; 7 uses
  %.0.i420 = phi ptr [ %i.cu, %bb.n ], [ %i.dh, %bb.o ], [ %i.dh, %bb.q ] ; 6 uses
  %i.do = icmp ult ptr %.014.i, %i.ck
  br i1 %i.do, label %iter.check685, label %ZSTD_storeSeq.exit364

iter.check685:                                    ; preds = %ZSTD_wildcopy.exit.i
  %.014.i667 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i420666 = ptrtoaddr ptr %.0.i420 to i64
  %i.dp = add i64 %i.by, 1
  %i.dq = sub i64 %i.dp, %.014.i667               ; 7 uses
  %min.iters.check669 = icmp ult i64 %i.dq, 8
  %i.dr = sub i64 %.014.i667, %.0.i420666
  %diff.check668 = icmp ugt i64 %i.dr, -32
  %or.cond = select i1 %min.iters.check669, i1 true, i1 %diff.check668
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check670

vector.main.loop.iter.check670:                   ; preds = %iter.check685
  %min.iters.check671 = icmp ult i64 %i.dq, 32
  br i1 %min.iters.check671, label %vec.epilog.ph689, label %vector.ph672

vector.ph672:                                     ; preds = %vector.main.loop.iter.check670
  %i.ds = and i64 %i.dq, 24
  %n.vec673 = and i64 %i.dq, -32                  ; 5 uses
  %i.dt = getelementptr i8, ptr %.0.i420, i64 %n.vec673
  %i.du = getelementptr i8, ptr %.014.i, i64 %n.vec673
  br label %vector.body674

vector.body674:                                   ; preds = %vector.ph672, %vector.body674
  %index675 = phi i64 [ 0, %vector.ph672 ], [ %index.next680, %vector.body674 ] ; 3 uses
  %next.gep676 = getelementptr i8, ptr %.0.i420, i64 %index675 ; 2 uses
  %next.gep677 = getelementptr i8, ptr %.014.i, i64 %index675 ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep677, i64 16
  %wide.load678 = load <16 x i8>, ptr %next.gep677, align 1, !tbaa !32
  %wide.load679 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !32
  %i.dw = getelementptr i8, ptr %next.gep676, i64 16
  store <16 x i8> %wide.load678, ptr %next.gep676, align 1, !tbaa !32
  store <16 x i8> %wide.load679, ptr %i.dw, align 1, !tbaa !32
  %index.next680 = add nuw i64 %index675, 32      ; 2 uses
  %i.dx = icmp eq i64 %index.next680, %n.vec673
  br i1 %i.dx, label %middle.block681, label %vector.body674, !llvm.loop !134

middle.block681:                                  ; preds = %vector.body674
  %cmp.n682 = icmp eq i64 %i.dq, %n.vec673
  br i1 %cmp.n682, label %ZSTD_storeSeq.exit364, label %vec.epilog.iter.check687

vec.epilog.iter.check687:                         ; preds = %middle.block681
  %min.epilog.iters.check688 = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check688, label %.lr.ph.i.preheader, label %vec.epilog.ph689, !prof !38

vec.epilog.ph689:                                 ; preds = %vector.main.loop.iter.check670, %vec.epilog.iter.check687
  %vec.epilog.resume.val683 = phi i64 [ %n.vec673, %vec.epilog.iter.check687 ], [ 0, %vector.main.loop.iter.check670 ]
  %n.vec690 = and i64 %i.dq, -8                   ; 4 uses
  %i.dy = getelementptr i8, ptr %.0.i420, i64 %n.vec690
  %i.dz = getelementptr i8, ptr %.014.i, i64 %n.vec690
  br label %vec.epilog.vector.body691

vec.epilog.vector.body691:                        ; preds = %vec.epilog.vector.body691, %vec.epilog.ph689
  %index692 = phi i64 [ %vec.epilog.resume.val683, %vec.epilog.ph689 ], [ %index.next696, %vec.epilog.vector.body691 ] ; 3 uses
  %next.gep693 = getelementptr i8, ptr %.0.i420, i64 %index692
  %next.gep694 = getelementptr i8, ptr %.014.i, i64 %index692
  %wide.load695 = load <8 x i8>, ptr %next.gep694, align 1, !tbaa !32
  store <8 x i8> %wide.load695, ptr %next.gep693, align 1, !tbaa !32
  %index.next696 = add nuw i64 %index692, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next696, %n.vec690
  br i1 %i.ea, label %vec.epilog.middle.block697, label %vec.epilog.vector.body691, !llvm.loop !135

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body691
  %cmp.n698 = icmp eq i64 %i.dq, %n.vec690
  br i1 %cmp.n698, label %ZSTD_storeSeq.exit364, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check685, %vec.epilog.iter.check687, %vec.epilog.middle.block697
  %.121.i.ph = phi ptr [ %.0.i420, %iter.check685 ], [ %i.dt, %vec.epilog.iter.check687 ], [ %i.dy, %vec.epilog.middle.block697 ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check685 ], [ %i.du, %vec.epilog.iter.check687 ], [ %i.dz, %vec.epilog.middle.block697 ] ; 3 uses
  %i.eb = add i64 %i.by, 1
  %.11520.i.ph710 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.ec = sub i64 %i.eb, %.11520.i.ph710
  %i.ed = sub i64 %i.by, %.11520.i.ph710
  %xtraiter = and i64 %i.ec, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.eg, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ee, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.11520.i.prol, align 1, !tbaa !32
  %i.eg = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ef, ptr %.121.i.prol, align 1, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !136

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.eg, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ee, %.lr.ph.i.prol ]
  %i.eh = icmp ult i64 %i.ed, 7
  br i1 %i.eh, label %ZSTD_storeSeq.exit364, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.ff, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.ej = load i8, ptr %.11520.i, align 1, !tbaa !32
  %i.ek = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.ej, ptr %.121.i, align 1, !tbaa !32
  %i.el = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !32
  %i.eo = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !32
  %i.eq = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !32
  %i.er = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !32
  %i.eu = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !32
  %i.ex = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !32
  %i.fa = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7 ; 2 uses
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.fc = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !32
  %i.fd = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8
  %i.fe = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.ff = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !32
  %exitcond.not.i.7 = icmp eq ptr %i.fa, %.0328536
  br i1 %exitcond.not.i.7, label %ZSTD_storeSeq.exit364, label %.lr.ph.i, !llvm.loop !137

ZSTD_storeSeq.exit364.thread:                     ; preds = %bb.k, %bb.j
  %i.fg = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ct
  store ptr %i.fh, ptr %i.av, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !40
  br label %bb.s

ZSTD_storeSeq.exit364:                            ; preds = %bb.m, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block681, %vec.epilog.middle.block697, %ZSTD_wildcopy.exit.i
  %i.fi = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ct
  store ptr %i.fj, ptr %i.av, align 8, !tbaa !35
  %i.fk = icmp ugt i64 %i.ct, 65535
  %.pre551 = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 3 uses
  br i1 %i.fk, label %bb.r, label %bb.s, !prof !152

bb.r:                                             ; preds = %ZSTD_storeSeq.exit364
  store i32 1, ptr %i.ax, align 8, !tbaa !42
  %i.fl = load ptr, ptr %1, align 8, !tbaa !43
  %i.fm = ptrtoint ptr %.pre551 to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 3
  %i.fq = trunc i64 %i.fp to i32
  store i32 %i.fq, ptr %i.az, align 4, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %ZSTD_storeSeq.exit364.thread, %bb.r, %ZSTD_storeSeq.exit364
  %i.fr = phi ptr [ %.pre, %ZSTD_storeSeq.exit364.thread ], [ %.pre551, %bb.r ], [ %.pre551, %ZSTD_storeSeq.exit364 ] ; 4 uses
  %i.fs = trunc i64 %i.ct to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i16 %i.fs, ptr %i.ft, align 4, !tbaa !46
  store i32 1, ptr %i.fr, align 4, !tbaa !47
  %i.fu = add i64 %i.cp, 1                        ; 3 uses
  %i.fv = icmp ugt i64 %i.fu, 65535
  br i1 %i.fv, label %ZSTD_storeSeqOnly.exit.sink.split, label %ZSTD_storeSeqOnly.exit, !prof !48

bb.t:                                             ; preds = %bb.h, %ZSTD_hashPtr.exit358
  %i.fw = icmp ugt i32 %i.bt, %i.aa
  br i1 %i.fw, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  %.val386 = load i64, ptr %i.bx, align 1, !tbaa !23
  %i.fx = icmp eq i64 %.val386, %.0328.val400
  br i1 %i.fx, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.fy = select i1 %i.bu, ptr %i.ak, ptr %i.j
  %i.fz = select i1 %i.bu, ptr %i.aj, ptr %i.af   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0328536, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.gc = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb, ptr noundef nonnull %i.j, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.af)
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  %i.ge = sub i32 %i.ca, %i.bt                    ; 3 uses
  %i.gf = icmp ugt ptr %.0328536, %.0323537
  %i.gg = icmp ugt ptr %i.bx, %i.fz
  %i.gh = and i1 %i.gf, %i.gg
  br i1 %i.gh, label %.lr.ph514, label %.critedge

.lr.ph514:                                        ; preds = %bb.v, %bb.w
  %.0308513 = phi i64 [ %i.gn, %bb.w ], [ %i.gd, %bb.v ] ; 2 uses
  %.0309512 = phi ptr [ %i.gk, %bb.w ], [ %i.bx, %bb.v ]
  %.1329511 = phi ptr [ %i.gi, %bb.w ], [ %.0328536, %bb.v ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.1329511, i64 -1 ; 4 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = getelementptr inbounds i8, ptr %.0309512, i64 -1 ; 3 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32
  %i.gm = icmp eq i8 %i.gj, %i.gl
  br i1 %i.gm, label %bb.w, label %.critedge.loopexit

bb.w:                                             ; preds = %.lr.ph514
  %i.gn = add i64 %.0308513, 1                    ; 2 uses
  %i.go = icmp ugt ptr %i.gi, %.0323537
  %i.gp = icmp ugt ptr %i.gk, %i.fz
  %i.gq = and i1 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph514, label %.critedge.loopexit, !llvm.loop !138

.critedge.loopexit:                               ; preds = %bb.w, %.lr.ph514
  %.1329.lcssa.ph = phi ptr [ %.1329511, %.lr.ph514 ], [ %i.gi, %bb.w ] ; 2 uses
  %.0308.lcssa.ph = phi i64 [ %.0308513, %.lr.ph514 ], [ %i.gn, %bb.w ]
  %.pre558 = ptrtoint ptr %.1329.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.v
  %.pre-phi = phi i64 [ %.pre558, %.critedge.loopexit ], [ %i.by, %bb.v ]
  %.1329.lcssa = phi ptr [ %.1329.lcssa.ph, %.critedge.loopexit ], [ %.0328536, %bb.v ] ; 6 uses
  %.0308.lcssa = phi i64 [ %.0308.lcssa.ph, %.critedge.loopexit ], [ %i.gd, %bb.v ] ; 3 uses
  %.1329.lcssa615 = ptrtoaddr ptr %.1329.lcssa to i64 ; 3 uses
  %i.gr = ptrtoint ptr %.0323537 to i64           ; 2 uses
  %i.gs = sub i64 %.pre-phi, %i.gr                ; 7 uses
  %i.gt = add i32 %i.ge, 3
  %.not.i361 = icmp ugt ptr %.1329.lcssa, %i.au
  %i.gu = load ptr, ptr %i.av, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i361, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.critedge
  %.0323.val414 = load <2 x i64>, ptr %.0323537, align 1, !tbaa !32
  store <2 x i64> %.0323.val414, ptr %i.gu, align 1, !tbaa !32
  %i.gv = icmp ugt i64 %i.gs, 16
  br i1 %i.gv, label %bb.y, label %ZSTD_storeSeq.exit362.thread

bb.y:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0323537, i64 16 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 %i.gs
  %.val411 = load <2 x i64>, ptr %i.gy, align 1, !tbaa !32
  store <2 x i64> %.val411, ptr %i.gx, align 1, !tbaa !32
  %i.ha = icmp ult i64 %i.gs, 33
  br i1 %i.ha, label %ZSTD_storeSeq.exit362.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.pn.i365 = phi ptr [ %i.gy, %bb.z ], [ %i.hd, %bb.aa ] ; 2 uses
  %.1.i366 = phi ptr [ %i.hb, %bb.z ], [ %i.he, %bb.aa ] ; 3 uses
  %.130.i367 = getelementptr inbounds nuw i8, ptr %.pn.i365, i64 16
  %.130.i367.val = load <2 x i64>, ptr %.130.i367, align 1, !tbaa !32
  store <2 x i64> %.130.i367.val, ptr %.1.i366, align 1, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.i366, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn.i365, i64 32 ; 2 uses
  %.val410 = load <2 x i64>, ptr %i.hd, align 1, !tbaa !32
  store <2 x i64> %.val410, ptr %i.hc, align 1, !tbaa !32
  %i.he = getelementptr inbounds nuw i8, ptr %.1.i366, i64 32 ; 2 uses
  %i.hf = icmp ult ptr %i.he, %i.gz
  br i1 %i.hf, label %bb.aa, label %ZSTD_storeSeq.exit362, !llvm.loop !0

bb.ab:                                            ; preds = %.critedge
  %.not.i421 = icmp ugt ptr %.0323537, %i.au
  br i1 %.not.i421, label %ZSTD_wildcopy.exit.i428, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hg = sub i64 %i.aw, %i.gr                    ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gu, i64 %i.hg ; 3 uses
  %.val19.i422 = load <2 x i64>, ptr %.0323537, align 1, !tbaa !32
  store <2 x i64> %.val19.i422, ptr %i.gu, align 1, !tbaa !32
  %i.hi = icmp ult i64 %i.hg, 17
  br i1 %i.hi, label %ZSTD_wildcopy.exit.i428, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.pn.i.i423 = phi ptr [ %.0323537, %bb.ad ], [ %i.hl, %bb.ae ] ; 2 uses
  %.1.i.i424 = phi ptr [ %i.hj, %bb.ad ], [ %i.hm, %bb.ae ] ; 3 uses
  %.130.i.i425 = getelementptr inbounds nuw i8, ptr %.pn.i.i423, i64 16
  %.130.i.val.i426 = load <2 x i64>, ptr %.130.i.i425, align 1, !tbaa !32
  store <2 x i64> %.130.i.val.i426, ptr %.1.i.i424, align 1, !tbaa !32
  %i.hk = getelementptr inbounds nuw i8, ptr %.1.i.i424, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn.i.i423, i64 32 ; 2 uses
  %.val.i427 = load <2 x i64>, ptr %i.hl, align 1, !tbaa !32
  store <2 x i64> %.val.i427, ptr %i.hk, align 1, !tbaa !32
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i.i424, i64 32 ; 2 uses
  %i.hn = icmp ult ptr %i.hm, %i.hh
  br i1 %i.hn, label %bb.ae, label %ZSTD_wildcopy.exit.i428, !llvm.loop !0

ZSTD_wildcopy.exit.i428:                          ; preds = %bb.ae, %bb.ac, %bb.ab
  %.014.i429 = phi ptr [ %.0323537, %bb.ab ], [ %i.au, %bb.ac ], [ %i.au, %bb.ae ] ; 7 uses
  %.0.i430 = phi ptr [ %i.gu, %bb.ab ], [ %i.hh, %bb.ac ], [ %i.hh, %bb.ae ] ; 6 uses
  %i.ho = icmp ult ptr %.014.i429, %.1329.lcssa
  br i1 %i.ho, label %iter.check, label %ZSTD_storeSeq.exit362

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i428
  %.014.i429614 = ptrtoaddr ptr %.014.i429 to i64 ; 2 uses
  %.0.i430613 = ptrtoaddr ptr %.0.i430 to i64
  %i.hp = sub i64 %.1329.lcssa615, %.014.i429614  ; 7 uses
  %min.iters.check = icmp ult i64 %i.hp, 8
  %i.hq = sub i64 %.014.i429614, %.0.i430613
  %diff.check = icmp ugt i64 %i.hq, -32
  %or.cond701 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond701, label %.lr.ph.i431.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check616 = icmp ult i64 %i.hp, 32
  br i1 %min.iters.check616, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hr = and i64 %i.hp, 24
  %n.vec = and i64 %i.hp, -32                     ; 5 uses
  %i.hs = getelementptr i8, ptr %.0.i430, i64 %n.vec
  %i.ht = getelementptr i8, ptr %.014.i429, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i430, i64 %index ; 2 uses
  %next.gep617 = getelementptr i8, ptr %.014.i429, i64 %index ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep617, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep617, align 1, !tbaa !32
  %wide.load618 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !32
  %i.hv = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !32
  store <16 x i8> %wide.load618, ptr %i.hv, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hp, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit362, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i431.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec620 = and i64 %i.hp, -8                   ; 4 uses
  %i.hx = getelementptr i8, ptr %.0.i430, i64 %n.vec620
  %i.hy = getelementptr i8, ptr %.014.i429, i64 %n.vec620
  br label %vec.epilog.vector.body

end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_doubleFast_extDict_generic:bb.a
  %i.md = icmp ult i64 %i.lv, 33
  br i1 %i.md, label %ZSTD_storeSeq.exit360.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.pn.i369 = phi ptr [ %i.mb, %bb.ar ], [ %i.mg, %bb.as ] ; 2 uses
  %.1.i370 = phi ptr [ %i.me, %bb.ar ], [ %i.mh, %bb.as ] ; 3 uses
  %.130.i371 = getelementptr inbounds nuw i8, ptr %.pn.i369, i64 16
  %.130.i371.val = load <2 x i64>, ptr %.130.i371, align 1, !tbaa !32
  store <2 x i64> %.130.i371.val, ptr %.1.i370, align 1, !tbaa !32
  %i.mf = getelementptr inbounds nuw i8, ptr %.1.i370, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %.pn.i369, i64 32 ; 2 uses
  %.val408 = load <2 x i64>, ptr %i.mg, align 1, !tbaa !32
  store <2 x i64> %.val408, ptr %i.mf, align 1, !tbaa !32
  %i.mh = getelementptr inbounds nuw i8, ptr %.1.i370, i64 32 ; 2 uses
  %i.mi = icmp ult ptr %i.mh, %i.mc
  br i1 %i.mi, label %bb.as, label %ZSTD_storeSeq.exit360, !llvm.loop !0

bb.at:                                            ; preds = %.critedge2
  %.not.i436 = icmp ugt ptr %.0323537, %i.au
  br i1 %.not.i436, label %ZSTD_wildcopy.exit.i443, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mj = sub i64 %i.aw, %i.lu                    ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %i.lx, i64 %i.mj ; 3 uses
  %.val19.i437 = load <2 x i64>, ptr %.0323537, align 1, !tbaa !32
  store <2 x i64> %.val19.i437, ptr %i.lx, align 1, !tbaa !32
  %i.ml = icmp ult i64 %i.mj, 17
  br i1 %i.ml, label %ZSTD_wildcopy.exit.i443, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.pn.i.i438 = phi ptr [ %.0323537, %bb.av ], [ %i.mo, %bb.aw ] ; 2 uses
  %.1.i.i439 = phi ptr [ %i.mm, %bb.av ], [ %i.mp, %bb.aw ] ; 3 uses
  %.130.i.i440 = getelementptr inbounds nuw i8, ptr %.pn.i.i438, i64 16
  %.130.i.val.i441 = load <2 x i64>, ptr %.130.i.i440, align 1, !tbaa !32
  store <2 x i64> %.130.i.val.i441, ptr %.1.i.i439, align 1, !tbaa !32
  %i.mn = getelementptr inbounds nuw i8, ptr %.1.i.i439, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.pn.i.i438, i64 32 ; 2 uses
  %.val.i442 = load <2 x i64>, ptr %i.mo, align 1, !tbaa !32
  store <2 x i64> %.val.i442, ptr %i.mn, align 1, !tbaa !32
  %i.mp = getelementptr inbounds nuw i8, ptr %.1.i.i439, i64 32 ; 2 uses
  %i.mq = icmp ult ptr %i.mp, %i.mk
  br i1 %i.mq, label %bb.aw, label %ZSTD_wildcopy.exit.i443, !llvm.loop !0

ZSTD_wildcopy.exit.i443:                          ; preds = %bb.aw, %bb.au, %bb.at
  %.014.i444 = phi ptr [ %.0323537, %bb.at ], [ %i.au, %bb.au ], [ %i.au, %bb.aw ] ; 7 uses
  %.0.i445 = phi ptr [ %i.lx, %bb.at ], [ %i.mk, %bb.au ], [ %i.mk, %bb.aw ] ; 6 uses
  %i.mr = icmp ult ptr %.014.i444, %.4332
  br i1 %i.mr, label %iter.check649, label %ZSTD_storeSeq.exit360

iter.check649:                                    ; preds = %ZSTD_wildcopy.exit.i443
  %.014.i444631 = ptrtoaddr ptr %.014.i444 to i64 ; 2 uses
  %.0.i445630 = ptrtoaddr ptr %.0.i445 to i64
  %i.ms = sub i64 %i.lt, %.014.i444631            ; 7 uses
  %min.iters.check633 = icmp ult i64 %i.ms, 8
  %i.mt = sub i64 %.014.i444631, %.0.i445630
  %diff.check632 = icmp ugt i64 %i.mt, -32
  %or.cond702 = select i1 %min.iters.check633, i1 true, i1 %diff.check632
  br i1 %or.cond702, label %.lr.ph.i446.preheader, label %vector.main.loop.iter.check634

vector.main.loop.iter.check634:                   ; preds = %iter.check649
  %min.iters.check635 = icmp ult i64 %i.ms, 32
  br i1 %min.iters.check635, label %vec.epilog.ph653, label %vector.ph636

vector.ph636:                                     ; preds = %vector.main.loop.iter.check634
  %i.mu = and i64 %i.ms, 24
  %n.vec637 = and i64 %i.ms, -32                  ; 5 uses
  %i.mv = getelementptr i8, ptr %.0.i445, i64 %n.vec637
  %i.mw = getelementptr i8, ptr %.014.i444, i64 %n.vec637
  br label %vector.body638

vector.body638:                                   ; preds = %vector.ph636, %vector.body638
  %index639 = phi i64 [ 0, %vector.ph636 ], [ %index.next644, %vector.body638 ] ; 3 uses
  %next.gep640 = getelementptr i8, ptr %.0.i445, i64 %index639 ; 2 uses
  %next.gep641 = getelementptr i8, ptr %.014.i444, i64 %index639 ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep641, i64 16
  %wide.load642 = load <16 x i8>, ptr %next.gep641, align 1, !tbaa !32
  %wide.load643 = load <16 x i8>, ptr %i.mx, align 1, !tbaa !32
  %i.my = getelementptr i8, ptr %next.gep640, i64 16
  store <16 x i8> %wide.load642, ptr %next.gep640, align 1, !tbaa !32
  store <16 x i8> %wide.load643, ptr %i.my, align 1, !tbaa !32
  %index.next644 = add nuw i64 %index639, 32      ; 2 uses
  %i.mz = icmp eq i64 %index.next644, %n.vec637
  br i1 %i.mz, label %middle.block645, label %vector.body638, !llvm.loop !145

middle.block645:                                  ; preds = %vector.body638
  %cmp.n646 = icmp eq i64 %i.ms, %n.vec637
  br i1 %cmp.n646, label %ZSTD_storeSeq.exit360, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block645
  %min.epilog.iters.check652 = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check652, label %.lr.ph.i446.preheader, label %vec.epilog.ph653, !prof !38

vec.epilog.ph653:                                 ; preds = %vector.main.loop.iter.check634, %vec.epilog.iter.check651
  %vec.epilog.resume.val647 = phi i64 [ %n.vec637, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check634 ]
  %n.vec654 = and i64 %i.ms, -8                   ; 4 uses
  %i.na = getelementptr i8, ptr %.0.i445, i64 %n.vec654
  %i.nb = getelementptr i8, ptr %.014.i444, i64 %n.vec654
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph653
  %index656 = phi i64 [ %vec.epilog.resume.val647, %vec.epilog.ph653 ], [ %index.next660, %vec.epilog.vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %.0.i445, i64 %index656
  %next.gep658 = getelementptr i8, ptr %.014.i444, i64 %index656
  %wide.load659 = load <8 x i8>, ptr %next.gep658, align 1, !tbaa !32
  store <8 x i8> %wide.load659, ptr %next.gep657, align 1, !tbaa !32
  %index.next660 = add nuw i64 %index656, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.nc, label %vec.epilog.middle.block661, label %vec.epilog.vector.body655, !llvm.loop !146

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body655
  %cmp.n662 = icmp eq i64 %i.ms, %n.vec654
  br i1 %cmp.n662, label %ZSTD_storeSeq.exit360, label %.lr.ph.i446.preheader

.lr.ph.i446.preheader:                            ; preds = %iter.check649, %vec.epilog.iter.check651, %vec.epilog.middle.block661
  %.121.i447.ph = phi ptr [ %.0.i445, %iter.check649 ], [ %i.mv, %vec.epilog.iter.check651 ], [ %i.na, %vec.epilog.middle.block661 ] ; 2 uses
  %.11520.i448.ph = phi ptr [ %.014.i444, %iter.check649 ], [ %i.mw, %vec.epilog.iter.check651 ], [ %i.nb, %vec.epilog.middle.block661 ] ; 3 uses
  %.11520.i448.ph711 = ptrtoaddr ptr %.11520.i448.ph to i64 ; 2 uses
  %i.nd = sub i64 %i.lt, %.11520.i448.ph711
  %xtraiter712 = and i64 %i.nd, 7                 ; 2 uses
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.i446.prol.loopexit, label %.lr.ph.i446.prol

.lr.ph.i446.prol:                                 ; preds = %.lr.ph.i446.preheader, %.lr.ph.i446.prol
  %.121.i447.prol = phi ptr [ %i.ng, %.lr.ph.i446.prol ], [ %.121.i447.ph, %.lr.ph.i446.preheader ] ; 2 uses
  %.11520.i448.prol = phi ptr [ %i.ne, %.lr.ph.i446.prol ], [ %.11520.i448.ph, %.lr.ph.i446.preheader ] ; 2 uses
  %prol.iter714 = phi i64 [ %prol.iter714.next, %.lr.ph.i446.prol ], [ 0, %.lr.ph.i446.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.11520.i448.prol, i64 1 ; 2 uses
  %i.nf = load i8, ptr %.11520.i448.prol, align 1, !tbaa !32
  %i.ng = getelementptr inbounds nuw i8, ptr %.121.i447.prol, i64 1 ; 2 uses
  store i8 %i.nf, ptr %.121.i447.prol, align 1, !tbaa !32
  %prol.iter714.next = add i64 %prol.iter714, 1   ; 2 uses
  %prol.iter714.cmp.not = icmp eq i64 %prol.iter714.next, %xtraiter712
  br i1 %prol.iter714.cmp.not, label %.lr.ph.i446.prol.loopexit, label %.lr.ph.i446.prol, !llvm.loop !147

.lr.ph.i446.prol.loopexit:                        ; preds = %.lr.ph.i446.prol, %.lr.ph.i446.preheader
  %.121.i447.unr = phi ptr [ %.121.i447.ph, %.lr.ph.i446.preheader ], [ %i.ng, %.lr.ph.i446.prol ]
  %.11520.i448.unr = phi ptr [ %.11520.i448.ph, %.lr.ph.i446.preheader ], [ %i.ne, %.lr.ph.i446.prol ]
  %i.nh = sub i64 %.11520.i448.ph711, %i.lt
  %i.ni = icmp ugt i64 %i.nh, -8
  br i1 %i.ni, label %ZSTD_storeSeq.exit360, label %.lr.ph.i446

.lr.ph.i446:                                      ; preds = %.lr.ph.i446.prol.loopexit, %.lr.ph.i446
  %.121.i447 = phi ptr [ %i.og, %.lr.ph.i446 ], [ %.121.i447.unr, %.lr.ph.i446.prol.loopexit ] ; 9 uses
  %.11520.i448 = phi ptr [ %i.oe, %.lr.ph.i446 ], [ %.11520.i448.unr, %.lr.ph.i446.prol.loopexit ] ; 9 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 1
  %i.nk = load i8, ptr %.11520.i448, align 1, !tbaa !32
  %i.nl = getelementptr inbounds nuw i8, ptr %.121.i447, i64 1
  store i8 %i.nk, ptr %.121.i447, align 1, !tbaa !32
  %i.nm = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 2
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !32
  %i.no = getelementptr inbounds nuw i8, ptr %.121.i447, i64 2
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !32
  %i.np = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 3
  %i.nq = load i8, ptr %i.nm, align 1, !tbaa !32
  %i.nr = getelementptr inbounds nuw i8, ptr %.121.i447, i64 3
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !32
  %i.ns = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 4
  %i.nt = load i8, ptr %i.np, align 1, !tbaa !32
  %i.nu = getelementptr inbounds nuw i8, ptr %.121.i447, i64 4
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !32
  %i.nv = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 5
  %i.nw = load i8, ptr %i.ns, align 1, !tbaa !32
  %i.nx = getelementptr inbounds nuw i8, ptr %.121.i447, i64 5
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !32
  %i.ny = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 6
  %i.nz = load i8, ptr %i.nv, align 1, !tbaa !32
  %i.oa = getelementptr inbounds nuw i8, ptr %.121.i447, i64 6
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !32
  %i.ob = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 7
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !32
  %i.od = getelementptr inbounds nuw i8, ptr %.121.i447, i64 7
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !32
  %i.oe = getelementptr inbounds nuw i8, ptr %.11520.i448, i64 8 ; 2 uses
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !32
  %i.og = getelementptr inbounds nuw i8, ptr %.121.i447, i64 8
  store i8 %i.of, ptr %i.od, align 1, !tbaa !32
  %exitcond.not.i449.7 = icmp eq ptr %i.oe, %.4332
  br i1 %exitcond.not.i449.7, label %ZSTD_storeSeq.exit360, label %.lr.ph.i446, !llvm.loop !148

ZSTD_storeSeq.exit360.thread:                     ; preds = %bb.aq, %bb.ap
  %i.oh = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.lv
  store ptr %i.oi, ptr %i.av, align 8, !tbaa !35
  %.pre552 = load ptr, ptr %i.ay, align 8, !tbaa !40
  br label %bb.ay

ZSTD_storeSeq.exit360:                            ; preds = %bb.as, %.lr.ph.i446.prol.loopexit, %.lr.ph.i446, %middle.block645, %vec.epilog.middle.block661, %ZSTD_wildcopy.exit.i443
  %i.oj = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.lv
  store ptr %i.ok, ptr %i.av, align 8, !tbaa !35
  %i.ol = icmp ugt i64 %i.lv, 65535
  %.pre553 = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 3 uses
  br i1 %i.ol, label %bb.ax, label %bb.ay, !prof !152

bb.ax:                                            ; preds = %ZSTD_storeSeq.exit360
  store i32 1, ptr %i.ax, align 8, !tbaa !42
  %i.om = load ptr, ptr %1, align 8, !tbaa !43
  %i.on = ptrtoint ptr %.pre553 to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = lshr exact i64 %i.op, 3
  %i.or = trunc i64 %i.oq to i32
  store i32 %i.or, ptr %i.az, align 4, !tbaa !44
  br label %bb.ay

bb.ay:                                            ; preds = %ZSTD_storeSeq.exit360.thread, %bb.ax, %ZSTD_storeSeq.exit360
  %i.os = phi ptr [ %.pre552, %ZSTD_storeSeq.exit360.thread ], [ %.pre553, %bb.ax ], [ %.pre553, %ZSTD_storeSeq.exit360 ] ; 4 uses
  %i.ot = trunc i64 %i.lv to i16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  store i16 %i.ot, ptr %i.ou, align 4, !tbaa !46
  store i32 %i.lw, ptr %i.os, align 4, !tbaa !47
  %i.ov = add i64 %.3, -3                         ; 3 uses
  %i.ow = icmp ugt i64 %i.ov, 65535
  br i1 %i.ow, label %ZSTD_storeSeqOnly.exit.sink.split, label %ZSTD_storeSeqOnly.exit, !prof !48

bb.az:                                            ; preds = %bb.ai, %bb.ah
  %i.ox = ptrtoint ptr %.0323537 to i64
  %i.oy = sub i64 %i.by, %i.ox
  %i.oz = ashr i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %.0328536, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 1
  br label %.thread, !llvm.loop !149

ZSTD_storeSeqOnly.exit.sink.split:                ; preds = %bb.ay, %bb.ag, %bb.s
  %.sink605 = phi ptr [ %i.jp, %bb.ag ], [ %i.fr, %bb.s ], [ %i.os, %bb.ay ] ; 2 uses
  %.sink601.ph = phi i64 [ %i.js, %bb.ag ], [ %i.fu, %bb.s ], [ %i.ov, %bb.ay ]
  %.5333.ph = phi ptr [ %.1329.lcssa, %bb.ag ], [ %i.ck, %bb.s ], [ %.4332, %bb.ay ]
  %.1318.ph = phi i32 [ %i.ge, %bb.ag ], [ %.0317538, %bb.s ], [ %.0306, %bb.ay ]
  %.1313.ph = phi i32 [ %.0317538, %bb.ag ], [ %.0312539, %bb.s ], [ %.0317538, %bb.ay ]
  %.4.ph = phi i64 [ %.0308.lcssa, %bb.ag ], [ %i.cq, %bb.s ], [ %.3, %bb.ay ]
  store i32 2, ptr %i.ax, align 8, !tbaa !42
  %i.pc = load ptr, ptr %1, align 8, !tbaa !43
  %i.pd = ptrtoint ptr %.sink605 to i64
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = lshr exact i64 %i.pf, 3
  %i.ph = trunc i64 %i.pg to i32
  store i32 %i.ph, ptr %i.az, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %ZSTD_storeSeqOnly.exit.sink.split, %bb.ay, %bb.ag, %bb.s
  %.sink601 = phi i64 [ %i.js, %bb.ag ], [ %i.ov, %bb.ay ], [ %i.fu, %bb.s ], [ %.sink601.ph, %ZSTD_storeSeqOnly.exit.sink.split ]
  %.sink600 = phi ptr [ %i.jp, %bb.ag ], [ %i.os, %bb.ay ], [ %i.fr, %bb.s ], [ %.sink605, %ZSTD_storeSeqOnly.exit.sink.split ] ; 2 uses
  %.5333 = phi ptr [ %.1329.lcssa, %bb.ag ], [ %.4332, %bb.ay ], [ %i.ck, %bb.s ], [ %.5333.ph, %ZSTD_storeSeqOnly.exit.sink.split ]
  %.1318 = phi i32 [ %i.ge, %bb.ag ], [ %.0306, %bb.ay ], [ %.0317538, %bb.s ], [ %.1318.ph, %ZSTD_storeSeqOnly.exit.sink.split ] ; 2 uses
  %.1313 = phi i32 [ %.0317538, %bb.ag ], [ %.0317538, %bb.ay ], [ %.0312539, %bb.s ], [ %.1313.ph, %ZSTD_storeSeqOnly.exit.sink.split ] ; 2 uses
  %.4 = phi i64 [ %.0308.lcssa, %bb.ag ], [ %.3, %bb.ay ], [ %i.cq, %bb.s ], [ %.4.ph, %ZSTD_storeSeqOnly.exit.sink.split ]
  %i.pi = trunc i64 %.sink601 to i16
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink600, i64 6
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !49
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink600, i64 8 ; 2 uses
  store ptr %i.pk, ptr %i.ay, align 8, !tbaa !40
  %i.pl = getelementptr inbounds nuw i8, ptr %.5333, i64 %.4 ; 9 uses
  %.not344 = icmp ugt ptr %i.pl, %i.k
  br i1 %.not344, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_storeSeqOnly.exit
  %i.pm = add i32 %i.ca, 2                        ; 6 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.pn ; 2 uses
  %.val402 = load i64, ptr %i.po, align 1, !tbaa !23 ; 4 uses
  %i.pp = mul i64 %.val402, -3523014627327384477
  %i.pq = lshr i64 %i.pp, %i.at
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pq
  store i32 %i.pm, ptr %i.pr, align 4, !tbaa !24
  %i.ps = getelementptr inbounds i8, ptr %i.pl, i64 -2 ; 2 uses
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = sub i64 %i.pt, %i.o
  %i.pv = trunc i64 %i.pu to i32
  %.val403 = load i64, ptr %i.ps, align 1, !tbaa !23
  %i.pw = mul i64 %.val403, -3523014627327384477
  %i.px = lshr i64 %i.pw, %i.at
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.px
  store i32 %i.pv, ptr %i.py, align 4, !tbaa !24
  switch i32 %5, label %default.unreachable [
    i32 7, label %ZSTD_hashPtr.exit352.thread471
    i32 5, label %ZSTD_hashPtr.exit352.thread467
    i32 6, label %ZSTD_hashPtr.exit352.thread469
    i32 4, label %ZSTD_hashPtr.exit352
  ]

ZSTD_hashPtr.exit352.thread467:                   ; preds = %bb.ba
  %i.pz = mul i64 %.val402, -3523014627271114752
  %i.qa = lshr i64 %i.pz, %i.ar
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qa
  store i32 %i.pm, ptr %i.qb, align 4, !tbaa !24
  %i.qc = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val389 = load i64, ptr %i.qc, align 1, !tbaa !23
  %i.qd = mul i64 %.val389, -3523014627271114752
  %i.qe = lshr i64 %i.qd, %i.ar
  br label %.lr.ph524.preheader

ZSTD_hashPtr.exit352.thread469:                   ; preds = %bb.ba
  %i.qf = mul i64 %.val402, -3523014627193847808
  %i.qg = lshr i64 %i.qf, %i.ar
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qg
  store i32 %i.pm, ptr %i.qh, align 4, !tbaa !24
  %i.qi = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val393 = load i64, ptr %i.qi, align 1, !tbaa !23
  %i.qj = mul i64 %.val393, -3523014627193847808
  %i.qk = lshr i64 %i.qj, %i.ar
  br label %.lr.ph524.preheader

ZSTD_hashPtr.exit352.thread471:                   ; preds = %bb.ba
  %i.ql = mul i64 %.val402, -3523014627193167104
  %i.qm = lshr i64 %i.ql, %i.ar
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qm
  store i32 %i.pm, ptr %i.qn, align 4, !tbaa !24
  %i.qo = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val397 = load i64, ptr %i.qo, align 1, !tbaa !23
  %i.qp = mul i64 %.val397, -3523014627193167104
  %i.qq = lshr i64 %i.qp, %i.ar
  br label %.lr.ph524.preheader

ZSTD_hashPtr.exit352:                             ; preds = %bb.ba
  %.val380 = load i32, ptr %i.po, align 1, !tbaa !24
  %i.qr = mul i32 %.val380, -1640531535
  %i.qs = lshr i32 %i.qr, %i.ap
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qt
  store i32 %i.pm, ptr %i.qu, align 4, !tbaa !24
  %i.qv = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val381 = load i32, ptr %i.qv, align 1, !tbaa !24
  %i.qw = mul i32 %.val381, -1640531535
  %i.qx = lshr i32 %i.qw, %i.ap
  %i.qy = zext i32 %i.qx to i64
  br label %.lr.ph524.preheader

.lr.ph524.preheader:                              ; preds = %ZSTD_hashPtr.exit352.thread471, %ZSTD_hashPtr.exit352.thread469, %ZSTD_hashPtr.exit352.thread467, %ZSTD_hashPtr.exit352
  %.pn.in = phi ptr [ %i.qv, %ZSTD_hashPtr.exit352 ], [ %i.qo, %ZSTD_hashPtr.exit352.thread471 ], [ %i.qc, %ZSTD_hashPtr.exit352.thread467 ], [ %i.qi, %ZSTD_hashPtr.exit352.thread469 ]
  %.0.i349 = phi i64 [ %i.qy, %ZSTD_hashPtr.exit352 ], [ %i.qq, %ZSTD_hashPtr.exit352.thread471 ], [ %i.qe, %ZSTD_hashPtr.exit352.thread467 ], [ %i.qk, %ZSTD_hashPtr.exit352.thread469 ]
  %.pn = ptrtoint ptr %.pn.in to i64
  %.in = sub i64 %.pn, %i.o
  %i.qz = trunc i64 %.in to i32
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0.i349
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !24
  br label %.lr.ph524

.lr.ph524:                                        ; preds = %.lr.ph524.preheader, %bb.bj
  %i.rb = phi ptr [ %i.se, %bb.bj ], [ %i.pk, %.lr.ph524.preheader ]
  %.2314523 = phi i32 [ %.2319522, %bb.bj ], [ %.1313, %.lr.ph524.preheader ] ; 6 uses
  %.2319522 = phi i32 [ %.2314523, %bb.bj ], [ %.1318, %.lr.ph524.preheader ] ; 4 uses
  %.6521 = phi ptr [ %i.st, %bb.bj ], [ %i.pl, %.lr.ph524.preheader ] ; 15 uses
  %i.rc = ptrtoint ptr %.6521 to i64
  %i.rd = sub i64 %i.rc, %i.o
  %i.re = trunc i64 %i.rd to i32                  ; 4 uses
  %i.rf = sub i32 %i.re, %.2314523                ; 3 uses
  %i.rg = icmp ult i32 %i.rf, %i.ad               ; 2 uses
  %i.rh = zext i32 %i.rf to i64
  %.v = select i1 %i.rg, ptr %i.ah, ptr %i.m
  %i.ri = getelementptr inbounds nuw i8, ptr %.v, i64 %i.rh ; 2 uses
  %i.rj = sub i32 %i.rf, %i.ad
  %i.rk = icmp ugt i32 %i.rj, -4
  %i.rl = sub i32 %i.re, %i.aa
  %.not346 = icmp ugt i32 %.2314523, %i.rl
  %.not347 = or i1 %.not346, %i.rk
  br i1 %.not347, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph524
  %.val = load i32, ptr %i.ri, align 1, !tbaa !24
  %.6.val = load i32, ptr %.6521, align 1, !tbaa !24
  %i.rm = icmp eq i32 %.val, %.6.val
  br i1 %i.rm, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.rn = select i1 %i.rg, ptr %i.ak, ptr %i.j
  %i.ro = getelementptr inbounds nuw i8, ptr %.6521, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rq = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ro, ptr noundef nonnull %i.rp, ptr noundef nonnull %i.j, ptr noundef nonnull %i.rn, ptr noundef nonnull %i.af) ; 2 uses
  %.not.i = icmp ugt ptr %.6521, %i.au
  br i1 %.not.i, label %ZSTD_storeSeq.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rr = load ptr, ptr %i.av, align 8, !tbaa !35
  %.1324.val = load <2 x i64>, ptr %.6521, align 1, !tbaa !32
  store <2 x i64> %.1324.val, ptr %i.rr, align 1, !tbaa !32
  %.pre556 = load ptr, ptr %i.ay, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit

ZSTD_storeSeq.exit:                               ; preds = %bb.bc, %bb.bd
  %i.rs = phi ptr [ %i.rb, %bb.bc ], [ %.pre556, %bb.bd ] ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  store i16 0, ptr %i.rt, align 4, !tbaa !46
  store i32 1, ptr %i.rs, align 4, !tbaa !47
  %i.ru = add i64 %i.rq, 1                        ; 2 uses
  %i.rv = icmp ugt i64 %i.ru, 65535
  br i1 %i.rv, label %bb.be, label %ZSTD_storeSeqOnly.exit375, !prof !48

bb.be:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 2, ptr %i.ax, align 8, !tbaa !42
  %i.rw = load ptr, ptr %1, align 8, !tbaa !43
  %i.rx = ptrtoint ptr %i.rs to i64
  %i.ry = ptrtoint ptr %i.rw to i64
end_hunk_1
begin_hunk_2_@ZSTD_compressBlock_doubleFast_extDict_generic:bb.a
  br i1 %.not345, label %.thread, label %.lr.ph524

.thread:                                          ; preds = %bb.bj, %bb.bb, %.lr.ph524, %ZSTD_storeSeqOnly.exit, %bb.az
  %.9 = phi ptr [ %i.pb, %bb.az ], [ %i.pl, %ZSTD_storeSeqOnly.exit ], [ %i.st, %bb.bj ], [ %.6521, %bb.bb ], [ %.6521, %.lr.ph524 ] ; 2 uses
  %.4327 = phi ptr [ %.0323537, %bb.az ], [ %i.pl, %ZSTD_storeSeqOnly.exit ], [ %i.st, %bb.bj ], [ %.6521, %bb.bb ], [ %.6521, %.lr.ph524 ] ; 2 uses
  %.5322 = phi i32 [ %.0317538, %bb.az ], [ %.1318, %ZSTD_storeSeqOnly.exit ], [ %.2314523, %bb.bj ], [ %.2319522, %bb.bb ], [ %.2319522, %.lr.ph524 ] ; 2 uses
  %.5 = phi i32 [ %.0312539, %bb.az ], [ %.1313, %ZSTD_storeSeqOnly.exit ], [ %.2319522, %bb.bj ], [ %.2314523, %bb.bb ], [ %.2314523, %.lr.ph524 ] ; 2 uses
  %i.su = icmp ult ptr %.9, %i.k
  br i1 %i.su, label %bb.c, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre559 = ptrtoint ptr %.4327 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi560 = phi i64 [ %.pre559, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %.0317.lcssa = phi i32 [ %.5322, %._crit_edge.loopexit ], [ %i.al, %.preheader ]
  %.0312.lcssa = phi i32 [ %.5, %._crit_edge.loopexit ], [ %i.an, %.preheader ]
  store i32 %.0317.lcssa, ptr %2, align 4, !tbaa !24
  store i32 %.0312.lcssa, ptr %i.am, align 4, !tbaa !24
  %i.sv = ptrtoint ptr %i.j to i64
  %i.sw = sub i64 %i.sv, %.pre-phi560
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.ba, %bb.b ], [ %i.sw, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !25}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !9, i64 88, !6, i64 96}
!15 = !{!"p1 _ZTS17ZSTD_MatchState_t", !9, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!17 = !{!"ZSTD_MatchState_t", !11, i64 0, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !10, i64 56, !5, i64 64, !12, i64 96, !6, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !6, i64 136, !6, i64 140, !14, i64 144, !15, i64 248, !16, i64 256, !9, i64 288, !6, i64 296, !6, i64 300}
!18 = !{!17, !13, i64 112}
!19 = !{!17, !13, i64 128}
!20 = !{!17, !10, i64 8}
!21 = !{!16, !6, i64 4}
!22 = !{!16, !6, i64 8}
!23 = !{!12, !12, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!17, !6, i64 272}
!27 = !{!16, !6, i64 0}
!28 = !{!17, !6, i64 24}
!29 = !{!17, !6, i64 40}
!30 = !{!"short", !5, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !12, i64 64, !6, i64 72, !6, i64 76}
!35 = !{!34, !10, i64 24}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!34, !33, i64 8}
!41 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!42 = !{!34, !6, i64 72}
!43 = !{!34, !33, i64 0}
!44 = !{!34, !6, i64 76}
!45 = !{!"SeqDef_s", !6, i64 0, !30, i64 4, !30, i64 6}
!46 = !{!45, !30, i64 4}
!47 = !{!45, !6, i64 0}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!45, !30, i64 6}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = !{!16, !6, i64 16}
!53 = !{!17, !6, i64 44}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25, !36, !37}
!56 = distinct !{!56, !25, !36, !37}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !25, !36}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25, !36, !37}
!62 = distinct !{!62, !25, !36, !37}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !25, !36}
!65 = distinct !{!65, !25, !36, !37}
!66 = distinct !{!66, !25, !36, !37}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !25, !36}
!69 = distinct !{!69, !25, !36, !37}
!70 = distinct !{!70, !25, !36, !37}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !25, !36}
!73 = distinct !{!73, !25, !36, !37}
!74 = distinct !{!74, !25, !36, !37}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !25, !36}
!77 = distinct !{!77, !25, !36, !37}
!78 = distinct !{!78, !25, !36, !37}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !25, !36}
!81 = distinct !{!81, !25, !36, !37}
!82 = distinct !{!82, !25, !36, !37}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !25, !36}
!85 = distinct !{!85, !25, !36, !37}
!86 = distinct !{!86, !25, !36, !37}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !25, !36}
!89 = !{i64 79709, i64 79733}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25, !36, !37}
!93 = distinct !{!93, !25, !36, !37}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !25, !36}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25, !36, !37}
!104 = distinct !{!104, !25, !36, !37}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !25, !36}
!107 = distinct !{!107, !25, !36, !37}
!108 = distinct !{!108, !25, !36, !37}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !25, !36}
!111 = distinct !{!111, !25, !36, !37}
!112 = distinct !{!112, !25, !36, !37}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !25, !36}
!115 = distinct !{!115, !25, !36, !37}
!116 = distinct !{!116, !25, !36, !37}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !25, !36}
!119 = distinct !{!119, !25, !36, !37}
!120 = distinct !{!120, !25, !36, !37}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !25, !36}
!123 = distinct !{!123, !25, !36, !37}
!124 = distinct !{!124, !25, !36, !37}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !25, !36}
!127 = distinct !{!127, !25, !36, !37}
!128 = distinct !{!128, !25, !36, !37}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !25, !36}
!131 = !{!17, !15, i64 248}
!132 = !{!17, !10, i64 0}
!133 = !{!17, !6, i64 296}
!134 = distinct !{!134, !25, !36, !37}
!135 = distinct !{!135, !25, !36, !37}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !25, !36}
!138 = distinct !{!138, !25}
!139 = distinct !{!139, !25, !36, !37}
!140 = distinct !{!140, !25, !36, !37}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !25, !36}
!143 = distinct !{!143, !25}
!144 = distinct !{!144, !25}
!145 = distinct !{!145, !25, !36, !37}
!146 = distinct !{!146, !25, !36, !37}
!147 = distinct !{!147, !39}
!148 = distinct !{!148, !25, !36}
!149 = distinct !{!149, !25}
!150 = !{!17, !6, i64 28}
!151 = !{!17, !10, i64 16}
!152 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
end_hunk_2
