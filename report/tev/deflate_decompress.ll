Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/deflate_decompress?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@deflate_decompress_bmi2:bb.a

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26, -8
  %i.xo = lshr i32 %i.xk, 16
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i32 %i.xk, 8
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask778 = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask778, -1
  %i.xu = and i64 %i.xm, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xp
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !15
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xn, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %i.xy = lshr i32 %.6, 16
  %i.xz = and i32 %.6, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27, %.6                       ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !17

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !18
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !18
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !18
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !18
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 8
  %i.za = add i32 %i.yi, -1
  %diff.check = icmp ult i32 %i.za, 31
  %or.cond1158 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1158, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yz, 24
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.zc = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zd = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !18
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !18
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %.26, %bb.cy ], [ %i.yk, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %i.yz, -8                  ; 4 uses
  %i.zh = getelementptr i8, ptr %i.yt, i64 %n.vec1150
  %i.zi = getelementptr i8, ptr %i.yv, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %i.yt, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %i.yv, i64 %index1151
  %wide.load1154 = load <8 x i8>, ptr %next.gep1152, align 1, !tbaa !18
  store <8 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !18
  %index.next1155 = add nuw i64 %index1151, 8     ; 2 uses
  %i.zj = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %i.yz, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zd, %vec.epilog.iter.check ], [ %i.zi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zm, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !18
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !18
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !40

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mw, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zo = lshr i32 %.29, 3
  %i.zp = and i32 %i.zo, 31
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zq
  br i1 %.not781, label %.thread836, label %bb.df, !prof !17

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zq
  %i.zr = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %1 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  store i64 %i.zu, ptr %5, align 8, !tbaa !27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zv = ptrtoint ptr %.8708 to i64
  %i.zw = sub i64 %i.zv, %i.q
  store i64 %i.zw, ptr %6, align 8, !tbaa !27
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

declare void @libdeflate_init_x86_cpu_features() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @build_decode_table(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 7, 12) %4, i32 noundef range(i32 7, 16) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #6 {
.preheader223:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %8 = shl nuw nsw i32 %5, 2
  %narrow = add nuw nsw i32 %8, 4
  %9 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %9, i1 false), !tbaa !15
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader222.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader223
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %2, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader222.preheader.loopexit.unr-lcssa, label %.lr.ph

.preheader222.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader222.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader222.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader222.preheader.loopexit.unr-lcssa ]
  %lcmp.mod376 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod376)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !15
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader222.preheader, label %.lr.ph.epil, !llvm.loop !41

.preheader222.preheader:                          ; preds = %.preheader222.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader223
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.preheader, %bb.a
  %.0185237 = phi i32 [ %11, %bb.a ], [ %5, %.preheader222.preheader ] ; 3 uses
  %10 = zext i32 %.0185237 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %10
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.preheader222
  %11 = add nsw i32 %.0185237, -1                 ; 2 uses
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %.preheader222, label %.critedge

.critedge:                                        ; preds = %bb.a, %.preheader222
  %.0185.lcssa = phi i32 [ 1, %bb.a ], [ %.0185237, %.preheader222 ] ; 7 uses
  %.not198 = icmp eq ptr %7, null
  br i1 %.not198, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.an = tail call i32 @llvm.umin.i32(i32 %4, i32 %.0185.lcssa) ; 2 uses
  store i32 %i.an, ptr %7, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0186 = phi i32 [ %i.an, %bb.b ], [ %4, %.critedge ] ; 12 uses
  store i32 0, ptr %i.b, align 16, !tbaa !15
  %i.ao = load i32, ptr %i.a, align 16, !tbaa !15 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !15
  %i.aq = icmp ugt i32 %.0185.lcssa, 1
  br i1 %i.aq, label %.lr.ph240.preheader, label %._crit_edge

.lr.ph240.preheader:                              ; preds = %bb.c
  %wide.trip.count294 = zext i32 %.0185.lcssa to i64
  %i.ar = add nsw i64 %wide.trip.count294, -1     ; 3 uses
  %xtraiter377 = and i64 %i.ar, 1
  %i.as = icmp eq i32 %.0185.lcssa, 2
  br i1 %i.as, label %.lr.ph240.epil.preheader, label %.lr.ph240.preheader.new

.lr.ph240.preheader.new:                          ; preds = %.lr.ph240.preheader
  %unroll_iter382 = and i64 %i.ar, -2
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240, %.lr.ph240.preheader.new
  %i.at = phi i32 [ %i.ao, %.lr.ph240.preheader.new ], [ %i.ba, %.lr.ph240 ]
  %indvars.iv291.a = phi i64 [ 1, %.lr.ph240.preheader.new ], [ %indvars.iv.next292.1, %.lr.ph240 ] ; 3 uses
  %.0152239 = phi i32 [ 0, %.lr.ph240.preheader.new ], [ %i.bf, %.lr.ph240 ]
  %niter383 = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %niter383.next.1, %.lr.ph240 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv291.a
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %i.aw = add i32 %i.av, %i.at                    ; 2 uses
  %indvars.iv.next292.a = add nuw nsw i64 %indvars.iv291.a, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next292.a
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !15
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next292.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15 ; 2 uses
  %i.ba = add i32 %i.az, %i.aw                    ; 3 uses
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291.a, 2 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next292.1
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !15
  %i.bc = shl i32 %.0152239, 2
  %i.bd = shl i32 %i.av, 1
  %i.be = add i32 %i.bc, %i.bd
  %i.bf = add i32 %i.az, %i.be                    ; 3 uses
  %niter383.next.1 = add nuw i64 %niter383, 2     ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph240

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph240
  %lcmp.mod379.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod379.not, label %._crit_edge.loopexit, label %.lr.ph240.epil.preheader

.lr.ph240.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph240.preheader
  %.epil.init = phi i32 [ %i.ao, %.lr.ph240.preheader ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv291.epil.init = phi i64 [ 1, %.lr.ph240.preheader ], [ %indvars.iv.next292.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0152239.epil.init = phi i32 [ 0, %.lr.ph240.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod381 = trunc i64 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod381)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv291.epil.init
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15 ; 2 uses
  %i.bi = add i32 %i.bh, %.epil.init
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv291.epil.init
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !15
  %i.bl = shl i32 %.0152239.epil.init, 1
  %i.bm = add i32 %i.bh, %i.bl
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph240.epil.preheader
  %.lcssa375 = phi i32 [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph240.epil.preheader ]
  %i.bn = shl i32 %.lcssa375, 1
  %i.bo = zext i32 %.0185.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %.1160.lcssa = phi i64 [ %i.bo, %._crit_edge.loopexit ], [ 1, %bb.c ]
  %.0152.lcssa = phi i32 [ %i.bn, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1160.lcssa
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !15
  %i.br = add i32 %i.bq, %.0152.lcssa             ; 4 uses
  br i1 %.not, label %._crit_edge245, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %._crit_edge
  %wide.trip.count299 = zext i32 %2 to i64        ; 2 uses
  %xtraiter384 = and i64 %wide.trip.count299, 1
  %i.bs = icmp eq i32 %2, 1
  br i1 %i.bs, label %.lr.ph244.epil.preheader, label %.lr.ph244.preheader.new

.lr.ph244.preheader.new:                          ; preds = %.lr.ph244.preheader
  %unroll_iter388 = and i64 %wide.trip.count299, 4294967294
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244, %.lr.ph244.preheader.new
  %indvars.iv296 = phi i64 [ 0, %.lr.ph244.preheader.new ], [ %indvars.iv.next297.1, %.lr.ph244 ] ; 4 uses
  %niter389 = phi i64 [ 0, %.lr.ph244.preheader.new ], [ %niter389.next.1, %.lr.ph244 ]
  %i.bt = trunc i64 %indvars.iv296 to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv296
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15 ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ca
  store i16 %i.bt, ptr %i.cb, align 2, !tbaa !44
  %indvars.iv.next297 = or disjoint i64 %indvars.iv296, 1 ; 2 uses
  %i.cc = trunc i64 %indvars.iv.next297 to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next297
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15 ; 2 uses
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !15
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cj
  store i16 %i.cc, ptr %i.ck, align 2, !tbaa !44
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %._crit_edge245.loopexit.unr-lcssa, label %.lr.ph244

._crit_edge245.loopexit.unr-lcssa:                ; preds = %.lr.ph244
  %lcmp.mod386.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod386.not, label %._crit_edge245.loopexit, label %.lr.ph244.epil.preheader

.lr.ph244.epil.preheader:                         ; preds = %._crit_edge245.loopexit.unr-lcssa, %.lr.ph244.preheader
  %indvars.iv296.epil.init = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next297.1, %._crit_edge245.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod387)
  %i.cl = trunc i64 %indvars.iv296.epil.init to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv296.epil.init
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !15
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cs
  store i16 %i.cl, ptr %i.ct, align 2, !tbaa !44
  br label %._crit_edge245.loopexit

._crit_edge245.loopexit:                          ; preds = %._crit_edge245.loopexit.unr-lcssa, %.lr.ph244.epil.preheader
  %.pre305 = load i32, ptr %i.b, align 16, !tbaa !15
  %i.cu = zext i32 %.pre305 to i64
  br label %._crit_edge245

._crit_edge245:                                   ; preds = %._crit_edge245.loopexit, %._crit_edge
  %i.cv = phi i64 [ %i.cu, %._crit_edge245.loopexit ], [ 0, %._crit_edge ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cv ; 3 uses
  %i.cx = shl nuw i32 1, %.0185.lcssa             ; 2 uses
  %i.cy = icmp ugt i32 %i.br, %i.cx
  br i1 %i.cy, label %.thread212, label %bb.d, !prof !17

bb.d:                                             ; preds = %._crit_edge245
  %i.cz = icmp ult i32 %i.br, %i.cx
  br i1 %i.cz, label %bb.e, label %.preheader221, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.da = icmp eq i32 %i.br, 0
  br i1 %i.da, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = add i32 %.0185.lcssa, -1
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = icmp ne i32 %i.br, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp ne i32 %i.df, 1
  %or.cond = select i1 %i.dd, i1 true, i1 %i.dg
  br i1 %or.cond, label %.thread212, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dh = load i16, ptr %i.cw, align 2, !tbaa !44
  %i.di = zext i16 %i.dh to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2174 = phi i64 [ %i.di, %bb.g ], [ 0, %bb.e ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.2174
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.dl = add i32 %i.dk, 257
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.0143272 = phi i32 [ 0, %bb.h ], [ %i.do, %bb.i ] ; 2 uses
  %i.dm = zext i32 %.0143272 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !15
  %i.do = add i32 %.0143272, 1                    ; 2 uses
  %.0143.highbits = lshr i32 %i.do, %.0186
  %i.dp = icmp eq i32 %.0143.highbits, 0
  br i1 %i.dp, label %bb.i, label %.thread212
end_hunk_0
