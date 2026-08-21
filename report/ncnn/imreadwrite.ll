inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  store ptr %i.jp, ptr %i.h, align 8, !tbaa !27
  br i1 %.not, label %bb.bw, label %bb.hb

bb.bw:                                            ; preds = %_ZL14stbi__bmp_testP13stbi__context.exit.thread85, %_ZL14stbi__bmp_testP13stbi__context.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 255, ptr %i.jq, align 4, !tbaa !57
  %i.jr = call fastcc noundef ptr @_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data(ptr noundef nonnull %0, ptr noundef %7)
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !52 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  %i.jw = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 true) ; 2 uses
  store i32 %i.jw, ptr %i.jt, align 4, !tbaa !52
  %i.jx = icmp samesign ugt i32 %i.jw, 16777216
  br i1 %i.jx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.bz:                                            ; preds = %bb.bx
  %i.jy = load i32, ptr %0, align 8, !tbaa !51
  %i.jz = icmp ugt i32 %i.jy, 16777216
  br i1 %i.jz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !59 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !60 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !61 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !62 ; 7 uses
  %i.ki = load i32, ptr %i.jq, align 4, !tbaa !57 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !63 ; 4 uses
  %i.kl = icmp eq i32 %i.kk, 12                   ; 3 uses
  %i.km = load i32, ptr %7, align 4, !tbaa !64    ; 4 uses
  br i1 %i.kl, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.kn = icmp slt i32 %i.km, 24
  br i1 %i.kn, label %bb.cd, label %.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !65 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !66
  %i.ks = add i32 %i.kp, -24
  %i.kt = sub i32 %i.ks, %i.kr
  %i.ku = sdiv i32 %i.kt, 3
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.kv = icmp slt i32 %i.km, 16
  br i1 %i.kv, label %bb.cf, label %.thread.i

bb.cf:                                            ; preds = %bb.ce
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !65 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !66
  %i.la = add i32 %i.kk, %i.kz
  %i.lb = sub i32 %i.kx, %i.la
  %i.lc = ashr i32 %i.lb, 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.ld = phi i32 [ %i.kp, %bb.cd ], [ %i.kx, %bb.cf ]
  %.0332.i = phi i32 [ %i.ku, %bb.cd ], [ %i.lc, %bb.cf ] ; 2 uses
  %i.le = icmp eq i32 %.0332.i, 0
  br i1 %i.le, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cg
  %i.lf = icmp eq i32 %i.kh, -16777216
  br label %bb.cm

.thread.i:                                        ; preds = %bb.cg, %bb.ce, %bb.cc
  %i.lg = load i32, ptr %i.o, align 8, !tbaa !21
  %i.lh = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = add nsw i32 %i.lg, %i.lm                ; 3 uses
  %i.lo = add i32 %i.ln, -1025
  %or.cond378.i = icmp ult i32 %i.lo, -1024
  br i1 %or.cond378.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread.i
  store ptr @.str.30, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ci:                                            ; preds = %.thread.i
  %i.lp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !65 ; 4 uses
  %i.lr = icmp slt i32 %i.lq, %i.ln
  br i1 %i.lr, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ls = sub nsw i32 %i.lq, %i.ln                ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 1024
  br i1 %i.lt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store ptr @.str.31, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cl:                                            ; preds = %bb.cj
  tail call fastcc void @_ZL10stbi__skipP13stbi__contexti(ptr noundef nonnull %0, i32 noundef %i.ls)
  %i.lu = icmp eq i32 %i.km, 24
  %i.lv = icmp eq i32 %i.kh, -16777216            ; 2 uses
  %or.cond.i = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %or.cond.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread238.i
  %i.lw = phi i1 [ %i.lf, %.thread238.i ], [ %i.lv, %bb.cl ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.cl ]
  %i.lx = phi i1 [ false, %.thread238.i ], [ true, %bb.cl ]
  %i.ly = phi i32 [ %i.ld, %.thread238.i ], [ %i.lq, %bb.cl ]
  %.not.i = icmp eq i32 %i.kh, 0
  %i.lz = select i1 %.not.i, i32 3, i32 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ma = phi i1 [ %i.lw, %bb.cm ], [ true, %bb.cl ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cm ], [ 0, %bb.cl ] ; 4 uses
  %i.mb = phi i1 [ %i.lx, %bb.cm ], [ true, %bb.cl ]
  %i.mc = phi i32 [ %i.km, %bb.cm ], [ 24, %bb.cl ] ; 6 uses
  %i.md = phi i32 [ %i.ly, %bb.cm ], [ %i.lq, %bb.cl ] ; 3 uses
  %i.me = phi i32 [ %i.lz, %bb.cm ], [ 3, %bb.cl ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.me, ptr %i.mf, align 8, !tbaa !53
  %.not367.i = icmp eq i32 %4, 0
  %i.mg = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.mg, i32 %4, i32 %i.me ; 11 uses
  %i.mh = load i32, ptr %0, align 8, !tbaa !51    ; 5 uses
  %i.mi = load i32, ptr %i.jt, align 4, !tbaa !52 ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.mh, -1
  br i1 %or.cond.not.i.i.i, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mj = icmp eq i32 %i.mh, 0                    ; 2 uses
  br i1 %i.mj, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.co
  %i.mk = udiv i32 2147483647, %i.mh
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.mk
  br i1 %.not23.i.i, label %bb.cq, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.co
  %i.ml = mul nuw nsw i32 %i.mh, %spec.select.i   ; 4 uses
  %i.mm = or i32 %i.mi, %i.ml
  %or.cond.not.i10.i.i = icmp sgt i32 %i.mm, -1
  br i1 %or.cond.not.i10.i.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.mn = icmp eq i32 %i.mi, 0                    ; 2 uses
  br i1 %i.mn, label %_ZL21stbi__mad3sizes_validiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.cp
  %i.mo = udiv i32 2147483647, %i.mi
  %.not.i.i45 = icmp samesign ugt i32 %i.ml, %i.mo
  br i1 %.not.i.i45, label %bb.cq, label %_ZL21stbi__mad3sizes_validiiii.exit.i

bb.cq:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.cn
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL21stbi__mad3sizes_validiiii.exit.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %bb.cp
  br i1 %i.mj, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i
  %i.mp = udiv i32 2147483647, %i.mh
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.mp
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i
  br i1 %i.mn, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.mq = udiv i32 2147483647, %i.mi
  %.not.i.i.i46 = icmp samesign ugt i32 %i.ml, %i.mq
  br i1 %.not.i.i.i46, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.mr = mul nsw i32 %i.ml, %i.mi
  %i.ms = sext i32 %i.mr to i64
  %i.mt = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ms) #36 ; 32 uses
  %.not369.i = icmp eq ptr %i.mt, null
  br i1 %.not369.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %bb.cr

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cr:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.mu = icmp slt i32 %i.mc, 16
  br i1 %i.mu, label %bb.cs, label %bb.fg

bb.cs:                                            ; preds = %bb.cr
  %i.mv = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.mb, %i.mv
  br i1 %or.cond7.i, label %bb.ct, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cs
  %i.mw = icmp sgt i32 %.03322241.i, 0
  br i1 %i.mw, label %.lr.ph66.i, label %._crit_edge.i48

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.pre116.i = load ptr, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call void @free(ptr noundef nonnull %i.mt) #35
  store ptr @.str.32, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cu:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit402.i, %.lr.ph66.i
  %i.mx = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qq, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.my = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qr, %_ZL10stbi__get8P13stbi__context.exit402.i ]
  %i.mz = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qs, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 3 uses
  %i.na = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qt, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.nb = icmp ult ptr %i.na, %i.mz
  br i1 %i.nb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 3 uses
  store ptr %i.nc, ptr %i.g, align 8, !tbaa !23
  %i.nd = load i8, ptr %i.na, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.ne = load i32, ptr %i.i, align 8, !tbaa !20
  %.not.i383.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i383.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nf = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.ng = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.nh = load i32, ptr %i.m, align 4, !tbaa !19
  %i.ni = tail call noundef i32 %i.nf(ptr noundef %i.ng, ptr noundef nonnull %i.l, i32 noundef %i.nh), !inline_history !67 ; 2 uses
  %i.nj = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.nk = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = trunc i64 %i.nn to i32
  %i.np = load i32, ptr %i.o, align 8, !tbaa !21
  %i.nq = add nsw i32 %i.np, %i.no
  store i32 %i.nq, ptr %i.o, align 8, !tbaa !21
  %i.nr = icmp eq i32 %i.ni, 0
  br i1 %i.nr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.ns = sext i32 %i.ni to i64
  %i.nt = getelementptr inbounds i8, ptr %i.l, i64 %i.ns
  %.pre.i.i49 = load i8, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.cz, %bb.cy
  %i.nu = phi i8 [ 0, %bb.cy ], [ %.pre.i.i49, %bb.cz ]
  %.sink.i.i.i = phi ptr [ %i.p, %bb.cy ], [ %i.nt, %bb.cz ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.h, align 8, !tbaa !27
  store ptr %i.p, ptr %i.g, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.cw, %bb.cv
  %i.nv = phi ptr [ %i.mx, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mx, %bb.cw ] ; 2 uses
  %i.nw = phi ptr [ %i.nc, %bb.cv ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.my, %bb.cw ]
  %i.nx = phi ptr [ %i.mz, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mz, %bb.cw ] ; 3 uses
  %i.ny = phi ptr [ %i.nc, %bb.cv ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.na, %bb.cw ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.nd, %bb.cv ], [ %i.nu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.cw ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 2
  store i8 %.0.i384.i, ptr %i.oa, align 2, !tbaa !26
  %i.ob = icmp ult ptr %i.ny, %i.nx
  br i1 %i.ob, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 1 ; 3 uses
  store ptr %i.oc, ptr %i.g, align 8, !tbaa !23
  %i.od = load i8, ptr %i.ny, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

bb.db:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.oe = load i32, ptr %i.i, align 8, !tbaa !20
  %.not.i385.i = icmp eq i32 %i.oe, 0
  br i1 %.not.i385.i, label %_ZL10stbi__get8P13stbi__context.exit390.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.of = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.og = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.oh = load i32, ptr %i.m, align 4, !tbaa !19
  %i.oi = tail call noundef i32 %i.of(ptr noundef %i.og, ptr noundef nonnull %i.l, i32 noundef %i.oh), !inline_history !67 ; 2 uses
  %i.oj = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ok = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = trunc i64 %i.on to i32
  %i.op = load i32, ptr %i.o, align 8, !tbaa !21
  %i.oq = add nsw i32 %i.op, %i.oo
  store i32 %i.oq, ptr %i.o, align 8, !tbaa !21
  %i.or = icmp eq i32 %i.oi, 0
  br i1 %i.or, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

bb.de:                                            ; preds = %bb.dc
  %i.os = sext i32 %i.oi to i64
  %i.ot = getelementptr inbounds i8, ptr %i.l, i64 %i.os
  %.pre.i386.i = load i8, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i: ; preds = %bb.de, %bb.dd
  %i.ou = phi i8 [ 0, %bb.dd ], [ %.pre.i386.i, %bb.de ]
  %.sink.i.i388.i = phi ptr [ %i.p, %bb.dd ], [ %i.ot, %bb.de ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.h, align 8, !tbaa !27
  store ptr %i.p, ptr %i.g, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

_ZL10stbi__get8P13stbi__context.exit390.i:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i, %bb.db, %bb.da
  %i.ov = phi ptr [ %i.nv, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nv, %bb.db ] ; 2 uses
  %i.ow = phi ptr [ %i.oc, %bb.da ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nw, %bb.db ]
  %i.ox = phi ptr [ %i.nx, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nx, %bb.db ] ; 3 uses
  %i.oy = phi ptr [ %i.oc, %bb.da ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.ny, %bb.db ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.od, %bb.da ], [ %i.ou, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ 0, %bb.db ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store i8 %.0.i389.i, ptr %i.oz, align 1, !tbaa !26
  %i.pa = icmp ult ptr %i.oy, %i.ox
  br i1 %i.pa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 1 ; 3 uses
  store ptr %i.pb, ptr %i.g, align 8, !tbaa !23
  %i.pc = load i8, ptr %i.oy, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit396.i

bb.dg:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.pd = load i32, ptr %i.i, align 8, !tbaa !20
  %.not.i391.i = icmp eq i32 %i.pd, 0
  br i1 %.not.i391.i, label %_ZL10stbi__get8P13stbi__context.exit396.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pe = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.pf = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.pg = load i32, ptr %i.m, align 4, !tbaa !19
  %i.ph = tail call noundef i32 %i.pe(ptr noundef %i.pf, ptr noundef nonnull %i.l, i32 noundef %i.pg), !inline_history !67 ; 2 uses
  %i.pi = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.pj = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = trunc i64 %i.pm to i32
  %i.po = load i32, ptr %i.o, align 8, !tbaa !21
  %i.pp = add nsw i32 %i.po, %i.pn
  store i32 %i.pp, ptr %i.o, align 8, !tbaa !21
  %i.pq = icmp eq i32 %i.ph, 0
  br i1 %i.pq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

bb.dj:                                            ; preds = %bb.dh
  %i.pr = sext i32 %i.ph to i64
  %i.ps = getelementptr inbounds i8, ptr %i.l, i64 %i.pr
  %.pre.i392.i = load i8, ptr %i.l, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i: ; preds = %bb.dj, %bb.di
  %i.pt = phi i8 [ 0, %bb.di ], [ %.pre.i392.i, %bb.dj ]
  %.sink.i.i394.i = phi ptr [ %i.p, %bb.di ], [ %i.ps, %bb.dj ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.h, align 8, !tbaa !27
  store ptr %i.p, ptr %i.g, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit396.i
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.ahx = load i32, ptr %i.ace, align 4, !tbaa !13
  %i.ahy = ashr i32 %i.ahw, %i.ahx
  %i.ahz = trunc i32 %i.ahy to i8
  %i.aia = sext i32 %.356.i to i64
  %i.aib = getelementptr inbounds i8, ptr %i.mt, i64 %i.aia ; 3 uses
  store i8 %i.ahz, ptr %i.aib, align 1, !tbaa !26
  %i.aic = and i32 %i.ahq, %i.kd                  ; 2 uses
  %i.aid = shl i32 %i.aic, %i.acg
  %i.aie = lshr i32 %i.aic, %.0297.i
  %.0.i466.i = select i1 %i.acf, i32 %i.aid, i32 %i.aie
  %i.aif = lshr i32 %.0.i466.i, %i.ach
  %i.aig = load i32, ptr %i.acj, align 4, !tbaa !13
  %i.aih = mul i32 %i.aig, %i.aif
  %i.aii = load i32, ptr %i.ack, align 4, !tbaa !13
  %i.aij = ashr i32 %i.aih, %i.aii
  %i.aik = trunc i32 %i.aij to i8
  %i.ail = getelementptr i8, ptr %i.aib, i64 1
  store i8 %i.aik, ptr %i.ail, align 1, !tbaa !26
  %i.aim = and i32 %i.ahq, %i.kf                  ; 2 uses
  %i.ain = shl i32 %i.aim, %i.acm
  %i.aio = lshr i32 %i.aim, %.0296.i
  %.0.i467.i = select i1 %i.acl, i32 %i.ain, i32 %i.aio
  %i.aip = lshr i32 %.0.i467.i, %i.acn
  %i.aiq = load i32, ptr %i.acp, align 4, !tbaa !13
  %i.air = mul i32 %i.aiq, %i.aip
  %i.ais = load i32, ptr %i.acq, align 4, !tbaa !13
  %i.ait = ashr i32 %i.air, %i.ais
  %i.aiu = trunc i32 %i.ait to i8
  %i.aiv = add nsw i32 %.356.i, 3                 ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.aib, i64 2
  store i8 %i.aiu, ptr %i.aiw, align 1, !tbaa !26
  br i1 %.not372.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aix = and i32 %i.ahq, %i.kh                  ; 2 uses
  %i.aiy = shl i32 %i.aix, %i.acs
  %i.aiz = lshr i32 %i.aix, %.0295.i
  %.0.i468.i = select i1 %i.acr, i32 %i.aiy, i32 %i.aiz
  %i.aja = lshr i32 %.0.i468.i, %i.act
  %i.ajb = load i32, ptr %i.acv, align 4, !tbaa !13
  %i.ajc = mul i32 %i.ajb, %i.aja
  %i.ajd = load i32, ptr %i.acw, align 4, !tbaa !13
  %i.aje = ashr i32 %i.ajc, %i.ajd
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.ajf = phi i32 [ %i.aje, %bb.gq ], [ 255, %bb.gp ] ; 2 uses
  %i.ajg = or i32 %i.ajf, %.233554.i              ; 2 uses
  br i1 %i.abx, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ajh = trunc i32 %i.ajf to i8
  %i.aji = add nsw i32 %.356.i, 4
  %i.ajj = sext i32 %i.aiv to i64
  %i.ajk = getelementptr inbounds i8, ptr %i.mt, i64 %i.ajj
  store i8 %i.ajh, ptr %i.ajk, align 1, !tbaa !26
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.4.i = phi i32 [ %i.aji, %bb.gs ], [ %i.aiv, %bb.gr ] ; 2 uses
  %i.ajl = add nuw nsw i32 %.432955.i, 1          ; 2 uses
  %i.ajm = load i32, ptr %0, align 8, !tbaa !51
  %i.ajn = icmp slt i32 %i.ajl, %i.ajm
  br i1 %i.ajn, label %.lr.ph57.i, label %.loopexit46.i, !llvm.loop !76

.loopexit46.i:                                    ; preds = %bb.gn, %bb.gt, %.preheader45.i, %.preheader47.i
  %.3336.i = phi i32 [ %i.ajg, %bb.gt ], [ %.033360.i, %.preheader45.i ], [ %.033360.i, %.preheader47.i ], [ %i.ahf, %bb.gn ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.gt ], [ %.029062.i, %.preheader45.i ], [ %.029062.i, %.preheader47.i ], [ %.2.i, %bb.gn ]
  br i1 %i.acx, label %_ZL10stbi__skipP13stbi__contexti.exit474.i, label %bb.gu

bb.gu:                                            ; preds = %.loopexit46.i
  %i.ajo = load ptr, ptr %i.j, align 8, !tbaa !24
  %.not.i469.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i469.i, label %..thread_crit_edge.i471.i, label %bb.gv

..thread_crit_edge.i471.i:                        ; preds = %bb.gu
  %.pre.i473.i = load ptr, ptr %i.g, align 8, !tbaa !23
  br label %.thread.i470.i

bb.gv:                                            ; preds = %bb.gu
  %i.ajp = load ptr, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  %i.ajq = load ptr, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  %i.aju = trunc i64 %i.ajt to i32                ; 2 uses
  %i.ajv = icmp sgt i32 %i.abu, %i.aju
  br i1 %i.ajv, label %bb.gw, label %.thread.i470.i

bb.gw:                                            ; preds = %bb.gv
  store ptr %i.ajp, ptr %i.g, align 8, !tbaa !23
  %i.ajw = load ptr, ptr %i.acy, align 8, !tbaa !70
  %i.ajx = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.ajy = sub nsw i32 %i.abu, %i.aju
  tail call void %i.ajw(ptr noundef %i.ajx, i32 noundef %i.ajy), !inline_history !71
  br label %_ZL10stbi__skipP13stbi__contexti.exit474.i

.thread.i470.i:                                   ; preds = %bb.gv, %..thread_crit_edge.i471.i
  %i.ajz = phi ptr [ %.pre.i473.i, %..thread_crit_edge.i471.i ], [ %i.ajq, %bb.gv ]
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.acz
  store ptr %i.aka, ptr %i.g, align 8, !tbaa !23
  br label %_ZL10stbi__skipP13stbi__contexti.exit474.i

_ZL10stbi__skipP13stbi__contexti.exit474.i:       ; preds = %.thread.i470.i, %bb.gw, %.loopexit46.i
  %i.akb = add nuw nsw i32 %.232361.i, 1          ; 2 uses
  %i.akc = load i32, ptr %i.jt, align 4, !tbaa !52 ; 2 uses
  %i.akd = icmp slt i32 %i.akb, %i.akc
  br i1 %i.akd, label %bb.fq, label %.loopexit40.i, !llvm.loop !77

.loopexit40.i:                                    ; preds = %_ZL10stbi__skipP13stbi__contexti.exit474.i, %_ZL10stbi__skipP13stbi__contexti.exit434.i, %_ZL10stbi__skipP13stbi__contexti.exit.i, %.thread27.i, %.preheader39.i, %.preheader42.i
  %i.ake = phi i32 [ %i.rg, %.preheader42.i ], [ %i.rt, %.preheader39.i ], [ %i.vl, %_ZL10stbi__skipP13stbi__contexti.exit.i ], [ %i.zu, %_ZL10stbi__skipP13stbi__contexti.exit434.i ], [ %i.abv, %.thread27.i ], [ %i.akc, %_ZL10stbi__skipP13stbi__contexti.exit474.i ] ; 5 uses
  %.5338.i = phi i32 [ %i.ki, %.preheader42.i ], [ %i.ki, %.preheader39.i ], [ %i.ki, %_ZL10stbi__skipP13stbi__contexti.exit.i ], [ %i.ki, %_ZL10stbi__skipP13stbi__contexti.exit434.i ], [ %i.ki, %.thread27.i ], [ %.3336.i, %_ZL10stbi__skipP13stbi__contexti.exit474.i ]
  %i.akf = icmp eq i32 %spec.select.i, 4
  %i.akg = icmp eq i32 %.5338.i, 0
  %or.cond25.i = select i1 %i.akf, i1 %i.akg, i1 false
  br i1 %or.cond25.i, label %bb.gx, label %.loopexit38.i

bb.gx:                                            ; preds = %.loopexit40.i
  %i.akh = load i32, ptr %0, align 8, !tbaa !51
  %i.aki = shl i32 %i.akh, 2
  %i.akj = mul i32 %i.aki, %i.ake                 ; 2 uses
  %i.akk = add i32 %i.akj, -4
  %i.akl = icmp sgt i32 %i.akk, -1
  br i1 %i.akl, label %.lr.ph89.preheader.i, label %.loopexit38.i

.lr.ph89.preheader.i:                             ; preds = %bb.gx
  %i.akm = add i32 %i.akj, -1                     ; 2 uses
  %i.akn = zext i32 %i.akm to i64                 ; 3 uses
  %i.ako = lshr i64 %i.akn, 2
  %i.akp = add nuw nsw i64 %i.ako, 1
  %xtraiter = and i64 %i.akp, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.preheader.i, %.lr.ph89.i.prol
  %indvars.iv101.i.prol = phi i64 [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ], [ %i.akn, %.lr.ph89.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.preheader.i ]
  %i.akq = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv101.i.prol
  store i8 -1, ptr %i.akq, align 1, !tbaa !26
  %indvars.iv.next102.i.prol = add nsw i64 %indvars.iv101.i.prol, -4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !78

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.preheader.i
  %indvars.iv101.i.unr = phi i64 [ %i.akn, %.lr.ph89.preheader.i ], [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ]
  %i.akr = icmp ult i32 %i.akm, 28
  br i1 %i.akr, label %.loopexit38.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i.7, %.lr.ph89.i ], [ %indvars.iv101.i.unr, %.lr.ph89.i.prol.loopexit ] ; 10 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv101.i
  store i8 -1, ptr %i.aks, align 1, !tbaa !26
  %i.akt = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.aku = getelementptr i8, ptr %i.akt, i64 -4
  store i8 -1, ptr %i.aku, align 1, !tbaa !26
  %i.akv = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.akw = getelementptr i8, ptr %i.akv, i64 -8
  store i8 -1, ptr %i.akw, align 1, !tbaa !26
  %i.akx = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.aky = getelementptr i8, ptr %i.akx, i64 -12
  store i8 -1, ptr %i.aky, align 1, !tbaa !26
  %i.akz = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.ala = getelementptr i8, ptr %i.akz, i64 -16
  store i8 -1, ptr %i.ala, align 1, !tbaa !26
  %i.alb = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.alc = getelementptr i8, ptr %i.alb, i64 -20
  store i8 -1, ptr %i.alc, align 1, !tbaa !26
  %i.ald = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.ale = getelementptr i8, ptr %i.ald, i64 -24
  store i8 -1, ptr %i.ale, align 1, !tbaa !26
  %i.alf = getelementptr i8, ptr %i.mt, i64 %indvars.iv101.i
  %i.alg = getelementptr i8, ptr %i.alf, i64 -28
  store i8 -1, ptr %i.alg, align 1, !tbaa !26
  %indvars.iv.next102.i.7 = add nsw i64 %indvars.iv101.i, -32
  %i.alh = icmp sgt i64 %indvars.iv101.i, 31
  br i1 %i.alh, label %.lr.ph89.i, label %.loopexit38.i, !llvm.loop !80

.loopexit38.i:                                    ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %bb.gx, %.loopexit40.i
  br i1 %i.jv, label %.preheader.i, label %.loopexit38..loopexit_crit_edge.i

.loopexit38..loopexit_crit_edge.i:                ; preds = %.loopexit38.i
  %.pre122.pre.i = load i32, ptr %0, align 8, !tbaa !51
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.loopexit38.i
  %i.ali = ashr i32 %i.ake, 1                     ; 2 uses
  %i.alj = icmp sgt i32 %i.ali, 0
  %.pre122.pre126.i = load i32, ptr %0, align 8, !tbaa !51 ; 5 uses
  br i1 %i.alj, label %.lr.ph95.i, label %.loopexit.i

.lr.ph95.i:                                       ; preds = %.preheader.i
  %factor.op.mul.i = mul i32 %.pre122.pre126.i, %spec.select.i ; 7 uses
  %i.alk = icmp sgt i32 %factor.op.mul.i, 0
  br i1 %i.alk, label %.lr.ph92.preheader.i, label %.loopexit.i

.lr.ph92.preheader.i:                             ; preds = %.lr.ph95.i
  %wide.trip.count112.i = zext nneg i32 %i.ali to i64
  %wide.trip.count107.i = zext nneg i32 %factor.op.mul.i to i64 ; 10 uses
  %scevgep70.a = getelementptr i8, ptr %i.mt, i64 %wide.trip.count107.i
  %9 = mul i32 %spec.select.i, %.pre122.pre126.i
  %scevgep73 = getelementptr i8, ptr %i.mt, i64 %wide.trip.count107.i
  %min.iters.check = icmp ult i32 %factor.op.mul.i, 4
  %min.iters.check79 = icmp ult i32 %factor.op.mul.i, 32
  %i.all = and i64 %wide.trip.count107.i, 28
  %n.vec = and i64 %wide.trip.count107.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107.i
  %min.epilog.iters.check = icmp eq i64 %i.all, 0
  %n.vec89 = and i64 %wide.trip.count107.i, 2147483644 ; 3 uses
  %cmp.n94 = icmp eq i64 %n.vec89, %wide.trip.count107.i
  %xtraiter161 = and i64 %wide.trip.count107.i, 1
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  %i.alm = add nsw i64 %wide.trip.count107.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge93.i, %.lr.ph92.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph92.preheader.i ], [ %indvars.iv.next110.i, %._crit_edge93.i ] ; 4 uses
  %i.aln = trunc nuw nsw i64 %indvars.iv109.i to i32 ; 2 uses
  %.reass.i = mul i32 %factor.op.mul.i, %i.aln
  %i.alo = zext i32 %.reass.i to i64
  %i.alp = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.alo ; 5 uses
  %i.alq = xor i32 %i.aln, -1
  %i.alr = add i32 %i.ake, %i.alq
  %i.als = mul i32 %i.alr, %factor.op.mul.i
  %i.alt = zext i32 %i.als to i64
  %i.alu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.alt ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck68

vector.memcheck68:                                ; preds = %iter.check
  %i.alv = trunc i64 %indvars.iv109.i to i32
  %i.alw = xor i32 %i.alv, -1
  %i.alx = add i32 %i.ake, %i.alw
  %i.aly = mul i32 %9, %i.alx
  %i.alz = zext i32 %i.aly to i64                 ; 2 uses
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.alz
  %scevgep72 = getelementptr nuw i8, ptr %i.mt, i64 %i.alz
  %i.ama = trunc i64 %indvars.iv109.i to i32
  %i.amb = mul i32 %factor.op.mul.i, %i.ama
  %i.amc = zext i32 %i.amb to i64                 ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70.a, i64 %i.amc
  %scevgep69 = getelementptr nuw i8, ptr %i.mt, i64 %i.amc
  %bound075 = icmp ult ptr %scevgep69, %scevgep74
  %bound176 = icmp ult ptr %scevgep72, %scevgep71
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck68
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body81

vector.body81:                                    ; preds = %vector.main.loop.iter.check, %vector.body81
  %index82 = phi i64 [ %index.next87, %vector.body81 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alp, i64 %index82 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16 ; 2 uses
  %wide.load83.a = load <16 x i8>, ptr %i.amd, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  %wide.load84.a = load <16 x i8>, ptr %i.ame, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alu, i64 %index82 ; 3 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 16 ; 2 uses
  %wide.load85 = load <16 x i8>, ptr %i.amf, align 1, !tbaa !26, !alias.scope !84
  %wide.load86 = load <16 x i8>, ptr %i.amg, align 1, !tbaa !26, !alias.scope !84
  store <16 x i8> %wide.load85, ptr %i.amd, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  store <16 x i8> %wide.load86, ptr %i.ame, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  store <16 x i8> %wide.load83.a, ptr %i.amf, align 1, !tbaa !26, !alias.scope !84
  store <16 x i8> %wide.load84.a, ptr %i.amg, align 1, !tbaa !26, !alias.scope !84
  %index.next87 = add nuw i64 %index82, 32        ; 2 uses
  %i.amh = icmp eq i64 %index.next87, %n.vec
  br i1 %i.amh, label %middle.block88, label %vector.body81, !llvm.loop !86

middle.block88:                                   ; preds = %vector.body81
  br i1 %cmp.n, label %._crit_edge93.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block88
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alp, i64 %index90 ; 2 uses
  %wide.load91 = load <4 x i8>, ptr %i.ami, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alu, i64 %index90 ; 2 uses
  %wide.load92 = load <4 x i8>, ptr %i.amj, align 1, !tbaa !26, !alias.scope !84
  store <4 x i8> %wide.load92, ptr %i.ami, align 1, !tbaa !26, !alias.scope !81, !noalias !84
  store <4 x i8> %wide.load91, ptr %i.amj, align 1, !tbaa !26, !alias.scope !84
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.amk = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.amk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n94, label %._crit_edge93.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck68, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck68 ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod162.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alp, i64 %indvars.iv104.i.ph ; 2 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !26
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alu, i64 %indvars.iv104.i.ph ; 2 uses
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !26
  store i8 %i.amo, ptr %i.aml, align 1, !tbaa !26
  store i8 %i.amm, ptr %i.amn, align 1, !tbaa !26
  %indvars.iv.next105.i.prol = or disjoint i64 %indvars.iv104.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv104.i.unr = phi i64 [ %indvars.iv104.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next105.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.amp = icmp eq i64 %indvars.iv104.i.ph, %i.alm
  br i1 %i.amp, label %._crit_edge93.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv104.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alp, i64 %indvars.iv104.i ; 2 uses
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !26
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alu, i64 %indvars.iv104.i ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !26
  store i8 %i.amt, ptr %i.amq, align 1, !tbaa !26
  store i8 %i.amr, ptr %i.ams, align 1, !tbaa !26
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.alp, i64 %indvars.iv.next105.i ; 2 uses
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !26
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alu, i64 %indvars.iv.next105.i ; 2 uses
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !26
  store i8 %i.amx, ptr %i.amu, align 1, !tbaa !26
  store i8 %i.amv, ptr %i.amw, align 1, !tbaa !26
  %indvars.iv.next105.i.1 = add nuw nsw i64 %indvars.iv104.i, 2 ; 2 uses
  %exitcond108.not.i.1 = icmp eq i64 %indvars.iv.next105.i.1, %wide.trip.count107.i
  br i1 %exitcond108.not.i.1, label %._crit_edge93.i, label %vec.epilog.scalar.ph, !llvm.loop !89

._crit_edge93.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block88
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %.loopexit.i, label %iter.check, !llvm.loop !90

.loopexit.i:                                      ; preds = %._crit_edge93.i, %.lr.ph95.i, %.preheader.i, %.loopexit38..loopexit_crit_edge.i
  %.pre122.i = phi i32 [ %.pre122.pre.i, %.loopexit38..loopexit_crit_edge.i ], [ %.pre122.pre126.i, %.lr.ph95.i ], [ %.pre122.pre126.i, %.preheader.i ], [ %.pre122.pre126.i, %._crit_edge93.i ] ; 2 uses
  %.not376.i = icmp eq i32 %4, %spec.select.i
  %or.cond382.i = or i1 %.not367.i, %.not376.i
  br i1 %or.cond382.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %.loopexit.i
  %i.amy = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.mt, i32 noundef %spec.select.i, i32 noundef %4, i32 noundef %.pre122.i, i32 noundef %i.ake) ; 2 uses
  %i.amz = icmp eq ptr %i.amy, null
  br i1 %i.amz, label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %._crit_edge120.i

._crit_edge120.i:                                 ; preds = %bb.gy
  %.pre121.i = load i32, ptr %0, align 8, !tbaa !51
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge120.i, %.loopexit.i
  %i.ana = phi i32 [ %.pre121.i, %._crit_edge120.i ], [ %.pre122.i, %.loopexit.i ]
  %.0339.i = phi ptr [ %i.amy, %._crit_edge120.i ], [ %i.mt, %.loopexit.i ] ; 2 uses
  store i32 %i.ana, ptr %1, align 4, !tbaa !13
  %i.anb = load i32, ptr %i.jt, align 4, !tbaa !52
  store i32 %i.anb, ptr %2, align 4, !tbaa !13
  %.not377.i = icmp eq ptr %3, null
  br i1 %.not377.i, label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.anc = load i32, ptr %i.mf, align 8, !tbaa !53
  store i32 %i.anc, ptr %3, align 4, !tbaa !13
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit: ; preds = %bb.bw, %bb.by, %bb.ca, %bb.ch, %bb.ck, %bb.cq, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.ct, %bb.ds, %bb.fn, %bb.fp, %bb.gy, %bb.gz, %bb.ha
  %.4344.i = phi ptr [ %.0339.i, %bb.gz ], [ null, %bb.by ], [ null, %bb.ca ], [ null, %bb.bw ], [ null, %bb.gy ], [ null, %bb.ch ], [ null, %bb.ct ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ null, %bb.cq ], [ %.0339.i, %bb.ha ], [ null, %bb.ck ], [ null, %bb.ds ], [ null, %bb.fn ], [ null, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.hb:                                            ; preds = %_ZL14stbi__bmp_testP13stbi__context.exit.thread, %_ZL14stbi__bmp_testP13stbi__context.exit
  %i.and = phi ptr [ %i.jm, %_ZL14stbi__bmp_testP13stbi__context.exit.thread ], [ %i.jp, %_ZL14stbi__bmp_testP13stbi__context.exit ]
  %i.ane = phi ptr [ %i.jl, %_ZL14stbi__bmp_testP13stbi__context.exit.thread ], [ %i.jo, %_ZL14stbi__bmp_testP13stbi__context.exit ]
  %calloc.i = tail call dereferenceable_or_null(18568) ptr @calloc(i64 1, i64 18568) ; 10 uses
  %.not.i50 = icmp eq ptr %calloc.i, null
  br i1 %.not.i50, label %_ZL15stbi__jpeg_testP13stbi__context.exit.thread, label %bb.hc

_ZL15stbi__jpeg_testP13stbi__context.exit.thread: ; preds = %bb.hb
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.qf

bb.hc:                                            ; preds = %bb.hb
  store ptr %0, ptr %calloc.i, align 8, !tbaa !91
  %i.anf = getelementptr inbounds nuw i8, ptr %calloc.i, i64 18544
  %i.ang = getelementptr inbounds nuw i8, ptr %calloc.i, i64 18552
  %i.anh = getelementptr inbounds nuw i8, ptr %calloc.i, i64 18560
  store ptr @_ZL15stbi__idct_simdPhiPs, ptr %i.anf, align 8, !tbaa !93
  store ptr @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii, ptr %i.ang, align 8, !tbaa !94
  store ptr @_ZL28stbi__resample_row_hv_2_simdPhS_S_ii, ptr %i.anh, align 8, !tbaa !95
  %i.ani = getelementptr inbounds nuw i8, ptr %calloc.i, i64 18508
  store i32 -1, ptr %i.ani, align 4, !tbaa !96
  %i.anj = getelementptr inbounds nuw i8, ptr %calloc.i, i64 18472
  store i8 -1, ptr %i.anj, align 8, !tbaa !97
  %i.ank = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef nonnull %calloc.i)
  %.not92 = icmp eq i8 %i.ank, -40
  br i1 %.not92, label %.critedge, label %_ZL15stbi__jpeg_testP13stbi__context.exit

_ZL15stbi__jpeg_testP13stbi__context.exit:        ; preds = %bb.hc
  store ptr @.str.40, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  %i.anl = load ptr, ptr %i.n, align 8, !tbaa !22 ; 2 uses
  store ptr %i.anl, ptr %i.g, align 8, !tbaa !23
  %i.anm = load ptr, ptr %i.hf, align 8, !tbaa !28 ; 2 uses
  store ptr %i.anm, ptr %i.h, align 8, !tbaa !27
  tail call void @free(ptr noundef nonnull %calloc.i) #35
  br label %bb.qf

.critedge:                                        ; preds = %bb.hc
  %i.ann = load <2 x ptr>, ptr %i.n, align 8, !tbaa !10
  store <2 x ptr> %i.ann, ptr %i.g, align 8, !tbaa !10
  tail call void @free(ptr noundef nonnull %calloc.i) #35
  %calloc.i51 = tail call dereferenceable_or_null(18568) ptr @calloc(i64 1, i64 18568) ; 87 uses
  %.not.i52 = icmp eq ptr %calloc.i51, null
  br i1 %.not.i52, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %.critedge
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.he:                                            ; preds = %.critedge
  store ptr %0, ptr %calloc.i51, align 8, !tbaa !91
  %i.ano = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18544 ; 4 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18552 ; 3 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18560 ; 2 uses
  store ptr @_ZL15stbi__idct_simdPhiPs, ptr %i.ano, align 8, !tbaa !93
  store ptr @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii, ptr %i.anp, align 8, !tbaa !94
  store ptr @_ZL28stbi__resample_row_hv_2_simdPhS_S_ii, ptr %i.anq, align 8, !tbaa !95
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.anr, align 8, !tbaa !53
  %or.cond.i.i53 = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i53, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store ptr @.str.4, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i

bb.hg:                                            ; preds = %bb.he
  %i.ans = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18080 ; 14 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18136
  %i.anu = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18232
  %i.anv = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18328
  %i.anw = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18424
  %i.anx = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18536 ; 6 uses
  store i32 0, ptr %i.anx, align 8, !tbaa !98
end_hunk_1
