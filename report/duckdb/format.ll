inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE:bb.a
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.u = icmp ugt i64 %3, %i.t
  br i1 %i.u, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3)
          to label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.thread unwind label %bb.l, !inline_history !16

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.thread: ; preds = %bb.c
  store i64 %3, ptr %i.e, align 8, !tbaa !10
  br label %iter.check

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.b
  store i64 %3, ptr %i.e, align 8, !tbaa !10
  %.not9.i.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not9.i.i.i, label %.loopexit42, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.thread, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.b
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %3, 32
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec
  %i.ad = getelementptr i8, ptr %i.z, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.z, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load57 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !18
  %i.af = getelementptr i8, ptr %next.gep56, i64 16
  store <16 x i8> %wide.load, ptr %next.gep56, align 1, !tbaa !18
  store <16 x i8> %wide.load57, ptr %i.af, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit42.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %3, -4                       ; 4 uses
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec60
  %i.ai = getelementptr i8, ptr %i.z, i64 %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %next.gep62 = getelementptr i8, ptr %2, i64 %index61
  %next.gep63 = getelementptr i8, ptr %i.z, i64 %index61
  %wide.load64 = load <4 x i8>, ptr %next.gep62, align 1, !tbaa !18
  store <4 x i8> %wide.load64, ptr %next.gep63, align 1, !tbaa !18
  %index.next65 = add nuw i64 %index61, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %3, %n.vec60
  br i1 %cmp.n66, label %.loopexit42.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %2, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ] ; 2 uses
  %i.ak = add i64 %3, %i.a                        ; 2 uses
  %.011.i.i.i.ph71 = ptrtoint ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.al = sub i64 %i.ak, %.011.i.i.i.ph71
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.am = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !18
  store i8 %i.am, ptr %.0810.i.i.i.prol, align 1, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !25

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.ap = sub i64 %.011.i.i.i.ph71, %i.ak
  %i.aq = icmp ugt i64 %i.ap, -8
  br i1 %i.aq, label %.loopexit42.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ar = load i8, ptr %.011.i.i.i, align 1, !tbaa !18
  store i8 %i.ar, ptr %.0810.i.i.i, align 1, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.au = load i8, ptr %i.as, align 1, !tbaa !18
  store i8 %i.au, ptr %i.at, align 1, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !18
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !18
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !18
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 5
  %i.bf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 5
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !18
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 6
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 6
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !18
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 7
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 7
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !18
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.bn, %i.x
  br i1 %.not.i.i.i.7, label %.loopexit42.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27

.loopexit42.loopexit:                             ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.e, align 8, !tbaa !10
  %.pre47 = load i64, ptr %i.d, align 8, !tbaa !13
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.loopexit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.bp = phi i64 [ %.pre47, %.loopexit42.loopexit ], [ %i.t, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i ]
  %i.bq = phi i64 [ %.pre, %.loopexit42.loopexit ], [ 0, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i ] ; 2 uses
  %i.br = add i64 %i.bq, 2                        ; 3 uses
  %i.bs = icmp ugt i64 %i.br, %i.bp
  br i1 %i.bs, label %bb.d, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i12

bb.d:                                             ; preds = %.loopexit42
  %i.bt = load ptr, ptr %0, align 8, !tbaa !14
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br)
          to label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i12 unwind label %bb.l, !inline_history !16

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i12: ; preds = %bb.d, %.loopexit42
  store i64 %i.br, ptr %i.e, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bq ; 2 uses
  store i8 58, ptr %i.bx, align 1, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 32, ptr %i.by, align 1, !tbaa !18
  %.pre48 = load i64, ptr %i.e, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i12, %bb.a
  %i.bz = phi i64 [ %.pre48, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i12 ], [ 0, %bb.a ] ; 2 uses
  %i.ca = add i64 %i.bz, 6                        ; 3 uses
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !13
  %i.cc = icmp ugt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.e, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i22

bb.e:                                             ; preds = %.loopexit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !14
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ca)
          to label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i22 unwind label %bb.l, !inline_history !16

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i22: ; preds = %bb.e, %.loopexit
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bz ; 3 uses
  store <4 x i8> <i8 101, i8 114, i8 114, i8 111>, ptr %4, align 1, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 114, ptr %5, align 1, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 32, ptr %i.ch, align 1, !tbaa !18
  %.lobit.i.i = lshr i32 %1, 31
  %i.ci = zext nneg i32 %.lobit.i.i to i64
  %i.cj = load i64, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = add i64 %i.ck, %i.r                     ; 3 uses
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !13
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i22
  %i.co = load ptr, ptr %0, align 8, !tbaa !14
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cl)
          to label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i unwind label %bb.l, !inline_history !28

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i: ; preds = %bb.f, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i22
  store i64 %i.cl, ptr %i.e, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cj ; 3 uses
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 45, ptr %i.cr, align 1, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %.014.i.i = phi ptr [ %i.cs, %bb.g ], [ %i.cr, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.cu = icmp ugt i32 %spec.select, 99
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.02326.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %i.ct, %bb.h ] ; 2 uses
  %.02425.i.i.i.i.i = phi i32 [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %spec.select, %bb.h ] ; 3 uses
  %i.cv = urem i32 %.02425.i.i.i.i.i, 100
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = udiv i32 %.02425.i.i.i.i.i, 100         ; 2 uses
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !18
  %i.dc = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !18
  %i.dd = load i8, ptr %i.cz, align 2, !tbaa !18
  %i.de = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -2 ; 3 uses
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !18
  %i.df = icmp ugt i32 %.02425.i.i.i.i.i, 9999
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %.024.lcssa.i.i.i.i.i = phi i32 [ %spec.select, %bb.h ], [ %i.cx, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.023.lcssa.i.i.i.i.i = phi ptr [ %i.ct, %bb.h ], [ %i.de, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dg = icmp samesign ult i32 %.024.lcssa.i.i.i.i.i, 10
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dh = trunc nuw nsw i32 %.024.lcssa.i.i.i.i.i to i8
  %i.di = or disjoint i8 %i.dh, 48
  br label %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dj = shl nuw nsw i32 %.024.lcssa.i.i.i.i.i, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.do = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 -1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !18
  %i.dp = load i8, ptr %i.dl, align 2, !tbaa !18
  br label %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sink31.i.i.i.i.i = phi i64 [ -2, %bb.j ], [ -1, %bb.i ]
  %.sink.i.i.i.i.i = phi i8 [ %i.dp, %bb.j ], [ %i.di, %bb.i ]
  %i.dq = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 %.sink31.i.i.i.i.i
  store i8 %.sink.i.i.i.i.i, ptr %i.dq, align 1, !tbaa !18
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.014.i.i, ptr nonnull align 16 %i.c, i64 %i.r, i1 false), !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret void

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  tail call void @__clang_call_terminate(ptr %i.ds) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN10duckdb_fmt2v68internal12report_errorEPFvRNS1_6bufferIcEEiNS0_17basic_string_viewIcEEEiS6_(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !17
  store i64 500, ptr %i.b, align 8, !tbaa !13
  invoke void %0(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %1, ptr %2, i64 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %4, align 8, !tbaa !14
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.e) #27, !inline_history !30
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(532) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEE10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEE10deallocateEv.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 0) i32 @_ZN10duckdb_fmt2v68internal12count_digitsILj4ENS1_16fallback_uintptrEEEiT0_(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %"struct.duckdb_fmt::v6::internal::fallback_uintptr", align 8 ; 2 uses
  store i64 %0, ptr %1, align 8
  %i.a = icmp ult i64 %0, 72057594037927936
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %0, 281474976710656
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %0, 1099511627776
  br i1 %i.c, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %0, 4294967296
  br i1 %i.d, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %0, 16777216
  br i1 %i.e, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i64 %0, 65536
  br i1 %i.f, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.g = icmp ugt i64 %0, 255
  %spec.select = zext i1 %i.g to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 7, %bb.a ], [ 2, %bb.f ], [ 6, %bb.b ], [ %spec.select, %bb.g ], [ 5, %bb.c ], [ 3, %bb.e ], [ 4, %bb.d ] ; 2 uses
  %i.h = zext nneg i32 %.0.lcssa to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.critedge
  %.03.i = phi i32 [ %i.k, %.critedge ], [ %i.m, %bb.h ]
  %.0.i = phi i32 [ 0, %.critedge ], [ %i.l, %bb.h ]
end_hunk_0
