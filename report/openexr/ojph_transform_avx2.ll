inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local18avx2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = and i32 %i.b, 4
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = and i32 %i.e, 4
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !11
  %.val28 = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !11
  %i.h = getelementptr i8, ptr %3, i64 16
  %.val29 = load ptr, ptr %i.h, align 8, !tbaa !11
  tail call fastcc void @_ZN4ojph5localL20avx2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr %.val27, ptr %.val28, ptr %.val29, i32 noundef %4, i1 noundef zeroext %5)
  br label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = and i32 %i.j, 4
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %.split17, label %bb.g

.split17:                                         ; preds = %bb.f
  %i.l = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %2, i64 16
  %.val25 = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %3, i64 16
  %.val26 = load ptr, ptr %i.n, align 8, !tbaa !11
  tail call fastcc void @_ZN4ojph5localL20avx2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr %.val, ptr %.val25, ptr %.val26, i32 noundef %4, i1 noundef zeroext %5)
  br label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val30 = load ptr, ptr %i.o, align 8, !tbaa !11 ; 24 uses
  %i.p = getelementptr i8, ptr %2, i64 16
  %.val31 = load ptr, ptr %i.p, align 8, !tbaa !11 ; 24 uses
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val32 = load ptr, ptr %i.q, align 8, !tbaa !11 ; 32 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %6 = load <2 x i16>, ptr %i.r, align 2, !tbaa !11 ; 3 uses
  %7 = sext <2 x i16> %6 to <2 x i32>             ; 2 uses
  %i.s = load i8, ptr %0, align 4, !tbaa !11      ; 4 uses
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.t = shufflevector <2 x i32> %7, <2 x i32> poison, <8 x i32> zeroinitializer ; 18 uses
  %9 = extractelement <2 x i16> %6, i64 1         ; 2 uses
  %i.u = icmp eq i16 %9, 1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %5, label %.preheader.i, label %.preheader10.i

.preheader10.i:                                   ; preds = %bb.h
  br i1 %i.v, label %.lr.ph57.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph57.i:                                       ; preds = %.preheader10.i
  %i.w = zext i8 %i.s to i32                      ; 3 uses
  %i.x = add nsw i32 %4, -1                       ; 2 uses
  %i.y = and i32 %i.x, 8
  %lcmp.mod88.not.not = icmp eq i32 %i.y, 0
  br i1 %lcmp.mod88.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph57.i
  %i.z = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.aa = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.ab = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.ac = add <8 x i32> %i.z, %i.t
  %i.ad = add <8 x i32> %i.ac, %i.aa
  %i.ae = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ad, i32 range(i32 0, 256) %i.w)
  %i.af = add <8 x i32> %i.ae, %i.ab
  store <8 x i32> %i.af, ptr %.val32, align 32, !tbaa !11
  %i.ag = add nsw i32 %4, -8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph57.i
  %.156.i.unr = phi ptr [ %.val32, %.lr.ph57.i ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %.116955.i.unr = phi ptr [ %.val30, %.lr.ph57.i ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.117754.i.unr = phi ptr [ %.val31, %.lr.ph57.i ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.118553.i.unr = phi i32 [ %4, %.lr.ph57.i ], [ %i.ag, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp ult i32 %i.x, 8
  br i1 %i.ak, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph57.i.new

.preheader.i:                                     ; preds = %bb.h
  br i1 %i.v, label %.lr.ph62.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.al = zext i8 %i.s to i32                     ; 3 uses
  %i.am = add nsw i32 %4, -1                      ; 2 uses
  %i.an = and i32 %i.am, 8
  %lcmp.mod92.not.not = icmp eq i32 %i.an, 0
  br i1 %lcmp.mod92.not.not, label %.prol.loopexit90.unr-lcssa, label %.prol.loopexit90

.prol.loopexit90.unr-lcssa:                       ; preds = %.lr.ph62.i
  %i.ao = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.ap = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.aq = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.ar = add <8 x i32> %i.ao, %i.t
  %i.as = add <8 x i32> %i.ar, %i.ap
  %i.at = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.as, i32 range(i32 0, 256) %i.al)
  %i.au = sub <8 x i32> %i.aq, %i.at
  store <8 x i32> %i.au, ptr %.val32, align 32, !tbaa !11
  %i.av = add nsw i32 %4, -8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.prol.loopexit90

.prol.loopexit90:                                 ; preds = %.prol.loopexit90.unr-lcssa, %.lr.ph62.i
  %.061.i.unr = phi ptr [ %.val32, %.lr.ph62.i ], [ %i.aw, %.prol.loopexit90.unr-lcssa ]
  %.016860.i.unr = phi ptr [ %.val30, %.lr.ph62.i ], [ %i.ax, %.prol.loopexit90.unr-lcssa ]
  %.017659.i.unr = phi ptr [ %.val31, %.lr.ph62.i ], [ %i.ay, %.prol.loopexit90.unr-lcssa ]
  %.018458.i.unr = phi i32 [ %4, %.lr.ph62.i ], [ %i.av, %.prol.loopexit90.unr-lcssa ]
  %i.az = icmp ult i32 %i.am, 8
  br i1 %i.az, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph62.i.new

.lr.ph62.i.new:                                   ; preds = %.prol.loopexit90, %.lr.ph62.i.new
  %.061.i = phi ptr [ %i.bs, %.lr.ph62.i.new ], [ %.061.i.unr, %.prol.loopexit90 ] ; 4 uses
  %.016860.i = phi ptr [ %i.bt, %.lr.ph62.i.new ], [ %.016860.i.unr, %.prol.loopexit90 ] ; 3 uses
  %.017659.i = phi ptr [ %i.bu, %.lr.ph62.i.new ], [ %.017659.i.unr, %.prol.loopexit90 ] ; 3 uses
  %.018458.i = phi i32 [ %i.br, %.lr.ph62.i.new ], [ %.018458.i.unr, %.prol.loopexit90 ] ; 2 uses
  %i.ba = load <8 x i32>, ptr %.016860.i, align 32, !tbaa !11
  %i.bb = load <8 x i32>, ptr %.017659.i, align 32, !tbaa !11
  %i.bc = load <8 x i32>, ptr %.061.i, align 32, !tbaa !11
  %i.bd = add <8 x i32> %i.ba, %i.t
  %i.be = add <8 x i32> %i.bd, %i.bb
  %i.bf = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.be, i32 range(i32 0, 256) %i.al)
  %i.bg = sub <8 x i32> %i.bc, %i.bf
  store <8 x i32> %i.bg, ptr %.061.i, align 32, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.061.i, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.016860.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.017659.i, i64 32
  %i.bk = load <8 x i32>, ptr %i.bi, align 32, !tbaa !11
  %i.bl = load <8 x i32>, ptr %i.bj, align 32, !tbaa !11
  %i.bm = load <8 x i32>, ptr %i.bh, align 32, !tbaa !11
  %i.bn = add <8 x i32> %i.bk, %i.t
  %i.bo = add <8 x i32> %i.bn, %i.bl
  %i.bp = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.bo, i32 range(i32 0, 256) %i.al)
  %i.bq = sub <8 x i32> %i.bm, %i.bp
  store <8 x i32> %i.bq, ptr %i.bh, align 32, !tbaa !11
  %i.br = add nsw i32 %.018458.i, -16
  %i.bs = getelementptr inbounds nuw i8, ptr %.061.i, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %.016860.i, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %.017659.i, i64 64
  %i.bv = icmp sgt i32 %.018458.i, 16
  br i1 %i.bv, label %.lr.ph62.i.new, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !12

.lr.ph57.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph57.i.new
  %.156.i = phi ptr [ %i.co, %.lr.ph57.i.new ], [ %.156.i.unr, %.prol.loopexit ] ; 4 uses
  %.116955.i = phi ptr [ %i.cp, %.lr.ph57.i.new ], [ %.116955.i.unr, %.prol.loopexit ] ; 3 uses
  %.117754.i = phi ptr [ %i.cq, %.lr.ph57.i.new ], [ %.117754.i.unr, %.prol.loopexit ] ; 3 uses
  %.118553.i = phi i32 [ %i.cn, %.lr.ph57.i.new ], [ %.118553.i.unr, %.prol.loopexit ] ; 2 uses
  %i.bw = load <8 x i32>, ptr %.116955.i, align 32, !tbaa !11
  %i.bx = load <8 x i32>, ptr %.117754.i, align 32, !tbaa !11
  %i.by = load <8 x i32>, ptr %.156.i, align 32, !tbaa !11
  %i.bz = add <8 x i32> %i.bw, %i.t
  %i.ca = add <8 x i32> %i.bz, %i.bx
  %i.cb = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ca, i32 range(i32 0, 256) %i.w)
  %i.cc = add <8 x i32> %i.cb, %i.by
  store <8 x i32> %i.cc, ptr %.156.i, align 32, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %.156.i, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.116955.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.117754.i, i64 32
  %i.cg = load <8 x i32>, ptr %i.ce, align 32, !tbaa !11
  %i.ch = load <8 x i32>, ptr %i.cf, align 32, !tbaa !11
  %i.ci = load <8 x i32>, ptr %i.cd, align 32, !tbaa !11
  %i.cj = add <8 x i32> %i.cg, %i.t
  %i.ck = add <8 x i32> %i.cj, %i.ch
  %i.cl = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ck, i32 range(i32 0, 256) %i.w)
  %i.cm = add <8 x i32> %i.cl, %i.ci
  store <8 x i32> %i.cm, ptr %i.cd, align 32, !tbaa !11
  %i.cn = add nsw i32 %.118553.i, -16
  %i.co = getelementptr inbounds nuw i8, ptr %.156.i, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.116955.i, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %.117754.i, i64 64
  %i.cr = icmp sgt i32 %.118553.i, 16
  br i1 %i.cr, label %.lr.ph57.i.new, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !14

bb.i:                                             ; preds = %bb.g
  %i.cs = icmp eq i16 %9, -1                      ; 2 uses
  %10 = extractelement <2 x i16> %6, i64 0
  %i.ct = icmp eq i16 %10, 1
  %or.cond.i = select i1 %i.cs, i1 %i.ct, i1 false
  %i.cu = zext i8 %i.s to i32                     ; 12 uses
  %i.cv = icmp eq i8 %i.s, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.cv, i1 false
  %i.cw = icmp sgt i32 %4, 0                      ; 6 uses
  br i1 %or.cond4.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %5, label %.preheader12.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.j
  br i1 %i.cw, label %.lr.ph47.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph47.i.preheader:                             ; preds = %.preheader14.i
  %i.cx = add nsw i32 %4, -1                      ; 2 uses
  %i.cy = and i32 %i.cx, 8
  %lcmp.mod84.not.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod84.not.not, label %.lr.ph47.i.prol, label %.lr.ph47.i.prol.loopexit

.lr.ph47.i.prol:                                  ; preds = %.lr.ph47.i.preheader
  %i.cz = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.da = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.db = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.dc = add <8 x i32> %i.da, %i.cz
  %i.dd = ashr <8 x i32> %i.dc, splat (i32 1)
  %i.de = sub <8 x i32> %i.db, %i.dd
  store <8 x i32> %i.de, ptr %.val32, align 32, !tbaa !11
  %i.df = add nsw i32 %4, -8
  %i.dg = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph47.i.prol.loopexit

.lr.ph47.i.prol.loopexit:                         ; preds = %.lr.ph47.i.prol, %.lr.ph47.i.preheader
  %.346.i.unr = phi ptr [ %.val32, %.lr.ph47.i.preheader ], [ %i.dg, %.lr.ph47.i.prol ]
  %.317145.i.unr = phi ptr [ %.val30, %.lr.ph47.i.preheader ], [ %i.dh, %.lr.ph47.i.prol ]
  %.317944.i.unr = phi ptr [ %.val31, %.lr.ph47.i.preheader ], [ %i.di, %.lr.ph47.i.prol ]
  %.118743.i.unr = phi i32 [ %4, %.lr.ph47.i.preheader ], [ %i.df, %.lr.ph47.i.prol ]
  %i.dj = icmp ult i32 %i.cx, 8
  br i1 %i.dj, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph47.i

.preheader12.i:                                   ; preds = %bb.j
  br i1 %i.cw, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader12.i
  %i.dk = add nsw i32 %4, -1                      ; 2 uses
  %i.dl = and i32 %i.dk, 8
  %lcmp.mod86.not.not = icmp eq i32 %i.dl, 0
  br i1 %lcmp.mod86.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.dm = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.dn = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.do = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.dp = add <8 x i32> %i.dn, %i.dm
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 1)
  %i.dr = add <8 x i32> %i.dq, %i.do
  store <8 x i32> %i.dr, ptr %.val32, align 32, !tbaa !11
  %i.ds = add nsw i32 %4, -8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.251.i.unr = phi ptr [ %.val32, %.lr.ph52.i.preheader ], [ %i.dt, %.lr.ph52.i.prol ]
  %.217050.i.unr = phi ptr [ %.val30, %.lr.ph52.i.preheader ], [ %i.du, %.lr.ph52.i.prol ]
  %.217849.i.unr = phi ptr [ %.val31, %.lr.ph52.i.preheader ], [ %i.dv, %.lr.ph52.i.prol ]
  %.018648.i.unr = phi i32 [ %4, %.lr.ph52.i.preheader ], [ %i.ds, %.lr.ph52.i.prol ]
  %i.dw = icmp ult i32 %i.dk, 8
  br i1 %i.dw, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.251.i = phi ptr [ %i.en, %.lr.ph52.i ], [ %.251.i.unr, %.lr.ph52.i.prol.loopexit ] ; 4 uses
  %.217050.i = phi ptr [ %i.eo, %.lr.ph52.i ], [ %.217050.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.217849.i = phi ptr [ %i.ep, %.lr.ph52.i ], [ %.217849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.018648.i = phi i32 [ %i.em, %.lr.ph52.i ], [ %.018648.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.dx = load <8 x i32>, ptr %.217050.i, align 32, !tbaa !11
  %i.dy = load <8 x i32>, ptr %.217849.i, align 32, !tbaa !11
  %i.dz = load <8 x i32>, ptr %.251.i, align 32, !tbaa !11
  %i.ea = add <8 x i32> %i.dy, %i.dx
  %i.eb = ashr <8 x i32> %i.ea, splat (i32 1)
  %i.ec = add <8 x i32> %i.eb, %i.dz
  store <8 x i32> %i.ec, ptr %.251.i, align 32, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.251.i, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.217050.i, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.217849.i, i64 32
  %i.eg = load <8 x i32>, ptr %i.ee, align 32, !tbaa !11
  %i.eh = load <8 x i32>, ptr %i.ef, align 32, !tbaa !11
  %i.ei = load <8 x i32>, ptr %i.ed, align 32, !tbaa !11
  %i.ej = add <8 x i32> %i.eh, %i.eg
  %i.ek = ashr <8 x i32> %i.ej, splat (i32 1)
  %i.el = add <8 x i32> %i.ek, %i.ei
  store <8 x i32> %i.el, ptr %i.ed, align 32, !tbaa !11
  %i.em = add nsw i32 %.018648.i, -16
  %i.en = getelementptr inbounds nuw i8, ptr %.251.i, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.217050.i, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %.217849.i, i64 64
  %i.eq = icmp sgt i32 %.018648.i, 16
  br i1 %i.eq, label %.lr.ph52.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !15

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.346.i = phi ptr [ %i.fh, %.lr.ph47.i ], [ %.346.i.unr, %.lr.ph47.i.prol.loopexit ] ; 4 uses
  %.317145.i = phi ptr [ %i.fi, %.lr.ph47.i ], [ %.317145.i.unr, %.lr.ph47.i.prol.loopexit ] ; 3 uses
  %.317944.i = phi ptr [ %i.fj, %.lr.ph47.i ], [ %.317944.i.unr, %.lr.ph47.i.prol.loopexit ] ; 3 uses
  %.118743.i = phi i32 [ %i.fg, %.lr.ph47.i ], [ %.118743.i.unr, %.lr.ph47.i.prol.loopexit ] ; 2 uses
  %i.er = load <8 x i32>, ptr %.317145.i, align 32, !tbaa !11
  %i.es = load <8 x i32>, ptr %.317944.i, align 32, !tbaa !11
  %i.et = load <8 x i32>, ptr %.346.i, align 32, !tbaa !11
  %i.eu = add <8 x i32> %i.es, %i.er
  %i.ev = ashr <8 x i32> %i.eu, splat (i32 1)
  %i.ew = sub <8 x i32> %i.et, %i.ev
  store <8 x i32> %i.ew, ptr %.346.i, align 32, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %.346.i, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.317145.i, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.317944.i, i64 32
  %i.fa = load <8 x i32>, ptr %i.ey, align 32, !tbaa !11
  %i.fb = load <8 x i32>, ptr %i.ez, align 32, !tbaa !11
  %i.fc = load <8 x i32>, ptr %i.ex, align 32, !tbaa !11
  %i.fd = add <8 x i32> %i.fb, %i.fa
  %i.fe = ashr <8 x i32> %i.fd, splat (i32 1)
  %i.ff = sub <8 x i32> %i.fc, %i.fe
  store <8 x i32> %i.ff, ptr %i.ex, align 32, !tbaa !11
  %i.fg = add nsw i32 %.118743.i, -16
  %i.fh = getelementptr inbounds nuw i8, ptr %.346.i, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %.317145.i, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %.317944.i, i64 64
  %i.fk = icmp sgt i32 %.118743.i, 16
  br i1 %i.fk, label %.lr.ph47.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !16

bb.k:                                             ; preds = %bb.i
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %5, label %.preheader16.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %bb.l
  br i1 %i.cw, label %.lr.ph37.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph37.i.preheader:                             ; preds = %.preheader18.i
  %i.fl = add nsw i32 %4, -1                      ; 2 uses
  %i.fm = and i32 %i.fl, 8
  %lcmp.mod80.not.not = icmp eq i32 %i.fm, 0
  br i1 %lcmp.mod80.not.not, label %.lr.ph37.i.prol, label %.lr.ph37.i.prol.loopexit

.lr.ph37.i.prol:                                  ; preds = %.lr.ph37.i.preheader
  %i.fn = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.fo = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.fp = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.fq = add <8 x i32> %i.fn, %i.fo
  %i.fr = sub <8 x i32> %i.t, %i.fq
  %i.fs = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fr, i32 range(i32 0, 256) %i.cu)
  %i.ft = add <8 x i32> %i.fs, %i.fp
  store <8 x i32> %i.ft, ptr %.val32, align 32, !tbaa !11
  %i.fu = add nsw i32 %4, -8
  %i.fv = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph37.i.prol.loopexit

.lr.ph37.i.prol.loopexit:                         ; preds = %.lr.ph37.i.prol, %.lr.ph37.i.preheader
  %.536.i.unr = phi ptr [ %.val32, %.lr.ph37.i.preheader ], [ %i.fv, %.lr.ph37.i.prol ]
  %.517335.i.unr = phi ptr [ %.val30, %.lr.ph37.i.preheader ], [ %i.fw, %.lr.ph37.i.prol ]
  %.518134.i.unr = phi ptr [ %.val31, %.lr.ph37.i.preheader ], [ %i.fx, %.lr.ph37.i.prol ]
  %.118933.i.unr = phi i32 [ %4, %.lr.ph37.i.preheader ], [ %i.fu, %.lr.ph37.i.prol ]
  %i.fy = icmp ult i32 %i.fl, 8
  br i1 %i.fy, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph37.i

.preheader16.i:                                   ; preds = %bb.l
  br i1 %i.cw, label %.lr.ph42.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph42.i.preheader:                             ; preds = %.preheader16.i
  %i.fz = add nsw i32 %4, -1                      ; 2 uses
  %i.ga = and i32 %i.fz, 8
  %lcmp.mod82.not.not = icmp eq i32 %i.ga, 0
  br i1 %lcmp.mod82.not.not, label %.lr.ph42.i.prol, label %.lr.ph42.i.prol.loopexit

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.i.preheader
  %i.gb = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.gc = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.gd = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.ge = add <8 x i32> %i.gb, %i.gc
  %i.gf = sub <8 x i32> %i.t, %i.ge
  %i.gg = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.gf, i32 range(i32 0, 256) %i.cu)
  %i.gh = sub <8 x i32> %i.gd, %i.gg
  store <8 x i32> %i.gh, ptr %.val32, align 32, !tbaa !11
  %i.gi = add nsw i32 %4, -8
  %i.gj = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph42.i.prol.loopexit

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.i.preheader
  %.441.i.unr = phi ptr [ %.val32, %.lr.ph42.i.preheader ], [ %i.gj, %.lr.ph42.i.prol ]
  %.417240.i.unr = phi ptr [ %.val30, %.lr.ph42.i.preheader ], [ %i.gk, %.lr.ph42.i.prol ]
  %.418039.i.unr = phi ptr [ %.val31, %.lr.ph42.i.preheader ], [ %i.gl, %.lr.ph42.i.prol ]
  %.018838.i.unr = phi i32 [ %4, %.lr.ph42.i.preheader ], [ %i.gi, %.lr.ph42.i.prol ]
  %i.gm = icmp ult i32 %i.fz, 8
  br i1 %i.gm, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %.441.i = phi ptr [ %i.hf, %.lr.ph42.i ], [ %.441.i.unr, %.lr.ph42.i.prol.loopexit ] ; 4 uses
  %.417240.i = phi ptr [ %i.hg, %.lr.ph42.i ], [ %.417240.i.unr, %.lr.ph42.i.prol.loopexit ] ; 3 uses
  %.418039.i = phi ptr [ %i.hh, %.lr.ph42.i ], [ %.418039.i.unr, %.lr.ph42.i.prol.loopexit ] ; 3 uses
  %.018838.i = phi i32 [ %i.he, %.lr.ph42.i ], [ %.018838.i.unr, %.lr.ph42.i.prol.loopexit ] ; 2 uses
  %i.gn = load <8 x i32>, ptr %.417240.i, align 32, !tbaa !11
  %i.go = load <8 x i32>, ptr %.418039.i, align 32, !tbaa !11
  %i.gp = load <8 x i32>, ptr %.441.i, align 32, !tbaa !11
  %i.gq = add <8 x i32> %i.gn, %i.go
  %i.gr = sub <8 x i32> %i.t, %i.gq
  %i.gs = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.gr, i32 range(i32 0, 256) %i.cu)
  %i.gt = sub <8 x i32> %i.gp, %i.gs
  store <8 x i32> %i.gt, ptr %.441.i, align 32, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %.441.i, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.417240.i, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %.418039.i, i64 32
  %i.gx = load <8 x i32>, ptr %i.gv, align 32, !tbaa !11
  %i.gy = load <8 x i32>, ptr %i.gw, align 32, !tbaa !11
  %i.gz = load <8 x i32>, ptr %i.gu, align 32, !tbaa !11
  %i.ha = add <8 x i32> %i.gx, %i.gy
  %i.hb = sub <8 x i32> %i.t, %i.ha
  %i.hc = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.hb, i32 range(i32 0, 256) %i.cu)
  %i.hd = sub <8 x i32> %i.gz, %i.hc
  store <8 x i32> %i.hd, ptr %i.gu, align 32, !tbaa !11
  %i.he = add nsw i32 %.018838.i, -16
  %i.hf = getelementptr inbounds nuw i8, ptr %.441.i, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %.417240.i, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.418039.i, i64 64
  %i.hi = icmp sgt i32 %.018838.i, 16
  br i1 %i.hi, label %.lr.ph42.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !17

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.prol.loopexit, %.lr.ph37.i
  %.536.i = phi ptr [ %i.ib, %.lr.ph37.i ], [ %.536.i.unr, %.lr.ph37.i.prol.loopexit ] ; 4 uses
  %.517335.i = phi ptr [ %i.ic, %.lr.ph37.i ], [ %.517335.i.unr, %.lr.ph37.i.prol.loopexit ] ; 3 uses
  %.518134.i = phi ptr [ %i.id, %.lr.ph37.i ], [ %.518134.i.unr, %.lr.ph37.i.prol.loopexit ] ; 3 uses
  %.118933.i = phi i32 [ %i.ia, %.lr.ph37.i ], [ %.118933.i.unr, %.lr.ph37.i.prol.loopexit ] ; 2 uses
  %i.hj = load <8 x i32>, ptr %.517335.i, align 32, !tbaa !11
  %i.hk = load <8 x i32>, ptr %.518134.i, align 32, !tbaa !11
  %i.hl = load <8 x i32>, ptr %.536.i, align 32, !tbaa !11
  %i.hm = add <8 x i32> %i.hj, %i.hk
  %i.hn = sub <8 x i32> %i.t, %i.hm
  %i.ho = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.hn, i32 range(i32 0, 256) %i.cu)
  %i.hp = add <8 x i32> %i.ho, %i.hl
  store <8 x i32> %i.hp, ptr %.536.i, align 32, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %.536.i, i64 32 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.517335.i, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %.518134.i, i64 32
  %i.ht = load <8 x i32>, ptr %i.hr, align 32, !tbaa !11
  %i.hu = load <8 x i32>, ptr %i.hs, align 32, !tbaa !11
  %i.hv = load <8 x i32>, ptr %i.hq, align 32, !tbaa !11
  %i.hw = add <8 x i32> %i.ht, %i.hu
  %i.hx = sub <8 x i32> %i.t, %i.hw
  %i.hy = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.hx, i32 range(i32 0, 256) %i.cu)
  %i.hz = add <8 x i32> %i.hy, %i.hv
  store <8 x i32> %i.hz, ptr %i.hq, align 32, !tbaa !11
  %i.ia = add nsw i32 %.118933.i, -16
  %i.ib = getelementptr inbounds nuw i8, ptr %.536.i, i64 64
  %i.ic = getelementptr inbounds nuw i8, ptr %.517335.i, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %.518134.i, i64 64
  %i.ie = icmp sgt i32 %.118933.i, 16
  br i1 %i.ie, label %.lr.ph37.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !18

bb.m:                                             ; preds = %bb.k
  br i1 %5, label %.preheader20.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.m
  br i1 %i.cw, label %.lr.ph.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph.i.preheader:                               ; preds = %.preheader22.i
  %i.if = add nsw i32 %4, -1                      ; 2 uses
  %i.ig = and i32 %i.if, 8
  %lcmp.mod.not.not = icmp eq i32 %i.ig, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ih = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.ii = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.ij = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.ik = add <8 x i32> %i.ii, %i.ih
  %i.il = mul <8 x i32> %i.ik, %8
  %i.im = add <8 x i32> %i.il, %i.t
  %i.in = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.im, i32 range(i32 0, 256) %i.cu)
  %i.io = add <8 x i32> %i.in, %i.ij
  store <8 x i32> %i.io, ptr %.val32, align 32, !tbaa !11
  %i.ip = add nsw i32 %4, -8
  %i.iq = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.727.i.unr = phi ptr [ %.val32, %.lr.ph.i.preheader ], [ %i.iq, %.lr.ph.i.prol ]
  %.717526.i.unr = phi ptr [ %.val30, %.lr.ph.i.preheader ], [ %i.ir, %.lr.ph.i.prol ]
  %.718325.i.unr = phi ptr [ %.val31, %.lr.ph.i.preheader ], [ %i.is, %.lr.ph.i.prol ]
  %.119124.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.ip, %.lr.ph.i.prol ]
  %i.it = icmp ult i32 %i.if, 8
  br i1 %i.it, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i

.preheader20.i:                                   ; preds = %bb.m
  br i1 %i.cw, label %.lr.ph32.i.preheader, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph32.i.preheader:                             ; preds = %.preheader20.i
  %i.iu = add nsw i32 %4, -1                      ; 2 uses
  %i.iv = and i32 %i.iu, 8
  %lcmp.mod78.not.not = icmp eq i32 %i.iv, 0
  br i1 %lcmp.mod78.not.not, label %.lr.ph32.i.prol, label %.lr.ph32.i.prol.loopexit

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader
  %i.iw = load <8 x i32>, ptr %.val30, align 32, !tbaa !11
  %i.ix = load <8 x i32>, ptr %.val31, align 32, !tbaa !11
  %i.iy = load <8 x i32>, ptr %.val32, align 32, !tbaa !11
  %i.iz = add <8 x i32> %i.ix, %i.iw
  %i.ja = mul <8 x i32> %i.iz, %8
  %i.jb = add <8 x i32> %i.ja, %i.t
  %i.jc = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.jb, i32 range(i32 0, 256) %i.cu)
  %i.jd = sub <8 x i32> %i.iy, %i.jc
  store <8 x i32> %i.jd, ptr %.val32, align 32, !tbaa !11
  %i.je = add nsw i32 %4, -8
  %i.jf = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %.val30, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  br label %.lr.ph32.i.prol.loopexit

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %.631.i.unr = phi ptr [ %.val32, %.lr.ph32.i.preheader ], [ %i.jf, %.lr.ph32.i.prol ]
  %.617430.i.unr = phi ptr [ %.val30, %.lr.ph32.i.preheader ], [ %i.jg, %.lr.ph32.i.prol ]
  %.618229.i.unr = phi ptr [ %.val31, %.lr.ph32.i.preheader ], [ %i.jh, %.lr.ph32.i.prol ]
  %.019028.i.unr = phi i32 [ %4, %.lr.ph32.i.preheader ], [ %i.je, %.lr.ph32.i.prol ]
  %i.ji = icmp ult i32 %i.iu, 8
  br i1 %i.ji, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %.631.i = phi ptr [ %i.kd, %.lr.ph32.i ], [ %.631.i.unr, %.lr.ph32.i.prol.loopexit ] ; 4 uses
  %.617430.i = phi ptr [ %i.ke, %.lr.ph32.i ], [ %.617430.i.unr, %.lr.ph32.i.prol.loopexit ] ; 3 uses
  %.618229.i = phi ptr [ %i.kf, %.lr.ph32.i ], [ %.618229.i.unr, %.lr.ph32.i.prol.loopexit ] ; 3 uses
  %.019028.i = phi i32 [ %i.kc, %.lr.ph32.i ], [ %.019028.i.unr, %.lr.ph32.i.prol.loopexit ] ; 2 uses
  %i.jj = load <8 x i32>, ptr %.617430.i, align 32, !tbaa !11
  %i.jk = load <8 x i32>, ptr %.618229.i, align 32, !tbaa !11
  %i.jl = load <8 x i32>, ptr %.631.i, align 32, !tbaa !11
  %i.jm = add <8 x i32> %i.jk, %i.jj
  %i.jn = mul <8 x i32> %i.jm, %8
  %i.jo = add <8 x i32> %i.jn, %i.t
  %i.jp = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.jo, i32 range(i32 0, 256) %i.cu)
  %i.jq = sub <8 x i32> %i.jl, %i.jp
  store <8 x i32> %i.jq, ptr %.631.i, align 32, !tbaa !11
  %i.jr = getelementptr inbounds nuw i8, ptr %.631.i, i64 32 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.617430.i, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %.618229.i, i64 32
  %i.ju = load <8 x i32>, ptr %i.js, align 32, !tbaa !11
  %i.jv = load <8 x i32>, ptr %i.jt, align 32, !tbaa !11
  %i.jw = load <8 x i32>, ptr %i.jr, align 32, !tbaa !11
  %i.jx = add <8 x i32> %i.jv, %i.ju
  %i.jy = mul <8 x i32> %i.jx, %8
  %i.jz = add <8 x i32> %i.jy, %i.t
  %i.ka = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.jz, i32 range(i32 0, 256) %i.cu)
  %i.kb = sub <8 x i32> %i.jw, %i.ka
  store <8 x i32> %i.kb, ptr %i.jr, align 32, !tbaa !11
  %i.kc = add nsw i32 %.019028.i, -16
  %i.kd = getelementptr inbounds nuw i8, ptr %.631.i, i64 64
  %i.ke = getelementptr inbounds nuw i8, ptr %.617430.i, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %.618229.i, i64 64
  %i.kg = icmp sgt i32 %.019028.i, 16
  br i1 %i.kg, label %.lr.ph32.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !19

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.727.i = phi ptr [ %i.lb, %.lr.ph.i ], [ %.727.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.717526.i = phi ptr [ %i.lc, %.lr.ph.i ], [ %.717526.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.718325.i = phi ptr [ %i.ld, %.lr.ph.i ], [ %.718325.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.119124.i = phi i32 [ %i.la, %.lr.ph.i ], [ %.119124.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.kh = load <8 x i32>, ptr %.717526.i, align 32, !tbaa !11
  %i.ki = load <8 x i32>, ptr %.718325.i, align 32, !tbaa !11
  %i.kj = load <8 x i32>, ptr %.727.i, align 32, !tbaa !11
  %i.kk = add <8 x i32> %i.ki, %i.kh
  %i.kl = mul <8 x i32> %i.kk, %8
  %i.km = add <8 x i32> %i.kl, %i.t
  %i.kn = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.km, i32 range(i32 0, 256) %i.cu)
  %i.ko = add <8 x i32> %i.kn, %i.kj
  store <8 x i32> %i.ko, ptr %.727.i, align 32, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %.727.i, i64 32 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.717526.i, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %.718325.i, i64 32
  %i.ks = load <8 x i32>, ptr %i.kq, align 32, !tbaa !11
  %i.kt = load <8 x i32>, ptr %i.kr, align 32, !tbaa !11
  %i.ku = load <8 x i32>, ptr %i.kp, align 32, !tbaa !11
  %i.kv = add <8 x i32> %i.kt, %i.ks
  %i.kw = mul <8 x i32> %i.kv, %8
  %i.kx = add <8 x i32> %i.kw, %i.t
  %i.ky = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.kx, i32 range(i32 0, 256) %i.cu)
  %i.kz = add <8 x i32> %i.ky, %i.ku
  store <8 x i32> %i.kz, ptr %i.kp, align 32, !tbaa !11
  %i.la = add nsw i32 %.119124.i, -16
  %i.lb = getelementptr inbounds nuw i8, ptr %.727.i, i64 64
  %i.lc = getelementptr inbounds nuw i8, ptr %.717526.i, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %.718325.i, i64 64
  %i.le = icmp sgt i32 %.119124.i, 16
  br i1 %i.le, label %.lr.ph.i, label %_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !20

_ZN4ojph5localL20avx2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %.lr.ph37.i.prol.loopexit, %.lr.ph37.i, %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %.lr.ph47.i.prol.loopexit, %.lr.ph47.i, %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.prol.loopexit, %.lr.ph57.i.new, %.prol.loopexit90, %.lr.ph62.i.new, %.preheader20.i, %.preheader22.i, %.preheader16.i, %.preheader18.i, %.preheader12.i, %.preheader14.i, %.preheader.i, %.preheader10.i, %.split, %.split17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL20avx2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree captures(none) %.16.val3, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !11   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11   ; 2 uses
  %i.e = load i8, ptr %0, align 4, !tbaa !11      ; 4 uses
  %i.f = sext i16 %i.d to i64                     ; 9 uses
  %i.g = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %i.h = shufflevector <4 x i64> %i.g, <4 x i64> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.i = zext i8 %i.e to i32                      ; 13 uses
  %i.j = sub nsw i32 63, %i.i
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = insertelement <4 x i64> poison, i64 %i.l, i64 0
  %i.n = shufflevector <4 x i64> %i.m, <4 x i64> poison, <4 x i32> zeroinitializer ; 36 uses
  %i.o = icmp eq i16 %i.b, 1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %2, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  br i1 %i.p, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %.preheader17
  %i.q = add nsw i32 %1, -1                       ; 2 uses
  %i.r = and i32 %i.q, 4
  %lcmp.mod165.not.not = icmp eq i32 %i.r, 0
  br i1 %lcmp.mod165.not.not, label %.lr.ph66.prol, label %.lr.ph66.prol.loopexit

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader
  %i.s = load <4 x i64>, ptr %.16.val, align 32, !tbaa !11
  %i.t = load <4 x i64>, ptr %.16.val1, align 32, !tbaa !11
  %i.u = load <4 x i64>, ptr %.16.val3, align 32, !tbaa !11
  %i.v = add <4 x i64> %i.s, %i.h
  %i.w = add <4 x i64> %i.v, %i.t
  %i.x = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.w, i32 range(i32 0, 256) %i.i)
  %i.y = xor <4 x i64> %i.x, %i.n
  %i.z = sub <4 x i64> %i.u, %i.n
  %i.aa = add <4 x i64> %i.z, %i.y
  store <4 x i64> %i.aa, ptr %.16.val3, align 32, !tbaa !11
  %i.ab = add nsw i32 %1, -4
  %i.ac = getelementptr inbounds nuw i8, ptr %.16.val3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.16.val, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.16.val1, i64 32
  br label %.lr.ph66.prol.loopexit

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.165.unr = phi ptr [ %.16.val3, %.lr.ph66.preheader ], [ %i.ac, %.lr.ph66.prol ]
  %.115464.unr = phi ptr [ %.16.val, %.lr.ph66.preheader ], [ %i.ad, %.lr.ph66.prol ]
  %.116263.unr = phi ptr [ %.16.val1, %.lr.ph66.preheader ], [ %i.ae, %.lr.ph66.prol ]
  %.117062.unr = phi i32 [ %1, %.lr.ph66.preheader ], [ %i.ab, %.lr.ph66.prol ]
  %i.af = icmp ult i32 %i.q, 4
  br i1 %i.af, label %.loopexit, label %.lr.ph66

.preheader:                                       ; preds = %bb.b
  br i1 %i.p, label %.lr.ph71.preheader, label %.loopexit

.lr.ph71.preheader:                               ; preds = %.preheader
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = and i32 %i.ag, 4
  %lcmp.mod167.not.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod167.not.not, label %.lr.ph71.prol, label %.lr.ph71.prol.loopexit

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader
  %i.ai = load <4 x i64>, ptr %.16.val, align 32, !tbaa !11
  %i.aj = load <4 x i64>, ptr %.16.val1, align 32, !tbaa !11
  %i.ak = load <4 x i64>, ptr %.16.val3, align 32, !tbaa !11
  %i.al = add <4 x i64> %i.ai, %i.h
  %i.am = add <4 x i64> %i.al, %i.aj
  %i.an = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.am, i32 range(i32 0, 256) %i.i)
  %i.ao = xor <4 x i64> %i.an, %i.n
  %.neg6.prol = add <4 x i64> %i.ak, %i.n
  %i.ap = sub <4 x i64> %.neg6.prol, %i.ao
  store <4 x i64> %i.ap, ptr %.16.val3, align 32, !tbaa !11
  %i.aq = add nsw i32 %1, -4
  %i.ar = getelementptr inbounds nuw i8, ptr %.16.val3, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.16.val, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.16.val1, i64 32
  br label %.lr.ph71.prol.loopexit

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %.015270.unr = phi ptr [ %.16.val3, %.lr.ph71.preheader ], [ %i.ar, %.lr.ph71.prol ]
  %.015369.unr = phi ptr [ %.16.val, %.lr.ph71.preheader ], [ %i.as, %.lr.ph71.prol ]
  %.016168.unr = phi ptr [ %.16.val1, %.lr.ph71.preheader ], [ %i.at, %.lr.ph71.prol ]
  %.016967.unr = phi i32 [ %1, %.lr.ph71.preheader ], [ %i.aq, %.lr.ph71.prol ]
  %i.au = icmp ult i32 %i.ag, 4
  br i1 %i.au, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %.015270 = phi ptr [ %i.bp, %.lr.ph71 ], [ %.015270.unr, %.lr.ph71.prol.loopexit ] ; 4 uses
  %.015369 = phi ptr [ %i.bq, %.lr.ph71 ], [ %.015369.unr, %.lr.ph71.prol.loopexit ] ; 3 uses
  %.016168 = phi ptr [ %i.br, %.lr.ph71 ], [ %.016168.unr, %.lr.ph71.prol.loopexit ] ; 3 uses
  %.016967 = phi i32 [ %i.bo, %.lr.ph71 ], [ %.016967.unr, %.lr.ph71.prol.loopexit ] ; 2 uses
  %i.av = load <4 x i64>, ptr %.015369, align 32, !tbaa !11
  %i.aw = load <4 x i64>, ptr %.016168, align 32, !tbaa !11
  %i.ax = load <4 x i64>, ptr %.015270, align 32, !tbaa !11
  %i.ay = add <4 x i64> %i.av, %i.h
  %i.az = add <4 x i64> %i.ay, %i.aw
  %i.ba = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.az, i32 range(i32 0, 256) %i.i)
  %i.bb = xor <4 x i64> %i.ba, %i.n
  %.neg6 = add <4 x i64> %i.ax, %i.n
  %i.bc = sub <4 x i64> %.neg6, %i.bb
  store <4 x i64> %i.bc, ptr %.015270, align 32, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.015270, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015369, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.016168, i64 32
  %i.bg = load <4 x i64>, ptr %i.be, align 32, !tbaa !11
  %i.bh = load <4 x i64>, ptr %i.bf, align 32, !tbaa !11
  %i.bi = load <4 x i64>, ptr %i.bd, align 32, !tbaa !11
  %i.bj = add <4 x i64> %i.bg, %i.h
  %i.bk = add <4 x i64> %i.bj, %i.bh
  %i.bl = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.bk, i32 range(i32 0, 256) %i.i)
  %i.bm = xor <4 x i64> %i.bl, %i.n
  %.neg6.1 = add <4 x i64> %i.bi, %i.n
  %i.bn = sub <4 x i64> %.neg6.1, %i.bm
  store <4 x i64> %i.bn, ptr %i.bd, align 32, !tbaa !11
  %i.bo = add nsw i32 %.016967, -8
  %i.bp = getelementptr inbounds nuw i8, ptr %.015270, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %.015369, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.016168, i64 64
  %i.bs = icmp sgt i32 %.016967, 8
  br i1 %i.bs, label %.lr.ph71, label %.loopexit, !llvm.loop !21

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.165 = phi ptr [ %i.cp, %.lr.ph66 ], [ %.165.unr, %.lr.ph66.prol.loopexit ] ; 4 uses
  %.115464 = phi ptr [ %i.cq, %.lr.ph66 ], [ %.115464.unr, %.lr.ph66.prol.loopexit ] ; 3 uses
  %.116263 = phi ptr [ %i.cr, %.lr.ph66 ], [ %.116263.unr, %.lr.ph66.prol.loopexit ] ; 3 uses
  %.117062 = phi i32 [ %i.co, %.lr.ph66 ], [ %.117062.unr, %.lr.ph66.prol.loopexit ] ; 2 uses
  %i.bt = load <4 x i64>, ptr %.115464, align 32, !tbaa !11
  %i.bu = load <4 x i64>, ptr %.116263, align 32, !tbaa !11
  %i.bv = load <4 x i64>, ptr %.165, align 32, !tbaa !11
  %i.bw = add <4 x i64> %i.bt, %i.h
  %i.bx = add <4 x i64> %i.bw, %i.bu
  %i.by = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.bx, i32 range(i32 0, 256) %i.i)
  %i.bz = xor <4 x i64> %i.by, %i.n
  %i.ca = sub <4 x i64> %i.bv, %i.n
  %i.cb = add <4 x i64> %i.ca, %i.bz
  store <4 x i64> %i.cb, ptr %.165, align 32, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %.165, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.115464, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.116263, i64 32
  %i.cf = load <4 x i64>, ptr %i.cd, align 32, !tbaa !11
  %i.cg = load <4 x i64>, ptr %i.ce, align 32, !tbaa !11
  %i.ch = load <4 x i64>, ptr %i.cc, align 32, !tbaa !11
  %i.ci = add <4 x i64> %i.cf, %i.h
  %i.cj = add <4 x i64> %i.ci, %i.cg
  %i.ck = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.cj, i32 range(i32 0, 256) %i.i)
  %i.cl = xor <4 x i64> %i.ck, %i.n
  %i.cm = sub <4 x i64> %i.ch, %i.n
  %i.cn = add <4 x i64> %i.cm, %i.cl
  store <4 x i64> %i.cn, ptr %i.cc, align 32, !tbaa !11
  %i.co = add nsw i32 %.117062, -8
  %i.cp = getelementptr inbounds nuw i8, ptr %.165, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %.115464, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %.116263, i64 64
  %i.cs = icmp sgt i32 %.117062, 8
  br i1 %i.cs, label %.lr.ph66, label %.loopexit, !llvm.loop !22

bb.c:                                             ; preds = %bb.a
  %i.ct = icmp eq i16 %i.b, -1                    ; 2 uses
  %i.cu = icmp eq i16 %i.d, 1
  %or.cond = and i1 %i.ct, %i.cu
  %i.cv = icmp eq i8 %i.e, 1
  %or.cond4 = select i1 %or.cond, i1 %i.cv, i1 false
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cw = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %2, label %.preheader19, label %.preheader21

.preheader21:                                     ; preds = %bb.d
  br i1 %i.cw, label %.lr.ph56.preheader, label %.loopexit

.lr.ph56.preheader:                               ; preds = %.preheader21
  %i.cx = add nsw i32 %1, -1                      ; 2 uses
  %i.cy = and i32 %i.cx, 4
  %lcmp.mod161.not.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod161.not.not, label %.lr.ph56.prol, label %.lr.ph56.prol.loopexit

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader
  %i.cz = load <4 x i64>, ptr %.16.val, align 32, !tbaa !11
  %i.da = load <4 x i64>, ptr %.16.val1, align 32, !tbaa !11
end_hunk_0
