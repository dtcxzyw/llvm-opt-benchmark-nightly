inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb1EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ad, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod301 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.016.i.i.i.epil = phi i64 [ %i.r, %.lr.ph.i.i.i.epil ], [ %.016.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.016.i.i.i.epil
  store i8 0, ptr %i.q, align 1, !tbaa !46
  %i.r = add nuw nsw i64 %.016.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !299

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.c
  %.not.i.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.not.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.016.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ad, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.016.i.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !46
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.016.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !46
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 1, !tbaa !46
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.016.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 0, ptr %i.ac, align 1, !tbaa !46
  %i.ad = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !300

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = and i64 %i.f, 7                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = trunc nuw nsw i64 %i.ae to i8
  %i.ah = shl nsw i8 -1, %i.ag
  %i.ai = select i1 %i.af, i8 0, i8 %i.ah
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.m
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !46
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskIhE14EnsureWritableEv.exit.i.i.i, %._crit_edge.i.i.i, %bb.d
  %i.al = icmp eq i64 %3, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit
  %i.am = load i8, ptr %0, align 8, !tbaa !301
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %bb.f, label %.preheader109

.preheader109:                                    ; preds = %bb.e
  %.not135 = icmp eq i64 %2, 0
  br i1 %.not135, label %.loopexit110, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5clearEv.exit
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !215 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !46
  %i.au = zext i8 %i.at to i32
  %i.av = trunc i64 %i.ap to i32
  %i.aw = and i32 %i.av, 7
  %i.ax = xor i32 %i.au, -1
  %i.ay = lshr i32 %i.ax, %i.aw
  %i.az = and i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !200
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !200
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = and i8 %i.bf, 7
  %i.bh = shl nuw i8 1, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.be ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = or i8 %i.bh, %i.bj
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !92
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !302
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !92
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %2, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !92
  br label %.loopexit110

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.070118 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.070118 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !92, !noalias !303 ; 3 uses
  %i.br = lshr i64 %i.bq, 3                       ; 2 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !215, !noalias !303 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !46, !noalias !303
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = trunc i64 %i.bq to i32
  %i.bx = and i32 %i.bw, 7                        ; 2 uses
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = and i32 %i.by, %i.bv
  %.not.i = icmp eq i32 %i.bz, 0                  ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !noalias !303 ; 3 uses
  %i.cb = lshr i64 %i.ca, 3                       ; 2 uses
  %.sink3.i = select i1 %.not.i, i64 %i.cb, i64 %i.br ; 2 uses
  %.sink.in.i = select i1 %.not.i, i64 %i.ca, i64 %i.bq
  %.sink.i = and i64 %.sink.in.i, 7               ; 2 uses
  %i.cc = and i64 %i.ca, 7
  %i.cd = icmp eq i64 %.sink3.i, %i.cb
  %i.ce = icmp eq i64 %.sink.i, %i.cc
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = xor i32 %i.bv, -1
  %i.ch = lshr i32 %i.cg, %i.bx
  %i.ci = and i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !200
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !200
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = trunc i64 %i.cm to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = shl nuw i8 1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cn ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !46
  %i.ct = or i8 %i.cq, %i.cs
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !46
  %i.cu = load i64, ptr %i.bp, align 8, !tbaa !92
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !302
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  store i64 0, ptr %i.cw, align 8, !tbaa !92
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !92
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.ao, align 8, !tbaa !302
  %.idx.i.i.i = shl i64 %.sink3.i, 7
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i
  %i.cz = getelementptr [16 x i8], ptr %i.cy, i64 %.sink.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !306
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !306
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dd = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %2
  br i1 %exitcond.not, label %.loopexit110, label %bb.g, !llvm.loop !307

.loopexit110:                                     ; preds = %bb.j, %.preheader109, %bb.f
  %i.de = load i64, ptr %i.d, align 8, !tbaa !200
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit110
  %i.dg = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %.not100 = icmp eq ptr %i.dg, null
  %.not139 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not100, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph: ; preds = %.preheader101
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !84
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.preheader:                                       ; preds = %bb.k
  br i1 %.not139, label %.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !84 ; 2 uses
  %min.iters.check225 = icmp ult i64 %2, 16
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph134
  %i.dl = add i64 %2, -1                          ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = icmp eq i64 %i.dm, 4294967295
  %i.do = icmp ugt i64 %i.dl, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %scalar.ph224.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.scevcheck
  %n.vec227 = and i64 %2, 8589934584              ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next231, %vector.body228 ] ; 2 uses
  %vec.ind230 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph226 ], [ %vec.ind.next232, %vector.body228 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind230, splat (i32 4)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index229 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %vec.ind230, ptr %i.dq, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.dr, align 4, !tbaa !3
  %index.next231 = add nuw i64 %index229, 8       ; 2 uses
  %vec.ind.next232 = add <4 x i32> %vec.ind230, splat (i32 8)
  %i.ds = icmp eq i64 %index.next231, %n.vec227
  br i1 %i.ds, label %middle.block233, label %vector.body228, !llvm.loop !308

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %2, %n.vec227
  br i1 %cmp.n234, label %.loopexit, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.scevcheck, %.lr.ph134, %middle.block233
  %indvars.iv155.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph134 ], [ %n.vec227, %middle.block233 ]
  br label %scalar.ph224

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph ], [ %indvars.iv.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dv
  %4 = trunc nuw i64 %indvars.iv to i32
  store i32 %4, ptr %i.dw, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.dx = icmp ugt i64 %2, %5
  br i1 %i.dx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %.loopexit, !llvm.loop !309

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %scalar.ph224 ], [ %indvars.iv155.ph, %scalar.ph224.preheader ] ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv155
  %7 = trunc nuw i64 %indvars.iv155 to i32
  store i32 %7, ptr %6, align 4, !tbaa !3
  %indvars.iv.next156 = add i64 %indvars.iv155, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next156, 4294967295
  %i.dy = icmp ugt i64 %2, %8
  br i1 %i.dy, label %scalar.ph224, label %.loopexit, !llvm.loop !310

bb.l:                                             ; preds = %.loopexit110
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !215, !noalias !311 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !46, !noalias !311
  %i.eb = and i8 %i.ea, 1
  %.not.i78 = icmp eq i8 %i.eb, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !219, !noalias !60 ; 2 uses
  %i.ec = lshr i64 %.pre, 3                       ; 12 uses
  %i.ed = and i64 %.pre, 7                        ; 12 uses
  br i1 %.not.i78, label %._crit_edge30.i.i.outer, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

._crit_edge30.i.i.outer:                          ; preds = %bb.l, %.thread22.sink.split.i.i
  %.ph274 = phi i64 [ 0, %.thread22.sink.split.i.i ], [ 1, %bb.l ] ; 2 uses
  %.ph275 = phi i64 [ %i.fp, %.thread22.sink.split.i.i ], [ 0, %bb.l ] ; 6 uses
  br label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %._crit_edge30.i.i.outer, %._crit_edge.i.i
  %.lcssa213.i = phi i64 [ %.lcssa212.i, %._crit_edge.i.i ], [ %.ph274, %._crit_edge30.i.i.outer ] ; 3 uses
  %i.ee = phi i64 [ %i.ed, %._crit_edge.i.i ], [ %.ph274, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.ef = phi i64 [ %i.ec, %._crit_edge.i.i ], [ %.ph275, %._crit_edge30.i.i.outer ] ; 6 uses
  %i.eg = icmp ult i64 %i.ef, %i.ec
  br i1 %i.eg, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge30.i.i
  %i.eh = icmp eq i64 %i.ef, %i.ec
  %i.ei = icmp samesign ult i64 %i.ee, %i.ed
  %or.cond.i.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.i.i, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i: ; preds = %bb.m, %._crit_edge30.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !46, !noalias !311 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = icmp eq i64 %i.ef, %i.ec                ; 2 uses
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  br i1 %i.em, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, label %.thread22.sink.split.i.i

bb.o:                                             ; preds = %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i.i
  %i.en = select i1 %i.em, i64 %i.ed, i64 8       ; 8 uses
  %.not27.i.i = icmp samesign ult i64 %i.ee, %i.en
  br i1 %.not27.i.i, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o
  %i.eo = zext i8 %i.ek to i32                    ; 3 uses
  %i.ep = trunc nuw nsw i64 %i.ee to i32
  %i.eq = shl nuw nsw i32 1, %i.ep
  %i.er = and i32 %i.eq, %i.eo
  %.not24.i3.i = icmp eq i32 %i.er, 0
  br i1 %.not24.i3.i, label %.lr.ph.i.preheader, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.es = add nuw nsw i64 %i.ee, 1                ; 5 uses
  %exitcond.not.i.i201 = icmp eq i64 %i.es, %i.en
  br i1 %exitcond.not.i.i201, label %._crit_edge.i.i, label %.lr.ph.i.i.lr.ph, !llvm.loop !223

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  %i.et = xor i64 %i.ee, -1
  %i.eu = add nsw i64 %i.en, %i.et                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph, !llvm.loop !223

vector.ph:                                        ; preds = %.lr.ph.i.i.lr.ph
  %n.vec = and i64 %i.eu, -16                     ; 3 uses
  %i.ev = or disjoint i64 %i.es, %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ew = trunc nuw nsw i64 %i.es to i32
  %broadcast.splatinsert203 = insertelement <16 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat204 = shufflevector <16 x i32> %broadcast.splatinsert203, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i32> %broadcast.splat204, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ex = and <16 x i32> %vec.ind, splat (i32 255)
  %i.ey = shl nuw <16 x i32> splat (i32 1), %i.ex
  %i.ez = and <16 x i32> %i.ey, %broadcast.splat
  %.fr = freeze <16 x i32> %i.ez
  %i.fa = icmp ne <16 x i32> %.fr, zeroinitializer ; 2 uses
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %.not236 = icmp eq i16 %i.fb, 0
  br i1 %.not236, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !223

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.lr.ph, %middle.block
  %.ph271 = phi i64 [ %i.es, %.lr.ph.i.i.lr.ph ], [ %i.ev, %middle.block ]
  br label %.lr.ph.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.fd = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fa, i1 false)
  %i.fe = add i64 %index, %i.fd
  %i.ff = add i64 %i.es, %i.fe
  br label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i
  %i.fg = phi i64 [ %i.fl, %.lr.ph.i ], [ %.ph271, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 255
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = and i32 %i.fj, %i.eo
  %.not24.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not24.i.i, label %.lr.ph.i, label %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit, !llvm.loop !223

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.fl = add nsw i64 %i.fg, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fl, %i.en
  br i1 %exitcond.not.i.i, label %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !315

.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge:      ; preds = %.lr.ph.i, %middle.block
  br label %._crit_edge.i.i, !llvm.loop !223

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge, %bb.o
  %.lcssa212.i = phi i64 [ %.lcssa213.i, %bb.o ], [ %i.en, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.en, %.lr.ph.i.preheader ]
  %i.fm = phi i64 [ %i.ee, %bb.o ], [ %i.en, %.lr.ph.i.._crit_edge.i.i.loopexit_crit_edge ], [ %i.en, %.lr.ph.i.preheader ]
  %i.fn = icmp ne i64 %i.ef, %i.ec
  %i.fo = icmp ne i64 %i.fm, %i.ed
  %.not3.i.i.i = or i1 %i.fn, %i.fo
  br i1 %.not3.i.i.i, label %.thread22.sink.split.i.i, label %._crit_edge30.i.i

.thread22.sink.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.n
  %i.fp = add i64 %i.ef, 1
  br label %._crit_edge30.i.i.outer

_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit: ; preds = %bb.m, %.lr.ph.i.preheader.i, %bb.n, %.lr.ph.i.i, %vector.early.exit, %bb.l
  %.sroa.583.1 = phi i64 [ %.ph275, %vector.early.exit ], [ 0, %bb.l ], [ %.ph275, %.lr.ph.i.i ], [ %.ph275, %bb.n ], [ %.ph275, %.lr.ph.i.preheader.i ], [ %.ph275, %bb.m ] ; 2 uses
  %.sroa.14.1 = phi i64 [ %i.ff, %vector.early.exit ], [ 0, %bb.l ], [ %i.fg, %.lr.ph.i.i ], [ %.lcssa213.i, %.lr.ph.i.preheader.i ], [ %.lcssa213.i, %bb.m ], [ %i.ed, %bb.n ] ; 2 uses
  %i.fq = icmp ne i64 %.sroa.583.1, %i.ec
  %i.fr = icmp ne i64 %.sroa.14.1, %i.ed
  %.not3.i124 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %.not3.i124, label %._crit_edge30.i.lr.ph, label %._crit_edge

._crit_edge30.i.lr.ph:                            ; preds = %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !302
  br label %._crit_edge30.i

._crit_edge:                                      ; preds = %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit, %_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE5beginEv.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fw = load ptr, ptr %1, align 8, !tbaa !84
  %.not = icmp eq ptr %i.fw, null
  %.not137 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not, label %.preheader103, label %.preheader105

.preheader105:                                    ; preds = %._crit_edge
  br i1 %.not137, label %.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader105
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.s

.preheader103:                                    ; preds = %._crit_edge
  br i1 %.not137, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader103
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.t

._crit_edge30.i:                                  ; preds = %._crit_edge30.i.lr.ph, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit
  %.074127 = phi i64 [ 0, %._crit_edge30.i.lr.ph ], [ %i.gd, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.14.0126 = phi i64 [ %.sroa.14.1, %._crit_edge30.i.lr.ph ], [ %.sroa.14.7, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.sroa.583.0125 = phi i64 [ %.sroa.583.1, %._crit_edge30.i.lr.ph ], [ %.ph245, %_ZN6duckdb23fixed_size_map_iteratorINS_12list_entry_tELb0EEppEv.exit ] ; 2 uses
  %.idx.i.i.i79 = shl i64 %.sroa.583.0125, 7
  %i.fz = getelementptr i8, ptr %i.ft, i64 %.idx.i.i.i79
  %i.ga = getelementptr [16 x i8], ptr %i.fz, i64 %.sroa.14.0126 ; 2 uses
  store i64 %.074127, ptr %i.ga, align 8, !tbaa !270
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !306
  %i.gd = add i64 %i.gc, %.074127
  %i.ge = add i64 %.sroa.14.0126, 1               ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 8                    ; 2 uses
  %i.gg = zext i1 %i.gf to i64
  %.sroa.583.2 = add i64 %.sroa.583.0125, %i.gg
  %.sroa.14.2 = select i1 %i.gf, i64 0, i64 %i.ge
  br label %.thread22.i.outer

.thread22.i.outer:                                ; preds = %.thread22.sink.split.i, %._crit_edge30.i
  %.ph244 = phi i64 [ 0, %.thread22.sink.split.i ], [ %.sroa.14.2, %._crit_edge30.i ] ; 2 uses
  %.ph245 = phi i64 [ %i.hs, %.thread22.sink.split.i ], [ %.sroa.583.2, %._crit_edge30.i ] ; 3 uses
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread22.i.outer, %._crit_edge.i
  %.sroa.14.3 = phi i64 [ %.sroa.14.4, %._crit_edge.i ], [ %.ph244, %.thread22.i.outer ] ; 3 uses
  %i.gh = phi i64 [ %i.ed, %._crit_edge.i ], [ %.ph244, %.thread22.i.outer ] ; 6 uses
  %i.gi = phi i64 [ %i.ec, %._crit_edge.i ], [ %.ph245, %.thread22.i.outer ] ; 6 uses
  %i.gj = icmp ult i64 %i.gi, %i.ec
  br i1 %i.gj, label %_ZN6duckdbltERKNS_23fixed_size_map_iteratorINS_12list_entry_tELb0EEES4_.exit.thread.i, label %bb.p
end_hunk_0
begin_hunk_1_@_ZN6duckdb20PartitionedTupleData17BuildPartitionSelILb0EEEvRNS_31PartitionedTupleDataAppendStateERKNS_15SelectionVectorEmm:bb.a
  %.lcssa.sink = phi ptr [ %i.gk, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112 ], [ %i.ey, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101 ], [ %i.cl, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i90 ], [ %i.al, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.go, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112 ], [ %i.fc, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101 ], [ %i.cp, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i90 ], [ %i.ap, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa.sink) #30
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit: ; preds = %bb.e, %bb.d, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ao, %.loopexit.i.i ], [ %i.u, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 0, ptr %.1.i.i, align 8, !tbaa !92
  %.sroa.4124.0..1.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  store i64 %2, ptr %.sroa.4124.0..1.i.i.sroa_idx, align 8, !tbaa !92
  br label %.loopexit139

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %.070157 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.p ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.070157
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !228
  %.not.not.i.i = icmp eq i64 %i.ar, 0
  %i.as = load i64, ptr %i.aq, align 8            ; 13 uses
  br i1 %.not.not.i.i, label %.preheader251, label %bb.i

.preheader251:                                    ; preds = %bb.g, %bb.h
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.h ], [ %i.d, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !269 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit135.loopexit, label %bb.h

bb.h:                                             ; preds = %.preheader251
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !92
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit, label %.preheader251, !llvm.loop !328

bb.i:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !323 ; 4 uses
  %i.ax = urem i64 %i.as, %i.aw                   ; 5 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !324 ; 4 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i77, label %.loopexit.i.i89, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !269 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !325
  %i.bf = icmp eq i64 %i.as, %i.be
  %i.bg = load i64, ptr %i.bc, align 8
  %i.bh = icmp eq i64 %i.as, %i.bg
  %i.bi = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %i.bi, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit, label %.lr.ph.i.i.i.i78

bb.k:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bk = icmp eq i64 %i.as, %i.bq
  %i.bl = load i64, ptr %i.bj, align 8
  %i.bm = icmp eq i64 %i.as, %i.bl
  %i.bn = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %i.bn, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit, label %.lr.ph.i.i.i.i78, !llvm.loop !327

.lr.ph.i.i.i.i78:                                 ; preds = %bb.j, %bb.k
  %.020.i.i.i.i79 = phi ptr [ %i.bo, %bb.k ], [ %i.bb, %bb.j ]
  %i.bo = load ptr, ptr %.020.i.i.i.i79, align 8, !tbaa !269 ; 5 uses
  %.not18.i.i.i.i80 = icmp eq ptr %i.bo, null
  br i1 %.not18.i.i.i.i80, label %.loopexit135, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !325 ; 2 uses
  %i.br = urem i64 %i.bq, %i.aw
  %.not19.i.i.i.i81 = icmp eq i64 %i.br, %i.ax
  br i1 %.not19.i.i.i.i81, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i82, !llvm.loop !327

..loopexit_crit_edge21.i.i.i.i82:                 ; preds = %bb.l
  br label %.loopexit135, !llvm.loop !327

.loopexit135.loopexit:                            ; preds = %.preheader251
  %.pre = load i64, ptr %i.h, align 8, !tbaa !323 ; 2 uses
  %.pre204 = load ptr, ptr %i.a, align 8, !tbaa !322
  %.pre205 = urem i64 %i.as, %.pre                ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre204, i64 %.pre205
  %.pre206 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !324
  br label %.loopexit135

.loopexit135:                                     ; preds = %.lr.ph.i.i.i.i78, %.loopexit135.loopexit, %..loopexit_crit_edge21.i.i.i.i82
  %i.bs = phi ptr [ %i.ba, %..loopexit_crit_edge21.i.i.i.i82 ], [ %.pre206, %.loopexit135.loopexit ], [ %i.ba, %.lr.ph.i.i.i.i78 ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ax, %..loopexit_crit_edge21.i.i.i.i82 ], [ %.pre205, %.loopexit135.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i78 ] ; 4 uses
  %i.bt = phi i64 [ %i.aw, %..loopexit_crit_edge21.i.i.i.i82 ], [ %.pre, %.loopexit135.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i78 ]
  %.not.i.i.i.i83 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i83, label %.loopexit.i.i89, label %bb.m

bb.m:                                             ; preds = %.loopexit135
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !269 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !325
  %i.by = icmp eq i64 %i.as, %i.bx
  %i.bz = load i64, ptr %i.bv, align 8
  %i.ca = icmp eq i64 %i.as, %i.bz
  %i.cb = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %i.cb, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit93, label %.lr.ph.i.i.i.i84

bb.n:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cd = icmp eq i64 %i.as, %i.cj
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = icmp eq i64 %i.as, %i.ce
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit93, label %.lr.ph.i.i.i.i84, !llvm.loop !327

.lr.ph.i.i.i.i84:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i85 = phi ptr [ %i.ch, %bb.n ], [ %i.bu, %bb.m ]
  %i.ch = load ptr, ptr %.020.i.i.i.i85, align 8, !tbaa !269 ; 5 uses
  %.not18.i.i.i.i86 = icmp eq ptr %i.ch, null
  br i1 %.not18.i.i.i.i86, label %.loopexit.i.i89, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !325 ; 2 uses
  %i.ck = urem i64 %i.cj, %i.bt
  %.not19.i.i.i.i87 = icmp eq i64 %i.ck, %.pre-phi
  br i1 %.not19.i.i.i.i87, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i88, !llvm.loop !327

..loopexit_crit_edge21.i.i.i.i88:                 ; preds = %bb.o
  br label %.loopexit.i.i89, !llvm.loop !327

.loopexit.i.i89:                                  ; preds = %.lr.ph.i.i.i.i84, %bb.i, %..loopexit_crit_edge21.i.i.i.i88, %.loopexit135
  %.pre-phi225 = phi i64 [ %i.ax, %bb.i ], [ %.pre-phi, %.loopexit135 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i88 ], [ %.pre-phi, %.lr.ph.i.i.i.i84 ]
  %i.cl = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !269
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.as, ptr %i.cm, align 8, !tbaa !237
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.pre-phi225, i64 noundef %i.as, ptr noundef nonnull %i.cl, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit93 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i90

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i90: ; preds = %.loopexit.i.i89
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit93: ; preds = %bb.n, %bb.m, %.loopexit.i.i89
  %.pn.i.i91 = phi ptr [ %i.co, %.loopexit.i.i89 ], [ %i.bu, %bb.m ], [ %i.ch, %bb.n ] ; 2 uses
  %.1.i.i92 = getelementptr inbounds nuw i8, ptr %.pn.i.i91, i64 16
  store i64 0, ptr %.1.i.i92, align 8, !tbaa !92
  %.sroa.4.0..1.i.i92.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn.i.i91, i64 24
  store i64 1, ptr %.sroa.4.0..1.i.i92.sroa_idx, align 8, !tbaa !92
  br label %bb.p

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit: ; preds = %bb.k, %bb.h, %bb.j
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.h ], [ %i.bb, %bb.j ], [ %i.bo, %bb.k ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !306
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !306
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEE4findERS5_.exit, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit93
  %i.ct = add nuw i64 %.070157, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %2
  br i1 %exitcond.not, label %.loopexit139, label %bb.g, !llvm.loop !329

.loopexit139:                                     ; preds = %bb.p, %.preheader138, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !228
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.q, label %.preheader134

.preheader134:                                    ; preds = %.loopexit139
  %.sroa.0116.0158 = load ptr, ptr %i.d, align 8, !tbaa !269 ; 2 uses
  %.not159 = icmp eq ptr %.sroa.0116.0158, null
  br i1 %.not159, label %._crit_edge, label %.lr.ph162

bb.q:                                             ; preds = %.loopexit139
  %i.cx = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %.not127 = icmp eq ptr %i.cx, null
  %.not174 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not127, label %.preheader, label %.preheader128

.preheader128:                                    ; preds = %bb.q
  br i1 %.not174, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph: ; preds = %.preheader128
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !84
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

.preheader:                                       ; preds = %bb.q
  br i1 %.not174, label %.loopexit, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84 ; 2 uses
  %min.iters.check = icmp ult i64 %2, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph169
  %i.dc = add i64 %2, -1                          ; 2 uses
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = icmp eq i64 %i.dd, 4294967295
  %i.df = icmp ugt i64 %i.dc, 4294967295
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %2, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %vec.ind, ptr %i.dh, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.di, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph169, %middle.block
  %indvars.iv200.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph169 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.lr.ph ], [ %indvars.iv.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dm
  %4 = trunc nuw i64 %indvars.iv to i32
  store i32 %4, ptr %i.dn, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.do = icmp ugt i64 %2, %5
  br i1 %i.do, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %.loopexit, !llvm.loop !331

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph ], [ %indvars.iv200.ph, %scalar.ph.preheader ] ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv200
  %7 = trunc nuw i64 %indvars.iv200 to i32
  store i32 %7, ptr %6, align 4, !tbaa !3
  %indvars.iv.next201 = add i64 %indvars.iv200, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next201, 4294967295
  %i.dp = icmp ugt i64 %2, %8
  br i1 %i.dp, label %scalar.ph, label %.loopexit, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph162, %.preheader134
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !84
  %.not126 = icmp eq ptr %i.ds, null
  %.not172 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not126, label %.preheader130, label %.preheader132

.preheader132:                                    ; preds = %._crit_edge
  br i1 %.not172, label %.loopexit, label %.lr.ph164

.preheader130:                                    ; preds = %._crit_edge
  br i1 %.not172, label %.loopexit, label %.lr.ph166

.lr.ph162:                                        ; preds = %.preheader134, %.lr.ph162
  %.sroa.0116.0161 = phi ptr [ %.sroa.0116.0, %.lr.ph162 ], [ %.sroa.0116.0158, %.preheader134 ] ; 3 uses
  %.074160 = phi i64 [ %i.dw, %.lr.ph162 ], [ 0, %.preheader134 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0116.0161, i64 16
  store i64 %.074160, ptr %i.dt, align 8, !tbaa !270
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0116.0161, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !306
  %i.dw = add i64 %i.dv, %.074160
  %.sroa.0116.0 = load ptr, ptr %.sroa.0116.0161, align 8, !tbaa !269 ; 2 uses
  %.not = icmp eq ptr %.sroa.0116.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph162, !llvm.loop !333

.lr.ph164:                                        ; preds = %.preheader132, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104
  %.072163 = phi i64 [ %i.fl, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104 ], [ 0, %.preheader132 ] ; 3 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !84
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.072163
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3  ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072163
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !92 ; 7 uses
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !323 ; 2 uses
  %i.ed = urem i64 %i.eb, %i.ec                   ; 3 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !324 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i94, label %.loopexit.i.i100, label %bb.r

bb.r:                                             ; preds = %.lr.ph164
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !269 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !325
  %i.el = icmp eq i64 %i.eb, %i.ek
  %i.em = load i64, ptr %i.ei, align 8
  %i.en = icmp eq i64 %i.eb, %i.em
  %i.eo = select i1 %i.el, i1 %i.en, i1 false
  br i1 %i.eo, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104, label %.lr.ph.i.i.i.i95

bb.s:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.eq = icmp eq i64 %i.eb, %i.ew
  %i.er = load i64, ptr %i.ep, align 8
  %i.es = icmp eq i64 %i.eb, %i.er
  %i.et = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %i.et, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104, label %.lr.ph.i.i.i.i95, !llvm.loop !327

.lr.ph.i.i.i.i95:                                 ; preds = %bb.r, %bb.s
  %.020.i.i.i.i96 = phi ptr [ %i.eu, %bb.s ], [ %i.eh, %bb.r ]
  %i.eu = load ptr, ptr %.020.i.i.i.i96, align 8, !tbaa !269 ; 5 uses
  %.not18.i.i.i.i97 = icmp eq ptr %i.eu, null
  br i1 %.not18.i.i.i.i97, label %.loopexit.i.i100, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i95
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !325 ; 2 uses
  %i.ex = urem i64 %i.ew, %i.ec
  %.not19.i.i.i.i98 = icmp eq i64 %i.ex, %i.ed
  br i1 %.not19.i.i.i.i98, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i99, !llvm.loop !327

..loopexit_crit_edge21.i.i.i.i99:                 ; preds = %bb.t
  br label %.loopexit.i.i100, !llvm.loop !327

.loopexit.i.i100:                                 ; preds = %.lr.ph.i.i.i.i95, %..loopexit_crit_edge21.i.i.i.i99, %.lr.ph164
  %i.ey = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.ey, align 8, !tbaa !269
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.eb, ptr %i.ez, align 8, !tbaa !237
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %i.fb = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.ed, i64 noundef %i.eb, ptr noundef nonnull %i.ey, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i101: ; preds = %.loopexit.i.i100
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104: ; preds = %bb.s, %bb.r, %.loopexit.i.i100
  %.pn.i.i102 = phi ptr [ %i.fb, %.loopexit.i.i100 ], [ %i.eh, %bb.r ], [ %i.eu, %bb.s ]
  %.1.i.i103 = getelementptr inbounds nuw i8, ptr %.pn.i.i102, i64 16 ; 2 uses
  %i.fd = zext i32 %i.dz to i64
  %i.fe = load i64, ptr %.1.i.i103, align 8, !tbaa !92 ; 3 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load ptr, ptr %i.dr, align 8, !tbaa !84
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fd
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !3
  %i.fi = add i64 %i.fe, 1
  store i64 %i.fi, ptr %.1.i.i103, align 8, !tbaa !92
  %i.fj = load ptr, ptr %i.dq, align 8, !tbaa !84
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fe
  store i32 %i.dz, ptr %i.fk, align 4, !tbaa !3
  %i.fl = add nuw i64 %.072163, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.fl, %2
  br i1 %exitcond197.not, label %.loopexit, label %.lr.ph164, !llvm.loop !334

.lr.ph166:                                        ; preds = %.preheader130, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115
  %.0165 = phi i64 [ %i.gx, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115 ], [ 0, %.preheader130 ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0165
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !92 ; 7 uses
  %i.fo = load i64, ptr %i.h, align 8, !tbaa !323 ; 2 uses
  %i.fp = urem i64 %i.fn, %i.fo                   ; 3 uses
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !324 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i105, label %.loopexit.i.i111, label %bb.u

bb.u:                                             ; preds = %.lr.ph166
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !269 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !325
  %i.fx = icmp eq i64 %i.fn, %i.fw
  %i.fy = load i64, ptr %i.fu, align 8
  %i.fz = icmp eq i64 %i.fn, %i.fy
  %i.ga = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %i.ga, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, label %.lr.ph.i.i.i.i106

bb.v:                                             ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gc = icmp eq i64 %i.fn, %i.gi
  %i.gd = load i64, ptr %i.gb, align 8
  %i.ge = icmp eq i64 %i.fn, %i.gd
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %i.gf, label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, label %.lr.ph.i.i.i.i106, !llvm.loop !327

.lr.ph.i.i.i.i106:                                ; preds = %bb.u, %bb.v
  %.020.i.i.i.i107 = phi ptr [ %i.gg, %bb.v ], [ %i.ft, %bb.u ]
  %i.gg = load ptr, ptr %.020.i.i.i.i107, align 8, !tbaa !269 ; 5 uses
  %.not18.i.i.i.i108 = icmp eq ptr %i.gg, null
  br i1 %.not18.i.i.i.i108, label %.loopexit.i.i111, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i106
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !325 ; 2 uses
  %i.gj = urem i64 %i.gi, %i.fo
  %.not19.i.i.i.i109 = icmp eq i64 %i.gj, %i.fp
  br i1 %.not19.i.i.i.i109, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i110, !llvm.loop !327

..loopexit_crit_edge21.i.i.i.i110:                ; preds = %bb.w
  br label %.loopexit.i.i111, !llvm.loop !327

.loopexit.i.i111:                                 ; preds = %.lr.ph.i.i.i.i106, %..loopexit_crit_edge21.i.i.i.i110, %.lr.ph166
  %i.gk = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 5 uses
  store ptr null, ptr %i.gk, align 8, !tbaa !269
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %i.fn, ptr %i.gl, align 8, !tbaa !237
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false)
  %i.gn = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.fp, i64 noundef %i.fn, ptr noundef nonnull %i.gk, i64 noundef 1)
          to label %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115 unwind label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112

_ZNSt10_HashtableImSt4pairIKmN6duckdb12list_entry_tEESaIS4_ENSt8__detail10_Select1stENS2_15PerfectEqualityENS2_11PerfectHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i112: ; preds = %.loopexit.i.i111
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115: ; preds = %bb.v, %bb.u, %.loopexit.i.i111
  %.pn.i.i113 = phi ptr [ %i.gn, %.loopexit.i.i111 ], [ %i.ft, %bb.u ], [ %i.gg, %bb.v ]
  %.1.i.i114 = getelementptr inbounds nuw i8, ptr %.pn.i.i113, i64 16 ; 2 uses
  %i.gp = load i64, ptr %.1.i.i114, align 8, !tbaa !92 ; 3 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load ptr, ptr %i.dr, align 8, !tbaa !84
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.0165
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !3
  %i.gt = add i64 %i.gp, 1
  store i64 %i.gt, ptr %.1.i.i114, align 8, !tbaa !92
  %i.gu = trunc i64 %.0165 to i32
  %i.gv = load ptr, ptr %i.dq, align 8, !tbaa !84
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gp
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !3
  %i.gx = add nuw i64 %.0165, 1                   ; 2 uses
  %exitcond198.not = icmp eq i64 %i.gx, %2
  br i1 %exitcond198.not, label %.loopexit, label %.lr.ph166, !llvm.loop !335

.loopexit:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit104, %_ZNSt13unordered_mapImN6duckdb12list_entry_tENS0_11PerfectHashENS0_15PerfectEqualityESaISt4pairIKmS1_EEEixERS5_.exit115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %scalar.ph, %middle.block, %.preheader132, %.preheader130, %.preheader128, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20PartitionedTupleData16BuildBufferSpaceILb1EEEvRNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(784) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
end_hunk_1
