Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Cimage?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5C__prep_image_for_file_close:bb.a

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next143.i.i = or disjoint i64 %indvars.iv142.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.next143.i.i
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !95 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 152
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !97, !range !10, !noundef !11
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 184 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !86
  %i.im = add i64 %i.il, -1
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !86
  %i.in = load ptr, ptr %i.hs, align 8, !tbaa !92
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next143.i.i
  store i64 -1, ptr %i.io, align 8, !tbaa !56
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next143.i.i.1 = add nuw nsw i64 %indvars.iv142.i.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %.unr-lcssa, label %bb.ax, !llvm.loop !202

.unr-lcssa:                                       ; preds = %bb.bb
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.epilog-lcssa, label %.epil.preheader94

.epil.preheader94:                                ; preds = %.unr-lcssa, %.preheader105.i.i
  %indvars.iv142.i.i.epil.init = phi i64 [ 0, %.preheader105.i.i ], [ %indvars.iv.next143.i.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod97 = trunc i32 %i.gk to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv142.i.i.epil.init
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !95 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 152
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !97, !range !10, !noundef !11
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %.epilog-lcssa, label %bb.bc

bb.bc:                                            ; preds = %.epil.preheader94
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 184 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !86
  %i.iw = add i64 %i.iv, -1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !86
  %i.ix = load ptr, ptr %i.hs, align 8, !tbaa !92
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv142.i.i.epil.init
  store i64 -1, ptr %i.iy, align 8, !tbaa !56
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader94, %bb.bc, %.unr-lcssa
  %i.iz = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 168
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !88 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epilog-lcssa
  %i.jc = load ptr, ptr %i.hs, align 8, !tbaa !92
  %i.jd = call ptr @H5MM_xfree(ptr noundef %i.jc) #15 ; 0 uses
  store ptr null, ptr %i.hs, align 8, !tbaa !92
  br label %.thread99.i.i

bb.be:                                            ; preds = %.epilog-lcssa
  %i.je = icmp ult i64 %i.ja, %wide.trip.count145.i.i
  br i1 %i.je, label %bb.bf, label %.thread99.i.i

bb.bf:                                            ; preds = %bb.be
  %i.jf = load ptr, ptr %i.hs, align 8, !tbaa !92 ; 4 uses
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = shl i64 %i.jg, 3
  %i.ji = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.jh) #16 ; 5 uses
  store ptr %i.ji, ptr %i.hs, align 8, !tbaa !92
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.bs, label %.preheader104.i.i.preheader

.preheader104.i.i.preheader:                      ; preds = %bb.bf
  %xtraiter100 = and i64 %wide.trip.count145.i.i, 1
  %i.jk = icmp eq i64 %i.ht, 0
  br i1 %i.jk, label %.preheader104.i.i.epil.preheader, label %.preheader104.i.i.preheader.new

.preheader104.i.i.preheader.new:                  ; preds = %.preheader104.i.i.preheader
  %unroll_iter103 = and i64 %wide.trip.count145.i.i, 4294967294
  br label %.preheader104.i.i

.preheader104.i.i:                                ; preds = %bb.bi, %.preheader104.i.i.preheader.new
  %indvars.iv147.i.i = phi i64 [ 0, %.preheader104.i.i.preheader.new ], [ %indvars.iv.next148.i.i.1, %bb.bi ] ; 3 uses
  %.076121.i.i = phi i32 [ 0, %.preheader104.i.i.preheader.new ], [ %.1.i.i.1, %bb.bi ] ; 3 uses
  %niter104 = phi i64 [ 0, %.preheader104.i.i.preheader.new ], [ %niter104.next.1, %bb.bi ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv147.i.i
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i = icmp eq i64 %i.jm, -1
  br i1 %.not96.i.i, label %.preheader104.i.i.1, label %bb.bg

bb.bg:                                            ; preds = %.preheader104.i.i
  %i.jn = zext i32 %.076121.i.i to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jn
  store i64 %i.jm, ptr %i.jo, align 8, !tbaa !56
  %i.jp = add i32 %.076121.i.i, 1
  br label %.preheader104.i.i.1

.preheader104.i.i.1:                              ; preds = %bb.bg, %.preheader104.i.i
  %.1.i.i = phi i32 [ %i.jp, %bb.bg ], [ %.076121.i.i, %.preheader104.i.i ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv147.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i.1 = icmp eq i64 %i.js, -1
  br i1 %.not96.i.i.1, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader104.i.i.1
  %i.jt = zext i32 %.1.i.i to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jt
  store i64 %i.js, ptr %i.ju, align 8, !tbaa !56
  %i.jv = add i32 %.1.i.i, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.preheader104.i.i.1
  %.1.i.i.1 = phi i32 [ %i.jv, %bb.bh ], [ %.1.i.i, %.preheader104.i.i.1 ] ; 2 uses
  %indvars.iv.next148.i.i.1 = add nuw nsw i64 %indvars.iv147.i.i, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.thread99.i.i.loopexit.unr-lcssa, label %.preheader104.i.i, !llvm.loop !203

.thread99.i.i.loopexit.unr-lcssa:                 ; preds = %bb.bi
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.thread99.i.i, label %.preheader104.i.i.epil.preheader

.preheader104.i.i.epil.preheader:                 ; preds = %.thread99.i.i.loopexit.unr-lcssa, %.preheader104.i.i.preheader
  %indvars.iv147.i.i.epil.init = phi i64 [ 0, %.preheader104.i.i.preheader ], [ %indvars.iv.next148.i.i.1, %.thread99.i.i.loopexit.unr-lcssa ]
  %.076121.i.i.epil.init = phi i32 [ 0, %.preheader104.i.i.preheader ], [ %.1.i.i.1, %.thread99.i.i.loopexit.unr-lcssa ]
  %lcmp.mod102 = trunc i32 %i.gk to i1
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv147.i.i.epil.init
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i.epil = icmp eq i64 %i.jx, -1
  br i1 %.not96.i.i.epil, label %.thread99.i.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader104.i.i.epil.preheader
  %i.jy = zext i32 %.076121.i.i.epil.init to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jy
  store i64 %i.jx, ptr %i.jz, align 8, !tbaa !56
  br label %.thread99.i.i

.thread99.i.i.loopexit86.unr-lcssa:               ; preds = %bb.av
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.thread99.i.i, label %.epil.preheader88

.epil.preheader88:                                ; preds = %.thread99.i.i.loopexit86.unr-lcssa, %.preheader106.i.i
  %indvars.iv137.i.i.epil.init = phi i64 [ 0, %.preheader106.i.i ], [ %indvars.iv.next138.i.i.1, %.thread99.i.i.loopexit86.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.gk to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv137.i.i.epil.init
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !95 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 152
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !97, !range !10, !noundef !11
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.bk, label %.thread99.i.i

bb.bk:                                            ; preds = %.epil.preheader88
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 184 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !86
  %i.kh = add i64 %i.kg, -1
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !86
  %i.ki = load i8, ptr %i.gn, align 8, !tbaa !83, !range !10, !noundef !11
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.bl, label %.thread99.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 192 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !87
  %i.km = add i64 %i.kl, -1
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !87
  br label %.thread99.i.i

.thread99.i.i:                                    ; preds = %.thread99.i.i.loopexit86.unr-lcssa, %bb.bl, %bb.bk, %.epil.preheader88, %.thread99.i.i.loopexit.unr-lcssa, %bb.bj, %.preheader104.i.i.epil.preheader, %bb.be, %bb.bd, %bb.aw, %bb.ao
  %i.kn = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 120
  %.185.i.i = load ptr, ptr %i.kn, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %.185.i.i, null
  br i1 %.not.i.i, label %.preheader102.i.i, label %.lr.ph125.i.i, !llvm.loop !204

.lr.ph132.i.i:                                    ; preds = %.preheader102.i.i, %.loopexit.i.i
  %.286130.i.i = phi ptr [ %.286.i.i, %.loopexit.i.i ], [ %.286128.pre.i.i, %.preheader102.i.i ] ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 152
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !97, !range !10, !noundef !11
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.bm, label %.loopexit.i.i

bb.bm:                                            ; preds = %.lr.ph132.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 184
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !86
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.ku = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 168 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !88 ; 2 uses
  %.not93.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph127.i.i

.lr.ph127.i.i:                                    ; preds = %bb.bn
  %i.kw = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 72
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.lr.ph127.i.i
  %i.kx = phi i64 [ %i.kv, %.lr.ph127.i.i ], [ %i.lg, %bb.br ] ; 2 uses
  %4 = phi i64 [ 0, %.lr.ph127.i.i ], [ %i.li, %bb.br ]
  %.4126.i.i = phi i32 [ 0, %.lr.ph127.i.i ], [ %i.lh, %bb.br ]
  %5 = load ptr, ptr %i.kw, align 8, !tbaa !100
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %4
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !95 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 152
  %i.lb = load i8, ptr %i.la, align 8, !tbaa !97, !range !10, !noundef !11
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 200
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !98
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr noundef nonnull %i.kz, i32 noundef 1)
  %.pre.i.i.a = load i64, ptr %i.ku, align 8, !tbaa !88
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.lg = phi i64 [ %i.kx, %bb.bo ], [ %i.kx, %bb.bp ], [ %.pre.i.i.a, %bb.bq ] ; 2 uses
  %i.lh = add i32 %.4126.i.i, 1                   ; 2 uses
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = icmp ugt i64 %i.lg, %i.li
  br i1 %i.lj, label %bb.bo, label %.loopexit.i.i, !llvm.loop !205

.loopexit.i.i:                                    ; preds = %bb.br, %bb.bn, %bb.bm, %.lr.ph132.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 120
  %.286.i.i = load ptr, ptr %i.lk, align 8, !tbaa !95 ; 2 uses
  %.not92.i.i = icmp eq ptr %.286.i.i, null
  br i1 %.not92.i.i, label %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i, label %.lr.ph132.i.i, !llvm.loop !206

H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i: ; preds = %.loopexit.i.i
  %.179101.pre.i = load ptr, ptr %i.cd, align 8, !tbaa !95
  br label %H5C__prep_for_file_close__compute_fd_heights.exit.i

H5C__prep_for_file_close__compute_fd_heights.exit.i: ; preds = %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i, %._crit_edge.i
  %.179101.i = phi ptr [ %.179101.pre.i, %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i ], [ %.179101.pre120.pre.i, %._crit_edge.i ] ; 2 uses
  %.not83102.i = icmp eq ptr %.179101.i, null
  br i1 %.not83102.i, label %._crit_edge107.i, label %.lr.ph106.i

bb.bs:                                            ; preds = %bb.bf
  %i.ll = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.lm = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.ln = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__compute_fd_heights, i32 noundef 1883, i64 noundef %i.ll, i64 noundef %i.lm, ptr noundef nonnull @.str.39) #15 ; 0 uses
  %i.lo = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.lp = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.lq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__scan_entries, i32 noundef 2304, i64 noundef %i.lo, i64 noundef %i.lp, ptr noundef nonnull @.str.38) #15 ; 0 uses
  br label %bb.cb

.lr.ph106.i:                                      ; preds = %H5C__prep_for_file_close__compute_fd_heights.exit.i, %bb.bw
  %.179105.i = phi ptr [ %.179.i, %bb.bw ], [ %.179101.i, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 4 uses
  %.072104.i = phi i64 [ %.1.i, %bb.bw ], [ %i.bq, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 2 uses
  %.073103.i = phi i32 [ %.174.i, %bb.bw ], [ 0, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.179105.i, i64 152
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !97, !range !10, !noundef !11
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.lr.ph106.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.179105.i, i64 168 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !88
  %.not85.i = icmp eq i64 %i.lv, 0
  br i1 %.not85.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lw = call zeroext i8 @H5F_sizeof_addr(ptr noundef nonnull %0) #15
  %i.lx = zext i8 %i.lw to i64
  %i.ly = load i64, ptr %i.lu, align 8, !tbaa !88
  %i.lz = mul i64 %i.ly, %i.lx
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.071.i = phi i64 [ %i.lz, %bb.bu ], [ 0, %bb.bt ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.179105.i, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !91
  %i.mc = add i64 %.072104.i, %.0.i90.i
  %i.md = add i64 %i.mc, %.071.i
  %i.me = add i64 %i.md, %i.mb
  %i.mf = add i32 %.073103.i, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph106.i
  %.174.i = phi i32 [ %i.mf, %bb.bv ], [ %.073103.i, %.lr.ph106.i ] ; 2 uses
  %.1.i = phi i64 [ %i.me, %bb.bv ], [ %.072104.i, %.lr.ph106.i ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.179105.i, i64 120
  %.179.i = load ptr, ptr %i.mg, align 8, !tbaa !95 ; 2 uses
  %.not83.i = icmp eq ptr %.179.i, null
  br i1 %.not83.i, label %._crit_edge107.i, label %.lr.ph106.i, !llvm.loop !207

._crit_edge107.i:                                 ; preds = %bb.bw, %H5C__prep_for_file_close__compute_fd_heights.exit.i, %.preheader102.i.i, %.preheader111.i.i, %H5C__cache_image_block_entry_header_size.exit.i
  %.073.lcssa.i = phi i32 [ 0, %H5C__prep_for_file_close__compute_fd_heights.exit.i ], [ 0, %H5C__cache_image_block_entry_header_size.exit.i ], [ 0, %.preheader111.i.i ], [ 0, %.preheader102.i.i ], [ %.174.i, %bb.bw ]
  %.072.lcssa.i = phi i64 [ %i.bq, %H5C__prep_for_file_close__compute_fd_heights.exit.i ], [ %i.bq, %H5C__cache_image_block_entry_header_size.exit.i ], [ %i.bq, %.preheader111.i.i ], [ %i.bq, %.preheader102.i.i ], [ %.1.i, %bb.bw ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.l, i64 527696
  store i32 %.073.lcssa.i, ptr %i.mh, align 8, !tbaa !59
  %i.mi = getelementptr inbounds nuw i8, ptr %i.l, i64 524824
  %.2109.i = load ptr, ptr %i.mi, align 8, !tbaa !95 ; 2 uses
  %.not84110.i = icmp eq ptr %.2109.i, null
  br i1 %.not84110.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %._crit_edge107.i, %bb.ca
  %.2112.i = phi ptr [ %.2.i, %bb.ca ], [ %.2109.i, %._crit_edge107.i ] ; 4 uses
  %.075111.i = phi i32 [ %.176.i, %bb.ca ], [ 1, %._crit_edge107.i ] ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.2112.i, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !94
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !221
  %i.mm = icmp eq i32 %i.ml, 27
  br i1 %i.mm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph114.i
  %i.mn = add nsw i32 %.075111.i, 1
  br label %bb.ca

bb.by:                                            ; preds = %.lr.ph114.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.2112.i, i64 152
  %i.mp = load i8, ptr %i.mo, align 8, !tbaa !97, !range !10, !noundef !11
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mr = getelementptr inbounds nuw i8, ptr %.2112.i, i64 156
  store i32 %.075111.i, ptr %i.mr, align 4, !tbaa !89
  %i.ms = add nsw i32 %.075111.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.176.i = phi i32 [ %i.mn, %bb.bx ], [ %i.ms, %bb.bz ], [ %.075111.i, %bb.by ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.2112.i, i64 136
  %.2.i = load ptr, ptr %i.mt, align 8, !tbaa !95 ; 2 uses
  %.not84.i = icmp eq ptr %.2.i, null
  br i1 %.not84.i, label %._crit_edge115.i, label %.lr.ph114.i, !llvm.loop !208

._crit_edge115.i:                                 ; preds = %bb.ca, %._crit_edge107.i
  %i.mu = add i64 %.072.lcssa.i, 4                ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.l, i64 527656
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !58
  br label %H5C__prep_for_file_close__scan_entries.exit

bb.cb:                                            ; preds = %bb.u, %bb.aa, %bb.bs
  %i.mw = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.mx = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.my = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 921, i64 noundef %i.mw, i64 noundef %i.mx, ptr noundef nonnull @.str.14) #15 ; 0 uses
  br label %bb.cx

H5C__prep_for_file_close__scan_entries.exit:      ; preds = %.H5C__prep_for_file_close__scan_entries.exit_crit_edge, %._crit_edge115.i
  %i.mz = phi i64 [ %.pre62, %.H5C__prep_for_file_close__scan_entries.exit_crit_edge ], [ %i.mu, %._crit_edge115.i ]
  %i.na = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !222
  %i.nc = getelementptr inbounds nuw i8, ptr %i.l, i64 527656
  %i.nd = call i64 @H5FD_alloc(ptr noundef %i.nb, i32 noundef 1, ptr noundef nonnull %0, i64 noundef %i.mz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.l, i64 527640
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !75
  %i.nf = icmp eq i64 %i.nd, -1
  br i1 %i.nf, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %H5C__prep_for_file_close__scan_entries.exit
  %i.ng = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.nh = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !56
  %i.ni = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 977, i64 noundef %i.ng, i64 noundef %i.nh, ptr noundef nonnull @.str.15) #15 ; 0 uses
  br label %bb.cx

bb.cd:                                            ; preds = %H5C__prep_for_file_close__scan_entries.exit
  %i.nj = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !222
  %i.nl = call i64 @H5FD_get_eoa(ptr noundef %i.nk, i32 noundef 0) #15 ; 2 uses
  %i.nm = load ptr, ptr %i.i, align 8, !tbaa !33  ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 1832
  store i64 %i.nl, ptr %i.nn, align 8, !tbaa !223
  %i.no = icmp eq i64 %i.nl, -1
  br i1 %i.no, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.np = load i64, ptr @H5E_FILE_g, align 8, !tbaa !56
  %i.nq = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !56
  %i.nr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 986, i64 noundef %i.np, i64 noundef %i.nq, ptr noundef nonnull @.str.16) #15 ; 0 uses
  br label %bb.cx

bb.cf:                                            ; preds = %bb.cd
  %i.ns = load i64, ptr %i.nc, align 8, !tbaa !58
  %i.nt = getelementptr inbounds nuw i8, ptr %i.l, i64 527648
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !54
  %i.nu = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.nv = and i32 %i.nu, 2
  %.not42 = icmp eq i32 %i.nv, 0
  br i1 %.not42, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.nw = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.nx = trunc nuw i8 %i.nw to i1
  %i.ny = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.nz = trunc nuw i8 %i.ny to i1
  %i.oa = xor i1 %i.nz, true
  %i.ob = select i1 %i.nx, i1 true, i1 %i.oa
  br i1 %i.ob, label %bb.ch, label %H5C__write_cache_image_superblock_msg.exit46.thread, !prof !12

bb.ch:                                            ; preds = %bb.cg
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nm, i64 112
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !52
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 527640
  %i.of = load <2 x i64>, ptr %i.oe, align 8, !tbaa !56
  store <2 x i64> %i.of, ptr %2, align 16, !tbaa !56
  %i.og = call i32 @H5F__super_ext_write_msg(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 128) #15
  %i.oh = icmp slt i32 %i.og, 0
  br i1 %i.oh, label %bb.ci, label %H5C__write_cache_image_superblock_msg.exit46.thread

H5C__write_cache_image_superblock_msg.exit46.thread: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oi = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.oj = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !56
  %i.ok = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__write_cache_image_superblock_msg, i32 noundef 2955, i64 noundef %i.oi, i64 noundef %i.oj, ptr noundef nonnull @.str.71) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ol = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.om = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.on = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1019, i64 noundef %i.ol, i64 noundef %i.om, ptr noundef nonnull @.str.17) #15 ; 0 uses
  br label %bb.cx

bb.cj:                                            ; preds = %H5C__write_cache_image_superblock_msg.exit46.thread, %bb.cf
end_hunk_0
begin_hunk_1_@H5C_set_cache_image_config:bb.a
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !102

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1124, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #15 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @H5C_validate_cache_image_config(ptr noundef %2)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !56
  %i.o = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !56
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1128, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.20) #15 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i32 @H5F_get_intent(ptr noundef %0) #15
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 527616 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !77
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) @__const.H5C_set_cache_image_config.default_image_ctl, i64 16, i1 false), !tbaa.struct !77
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_validate_cache_image_config(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.m, !prof !102

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1192, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.21) #15 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 4, !tbaa !225
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.n = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1194, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !226, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.t = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1201, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.23) #15 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !227
  %.not11 = icmp eq i32 %i.w, -1
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.y = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1208, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.24) #15 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !228
  %.not12 = icmp ult i32 %i.ab, 16
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1211, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.25) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.k, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @H5F_get_intent(ptr noundef) local_unnamed_addr #4

declare i32 @H5_checksum_metadata(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #4

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 525) i64 @H5C__cache_image_block_entry_header_size(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 14
  %i.j = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #15
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.i, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #4

declare i32 @H5F_block_read(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %1, ptr %i.g, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = add i32 %1, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i64 [ %i.k, %.lr.ph ], [ %i.v, %bb.f ] ; 2 uses
  %2 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.f ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.f ]
  %3 = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = load i8, ptr %i.q, align 8, !tbaa !97, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.u = load i32, ptr %i.t, align 8, !tbaa !98
  %.not14 = icmp ugt i32 %i.u, %1
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr noundef nonnull %i.p, i32 noundef %i.m)
  %.pre.a = load i64, ptr %i.j, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = phi i64 [ %.pre.a, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.w = add i32 %.015, 1                         ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %.loopexit, !llvm.loop !229

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.b, %bb.a
  ret void
}

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5SL_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5C_create_flush_dependency(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5C__make_space_in_cache(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5C_unprotect(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @H5C_unpin_entry(ptr noundef) local_unnamed_addr #4

declare i32 @H5AC_expunge_entry(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #4

declare void @H5F_addr_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @H5F_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare i32 @H5F__super_ext_write_msg(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare i32 @H5F_block_write(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS14H5C_log_info_t", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"p2 _ZTS11H5C_class_t", !15, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"p1 _ZTS17H5C_cache_entry_t", !13, i64 0}
!19 = !{!"p1 _ZTS6H5SL_t", !13, i64 0}
!20 = !{!"p1 _ZTS14H5C_tag_info_t", !13, i64 0}
!21 = !{!"double", !4, i64 0}
!22 = !{!"H5C_auto_size_ctl_t", !5, i64 0, !13, i64 8, !8, i64 16, !17, i64 24, !21, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !5, i64 64, !21, i64 72, !21, i64 80, !8, i64 88, !17, i64 96, !5, i64 104, !21, i64 112, !21, i64 120, !5, i64 128, !21, i64 136, !21, i64 144, !8, i64 152, !17, i64 160, !5, i64 168, !8, i64 172, !21, i64 176}
!23 = !{!"H5C_cache_image_ctl_t", !5, i64 0, !8, i64 4, !8, i64 5, !5, i64 8, !5, i64 12}
!24 = !{!"p1 _ZTS17H5C_image_entry_t", !13, i64 0}
!25 = !{!"H5C_t", !8, i64 0, !14, i64 8, !13, i64 16, !5, i64 24, !16, i64 32, !17, i64 40, !17, i64 48, !13, i64 56, !8, i64 64, !13, i64 72, !8, i64 80, !8, i64 81, !5, i64 84, !17, i64 88, !4, i64 96, !4, i64 120, !17, i64 168, !4, i64 176, !17, i64 224, !4, i64 232, !4, i64 280, !5, i64 524568, !17, i64 524576, !18, i64 524584, !18, i64 524592, !17, i64 524600, !18, i64 524608, !18, i64 524616, !8, i64 524624, !8, i64 524625, !5, i64 524628, !17, i64 524632, !4, i64 524640, !4, i64 524664, !19, i64 524712, !5, i64 524720, !20, i64 524728, !8, i64 524736, !5, i64 524740, !5, i64 524744, !17, i64 524752, !18, i64 524760, !18, i64 524768, !5, i64 524776, !17, i64 524784, !18, i64 524792, !18, i64 524800, !5, i64 524808, !17, i64 524816, !18, i64 524824, !18, i64 524832, !8, i64 524840, !8, i64 524841, !17, i64 524848, !8, i64 524856, !8, i64 524857, !8, i64 524858, !8, i64 524859, !8, i64 524860, !8, i64 524861, !22, i64 524864, !5, i64 525048, !4, i64 525052, !4, i64 525064, !5, i64 525108, !5, i64 525112, !5, i64 525116, !4, i64 525120, !17, i64 527600, !17, i64 527608, !23, i64 527616, !8, i64 527632, !8, i64 527633, !8, i64 527634, !8, i64 527635, !17, i64 527640, !17, i64 527648, !17, i64 527656, !17, i64 527664, !17, i64 527672, !17, i64 527680, !17, i64 527688, !5, i64 527696, !24, i64 527704, !13, i64 527712, !8, i64 527720, !8, i64 527721, !4, i64 527722}
!26 = !{!25, !8, i64 527633}
!27 = !{!25, !8, i64 527634}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"p1 _ZTS12H5F_shared_t", !13, i64 0}
!30 = !{!"p1 _ZTS13H5VL_object_t", !13, i64 0}
!31 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!32 = !{!"H5F_t", !28, i64 0, !28, i64 8, !29, i64 16, !30, i64 24, !5, i64 32, !19, i64 40, !8, i64 48, !8, i64 49, !31, i64 56, !5, i64 64}
!33 = !{!32, !29, i64 16}
!34 = !{!"p1 _ZTS6H5FD_t", !13, i64 0}
!35 = !{!"p1 _ZTS11H5F_super_t", !13, i64 0}
!36 = !{!"p1 _ZTS13H5O_drvinfo_t", !13, i64 0}
!37 = !{!"p1 _ZTS11H5F_mount_t", !13, i64 0}
!38 = !{!"H5F_mtab_t", !5, i64 0, !5, i64 4, !37, i64 8}
!39 = !{!"p1 _ZTS9H5F_efc_t", !13, i64 0}
!40 = !{!"p1 _ZTS6H5PB_t", !13, i64 0}
!41 = !{!"p1 _ZTS5H5C_t", !13, i64 0}
!42 = !{!"H5AC_cache_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !4, i64 7, !8, i64 1032, !8, i64 1033, !17, i64 1040, !21, i64 1048, !17, i64 1056, !17, i64 1064, !17, i64 1072, !5, i64 1080, !21, i64 1088, !21, i64 1096, !8, i64 1104, !17, i64 1112, !5, i64 1120, !21, i64 1128, !21, i64 1136, !5, i64 1144, !21, i64 1152, !21, i64 1160, !8, i64 1168, !17, i64 1176, !5, i64 1184, !8, i64 1188, !21, i64 1192, !17, i64 1200, !5, i64 1208}
!43 = !{!"H5AC_cache_image_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !5, i64 8}
!44 = !{!"p2 _ZTS11H5HG_heap_t", !15, i64 0}
!45 = !{!"p1 _ZTS5H5G_t", !13, i64 0}
!46 = !{!"p1 _ZTS6H5UC_t", !13, i64 0}
!47 = !{!"p1 _ZTS16H5VL_connector_t", !13, i64 0}
!48 = !{!"H5F_blk_aggr_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!49 = !{!"H5F_meta_accum_t", !28, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !8, i64 48}
!50 = !{!"H5F_object_flush_t", !13, i64 0, !13, i64 8}
!51 = !{!"H5F_shared_t", !34, i64 0, !35, i64 8, !36, i64 16, !8, i64 24, !5, i64 28, !5, i64 32, !38, i64 40, !39, i64 56, !4, i64 64, !4, i64 65, !17, i64 72, !5, i64 80, !5, i64 84, !17, i64 88, !17, i64 96, !40, i64 104, !41, i64 112, !42, i64 120, !43, i64 1336, !8, i64 1348, !8, i64 1349, !28, i64 1352, !17, i64 1360, !5, i64 1368, !8, i64 1372, !17, i64 1376, !17, i64 1384, !21, i64 1392, !17, i64 1400, !17, i64 1408, !17, i64 1416, !5, i64 1424, !5, i64 1428, !5, i64 1432, !8, i64 1436, !5, i64 1440, !44, i64 1448, !45, i64 1456, !19, i64 1464, !46, i64 1472, !8, i64 1480, !8, i64 1481, !8, i64 1482, !17, i64 1488, !47, i64 1496, !13, i64 1504, !5, i64 1512, !17, i64 1520, !8, i64 1528, !5, i64 1532, !8, i64 1536, !17, i64 1544, !8, i64 1552, !4, i64 1556, !4, i64 1608, !4, i64 1712, !8, i64 1816, !17, i64 1824, !17, i64 1832, !4, i64 1840, !4, i64 1868, !48, i64 1896, !48, i64 1936, !17, i64 1976, !17, i64 1984, !49, i64 1992, !5, i64 2048, !5, i64 2052, !4, i64 2056, !50, i64 2296, !8, i64 2312, !28, i64 2320}
!52 = !{!51, !41, i64 112}
!53 = !{!25, !8, i64 527620}
!54 = !{!25, !17, i64 527648}
!55 = !{!25, !13, i64 527712}
!56 = !{!17, !17, i64 0}
!57 = !{!4, !4, i64 0}
!58 = !{!25, !17, i64 527656}
!59 = !{!25, !5, i64 527696}
!60 = !{!25, !24, i64 527704}
!61 = !{!"p1 long", !13, i64 0}
!62 = !{!"H5C_image_entry_t", !17, i64 0, !17, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32, !5, i64 36, !17, i64 40, !61, i64 48, !17, i64 56, !17, i64 64, !13, i64 72}
!63 = !{!62, !5, i64 24}
!64 = !{!62, !8, i64 32}
!65 = !{!62, !5, i64 28}
!66 = !{!62, !17, i64 40}
!67 = !{!62, !5, i64 16}
!68 = !{!62, !5, i64 20}
!69 = !{!28, !28, i64 0}
!70 = !{!62, !17, i64 0}
!71 = !{!62, !61, i64 48}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!62, !13, i64 72}
!74 = !{!25, !5, i64 527628}
!75 = !{!25, !17, i64 527640}
!76 = !{!5, !5, i64 0}
!77 = !{i64 0, i64 4, !76, i64 4, i64 1, !9, i64 5, i64 1, !9, i64 8, i64 4, !76, i64 12, i64 4, !76}
!78 = !{!25, !8, i64 527635}
!79 = !{!"p1 _ZTS11H5C_class_t", !13, i64 0}
!80 = !{!"p2 _ZTS17H5C_cache_entry_t", !15, i64 0}
!81 = !{!"H5C_cache_entry_t", !41, i64 0, !17, i64 8, !17, i64 16, !13, i64 24, !8, i64 32, !79, i64 40, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !5, i64 52, !8, i64 56, !8, i64 57, !8, i64 58, !8, i64 59, !8, i64 60, !5, i64 64, !80, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !8, i64 101, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !8, i64 152, !5, i64 156, !8, i64 160, !17, i64 168, !61, i64 176, !17, i64 184, !17, i64 192, !5, i64 200, !8, i64 204, !5, i64 208, !5, i64 212, !8, i64 216, !18, i64 224, !18, i64 232, !20, i64 240}
!82 = !{!81, !5, i64 208}
!83 = !{!81, !8, i64 48}
!84 = !{!81, !5, i64 64}
!85 = !{!81, !5, i64 212}
!86 = !{!81, !17, i64 184}
!87 = !{!81, !17, i64 192}
!88 = !{!81, !17, i64 168}
!89 = !{!81, !5, i64 156}
!90 = !{!81, !17, i64 8}
!91 = !{!81, !17, i64 16}
!92 = !{!81, !61, i64 176}
!93 = !{!81, !13, i64 24}
!94 = !{!81, !79, i64 40}
!95 = !{!18, !18, i64 0}
!96 = !{!81, !8, i64 56}
!97 = !{!81, !8, i64 152}
!98 = !{!81, !5, i64 200}
!99 = !{!81, !5, i64 80}
!100 = !{!81, !80, i64 72}
!101 = !{!62, !5, i64 36}
!102 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!103 = distinct !{!103, !72}
!104 = distinct !{!104, !72}
!105 = distinct !{!105, !72}
!106 = !{!25, !8, i64 527621}
!107 = !{!62, !17, i64 56}
!108 = !{!62, !17, i64 64}
!109 = !{!62, !17, i64 8}
!110 = distinct !{!110, !72}
!111 = distinct !{!111, !72}
!112 = distinct !{!112, !72}
!113 = distinct !{!113, !72}
!114 = distinct !{!114, !72}
!115 = distinct !{!115, !72}
!116 = distinct !{null}
!117 = distinct !{!117, !72}
!118 = distinct !{!118, !72}
!119 = !{!81, !41, i64 0}
!120 = !{!81, !8, i64 32}
!121 = !{!81, !8, i64 204}
!122 = !{!81, !8, i64 216}
!123 = !{!"p1 _ZTS13UT_hash_table", !13, i64 0}
!124 = !{!"p1 _ZTS14UT_hash_handle", !13, i64 0}
!125 = !{!"UT_hash_handle", !123, i64 0, !13, i64 8, !13, i64 16, !124, i64 24, !124, i64 32, !13, i64 40, !5, i64 48, !5, i64 52}
!126 = !{!"H5C_recon_entry_t", !17, i64 0, !18, i64 8, !125, i64 16}
!127 = !{!126, !123, i64 16}
!128 = !{!"p1 _ZTS14UT_hash_bucket", !13, i64 0}
!129 = !{!"UT_hash_table", !128, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !124, i64 24, !17, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56}
end_hunk_1
