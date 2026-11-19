Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjbench?download=true
inline.NumInlined: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fullTest:bb.a
  %i.ja = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.iw, i64 noundef 200) #23
  %.not733 = icmp eq i32 %i.ja, 0
  br i1 %.not733, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.b706 = load i1, ptr @tjErrorCode, align 4
  %i.jb = load i32, ptr @tjErrorLine, align 4
  %i.jc = icmp eq i32 %i.jb, 470
  %or.cond41.not = select i1 %.b706, i1 %i.jc, i1 false
  br i1 %or.cond41.not, label %.thread810, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jd = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.iw, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 470, ptr @tjErrorLine, align 4, !tbaa !9
  %i.je = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 470, ptr noundef nonnull %i.iw) ; 0 uses
  br label %.thread810

bb.br:                                            ; preds = %bb.bn
  %i.jf = select i1 %i.iz, ptr @.str.116, ptr @.str.117
  %i.jg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.jf, i32 noundef 470, ptr noundef %i.iw) ; 0 uses
  br label %.thread877

.thread810:                                       ; preds = %bb.bp, %bb.bq, %bb.bj, %bb.bk, %bb.bm, %bb.bg
  %i.jh = load i32, ptr @restartIntervalBlocks, align 4, !tbaa !9
  %i.ji = call i32 @tj3Set(ptr noundef %0, i32 noundef 18, i32 noundef %i.jh) #22
  %i.jj = icmp eq i32 %i.ji, -1
  br i1 %i.jj, label %bb.bs, label %.thread818

bb.bs:                                            ; preds = %.thread810
  %i.jk = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.jl = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.jm = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = icmp eq i32 %i.jk, 0                    ; 2 uses
  %or.cond43 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond43, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.jp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jl, i64 noundef 200) #23
  %.not737 = icmp eq i32 %i.jp, 0
  br i1 %.not737, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.b705 = load i1, ptr @tjErrorCode, align 4
  %i.jq = load i32, ptr @tjErrorLine, align 4
  %i.jr = icmp eq i32 %i.jq, 473
  %or.cond45.not = select i1 %.b705, i1 %i.jr, i1 false
  br i1 %or.cond45.not, label %.thread818, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.js = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jl, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 473, ptr @tjErrorLine, align 4, !tbaa !9
  %i.jt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 473, ptr noundef nonnull %i.jl) ; 0 uses
  br label %.thread818

bb.bw:                                            ; preds = %bb.bs
  %i.ju = select i1 %i.jo, ptr @.str.116, ptr @.str.117
  %i.jv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ju, i32 noundef 473, ptr noundef %i.jl) ; 0 uses
  br label %.thread877

.thread818:                                       ; preds = %bb.bu, %bb.bv, %.thread810
  %i.jw = load i32, ptr @restartIntervalRows, align 4, !tbaa !9
  %i.jx = call i32 @tj3Set(ptr noundef %0, i32 noundef 19, i32 noundef %i.jw) #22
  %i.jy = icmp eq i32 %i.jx, -1
  br i1 %i.jy, label %bb.bx, label %.thread822

bb.bx:                                            ; preds = %.thread818
  %i.jz = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.ka = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.kb = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.kc = icmp eq i32 %i.kb, 0
  %i.kd = icmp eq i32 %i.jz, 0                    ; 2 uses
  %or.cond47 = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %or.cond47, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.ke = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ka, i64 noundef 200) #23
  %.not739 = icmp eq i32 %i.ke, 0
  br i1 %.not739, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.b704 = load i1, ptr @tjErrorCode, align 4
  %i.kf = load i32, ptr @tjErrorLine, align 4
  %i.kg = icmp eq i32 %i.kf, 475
  %or.cond49.not = select i1 %.b704, i1 %i.kg, i1 false
  br i1 %or.cond49.not, label %.thread822, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kh = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ka, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 475, ptr @tjErrorLine, align 4, !tbaa !9
  %i.ki = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 475, ptr noundef nonnull %i.ka) ; 0 uses
  br label %.thread822

bb.cb:                                            ; preds = %bb.bx
  %i.kj = select i1 %i.kd, ptr @.str.116, ptr @.str.117
  %i.kk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.kj, i32 noundef 475, ptr noundef %i.ka) ; 0 uses
  br label %.thread877

.thread822:                                       ; preds = %bb.bz, %bb.ca, %.thread818
  %i.kl = load i32, ptr @maxMemory, align 4, !tbaa !9
  %i.km = call i32 @tj3Set(ptr noundef %0, i32 noundef 23, i32 noundef %i.kl) #22
  %i.kn = icmp eq i32 %i.km, -1
  br i1 %i.kn, label %bb.cc, label %.thread826

bb.cc:                                            ; preds = %.thread822
  %i.ko = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.kp = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.kq = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.kr = icmp eq i32 %i.kq, 0
  %i.ks = icmp eq i32 %i.ko, 0                    ; 2 uses
  %or.cond51 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond51, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.kt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kp, i64 noundef 200) #23
  %.not741 = icmp eq i32 %i.kt, 0
  br i1 %.not741, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.b703 = load i1, ptr @tjErrorCode, align 4
  %i.ku = load i32, ptr @tjErrorLine, align 4
  %i.kv = icmp eq i32 %i.ku, 477
  %or.cond53.not = select i1 %.b703, i1 %i.kv, i1 false
  br i1 %or.cond53.not, label %.thread826, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.kw = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kp, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 477, ptr @tjErrorLine, align 4, !tbaa !9
  %i.kx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 477, ptr noundef nonnull %i.kp) ; 0 uses
  br label %.thread826

bb.cg:                                            ; preds = %bb.cc
  %i.ky = select i1 %i.ks, ptr @.str.116, ptr @.str.117
  %i.kz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ky, i32 noundef 477, ptr noundef %i.kp) ; 0 uses
  br label %.thread877

.thread826:                                       ; preds = %bb.ce, %bb.cf, %.thread822
  %.b697 = load i1, ptr @doYUV, align 4
  br i1 %.b697, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %.thread826
  %i.la = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.lb = call i64 @tj3YUVBufSize(i32 noundef %spec.select, i32 noundef %i.la, i32 noundef %.1607, i32 noundef %4) #22 ; 4 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ld = call ptr @tj3GetErrorStr(ptr noundef null) #22
  %i.le = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef 482, ptr noundef %i.ld) ; 0 uses
  br label %.thread877

bb.cj:                                            ; preds = %bb.ch
  %i.lf = call noalias ptr @malloc(i64 noundef %i.lb) #26 ; 3 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lh = tail call ptr @__errno_location() #25
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !9
  %i.lj = call ptr @strerror(i32 noundef %i.li) #22
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 484, ptr noundef nonnull @.str.319, ptr noundef %i.lj) ; 0 uses
  br label %.thread877

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lf, i8 127, i64 %i.lb, i1 false)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread826
  %.1633 = phi ptr [ %i.lf, %bb.cl ], [ %.0632, %.thread826 ] ; 12 uses
  %.1572 = phi i64 [ %i.lb, %bb.cl ], [ %.0571, %.thread826 ] ; 3 uses
  %i.ll = mul nsw i32 %spec.select, %i.i
  %i.lm = mul nsw i32 %.1607, %i.j
  br label %.thread857.outer

.thread857.outer:                                 ; preds = %.thread857.outer.backedge, %bb.cm
  %.0626.ph = phi double [ 0.000000e+00, %bb.cm ], [ %.0626.ph.be, %.thread857.outer.backedge ]
  %.0617.ph = phi double [ 0.000000e+00, %bb.cm ], [ %.0617.ph.be, %.thread857.outer.backedge ]
  %.0582.ph = phi i32 [ -1, %bb.cm ], [ %.0582.ph.be, %.thread857.outer.backedge ] ; 3 uses
  %i.ln = icmp sgt i32 %.0582.ph, -1
  %i.lo = icmp sgt i32 %.0582.ph, -1
  br label %.thread857

.thread857:                                       ; preds = %.thread857.outer, %bb.dt
  %.0626 = phi double [ %i.px, %bb.dt ], [ %.0626.ph, %.thread857.outer ]
  %.0617 = phi double [ %.1618.lcssa, %bb.dt ], [ %.0617.ph, %.thread857.outer ] ; 2 uses
  %i.lp = call double @getTime() #22
  %.not648 = xor i1 %i.ao, true
  %.not649 = xor i1 %i.ap, true
  %brmerge = or i1 %.not648, %.not649
  br i1 %brmerge, label %._crit_edge1175, label %.preheader.us

.preheader.us:                                    ; preds = %.thread857, %._crit_edge.us
  %.01174.us = phi i64 [ %indvars.iv.next1454, %._crit_edge.us ], [ 0, %.thread857 ]
  %.05781173.us = phi i64 [ %i.oz, %._crit_edge.us ], [ 0, %.thread857 ]
  %.06151172.us = phi i32 [ %i.pg, %._crit_edge.us ], [ 0, %.thread857 ] ; 2 uses
  %.16181171.us = phi double [ %.5622.us, %._crit_edge.us ], [ %.0617, %.thread857 ]
  %.06311170.us = phi ptr [ %i.pj, %._crit_edge.us ], [ %1, %.thread857 ] ; 2 uses
  %i.lq = sub nsw i32 %3, %.06151172.us
  %i.lr = call i32 @llvm.smin.i32(i32 %.1607, i32 %i.lq) ; 5 uses
  br label %bb.cn

bb.cn:                                            ; preds = %.preheader.us, %.thread834.us
  %indvars.iv1453 = phi i64 [ %.01174.us, %.preheader.us ], [ %indvars.iv.next1454, %.thread834.us ] ; 10 uses
  %.15791165.us = phi i64 [ %.05781173.us, %.preheader.us ], [ %i.oz, %.thread834.us ]
  %.06161164.us = phi i32 [ 0, %.preheader.us ], [ %i.pa, %.thread834.us ] ; 2 uses
  %.26191163.us = phi double [ %.16181171.us, %.preheader.us ], [ %.5622.us, %.thread834.us ] ; 11 uses
  %.06301162.us = phi ptr [ %.06311170.us, %.preheader.us ], [ %i.pe, %.thread834.us ] ; 5 uses
  %i.ls = sub nsw i32 %2, %.06161164.us
  %i.lt = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.ls) ; 5 uses
  %.b.us = load i1, ptr @noRealloc, align 4
  br i1 %.b.us, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lu = getelementptr inbounds [8 x i8], ptr %.1576, i64 %indvars.iv1453
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !29
  %i.lw = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1453
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !29
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.b696.us = load i1, ptr @doYUV, align 4
  br i1 %.b696.us, label %bb.dh, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lx = load i32, ptr @precision, align 4, !tbaa !9 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 9
  br i1 %i.ly, label %bb.dc, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lz = icmp samesign ult i32 %i.lx, 13
  %i.ma = load i32, ptr @pf, align 4, !tbaa !9    ; 2 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %calloc1497, i64 %indvars.iv1453 ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1453 ; 2 uses
  br i1 %i.lz, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.md = call i32 @tj3Compress16(ptr noundef %0, ptr noundef %.06301162.us, i32 noundef %i.lt, i32 noundef %i.j, i32 noundef %i.lr, i32 noundef %i.ma, ptr noundef nonnull %i.mb, ptr noundef nonnull %i.mc) #22
  %i.me = icmp eq i32 %i.md, -1
  br i1 %i.me, label %bb.ct, label %.thread834.us

bb.ct:                                            ; preds = %bb.cs
  %i.mf = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.mg = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.mh = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.mi = icmp eq i32 %i.mh, 0
  %i.mj = icmp eq i32 %i.mf, 0                    ; 2 uses
  %or.cond71.us = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %or.cond71.us, label %bb.cu, label %.split.us

bb.cu:                                            ; preds = %bb.ct
  %i.mk = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.mg, i64 noundef 200) #23
  %.not743.us = icmp eq i32 %i.mk, 0
  br i1 %.not743.us, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.b698.us = load i1, ptr @tjErrorCode, align 4
  %i.ml = load i32, ptr @tjErrorLine, align 4
  %i.mm = icmp eq i32 %i.ml, 527
  %or.cond73.not.us = select i1 %.b698.us, i1 %i.mm, i1 false
  br i1 %or.cond73.not.us, label %.thread834.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.mn = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.mg, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 527, ptr @tjErrorLine, align 4, !tbaa !9
  %i.mo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 527, ptr noundef nonnull %i.mg) ; 0 uses
  br label %.thread834.us

bb.cx:                                            ; preds = %bb.cr
  %i.mp = call i32 @tj3Compress12(ptr noundef %0, ptr noundef %.06301162.us, i32 noundef %i.lt, i32 noundef %i.j, i32 noundef %i.lr, i32 noundef %i.ma, ptr noundef nonnull %i.mb, ptr noundef nonnull %i.mc) #22
  %i.mq = icmp eq i32 %i.mp, -1
  br i1 %i.mq, label %bb.cy, label %.thread834.us

bb.cy:                                            ; preds = %bb.cx
  %i.mr = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.ms = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.mt = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.mu = icmp eq i32 %i.mt, 0
  %i.mv = icmp eq i32 %i.mr, 0                    ; 2 uses
  %or.cond67.us = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond67.us, label %bb.cz, label %.split1186.us

bb.cz:                                            ; preds = %bb.cy
  %i.mw = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ms, i64 noundef 200) #23
  %.not745.us = icmp eq i32 %i.mw, 0
  br i1 %.not745.us, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %.b699.us = load i1, ptr @tjErrorCode, align 4
  %i.mx = load i32, ptr @tjErrorLine, align 4
  %i.my = icmp eq i32 %i.mx, 522
  %or.cond69.not.us = select i1 %.b699.us, i1 %i.my, i1 false
  br i1 %or.cond69.not.us, label %.thread834.us, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.mz = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ms, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 522, ptr @tjErrorLine, align 4, !tbaa !9
  %i.na = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 522, ptr noundef nonnull %i.ms) ; 0 uses
  br label %.thread834.us

bb.dc:                                            ; preds = %bb.cq
  %i.nb = load i32, ptr @pf, align 4, !tbaa !9
  %i.nc = getelementptr inbounds [8 x i8], ptr %calloc1497, i64 %indvars.iv1453
  %i.nd = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1453
  %i.ne = call i32 @tj3Compress8(ptr noundef %0, ptr noundef %.06301162.us, i32 noundef %i.lt, i32 noundef %i.j, i32 noundef %i.lr, i32 noundef %i.nb, ptr noundef nonnull %i.nc, ptr noundef nonnull %i.nd) #22
  %i.nf = icmp eq i32 %i.ne, -1
  br i1 %i.nf, label %bb.dd, label %.thread834.us

bb.dd:                                            ; preds = %bb.dc
  %i.ng = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.nh = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.ni = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.nj = icmp eq i32 %i.ni, 0
  %i.nk = icmp eq i32 %i.ng, 0                    ; 2 uses
  %or.cond63.us = select i1 %i.nj, i1 %i.nk, i1 false
  br i1 %or.cond63.us, label %bb.de, label %.split1196.us

bb.de:                                            ; preds = %bb.dd
  %i.nl = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.nh, i64 noundef 200) #23
  %.not747.us = icmp eq i32 %i.nl, 0
  br i1 %.not747.us, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %.b700.us = load i1, ptr @tjErrorCode, align 4
  %i.nm = load i32, ptr @tjErrorLine, align 4
  %i.nn = icmp eq i32 %i.nm, 518
  %or.cond65.not.us = select i1 %.b700.us, i1 %i.nn, i1 false
  br i1 %or.cond65.not.us, label %.thread834.us, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.no = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.nh, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 518, ptr @tjErrorLine, align 4, !tbaa !9
  %i.np = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 518, ptr noundef nonnull %i.nh) ; 0 uses
  br label %.thread834.us

bb.dh:                                            ; preds = %bb.cp
  %i.nq = call double @getTime() #22
  %i.nr = load i32, ptr @pf, align 4, !tbaa !9
  %i.ns = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.nt = call i32 @tj3EncodeYUV8(ptr noundef %0, ptr noundef %.06301162.us, i32 noundef %i.lt, i32 noundef %i.j, i32 noundef %i.lr, i32 noundef %i.nr, ptr noundef %.1633, i32 noundef %i.ns) #22
  %i.nu = icmp eq i32 %i.nt, -1
  br i1 %i.nu, label %bb.di, label %.thread830.us

bb.di:                                            ; preds = %bb.dh
  %i.nv = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.nw = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.nx = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.ny = icmp eq i32 %i.nx, 0
  %i.nz = icmp eq i32 %i.nv, 0                    ; 2 uses
  %or.cond55.us = select i1 %i.ny, i1 %i.nz, i1 false
  br i1 %or.cond55.us, label %bb.dj, label %.thread839

bb.dj:                                            ; preds = %bb.di
  %i.oa = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.nw, i64 noundef 200) #23
  %.not749.us = icmp eq i32 %i.oa, 0
  br i1 %.not749.us, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %.b702.us = load i1, ptr @tjErrorCode, align 4
  %i.ob = load i32, ptr @tjErrorLine, align 4
  %i.oc = icmp eq i32 %i.ob, 509
  %or.cond57.not.us = select i1 %.b702.us, i1 %i.oc, i1 false
  br i1 %or.cond57.not.us, label %.thread830.us, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.od = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.nw, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 509, ptr @tjErrorLine, align 4, !tbaa !9
  %i.oe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 509, ptr noundef nonnull %i.nw) ; 0 uses
  br label %.thread830.us

.thread830.us:                                    ; preds = %bb.dl, %bb.dk, %bb.dh
  br i1 %i.ln, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread830.us
  %i.of = call double @getTime() #22
  %i.og = fsub double %i.of, %i.nq
  %i.oh = fadd double %.26191163.us, %i.og
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread830.us
  %.3620.us = phi double [ %i.oh, %bb.dm ], [ %.26191163.us, %.thread830.us ] ; 3 uses
  %i.oi = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.oj = getelementptr inbounds [8 x i8], ptr %calloc1497, i64 %indvars.iv1453
  %i.ok = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1453
  %i.ol = call i32 @tj3CompressFromYUV8(ptr noundef %0, ptr noundef %.1633, i32 noundef %i.lt, i32 noundef %i.oi, i32 noundef %i.lr, ptr noundef nonnull %i.oj, ptr noundef nonnull %i.ok) #22
  %i.om = icmp eq i32 %i.ol, -1
  br i1 %i.om, label %bb.do, label %.thread834.us

bb.do:                                            ; preds = %bb.dn
  %i.on = call i32 @tj3GetErrorCode(ptr noundef %0) #22
  %i.oo = call ptr @tj3GetErrorStr(ptr noundef %0) #22 ; 4 uses
  %i.op = call i32 @tj3Get(ptr noundef %0, i32 noundef 0) #22
  %i.oq = icmp eq i32 %i.op, 0
  %i.or = icmp eq i32 %i.on, 0                    ; 2 uses
  %or.cond59.us = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond59.us, label %bb.dp, label %.split1214.us

bb.dp:                                            ; preds = %bb.do
  %i.os = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.oo, i64 noundef 200) #23
  %.not751.us = icmp eq i32 %i.os, 0
  br i1 %.not751.us, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %.b701.us = load i1, ptr @tjErrorCode, align 4
  %i.ot = load i32, ptr @tjErrorLine, align 4
  %i.ou = icmp eq i32 %i.ot, 513
  %or.cond61.not.us = select i1 %.b701.us, i1 %i.ou, i1 false
  br i1 %or.cond61.not.us, label %.thread834.us, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ov = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.oo, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 513, ptr @tjErrorLine, align 4, !tbaa !9
  %i.ow = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 513, ptr noundef nonnull %i.oo) ; 0 uses
  br label %.thread834.us

.thread834.us:                                    ; preds = %bb.dr, %bb.dq, %bb.dn, %bb.dg, %bb.df, %bb.dc, %bb.db, %bb.da, %bb.cx, %bb.cw, %bb.cv, %bb.cs
  %.5622.us = phi double [ %.3620.us, %bb.dr ], [ %.3620.us, %bb.dq ], [ %.26191163.us, %bb.dc ], [ %.26191163.us, %bb.dg ], [ %.26191163.us, %bb.cx ], [ %.26191163.us, %bb.db ], [ %.26191163.us, %bb.cs ], [ %.3620.us, %bb.dn ], [ %.26191163.us, %bb.df ], [ %.26191163.us, %bb.da ], [ %.26191163.us, %bb.cv ], [ %.26191163.us, %bb.cw ] ; 3 uses
  %i.ox = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1453
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !29
  %i.oz = add i64 %i.oy, %.15791165.us            ; 3 uses
  %i.pa = add nsw i32 %.06161164.us, %spec.select ; 2 uses
  %indvars.iv.next1454 = add nsw i64 %indvars.iv1453, 1 ; 2 uses
  %i.pb = load i32, ptr @sampleSize, align 4, !tbaa !9 ; 2 uses
  %i.pc = mul nsw i32 %i.ll, %i.pb
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds i8, ptr %.06301162.us, i64 %i.pd
  %i.pf = icmp slt i32 %i.pa, %2
  br i1 %i.pf, label %bb.cn, label %._crit_edge.us, !llvm.loop !66

._crit_edge.us:                                   ; preds = %.thread834.us
  %i.pg = add nsw i32 %.06151172.us, %.1607       ; 2 uses
  %i.ph = mul nsw i32 %i.lm, %i.pb
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds i8, ptr %.06311170.us, i64 %i.pi
  %i.pk = icmp slt i32 %i.pg, %3
  br i1 %i.pk, label %.preheader.us, label %._crit_edge1175, !llvm.loop !67

.thread839:                                       ; preds = %bb.di
  %i.pl = select i1 %i.nz, ptr @.str.116, ptr @.str.117
  %i.pm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.pl, i32 noundef 509, ptr noundef %i.nw) ; 0 uses
  br label %.thread877

.split1214.us:                                    ; preds = %bb.do
  %i.pn = select i1 %i.or, ptr @.str.116, ptr @.str.117
  %i.po = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.pn, i32 noundef 513, ptr noundef %i.oo) ; 0 uses
  br label %.thread877

.split1196.us:                                    ; preds = %bb.dd
  %i.pp = select i1 %i.nk, ptr @.str.116, ptr @.str.117
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.pp, i32 noundef 518, ptr noundef %i.nh) ; 0 uses
  br label %.thread877

.split1186.us:                                    ; preds = %bb.cy
  %i.pr = select i1 %i.mv, ptr @.str.116, ptr @.str.117
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.pr, i32 noundef 522, ptr noundef %i.ms) ; 0 uses
  br label %.thread877

.split.us:                                        ; preds = %bb.ct
  %i.pt = select i1 %i.mj, ptr @.str.116, ptr @.str.117
  %i.pu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.pt, i32 noundef 527, ptr noundef %i.mg) ; 0 uses
  br label %.thread877

._crit_edge1175:                                  ; preds = %._crit_edge.us, %.thread857
  %.1618.lcssa = phi double [ %.0617, %.thread857 ], [ %.5622.us, %._crit_edge.us ] ; 7 uses
  %.0578.lcssa = phi i64 [ 0, %.thread857 ], [ %i.oz, %._crit_edge.us ] ; 3 uses
  %i.pv = call double @getTime() #22
  %i.pw = fsub double %i.pv, %i.lp
  %i.px = fadd double %.0626, %i.pw               ; 6 uses
  br i1 %i.lo, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %._crit_edge1175
  %i.py = add nuw nsw i32 %.0582.ph, 1            ; 3 uses
  %i.pz = load double, ptr @benchTime, align 8, !tbaa !15
  %i.qa = fcmp ult double %i.px, %i.pz
  br i1 %i.qa, label %.thread857.outer.backedge, label %.thread864

.thread857.outer.backedge:                        ; preds = %bb.dt, %bb.ds
  %.0626.ph.be = phi double [ %i.px, %bb.ds ], [ 0.000000e+00, %bb.dt ]
  %.0617.ph.be = phi double [ %.1618.lcssa, %bb.ds ], [ 0.000000e+00, %bb.dt ]
  %.0582.ph.be = phi i32 [ %i.py, %bb.ds ], [ 0, %bb.dt ]
  br label %.thread857.outer

bb.dt:                                            ; preds = %._crit_edge1175
  %i.qb = load double, ptr @warmup, align 8, !tbaa !15
  %i.qc = fcmp ult double %i.px, %i.qb
  br i1 %i.qc, label %.thread857, label %.thread857.outer.backedge

.thread864:                                       ; preds = %bb.ds
  %.b695 = load i1, ptr @doYUV, align 4
  %i.qd = fsub double %i.px, %.1618.lcssa
  %.3629 = select i1 %.b695, double %i.qd, double %i.px ; 4 uses
  %i.qe = load i32, ptr @quiet, align 4, !tbaa !9 ; 2 uses
  %i.qf = icmp eq i32 %i.qe, 1
  br i1 %i.qf, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.thread864
  %i.qg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.277, i32 noundef %spec.select, i32 noundef %.1607) ; 0 uses
  %.pr = load i32, ptr @quiet, align 4, !tbaa !9
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.thread864
  %i.qh = phi i32 [ %.pr, %bb.du ], [ %i.qe, %.thread864 ]
  %.not753 = icmp eq i32 %i.qh, 0
  br i1 %.not753, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.b694 = load i1, ptr @doYUV, align 4
  %i.qi = uitofp nneg i32 %i.py to double
  %i.qj = fmul double %i.as, %i.qi                ; 2 uses
  br i1 %.b694, label %bb.dx, label %._crit_edge1467

bb.dx:                                            ; preds = %bb.dw
  %i.qk = fdiv double %i.qj, %.1618.lcssa         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ql = call double @llvm.fabs.f64(double %i.qk)
  %i.qm = call double @log10(double noundef %i.ql) #22
  %i.qn = call double @llvm.ceil.f64(double %i.qm)
  %i.qo = fptosi double %i.qn to i32              ; 2 uses
  %i.qp = icmp sgt i32 %i.qo, 3
  br i1 %i.qp, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80, ptr noundef nonnull @.str.313) #22 ; 0 uses
  br label %sigfig.exit

bb.dz:                                            ; preds = %bb.dx
  %i.qr = sub nsw i32 4, %i.qo
  %i.qs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80, ptr noundef nonnull @.str.314, i32 noundef %i.qr) #22 ; 0 uses
  br label %sigfig.exit

sigfig.exit:                                      ; preds = %bb.dy, %bb.dz
  %i.qt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull %i.c, double noundef %i.qk) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.qu = load i32, ptr @quiet, align 4, !tbaa !9
  %i.qv = icmp eq i32 %i.qu, 2
  %i.qw = select i1 %i.qv, ptr @str.132, ptr @.str.281
  %i.qx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.d, ptr noundef nonnull %i.qw) ; 0 uses
  br label %._crit_edge1467

._crit_edge1467:                                  ; preds = %bb.dw, %sigfig.exit
  %i.qy = fdiv double %i.qj, %.3629               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.qz = call double @llvm.fabs.f64(double %i.qy)
  %i.ra = call double @log10(double noundef %i.qz) #22
  %i.rb = call double @llvm.ceil.f64(double %i.ra)
  %i.rc = fptosi double %i.rb to i32              ; 2 uses
  %i.rd = icmp sgt i32 %i.rc, 3
  br i1 %i.rd, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %._crit_edge1467
  %i.re = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.313) #22 ; 0 uses
  br label %sigfig.exit777

bb.eb:                                            ; preds = %._crit_edge1467
  %i.rf = sub nsw i32 4, %i.rc
  %i.rg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.314, i32 noundef %i.rf) #22 ; 0 uses
  br label %sigfig.exit777

sigfig.exit777:                                   ; preds = %bb.ea, %bb.eb
  %i.rh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull %i.b, double noundef %i.qy) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ri = load i32, ptr @quiet, align 4, !tbaa !9
  %i.rj = icmp eq i32 %i.ri, 2
  %i.rk = select i1 %i.rj, ptr @str.132, ptr @.str.281
  %i.rl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.d, ptr noundef nonnull %i.rk) ; 0 uses
  %i.rm = uitofp i64 %.0578.lcssa to double
  %i.rn = fdiv double %i.au, %i.rm                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ro = call double @llvm.fabs.f64(double %i.rn)
  %i.rp = call double @log10(double noundef %i.ro) #22
  %i.rq = call double @llvm.ceil.f64(double %i.rp)
  %i.rr = fptosi double %i.rq to i32              ; 2 uses
  %i.rs = icmp sgt i32 %i.rr, 3
  br i1 %i.rs, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %sigfig.exit777
  %i.rt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.313) #22 ; 0 uses
  br label %sigfig.exit778

bb.ed:                                            ; preds = %sigfig.exit777
  %i.ru = sub nsw i32 4, %i.rr
  %i.rv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.314, i32 noundef %i.ru) #22 ; 0 uses
  br label %sigfig.exit778

sigfig.exit778:                                   ; preds = %bb.ec, %bb.ed
  %i.rw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 80, ptr noundef nonnull %i.a, double noundef %i.rn) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.rx = load i32, ptr @quiet, align 4, !tbaa !9
  %i.ry = icmp eq i32 %i.rx, 2
  %i.rz = select i1 %i.ry, ptr @str.132, ptr @.str.281
  %i.sa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.e, ptr noundef nonnull %i.rz) ; 0 uses
  br label %bb.eh

bb.ee:                                            ; preds = %bb.dv
  %.b689 = load i1, ptr @doTile, align 4
  %i.sb = select i1 %.b689, ptr @.str.272, ptr @.str.121
  %i.sc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.335, ptr noundef nonnull %i.sb, i32 noundef %spec.select, i32 noundef %.1607) ; 0 uses
  %.b693 = load i1, ptr @doYUV, align 4
  %i.sd = uitofp nneg i32 %i.py to double         ; 6 uses
  br i1 %.b693, label %bb.ef, label %._crit_edge1468

._crit_edge1468:                                  ; preds = %bb.ee
  %.pre1469 = fmul double %i.as, %i.sd
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.se = fdiv double %i.sd, %.1618.lcssa
  %i.sf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.336, double noundef %i.se) ; 0 uses
  %i.sg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, i64 noundef %.1572) ; 0 uses
  %i.sh = uitofp i64 %.1572 to double             ; 2 uses
  %i.si = fdiv double %i.au, %i.sh
  %i.sj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, double noundef %i.si) ; 0 uses
  %i.sk = insertelement <2 x double> %i.aw, double %i.sh, i64 1
  %i.sl = insertelement <2 x double> <double poison, double 8.000000e+00>, double %i.sd, i64 0
  %i.sm = fmul <2 x double> %i.sk, %i.sl          ; 2 uses
  %i.sn = insertelement <2 x double> <double poison, double 1.000000e+06>, double %.1618.lcssa, i64 0
  %i.so = fdiv <2 x double> %i.sm, %i.sn          ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 0
  %i.sq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.sp) ; 0 uses
  %i.sr = extractelement <2 x double> %i.so, i64 1
  %i.ss = fmul double %i.sr, %i.sd
  %i.st = fdiv double %i.ss, %.1618.lcssa
end_hunk_0
begin_hunk_1_@decomp:bb.a
  %i.hl = sext i32 %.0499 to i64
  %i.hm = mul nsw i64 %i.hk, %i.hl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0547, i8 127, i64 %i.hm, i1 false)
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bn
  %i.hn = icmp samesign ult i32 %i.hi, 13
  %i.ho = mul nsw i32 %i.gv, %.0499               ; 7 uses
  %i.hp = icmp sgt i32 %i.ho, 0                   ; 2 uses
  br i1 %i.hn, label %.preheader787, label %.preheader788

.preheader788:                                    ; preds = %bb.bp
  br i1 %i.hp, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader788
  %wide.trip.count = zext nneg i32 %i.ho to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ho, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check969 = icmp ult i32 %i.ho, 16
  br i1 %min.iters.check969, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <8 x i16> splat (i16 32767), ptr %i.hr, align 2, !tbaa !24
  store <8 x i16> splat (i16 32767), ptr %i.hs, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec970 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index971 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next972, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index971
  store <4 x i16> splat (i16 32767), ptr %i.hu, align 2, !tbaa !24
  %index.next972 = add nuw i64 %index971, 4       ; 2 uses
  %i.hv = icmp eq i64 %index.next972, %n.vec970
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n973 = icmp eq i64 %n.vec970, %wide.trip.count
  br i1 %cmp.n973, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec970, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader787:                                    ; preds = %bb.bp
  br i1 %i.hp, label %iter.check984, label %.loopexit

iter.check984:                                    ; preds = %.preheader787
  %wide.trip.count904 = zext nneg i32 %i.ho to i64 ; 6 uses
  %min.iters.check974 = icmp ult i32 %i.ho, 4
  br i1 %min.iters.check974, label %.lr.ph818.preheader, label %vector.main.loop.iter.check975

vector.main.loop.iter.check975:                   ; preds = %iter.check984
  %min.iters.check976 = icmp ult i32 %i.ho, 16
  br i1 %min.iters.check976, label %vec.epilog.ph988, label %vector.ph977

vector.ph977:                                     ; preds = %vector.main.loop.iter.check975
  %i.hw = and i64 %wide.trip.count904, 12
  %n.vec978 = and i64 %wide.trip.count904, 2147483632 ; 4 uses
  br label %vector.body979

vector.body979:                                   ; preds = %vector.ph977, %vector.body979
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body979 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index980 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <8 x i16> splat (i16 2047), ptr %i.hx, align 2, !tbaa !24
  store <8 x i16> splat (i16 2047), ptr %i.hy, align 2, !tbaa !24
  %index.next981 = add nuw i64 %index980, 16      ; 2 uses
  %i.hz = icmp eq i64 %index.next981, %n.vec978
  br i1 %i.hz, label %middle.block982, label %vector.body979, !llvm.loop !73

middle.block982:                                  ; preds = %vector.body979
  %cmp.n983 = icmp eq i64 %n.vec978, %wide.trip.count904
  br i1 %cmp.n983, label %.loopexit, label %vec.epilog.iter.check985

vec.epilog.iter.check985:                         ; preds = %middle.block982
  %min.epilog.iters.check987 = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check987, label %.lr.ph818.preheader, label %vec.epilog.ph988, !prof !27

vec.epilog.ph988:                                 ; preds = %vector.main.loop.iter.check975, %vec.epilog.iter.check985
  %vec.epilog.resume.val989 = phi i64 [ %n.vec978, %vec.epilog.iter.check985 ], [ 0, %vector.main.loop.iter.check975 ]
  %n.vec990 = and i64 %wide.trip.count904, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body991

vec.epilog.vector.body991:                        ; preds = %vec.epilog.vector.body991, %vec.epilog.ph988
  %index992 = phi i64 [ %vec.epilog.resume.val989, %vec.epilog.ph988 ], [ %index.next993, %vec.epilog.vector.body991 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %index992
  store <4 x i16> splat (i16 2047), ptr %i.ia, align 2, !tbaa !24
  %index.next993 = add nuw i64 %index992, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next993, %n.vec990
  br i1 %i.ib, label %vec.epilog.middle.block994, label %vec.epilog.vector.body991, !llvm.loop !74

vec.epilog.middle.block994:                       ; preds = %vec.epilog.vector.body991
  %cmp.n995 = icmp eq i64 %n.vec990, %wide.trip.count904
  br i1 %cmp.n995, label %.loopexit, label %.lr.ph818.preheader

.lr.ph818.preheader:                              ; preds = %iter.check984, %vec.epilog.iter.check985, %vec.epilog.middle.block994
  %indvars.iv901.ph = phi i64 [ 0, %iter.check984 ], [ %n.vec978, %vec.epilog.iter.check985 ], [ %n.vec990, %vec.epilog.middle.block994 ]
  br label %.lr.ph818

.lr.ph818:                                        ; preds = %.lr.ph818.preheader, %.lr.ph818
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %.lr.ph818 ], [ %indvars.iv901.ph, %.lr.ph818.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %indvars.iv901
  store i16 2047, ptr %i.ic, align 2, !tbaa !24
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1 ; 2 uses
  %exitcond905.not = icmp eq i64 %indvars.iv.next902, %wide.trip.count904
  br i1 %exitcond905.not, label %.loopexit, label %.lr.ph818, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %.0547, i64 %indvars.iv
  store i16 32767, ptr %i.id, align 2, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph818, %middle.block, %vec.epilog.middle.block, %middle.block982, %vec.epilog.middle.block994, %.preheader788, %.preheader787, %bb.bo
  %.b598 = load i1, ptr @doYUV, align 4
  br i1 %.b598, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %.loopexit
  %.b592 = load i1, ptr @doTile, align 4          ; 2 uses
  %i.ie = select i1 %.b592, i32 %8, i32 %.0500
  %i.if = select i1 %.b592, i32 %9, i32 %.0499
  %i.ig = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.ih = tail call i64 @tj3YUVBufSize(i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef %i.if, i32 noundef %5) #22 ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ij = tail call ptr @tj3GetErrorStr(ptr noundef null) #22
  %i.ik = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef 259, ptr noundef %i.ij) ; 0 uses
  br label %.thread722

bb.bs:                                            ; preds = %bb.bq
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ih) #26 ; 3 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.in = tail call ptr @__errno_location() #25
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9
  %i.ip = tail call ptr @strerror(i32 noundef %i.io) #22
  %i.iq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 261, ptr noundef nonnull @.str.319, ptr noundef %i.ip) ; 0 uses
  br label %.thread722

bb.bu:                                            ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.il, i8 127, i64 %i.ih, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.loopexit
  %.1495 = phi ptr [ %i.il, %bb.bu ], [ null, %.loopexit ] ; 20 uses
  %i.ir = icmp sgt i32 %4, 0
  %i.is = mul nsw i32 %i.g, %8
  %i.it = sext i32 %i.gv to i64
  %i.iu = sext i32 %9 to i64
  %i.iv = mul nsw i64 %i.it, %i.iu
  br i1 %i.ir, label %.split.us849, label %.split.outer

.split.us849:                                     ; preds = %bb.bv
  %i.iw = icmp sgt i32 %3, 0
  br i1 %i.iw, label %.preheader.lr.ph.us.us.outer, label %.preheader.lr.ph.us.outer

.preheader.lr.ph.us.us.outer:                     ; preds = %.split.us849, %.preheader.lr.ph.us.us.outer.backedge
  %.0539.us.us.ph = phi i32 [ %.0539.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ -1, %.split.us849 ] ; 2 uses
  %.0510.us.us.ph = phi double [ %.0510.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %.0501.us.us.ph = phi double [ %.0501.us.us.ph.be, %.preheader.lr.ph.us.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %i.ix = icmp sgt i32 %.0539.us.us.ph, -1        ; 2 uses
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.outer, %bb.cy
  %.0510.us.us = phi double [ %i.my, %bb.cy ], [ %.0510.us.us.ph, %.preheader.lr.ph.us.us.outer ]
  %.0501.us.us = phi double [ %.6507.ph.us.us.us, %bb.cy ], [ %.0501.us.us.ph, %.preheader.lr.ph.us.us.outer ]
  %i.iy = tail call double @getTime() #22
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader.lr.ph.us.us
  %.0828.us.us.us = phi i64 [ 0, %.preheader.lr.ph.us.us ], [ %indvars.iv.next907, %._crit_edge.us.us.us ]
  %.0498827.us.us.us = phi ptr [ %.0547, %.preheader.lr.ph.us.us ], [ %i.mu, %._crit_edge.us.us.us ] ; 2 uses
  %.1502826.us.us.us = phi double [ %.0501.us.us, %.preheader.lr.ph.us.us ], [ %.6507.ph.us.us.us, %._crit_edge.us.us.us ]
  %.0542825.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.mr, %._crit_edge.us.us.us ] ; 2 uses
  %i.iz = sub nsw i32 %4, %.0542825.us.us.us
  %i.ja = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.iz)
  br label %bb.bw

bb.bw:                                            ; preds = %.thread735.us.us.us, %.preheader.us.us.us
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %.thread735.us.us.us ], [ %.0828.us.us.us, %.preheader.us.us.us ] ; 7 uses
  %.0497821.us.us.us = phi ptr [ %i.mp, %.thread735.us.us.us ], [ %.0498827.us.us.us, %.preheader.us.us.us ] ; 5 uses
  %.2503820.us.us.us = phi double [ %.6507.ph.us.us.us, %.thread735.us.us.us ], [ %.1502826.us.us.us, %.preheader.us.us.us ] ; 11 uses
  %.0543819.us.us.us = phi i32 [ %i.ml, %.thread735.us.us.us ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.b591.us.us.us = load i1, ptr @doTile, align 4 ; 2 uses
  %i.jb = sub nsw i32 %3, %.0543819.us.us.us
  %i.jc = tail call i32 @llvm.smin.i32(i32 %8, i32 %i.jb)
  %i.jd = select i1 %.b591.us.us.us, i32 %i.jc, i32 %.0500
  %i.je = select i1 %.b591.us.us.us, i32 %i.ja, i32 %.0499
  %.b597.us.us.us = load i1, ptr @doYUV, align 4
  br i1 %.b597.us.us.us, label %bb.co, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jf = load i32, ptr @precision, align 4, !tbaa !9 ; 2 uses
  %i.jg = icmp slt i32 %i.jf, 9
  br i1 %i.jg, label %bb.cj, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jh = icmp samesign ult i32 %i.jf, 13
  %i.ji = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv906
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !13 ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv906
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !29 ; 2 uses
  %i.jm = load i32, ptr @pf, align 4, !tbaa !9    ; 2 uses
  br i1 %i.jh, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jn = tail call i32 @tj3Decompress16(ptr noundef nonnull %i.v, ptr noundef %i.jj, i64 noundef %i.jl, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.jm) #22
  %i.jo = icmp eq i32 %i.jn, -1
  br i1 %i.jo, label %bb.ca, label %.thread735.us.us.us

bb.ca:                                            ; preds = %bb.bz
  %i.jp = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.jq = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.jr = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.js = icmp eq i32 %i.jr, 0
  %i.jt = icmp eq i32 %i.jp, 0                    ; 2 uses
  %or.cond73.us.us.us = select i1 %i.js, i1 %i.jt, i1 false
  br i1 %or.cond73.us.us.us, label %bb.cb, label %.split.us

bb.cb:                                            ; preds = %bb.ca
  %i.ju = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jq, i64 noundef 200) #23
  %.not641.us.us.us = icmp eq i32 %i.ju, 0
  br i1 %.not641.us.us.us, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.b602.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.jv = load i32, ptr @tjErrorLine, align 4
  %i.jw = icmp eq i32 %i.jv, 302
  %or.cond75.not.us.us.us = select i1 %.b602.us.us.us, i1 %i.jw, i1 false
  br i1 %or.cond75.not.us.us.us, label %.thread735.us.us.us, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jx = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.jq, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 302, ptr @tjErrorLine, align 4, !tbaa !9
  %i.jy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 302, ptr noundef nonnull %i.jq) ; 0 uses
  br label %.thread735.us.us.us

bb.ce:                                            ; preds = %bb.by
  %i.jz = tail call i32 @tj3Decompress12(ptr noundef nonnull %i.v, ptr noundef %i.jj, i64 noundef %i.jl, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.jm) #22
  %i.ka = icmp eq i32 %i.jz, -1
  br i1 %i.ka, label %bb.cf, label %.thread735.us.us.us

bb.cf:                                            ; preds = %bb.ce
  %i.kb = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.kc = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.kd = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.ke = icmp eq i32 %i.kd, 0
  %i.kf = icmp eq i32 %i.kb, 0                    ; 2 uses
  %or.cond69.us.us.us = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %or.cond69.us.us.us, label %bb.cg, label %.split833.us

bb.cg:                                            ; preds = %bb.cf
  %i.kg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kc, i64 noundef 200) #23
  %.not643.us.us.us = icmp eq i32 %i.kg, 0
  br i1 %.not643.us.us.us, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.b603.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.kh = load i32, ptr @tjErrorLine, align 4
  %i.ki = icmp eq i32 %i.kh, 298
  %or.cond71.not.us.us.us = select i1 %.b603.us.us.us, i1 %i.ki, i1 false
  br i1 %or.cond71.not.us.us.us, label %.thread735.us.us.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kj = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kc, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 298, ptr @tjErrorLine, align 4, !tbaa !9
  %i.kk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 298, ptr noundef nonnull %i.kc) ; 0 uses
  br label %.thread735.us.us.us

bb.cj:                                            ; preds = %bb.bx
  %i.kl = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv906
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !13
  %i.kn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv906
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !29
  %i.kp = load i32, ptr @pf, align 4, !tbaa !9
  %i.kq = tail call i32 @tj3Decompress8(ptr noundef nonnull %i.v, ptr noundef %i.km, i64 noundef %i.ko, ptr noundef %.0497821.us.us.us, i32 noundef %i.gv, i32 noundef %i.kp) #22
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %bb.ck, label %.thread735.us.us.us

bb.ck:                                            ; preds = %bb.cj
  %i.ks = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.kt = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ku = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.kv = icmp eq i32 %i.ku, 0
  %i.kw = icmp eq i32 %i.ks, 0                    ; 2 uses
  %or.cond65.us.us.us = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond65.us.us.us, label %bb.cl, label %.split837.us

bb.cl:                                            ; preds = %bb.ck
  %i.kx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kt, i64 noundef 200) #23
  %.not645.us.us.us = icmp eq i32 %i.kx, 0
  br i1 %.not645.us.us.us, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.b604.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.ky = load i32, ptr @tjErrorLine, align 4
  %i.kz = icmp eq i32 %i.ky, 294
  %or.cond67.not.us.us.us = select i1 %.b604.us.us.us, i1 %i.kz, i1 false
  br i1 %or.cond67.not.us.us.us, label %.thread735.us.us.us, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.la = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.kt, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 294, ptr @tjErrorLine, align 4, !tbaa !9
  %i.lb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 294, ptr noundef nonnull %i.kt) ; 0 uses
  br label %.thread735.us.us.us

bb.co:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv906
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !13
  %i.le = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv906
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !29
  %i.lg = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.lh = tail call i32 @tj3DecompressToYUV8(ptr noundef nonnull %i.v, ptr noundef %i.ld, i64 noundef %i.lf, ptr noundef %.1495, i32 noundef %i.lg) #22
  %i.li = icmp eq i32 %i.lh, -1
  br i1 %i.li, label %bb.cp, label %.thread727.us.us.us

bb.cp:                                            ; preds = %bb.co
  %i.lj = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.lk = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ll = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = icmp eq i32 %i.lj, 0                    ; 2 uses
  %or.cond57.us.us.us = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond57.us.us.us, label %bb.cq, label %.split841.us

bb.cq:                                            ; preds = %bb.cp
  %i.lo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lk, i64 noundef 200) #23
  %.not647.us.us.us = icmp eq i32 %i.lo, 0
  br i1 %.not647.us.us.us, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.b606.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.lp = load i32, ptr @tjErrorLine, align 4
  %i.lq = icmp eq i32 %i.lp, 284
  %or.cond59.not.us.us.us = select i1 %.b606.us.us.us, i1 %i.lq, i1 false
  br i1 %or.cond59.not.us.us.us, label %.thread727.us.us.us, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.lr = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lk, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 284, ptr @tjErrorLine, align 4, !tbaa !9
  %i.ls = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 284, ptr noundef nonnull %i.lk) ; 0 uses
  br label %.thread727.us.us.us

.thread727.us.us.us:                              ; preds = %bb.cs, %bb.cr, %bb.co
  %i.lt = tail call double @getTime() #22
  %i.lu = load i32, ptr @yuvAlign, align 4, !tbaa !9
  %i.lv = load i32, ptr @pf, align 4, !tbaa !9
  %i.lw = tail call i32 @tj3DecodeYUV8(ptr noundef nonnull %i.v, ptr noundef %.1495, i32 noundef %i.lu, ptr noundef %.0497821.us.us.us, i32 noundef %i.jd, i32 noundef %i.gv, i32 noundef %i.je, i32 noundef %i.lv) #22
  %i.lx = icmp eq i32 %i.lw, -1
  br i1 %i.lx, label %bb.ct, label %.thread731.us.us.us

bb.ct:                                            ; preds = %.thread727.us.us.us
  %i.ly = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.v) #22
  %i.lz = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.v) #22 ; 4 uses
  %i.ma = tail call i32 @tj3Get(ptr noundef nonnull %i.v, i32 noundef 0) #22
  %i.mb = icmp eq i32 %i.ma, 0
  %i.mc = icmp eq i32 %i.ly, 0                    ; 2 uses
  %or.cond61.us.us.us = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %or.cond61.us.us.us, label %bb.cu, label %.split845.us

bb.cu:                                            ; preds = %bb.ct
  %i.md = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #23
  %.not649.us.us.us = icmp eq i32 %i.md, 0
  br i1 %.not649.us.us.us, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.b605.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.me = load i32, ptr @tjErrorLine, align 4
  %i.mf = icmp eq i32 %i.me, 288
  %or.cond63.not.us.us.us = select i1 %.b605.us.us.us, i1 %i.mf, i1 false
  br i1 %or.cond63.not.us.us.us, label %.thread731.us.us.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.mg = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lz, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 288, ptr @tjErrorLine, align 4, !tbaa !9
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef 288, ptr noundef nonnull %i.lz) ; 0 uses
  br label %.thread731.us.us.us

.thread731.us.us.us:                              ; preds = %bb.cw, %bb.cv, %.thread727.us.us.us
  br i1 %i.ix, label %bb.cx, label %.thread735.us.us.us

bb.cx:                                            ; preds = %.thread731.us.us.us
  %i.mi = tail call double @getTime() #22
  %i.mj = fsub double %i.mi, %i.lt
  %i.mk = fadd double %.2503820.us.us.us, %i.mj
  br label %.thread735.us.us.us

.thread735.us.us.us:                              ; preds = %bb.cx, %.thread731.us.us.us, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ch, %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %.6507.ph.us.us.us = phi double [ %.2503820.us.us.us, %bb.bz ], [ %.2503820.us.us.us, %bb.ci ], [ %.2503820.us.us.us, %bb.ce ], [ %.2503820.us.us.us, %bb.cn ], [ %.2503820.us.us.us, %bb.cj ], [ %i.mk, %bb.cx ], [ %.2503820.us.us.us, %.thread731.us.us.us ], [ %.2503820.us.us.us, %bb.cm ], [ %.2503820.us.us.us, %bb.ch ], [ %.2503820.us.us.us, %bb.cc ], [ %.2503820.us.us.us, %bb.cd ] ; 5 uses
  %i.ml = add nsw i32 %.0543819.us.us.us, %8      ; 2 uses
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, 1 ; 2 uses
  %i.mm = load i32, ptr @sampleSize, align 4, !tbaa !9 ; 2 uses
  %i.mn = mul nsw i32 %i.is, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %.0497821.us.us.us, i64 %i.mo
  %i.mq = icmp slt i32 %i.ml, %3
  br i1 %i.mq, label %bb.bw, label %._crit_edge.us.us.us, !llvm.loop !77

._crit_edge.us.us.us:                             ; preds = %.thread735.us.us.us
  %i.mr = add nsw i32 %.0542825.us.us.us, %9      ; 2 uses
  %i.ms = zext nneg i32 %i.mm to i64
  %i.mt = mul i64 %i.iv, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %.0498827.us.us.us, i64 %i.mt
  %i.mv = icmp slt i32 %i.mr, %4
  br i1 %i.mv, label %.preheader.us.us.us, label %._crit_edge829.split.us.us.us, !llvm.loop !78

._crit_edge829.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.mw = tail call double @getTime() #22
  %i.mx = fsub double %i.mw, %i.iy
  %i.my = fadd double %.0510.us.us, %i.mx         ; 5 uses
  br i1 %i.ix, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge829.split.us.us.us
  %i.mz = load double, ptr @warmup, align 8, !tbaa !15
  %i.na = fcmp ult double %i.my, %i.mz
  br i1 %i.na, label %.preheader.lr.ph.us.us, label %.preheader.lr.ph.us.us.outer.backedge

bb.cz:                                            ; preds = %._crit_edge829.split.us.us.us
  %i.nb = add nuw nsw i32 %.0539.us.us.ph, 1      ; 2 uses
  %i.nc = load double, ptr @benchTime, align 8, !tbaa !15
  %i.nd = fcmp ult double %i.my, %i.nc
  br i1 %i.nd, label %.preheader.lr.ph.us.us.outer.backedge, label %.split865.us

.preheader.lr.ph.us.us.outer.backedge:            ; preds = %bb.cy, %bb.cz
  %.0539.us.us.ph.be = phi i32 [ %i.nb, %bb.cz ], [ 0, %bb.cy ]
  %.0510.us.us.ph.be = phi double [ %i.my, %bb.cz ], [ 0.000000e+00, %bb.cy ]
  %.0501.us.us.ph.be = phi double [ %.6507.ph.us.us.us, %bb.cz ], [ 0.000000e+00, %bb.cy ]
  br label %.preheader.lr.ph.us.us.outer

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.outer, %bb.da
  %.0510.us = phi double [ %i.nh, %bb.da ], [ %.0510.us.ph, %.preheader.lr.ph.us.outer ]
  %i.ne = tail call double @getTime() #22
  %i.nf = tail call double @getTime() #22
  %i.ng = fsub double %i.nf, %i.ne
  %i.nh = fadd double %.0510.us, %i.ng            ; 5 uses
  br i1 %i.nk, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.preheader.lr.ph.us
  %i.ni = load double, ptr @warmup, align 8, !tbaa !15
  %i.nj = fcmp ult double %i.nh, %i.ni
  br i1 %i.nj, label %.preheader.lr.ph.us, label %.preheader.lr.ph.us.outer.backedge

.preheader.lr.ph.us.outer:                        ; preds = %.split.us849, %.preheader.lr.ph.us.outer.backedge
  %.0539.us.ph = phi i32 [ %.0539.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ -1, %.split.us849 ] ; 2 uses
  %.0510.us.ph = phi double [ %.0510.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ 0.000000e+00, %.split.us849 ]
  %i.nk = icmp sgt i32 %.0539.us.ph, -1
  br label %.preheader.lr.ph.us

bb.db:                                            ; preds = %.preheader.lr.ph.us
  %i.nl = add nuw nsw i32 %.0539.us.ph, 1         ; 2 uses
  %i.nm = load double, ptr @benchTime, align 8, !tbaa !15
  %i.nn = fcmp ult double %i.nh, %i.nm
  br i1 %i.nn, label %.preheader.lr.ph.us.outer.backedge, label %.split865.us

.preheader.lr.ph.us.outer.backedge:               ; preds = %bb.da, %bb.db
  %.0539.us.ph.be = phi i32 [ %i.nl, %bb.db ], [ 0, %bb.da ]
  %.0510.us.ph.be = phi double [ %i.nh, %bb.db ], [ 0.000000e+00, %bb.da ]
  br label %.preheader.lr.ph.us.outer

.split:                                           ; preds = %.split.outer, %bb.dd
  %.0510 = phi double [ %i.nr, %bb.dd ], [ %.0510.ph, %.split.outer ]
  %i.no = tail call double @getTime() #22
  %i.np = tail call double @getTime() #22
  %i.nq = fsub double %i.np, %i.no
  %i.nr = fadd double %.0510, %i.nq               ; 5 uses
  br i1 %i.of, label %bb.dc, label %bb.dd

.split841.us:                                     ; preds = %bb.cp
  %i.ns = select i1 %i.ln, ptr @.str.116, ptr @.str.117
  %i.nt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ns, i32 noundef 284, ptr noundef %i.lk) ; 0 uses
  br label %.thread722

.split845.us:                                     ; preds = %bb.ct
  %i.nu = select i1 %i.mc, ptr @.str.116, ptr @.str.117
  %i.nv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nu, i32 noundef 288, ptr noundef %i.lz) ; 0 uses
  br label %.thread722

.split837.us:                                     ; preds = %bb.ck
  %i.nw = select i1 %i.kw, ptr @.str.116, ptr @.str.117
  %i.nx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.nw, i32 noundef 294, ptr noundef %i.kt) ; 0 uses
  br label %.thread722

.split833.us:                                     ; preds = %bb.cf
  %i.ny = select i1 %i.kf, ptr @.str.116, ptr @.str.117
  %i.nz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.ny, i32 noundef 298, ptr noundef %i.kc) ; 0 uses
  br label %.thread722

.split.us:                                        ; preds = %bb.ca
  %i.oa = select i1 %i.jt, ptr @.str.116, ptr @.str.117
  %i.ob = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.oa, i32 noundef 302, ptr noundef %i.jq) ; 0 uses
  br label %.thread722

bb.dc:                                            ; preds = %.split
  %i.oc = add nuw nsw i32 %.0539.ph, 1            ; 2 uses
  %i.od = load double, ptr @benchTime, align 8, !tbaa !15
  %i.oe = fcmp ult double %i.nr, %i.od
  br i1 %i.oe, label %.split.outer.backedge, label %.split865.us

.split.outer.backedge:                            ; preds = %bb.dd, %bb.dc
  %.0539.ph.be = phi i32 [ %i.oc, %bb.dc ], [ 0, %bb.dd ]
  %.0510.ph.be = phi double [ %i.nr, %bb.dc ], [ 0.000000e+00, %bb.dd ]
  br label %.split.outer

.split.outer:                                     ; preds = %bb.bv, %.split.outer.backedge
  %.0539.ph = phi i32 [ %.0539.ph.be, %.split.outer.backedge ], [ -1, %bb.bv ] ; 2 uses
  %.0510.ph = phi double [ %.0510.ph.be, %.split.outer.backedge ], [ 0.000000e+00, %bb.bv ]
  %i.of = icmp sgt i32 %.0539.ph, -1
  br label %.split

bb.dd:                                            ; preds = %.split
  %i.og = load double, ptr @warmup, align 8, !tbaa !15
  %i.oh = fcmp ult double %i.nr, %i.og
  br i1 %i.oh, label %.split, label %.split.outer.backedge

.split865.us:                                     ; preds = %bb.dc, %bb.db, %bb.cz
  %.us-phi866 = phi i32 [ %i.nl, %bb.db ], [ %i.nb, %bb.cz ], [ %i.oc, %bb.dc ] ; 2 uses
  %.us-phi867 = phi double [ %i.nh, %bb.db ], [ %i.my, %bb.cz ], [ %i.nr, %bb.dc ] ; 2 uses
  %.us-phi868 = phi double [ 0.000000e+00, %bb.db ], [ %.6507.ph.us.us.us, %bb.cz ], [ 0.000000e+00, %bb.dc ] ; 4 uses
  %.b596 = load i1, ptr @doYUV, align 4           ; 2 uses
  %i.oi = fsub double %.us-phi867, %.us-phi868
  %.3513 = select i1 %.b596, double %i.oi, double %.us-phi867 ; 3 uses
  %i.oj = load i32, ptr @quiet, align 4, !tbaa !9
  %.not651 = icmp eq i32 %i.oj, 0
  br i1 %.not651, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.split865.us
  %i.ok = mul nsw i32 %4, %3
  %i.ol = sitofp i32 %i.ok to double
  %i.om = fdiv nnan double %i.ol, 1.000000e+06
  %i.on = uitofp nneg i32 %.us-phi866 to double
  %i.oo = fmul double %i.om, %i.on                ; 2 uses
  %i.op = fdiv double %i.oo, %.3513
  %i.oq = call fastcc ptr @sigfig(double noundef %i.op, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %i.or = load i32, ptr @quiet, align 4, !tbaa !9
  %i.os = icmp eq i32 %i.or, 2
  %i.ot = select i1 %i.os, ptr @str.132, ptr @.str.281
  %i.ou = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.320, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ot) ; 0 uses
  %.b595 = load i1, ptr @doYUV, align 4
  br i1 %.b595, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ov = fdiv double %i.oo, %.us-phi868
  %i.ow = call fastcc ptr @sigfig(double noundef %i.ov, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  br label %bb.dk

bb.dg:                                            ; preds = %bb.de
  %i.ox = load i32, ptr @quiet, align 4, !tbaa !9
  %.not652 = icmp eq i32 %i.ox, 2
  br i1 %.not652, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.dk

bb.di:                                            ; preds = %.split865.us
  %i.oy = select i1 %.b596, ptr @.str.323, ptr @.str.324
  %i.oz = mul nsw i32 %4, %3
  %i.pa = uitofp nneg i32 %.us-phi866 to double   ; 3 uses
  %i.pb = sitofp i32 %i.oz to double
  %i.pc = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.pb, i64 1
  %i.pe = insertelement <2 x double> <double poison, double 1.000000e+06>, double %.3513, i64 0
  %i.pf = fdiv <2 x double> %i.pd, %i.pe          ; 2 uses
  %i.pg = extractelement <2 x double> %i.pf, i64 0
  %i.ph = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, ptr noundef nonnull %i.oy, double noundef %i.pg) ; 0 uses
  %i.pi = extractelement <2 x double> %i.pf, i64 1
  %i.pj = fmul double %i.pi, %i.pa                ; 2 uses
  %i.pk = fdiv double %i.pj, %.3513
  %i.pl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.pk) ; 0 uses
  %.b593 = load i1, ptr @doYUV, align 4
  br i1 %.b593, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.pm = fdiv double %i.pa, %.us-phi868
  %i.pn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.325, double noundef %i.pm) ; 0 uses
  %i.po = fdiv double %i.pj, %.us-phi868
  %i.pp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, double noundef %i.po) ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj, %bb.df, %bb.dh, %bb.dg
  %.b588 = load i1, ptr @doWrite, align 4
  br i1 %.b588, label %.thread722, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pq = load i32, ptr @sf, align 8, !tbaa !21   ; 2 uses
  %i.pr = icmp ne i32 %i.pq, 1
  %i.ps = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4 ; 2 uses
  %i.pt = icmp ne i32 %i.ps, 1
  %or.cond77 = select i1 %i.pr, i1 true, i1 %i.pt
  br i1 %or.cond77, label %bb.dm, label %bb.dn
end_hunk_1
