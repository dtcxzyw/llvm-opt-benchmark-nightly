inline.NumInlined: 58
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_ldm_blockCompress:bb.a
bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp ugt i32 %i.bc, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bh = sub i32 %i.bc, %.sroa.010.sroa.4.0.extract.trunc.i ; 2 uses
  %i.bi = icmp uge i32 %i.bh, %i.b
  %.sroa.8.0.i = select i1 %.not22.i, i32 %i.bh, i32 %.sroa.8.0.copyload.i ; 5 uses
  %i.bj = and i1 %.not22.i, %i.bi
  %.sroa.010.sroa.0.0.i = select i1 %i.bj, i64 %.sroa.010.0.copyload.i, i64 0 ; 5 uses
  %.not53.i.i = icmp eq i32 %i.bc, 0
  %exitcond.not.i.i200 = icmp eq i64 %i.az, %i.ay
  %or.cond224.a = or i1 %.not53.i.i, %exitcond.not.i.i200
  br i1 %or.cond224.a, label %maybeSplitSequence.exit, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.i
  %i.bk = and i64 %i.bb, 4294967295
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %.lr.ph202
  %.02754.i.i201 = phi i64 [ %i.bk, %.lr.ph202 ], [ %i.cf, %bb.q ] ; 3 uses
  %i.bl = phi i64 [ %i.az, %.lr.ph202 ], [ %i.cg, %bb.q ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !60 ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.not34.i.i = icmp ugt i64 %.02754.i.i201, %i.bp
  br i1 %.not34.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = trunc nuw i64 %.02754.i.i201 to i32
  %i.br = sub i32 %i.bo, %i.bq
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !60
  br label %maybeSplitSequence.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = sub nuw nsw i64 %.02754.i.i201, %i.bp   ; 3 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !62 ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ult i64 %i.bs, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bx = trunc nuw i64 %i.bs to i32
  %i.by = sub i32 %i.bu, %i.bx                    ; 3 uses
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !62
  %i.bz = icmp ult i32 %i.by, %i.b
  br i1 %i.bz, label %bb.n, label %maybeSplitSequence.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = add nuw i64 %i.bl, 1                    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.ay
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !60
  %i.ce = add i32 %i.cd, %i.by
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !67
  br label %maybeSplitSequence.exit

bb.q:                                             ; preds = %bb.l
  %i.cf = sub nuw nsw i64 %i.bs, %i.bv            ; 2 uses
  store i32 0, ptr %i.bt, align 4, !tbaa !62
  %i.cg = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cg, ptr %i.q, align 8, !tbaa !67
  %.not.i.i = icmp eq i64 %i.cf, 0
  %exitcond.not.i.i = icmp eq i64 %i.cg, %i.ay
  %or.cond225 = or i1 %.not.i.i, %exitcond.not.i.i
  br i1 %or.cond225, label %maybeSplitSequence.exit, label %bb.j

maybeSplitSequence.exit:                          ; preds = %bb.q, %bb.h, %bb.i, %bb.k, %bb.m, %bb.p
  %.sroa.8.1.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.0.i, %bb.i ], [ %.sroa.8.0.i, %bb.p ], [ %.sroa.8.0.i, %bb.k ], [ %.sroa.8.0.i, %bb.m ], [ %.sroa.8.0.i, %bb.q ]
  %.sroa.010.sroa.0.1.i = phi i64 [ %.sroa.010.0.copyload.i, %bb.h ], [ %.sroa.010.sroa.0.0.i, %bb.i ], [ %.sroa.010.sroa.0.0.i, %bb.p ], [ %.sroa.010.sroa.0.0.i, %bb.k ], [ %.sroa.010.sroa.0.0.i, %bb.m ], [ %.sroa.010.sroa.0.0.i, %bb.q ]
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.010.sroa.0.1.i to i32 ; 3 uses
  %i.ch = icmp eq i32 %.sroa.06.0.extract.trunc, 0
  br i1 %i.ch, label %.thread, label %bb.r

bb.r:                                             ; preds = %maybeSplitSequence.exit
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.ba, %i.cj
  %i.cl = trunc i64 %i.ck to i32                  ; 3 uses
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !79  ; 2 uses
  %i.cn = add i32 %i.cm, 1024
  %i.co = icmp ult i32 %i.cn, %i.cl
  br i1 %i.co, label %bb.s, label %ZSTD_ldm_limitTableUpdate.exit

bb.s:                                             ; preds = %bb.r
  %reass.sub = sub i32 %i.cl, %i.cm
  %i.cp = add i32 %reass.sub, -1024
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 512)
  %i.cq = sub i32 %i.cl, %spec.select.i
  store i32 %i.cq, ptr %i.z, align 4, !tbaa !79
  br label %ZSTD_ldm_limitTableUpdate.exit

ZSTD_ldm_limitTableUpdate.exit:                   ; preds = %bb.r, %bb.s
  %i.cr = load i32, ptr %i.c, align 8, !tbaa !80
  switch i32 %i.cr, label %ZSTD_ldm_fillFastTables.exit [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %ZSTD_ldm_limitTableUpdate.exit
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %.074113, i32 noundef 0, i32 noundef 0) #15
  br label %ZSTD_ldm_fillFastTables.exit

bb.u:                                             ; preds = %ZSTD_ldm_limitTableUpdate.exit
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %.074113, i32 noundef 0, i32 noundef 0) #15
  br label %ZSTD_ldm_fillFastTables.exit

ZSTD_ldm_fillFastTables.exit:                     ; preds = %ZSTD_ldm_limitTableUpdate.exit, %bb.t, %bb.u
  %i.cs = tail call i64 %i.m(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %.074113, i64 noundef %.sroa.010.sroa.4.0.extract.shift.i) #15 ; 8 uses
  %i.ct = load i64, ptr %3, align 4, !tbaa !3
  store i64 %i.ct, ptr %scevgep, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.074113, i64 %.sroa.010.sroa.4.0.extract.shift.i ; 5 uses
  store i32 %.sroa.06.0.extract.trunc, ptr %3, align 4, !tbaa !3
  %i.cv = sub i64 0, %i.cs
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv ; 7 uses
  %i.cx = add i32 %.sroa.06.0.extract.trunc, 3
  %i.cy = zext i32 %.sroa.8.1.i to i64            ; 2 uses
  %.not.i = icmp ugt ptr %i.cu, %i.aa
  %i.cz = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 5 uses
  br i1 %.not.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %ZSTD_ldm_fillFastTables.exit
  %.val78 = load <2 x i64>, ptr %i.cw, align 1, !tbaa !28
  store <2 x i64> %.val78, ptr %i.cz, align 1, !tbaa !28
  %i.da = icmp ugt i64 %i.cs, 16
  %i.db = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 4 uses
  br i1 %i.da, label %bb.w, label %ZSTD_wildcopy.exit.thread

ZSTD_wildcopy.exit.thread:                        ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cs
  store ptr %i.dc, ptr %i.ab, align 8, !tbaa !81
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !84
  br label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.db, i64 %i.cs
  %.val77 = load <2 x i64>, ptr %i.de, align 1, !tbaa !28
  store <2 x i64> %.val77, ptr %i.dd, align 1, !tbaa !28
  %i.dg = icmp slt i64 %i.cs, 33
  br i1 %i.dg, label %ZSTD_wildcopy.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.130.i = phi ptr [ %i.dh, %bb.x ], [ %i.dk, %bb.y ] ; 3 uses
  %.pn.i = phi ptr [ %i.de, %bb.x ], [ %i.dj, %bb.y ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !28
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !28
  %i.di = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val = load <2 x i64>, ptr %i.dj, align 1, !tbaa !28
  store <2 x i64> %.val, ptr %i.di, align 1, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.df
  br i1 %i.dl, label %bb.y, label %ZSTD_wildcopy.exit, !llvm.loop !85

bb.z:                                             ; preds = %ZSTD_ldm_fillFastTables.exit
  %.not.i82 = icmp ugt ptr %i.cw, %i.aa
  br i1 %.not.i82, label %ZSTD_wildcopy.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = ptrtoint ptr %i.cw to i64
  %i.dn = sub i64 %i.ac, %i.dm                    ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.cz, i64 %i.dn ; 3 uses
  %.val19.i = load <2 x i64>, ptr %i.cw, align 1, !tbaa !28
  store <2 x i64> %.val19.i, ptr %i.cz, align 1, !tbaa !28
  %i.dp = icmp slt i64 %i.dn, 17
  br i1 %i.dp, label %ZSTD_wildcopy.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.130.i.i = phi ptr [ %i.dq, %bb.ab ], [ %i.dt, %bb.ac ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.cw, %bb.ab ], [ %i.ds, %bb.ac ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !28
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i83 = load <2 x i64>, ptr %i.ds, align 1, !tbaa !28
  store <2 x i64> %.val.i83, ptr %i.dr, align 1, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.du = icmp ult ptr %i.dt, %i.do
  br i1 %i.du, label %bb.ac, label %ZSTD_wildcopy.exit.i, !llvm.loop !85

ZSTD_wildcopy.exit.i:                             ; preds = %bb.ac, %bb.aa, %bb.z
  %.014.i = phi ptr [ %i.cw, %bb.z ], [ %i.aa, %bb.aa ], [ %i.aa, %bb.ac ] ; 8 uses
  %.0.i = phi ptr [ %i.cz, %bb.z ], [ %i.do, %bb.aa ], [ %i.do, %bb.ac ] ; 6 uses
  %i.dv = icmp ult ptr %.014.i, %i.cu
  br i1 %i.dv, label %iter.check, label %ZSTD_wildcopy.exit

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i208 = ptrtoaddr ptr %.014.i to i64
  %.0.i207 = ptrtoaddr ptr %.0.i to i64
  %.014.i209 = ptrtoint ptr %.014.i to i64
  %i.dw = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ba
  %i.dx = sub i64 %i.dw, %.014.i209               ; 7 uses
  %min.iters.check = icmp ult i64 %i.dx, 4
  %i.dy = sub i64 %.014.i208, %.0.i207
  %diff.check = icmp ugt i64 %i.dy, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check210 = icmp ult i64 %i.dx, 32
  br i1 %min.iters.check210, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dx, 28
  %n.vec = and i64 %i.dx, -32                     ; 5 uses
  %i.dz = getelementptr i8, ptr %.0.i, i64 %n.vec
  %i.ea = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i, i64 %index ; 2 uses
  %next.gep211 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep211, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep211, align 1, !tbaa !28
  %wide.load212 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !28
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %wide.load212, ptr %i.ec, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i84.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec215 = and i64 %i.dx, -4                   ; 4 uses
  %i.ee = getelementptr i8, ptr %.0.i, i64 %n.vec215
  %i.ef = getelementptr i8, ptr %.014.i, i64 %n.vec215
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep217.a = getelementptr i8, ptr %.0.i, i64 %index216
  %next.gep218 = getelementptr i8, ptr %.014.i, i64 %index216
  %wide.load219 = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !28
  store <4 x i8> %wide.load219, ptr %next.gep217.a, align 1, !tbaa !28
  %index.next220 = add nuw i64 %index216, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n221 = icmp eq i64 %i.dx, %n.vec215
  br i1 %cmp.n221, label %ZSTD_wildcopy.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ] ; 3 uses
  %i.eh = add i64 %.sroa.010.sroa.4.0.extract.shift.i, %i.ba
  %.11520.i.ph251 = ptrtoint ptr %.11520.i.ph to i64 ; 2 uses
  %i.ei = sub i64 %i.eh, %.11520.i.ph251
  %i.ej = add i64 %i.ba, -1
  %i.ek = add i64 %i.ej, %.sroa.010.sroa.4.0.extract.shift.i
  %i.el = sub i64 %i.ek, %.11520.i.ph251
  %xtraiter = and i64 %i.ei, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84.prol
  %.121.i.prol = phi ptr [ %i.eo, %.lr.ph.i84.prol ], [ %.121.i.ph, %.lr.ph.i84.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.em, %.lr.ph.i84.prol ], [ %.11520.i.ph, %.lr.ph.i84.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.i84.preheader ]
  %i.em = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.en = load i8, ptr %.11520.i.prol, align 1, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.en, ptr %.121.i.prol, align 1, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !91

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.i84.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i84.preheader ], [ %i.eo, %.lr.ph.i84.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i84.preheader ], [ %i.em, %.lr.ph.i84.prol ]
  %i.ep = icmp ult i64 %i.el, 7
  br i1 %i.ep, label %ZSTD_wildcopy.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.121.i = phi ptr [ %i.fn, %.lr.ph.i84 ], [ %.121.i.unr, %.lr.ph.i84.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fl, %.lr.ph.i84 ], [ %.11520.i.unr, %.lr.ph.i84.prol.loopexit ] ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.er = load i8, ptr %.11520.i, align 1, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.er, ptr %.121.i, align 1, !tbaa !28
  %i.et = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !28
  %i.ev = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !28
  %i.ew = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !28
  %i.ez = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.fa = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.fb = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !28
  %i.fc = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !28
  %i.ff = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !28
  %i.fh = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !28
  %i.fi = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !28
  %i.fl = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fm = load i8, ptr %i.fi, align 1, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !28
  %exitcond.not.i85.7 = icmp eq ptr %i.fl, %i.cu
  br i1 %exitcond.not.i85.7, label %ZSTD_wildcopy.exit, label %.lr.ph.i84, !llvm.loop !93

ZSTD_wildcopy.exit:                               ; preds = %bb.y, %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i, %bb.w
  %i.fo = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.cs
  store ptr %i.fp, ptr %i.ab, align 8, !tbaa !81
  %i.fq = icmp ugt i64 %i.cs, 65535
  %.pre136 = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 3 uses
  br i1 %i.fq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %ZSTD_wildcopy.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !94
  %i.fr = load ptr, ptr %2, align 8, !tbaa !95
  %i.fs = ptrtoint ptr %.pre136 to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = lshr exact i64 %i.fu, 3
  %i.fw = trunc i64 %i.fv to i32
  store i32 %i.fw, ptr %i.af, align 4, !tbaa !96
  br label %bb.ae

bb.ae:                                            ; preds = %ZSTD_wildcopy.exit.thread, %bb.ad, %ZSTD_wildcopy.exit
  %i.fx = phi ptr [ %.pre, %ZSTD_wildcopy.exit.thread ], [ %.pre136, %bb.ad ], [ %.pre136, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.fy = trunc i64 %i.cs to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i16 %i.fy, ptr %i.fz, align 4, !tbaa !97
  store i32 %i.cx, ptr %i.fx, align 4, !tbaa !99
  %i.ga = add nsw i64 %i.cy, -3                   ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 65535
  br i1 %i.gb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ad, align 8, !tbaa !94
  %i.gc = load ptr, ptr %2, align 8, !tbaa !95
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = lshr exact i64 %i.gf, 3
  %i.gh = trunc i64 %i.gg to i32
  store i32 %i.gh, ptr %i.af, align 4, !tbaa !96
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gi = trunc i64 %i.ga to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 6
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !100
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.gk, ptr %i.ae, align 8, !tbaa !84
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cy ; 3 uses
  %i.gm = load i64, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.gn = load i64, ptr %i.r, align 8, !tbaa !35  ; 2 uses
  %i.go = icmp ult i64 %i.gm, %i.gn
  %i.gp = icmp ult ptr %i.gl, %i.n
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.ag, %maybeSplitSequence.exit, %.preheader
  %.074.lcssa = phi ptr [ %5, %.preheader ], [ %.074113, %maybeSplitSequence.exit ], [ %i.gl, %bb.ag ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !78
  %i.gt = ptrtoint ptr %.074.lcssa to i64         ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = trunc i64 %i.gv to i32                  ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !79 ; 2 uses
  %i.gz = add i32 %i.gy, 1024
  %i.ha = icmp ult i32 %i.gz, %i.gw
  br i1 %i.ha, label %bb.ah, label %ZSTD_ldm_limitTableUpdate.exit88

bb.ah:                                            ; preds = %.thread
  %reass.sub115 = sub i32 %i.gw, %i.gy
  %i.hb = add i32 %reass.sub115, -1024
  %spec.select.i87 = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 512)
  %i.hc = sub i32 %i.gw, %spec.select.i87
  store i32 %i.hc, ptr %i.gx, align 4, !tbaa !79
  br label %ZSTD_ldm_limitTableUpdate.exit88

ZSTD_ldm_limitTableUpdate.exit88:                 ; preds = %.thread, %bb.ah
  %i.hd = load i32, ptr %i.c, align 8, !tbaa !80
  switch i32 %i.hd, label %ZSTD_ldm_fillFastTables.exit89 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %ZSTD_ldm_limitTableUpdate.exit88
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %1, ptr noundef %.074.lcssa, i32 noundef 0, i32 noundef 0) #15
  br label %ZSTD_ldm_fillFastTables.exit89

bb.aj:                                            ; preds = %ZSTD_ldm_limitTableUpdate.exit88
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %1, ptr noundef %.074.lcssa, i32 noundef 0, i32 noundef 0) #15
  br label %ZSTD_ldm_fillFastTables.exit89

ZSTD_ldm_fillFastTables.exit89:                   ; preds = %ZSTD_ldm_limitTableUpdate.exit88, %bb.ai, %bb.aj
  %i.he = ptrtoint ptr %i.n to i64
  %i.hf = sub i64 %i.he, %i.gt
  %i.hg = tail call i64 %i.m(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %.074.lcssa, i64 noundef %i.hf) #15
  br label %ZSTD_ldm_skipRawSeqStoreBytes.exit

ZSTD_ldm_skipRawSeqStoreBytes.exit:               ; preds = %.critedge.i, %.loopexit.i, %ZSTD_ldm_fillFastTables.exit89
  %.0 = phi i64 [ %i.hg, %ZSTD_ldm_fillFastTables.exit89 ], [ %i.ah, %.loopexit.i ], [ %i.ah, %.critedge.i ]
  ret i64 %.0
}

declare ptr @ZSTD_selectBlockCompressor(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
