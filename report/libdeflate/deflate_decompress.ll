Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_decompress?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@deflate_decompress_bmi2:bb.a
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !15

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
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !14
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
  br i1 %.not780, label %.thread836, label %iter.check, !prof !16

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !17
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !17
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !17
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !17
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !17
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !56

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
  %wide.load1154 = load <8 x i8>, ptr %next.gep1152, align 1, !tbaa !17
  store <8 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !17
  %index.next1155 = add nuw i64 %index1151, 8     ; 2 uses
  %i.zj = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

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
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !17
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !17
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !58

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
  br i1 %.not781, label %.thread836, label %bb.df, !prof !16

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
.preheader222:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = shl nuw nsw i32 %5, 2
  %narrow = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 range(i64 0, 65) %i.d, i1 false), !tbaa !14
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader221.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader222
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader221.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !59

.preheader221.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader221.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader221.preheader.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader221.preheader, label %.lr.ph.epil, !llvm.loop !60

.preheader221.preheader:                          ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader222
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.preheader, %bb.a
  %.0185236 = phi i32 [ %i.aq, %bb.a ], [ %5, %.preheader221.preheader ] ; 3 uses
  %i.am = zext i32 %.0185236 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.preheader221
  %i.aq = add nsw i32 %.0185236, -1               ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.preheader221, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %bb.a, %.preheader221
  %.0185.lcssa = phi i32 [ 1, %bb.a ], [ %.0185236, %.preheader221 ] ; 7 uses
  %.not198 = icmp eq ptr %7, null
  br i1 %.not198, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.as = tail call i32 @llvm.umin.i32(i32 %4, i32 %.0185.lcssa) ; 2 uses
  store i32 %i.as, ptr %7, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0186 = phi i32 [ %i.as, %bb.b ], [ %4, %.critedge ] ; 12 uses
  %8 = load i32, ptr %i.a, align 16, !tbaa !14
  %9 = freeze i32 %8                              ; 3 uses
  %10 = zext i32 %9 to i64
  %11 = shl nuw i64 %10, 32
  store i64 %11, ptr %i.b, align 16
  %i.at = icmp ugt i32 %.0185.lcssa, 1
  br i1 %i.at, label %.lr.ph239.preheader, label %._crit_edge

.lr.ph239.preheader:                              ; preds = %bb.c
  %wide.trip.count293 = zext i32 %.0185.lcssa to i64
  %i.au = add nsw i64 %wide.trip.count293, -1     ; 3 uses
  %xtraiter376 = and i64 %i.au, 1
  %i.av = icmp eq i32 %.0185.lcssa, 2
  br i1 %i.av, label %.lr.ph239.epil.preheader, label %.lr.ph239.preheader.new

.lr.ph239.preheader.new:                          ; preds = %.lr.ph239.preheader
  %unroll_iter381 = and i64 %i.au, -2
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239, %.lr.ph239.preheader.new
  %i.aw = phi i32 [ %9, %.lr.ph239.preheader.new ], [ %i.bd, %.lr.ph239 ]
  %indvars.iv290 = phi i64 [ 1, %.lr.ph239.preheader.new ], [ %indvars.iv.next291.1, %.lr.ph239 ] ; 3 uses
  %.0152238 = phi i32 [ 0, %.lr.ph239.preheader.new ], [ %i.bi, %.lr.ph239 ]
  %niter382 = phi i64 [ 0, %.lr.ph239.preheader.new ], [ %niter382.next.1, %.lr.ph239 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv290
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14 ; 2 uses
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next291
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next291
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14 ; 2 uses
  %i.bd = add i32 %i.bc, %i.az                    ; 3 uses
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next291.1
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !14
  %i.bf = shl i32 %.0152238, 2
  %i.bg = shl i32 %i.ay, 1
  %i.bh = add i32 %i.bf, %i.bg
  %i.bi = add i32 %i.bc, %i.bh                    ; 3 uses
  %niter382.next.1 = add nuw i64 %niter382, 2     ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph239, !llvm.loop !62

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph239
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %._crit_edge.loopexit, label %.lr.ph239.epil.preheader

.lr.ph239.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph239.preheader
  %.epil.init = phi i32 [ %9, %.lr.ph239.preheader ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv290.epil.init = phi i64 [ 1, %.lr.ph239.preheader ], [ %indvars.iv.next291.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0152238.epil.init = phi i32 [ 0, %.lr.ph239.preheader ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod380 = trunc i64 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv290.epil.init
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14 ; 2 uses
  %i.bl = add i32 %i.bk, %.epil.init
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv290.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !14
  %i.bo = shl i32 %.0152238.epil.init, 1
  %i.bp = add i32 %i.bk, %i.bo
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph239.epil.preheader
  %.lcssa374 = phi i32 [ %i.bi, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph239.epil.preheader ]
  %i.bq = shl i32 %.lcssa374, 1
  %i.br = zext i32 %.0185.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %.1160.lcssa = phi i64 [ %i.br, %._crit_edge.loopexit ], [ 1, %bb.c ]
  %.0152.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1160.lcssa
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = add i32 %i.bt, %.0152.lcssa             ; 4 uses
  br i1 %.not, label %._crit_edge244, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %._crit_edge
  %wide.trip.count298 = zext i32 %2 to i64        ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count298, 1
  %i.bv = icmp eq i32 %2, 1
  br i1 %i.bv, label %.lr.ph243.epil.preheader, label %.lr.ph243.preheader.new

.lr.ph243.preheader.new:                          ; preds = %.lr.ph243.preheader
  %unroll_iter387 = and i64 %wide.trip.count298, 4294967294
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243, %.lr.ph243.preheader.new
  %indvars.iv295 = phi i64 [ 0, %.lr.ph243.preheader.new ], [ %indvars.iv.next296.1, %.lr.ph243 ] ; 4 uses
  %niter388 = phi i64 [ 0, %.lr.ph243.preheader.new ], [ %niter388.next.1, %.lr.ph243 ]
  %i.bw = trunc i64 %indvars.iv295 to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv295
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14 ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !14
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cd
  store i16 %i.bw, ptr %i.ce, align 2, !tbaa !75
  %indvars.iv.next296 = or disjoint i64 %indvars.iv295, 1 ; 2 uses
  %i.cf = trunc i64 %indvars.iv.next296 to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next296
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14 ; 2 uses
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !14
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cm
  store i16 %i.cf, ptr %i.cn, align 2, !tbaa !75
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %._crit_edge244.loopexit.unr-lcssa, label %.lr.ph243, !llvm.loop !63

._crit_edge244.loopexit.unr-lcssa:                ; preds = %.lr.ph243
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %._crit_edge244.loopexit, label %.lr.ph243.epil.preheader

.lr.ph243.epil.preheader:                         ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243.preheader
  %indvars.iv295.epil.init = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next296.1, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod386 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod386)
  %i.co = trunc i64 %indvars.iv295.epil.init to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv295.epil.init
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !14 ; 2 uses
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !14
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cv
  store i16 %i.co, ptr %i.cw, align 2, !tbaa !75
  br label %._crit_edge244.loopexit

._crit_edge244.loopexit:                          ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243.epil.preheader
  %.pre304 = load i32, ptr %i.b, align 16, !tbaa !14
  %i.cx = zext i32 %.pre304 to i64
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %._crit_edge
  %i.cy = phi i64 [ %i.cx, %._crit_edge244.loopexit ], [ 0, %._crit_edge ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cy ; 3 uses
  %i.da = shl nuw i32 1, %.0185.lcssa             ; 2 uses
  %i.db = icmp ugt i32 %i.bu, %i.da
  br i1 %i.db, label %.thread212, label %bb.d, !prof !16

bb.d:                                             ; preds = %._crit_edge244
  %i.dc = icmp ult i32 %i.bu, %i.da
  br i1 %i.dc, label %bb.e, label %.preheader220, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.dd = icmp eq i32 %i.bu, 0
  br i1 %i.dd, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = add i32 %.0185.lcssa, -1
  %i.df = shl nuw i32 1, %i.de
  %i.dg = icmp ne i32 %i.bu, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = icmp ne i32 %i.di, 1
  %or.cond = select i1 %i.dg, i1 true, i1 %i.dj
  br i1 %or.cond, label %.thread212, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = load i16, ptr %i.cz, align 2, !tbaa !75
  %i.dl = zext i16 %i.dk to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2174 = phi i64 [ %i.dl, %bb.g ], [ 0, %bb.e ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.2174
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14
  %i.do = add i32 %i.dn, 257
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.0143271 = phi i32 [ 0, %bb.h ], [ %i.dr, %bb.i ] ; 2 uses
  %i.dp = zext i32 %.0143271 to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dp
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !14
  %i.dr = add i32 %.0143271, 1                    ; 2 uses
  %.0143.highbits = lshr i32 %i.dr, %.0186
  %i.ds = icmp eq i32 %.0143.highbits, 0
  br i1 %i.ds, label %bb.i, label %.thread212, !llvm.loop !64

.preheader220:                                    ; preds = %bb.d, %.preheader220
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.preheader220 ], [ 1, %bb.d ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv300
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14 ; 3 uses
  %i.dv = icmp eq i32 %i.du, 0
  %indvars.iv.next301 = add nuw i64 %indvars.iv300, 1
  br i1 %i.dv, label %.preheader220, label %bb.j, !llvm.loop !65

bb.j:                                             ; preds = %.preheader220
  %i.dw = trunc nuw i64 %indvars.iv300 to i32     ; 4 uses
  %.not200245 = icmp ult i32 %.0186, %i.dw
  br i1 %.not200245, label %._crit_edge251, label %.preheader219.preheader

.preheader219.preheader:                          ; preds = %bb.j
  %i.dx = shl nuw i32 1, %i.dw
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %bb.n
  %.0150250 = phi i32 [ %.5, %bb.n ], [ %i.dx, %.preheader219.preheader ] ; 5 uses
  %.0154249 = phi i32 [ %i.fn, %bb.n ], [ %i.du, %.preheader219.preheader ]
  %.3162248 = phi i32 [ %i.fg, %bb.n ], [ %i.dw, %.preheader219.preheader ] ; 7 uses
  %.0167247 = phi i32 [ %i.fe, %bb.n ], [ 0, %.preheader219.preheader ]
  %.0182246 = phi ptr [ %i.ey, %bb.n ], [ %i.cz, %.preheader219.preheader ]
  %i.dy = mul i32 %.3162248, 257
  %i.dz = add i32 %.0150250, -1                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader219, %.thread
  %.1183 = phi ptr [ %i.ey, %.thread ], [ %.0182246, %.preheader219 ] ; 2 uses
  %.1168 = phi i32 [ %i.fe, %.thread ], [ %.0167247, %.preheader219 ] ; 4 uses
  %.1155 = phi i32 [ %i.ff, %.thread ], [ %.0154249, %.preheader219 ]
  %i.ea = load i16, ptr %.1183, align 2, !tbaa !75
  %i.eb = zext i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14
  %i.ee = add i32 %i.dy, %i.ed
  %i.ef = zext i32 %.1168 to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !14
  %.not203 = icmp eq i32 %.1168, %i.dz
  br i1 %.not203, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.k
  %i.eh = icmp ult i32 %.3162248, %.0186
  br i1 %i.eh, label %.lr.ph258.preheader, label %.thread212

.lr.ph258.preheader:                              ; preds = %.preheader
  %i.ei = sub nuw i32 %.0186, %.3162248
  %.neg = add i32 %.3162248, 1
  %xtraiter391 = and i32 %i.ei, 1
  %lcmp.mod392.not = icmp eq i32 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol

.lr.ph258.prol:                                   ; preds = %.lr.ph258.preheader
  %i.ej = zext i32 %.0150250 to i64               ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej
  %i.el = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ek, ptr nonnull align 4 %0, i64 %i.el, i1 false)
end_hunk_0
