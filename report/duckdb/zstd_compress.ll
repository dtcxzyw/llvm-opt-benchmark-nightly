inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a

.critedge3:                                       ; preds = %bb.f, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !239 ; 8 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge3
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !236
  %i.ar = add i32 %i.aq, 3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit

bb.i:                                             ; preds = %.critedge3
  %i.as = icmp eq i32 %i.ap, 0                    ; 5 uses
  %i.at = zext i1 %i.as to i32
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !236 ; 6 uses
  %i.av = add i32 %i.au, 3                        ; 3 uses
  %i.aw = icmp ne i32 %i.au, %i.aj
  %or.cond150.not = select i1 %i.as, i1 true, i1 %i.aw
  br i1 %or.cond150.not, label %bb.j, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.au, %i.ah
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = select i1 %i.as, i32 1, i32 2
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %i.au, %i.ag
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = xor i32 %i.at, 3
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bb = add i32 %i.aj, -1
  %i.bc = icmp eq i32 %i.au, %i.bb
  %or.cond176 = select i1 %i.as, i1 %i.bc, i1 false
  br i1 %or.cond176, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit: ; preds = %bb.n
  %i.bd = icmp ugt i32 %i.av, 3
  br i1 %i.bd, label %.sink.split.i, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread: ; preds = %bb.n, %bb.i, %bb.m, %bb.k, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit
  %.0.i142 = phi i32 [ %i.av, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ], [ %i.ay, %bb.k ], [ 1, %bb.i ], [ %i.ba, %bb.m ], [ 3, %bb.n ] ; 3 uses
  %not. = xor i1 %i.as, true
  %i.be = sext i1 %not. to i32
  %i.bf = add nsw i32 %.0.i142, %i.be             ; 3 uses
  switch i32 %i.bf, label %bb.p [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
    i32 3, label %bb.o
  ]

bb.o:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread
  %i.bg = add i32 %i.aj, -1
  br label %bb.q

bb.p:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = phi i32 [ %i.bg, %bb.o ], [ %i.bj, %bb.p ]
  %.not22.i = icmp eq i32 %i.bf, 1
  %i.bl = select i1 %.not22.i, i32 %i.ag, i32 %i.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit, %bb.q
  %storemerge = phi i32 [ %i.bl, %bb.q ], [ %i.ah, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ] ; 2 uses
  %.0.i140 = phi i32 [ %.0.i142, %bb.q ], [ %i.av, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ]
  %.sink.i = phi i32 [ %i.bk, %bb.q ], [ %i.au, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.r, align 8, !tbaa !3
  store i32 %i.aj, ptr %i.q, align 4, !tbaa !3
  store i32 %.sink.i, ptr %7, align 8, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit:      ; preds = %.sink.split.i, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread, %bb.h
  %i.bm = phi i32 [ %i.ag, %bb.h ], [ %i.ag, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %storemerge, %.sink.split.i ]
  %i.bn = phi i32 [ %i.ah, %bb.h ], [ %i.ah, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %i.aj, %.sink.split.i ]
  %i.bo = phi i32 [ %i.aj, %bb.h ], [ %i.aj, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %.sink.i, %.sink.split.i ]
  %.0116 = phi i32 [ %i.ar, %bb.h ], [ %.0.i142, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %.0.i140, %.sink.split.i ] ; 2 uses
  %i.bp = load i32, ptr %i.s, align 8, !tbaa !385
  %.not130 = icmp eq i32 %i.bp, 0
  br i1 %.not130, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
  %i.bq = add i32 %i.ap, %i.am
  %i.br = zext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !386
  %i.bt = add i64 %i.bs, %i.br                    ; 3 uses
  store i64 %i.bt, ptr %i.t, align 8, !tbaa !386
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !269
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bt, %i.bw
  %i.by = add i64 %i.bt, %i.v
  %i.bz = select i1 %i.bx, i64 %i.bw, i64 %i.by
  %i.ca = zext i32 %.0116 to i64
  %i.cb = add i64 %i.bz, 3
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %.thread, label %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit

_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit: ; preds = %bb.r
  %.val = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.cd = icmp ne ptr %.val, null
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !387
  %i.cf = icmp eq i32 %i.ce, 3
  %i.cg = or i1 %i.cd, %i.cf
  %i.ch = select i1 %i.cg, i64 3, i64 4
  %i.ci = zext i32 %i.am to i64
  %.not154 = icmp samesign ugt i64 %i.ch, %i.ci
  br i1 %.not154, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit, %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit
  %i.cj = load i32, ptr %1, align 8, !tbaa !383
  %i.ck = sub i32 %.0109166, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load i64, ptr %i.y, align 8, !tbaa !388
  %.not132 = icmp ugt i64 %i.cm, %i.cl
  br i1 %.not132, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cn = zext i32 %i.ap to i64                   ; 7 uses
  %i.co = zext i32 %i.am to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0112163, i64 %i.cn ; 3 uses
  %.not.i = icmp ugt ptr %i.cp, %i.aa
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !225 ; 5 uses
  br i1 %.not.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0112.val = load <2 x i64>, ptr %.0112163, align 1, !tbaa !220
  store <2 x i64> %.0112.val, ptr %i.cq, align 1, !tbaa !220
  %i.cr = icmp ugt i32 %i.ap, 16
  br i1 %i.cr, label %bb.v, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !225 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0112163, i64 16 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 %i.cn
  %.val134 = load <2 x i64>, ptr %i.cu, align 1, !tbaa !220
  store <2 x i64> %.val134, ptr %i.ct, align 1, !tbaa !220
  %i.cw = icmp ult i32 %i.ap, 33
  br i1 %i.cw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.130.i = phi ptr [ %i.cx, %bb.w ], [ %i.da, %bb.x ] ; 3 uses
  %.pn.i = phi ptr [ %i.cu, %bb.w ], [ %i.cz, %bb.x ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !220
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !220
  %i.cy = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val133 = load <2 x i64>, ptr %i.cz, align 1, !tbaa !220
  store <2 x i64> %.val133, ptr %i.cy, align 1, !tbaa !220
  %i.da = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.cv
  br i1 %i.db, label %bb.x, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !389

bb.y:                                             ; preds = %bb.t
  %.not.i137 = icmp ugt ptr %.0112163, %i.aa
  br i1 %.not.i137, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = ptrtoint ptr %.0112163 to i64
  %i.dd = sub i64 %i.ac, %i.dc                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.cq, i64 %i.dd ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0112163, align 1, !tbaa !220
  store <2 x i64> %.val19.i, ptr %i.cq, align 1, !tbaa !220
  %i.df = icmp slt i64 %i.dd, 17
  br i1 %i.df, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.130.i.i = phi ptr [ %i.dg, %bb.aa ], [ %i.dj, %bb.ab ] ; 3 uses
  %.pn.i.i = phi ptr [ %.0112163, %bb.aa ], [ %i.di, %bb.ab ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !220
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !220
  %i.dh = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.di, align 1, !tbaa !220
  store <2 x i64> %.val.i, ptr %i.dh, align 1, !tbaa !220
  %i.dj = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.de
  br i1 %i.dk, label %bb.ab, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !389

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.ab, %bb.z, %bb.y
  %.014.i = phi ptr [ %.0112163, %bb.y ], [ %i.aa, %bb.z ], [ %i.aa, %bb.ab ] ; 8 uses
  %.0.i138 = phi ptr [ %i.cq, %bb.y ], [ %i.de, %bb.z ], [ %i.de, %bb.ab ] ; 6 uses
  %i.dl = icmp ult ptr %.014.i, %i.cp
  br i1 %i.dl, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i208 = ptrtoaddr ptr %.014.i to i64
  %.0.i138207 = ptrtoaddr ptr %.0.i138 to i64
  %.014.i210 = ptrtoint ptr %.014.i to i64
  %i.dm = add i64 %.0112163209, %i.cn
  %i.dn = sub i64 %i.dm, %.014.i210               ; 7 uses
  %min.iters.check = icmp ult i64 %i.dn, 4
  %i.do = sub i64 %.014.i208, %.0.i138207
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond225 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond225, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check211 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check211, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dn, 28
  %n.vec = and i64 %i.dn, -32                     ; 5 uses
  %i.dp = getelementptr i8, ptr %.0.i138, i64 %n.vec
  %i.dq = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i138, i64 %index ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep212, align 1, !tbaa !220
  %wide.load213 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !220
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !220
  store <16 x i8> %wide.load213, ptr %i.ds, align 1, !tbaa !220
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !391

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec216 = and i64 %i.dn, -4                   ; 4 uses
  %i.du = getelementptr i8, ptr %.0.i138, i64 %n.vec216
  %i.dv = getelementptr i8, ptr %.014.i, i64 %n.vec216
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index217 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 3 uses
  %next.gep218.a = getelementptr i8, ptr %.0.i138, i64 %index217
  %next.gep219 = getelementptr i8, ptr %.014.i, i64 %index217
  %wide.load220 = load <4 x i8>, ptr %next.gep219, align 1, !tbaa !220
  store <4 x i8> %wide.load220, ptr %next.gep218.a, align 1, !tbaa !220
  %index.next221 = add nuw i64 %index217, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %i.dn, %n.vec216
  br i1 %cmp.n222, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i138, %iter.check ], [ %i.dp, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ] ; 3 uses
  %i.dx = add i64 %.0112163209, %i.cn
  %.11520.i.ph227 = ptrtoint ptr %.11520.i.ph to i64 ; 2 uses
  %i.dy = sub i64 %i.dx, %.11520.i.ph227
  %i.dz = add i64 %.0112163209, -1
  %i.ea = add i64 %i.dz, %i.cn
  %i.eb = sub i64 %i.ea, %.11520.i.ph227
  %xtraiter = and i64 %i.dy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.ee, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ec, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ed = load i8, ptr %.11520.i.prol, align 1, !tbaa !220
  %i.ee = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ed, ptr %.121.i.prol, align 1, !tbaa !220
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !393

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.ee, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ec, %.lr.ph.i.prol ]
  %i.ef = icmp ult i64 %i.eb, 7
  br i1 %i.ef, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.eh = load i8, ptr %.11520.i, align 1, !tbaa !220
  %i.ei = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.eh, ptr %.121.i, align 1, !tbaa !220
  %i.ej = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !220
  %i.el = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !220
  %i.em = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !220
  %i.eo = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.en, ptr %i.el, align 1, !tbaa !220
  %i.ep = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !220
  %i.er = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !220
  %i.es = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !220
  %i.eu = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.et, ptr %i.er, align 1, !tbaa !220
  %i.ev = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !220
  %i.ex = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !220
  %i.ey = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.ez = load i8, ptr %i.ev, align 1, !tbaa !220
  %i.fa = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !220
  %i.fb = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !220
  %i.fd = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !220
  %exitcond.not.i.7 = icmp eq ptr %i.fb, %i.cp
  br i1 %exitcond.not.i.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i, !llvm.loop !394

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.v, %bb.u
  %i.fe = load ptr, ptr %i.ab, align 8, !tbaa !225
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.cn
  store ptr %i.ff, ptr %i.ab, align 8, !tbaa !225
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !214
  br label %bb.ad

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.x, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.fg = load ptr, ptr %i.ab, align 8, !tbaa !225
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.cn
  store ptr %i.fh, ptr %i.ab, align 8, !tbaa !225
  %i.fi = icmp ugt i32 %i.ap, 65535
  %.pre178 = load ptr, ptr %i.ae, align 8, !tbaa !214 ; 3 uses
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !222
  %i.fj = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.fk = ptrtoint ptr %.pre178 to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.fm, 3
  %i.fo = trunc i64 %i.fn to i32
  store i32 %i.fo, ptr %i.af, align 4, !tbaa !223
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, %bb.ac, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.fp = phi ptr [ %.pre, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread ], [ %.pre178, %bb.ac ], [ %.pre178, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %i.fq = trunc i32 %i.ap to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i16 %i.fq, ptr %i.fr, align 4, !tbaa !215
  store i32 %.0116, ptr %i.fp, align 4, !tbaa !218
  %i.fs = add nsw i64 %i.co, -3                   ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 65535
  br i1 %i.ft, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 2, ptr %i.ad, align 8, !tbaa !222
  %i.fu = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.fv = ptrtoint ptr %i.fp to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  store i32 %i.fz, ptr %i.af, align 4, !tbaa !223
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ga = trunc i64 %i.fs to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 6
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !219
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.gc, ptr %i.ae, align 8, !tbaa !214
  %i.gd = add i32 %i.ap, %i.am
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0112163, i64 %i.ge ; 2 uses
  %i.gg = add i32 %.0109166, 1                    ; 3 uses
  %i.gh = zext i32 %i.gg to i64                   ; 3 uses
  %i.gi = icmp ugt i64 %3, %i.gh
  br i1 %i.gi, label %bb.f, label %.critedge, !llvm.loop !395

.critedge:                                        ; preds = %bb.g, %bb.af
  %.0112.lcssa = phi ptr [ %i.gf, %bb.af ], [ %.0112163, %bb.g ] ; 2 uses
  %.0109.lcssa = phi i32 [ %i.gg, %bb.af ], [ %.0109166, %bb.g ] ; 8 uses
  %.lcssa = phi i64 [ %i.gh, %bb.af ], [ %i.ai, %bb.g ] ; 2 uses
  %i.gj = icmp ne i32 %6, 2
  %.not126 = icmp eq i32 %.0109.lcssa, %i.a
  %or.cond = select i1 %i.gj, i1 true, i1 %.not126
  br i1 %or.cond, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.gk = add i32 %.0109.lcssa, -1                ; 2 uses
  %i.gl = add i32 %i.a, 2                         ; 2 uses
  %.not127 = icmp ult i32 %i.gk, %i.gl
  br i1 %.not127, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = add i32 %.0109.lcssa, -3
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !236
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !3
  %i.gr = add i32 %.0109.lcssa, -2
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !236
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !3
  br label %.critedge.thread.sink.split

bb.ai:                                            ; preds = %bb.ag
  %i.gw = icmp eq i32 %.0109.lcssa, %i.gl
  br i1 %i.gw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load i32, ptr %7, align 8, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !3
  %i.gz = add i32 %.0109.lcssa, -2
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !236
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !3
  br label %.critedge.thread.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hf = load <2 x i32>, ptr %7, align 8, !tbaa !3
  store <2 x i32> %i.hf, ptr %i.he, align 4, !tbaa !3
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %bb.aj, %bb.ak, %bb.ah
  %i.hg = zext i32 %i.gk to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !236
  store i32 %i.hi, ptr %7, align 8, !tbaa !3
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %bb.e, %.critedge
  %.lcssa203 = phi i64 [ %.lcssa, %.critedge ], [ %i.n, %bb.e ], [ %.lcssa, %.critedge.thread.sink.split ]
  %.0109.lcssa202 = phi i32 [ %.0109.lcssa, %.critedge ], [ %i.a, %bb.e ], [ %.0109.lcssa, %.critedge.thread.sink.split ]
  %.0112.lcssa201 = phi ptr [ %.0112.lcssa, %.critedge ], [ %4, %bb.e ], [ %.0112.lcssa, %.critedge.thread.sink.split ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !71
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hl, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.lcssa203
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !239 ; 2 uses
  %.not128 = icmp eq i32 %i.ho, 0
  br i1 %.not128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.thread
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !225
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr readonly align 1 %.0112.lcssa201, i64 %i.hp, i1 false)
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !225
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.az = sub i32 %.0124236, %.sroa.4.0.copyload
  br label %.critedge

bb.m:                                             ; preds = %.thread, %bb.h
  %.2147 = phi i32 [ 0, %bb.h ], [ 1, %.thread ]
  %.3142 = phi i32 [ %.0139232, %bb.h ], [ %.1140, %.thread ] ; 2 uses
  %.1138 = phi i32 [ %.0137, %bb.h ], [ %i.ap, %.thread ] ; 8 uses
  %.2136 = phi i32 [ %.0134, %bb.h ], [ %.0129, %.thread ] ; 4 uses
  %.pn = phi i32 [ %i.am, %bb.h ], [ %i.ay, %.thread ]
  %.1119 = phi i32 [ 0, %bb.h ], [ %.0118237, %.thread ]
  %.3127 = sub i32 %.0124236, %.pn                ; 2 uses
  %i.ba = icmp eq i32 %.1138, 0                   ; 5 uses
  %i.bb = zext i1 %i.ba to i32
  %i.bc = add i32 %.sroa.0.0.copyload, 3          ; 3 uses
  %i.bd = icmp ne i32 %.sroa.0.0.copyload, %i.ai
  %or.cond208.not = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond208.not, label %bb.n, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %.sroa.0.0.copyload, %i.ah
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = select i1 %i.ba, i32 1, i32 2
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %.sroa.0.0.copyload, %i.ag
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = xor i32 %i.bb, 3
  br label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bi = add i32 %i.ai, -1
  %i.bj = icmp eq i32 %.sroa.0.0.copyload, %i.bi
  %or.cond255 = select i1 %i.ba, i1 %i.bj, i1 false
  br i1 %or.cond255, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit: ; preds = %bb.r
  %i.bk = icmp ugt i32 %i.bc, 3
  br i1 %i.bk, label %.sink.split.i, label %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread

_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread: ; preds = %bb.r, %bb.m, %bb.q, %bb.o, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit
  %.0.i184 = phi i32 [ %i.bc, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ], [ %i.bf, %bb.o ], [ 1, %bb.m ], [ %i.bh, %bb.q ], [ 3, %bb.r ] ; 3 uses
  %not. = xor i1 %i.ba, true
  %i.bl = sext i1 %not. to i32
  %i.bm = add nsw i32 %.0.i184, %i.bl             ; 3 uses
  switch i32 %i.bm, label %bb.t [
    i32 0, label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
    i32 3, label %bb.s
  ]

bb.s:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread
  %i.bn = add i32 %i.ai, -1
  br label %bb.u

bb.t:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = phi i32 [ %i.bn, %bb.s ], [ %i.bq, %bb.t ]
  %.not22.i = icmp eq i32 %i.bm, 1
  %i.bs = select i1 %.not22.i, i32 %i.ag, i32 %i.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit, %bb.u
  %storemerge = phi i32 [ %i.bs, %bb.u ], [ %i.ah, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ] ; 2 uses
  %.0.i182 = phi i32 [ %.0.i184, %bb.u ], [ %i.bc, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ]
  %.sink.i = phi i32 [ %i.br, %bb.u ], [ %.sroa.0.0.copyload, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.t, align 4, !tbaa !3
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !3
  store i32 %.sink.i, ptr %7, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit

_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit:      ; preds = %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread, %.sink.split.i
  %i.bt = phi i32 [ %i.ag, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %storemerge, %.sink.split.i ]
  %i.bu = phi i32 [ %i.ah, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %i.ai, %.sink.split.i ]
  %i.bv = phi i32 [ %i.ai, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %.sink.i, %.sink.split.i ]
  %.0.i183 = phi i32 [ %.0.i184, %_ZN11duckdb_zstdL20ZSTD_finalizeOffBaseEjPKjj.exit.thread ], [ %.0.i182, %.sink.split.i ] ; 2 uses
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !385
  %.not164 = icmp eq i32 %i.bw, 0
  br i1 %.not164, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
  %i.bx = add i32 %.2136, %.1138
  %i.by = zext i32 %i.bx to i64
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !386
  %i.ca = add i64 %i.bz, %i.by                    ; 3 uses
  store i64 %i.ca, ptr %i.v, align 8, !tbaa !386
  %i.cb = load i32, ptr %i.w, align 4, !tbaa !269
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  %i.cf = add i64 %i.ca, %.0130
  %i.cg = select i1 %i.ce, i64 %i.cd, i64 %i.cf
  %i.ch = zext i32 %.0.i183 to i64
  %i.ci = add i64 %i.cg, 3
  %i.cj = icmp ult i64 %i.ci, %i.ch
  br i1 %i.cj, label %.thread188, label %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit

_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit: ; preds = %bb.v
  %.val = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.ck = icmp ne ptr %.val, null
  %i.cl = load i32, ptr %i.r, align 4, !tbaa !387
  %i.cm = icmp eq i32 %i.cl, 3
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = select i1 %i.cn, i64 3, i64 4
  %i.cp = zext i32 %.2136 to i64
  %.not212 = icmp samesign ugt i64 %i.co, %i.cp
  br i1 %.not212, label %.thread188, label %bb.w

bb.w:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit, %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit
  %i.cq = load i32, ptr %1, align 8, !tbaa !383
  %i.cr = sub i32 %.0114238, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i64, ptr %i.y, align 8, !tbaa !388
  %.not166 = icmp ugt i64 %i.ct, %i.cs
  br i1 %.not166, label %bb.x, label %.thread188

bb.x:                                             ; preds = %bb.w
  %i.cu = zext i32 %.1138 to i64                  ; 7 uses
  %i.cv = zext i32 %.2136 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0131233, i64 %i.cu ; 3 uses
  %.not.i = icmp ugt ptr %i.cw, %i.aa
  %i.cx = load ptr, ptr %i.ab, align 8, !tbaa !225 ; 5 uses
  br i1 %.not.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0131.val = load <2 x i64>, ptr %.0131233, align 1, !tbaa !220
  store <2 x i64> %.0131.val, ptr %i.cx, align 1, !tbaa !220
  %i.cy = icmp ugt i32 %.1138, 16
  br i1 %i.cy, label %bb.z, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr %i.ab, align 8, !tbaa !225 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0131233, i64 16 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.cu
  %.val170 = load <2 x i64>, ptr %i.db, align 1, !tbaa !220
  store <2 x i64> %.val170, ptr %i.da, align 1, !tbaa !220
  %i.dd = icmp ult i32 %.1138, 33
  br i1 %i.dd, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.130.i = phi ptr [ %i.de, %bb.aa ], [ %i.dh, %bb.ab ] ; 3 uses
  %.pn.i = phi ptr [ %i.db, %bb.aa ], [ %i.dg, %bb.ab ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !220
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !220
  %i.df = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val169 = load <2 x i64>, ptr %i.dg, align 1, !tbaa !220
  store <2 x i64> %.val169, ptr %i.df, align 1, !tbaa !220
  %i.dh = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.dc
  br i1 %i.di, label %bb.ab, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !389

bb.ac:                                            ; preds = %bb.x
  %.not.i173 = icmp ugt ptr %.0131233, %i.aa
  br i1 %.not.i173, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = ptrtoint ptr %.0131233 to i64
  %i.dk = sub i64 %i.ac, %i.dj                    ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.cx, i64 %i.dk ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0131233, align 1, !tbaa !220
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !220
  %i.dm = icmp slt i64 %i.dk, 17
  br i1 %i.dm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.130.i.i = phi ptr [ %i.dn, %bb.ae ], [ %i.dq, %bb.af ] ; 3 uses
  %.pn.i.i = phi ptr [ %.0131233, %bb.ae ], [ %i.dp, %bb.af ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !220
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !220
  %i.do = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dp, align 1, !tbaa !220
  store <2 x i64> %.val.i, ptr %i.do, align 1, !tbaa !220
  %i.dq = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dl
  br i1 %i.dr, label %bb.af, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !389

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.af, %bb.ad, %bb.ac
  %.014.i = phi ptr [ %.0131233, %bb.ac ], [ %i.aa, %bb.ad ], [ %i.aa, %bb.af ] ; 8 uses
  %.0.i174 = phi ptr [ %i.cx, %bb.ac ], [ %i.dl, %bb.ad ], [ %i.dl, %bb.af ] ; 6 uses
  %i.ds = icmp ult ptr %.014.i, %i.cw
  br i1 %i.ds, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i298 = ptrtoaddr ptr %.014.i to i64
  %.0.i174297 = ptrtoaddr ptr %.0.i174 to i64
  %.014.i300 = ptrtoint ptr %.014.i to i64
  %i.dt = add i64 %.0131233299, %i.cu
  %i.du = sub i64 %i.dt, %.014.i300               ; 7 uses
  %min.iters.check = icmp ult i64 %i.du, 4
  %i.dv = sub i64 %.014.i298, %.0.i174297
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond315 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond315, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check301 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.du, 28
  %n.vec = and i64 %i.du, -32                     ; 5 uses
  %i.dw = getelementptr i8, ptr %.0.i174, i64 %n.vec
  %i.dx = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i174, i64 %index ; 2 uses
  %next.gep302 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep302, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep302, align 1, !tbaa !220
  %wide.load303 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !220
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !220
  store <16 x i8> %wide.load303, ptr %i.dz, align 1, !tbaa !220
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !391

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec306 = and i64 %i.du, -4                   ; 4 uses
  %i.eb = getelementptr i8, ptr %.0.i174, i64 %n.vec306
  %i.ec = getelementptr i8, ptr %.014.i, i64 %n.vec306
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index307 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next311, %vec.epilog.vector.body ] ; 3 uses
  %next.gep308.a = getelementptr i8, ptr %.0.i174, i64 %index307
  %next.gep309 = getelementptr i8, ptr %.014.i, i64 %index307
  %wide.load310 = load <4 x i8>, ptr %next.gep309, align 1, !tbaa !220
  store <4 x i8> %wide.load310, ptr %next.gep308.a, align 1, !tbaa !220
  %index.next311 = add nuw i64 %index307, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next311, %n.vec306
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !398

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n312 = icmp eq i64 %i.du, %n.vec306
  br i1 %cmp.n312, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i174, %iter.check ], [ %i.dw, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 3 uses
  %i.ee = add i64 %.0131233299, %i.cu
  %.11520.i.ph324 = ptrtoint ptr %.11520.i.ph to i64 ; 2 uses
  %i.ef = sub i64 %i.ee, %.11520.i.ph324
  %i.eg = add i64 %.0131233299, -1
  %i.eh = add i64 %i.eg, %i.cu
  %i.ei = sub i64 %i.eh, %.11520.i.ph324
  %xtraiter = and i64 %i.ef, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.el, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ej, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.11520.i.prol, align 1, !tbaa !220
  %i.el = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ek, ptr %.121.i.prol, align 1, !tbaa !220
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !399

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.el, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ej, %.lr.ph.i.prol ]
  %i.em = icmp ult i64 %i.ei, 7
  br i1 %i.em, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.eo = load i8, ptr %.11520.i, align 1, !tbaa !220
  %i.ep = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.eo, ptr %.121.i, align 1, !tbaa !220
  %i.eq = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.er = load i8, ptr %i.en, align 1, !tbaa !220
  %i.es = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !220
  %i.et = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !220
  %i.ev = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !220
  %i.ew = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !220
  %i.ey = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !220
  %i.ez = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.fa = load i8, ptr %i.ew, align 1, !tbaa !220
  %i.fb = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !220
  %i.fc = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !220
  %i.fe = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !220
  %i.ff = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !220
  %i.fh = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !220
  %i.fi = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !220
  %i.fk = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !220
  %exitcond.not.i.7 = icmp eq ptr %i.fi, %i.cw
  br i1 %exitcond.not.i.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i, !llvm.loop !400

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.z, %bb.y
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !225
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.cu
  store ptr %i.fm, ptr %i.ab, align 8, !tbaa !225
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !214
  br label %bb.ah

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.ab, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.fn = load ptr, ptr %i.ab, align 8, !tbaa !225
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.cu
  store ptr %i.fo, ptr %i.ab, align 8, !tbaa !225
  %i.fp = icmp ugt i32 %.1138, 65535
  %.pre268 = load ptr, ptr %i.ae, align 8, !tbaa !214 ; 3 uses
  br i1 %i.fp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !222
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.fr = ptrtoint ptr %.pre268 to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 3
  %i.fv = trunc i64 %i.fu to i32
  store i32 %i.fv, ptr %i.af, align 4, !tbaa !223
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, %bb.ag, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.fw = phi ptr [ %.pre, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread ], [ %.pre268, %bb.ag ], [ %.pre268, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %i.fx = trunc i32 %.1138 to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.fx, ptr %i.fy, align 4, !tbaa !215
  store i32 %.0.i183, ptr %i.fw, align 4, !tbaa !218
  %i.fz = add nsw i64 %i.cv, -3                   ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, 65535
  br i1 %i.ga, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.ad, align 8, !tbaa !222
  %i.gb = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.gc = ptrtoint ptr %i.fw to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = lshr exact i64 %i.ge, 3
  %i.gg = trunc i64 %i.gf to i32
  store i32 %i.gg, ptr %i.af, align 4, !tbaa !223
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gh = trunc i64 %i.fz to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !219
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.gj, ptr %i.ae, align 8, !tbaa !214
  %i.gk = add i32 %.2136, %.1138
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %.0131233, i64 %i.gl ; 2 uses
  %i.gn = zext i1 %.not160.not to i32
  %spec.select = add i32 %.0114238, %i.gn         ; 2 uses
  %.not158 = icmp eq i32 %.3127, 0
  br i1 %.not158, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.f, %bb.aj, %bb.i, %bb.e, %bb.l
  %.0131222 = phi ptr [ %.0131233, %bb.l ], [ %4, %bb.e ], [ %.0131233, %bb.f ], [ %i.gm, %bb.aj ], [ %.0131233, %bb.i ] ; 3 uses
  %.0114217 = phi i32 [ %.0114238, %bb.l ], [ %i.a, %bb.e ], [ %.0114238, %bb.f ], [ %spec.select, %bb.aj ], [ %.0114238, %bb.i ]
  %.5144 = phi i32 [ %i.az, %bb.l ], [ 0, %bb.e ], [ %.0139232, %bb.f ], [ %.3142, %bb.aj ], [ %.0139232, %bb.i ]
  %.5 = phi i32 [ %.sroa.4.0.copyload, %bb.l ], [ 0, %bb.e ], [ %.0124236, %bb.f ], [ 0, %bb.aj ], [ %.0124236, %bb.i ]
  store i32 %.0114217, ptr %1, align 8, !tbaa !383
  store i32 %.5, ptr %i.b, align 4, !tbaa !396
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !71
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gq, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %i.gr = zext i32 %.5144 to i64                  ; 3 uses
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.f, i64 %i.gs ; 2 uses
  %.not168 = icmp eq ptr %.0131222, %i.gt
  br i1 %.not168, label %.thread188, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %.0131222 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = and i64 %i.gw, 4294967295               ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !225
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr readonly align 1 %.0131222, i64 %i.gx, i1 false)
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !225
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gx
  store ptr %i.hb, ptr %i.gy, align 8, !tbaa !225
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !386
  %i.he = add i64 %i.hd, %i.gx
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !386
  br label %.thread188

.thread188:                                       ; preds = %bb.w, %bb.v, %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit, %.critedge, %bb.ak
  %.4 = phi i64 [ %i.gr, %.critedge ], [ %i.gr, %bb.ak ], [ -107, %_ZN11duckdb_zstdL21ZSTD_validateSequenceEjjjmjmi.exit ], [ -107, %bb.v ], [ -107, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd22ZSTD_compressSequencesEPNS_11ZSTD_CCtx_sEPvmPKNS_13ZSTD_SequenceEmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %"struct.duckdb_zstd::ZSTD_sequencePosition", align 8 ; 7 uses
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_CCtx_init_compressStream2EPNS_11ZSTD_CCtx_sENS_17ZSTD_EndDirectiveEm(ptr noundef %0, i32 noundef 2, i64 noundef %6) ; 2 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = load i32, ptr %i.d, align 8, !tbaa !208
  %i.f = tail call fastcc noundef i64 @_ZN11duckdb_zstdL21ZSTD_writeFrameHeaderEPvmPKNS_18ZSTD_CCtx_params_sEmj(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.c, i64 noundef %6, i32 noundef %i.e) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = sub i64 %2, %i.f                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !270
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp ne i64 %6, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.n = tail call noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef nonnull %i.m, ptr noundef %5, i64 noundef %6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !401  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.p, 0
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE, ptr null
  %switch.selectcmp4.i.i = icmp eq i32 %i.p, 1
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr @_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE, ptr %switch.select.i.i
  %i.q = icmp eq i64 %6, 0
  br i1 %i.q, label %bb.e, label %.lr.ph.i

end_hunk_1
