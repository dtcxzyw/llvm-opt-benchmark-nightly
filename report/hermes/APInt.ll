inline.NumInlined: 1495
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvh5APInt4sqrtEv:bb.a
  br i1 %i.c, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15, label %bb.g

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i15:       ; preds = %.thread258
  %i.az = and i32 %.pn.in.in.i32, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i64 -1, %i.ba
  %i.bc = and i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.g:                                             ; preds = %.thread258
  %i.bd = zext i32 %i.b to i64
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bg, i1 false)
  store ptr %i.bh, ptr %0, align 8, !tbaa !9
  store i64 %i.ax, ptr %i.bh, align 8, !tbaa !10
  %.pn.in.i11 = and i32 %.pn.in.in.i32, 63
  %.pn.i12 = zext nneg i32 %.pn.in.i11 to i64
  %i.bi = lshr i64 -1, %.pn.i12
  %i.bj = add nuw nsw i64 %i.bf, 4294967295
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = and i64 %i.bm, %i.bi
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35:       ; preds = %.thread257
  %i.bo = and i32 %.pn.in.in.i32, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 -1, %i.bp                      ; 2 uses
  %i.br = and i64 %i.bq, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.bs, align 8, !tbaa !7
  store i64 1, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.bt, align 8, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.bu, align 8, !tbaa !7
  %i.bv = and i64 %i.bq, 2                        ; 2 uses
  store i64 %i.bv, ptr %4, align 8, !tbaa !9
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %_ZN4llvh5APIntC2Ejmb.exit36

bb.h:                                             ; preds = %bb.e
  %i.bx = shl nuw nsw i64 %i.f, 3                 ; 8 uses
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.bx, i1 false)
  %i.bz = ptrtoint ptr %i.by to i64
  store i64 16, ptr %i.by, align 8, !tbaa !10
  %.pn.in.i18 = and i32 %.pn.in.in.i32, 63
  %.pn.i19 = zext nneg i32 %.pn.in.i18 to i64
  %i.ca = lshr i64 -1, %.pn.i19                   ; 4 uses
  %i.cb = add nuw nsw i64 %i.f, 4294967295
  %i.cc = and i64 %i.cb, 4294967295               ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.cf = and i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.cg, align 8, !tbaa !7
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #22 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ch, i8 0, i64 %i.bx, i1 false)
  store ptr %i.ch, ptr %2, align 8, !tbaa !9
  store i64 1, ptr %i.ch, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cc ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = and i64 %i.cj, %i.ca
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.cl, align 8, !tbaa !7
  %i.cm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cm, i8 0, i64 %i.bx, i1 false)
  store ptr %i.cm, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cc ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !10
  %i.cp = and i64 %i.co, %i.ca
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.cq, align 8, !tbaa !7
  %i.cr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #22 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.bx, i1 false)
  store ptr %i.cr, ptr %4, align 8, !tbaa !9
  store i64 2, ptr %i.cr, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cc ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = and i64 %i.ct, %i.ca
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !10
  %i.cv = ptrtoint ptr %i.ch to i64
  br label %_ZN4llvh5APIntC2Ejmb.exit36

_ZN4llvh5APIntC2Ejmb.exit36:                      ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35, %bb.h
  %i.cw = phi ptr [ %i.bw, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.cr, %bb.h ] ; 2 uses
  %i.cx = phi i64 [ 1, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.cv, %bb.h ]
  %i.cy = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.ch, %bb.h ] ; 2 uses
  %i.cz = phi ptr [ %i.bs, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.cg, %bb.h ] ; 9 uses
  %.sroa.0245.1261264267 = phi i64 [ %i.br, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.bz, %bb.h ] ; 2 uses
  %i.da = phi ptr [ %i.bt, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i35 ], [ %i.cl, %bb.h ] ; 3 uses
  %.not369 = icmp ugt i32 %i.b, 4
  br i1 %.not369, label %.lr.ph, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit36
  %i.db = zext i32 %i.b to i64
  %i.dc = add nuw nsw i64 %i.db, 63               ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = and i64 %i.dd, 1073741816               ; 2 uses
  %i.df = lshr i64 %i.dc, 6                       ; 5 uses
  %indvars.iv.next.i1.i167 = add nsw i64 %i.df, -1 ; 3 uses
  %i.dg = and i32 %.pn.in.in.i32, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = lshr i64 -1, %i.dh                      ; 2 uses
  %i.dj = add nuw nsw i64 %i.df, 4294967295
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = trunc nuw nsw i64 %i.df to i32
  %i.dm = and i32 %i.dl, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dm, 0
  %indvars.iv.next.i177.prol = add nsw i64 %i.df, -2 ; 2 uses
  %i.dn = and i64 %indvars.iv.next.i177.prol, 4294967295
  %i.do = icmp eq i64 %i.df, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvh5APIntD2Ev.exit43
  %.0371 = phi i32 [ 4, %.lr.ph ], [ %i.hn, %_ZN4llvh5APIntD2Ev.exit43 ] ; 5 uses
  %.sroa.0245.0370 = phi i64 [ %.sroa.0245.1261264267, %.lr.ph ], [ %.sroa.0229.0271, %_ZN4llvh5APIntD2Ev.exit43 ] ; 9 uses
  %i.dp = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dq = icmp ult i32 %i.dp, 65
  br i1 %i.dq, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.dr = load i64, ptr %1, align 8, !tbaa !9
  %.not337 = icmp ugt i64 %i.dr, %.sroa.0245.0370
  br i1 %.not337, label %bb.p, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ds = load ptr, ptr %1, align 8, !tbaa !9
  %i.dt = inttoptr i64 %.sroa.0245.0370 to ptr
  %i.du = zext i32 %i.dp to i64
  %i.dv = add nuw nsw i64 %i.du, 63
  %i.dw = lshr i64 %i.dv, 6                       ; 2 uses
  %.not.i.i.i37501 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i37501, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, label %.lr.ph503

bb.k:                                             ; preds = %.lr.ph503
  %.not.i.i.i37 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i37, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, label %.lr.ph503, !llvm.loop !84

.lr.ph503:                                        ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i502 = phi i64 [ %i.dx, %bb.k ], [ %i.dw, %bb.j ]
  %i.dx = add nsw i64 %indvars.iv.i.i.i502, -1    ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !10 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dx
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.dz, %i.eb
  br i1 %.not13.i.i.i, label %bb.k, label %_ZNK4llvh5APInt3uleERKS0_.exit, !llvm.loop !84

_ZNK4llvh5APInt3uleERKS0_.exit:                   ; preds = %.lr.ph503
  %.not336 = icmp ugt i64 %i.dz, %i.eb
  br i1 %.not336, label %bb.p, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

_ZNK4llvh5APInt3uleERKS0_.exit.thread:            ; preds = %_ZN4llvh5APIntD2Ev.exit43, %_ZNK4llvh5APInt3uleERKS0_.exit, %.split, %bb.j, %bb.k, %_ZN4llvh5APIntC2Ejmb.exit36
  %.sroa.0245.0365 = phi i64 [ %.sroa.0245.0370, %bb.k ], [ %.sroa.0245.1261264267, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %.sroa.0229.0271, %_ZN4llvh5APIntD2Ev.exit43 ], [ %.sroa.0245.0370, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %.sroa.0245.0370, %.split ], [ %.sroa.0245.0370, %bb.j ] ; 2 uses
  %.0363 = phi i32 [ %.0371, %bb.k ], [ 4, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.hn, %_ZN4llvh5APIntD2Ev.exit43 ], [ %.0371, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %.0371, %.split ], [ %.0371, %bb.j ] ; 3 uses
  %i.ec = lshr exact i32 %.0363, 1                ; 3 uses
  %i.ed = load i32, ptr %i.cz, align 8, !tbaa !7, !noalias !208 ; 6 uses
  %i.ee = icmp ult i32 %i.ed, 65
  br i1 %i.ee, label %_ZNK4llvh5APInt3shlEj.exit.thread, label %bb.l

_ZNK4llvh5APInt3shlEj.exit.thread:                ; preds = %_ZNK4llvh5APInt3uleERKS0_.exit.thread
  %i.ef = icmp eq i32 %i.ec, %i.ed
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = shl i64 %i.cx, %i.eg
  %storemerge.i.i = select i1 %i.ef, i64 0, i64 %i.eh
  %i.ei = sub nsw i32 0, %i.ed
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = lshr i64 -1, %i.ek
  %i.em = and i64 %storemerge.i.i, %i.el
  br label %_ZN4llvh5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZNK4llvh5APInt3uleERKS0_.exit.thread
  %i.en = zext i32 %i.ed to i64
  %i.eo = add nuw nsw i64 %i.en, 63               ; 2 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = and i64 %i.ep, 1073741816               ; 2 uses
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #22, !noalias !208 ; 15 uses
  %i.es = ptrtoint ptr %i.er to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.cy, i64 %i.eq, i1 false), !noalias !208
  %i.et = lshr i64 %i.eo, 6                       ; 4 uses
  %i.eu = trunc nuw nsw i64 %i.et to i32          ; 5 uses
  %.not.i.i = icmp eq i32 %.0363, 0
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ev = lshr i32 %.0363, 7                      ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 %i.ev) ; 12 uses
  %i.ew = and i32 %i.ec, 63                       ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.n, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %i.ey = icmp samesign ult i32 %i.ev, %i.eu
  br i1 %i.ey, label %.lr.ph.i.i158, label %.loopexit.i.i

.lr.ph.i.i158:                                    ; preds = %.preheader.i.i
  %i.ez = zext nneg i32 %i.ew to i64              ; 4 uses
  %i.fa = sub nuw nsw i32 64, %i.ew
  %i.fb = zext nneg i32 %i.fa to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.et, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.fc = sub nsw i32 %indvars.i2.i, %.sroa.speculated.i.i
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = shl i64 %i.ff, %i.ez                    ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !10
  %i.fi = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.fi, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i158
  %i.fj = xor i32 %.sroa.speculated.i.i, -1
  %i.fk = sext i32 %i.fj to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.er, i64 %i.fk ; 3 uses
  %i.fl = add nsw i32 %i.eu, -2
  %10 = sub nsw i32 %.sroa.speculated.i.i, %i.eu
  %xtraiter562 = and i32 %10, 1
  %lcmp.mod563.not = icmp eq i32 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.fm = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.fn = lshr i64 %i.fm, %i.fb
  %i.fo = or i64 %i.fn, %i.fg
  store i64 %i.fo, ptr %i.fh, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.et, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.fp = sub nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10
  %i.ft = shl i64 %i.fs, %i.ez                    ; 2 uses
  %i.fu = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fu ; 2 uses
  store i64 %i.ft, ptr %i.fv, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr564 = phi ptr [ %i.fh, %.lr.ph.preheader.i ], [ %i.fv, %.lr.ph.i.prol ]
  %.unr565 = phi i64 [ %i.fg, %.lr.ph.preheader.i ], [ %i.ft, %.lr.ph.i.prol ]
  %i.fw = icmp eq i32 %i.fl, %.sroa.speculated.i.i
  br i1 %i.fw, label %.loopexit.i.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %i.fx = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fx
  %i.fz = sub nsw i32 %i.eu, %.sroa.speculated.i.i
  %i.ga = shl nsw i32 %i.fz, 3
  %i.gb = zext i32 %i.ga to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr nonnull align 8 %i.er, i64 %i.gb, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.gc = phi ptr [ %i.gx, %.lr.ph.i ], [ %.unr564, %.lr.ph.i.prol.loopexit ]
  %i.gd = phi i64 [ %i.gv, %.lr.ph.i ], [ %.unr565, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ge = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.gf = lshr i64 %i.ge, %i.fb
  %i.gg = or i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.gc, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.gh = sub i32 %indvars.i, %.sroa.speculated.i.i
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !10
  %i.gl = shl i64 %i.gk, %i.ez                    ; 2 uses
  %i.gm = and i64 %indvars.iv.next.i, 4294967295
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gm ; 2 uses
  store i64 %i.gl, ptr %i.gn, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.go = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.gp = lshr i64 %i.go, %i.fb
  %i.gq = or i64 %i.gp, %i.gl
  store i64 %i.gq, ptr %i.gn, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.gr = sub i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !10
  %i.gv = shl i64 %i.gu, %i.ez                    ; 2 uses
  %i.gw = and i64 %indvars.iv.next.i.1, 4294967295
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gw ; 2 uses
  store i64 %i.gv, ptr %i.gx, align 8, !tbaa !10
  %i.gy = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.gy, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %.lr.ph.i.i158, %.preheader.i.i
  %i.gz = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.ha = zext nneg i32 %i.gz to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.er, i8 0, i64 %i.ha, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %.loopexit.i.i
  %i.hb = sub i32 0, %i.ed
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 -1, %i.hd
  %i.hf = add nuw nsw i64 %i.et, 4294967295
  %i.hg = and i64 %i.hf, 4294967295
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !10
  %i.hj = and i64 %i.hi, %i.he
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !10
  tail call void @_ZdaPv(ptr noundef nonnull %i.cy) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInt3shlEj.exit.thread, %bb.o
  %.sroa.0236.0441 = phi i64 [ %i.em, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %i.es, %bb.o ]
  store i64 %.sroa.0236.0441, ptr %2, align 8
  store i32 %i.ed, ptr %i.cz, align 8, !tbaa !7
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.r

bb.p:                                             ; preds = %.split, %_ZNK4llvh5APInt3uleERKS0_.exit
  %i.hn = add i32 %.0371, 2                       ; 3 uses
  br i1 %i.c, label %_ZNK4llvh5APInt3shlEj.exit41.thread, label %.lr.ph.i.i166

_ZNK4llvh5APInt3shlEj.exit41.thread:              ; preds = %bb.p
  %i.ho = shl i64 %.sroa.0245.0370, 2
  %i.hp = and i64 %i.ho, %i.di
  br label %_ZN4llvh5APIntD2Ev.exit43

.lr.ph.i.i166:                                    ; preds = %bb.p
  %i.hq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #22, !noalias !211 ; 8 uses
  %i.hr = inttoptr i64 %.sroa.0245.0370 to ptr    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr align 8 %i.hr, i64 %i.de, i1 false), !noalias !211
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next.i1.i167 ; 4 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !10
  %i.hu = shl i64 %i.ht, 2                        ; 3 uses
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !10
  %invariant.gep.i170 = getelementptr i8, ptr %i.hq, i64 -8 ; 3 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i171.prol, label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol:                                 ; preds = %.lr.ph.i.i166
  %gep.i174.prol = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.next.i1.i167
  %i.hv = load i64, ptr %gep.i174.prol, align 8, !tbaa !10
  %i.hw = lshr i64 %i.hv, 62
  %i.hx = or disjoint i64 %i.hw, %i.hu
  store i64 %i.hx, ptr %i.hs, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.dn ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !10
  %i.ia = shl i64 %i.hz, 2                        ; 2 uses
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !10
  br label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol.loopexit:                        ; preds = %.lr.ph.i171.prol, %.lr.ph.i.i166
  %indvars.iv.i172.unr = phi i64 [ %indvars.iv.next.i1.i167, %.lr.ph.i.i166 ], [ %indvars.iv.next.i177.prol, %.lr.ph.i171.prol ]
  %.unr = phi ptr [ %i.hs, %.lr.ph.i.i166 ], [ %i.hy, %.lr.ph.i171.prol ]
  %.unr561 = phi i64 [ %i.hu, %.lr.ph.i.i166 ], [ %i.ia, %.lr.ph.i171.prol ]
  br i1 %i.do, label %.unr-lcssa, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171.prol.loopexit, %.lr.ph.i171
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i177.1, %.lr.ph.i171 ], [ %indvars.iv.i172.unr, %.lr.ph.i171.prol.loopexit ] ; 3 uses
  %i.ib = phi ptr [ %i.io, %.lr.ph.i171 ], [ %.unr, %.lr.ph.i171.prol.loopexit ]
  %i.ic = phi i64 [ %i.iq, %.lr.ph.i171 ], [ %.unr561, %.lr.ph.i171.prol.loopexit ]
  %gep.i174 = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.i172
  %i.id = load i64, ptr %gep.i174, align 8, !tbaa !10
  %i.ie = lshr i64 %i.id, 62
  %i.if = or disjoint i64 %i.ie, %i.ic
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !10
  %indvars.iv.next.i177 = add nsw i64 %indvars.iv.i172, -1 ; 2 uses
  %i.ig = and i64 %indvars.iv.next.i177, 4294967295
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ig ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = shl i64 %i.ii, 2                        ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !10
  %gep.i174.1 = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.next.i177
  %i.ik = load i64, ptr %gep.i174.1, align 8, !tbaa !10
  %i.il = lshr i64 %i.ik, 62
  %i.im = or disjoint i64 %i.il, %i.ij
  store i64 %i.im, ptr %i.ih, align 8, !tbaa !10
  %indvars.iv.next.i177.1 = add nsw i64 %indvars.iv.i172, -2 ; 2 uses
  %i.in = and i64 %indvars.iv.next.i177.1, 4294967295 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.in ; 3 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !10
  %i.iq = shl i64 %i.ip, 2                        ; 2 uses
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !10
  %.not338.1 = icmp eq i64 %i.in, 0
  br i1 %.not338.1, label %.unr-lcssa, label %.lr.ph.i171

.unr-lcssa:                                       ; preds = %.lr.ph.i171, %.lr.ph.i171.prol.loopexit
  %i.ir = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.dk ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !10
  %i.iu = and i64 %i.it, %i.di
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !10
  %i.iv = icmp eq i64 %.sroa.0245.0370, 0
  br i1 %i.iv, label %_ZN4llvh5APIntD2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %.unr-lcssa
  tail call void @_ZdaPv(ptr noundef nonnull %i.hr) #23
  br label %_ZN4llvh5APIntD2Ev.exit43

_ZN4llvh5APIntD2Ev.exit43:                        ; preds = %bb.q, %.unr-lcssa, %_ZNK4llvh5APInt3shlEj.exit41.thread
  %.sroa.0229.0271 = phi i64 [ %i.hp, %_ZNK4llvh5APInt3shlEj.exit41.thread ], [ %i.ir, %bb.q ], [ %i.ir, %.unr-lcssa ] ; 2 uses
  %.not = icmp ult i32 %i.hn, %i.b
  br i1 %.not, label %bb.i, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, !llvm.loop !214

bb.r:                                             ; preds = %bb.z, %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvh5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.iw = load i32, ptr %i.hk, align 8, !tbaa !7, !noalias !215 ; 6 uses
  %i.ix = icmp ult i32 %i.iw, 65
  br i1 %i.ix, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i:     ; preds = %bb.r
  %i.iy = load i64, ptr %2, align 8, !tbaa !9, !noalias !215
  %i.iz = load i64, ptr %7, align 8, !tbaa !9, !noalias !215
  %i.ja = add i64 %i.iz, %i.iy
  %i.jb = sub nsw i32 0, %i.iw
end_hunk_0
begin_hunk_1_@_ZN4llvh5APInt8tcNegateEPmj:bb.a
.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %middle.block
  %i.i = load i64, ptr %0, align 8, !tbaa !10
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !10
  %.not.peel.i.i = icmp ne i64 %i.j, 0
  %exitcond.peel.not.i.i = icmp eq i32 %1, 1
  %or.cond = or i1 %exitcond.peel.not.i.i, %.not.peel.i.i
  br i1 %or.cond, label %_ZN4llvh5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !10
  %.not.i.i = icmp ne i64 %i.m, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  %or.cond3 = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3, label %_ZN4llvh5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit:             ; preds = %.lr.ph.i.i, %bb.a, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr21 = phi ptr [ %1, %bb.a ], [ %.tr22, %tailrecurse ] ; 2 uses
  %.tr22 = phi ptr [ %2, %bb.a ], [ %.tr21, %tailrecurse ] ; 2 uses
  %.tr23 = phi i32 [ %3, %bb.a ], [ %.tr24, %tailrecurse ] ; 4 uses
  %.tr24 = phi i32 [ %4, %bb.a ], [ %.tr23, %tailrecurse ] ; 6 uses
  %i.a = icmp ugt i32 %.tr23, %.tr24
  br i1 %i.a, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store i64 0, ptr %0, align 8, !tbaa !10
  %i.b = icmp ugt i32 %.tr24, 1
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN4llvh5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.c = add i32 %.tr24, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.e, i1 false), !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %bb.b, %.lr.ph.preheader.i
  %.not = icmp eq i32 %.tr23, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APInt5tcSetEPmmj.exit
  %i.f = add i32 %.tr24, 1
  %wide.trip.count = zext i32 %.tr23 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.tr21, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.g, ptr noundef %.tr22, i64 noundef %i.i, i64 noundef 0, i32 noundef %.tr24, i32 noundef %i.f, i1 noundef zeroext true) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !648

._crit_edge:                                      ; preds = %bb.c, %_ZN4llvh5APInt5tcSetEPmmj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh5APInt8tcDivideEPmPKmS1_S1_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.08.i = phi i32 [ %4, %bb.a ], [ %i.e, %bb.c ]
  %i.e = add i32 %.08.i, -1                       ; 4 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvh5APInt5tcMSBEPKmj.exit

bb.c:                                             ; preds = %bb.b
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %_ZN4llvh5APInt5tcMSBEPKmj.exit.thread, label %bb.b, !llvm.loop !642

_ZN4llvh5APInt5tcMSBEPKmj.exit:                   ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = shl i32 %i.e, 6
  %i.l = or disjoint i32 %i.k, %i.j
  %i.m = xor i32 %i.l, 63
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvh5APInt5tcMSBEPKmj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APInt5tcMSBEPKmj.exit
  %i.p = shl i32 %4, 6
  %i.q = sub i32 %i.p, %i.n                       ; 4 uses
  %i.r = lshr i32 %i.q, 6                         ; 3 uses
  %i.s = and i32 %i.q, 63                         ; 3 uses
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  %i.u = shl nuw i64 1, %i.t
  %.not.i45 = icmp eq i32 %4, 0                   ; 4 uses
  br i1 %.not.i45, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %4 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %i.v = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !10
  %wide.load126 = load <2 x i64>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %wide.load, ptr %i.y, align 8, !tbaa !10
  store <2 x i64> %wide.load126, ptr %i.z, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !649

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.prol
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !650

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !10
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i, !llvm.loop !651

_ZN4llvh5APInt8tcAssignEPmPKmj.exit:              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.not.i46 = icmp eq i32 %i.q, 0
  br i1 %.not.i46, label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.r) ; 12 uses
  %i.as = icmp eq i32 %i.s, 0
  br i1 %i.as, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.at = icmp ult i32 %i.r, %4
  br i1 %i.at, label %.lr.ph.i47, label %.loopexit.i

.lr.ph.i47:                                       ; preds = %.preheader.i
  %i.au = sub nuw nsw i32 64, %i.s
  %i.av = zext nneg i32 %i.au to i64              ; 3 uses
  %i.aw = zext i32 %4 to i64                      ; 3 uses
  %indvars.iv.next.i4987 = add nsw i64 %i.aw, -1  ; 5 uses
  %indvars.i88 = trunc nuw i64 %indvars.iv.next.i4987 to i32 ; 2 uses
  %i.ax = sub i32 %indvars.i88, %.sroa.speculated.i
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bb = shl i64 %i.ba, %i.t                     ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i4987 ; 3 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !10
  %i.bd = icmp ult i32 %.sroa.speculated.i, %indvars.i88
  br i1 %i.bd, label %.lr.ph.preheader, label %.loopexit.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i47
  %i.be = xor i32 %.sroa.speculated.i, -1
  %i.bf = sext i32 %i.be to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.bf ; 3 uses
  %i.bg = add i32 %4, -2
  %5 = sub i32 %.sroa.speculated.i, %4
  %xtraiter152 = and i32 %5, 1
  %lcmp.mod153.not = icmp eq i32 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.i4987
  %i.bh = load i64, ptr %gep.prol, align 8, !tbaa !10
  %i.bi = lshr i64 %i.bh, %i.av
  %i.bj = or i64 %i.bi, %i.bb
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next.i49.prol = add nsw i64 %i.aw, -2 ; 3 uses
  %indvars.prol = trunc i64 %indvars.iv.next.i49.prol to i32
  %i.bk = sub i32 %indvars.prol, %.sroa.speculated.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = shl i64 %i.bn, %i.t                     ; 2 uses
  %i.bp = and i64 %indvars.iv.next.i49.prol, 4294967295
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bp ; 2 uses
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !10
  %indvars.iv.next.prol = add nsw i64 %i.aw, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bq, %.lr.ph.prol ]
  %.unr155 = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %indvars.iv.next.i4989.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.i49.prol, %.lr.ph.prol ]
  %i.br = icmp eq i32 %i.bg, %.sroa.speculated.i
  br i1 %i.br, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.bs = zext nneg i32 %.sroa.speculated.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs
  %i.bu = sub i32 %4, %.sroa.speculated.i
  %i.bv = shl i32 %i.bu, 3
  %i.bw = zext i32 %i.bv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bt, ptr align 8 %3, i64 %i.bw, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bx = phi ptr [ %i.ct, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.by = phi i64 [ %i.cr, %.lr.ph ], [ %.unr155, %.lr.ph.prol.loopexit ]
  %indvars.iv.next.i4989 = phi i64 [ %indvars.iv.next.i49.1, %.lr.ph ], [ %indvars.iv.next.i4989.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bz = load i64, ptr %gep, align 8, !tbaa !10
  %i.ca = lshr i64 %i.bz, %i.av
  %i.cb = or i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !10
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.next.i4989, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next.i49 to i32
  %i.cc = sub i32 %indvars, %.sroa.speculated.i
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cg = shl i64 %i.cf, %i.t                     ; 2 uses
  %i.ch = and i64 %indvars.iv.next.i49, 4294967295
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ch ; 2 uses
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !10
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.cj, i64 -8
  %i.ck = load i64, ptr %gep.1, align 8, !tbaa !10
  %i.cl = lshr i64 %i.ck, %i.av
  %i.cm = or i64 %i.cl, %i.cg
  store i64 %i.cm, ptr %i.ci, align 8, !tbaa !10
  %indvars.iv.next.i49.1 = add nsw i64 %indvars.iv.next.i4989, -2 ; 3 uses
  %indvars.1 = trunc i64 %indvars.iv.next.i49.1 to i32 ; 2 uses
  %i.cn = sub i32 %indvars.1, %.sroa.speculated.i
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = shl i64 %i.cq, %i.t                     ; 2 uses
  %i.cs = and i64 %indvars.iv.next.i49.1, 4294967295
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cs ; 2 uses
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !10
  %i.cu = icmp ult i32 %.sroa.speculated.i, %indvars.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  br i1 %i.cu, label %.lr.ph, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph.i47, %bb.f, %.preheader.i
  %i.cv = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.cw = zext nneg i32 %i.cv to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.cw, i1 false)
  br label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit

_ZN4llvh5APInt11tcShiftLeftEPmjj.exit:            ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, %.loopexit.i
  br i1 %.not.i45, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, label %.lr.ph.preheader.i51

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread:     ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  store i64 0, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i51:                             ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  %wide.trip.count.i52 = zext i32 %4 to i64       ; 6 uses
  %min.iters.check130 = icmp ult i32 %4, 8
  %i.cx = sub i64 %i.a, %i.b
  %diff.check128 = icmp ugt i64 %i.cx, -32
  %or.cond142 = or i1 %min.iters.check130, %diff.check128
  br i1 %or.cond142, label %.lr.ph.i53.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.preheader.i51
  %n.vec133 = and i64 %wide.trip.count.i52, 4294967292 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index135 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load136 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !10
  %wide.load137 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index135 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load136, ptr %i.da, align 8, !tbaa !10
  store <2 x i64> %wide.load137, ptr %i.db, align 8, !tbaa !10
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.dc, label %middle.block139, label %vector.body134, !llvm.loop !652

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %n.vec133, %wide.trip.count.i52
  br i1 %cmp.n140, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.lr.ph.preheader.i51, %middle.block139
  %indvars.iv.i54.ph = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %xtraiter156 = and i64 %wide.trip.count.i52, 3  ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53.prol
  %indvars.iv.i54.prol = phi i64 [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ], [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54.prol
  store i64 %i.de, ptr %i.df, align 8, !tbaa !10
  %indvars.iv.next.i55.prol = add nuw nsw i64 %indvars.iv.i54.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !653

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %indvars.iv.i54.unr = phi i64 [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ], [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i54.ph, %wide.trip.count.i52
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.3, %.lr.ph.i53 ], [ %indvars.iv.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !10
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !10
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.1
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !10
  %indvars.iv.next.i55.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.2
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !10
  %indvars.iv.next.i55.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %exitcond.not.i56.3 = icmp eq i64 %indvars.iv.next.i55.3, %wide.trip.count.i52
  br i1 %exitcond.not.i56.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53, !llvm.loop !654

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57:            ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block139
  store i64 0, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %_ZN4llvh5APInt5tcSetEPmmj.exit, label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.du = add i32 %4, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dw, i1 false), !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, %.lr.ph.preheader.i58
  %.pre-phi = phi i64 [ 0, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread ], [ 1, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57 ], [ %wide.trip.count.i52, %.lr.ph.preheader.i58 ] ; 5 uses
  %.not32.i91 = icmp eq i32 %4, 1
  %i.dx = add nsw i64 %.pre-phi, -1               ; 3 uses
  %.not.i60123 = icmp eq i64 %.pre-phi, 0
  %xtraiter159 = and i64 %i.dx, 1
  %i.dy = icmp eq i64 %.pre-phi, 2
  %unroll_iter = and i64 %i.dx, -2
  %lcmp.mod163.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod164 = trunc i64 %i.dx to i1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4llvh5APInt5tcSetEPmmj.exit
  %.040 = phi i32 [ %i.q, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %i.et, %.loopexit ] ; 2 uses
  %.036 = phi i32 [ %i.r, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select, %.loopexit ] ; 2 uses
  %.035 = phi i64 [ %i.u, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select44, %.loopexit ] ; 2 uses
  br i1 %.not.i60123, label %select.unfold, label %.lr.ph125

end_hunk_1
