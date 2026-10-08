Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/clearvideo?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@extend_edges:bb.a
  br i1 %i.cp, label %.preheader64.2.epil.preheader, label %.preheader64.preheader.2.new

.preheader64.preheader.2.new:                     ; preds = %.preheader64.preheader.2
  %unroll_iter120 = and i64 %wide.trip.count.2, 2147483640
  br label %.preheader64.2

.preheader64.2:                                   ; preds = %.preheader64.2, %.preheader64.preheader.2.new
  %indvar.2 = phi i64 [ 0, %.preheader64.preheader.2.new ], [ %indvar.next.2.7, %.preheader64.2 ] ; 9 uses
  %niter121 = phi i64 [ 0, %.preheader64.preheader.2.new ], [ %niter121.next.7, %.preheader64.2 ]
  %i.cq = mul i64 %indvar.2, %i.cn
  %gep102 = getelementptr i8, ptr %invariant.gep101, i64 %i.cq
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2 = or disjoint i64 %indvar.2, 1
  %i.cr = mul i64 %indvar.next.2, %i.cn
  %gep102.1 = getelementptr i8, ptr %invariant.gep101, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.1, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.1 = or disjoint i64 %indvar.2, 2
  %i.cs = mul i64 %indvar.next.2.1, %i.cn
  %gep102.2 = getelementptr i8, ptr %invariant.gep101, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.2, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.2 = or disjoint i64 %indvar.2, 3
  %i.ct = mul i64 %indvar.next.2.2, %i.cn
  %gep102.3 = getelementptr i8, ptr %invariant.gep101, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.3, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.3 = or disjoint i64 %indvar.2, 4
  %i.cu = mul i64 %indvar.next.2.3, %i.cn
  %gep102.4 = getelementptr i8, ptr %invariant.gep101, i64 %i.cu
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.4, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.4 = or disjoint i64 %indvar.2, 5
  %i.cv = mul i64 %indvar.next.2.4, %i.cn
  %gep102.5 = getelementptr i8, ptr %invariant.gep101, i64 %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.5, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.5 = or disjoint i64 %indvar.2, 6
  %i.cw = mul i64 %indvar.next.2.5, %i.cn
  %gep102.6 = getelementptr i8, ptr %invariant.gep101, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.6, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.6 = or disjoint i64 %indvar.2, 7
  %i.cx = mul i64 %indvar.next.2.6, %i.cn
  %gep102.7 = getelementptr i8, ptr %invariant.gep101, i64 %i.cx
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.7, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.7 = add nuw nsw i64 %indvar.2, 8 ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %.loopexit66.2.loopexit.unr-lcssa, label %.preheader64.2, !llvm.loop !106

.loopexit66.2.loopexit.unr-lcssa:                 ; preds = %.preheader64.2
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.loopexit66.2, label %.preheader64.2.epil.preheader

.preheader64.2.epil.preheader:                    ; preds = %.loopexit66.2.loopexit.unr-lcssa, %.preheader64.preheader.2
  %indvar.2.epil.init = phi i64 [ 0, %.preheader64.preheader.2 ], [ %indvar.next.2.7, %.loopexit66.2.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.preheader64.2.epil

.preheader64.2.epil:                              ; preds = %.preheader64.2.epil, %.preheader64.2.epil.preheader
  %indvar.2.epil = phi i64 [ %indvar.2.epil.init, %.preheader64.2.epil.preheader ], [ %indvar.next.2.epil, %.preheader64.2.epil ] ; 2 uses
  %epil.iter117 = phi i64 [ 0, %.preheader64.2.epil.preheader ], [ %epil.iter117.next, %.preheader64.2.epil ]
  %i.cy = mul i64 %indvar.2.epil, %i.cn
  %gep102.epil = getelementptr i8, ptr %invariant.gep101, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr align 1 %gep102.epil, i8 -128, i64 %i.co, i1 false), !tbaa !30
  %indvar.next.2.epil = add nuw nsw i64 %indvar.2.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.loopexit66.2, label %.preheader64.2.epil, !llvm.loop !109

.loopexit66.2:                                    ; preds = %.loopexit66.2.loopexit.unr-lcssa, %.preheader64.2.epil, %bb.f
  br i1 %i.cj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.loopexit66.2
  %i.cz = icmp sgt i32 %i.ch, 0
  %i.da = icmp sgt i32 %i.cb, 0
  %or.cond77.2 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond77.2, label %.preheader.preheader.2, label %.critedge

.preheader.preheader.2:                           ; preds = %bb.g
  %i.db = mul i32 %i.bz, %i.cb
  %i.dc = sext i32 %i.db to i64
  %i.dd = zext nneg i32 %i.cb to i64
  %scevgep84.2 = getelementptr i8, ptr %i.cd, i64 %i.dc
  %i.de = zext nneg i32 %i.ch to i64
  %i.df = mul nuw nsw i64 %i.dd, %i.de
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.2, i8 -128, i64 %i.df, i1 false), !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %.loopexit66.2, %bb.g, %.preheader.preheader.2, %.loopexit.1, %.loopexit, %bb.a
  ret void
}

declare i32 @av_frame_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 3) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 %9, ptr nofree noundef captures(address_is_null) %10) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !64     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.g = lshr i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !30
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %i.c, 7
  %i.m = shl i32 %i.k, %i.l
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !30
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 2 uses
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp slt i16 %i.t, 0
  br i1 %i.v, label %bb.c, label %get_vlc2.exit109

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.c, 9
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.w) ; 3 uses
  %i.y = lshr i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !30
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = and i32 %i.x, 7
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = add nsw i32 %i.u, 32
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = add i32 %i.ag, %i.r
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !30
  %i.ao = sext i16 %i.an to i32
  br label %get_vlc2.exit109

get_vlc2.exit109:                                 ; preds = %bb.b, %bb.c
  %.167.i106 = phi i32 [ %i.r, %bb.b ], [ %i.al, %bb.c ]
  %.165.i107 = phi i32 [ %i.c, %bb.b ], [ %i.x, %bb.c ]
  %.1.i108 = phi i32 [ %i.u, %bb.b ], [ %i.ao, %bb.c ]
  %i.ap = add i32 %.1.i108, %.165.i107
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.ap)
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %get_vlc2.exit109, %bb.a
  %.081 = phi i32 [ %.167.i106, %get_vlc2.exit109 ], [ 0, %bb.a ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 3 uses
  %.not91 = icmp eq ptr %i.as, null
  br i1 %.not91, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !51 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !50 ; 4 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !49    ; 4 uses
  %i.ay = lshr i32 %i.au, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !30
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = and i32 %i.au, 7
  %i.be = shl i32 %i.bc, %i.bd
  %i.bf = lshr i32 %i.be, 23
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !30 ; 2 uses
  %i.bm = sext i16 %i.bl to i32                   ; 2 uses
  %i.bn = icmp slt i16 %i.bl, 0
  br i1 %i.bn, label %bb.f, label %get_vlc2.exit105

bb.f:                                             ; preds = %bb.e
  %i.bo = add i32 %i.au, 9
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.bo) ; 3 uses
  %i.bq = lshr i32 %i.bp, 3
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !30
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = and i32 %i.bp, 7
  %i.bw = shl i32 %i.bu, %i.bv
  %i.bx = add nsw i32 %i.bm, 32
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = add i32 %i.by, %i.bj
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !30
  %11 = sext i16 %i.cc to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !30
  %i.cf = sext i16 %i.ce to i32
  br label %get_vlc2.exit105

get_vlc2.exit105:                                 ; preds = %bb.e, %bb.f
  %.167.i102 = phi i32 [ %i.bj, %bb.e ], [ %11, %bb.f ] ; 3 uses
  %.165.i103 = phi i32 [ %i.au, %bb.e ], [ %i.bp, %bb.f ]
  %.1.i104 = phi i32 [ %i.bm, %bb.e ], [ %i.cf, %bb.f ]
  %i.cg = add i32 %.1.i104, %.165.i103
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.cg) ; 4 uses
  store i32 %i.ch, ptr %i.at, align 8, !tbaa !51
  %i.ci = and i32 %.167.i102, 65535
  %.not92 = icmp eq i32 %i.ci, 19
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %get_vlc2.exit105
  %i.cj = trunc i32 %.167.i102 to i8
  %i.ck = sext i8 %i.cj to i16
  %12 = lshr i32 %.167.i102, 8
  br label %bb.i

bb.h:                                             ; preds = %get_vlc2.exit105
  %i.cl = lshr i32 %i.ch, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !30
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = and i32 %i.ch, 7
  %i.cr = shl i32 %i.cp, %i.cq
  %i.cs = ashr i32 %i.cr, 24
  %13 = add i32 %i.ch, 8
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %13) ; 4 uses
  store i32 %i.ct, ptr %i.at, align 8, !tbaa !51
  %i.cu = trunc nsw i32 %i.cs to i16
  %i.cv = lshr i32 %i.ct, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !30
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = and i32 %i.ct, 7
  %i.db = shl i32 %i.cz, %i.da
  %i.dc = ashr i32 %i.db, 24
  %i.dd = add i32 %i.ct, 8
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.dd)
  store i32 %i.de, ptr %i.at, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i16 [ %i.ck, %bb.g ], [ %i.cu, %bb.h ] ; 2 uses
  %.sroa.10.0.in = phi i32 [ %12, %bb.g ], [ %i.dc, %bb.h ] ; 2 uses
  %.not93 = icmp eq ptr %10, null
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.10.0 = trunc i32 %.sroa.10.0.in to i16
  %i.df = load <2 x i16>, ptr %10, align 2, !tbaa !53
  %i.dg = insertelement <2 x i16> poison, i16 %.sroa.0.0, i64 0
  %i.dh = insertelement <2 x i16> %i.dg, i16 %.sroa.10.0, i64 1
  %i.di = add <2 x i16> %i.df, %i.dh
  store <2 x i16> %i.di, ptr %10, align 2, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dj = zext i16 %.sroa.0.0 to i32
  %sext108 = shl i32 %.sroa.10.0.in, 16
  %14 = ashr exact i32 %sext108, 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.0.1 = phi i32 [ %i.dj, %bb.k ], [ 0, %bb.d ]
  %.sroa.10.1 = phi i32 [ %14, %bb.k ], [ 0, %bb.d ]
  %i.dk = add i32 %.sroa.0.1, %9                  ; 2 uses
  %i.dl = lshr i32 %9, 16
  %i.dm = add nsw i32 %.sroa.10.1, %i.dl          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !65 ; 3 uses
  %.not94 = icmp eq ptr %i.do, null
  br i1 %.not94, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !51 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !50 ; 3 uses
  %i.dt = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.du = lshr i32 %i.dq, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !30
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %i.dq, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 23
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ec ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !30
  %i.ef = sext i16 %i.ee to i32                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !30 ; 2 uses
  %i.ei = sext i16 %i.eh to i32                   ; 2 uses
  %i.ej = icmp slt i16 %i.eh, 0
  br i1 %i.ej, label %bb.n, label %get_vlc2.exit

bb.n:                                             ; preds = %bb.m
  %i.ek = add i32 %i.dq, 9
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.ek) ; 3 uses
  %i.em = lshr i32 %i.el, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 1, !tbaa !30
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = and i32 %i.el, 7
  %i.es = shl i32 %i.eq, %i.er
  %i.et = add nsw i32 %i.ei, 32
  %i.eu = lshr i32 %i.es, %i.et
  %i.ev = add i32 %i.eu, %i.ef
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !30
  %i.ez = sext i16 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !30
  %i.fc = sext i16 %i.fb to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.m, %bb.n
  %.167.i = phi i32 [ %i.ef, %bb.m ], [ %i.ez, %bb.n ] ; 2 uses
  %.165.i = phi i32 [ %i.dq, %bb.m ], [ %i.el, %bb.n ]
  %.1.i = phi i32 [ %i.ei, %bb.m ], [ %i.fc, %bb.n ]
  %i.fd = add i32 %.1.i, %.165.i
  %i.fe = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.fd) ; 4 uses
  store i32 %i.fe, ptr %i.dp, align 8, !tbaa !51
  %i.ff = and i32 %.167.i, 65535
  %.not95 = icmp eq i32 %i.ff, 1
  br i1 %.not95, label %bb.o, label %bb.p

bb.o:                                             ; preds = %get_vlc2.exit
  %i.fg = lshr i32 %i.fe, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 1, !tbaa !30
  %i.fk = tail call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fl = and i32 %i.fe, 7
  %i.fm = shl i32 %i.fk, %i.fl
  %i.fn = ashr i32 %i.fm, 16
  %i.fo = add i32 %i.fe, 16
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.fo)
  store i32 %i.fp, ptr %i.dp, align 8, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_vlc2.exit, %bb.l
  %.180 = phi i32 [ 0, %bb.l ], [ %i.fn, %bb.o ], [ %.167.i, %get_vlc2.exit ] ; 5 uses
  %.not96 = icmp eq i32 %.081, 0
  br i1 %.not96, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fq = ashr i32 %8, 1                          ; 12 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %sext100 = shl i32 %i.dk, 16
  %i.fs = ashr exact i32 %sext100, 16             ; 4 uses
  %sext101 = shl i32 %i.dm, 16
  %i.ft = ashr exact i32 %sext101, 16             ; 4 uses
  %i.fu = and i32 %.081, 1
  %.not99 = icmp eq i32 %i.fu, 0
  br i1 %.not99, label %bb.ae, label %bb.ad

bb.r:                                             ; preds = %bb.af
  %i.fv = and i32 %.081, 2
  %.not99.1 = icmp eq i32 %i.fv, 0
  %i.fw = add nsw i32 %i.fq, %7                   ; 2 uses
  br i1 %.not99.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fx = tail call fastcc i32 @decode_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fr, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.fw, i32 noundef %i.fq, i32 %9, ptr noundef null)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fy = tail call fastcc i32 @tile_do_block(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.fw, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fq, i32 noundef %.180)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.078.1 = phi i32 [ %i.fx, %bb.s ], [ %i.fy, %bb.t ] ; 2 uses
  %i.fz = icmp sgt i32 %.078.1, -1
  br i1 %i.fz, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ga = and i32 %.081, 4
  %.not99.2 = icmp eq i32 %i.ga, 0
  %i.gb = add nsw i32 %i.fq, %6                   ; 2 uses
  br i1 %.not99.2, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = tail call fastcc i32 @decode_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fr, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %i.gb, i32 noundef %7, i32 noundef %i.fq, i32 %9, ptr noundef null)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gd = tail call fastcc i32 @tile_do_block(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %i.gb, i32 noundef %7, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fq, i32 noundef %.180)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.078.2 = phi i32 [ %i.gc, %bb.w ], [ %i.gd, %bb.x ] ; 2 uses
  %i.ge = icmp sgt i32 %.078.2, -1
  br i1 %i.ge, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.gf = and i32 %.081, 8
  %.not99.3 = icmp eq i32 %i.gf, 0
  %i.gg = add nsw i32 %i.fq, %6                   ; 2 uses
  %i.gh = add nsw i32 %i.fq, %7                   ; 2 uses
  br i1 %.not99.3, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = tail call fastcc i32 @decode_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fr, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.fq, i32 %9, ptr noundef null)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gj = tail call fastcc i32 @tile_do_block(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fq, i32 noundef %.180)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.3 = phi i32 [ %i.gi, %bb.aa ], [ %i.gj, %bb.ab ] ; 2 uses
  %i.gk = icmp sgt i32 %.078.3, -1
  br i1 %i.gk, label %.thread, label %.loopexit

bb.ad:                                            ; preds = %bb.q
  %i.gl = tail call fastcc i32 @decode_tile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fr, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %i.fq, i32 %9, ptr noundef null)
  br label %bb.af

bb.ae:                                            ; preds = %bb.q
  %i.gm = tail call fastcc i32 @tile_do_block(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fq, i32 noundef %.180)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.078 = phi i32 [ %i.gl, %bb.ad ], [ %i.gm, %bb.ae ] ; 2 uses
  %i.gn = icmp sgt i32 %.078, -1
  br i1 %i.gn, label %bb.r, label %.loopexit

bb.ag:                                            ; preds = %bb.p
  %sext = shl i32 %i.dk, 16
  %i.go = ashr exact i32 %sext, 16
  %sext97 = shl i32 %i.dm, 16
  %i.gp = ashr exact i32 %sext97, 16
  %i.gq = tail call fastcc i32 @tile_do_block(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %i.go, i32 noundef %i.gp, i32 noundef %8, i32 noundef %.180) ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ag
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.u, %bb.y, %bb.ac, %bb.ag, %.thread
  %.3 = phi i32 [ 0, %.thread ], [ %i.gq, %bb.ag ], [ %.078, %bb.af ], [ %.078.1, %bb.u ], [ %.078.2, %bb.y ], [ %.078.3, %bb.ac ]
  ret i32 %.3
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 128)) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 9 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !49   ; 9 uses
  %i.g = lshr i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !30
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
end_hunk_0
