inline.NumInlined: 58
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11duckdb_zstd22ZSTD_ldm_blockCompressEPNS_13rawSeqStore_tEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjNS_18ZSTD_paramSwitch_eEPKvm:bb.a
bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp ugt i32 %i.ba, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bf = sub i32 %i.ba, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bg = icmp uge i32 %i.bf, %i.b
  %.sroa.8.0.i = select i1 %.not22.i, i32 %i.bf, i32 %.sroa.8.0.copyload.i ; 5 uses
  %i.bh = and i1 %.not22.i, %i.bg
  %.sroa.010.sroa.0.0.i = select i1 %i.bh, i64 %.sroa.010.0.copyload.i, i64 0 ; 5 uses
  %.not53.i.i = icmp eq i32 %i.ba, 0
  %exitcond.not.i.i199 = icmp eq i64 %i.ax, %i.aw
  %or.cond223.a = or i1 %.not53.i.i, %exitcond.not.i.i199
  br i1 %or.cond223.a, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.i
  %i.bi = and i64 %i.az, 4294967295
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %.lr.ph201
  %.02754.i.i200 = phi i64 [ %i.bi, %.lr.ph201 ], [ %i.cd, %bb.q ] ; 3 uses
  %i.bj = phi i64 [ %i.ax, %.lr.ph201 ], [ %i.ce, %bb.q ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !63 ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not34.i.i = icmp ugt i64 %.02754.i.i200, %i.bn
  br i1 %.not34.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = trunc nuw i64 %.02754.i.i200 to i32
  %i.bp = sub i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !63
  br label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = sub nuw nsw i64 %.02754.i.i200, %i.bn   ; 3 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !65 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ult i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc nuw i64 %i.bq to i32
  %i.bw = sub i32 %i.bs, %i.bv                    ; 3 uses
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !65
  %i.bx = icmp ult i32 %i.bw, %i.b
  br i1 %i.bx, label %bb.n, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

bb.n:                                             ; preds = %bb.m
  %i.by = add nuw i64 %i.bj, 1                    ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.aw
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.cc = add i32 %i.cb, %i.bw
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 %i.by, ptr %i.o, align 8, !tbaa !70
  br label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit

bb.q:                                             ; preds = %bb.l
  %i.cd = sub nuw nsw i64 %i.bq, %i.bt            ; 2 uses
  store i32 0, ptr %i.br, align 4, !tbaa !65
  %i.ce = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.o, align 8, !tbaa !70
  %.not.i.i = icmp eq i64 %i.cd, 0
  %exitcond.not.i.i = icmp eq i64 %i.ce, %i.aw
  %or.cond224 = or i1 %.not.i.i, %exitcond.not.i.i
  br i1 %or.cond224, label %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, label %bb.j

_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit: ; preds = %bb.q, %bb.h, %bb.i, %bb.k, %bb.m, %bb.p
  %.sroa.8.1.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.0.i, %bb.i ], [ %.sroa.8.0.i, %bb.p ], [ %.sroa.8.0.i, %bb.k ], [ %.sroa.8.0.i, %bb.m ], [ %.sroa.8.0.i, %bb.q ]
  %.sroa.010.sroa.0.1.i = phi i64 [ %.sroa.010.0.copyload.i, %bb.h ], [ %.sroa.010.sroa.0.0.i, %bb.i ], [ %.sroa.010.sroa.0.0.i, %bb.p ], [ %.sroa.010.sroa.0.0.i, %bb.k ], [ %.sroa.010.sroa.0.0.i, %bb.m ], [ %.sroa.010.sroa.0.0.i, %bb.q ]
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.010.sroa.0.1.i to i32 ; 3 uses
  %i.cf = icmp eq i32 %.sroa.06.0.extract.trunc, 0
  br i1 %i.cf, label %.thread, label %bb.r

bb.r:                                             ; preds = %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit
  %i.cg = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ay, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 3 uses
  %i.ck = load i32, ptr %i.x, align 4, !tbaa !83  ; 2 uses
  %i.cl = add i32 %i.ck, 1024
  %i.cm = icmp ult i32 %i.cl, %i.cj
  br i1 %i.cm, label %bb.s, label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit

bb.s:                                             ; preds = %bb.r
  %reass.sub = sub i32 %i.cj, %i.ck
  %i.cn = add i32 %reass.sub, -1024
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 512)
  %i.co = sub i32 %i.cj, %spec.select.i
  store i32 %i.co, ptr %i.x, align 4, !tbaa !83
  br label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit

_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit: ; preds = %bb.r, %bb.s
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !84
  switch i32 %i.cp, label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit
  tail call void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074112, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit

bb.u:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit
  tail call void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074112, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit

_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit: ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit, %bb.t, %bb.u
  %i.cq = tail call noundef i64 %i.k(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %.074112, i64 noundef %.sroa.010.sroa.4.0.extract.shift.i) ; 8 uses
  %i.cr = load i64, ptr %3, align 4, !tbaa !3
  store i64 %i.cr, ptr %scevgep, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.074112, i64 %.sroa.010.sroa.4.0.extract.shift.i ; 5 uses
  store i32 %.sroa.06.0.extract.trunc, ptr %3, align 4, !tbaa !3
  %i.ct = sub i64 0, %i.cq
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct ; 7 uses
  %i.cv = add i32 %.sroa.06.0.extract.trunc, 3
  %i.cw = zext i32 %.sroa.8.1.i to i64            ; 2 uses
  %.not.i = icmp ugt ptr %i.cs, %i.y
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !85  ; 5 uses
  br i1 %.not.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit
  %.val78 = load <2 x i64>, ptr %i.cu, align 1, !tbaa !30
  store <2 x i64> %.val78, ptr %i.cx, align 1, !tbaa !30
  %i.cy = icmp ugt i64 %i.cq, 16
  %i.cz = load ptr, ptr %i.z, align 8, !tbaa !85  ; 4 uses
  br i1 %i.cy, label %bb.w, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cq
  store ptr %i.da, ptr %i.z, align 8, !tbaa !85
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !89
  br label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.cq
  %.val77 = load <2 x i64>, ptr %i.dc, align 1, !tbaa !30
  store <2 x i64> %.val77, ptr %i.db, align 1, !tbaa !30
  %i.de = icmp slt i64 %i.cq, 33
  br i1 %i.de, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.130.i = phi ptr [ %i.df, %bb.x ], [ %i.di, %bb.y ] ; 3 uses
  %.pn.i = phi ptr [ %i.dc, %bb.x ], [ %i.dh, %bb.y ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !30
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.dh, align 1, !tbaa !30
  store <2 x i64> %.val, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dd
  br i1 %i.dj, label %bb.y, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !90

bb.z:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit
  %.not.i82 = icmp ugt ptr %i.cu, %i.y
  br i1 %.not.i82, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = ptrtoint ptr %i.cu to i64
  %i.dl = sub i64 %i.aa, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.cx, i64 %i.dl ; 3 uses
  %.val19.i = load <2 x i64>, ptr %i.cu, align 1, !tbaa !30
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !30
  %i.dn = icmp slt i64 %i.dl, 17
  br i1 %i.dn, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.130.i.i = phi ptr [ %i.do, %bb.ab ], [ %i.dr, %bb.ac ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.cu, %bb.ab ], [ %i.dq, %bb.ac ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !30
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dq, align 1, !tbaa !30
  store <2 x i64> %.val.i, ptr %i.dp, align 1, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dm
  br i1 %i.ds, label %bb.ac, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !90

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.ac, %bb.aa, %bb.z
  %.014.i = phi ptr [ %i.cu, %bb.z ], [ %i.y, %bb.aa ], [ %i.y, %bb.ac ] ; 7 uses
  %.0.i = phi ptr [ %i.cx, %bb.z ], [ %i.dm, %bb.aa ], [ %i.dm, %bb.ac ] ; 6 uses
  %i.dt = icmp ult ptr %.014.i, %i.cs
  br i1 %i.dt, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i207 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i206 = ptrtoaddr ptr %.0.i to i64
  %i.du = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %i.dv = sub i64 %i.du, %.014.i207               ; 7 uses
  %min.iters.check = icmp ult i64 %i.dv, 4
  %i.dw = sub i64 %.014.i207, %.0.i206
  %diff.check = icmp ugt i64 %i.dw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i83.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check209 = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check209, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dv, 28
  %n.vec = and i64 %i.dv, -32                     ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.i, i64 %n.vec
  %i.dy = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i, i64 %index ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep210, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep210, align 1, !tbaa !30
  %wide.load211 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !30
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %wide.load211, ptr %i.ea, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i83.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec214 = and i64 %i.dv, -4                   ; 4 uses
  %i.ec = getelementptr i8, ptr %.0.i, i64 %n.vec214
  %i.ed = getelementptr i8, ptr %.014.i, i64 %n.vec214
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next219, %vec.epilog.vector.body ] ; 3 uses
  %next.gep216.a = getelementptr i8, ptr %.0.i, i64 %index215
  %next.gep217 = getelementptr i8, ptr %.014.i, i64 %index215
  %wide.load218 = load <4 x i8>, ptr %next.gep217, align 1, !tbaa !30
  store <4 x i8> %wide.load218, ptr %next.gep216.a, align 1, !tbaa !30
  %index.next219 = add nuw i64 %index215, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n220 = icmp eq i64 %i.dv, %n.vec214
  br i1 %cmp.n220, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 3 uses
  %i.ef = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ay
  %.11520.i.ph249 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.ef, %.11520.i.ph249
  %i.eh = add i64 %i.ay, -1
  %i.ei = add i64 %i.eh, %.sroa.010.sroa.4.0.extract.shift.i
  %i.ej = sub i64 %i.ei, %.11520.i.ph249
  %xtraiter = and i64 %i.eg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol

.lr.ph.i83.prol:                                  ; preds = %.lr.ph.i83.preheader, %.lr.ph.i83.prol
  %.121.i.prol = phi ptr [ %i.em, %.lr.ph.i83.prol ], [ %.121.i.ph, %.lr.ph.i83.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ek, %.lr.ph.i83.prol ], [ %.11520.i.ph, %.lr.ph.i83.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i83.prol ], [ 0, %.lr.ph.i83.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.el = load i8, ptr %.11520.i.prol, align 1, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.el, ptr %.121.i.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol, !llvm.loop !96

.lr.ph.i83.prol.loopexit:                         ; preds = %.lr.ph.i83.prol, %.lr.ph.i83.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i83.preheader ], [ %i.em, %.lr.ph.i83.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i83.preheader ], [ %i.ek, %.lr.ph.i83.prol ]
  %i.en = icmp ult i64 %i.ej, 7
  br i1 %i.en, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83
  %.121.i = phi ptr [ %i.fl, %.lr.ph.i83 ], [ %.121.i.unr, %.lr.ph.i83.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fj, %.lr.ph.i83 ], [ %.11520.i.unr, %.lr.ph.i83.prol.loopexit ] ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.ep = load i8, ptr %.11520.i, align 1, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.ep, ptr %.121.i, align 1, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !30
  %i.ex = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.fe = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !30
  %i.fi = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !30
  %i.fj = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !30
  %exitcond.not.i84.7 = icmp eq ptr %i.fj, %i.cs
  br i1 %exitcond.not.i84.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i83, !llvm.loop !98

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.y, %.lr.ph.i83.prol.loopexit, %.lr.ph.i83, %middle.block, %vec.epilog.middle.block, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, %bb.w
  %i.fm = load ptr, ptr %i.z, align 8, !tbaa !85
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.cq
  store ptr %i.fn, ptr %i.z, align 8, !tbaa !85
  %i.fo = icmp ugt i64 %i.cq, 65535
  %.pre135 = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 3 uses
  br i1 %i.fo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  store i32 1, ptr %i.ab, align 8, !tbaa !99
  %i.fp = load ptr, ptr %2, align 8, !tbaa !100
  %i.fq = ptrtoint ptr %.pre135 to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = lshr exact i64 %i.fs, 3
  %i.fu = trunc i64 %i.ft to i32
  store i32 %i.fu, ptr %i.ad, align 4, !tbaa !101
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, %bb.ad, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.fv = phi ptr [ %.pre, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread ], [ %.pre135, %bb.ad ], [ %.pre135, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %i.fw = trunc i64 %i.cq to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i16 %i.fw, ptr %i.fx, align 4, !tbaa !102
  store i32 %i.cv, ptr %i.fv, align 4, !tbaa !104
  %i.fy = add nsw i64 %i.cw, -3                   ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 65535
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ab, align 8, !tbaa !99
  %i.ga = load ptr, ptr %2, align 8, !tbaa !100
  %i.gb = ptrtoint ptr %i.fv to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = lshr exact i64 %i.gd, 3
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.ad, align 4, !tbaa !101
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gg = trunc i64 %i.fy to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !105
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.gi, ptr %i.ac, align 8, !tbaa !89
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw ; 3 uses
  %i.gk = load i64, ptr %i.o, align 8, !tbaa !70  ; 2 uses
  %i.gl = load i64, ptr %i.p, align 8, !tbaa !37  ; 2 uses
  %i.gm = icmp ult i64 %i.gk, %i.gl
  %i.gn = icmp ult ptr %i.gj, %i.l
  %i.go = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %i.go, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.ag, %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit, %.preheader
  %.074.lcssa = phi ptr [ %5, %.preheader ], [ %.074112, %_ZN11duckdb_zstdL18maybeSplitSequenceEPNS_13rawSeqStore_tEjj.exit ], [ %i.gj, %bb.ag ] ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !82
  %i.gr = ptrtoint ptr %.074.lcssa to i64         ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = trunc i64 %i.gt to i32                  ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !83 ; 2 uses
  %i.gx = add i32 %i.gw, 1024
  %i.gy = icmp ult i32 %i.gx, %i.gu
  br i1 %i.gy, label %bb.ah, label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87

bb.ah:                                            ; preds = %.thread
  %reass.sub114 = sub i32 %i.gu, %i.gw
  %i.gz = add i32 %reass.sub114, -1024
  %spec.select.i86 = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 512)
  %i.ha = sub i32 %i.gu, %spec.select.i86
  store i32 %i.ha, ptr %i.gv, align 4, !tbaa !83
  br label %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87

_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87: ; preds = %.thread, %bb.ah
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !84
  switch i32 %i.hb, label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87
  tail call void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074.lcssa, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87
  tail call void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef nonnull %1, ptr noundef %.074.lcssa, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88

_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88: ; preds = %_ZN11duckdb_zstdL25ZSTD_ldm_limitTableUpdateEPNS_17ZSTD_matchState_tEPKh.exit87, %bb.ai, %bb.aj
  %i.hc = ptrtoint ptr %i.l to i64
  %i.hd = sub i64 %i.hc, %i.gr
  %i.he = tail call noundef i64 %i.k(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %.074.lcssa, i64 noundef %i.hd)
  br label %_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm.exit

_ZN11duckdb_zstd29ZSTD_ldm_skipRawSeqStoreBytesEPNS_13rawSeqStore_tEm.exit: ; preds = %.critedge.i, %.loopexit.i, %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88
  %.0 = phi i64 [ %i.he, %_ZN11duckdb_zstdL23ZSTD_ldm_fillFastTablesEPNS_17ZSTD_matchState_tEPKv.exit88 ], [ %i.af, %.loopexit.i ], [ %i.af, %.critedge.i ]
  ret i64 %.0
}

declare noundef ptr @_ZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eE(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

declare void @_ZN11duckdb_zstd18ZSTD_fillHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11duckdb_zstd24ZSTD_fillDoubleHashTableEPNS_17ZSTD_matchState_tEPKvNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
