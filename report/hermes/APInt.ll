inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZNK4llvh5APInt4sqrtEv:bb.a

bb.g:                                             ; preds = %bb.f
  %i.bn = zext i32 %i.b to i64
  %i.bo = add nuw nsw i64 %i.bn, 63
  %i.bp = lshr i64 %i.bo, 6                       ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.br = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %i.bq, i1 false)
  store ptr %i.br, ptr %0, align 8, !tbaa !9
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !10
  %.pn.in.in.i10 = sub i32 0, %i.b
  %.pn.in.i11 = and i32 %.pn.in.in.i10, 63
  %.pn.i12 = zext nneg i32 %.pn.in.i11 to i64
  %i.bs = lshr i64 -1, %.pn.i12
  %i.bt = add nuw nsw i64 %i.bp, 4294967295
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.bx = and i64 %i.bw, %i.bs
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit36.thread:               ; preds = %bb.e
  %i.by = zext i32 %i.b to i64
  %i.bz = add nuw nsw i64 %i.by, 63
  %i.ca = lshr i64 %i.bz, 6                       ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3                ; 8 uses
  %i.cc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %i.cb, i1 false)
  %i.cd = ptrtoint ptr %i.cc to i64
  store i64 16, ptr %i.cc, align 8, !tbaa !10
  %.pn.in.in.i17 = sub i32 0, %i.b
  %.pn.in.i18 = and i32 %.pn.in.in.i17, 63
  %.pn.i19 = zext nneg i32 %.pn.in.i18 to i64
  %i.ce = lshr i64 -1, %.pn.i19                   ; 4 uses
  %i.cf = add nuw nsw i64 %i.ca, 4294967295
  %i.cg = and i64 %i.cf, 4294967295               ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = and i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.ck, align 8, !tbaa !7
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #22 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.cb, i1 false)
  store ptr %i.cl, ptr %2, align 8, !tbaa !9
  store i64 1, ptr %i.cl, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cg ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = and i64 %i.cn, %i.ce
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.cp, align 8, !tbaa !7
  %i.cq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cq, i8 0, i64 %i.cb, i1 false)
  store i64 0, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cg ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = and i64 %i.cs, %i.ce
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #22 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %i.cb, i1 false)
  store i64 2, ptr %i.cu, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cg ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = and i64 %i.cw, %i.ce
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !10
  %i.cy = ptrtoint ptr %i.cl to i64
  store ptr %i.cq, ptr %3, align 8, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.cz, align 8, !tbaa !7
  store ptr %i.cu, ptr %4, align 8, !tbaa !9
  br label %.lr.ph

_ZN4llvh5APIntC2Ejmb.exit36:                      ; preds = %.thread433
  %i.da = sub nsw i32 0, %i.b
  %i.db = and i32 %i.da, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 -1, %i.dc                      ; 2 uses
  %i.de = and i64 %i.dd, 16                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %i.b, ptr %i.df, align 8, !tbaa !7
  store i64 1, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.b, ptr %i.dg, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dh = and i64 %i.dd, 2
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.dj, align 8, !tbaa !7
  store ptr %i.di, ptr %4, align 8, !tbaa !9
  %.not357 = icmp samesign ugt i32 %i.b, 4
  br i1 %.not357, label %.lr.ph, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit36.thread, %_ZN4llvh5APIntC2Ejmb.exit36
  %i.dk = phi ptr [ %i.cp, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ %i.dg, %_ZN4llvh5APIntC2Ejmb.exit36 ] ; 5 uses
  %.sroa.0245.1255258261440 = phi i64 [ %i.cd, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ %i.de, %_ZN4llvh5APIntC2Ejmb.exit36 ]
  %i.dl = phi ptr [ %i.ck, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ %i.df, %_ZN4llvh5APIntC2Ejmb.exit36 ] ; 5 uses
  %i.dm = phi ptr [ %i.cu, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ %i.di, %_ZN4llvh5APIntC2Ejmb.exit36 ] ; 5 uses
  %i.dn = phi ptr [ %i.cl, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ inttoptr (i64 1 to ptr), %_ZN4llvh5APIntC2Ejmb.exit36 ] ; 5 uses
  %i.do = phi i64 [ %i.cy, %_ZN4llvh5APIntC2Ejmb.exit36.thread ], [ 1, %_ZN4llvh5APIntC2Ejmb.exit36 ] ; 5 uses
  %i.dp = zext i32 %i.b to i64
  %i.dq = add nuw nsw i64 %i.dp, 63               ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 1073741816               ; 2 uses
  %i.dt = lshr i64 %i.dq, 6                       ; 5 uses
  %indvars.iv.next.i1.i167 = add nsw i64 %i.dt, -1 ; 4 uses
  %i.du = sub i32 0, %i.b
  %i.dv = and i32 %i.du, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = lshr i64 -1, %i.dw                      ; 2 uses
  %i.dy = add nuw nsw i64 %i.dt, 4294967295
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = trunc nuw nsw i64 %i.dt to i32
  %i.eb = and i32 %i.ea, 1
  %lcmp.mod.not.not = icmp eq i32 %i.eb, 0
  %indvars.iv.next.i177.prol = add nsw i64 %i.dt, -2 ; 2 uses
  %i.ec = and i64 %indvars.iv.next.i177.prol, 4294967295
  %i.ed = icmp eq i64 %i.dt, 2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvh5APIntD2Ev.exit43
  %.0359 = phi i32 [ 4, %.lr.ph ], [ %i.ii, %_ZN4llvh5APIntD2Ev.exit43 ] ; 5 uses
  %.sroa.0245.0358 = phi i64 [ %.sroa.0245.1255258261440, %.lr.ph ], [ %.sroa.0229.0265, %_ZN4llvh5APIntD2Ev.exit43 ] ; 9 uses
  %i.ee = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 65
  br i1 %i.ef, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eg = load i64, ptr %1, align 8, !tbaa !9
  %.not327 = icmp ugt i64 %i.eg, %.sroa.0245.0358
  br i1 %.not327, label %bb.p, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.eh = load ptr, ptr %1, align 8, !tbaa !9
  %i.ei = inttoptr i64 %.sroa.0245.0358 to ptr
  %i.ej = zext i32 %i.ee to i64
  %i.ek = add nuw nsw i64 %i.ej, 63
  %i.el = lshr i64 %i.ek, 6                       ; 2 uses
  %.not.i.i.i37502 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i37502, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, label %.lr.ph504

bb.k:                                             ; preds = %.lr.ph504
  %.not.i.i.i37 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i37, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, label %.lr.ph504, !llvm.loop !84

.lr.ph504:                                        ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i503 = phi i64 [ %i.em, %bb.k ], [ %i.el, %bb.j ]
  %i.em = add nsw i64 %indvars.iv.i.i.i503, -1    ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.em
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.eo, %i.eq
  br i1 %.not13.i.i.i, label %bb.k, label %_ZNK4llvh5APInt3uleERKS0_.exit, !llvm.loop !84

_ZNK4llvh5APInt3uleERKS0_.exit:                   ; preds = %.lr.ph504
  %.not326 = icmp ugt i64 %i.eo, %i.eq
  br i1 %.not326, label %bb.p, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread

_ZNK4llvh5APInt3uleERKS0_.exit.thread:            ; preds = %_ZN4llvh5APIntD2Ev.exit43, %_ZNK4llvh5APInt3uleERKS0_.exit, %bb.i, %bb.j, %bb.k, %_ZN4llvh5APIntC2Ejmb.exit36
  %i.er = phi ptr [ %i.dk, %bb.k ], [ %i.dg, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.dk, %bb.j ], [ %i.dk, %bb.i ], [ %i.dk, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %i.dk, %_ZN4llvh5APIntD2Ev.exit43 ] ; 3 uses
  %i.es = phi ptr [ %i.dl, %bb.k ], [ %i.df, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.dl, %bb.j ], [ %i.dl, %bb.i ], [ %i.dl, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %i.dl, %_ZN4llvh5APIntD2Ev.exit43 ] ; 9 uses
  %i.et = phi ptr [ %i.dm, %bb.k ], [ %i.di, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.dm, %bb.j ], [ %i.dm, %bb.i ], [ %i.dm, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %i.dm, %_ZN4llvh5APIntD2Ev.exit43 ] ; 2 uses
  %i.eu = phi ptr [ %i.dn, %bb.k ], [ inttoptr (i64 1 to ptr), %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.dn, %bb.j ], [ %i.dn, %bb.i ], [ %i.dn, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %i.dn, %_ZN4llvh5APIntD2Ev.exit43 ] ; 2 uses
  %i.ev = phi i64 [ %i.do, %bb.k ], [ 1, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %i.do, %bb.j ], [ %i.do, %bb.i ], [ %i.do, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %i.do, %_ZN4llvh5APIntD2Ev.exit43 ]
  %.sroa.0245.0353 = phi i64 [ %.sroa.0245.0358, %bb.k ], [ %i.de, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %.sroa.0245.0358, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %.sroa.0245.0358, %bb.i ], [ %.sroa.0229.0265, %_ZN4llvh5APIntD2Ev.exit43 ], [ %.sroa.0245.0358, %bb.j ] ; 2 uses
  %.0351 = phi i32 [ %.0359, %bb.k ], [ 4, %_ZN4llvh5APIntC2Ejmb.exit36 ], [ %.0359, %_ZNK4llvh5APInt3uleERKS0_.exit ], [ %.0359, %bb.i ], [ %i.ii, %_ZN4llvh5APIntD2Ev.exit43 ], [ %.0359, %bb.j ] ; 3 uses
  %i.ew = lshr exact i32 %.0351, 1                ; 3 uses
  %i.ex = load i32, ptr %i.es, align 8, !tbaa !7, !noalias !208 ; 6 uses
  %i.ey = icmp ult i32 %i.ex, 65
  br i1 %i.ey, label %_ZNK4llvh5APInt3shlEj.exit.thread, label %bb.l

_ZNK4llvh5APInt3shlEj.exit.thread:                ; preds = %_ZNK4llvh5APInt3uleERKS0_.exit.thread
  %i.ez = icmp eq i32 %i.ew, %i.ex
  %i.fa = zext nneg i32 %i.ew to i64
  %i.fb = shl i64 %i.ev, %i.fa
  %storemerge.i.i = select i1 %i.ez, i64 0, i64 %i.fb
  %i.fc = sub nsw i32 0, %i.ex
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = lshr i64 -1, %i.fe
  %i.fg = and i64 %storemerge.i.i, %i.ff
  br label %_ZN4llvh5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZNK4llvh5APInt3uleERKS0_.exit.thread
  %i.fh = zext i32 %i.ex to i64
  %i.fi = add nuw nsw i64 %i.fh, 63               ; 2 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = and i64 %i.fj, 1073741816               ; 2 uses
  %i.fl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fk) #22, !noalias !208 ; 15 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull align 8 %i.eu, i64 %i.fk, i1 false), !noalias !208
  %i.fn = lshr i64 %i.fi, 6                       ; 4 uses
  %i.fo = trunc nuw nsw i64 %i.fn to i32          ; 5 uses
  %.not.i.i = icmp eq i32 %.0351, 0
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fp = lshr i32 %.0351, 7                      ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.fp) ; 12 uses
  %i.fq = and i32 %i.ew, 63                       ; 3 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.n, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %i.fs = icmp samesign ult i32 %i.fp, %i.fo
  br i1 %i.fs, label %.lr.ph.i.i158, label %.loopexit.i.i

.lr.ph.i.i158:                                    ; preds = %.preheader.i.i
  %i.ft = zext nneg i32 %i.fq to i64              ; 4 uses
  %i.fu = sub nuw nsw i32 64, %i.fq
  %i.fv = zext nneg i32 %i.fu to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.fn, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.fw = sub nsw i32 %indvars.i2.i, %.sroa.speculated.i.i
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !10
  %i.ga = shl i64 %i.fz, %i.ft                    ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !10
  %i.gc = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.gc, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i158
  %i.gd = xor i32 %.sroa.speculated.i.i, -1
  %i.ge = sext i32 %i.gd to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.fl, i64 %i.ge ; 3 uses
  %i.gf = add nsw i32 %i.fo, -2
  %10 = sub nsw i32 %.sroa.speculated.i.i, %i.fo
  %i.gg = and i32 %10, 1
  %lcmp.mod564.not.not = icmp eq i32 %i.gg, 0
  br i1 %lcmp.mod564.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.gh = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.gi = lshr i64 %i.gh, %i.fv
  %i.gj = or i64 %i.gi, %i.ga
  store i64 %i.gj, ptr %i.gb, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.fn, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.gk = sub nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = shl i64 %i.gn, %i.ft                    ; 2 uses
  %i.gp = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gp ; 2 uses
  store i64 %i.go, ptr %i.gq, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr565 = phi ptr [ %i.gb, %.lr.ph.preheader.i ], [ %i.gq, %.lr.ph.i.prol ]
  %.unr566 = phi i64 [ %i.ga, %.lr.ph.preheader.i ], [ %i.go, %.lr.ph.i.prol ]
  %i.gr = icmp eq i32 %i.gf, %.sroa.speculated.i.i
  br i1 %i.gr, label %.loopexit.i.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %i.gs = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gs
  %i.gu = sub nsw i32 %i.fo, %.sroa.speculated.i.i
  %i.gv = shl nsw i32 %i.gu, 3
  %i.gw = zext i32 %i.gv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr nonnull align 8 %i.fl, i64 %i.gw, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.gx = phi ptr [ %i.hs, %.lr.ph.i ], [ %.unr565, %.lr.ph.i.prol.loopexit ]
  %i.gy = phi i64 [ %i.hq, %.lr.ph.i ], [ %.unr566, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.gz = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.ha = lshr i64 %i.gz, %i.fv
  %i.hb = or i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gx, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.hc = sub i32 %indvars.i, %.sroa.speculated.i.i
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !10
  %i.hg = shl i64 %i.hf, %i.ft                    ; 2 uses
  %i.hh = and i64 %indvars.iv.next.i, 4294967295
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hh ; 2 uses
  store i64 %i.hg, ptr %i.hi, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.hj = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.hk = lshr i64 %i.hj, %i.fv
  %i.hl = or i64 %i.hk, %i.hg
  store i64 %i.hl, ptr %i.hi, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.hm = sub i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !10
  %i.hq = shl i64 %i.hp, %i.ft                    ; 2 uses
  %i.hr = and i64 %indvars.iv.next.i.1, 4294967295
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hr ; 2 uses
  store i64 %i.hq, ptr %i.hs, align 8, !tbaa !10
  %i.ht = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.ht, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %.lr.ph.i.i158, %.preheader.i.i
  %i.hu = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.hv = zext nneg i32 %i.hu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fl, i8 0, i64 %i.hv, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %.loopexit.i.i
  %i.hw = sub i32 0, %i.ex
  %i.hx = and i32 %i.hw, 63
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 -1, %i.hy
  %i.ia = add nuw nsw i64 %i.fn, 4294967295
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ib ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !10
  %i.ie = and i64 %i.id, %i.hz
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !10
  tail call void @_ZdaPv(ptr noundef nonnull %i.eu) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInt3shlEj.exit.thread, %bb.o
  %.sroa.0236.0442 = phi i64 [ %i.fg, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %i.fm, %bb.o ]
  store i64 %.sroa.0236.0442, ptr %2, align 8
  store i32 %i.ex, ptr %i.es, align 8, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.i, %_ZNK4llvh5APInt3uleERKS0_.exit
  %i.ii = add i32 %.0359, 2                       ; 3 uses
  br i1 %i.c, label %_ZNK4llvh5APInt3shlEj.exit41.thread, label %.lr.ph.i.i166

_ZNK4llvh5APInt3shlEj.exit41.thread:              ; preds = %bb.p
  %i.ij = shl i64 %.sroa.0245.0358, 2
  %i.ik = and i64 %i.ij, %i.dx
  br label %_ZN4llvh5APIntD2Ev.exit43

.lr.ph.i.i166:                                    ; preds = %bb.p
  %i.il = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ds) #22, !noalias !211 ; 9 uses
  %i.im = inttoptr i64 %.sroa.0245.0358 to ptr    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.il, ptr align 8 %i.im, i64 %i.ds, i1 false), !noalias !211
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next.i1.i167
  %i.io = load i64, ptr %i.in, align 8, !tbaa !10
  %i.ip = shl i64 %i.io, 2                        ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next.i1.i167 ; 3 uses
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !10
  %invariant.gep.i170 = getelementptr i8, ptr %i.il, i64 -8 ; 3 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i171.prol, label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol:                                 ; preds = %.lr.ph.i.i166
  %gep.i174.prol = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.next.i1.i167
  %i.ir = load i64, ptr %gep.i174.prol, align 8, !tbaa !10
  %i.is = lshr i64 %i.ir, 62
  %i.it = or disjoint i64 %i.is, %i.ip
  store i64 %i.it, ptr %i.iq, align 8, !tbaa !10
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ec ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = shl i64 %i.iv, 2                        ; 2 uses
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !10
  br label %.lr.ph.i171.prol.loopexit

.lr.ph.i171.prol.loopexit:                        ; preds = %.lr.ph.i171.prol, %.lr.ph.i.i166
  %indvars.iv.i172.unr = phi i64 [ %indvars.iv.next.i1.i167, %.lr.ph.i.i166 ], [ %indvars.iv.next.i177.prol, %.lr.ph.i171.prol ]
  %.unr = phi ptr [ %i.iq, %.lr.ph.i.i166 ], [ %i.iu, %.lr.ph.i171.prol ]
  %.unr562 = phi i64 [ %i.ip, %.lr.ph.i.i166 ], [ %i.iw, %.lr.ph.i171.prol ]
  br i1 %i.ed, label %.unr-lcssa, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171.prol.loopexit, %.lr.ph.i171
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i177.1, %.lr.ph.i171 ], [ %indvars.iv.i172.unr, %.lr.ph.i171.prol.loopexit ] ; 3 uses
  %i.ix = phi ptr [ %i.jk, %.lr.ph.i171 ], [ %.unr, %.lr.ph.i171.prol.loopexit ]
  %i.iy = phi i64 [ %i.jm, %.lr.ph.i171 ], [ %.unr562, %.lr.ph.i171.prol.loopexit ]
  %gep.i174 = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.i172
  %i.iz = load i64, ptr %gep.i174, align 8, !tbaa !10
  %i.ja = lshr i64 %i.iz, 62
  %i.jb = or disjoint i64 %i.ja, %i.iy
  store i64 %i.jb, ptr %i.ix, align 8, !tbaa !10
  %indvars.iv.next.i177 = add nsw i64 %indvars.iv.i172, -1 ; 2 uses
  %i.jc = and i64 %indvars.iv.next.i177, 4294967295
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jc ; 3 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !10
  %i.jf = shl i64 %i.je, 2                        ; 2 uses
  store i64 %i.jf, ptr %i.jd, align 8, !tbaa !10
  %gep.i174.1 = getelementptr [8 x i8], ptr %invariant.gep.i170, i64 %indvars.iv.next.i177
  %i.jg = load i64, ptr %gep.i174.1, align 8, !tbaa !10
  %i.jh = lshr i64 %i.jg, 62
  %i.ji = or disjoint i64 %i.jh, %i.jf
  store i64 %i.ji, ptr %i.jd, align 8, !tbaa !10
  %indvars.iv.next.i177.1 = add nsw i64 %indvars.iv.i172, -2 ; 2 uses
  %i.jj = and i64 %indvars.iv.next.i177.1, 4294967295 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jj ; 3 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !10
  %i.jm = shl i64 %i.jl, 2                        ; 2 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !10
  %.not328.1 = icmp eq i64 %i.jj, 0
  br i1 %.not328.1, label %.unr-lcssa, label %.lr.ph.i171

.unr-lcssa:                                       ; preds = %.lr.ph.i171, %.lr.ph.i171.prol.loopexit
  %i.jn = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.dz ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !10
  %i.jq = and i64 %i.jp, %i.dx
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !10
  %i.jr = icmp eq i64 %.sroa.0245.0358, 0
  br i1 %i.jr, label %_ZN4llvh5APIntD2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %.unr-lcssa
  tail call void @_ZdaPv(ptr noundef nonnull %i.im) #23
  br label %_ZN4llvh5APIntD2Ev.exit43

_ZN4llvh5APIntD2Ev.exit43:                        ; preds = %bb.q, %.unr-lcssa, %_ZNK4llvh5APInt3shlEj.exit41.thread
  %.sroa.0229.0265 = phi i64 [ %i.ik, %_ZNK4llvh5APInt3shlEj.exit41.thread ], [ %i.jn, %bb.q ], [ %i.jn, %.unr-lcssa ] ; 2 uses
  %.not = icmp ult i32 %i.ii, %i.b
  br i1 %.not, label %bb.h, label %_ZNK4llvh5APInt3uleERKS0_.exit.thread, !llvm.loop !214

bb.r:                                             ; preds = %bb.aa, %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvh5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.js = load i32, ptr %i.if, align 8, !tbaa !7, !noalias !215 ; 6 uses
  %i.jt = icmp ult i32 %i.js, 65
  br i1 %i.jt, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i:     ; preds = %bb.r
  %i.ju = load i64, ptr %2, align 8, !tbaa !9, !noalias !215
  %i.jv = load i64, ptr %7, align 8, !tbaa !9, !noalias !215
  %i.jw = add i64 %i.jv, %i.ju
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
  %min.iters.check = icmp ult i32 %4, 6
  %i.v = sub i64 %i.d, %i.c
  %diff.check = icmp ult i64 %i.v, 32
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
  %i.bh = and i32 %5, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.bh, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.i4987
  %i.bi = load i64, ptr %gep.prol, align 8, !tbaa !10
  %i.bj = lshr i64 %i.bi, %i.av
  %i.bk = or i64 %i.bj, %i.bb
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next.i49.prol = add nsw i64 %i.aw, -2 ; 3 uses
  %indvars.prol = trunc i64 %indvars.iv.next.i49.prol to i32
  %i.bl = sub i32 %indvars.prol, %.sroa.speculated.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = shl i64 %i.bo, %i.t                     ; 2 uses
  %i.bq = and i64 %indvars.iv.next.i49.prol, 4294967295
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bq ; 2 uses
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !10
  %indvars.iv.next.prol = add nsw i64 %i.aw, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.br, %.lr.ph.prol ]
  %.unr155 = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %indvars.iv.next.i4989.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.i49.prol, %.lr.ph.prol ]
  %i.bs = icmp eq i32 %i.bg, %.sroa.speculated.i
  br i1 %i.bs, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.bt = zext nneg i32 %.sroa.speculated.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bt
  %i.bv = sub i32 %4, %.sroa.speculated.i
  %i.bw = shl i32 %i.bv, 3
  %i.bx = zext i32 %i.bw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bu, ptr align 8 %3, i64 %i.bx, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.by = phi ptr [ %i.cu, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.bz = phi i64 [ %i.cs, %.lr.ph ], [ %.unr155, %.lr.ph.prol.loopexit ]
  %indvars.iv.next.i4989 = phi i64 [ %indvars.iv.next.i49.1, %.lr.ph ], [ %indvars.iv.next.i4989.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ca = load i64, ptr %gep, align 8, !tbaa !10
  %i.cb = lshr i64 %i.ca, %i.av
  %i.cc = or i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !10
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.next.i4989, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next.i49 to i32
  %i.cd = sub i32 %indvars, %.sroa.speculated.i
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.ch = shl i64 %i.cg, %i.t                     ; 2 uses
  %i.ci = and i64 %indvars.iv.next.i49, 4294967295
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ci ; 2 uses
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !10
  %i.ck = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ck, i64 -8
  %i.cl = load i64, ptr %gep.1, align 8, !tbaa !10
  %i.cm = lshr i64 %i.cl, %i.av
  %i.cn = or i64 %i.cm, %i.ch
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !10
  %indvars.iv.next.i49.1 = add nsw i64 %indvars.iv.next.i4989, -2 ; 3 uses
  %indvars.1 = trunc i64 %indvars.iv.next.i49.1 to i32 ; 2 uses
  %i.co = sub i32 %indvars.1, %.sroa.speculated.i
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = shl i64 %i.cr, %i.t                     ; 2 uses
  %i.ct = and i64 %indvars.iv.next.i49.1, 4294967295
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ct ; 2 uses
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !10
  %i.cv = icmp ult i32 %.sroa.speculated.i, %indvars.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  br i1 %i.cv, label %.lr.ph, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph.i47, %bb.f, %.preheader.i
  %i.cw = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.cx = zext nneg i32 %i.cw to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.cx, i1 false)
  br label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit

_ZN4llvh5APInt11tcShiftLeftEPmjj.exit:            ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, %.loopexit.i
  br i1 %.not.i45, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, label %.lr.ph.preheader.i51

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread:     ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  store i64 0, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i51:                             ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  %wide.trip.count.i52 = zext i32 %4 to i64       ; 6 uses
  %min.iters.check130 = icmp ult i32 %4, 6
  %i.cy = sub i64 %i.b, %i.a
  %diff.check128 = icmp ult i64 %i.cy, 32
  %or.cond142 = or i1 %min.iters.check130, %diff.check128
  br i1 %or.cond142, label %.lr.ph.i53.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.preheader.i51
  %n.vec133 = and i64 %wide.trip.count.i52, 4294967292 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index135 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load136 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !10
  %wide.load137 = load <2 x i64>, ptr %i.da, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index135 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x i64> %wide.load136, ptr %i.db, align 8, !tbaa !10
  store <2 x i64> %wide.load137, ptr %i.dc, align 8, !tbaa !10
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.dd, label %middle.block139, label %vector.body134, !llvm.loop !652

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
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54.prol
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54.prol
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !10
  %indvars.iv.next.i55.prol = add nuw nsw i64 %indvars.iv.i54.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !653

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %indvars.iv.i54.unr = phi i64 [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ], [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ]
  %i.dh = sub nsw i64 %indvars.iv.i54.ph, %wide.trip.count.i52
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.3, %.lr.ph.i53 ], [ %indvars.iv.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !10
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !10
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.1
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.1
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !10
  %indvars.iv.next.i55.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.2
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.2
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !10
  %indvars.iv.next.i55.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %exitcond.not.i56.3 = icmp eq i64 %indvars.iv.next.i55.3, %wide.trip.count.i52
  br i1 %exitcond.not.i56.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53, !llvm.loop !654

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57:            ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block139
  store i64 0, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %_ZN4llvh5APInt5tcSetEPmmj.exit, label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.dv = add i32 %4, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dx, i1 false), !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, %.lr.ph.preheader.i58
  %.pre-phi = phi i64 [ 0, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread ], [ 1, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57 ], [ %wide.trip.count.i52, %.lr.ph.preheader.i58 ] ; 5 uses
  %.not32.i91 = icmp eq i32 %4, 1
  %i.dy = add nsw i64 %.pre-phi, -1               ; 3 uses
  %.not.i60123 = icmp eq i64 %.pre-phi, 0
  %xtraiter159 = and i64 %i.dy, 1
  %i.dz = icmp eq i64 %.pre-phi, 2
  %unroll_iter = and i64 %i.dy, -2
  %lcmp.mod163.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod164 = trunc i64 %i.dy to i1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4llvh5APInt5tcSetEPmmj.exit
  %.040 = phi i32 [ %i.q, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %i.eu, %.loopexit ] ; 2 uses
  %.036 = phi i32 [ %i.r, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select, %.loopexit ] ; 2 uses
  %.035 = phi i64 [ %i.u, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select44, %.loopexit ] ; 2 uses
  br i1 %.not.i60123, label %select.unfold, label %.lr.ph125

end_hunk_1
