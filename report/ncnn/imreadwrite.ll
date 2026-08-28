Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  store ptr %i.jo, ptr %i.g, align 8, !tbaa !23
  %i.jp = load ptr, ptr %i.hf, align 8, !tbaa !28 ; 2 uses
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
  %i.mr = mul nuw nsw i32 %i.ml, %i.mi
  %i.ms = sext i32 %i.mr to i64
  %i.mt = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ms) #36 ; 30 uses
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
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %spec.select.i.i.i.i.i = select i1 %.not.i.i46.i.i.i, i32 2147483647, i32 %i.ayo ; 3 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.aoq, align 4, !tbaa !117
  store i32 0, ptr %i.aor, align 4, !tbaa !118
  %i.ayp = load i32, ptr %i.aob, align 4, !tbaa !99
  %i.ayq = icmp eq i32 %i.ayp, 1                  ; 2 uses
  br i1 %.not65.i.i.i.i, label %bb.iy, label %bb.jo

bb.iy:                                            ; preds = %_ZL25stbi__process_scan_headerP10stbi__jpeg.exit.i.i.i
  br i1 %i.ayq, label %bb.iz, label %bb.jh

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.ayr = load i32, ptr %i.aoc, align 8, !tbaa !13 ; 2 uses
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.ays ; 7 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 28
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !119
  %i.ayw = add nsw i32 %i.ayv, 7
  %i.ayx = ashr i32 %i.ayw, 3                     ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32
  %i.ayz = load i32, ptr %i.ayy, align 8, !tbaa !120
  %i.aza = add nsw i32 %i.ayz, 7
  %i.azb = ashr i32 %i.aza, 3                     ; 2 uses
  %i.azc = icmp sgt i32 %i.azb, 0
  br i1 %i.azc, label %.preheader.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %bb.iz
  %i.azd = icmp sgt i32 %i.ayx, 0
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayt, i64 20
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayt, i64 12
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayt, i64 48
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayt, i64 36
  br i1 %i.azd, label %.preheader.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.preheader.lr.ph.i.i.i.i
  %wide.trip.count.i58.i.i.i = zext nneg i32 %i.ayx to i64
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge310.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.0208311.i.i.i.i = phi i32 [ %i.bal, %._crit_edge310.i.i.i.i ], [ 0, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %i.azj = shl nuw nsw i32 %.0208311.i.i.i.i, 3
  br label %bb.ja

bb.ja:                                            ; preds = %bb.jg, %.preheader.i.i.i.i
  %indvars.iv342.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next343.i.i.i.i, %bb.jg ] ; 2 uses
  %i.azk = load i32, ptr %i.aze, align 4, !tbaa !106
  %i.azl = load i32, ptr %i.azf, align 8, !tbaa !105
  %i.azm = sext i32 %i.azl to i64
  %i.azn = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.azm
  %i.azo = sext i32 %i.azk to i64                 ; 2 uses
  %i.azp = getelementptr inbounds [1680 x i8], ptr %i.aov, i64 %i.azo
  %i.azq = getelementptr inbounds [1024 x i8], ptr %i.aow, i64 %i.azo
  %i.azr = load i32, ptr %i.azg, align 4, !tbaa !121
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [128 x i8], ptr %i.aox, i64 %i.azs
  %i.azu = call fastcc noundef i32 @_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt(ptr noundef nonnull %calloc.i51, ptr noundef %i.a, ptr noundef %i.azn, ptr noundef %i.azp, ptr noundef %i.azq, i32 noundef %i.ayr, ptr noundef %i.azt)
  %.not225.i.i.i.i = icmp eq i32 %i.azu, 0
  br i1 %.not225.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.azv = load ptr, ptr %i.anp, align 8, !tbaa !93
  %i.azw = load ptr, ptr %i.azh, align 8, !tbaa !122
  %i.azx = load i32, ptr %i.azi, align 4, !tbaa !123 ; 2 uses
  %i.azy = mul i32 %i.azj, %i.azx
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr inbounds i8, ptr %i.azw, i64 %i.azz
  %i.bab = shl nuw nsw i64 %indvars.iv342.i.i.i.i, 3
  %i.bac = getelementptr inbounds nuw i8, ptr %i.baa, i64 %i.bab
  call void %i.azv(ptr noundef %i.bac, i32 noundef %i.azx, ptr noundef nonnull %i.a), !inline_history !124
  %i.bad = load i32, ptr %i.aoq, align 4, !tbaa !117 ; 2 uses
  %i.bae = add nsw i32 %i.bad, -1
  store i32 %i.bae, ptr %i.aoq, align 4, !tbaa !117
  %i.baf = icmp slt i32 %i.bad, 2
  br i1 %i.baf, label %bb.jc, label %bb.jg

bb.jc:                                            ; preds = %bb.jb
  %i.bag = load i32, ptr %i.aoi, align 4, !tbaa !113
  %i.bah = icmp slt i32 %i.bag, 24
  br i1 %i.bah, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.bai = load i8, ptr %i.aop, align 8, !tbaa !97
  %i.baj = and i8 %i.bai, -8
  %or.cond.i59.i.i.i = icmp eq i8 %i.baj, -48
  br i1 %or.cond.i59.i.i.i, label %bb.jf, label %.loopexit.i.i.i.i

bb.jf:                                            ; preds = %bb.je
  store i32 0, ptr %i.aoi, align 4, !tbaa !113
  store i32 0, ptr %i.aoj, align 8, !tbaa !114
  store i32 0, ptr %i.aok, align 4, !tbaa !115
  store i32 0, ptr %i.aol, align 8, !tbaa !116
  store i32 0, ptr %i.aom, align 8, !tbaa !116
  store i32 0, ptr %i.aon, align 8, !tbaa !116
  store i32 0, ptr %i.aoo, align 8, !tbaa !116
  store i8 -1, ptr %i.aop, align 8, !tbaa !97
  %i.bak = load i32, ptr %i.any, align 8, !tbaa !98 ; 2 uses
  %.not.i236.i.i.i.i = icmp eq i32 %i.bak, 0
  %spec.select.i237.i.i.i.i = select i1 %.not.i236.i.i.i.i, i32 2147483647, i32 %i.bak
  store i32 %spec.select.i237.i.i.i.i, ptr %i.aoq, align 4, !tbaa !117
  store i32 0, ptr %i.aor, align 4, !tbaa !118
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.jb
  %indvars.iv.next343.i.i.i.i = add nuw nsw i64 %indvars.iv342.i.i.i.i, 1 ; 2 uses
  %exitcond345.not.i.i.i.i = icmp eq i64 %indvars.iv.next343.i.i.i.i, %wide.trip.count.i58.i.i.i
  br i1 %exitcond345.not.i.i.i.i, label %._crit_edge310.i.i.i.i, label %bb.ja, !llvm.loop !125

._crit_edge310.i.i.i.i:                           ; preds = %bb.jg
  %i.bal = add nuw nsw i32 %.0208311.i.i.i.i, 1   ; 2 uses
  %exitcond346.not.i.i.i.i = icmp eq i32 %i.bal, %i.azb
  br i1 %exitcond346.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !126

.loopexit.i.i.i.i:                                ; preds = %._crit_edge310.i.i.i.i, %bb.je, %bb.ja, %.preheader.lr.ph.i.i.i.i, %bb.iz
  %.3213.i.i.i.i = phi i32 [ 1, %bb.je ], [ 1, %bb.iz ], [ 1, %.preheader.lr.ph.i.i.i.i ], [ 0, %bb.ja ], [ 1, %._crit_edge310.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i

bb.jh:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.bam = load i32, ptr %i.aos, align 4, !tbaa !127 ; 2 uses
  %i.ban = icmp sgt i32 %i.bam, 0
  br i1 %i.ban, label %.preheader258.lr.ph.i.i.i.i, label %.critedge.i57.i.i.i

.preheader258.lr.ph.i.i.i.i:                      ; preds = %bb.jh
  %i.bao = load i32, ptr %i.aot, align 8, !tbaa !128 ; 2 uses
  %i.bap = icmp sgt i32 %i.bao, 0
  br i1 %i.bap, label %.preheader258.i.i.i.i, label %.critedge.i57.i.i.i

.preheader258.i.i.i.i:                            ; preds = %.preheader258.lr.ph.i.i.i.i, %._crit_edge306.i.i.i.i
  %i.baq = phi i32 [ %i.bdl, %._crit_edge306.i.i.i.i ], [ %i.bam, %.preheader258.lr.ph.i.i.i.i ]
  %i.bar = phi i32 [ %i.bdm, %._crit_edge306.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader258.lr.ph.i.i.i.i ] ; 2 uses
  %i.bas = phi i32 [ %i.bdn, %._crit_edge306.i.i.i.i ], [ %i.bao, %.preheader258.lr.ph.i.i.i.i ] ; 2 uses
  %.0205307.i.i.i.i = phi i32 [ %i.bdo, %._crit_edge306.i.i.i.i ], [ 0, %.preheader258.lr.ph.i.i.i.i ] ; 2 uses
  %i.bat = icmp sgt i32 %i.bas, 0
  br i1 %i.bat, label %.preheader257.i.i.i.i, label %._crit_edge306.i.i.i.i

.preheader257.i.i.i.i:                            ; preds = %.preheader258.i.i.i.i, %bb.jn
  %i.bau = phi i32 [ %i.bdh, %bb.jn ], [ %i.bar, %.preheader258.i.i.i.i ]
  %.0206305.i.i.i.i = phi i32 [ %i.bdi, %bb.jn ], [ 0, %.preheader258.i.i.i.i ] ; 2 uses
  %i.bav = load i32, ptr %i.aob, align 4, !tbaa !99 ; 2 uses
  %i.baw = icmp sgt i32 %i.bav, 0
  br i1 %i.baw, label %.lr.ph303.i.i.i.i, label %._crit_edge304.i.i.i.i

.lr.ph303.i.i.i.i:                                ; preds = %.preheader257.i.i.i.i, %.critedge230.i.i.i.i
  %i.bax = phi i32 [ %i.bcw, %.critedge230.i.i.i.i ], [ %i.bav, %.preheader257.i.i.i.i ] ; 2 uses
  %indvars.iv339.i.i.i.i = phi i64 [ %indvars.iv.next340.i.i.i.i, %.critedge230.i.i.i.i ], [ 0, %.preheader257.i.i.i.i ] ; 2 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv339.i.i.i.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !13 ; 2 uses
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.bba ; 7 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8 ; 3 uses
  %i.bbd = load i32, ptr %i.bbc, align 8, !tbaa !129 ; 2 uses
  %.not224300.i.i.i.i = icmp sgt i32 %i.bbd, 0
  br i1 %.not224300.i.i.i.i, label %.preheader256.lr.ph.i.i.i.i, label %.critedge230.i.i.i.i

.preheader256.lr.ph.i.i.i.i:                      ; preds = %.lr.ph303.i.i.i.i
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 4 ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbb, i64 20
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbb, i64 12
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbb, i64 48
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbb, i64 36
  %i.bbk = load i32, ptr %i.bbe, align 4, !tbaa !130 ; 2 uses
  %i.bbl = icmp sgt i32 %i.bbk, 0
  br i1 %i.bbl, label %.preheader256.i.i.i.i, label %.critedge230.i.i.i.i

.preheader256.i.i.i.i:                            ; preds = %.preheader256.lr.ph.i.i.i.i, %._crit_edge299.i.i.i.i
  %i.bbm = phi i32 [ %i.bct, %._crit_edge299.i.i.i.i ], [ %i.bbd, %.preheader256.lr.ph.i.i.i.i ]
  %i.bbn = phi i32 [ %i.bcu, %._crit_edge299.i.i.i.i ], [ %i.bbk, %.preheader256.lr.ph.i.i.i.i ] ; 3 uses
  %.0202301.i.i.i.i = phi i32 [ %i.bcv, %._crit_edge299.i.i.i.i ], [ 0, %.preheader256.lr.ph.i.i.i.i ] ; 2 uses
  %i.bbo = icmp sgt i32 %i.bbn, 0
  br i1 %i.bbo, label %.lr.ph298.i.i.i.i, label %._crit_edge299.i.i.i.i

.lr.ph298.i.i.i.i:                                ; preds = %.preheader256.i.i.i.i, %bb.ji
  %i.bbp = phi i32 [ %i.bcr, %bb.ji ], [ %i.bbn, %.preheader256.i.i.i.i ]
  %.0203297.i.i.i.i = phi i32 [ %i.bcq, %bb.ji ], [ 0, %.preheader256.i.i.i.i ] ; 2 uses
  %i.bbq = load i32, ptr %i.bbc, align 8, !tbaa !129
  %i.bbr = load i32, ptr %i.bbf, align 4, !tbaa !106
  %i.bbs = load i32, ptr %i.bbg, align 8, !tbaa !105
  %i.bbt = sext i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.bbt
  %i.bbv = sext i32 %i.bbr to i64                 ; 2 uses
  %i.bbw = getelementptr inbounds [1680 x i8], ptr %i.aov, i64 %i.bbv
  %i.bbx = getelementptr inbounds [1024 x i8], ptr %i.aow, i64 %i.bbv
  %i.bby = load i32, ptr %i.bbh, align 4, !tbaa !121
  %i.bbz = sext i32 %i.bby to i64
  %i.bca = getelementptr inbounds [128 x i8], ptr %i.aox, i64 %i.bbz
  %i.bcb = call fastcc noundef i32 @_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt(ptr noundef nonnull %calloc.i51, ptr noundef %i.b, ptr noundef %i.bbu, ptr noundef %i.bbw, ptr noundef %i.bbx, i32 noundef %i.baz, ptr noundef %i.bca)
  %.not223.not.i.i.i.i = icmp eq i32 %i.bcb, 0
  br i1 %.not223.not.i.i.i.i, label %.critedge.i57.i.i.i, label %bb.ji

bb.ji:                                            ; preds = %.lr.ph298.i.i.i.i
  %i.bcc = mul nsw i32 %i.bbq, %.0205307.i.i.i.i
  %i.bcd = add nsw i32 %i.bcc, %.0202301.i.i.i.i
  %i.bce = shl nsw i32 %i.bcd, 3
  %i.bcf = mul nuw nsw i32 %i.bbp, %.0206305.i.i.i.i
  %i.bcg = add nsw i32 %i.bcf, %.0203297.i.i.i.i
  %i.bch = shl nsw i32 %i.bcg, 3
  %i.bci = load ptr, ptr %i.anp, align 8, !tbaa !93
  %i.bcj = load ptr, ptr %i.bbi, align 8, !tbaa !122
  %i.bck = load i32, ptr %i.bbj, align 4, !tbaa !123 ; 2 uses
  %i.bcl = mul nsw i32 %i.bce, %i.bck
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.bcj, i64 %i.bcm
  %i.bco = sext i32 %i.bch to i64
  %i.bcp = getelementptr inbounds i8, ptr %i.bcn, i64 %i.bco
  call void %i.bci(ptr noundef %i.bcp, i32 noundef %i.bck, ptr noundef nonnull %i.b), !inline_history !124
  %i.bcq = add nuw nsw i32 %.0203297.i.i.i.i, 1   ; 2 uses
  %i.bcr = load i32, ptr %i.bbe, align 4, !tbaa !130 ; 3 uses
  %i.bcs = icmp slt i32 %i.bcq, %i.bcr
  br i1 %i.bcs, label %.lr.ph298.i.i.i.i, label %._crit_edge299.loopexit.i.i.i.i, !llvm.loop !131

._crit_edge299.loopexit.i.i.i.i:                  ; preds = %bb.ji
  %.pre350.i.i.i.i = load i32, ptr %i.bbc, align 8, !tbaa !129
  br label %._crit_edge299.i.i.i.i

._crit_edge299.i.i.i.i:                           ; preds = %._crit_edge299.loopexit.i.i.i.i, %.preheader256.i.i.i.i
  %i.bct = phi i32 [ %.pre350.i.i.i.i, %._crit_edge299.loopexit.i.i.i.i ], [ %i.bbm, %.preheader256.i.i.i.i ] ; 2 uses
  %i.bcu = phi i32 [ %i.bcr, %._crit_edge299.loopexit.i.i.i.i ], [ %i.bbn, %.preheader256.i.i.i.i ]
  %i.bcv = add nuw nsw i32 %.0202301.i.i.i.i, 1   ; 2 uses
  %.not224.i.i.i.i = icmp slt i32 %i.bcv, %i.bct
  br i1 %.not224.i.i.i.i, label %.preheader256.i.i.i.i, label %.critedge230.loopexit.i.i.i.i, !llvm.loop !132

.critedge230.loopexit.i.i.i.i:                    ; preds = %._crit_edge299.i.i.i.i
  %.pre351.i.i.i.i = load i32, ptr %i.aob, align 4, !tbaa !99
  br label %.critedge230.i.i.i.i

.critedge230.i.i.i.i:                             ; preds = %.critedge230.loopexit.i.i.i.i, %.preheader256.lr.ph.i.i.i.i, %.lr.ph303.i.i.i.i
  %i.bcw = phi i32 [ %i.bax, %.lr.ph303.i.i.i.i ], [ %.pre351.i.i.i.i, %.critedge230.loopexit.i.i.i.i ], [ %i.bax, %.preheader256.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next340.i.i.i.i = add nuw nsw i64 %indvars.iv339.i.i.i.i, 1 ; 2 uses
  %i.bcx = sext i32 %i.bcw to i64
  %i.bcy = icmp slt i64 %indvars.iv.next340.i.i.i.i, %i.bcx
  br i1 %i.bcy, label %.lr.ph303.i.i.i.i, label %._crit_edge304.loopexit.i.i.i.i, !llvm.loop !134

._crit_edge304.loopexit.i.i.i.i:                  ; preds = %.critedge230.i.i.i.i
  %.pre352.i.i.i.i = load i32, ptr %i.aoq, align 4, !tbaa !117
  br label %._crit_edge304.i.i.i.i

._crit_edge304.i.i.i.i:                           ; preds = %._crit_edge304.loopexit.i.i.i.i, %.preheader257.i.i.i.i
  %i.bcz = phi i32 [ %.pre352.i.i.i.i, %._crit_edge304.loopexit.i.i.i.i ], [ %i.bau, %.preheader257.i.i.i.i ] ; 2 uses
  %i.bda = add nsw i32 %i.bcz, -1                 ; 2 uses
  store i32 %i.bda, ptr %i.aoq, align 4, !tbaa !117
  %i.bdb = icmp slt i32 %i.bcz, 2
  br i1 %i.bdb, label %bb.jj, label %bb.jn

bb.jj:                                            ; preds = %._crit_edge304.i.i.i.i
  %i.bdc = load i32, ptr %i.aoi, align 4, !tbaa !113
  %i.bdd = icmp slt i32 %i.bdc, 24
  br i1 %i.bdd, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.bde = load i8, ptr %i.aop, align 8, !tbaa !97
  %i.bdf = and i8 %i.bde, -8
  %or.cond231.i.i.i.i = icmp eq i8 %i.bdf, -48
  br i1 %or.cond231.i.i.i.i, label %bb.jm, label %.critedge.i57.i.i.i

bb.jm:                                            ; preds = %bb.jl
  store i32 0, ptr %i.aoi, align 4, !tbaa !113
  store i32 0, ptr %i.aoj, align 8, !tbaa !114
  store i32 0, ptr %i.aok, align 4, !tbaa !115
  store i32 0, ptr %i.aol, align 8, !tbaa !116
  store i32 0, ptr %i.aom, align 8, !tbaa !116
  store i32 0, ptr %i.aon, align 8, !tbaa !116
  store i32 0, ptr %i.aoo, align 8, !tbaa !116
  store i8 -1, ptr %i.aop, align 8, !tbaa !97
  %i.bdg = load i32, ptr %i.any, align 8, !tbaa !98 ; 2 uses
  %.not.i238.i.i.i.i = icmp eq i32 %i.bdg, 0
  %spec.select.i239.i.i.i.i = select i1 %.not.i238.i.i.i.i, i32 2147483647, i32 %i.bdg ; 2 uses
  store i32 %spec.select.i239.i.i.i.i, ptr %i.aoq, align 4, !tbaa !117
  store i32 0, ptr %i.aor, align 4, !tbaa !118
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %._crit_edge304.i.i.i.i
  %i.bdh = phi i32 [ %i.bda, %._crit_edge304.i.i.i.i ], [ %spec.select.i239.i.i.i.i, %bb.jm ] ; 2 uses
  %i.bdi = add nuw nsw i32 %.0206305.i.i.i.i, 1   ; 2 uses
  %i.bdj = load i32, ptr %i.aot, align 8, !tbaa !128 ; 2 uses
  %i.bdk = icmp slt i32 %i.bdi, %i.bdj
  br i1 %i.bdk, label %.preheader257.i.i.i.i, label %._crit_edge306.loopexit.i.i.i.i, !llvm.loop !135

._crit_edge306.loopexit.i.i.i.i:                  ; preds = %bb.jn
  %.pre353.i.i.i.i = load i32, ptr %i.aos, align 4, !tbaa !127
  br label %._crit_edge306.i.i.i.i

._crit_edge306.i.i.i.i:                           ; preds = %._crit_edge306.loopexit.i.i.i.i, %.preheader258.i.i.i.i
  %i.bdl = phi i32 [ %.pre353.i.i.i.i, %._crit_edge306.loopexit.i.i.i.i ], [ %i.baq, %.preheader258.i.i.i.i ] ; 2 uses
  %i.bdm = phi i32 [ %i.bdh, %._crit_edge306.loopexit.i.i.i.i ], [ %i.bar, %.preheader258.i.i.i.i ]
  %i.bdn = phi i32 [ %i.bdj, %._crit_edge306.loopexit.i.i.i.i ], [ %i.bas, %.preheader258.i.i.i.i ]
  %i.bdo = add nuw nsw i32 %.0205307.i.i.i.i, 1   ; 2 uses
  %i.bdp = icmp slt i32 %i.bdo, %i.bdl
  br i1 %i.bdp, label %.preheader258.i.i.i.i, label %.critedge.i57.i.i.i, !llvm.loop !136

.critedge.i57.i.i.i:                              ; preds = %._crit_edge306.i.i.i.i, %bb.jl, %.lr.ph298.i.i.i.i, %.preheader258.lr.ph.i.i.i.i, %bb.jh
  %.11.i.i.i.i = phi i32 [ 1, %bb.jh ], [ 1, %.preheader258.lr.ph.i.i.i.i ], [ 1, %bb.jl ], [ 0, %.lr.ph298.i.i.i.i ], [ 1, %._crit_edge306.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i

bb.jo:                                            ; preds = %_ZL25stbi__process_scan_headerP10stbi__jpeg.exit.i.i.i
  br i1 %i.ayq, label %bb.jp, label %.preheader270.i.i.i.i

.preheader270.i.i.i.i:                            ; preds = %bb.jo
  %i.bdq = load i32, ptr %i.aos, align 4, !tbaa !127 ; 2 uses
  %i.bdr = icmp sgt i32 %i.bdq, 0
  br i1 %i.bdr, label %.preheader268.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader268.lr.ph.i.i.i.i:                      ; preds = %.preheader270.i.i.i.i
  %i.bds = load i32, ptr %i.aot, align 8, !tbaa !128 ; 2 uses
  %i.bdt = icmp sgt i32 %i.bds, 0
  br i1 %i.bdt, label %.preheader268.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

bb.jp:                                            ; preds = %bb.jo
  %i.bdu = load i32, ptr %i.aoc, align 8, !tbaa !13 ; 2 uses
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.bdv ; 6 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 28
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !119
  %i.bdz = add nsw i32 %i.bdy, 7
  %i.bea = ashr i32 %i.bdz, 3                     ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdw, i64 32
  %i.bec = load i32, ptr %i.beb, align 8, !tbaa !120
  %i.bed = add nsw i32 %i.bec, 7
  %i.bee = ashr i32 %i.bed, 3                     ; 2 uses
  %i.bef = icmp sgt i32 %i.bee, 0
  br i1 %i.bef, label %.preheader263.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader263.lr.ph.i.i.i.i:                      ; preds = %bb.jp
  %i.beg = icmp sgt i32 %i.bea, 0
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bdw, i64 80
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdw, i64 88
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bdw, i64 20
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16
  br i1 %i.beg, label %.preheader263.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader263.i.i.i.i:                            ; preds = %.preheader263.lr.ph.i.i.i.i, %._crit_edge295.i.i.i.i
  %.0200296.i.i.i.i = phi i32 [ %i.bov, %._crit_edge295.i.i.i.i ], [ 0, %.preheader263.lr.ph.i.i.i.i ] ; 2 uses
  br label %bb.jq

bb.jq:                                            ; preds = %bb.mk, %.preheader263.i.i.i.i
  %.0201293.i.i.i.i = phi i32 [ 0, %.preheader263.i.i.i.i ], [ %i.bou, %bb.mk ] ; 2 uses
  %i.bel = load ptr, ptr %i.beh, align 8, !tbaa !137
  %i.bem = load i32, ptr %i.bei, align 8, !tbaa !138
  %i.ben = mul nsw i32 %i.bem, %.0200296.i.i.i.i
  %i.beo = add nsw i32 %i.ben, %.0201293.i.i.i.i
  %i.bep = shl nsw i32 %i.beo, 6
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr inbounds [2 x i8], ptr %i.bel, i64 %i.beq ; 5 uses
  %i.bes = load i32, ptr %i.aod, align 4, !tbaa !108 ; 5 uses
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.beu = load i32, ptr %i.bek, align 8, !tbaa !105
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.bev
  %i.bex = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %calloc.i51, ptr noundef %i.ber, ptr noundef %i.bew, i32 noundef %i.bdu)
  %.not229.i.i.i.i = icmp eq i32 %i.bex, 0
  br i1 %.not229.i.i.i.i, label %.loopexit365.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

bb.js:                                            ; preds = %bb.jq
  %i.bey = load i32, ptr %i.bej, align 4, !tbaa !106
  %i.bez = sext i32 %i.bey to i64                 ; 2 uses
  %i.bfa = getelementptr inbounds [1680 x i8], ptr %i.aov, i64 %i.bez ; 10 uses
  %i.bfb = getelementptr inbounds [1024 x i8], ptr %i.aow, i64 %i.bez
  %i.bfc = load i32, ptr %i.aof, align 4, !tbaa !110
  %i.bfd = icmp eq i32 %i.bfc, 0
  %i.bfe = load i32, ptr %i.aog, align 8, !tbaa !111 ; 4 uses
  %i.bff = load i32, ptr %i.aor, align 4, !tbaa !118 ; 3 uses
  %.not166.i.i.i.i.i = icmp eq i32 %i.bff, 0      ; 2 uses
  br i1 %i.bfd, label %bb.jt, label %bb.ky

bb.jt:                                            ; preds = %bb.js
  br i1 %.not166.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.ju

.preheader.i.i.i.i.i:                             ; preds = %bb.jt
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1280
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1024
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1540
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1612
  %.pre267.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !113
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bfk = add nsw i32 %i.bff, -1
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.jv:                                            ; preds = %bb.kx, %.preheader.i.i.i.i.i
  %i.bfl = phi i32 [ %i.bjn, %bb.kx ], [ %.pre267.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.0120.i.i.i.i.i = phi i32 [ %.4124.ph.i.i.i.i.i, %bb.kx ], [ %i.bes, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.bfm = icmp slt i32 %i.bfl, 16
  br i1 %i.bfm, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
end_hunk_1
begin_hunk_2_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %.not157250.i.i.i.i.i = icmp sgt i32 %.6.i.i.i.i.i, %i.bng
  br i1 %.not157250.i.i.i.i.i, label %.loopexit222.i.i.i.i.i, label %.lr.ph253.preheader.i.i.i.i.i

.lr.ph253.preheader.i.i.i.i.i:                    ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i
  %i.bnh = sext i32 %.6.i.i.i.i.i to i64
  br label %.lr.ph253.i.i.i.i.i

.lr.ph253.i.i.i.i.i:                              ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, %.lr.ph253.preheader.i.i.i.i.i
  %i.bni = phi i32 [ %i.bng, %.lr.ph253.preheader.i.i.i.i.i ], [ %i.boh, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ]
  %i.bnj = phi i32 [ %i.bnf, %.lr.ph253.preheader.i.i.i.i.i ], [ %i.bog, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 4 uses
  %indvars.iv263.i.i.i.i.i = phi i64 [ %i.bnh, %.lr.ph253.preheader.i.i.i.i.i ], [ %indvars.iv.next264.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 3 uses
  %.1252.i.i.i.i.i = phi i32 [ %.0115.i.i.i.i.i, %.lr.ph253.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 7 uses
  %indvars.iv.next264.i.i.i.i.i = add nsw i64 %indvars.iv263.i.i.i.i.i, 1 ; 3 uses
  %i.bnk = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv263.i.i.i.i.i
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !26
  %i.bnm = zext i8 %i.bnl to i64
  %i.bnn = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bnm ; 5 uses
  %i.bno = load i16, ptr %i.bnn, align 2, !tbaa !32
  %.not158.i.i.i.i.i = icmp eq i16 %i.bno, 0
  br i1 %.not158.i.i.i.i.i, label %bb.me, label %bb.ly

bb.ly:                                            ; preds = %.lr.ph253.i.i.i.i.i
  %i.bnp = icmp slt i32 %i.bnj, 1
  br i1 %i.bnp, label %bb.lz, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i

bb.lz:                                            ; preds = %bb.ly
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i189.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !113 ; 3 uses
  %i.bnq = icmp slt i32 %.pr.i189.i.i.i.i.i, 1
  br i1 %i.bnq, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i: ; preds = %bb.lz, %bb.ly
  %i.bnr = phi i32 [ %.pr.i189.i.i.i.i.i, %bb.lz ], [ %i.bnj, %bb.ly ]
  %i.bns = load i32, ptr %i.aoj, align 8, !tbaa !114 ; 2 uses
  %i.bnt = shl i32 %i.bns, 1
  store i32 %i.bnt, ptr %i.aoj, align 8, !tbaa !114
  %i.bnu = add nsw i32 %i.bnr, -1                 ; 5 uses
  store i32 %i.bnu, ptr %i.aoi, align 4, !tbaa !113
  %.not159.i.i.i.i.i = icmp sgt i32 %i.bns, -1
  br i1 %.not159.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i
  %i.bnv = load i16, ptr %i.bnn, align 2, !tbaa !32 ; 4 uses
  %i.bnw = sext i16 %i.bnv to i32
  %i.bnx = and i32 %i.bjt, %i.bnw
  %i.bny = icmp eq i32 %i.bnx, 0
  br i1 %i.bny, label %bb.mb, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.bnz = icmp sgt i16 %i.bnv, 0
  br i1 %i.bnz, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.boa = add i16 %i.bnv, %i.bjv
  store i16 %i.boa, ptr %i.bnn, align 2, !tbaa !32
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.md:                                            ; preds = %bb.mb
  %i.bob = sub i16 %i.bnv, %i.bjv
  store i16 %i.bob, ptr %i.bnn, align 2, !tbaa !32
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.me:                                            ; preds = %.lr.ph253.i.i.i.i.i
  %i.boc = icmp eq i32 %.1252.i.i.i.i.i, 0
  br i1 %i.boc, label %.thread219.i.i.i.i.i, label %bb.mf

.thread219.i.i.i.i.i:                             ; preds = %bb.me
  %i.bod = trunc nsw i64 %indvars.iv.next264.i.i.i.i.i to i32
  %i.boe = trunc i32 %.0.i.i56.i.i.i to i16
  store i16 %i.boe, ptr %i.bnn, align 2, !tbaa !32
  br label %.loopexit222.i.i.i.i.i

bb.mf:                                            ; preds = %bb.me
  %i.bof = add nsw i32 %.1252.i.i.i.i.i, -1
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i: ; preds = %bb.mf, %bb.md, %bb.mc, %bb.ma, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i, %bb.lz
  %i.bog = phi i32 [ %i.bnj, %bb.mf ], [ %i.bnu, %bb.mc ], [ %i.bnu, %bb.md ], [ %i.bnu, %bb.ma ], [ %i.bnu, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i ], [ %.pr.i189.i.i.i.i.i, %bb.lz ] ; 2 uses
  %.3.i.i.i.i.i = phi i32 [ %i.bof, %bb.mf ], [ %.1252.i.i.i.i.i, %bb.mc ], [ %.1252.i.i.i.i.i, %bb.md ], [ %.1252.i.i.i.i.i, %bb.ma ], [ %.1252.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i ], [ %.1252.i.i.i.i.i, %bb.lz ]
  %i.boh = load i32, ptr %i.aoe, align 8, !tbaa !109 ; 3 uses
  %i.boi = sext i32 %i.boh to i64
  %.not157.not.i.i.i.i.i = icmp slt i64 %indvars.iv263.i.i.i.i.i, %i.boi
  br i1 %.not157.not.i.i.i.i.i, label %.lr.ph253.i.i.i.i.i, label %.loopexit222.loopexit.i.i.i.i.i

.loopexit222.loopexit.i.i.i.i.i:                  ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i
  %i.boj = trunc nsw i64 %indvars.iv.next264.i.i.i.i.i to i32
  br label %.loopexit222.i.i.i.i.i

.loopexit222.i.i.i.i.i:                           ; preds = %.loopexit222.loopexit.i.i.i.i.i, %.thread219.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i
  %i.bok = phi i32 [ %i.bni, %.thread219.i.i.i.i.i ], [ %i.bng, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.boh, %.loopexit222.loopexit.i.i.i.i.i ]
  %i.bol = phi i32 [ %i.bnj, %.thread219.i.i.i.i.i ], [ %i.bnf, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.bog, %.loopexit222.loopexit.i.i.i.i.i ]
  %.9.i.i.i.i.i = phi i32 [ %i.bod, %.thread219.i.i.i.i.i ], [ %.6.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.boj, %.loopexit222.loopexit.i.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i.i = icmp sgt i32 %.9.i.i.i.i.i, %i.bok
  br i1 %.not161.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.le, !llvm.loop !142

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i: ; preds = %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, %bb.kn, %bb.ju
  %.sink.i.i.i.i56 = phi i32 [ %i.bfk, %bb.ju ], [ 0, %bb.kn ], [ %i.bil, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i ]
  store i32 %.sink.i.i.i.i56, ptr %i.aor, align 4, !tbaa !118
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, %.loopexit222.i.i.i.i.i, %bb.kx, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, %bb.kz, %bb.jr
  %i.bom = load i32, ptr %i.aoq, align 4, !tbaa !117 ; 2 uses
  %i.bon = add nsw i32 %i.bom, -1
  store i32 %i.bon, ptr %i.aoq, align 4, !tbaa !117
  %i.boo = icmp slt i32 %i.bom, 2
  br i1 %i.boo, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bop = load i32, ptr %i.aoi, align 4, !tbaa !113
  %i.boq = icmp slt i32 %i.bop, 24
  br i1 %i.boq, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.bor = load i8, ptr %i.aop, align 8, !tbaa !97 ; 2 uses
  %i.bos = and i8 %i.bor, -8
  %or.cond232.i.i.i.i = icmp eq i8 %i.bos, -48
  br i1 %or.cond232.i.i.i.i, label %bb.mj, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.mj:                                            ; preds = %bb.mi
  store i32 0, ptr %i.aoi, align 4, !tbaa !113
  store i32 0, ptr %i.aoj, align 8, !tbaa !114
  store i32 0, ptr %i.aok, align 4, !tbaa !115
  store i32 0, ptr %i.aol, align 8, !tbaa !116
  store i32 0, ptr %i.aom, align 8, !tbaa !116
  store i32 0, ptr %i.aon, align 8, !tbaa !116
  store i32 0, ptr %i.aoo, align 8, !tbaa !116
  store i8 -1, ptr %i.aop, align 8, !tbaa !97
  %i.bot = load i32, ptr %i.any, align 8, !tbaa !98 ; 2 uses
  %.not.i241.i.i.i.i = icmp eq i32 %i.bot, 0
  %spec.select.i242.i.i.i.i = select i1 %.not.i241.i.i.i.i, i32 2147483647, i32 %i.bot
  store i32 %spec.select.i242.i.i.i.i, ptr %i.aoq, align 4, !tbaa !117
  store i32 0, ptr %i.aor, align 4, !tbaa !118
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bou = add nuw nsw i32 %.0201293.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i54.i.i.i = icmp eq i32 %i.bou, %i.bea
  br i1 %exitcond.not.i54.i.i.i, label %._crit_edge295.i.i.i.i, label %bb.jq, !llvm.loop !143

._crit_edge295.i.i.i.i:                           ; preds = %bb.mk
  %i.bov = add nuw nsw i32 %.0200296.i.i.i.i, 1   ; 2 uses
  %exitcond338.not.i.i.i.i = icmp eq i32 %i.bov, %i.bee
  br i1 %exitcond338.not.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, label %.preheader263.i.i.i.i, !llvm.loop !144

.preheader268.i.i.i.i:                            ; preds = %.preheader268.lr.ph.i.i.i.i, %._crit_edge291.i.i.i.i
  %i.bow = phi i32 [ %i.brf, %._crit_edge291.i.i.i.i ], [ %i.bdq, %.preheader268.lr.ph.i.i.i.i ]
  %i.box = phi i32 [ %i.brg, %._crit_edge291.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.boy = phi i32 [ %i.brh, %._crit_edge291.i.i.i.i ], [ %i.bds, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %.0198292.i.i.i.i = phi i32 [ %i.bri, %._crit_edge291.i.i.i.i ], [ 0, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.boz = icmp sgt i32 %i.boy, 0
  br i1 %i.boz, label %.preheader267.i.i.i.i, label %._crit_edge291.i.i.i.i

.preheader267.i.i.i.i:                            ; preds = %.preheader268.i.i.i.i, %bb.mq
  %i.bpa = phi i32 [ %i.brb, %bb.mq ], [ %i.box, %.preheader268.i.i.i.i ]
  %.0199290.i.i.i.i = phi i32 [ %i.brc, %bb.mq ], [ 0, %.preheader268.i.i.i.i ] ; 2 uses
  %i.bpb = load i32, ptr %i.aob, align 4, !tbaa !99 ; 2 uses
  %i.bpc = icmp sgt i32 %i.bpb, 0
  br i1 %i.bpc, label %.lr.ph288.i.i.i.i, label %._crit_edge289.i.i.i.i

.lr.ph288.i.i.i.i:                                ; preds = %.preheader267.i.i.i.i, %.critedge234.i.i.i.i
  %i.bpd = phi i32 [ %i.bqq, %.critedge234.i.i.i.i ], [ %i.bpb, %.preheader267.i.i.i.i ] ; 2 uses
  %indvars.iv.i48.i.i.i = phi i64 [ %indvars.iv.next.i49.i.i.i, %.critedge234.i.i.i.i ], [ 0, %.preheader267.i.i.i.i ] ; 2 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.i48.i.i.i
  %i.bpf = load i32, ptr %i.bpe, align 4, !tbaa !13 ; 2 uses
  %i.bpg = sext i32 %i.bpf to i64
  %i.bph = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.bpg ; 5 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8 ; 3 uses
  %i.bpj = load i32, ptr %i.bpi, align 8, !tbaa !129 ; 2 uses
  %.not227285.i.i.i.i = icmp sgt i32 %i.bpj, 0
  br i1 %.not227285.i.i.i.i, label %.preheader265.lr.ph.i.i.i.i, label %.critedge234.i.i.i.i

.preheader265.lr.ph.i.i.i.i:                      ; preds = %.lr.ph288.i.i.i.i
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bph, i64 4 ; 2 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bph, i64 80
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bph, i64 88
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bph, i64 16
  %i.bpo = load i32, ptr %i.bpk, align 4, !tbaa !130 ; 2 uses
  %i.bpp = icmp sgt i32 %i.bpo, 0
  br i1 %i.bpp, label %.preheader265.i.i.i.i, label %.critedge234.i.i.i.i

.preheader265.i.i.i.i:                            ; preds = %.preheader265.lr.ph.i.i.i.i, %._crit_edge.i50.i.i.i
  %i.bpq = phi i32 [ %i.bqn, %._crit_edge.i50.i.i.i ], [ %i.bpj, %.preheader265.lr.ph.i.i.i.i ]
  %i.bpr = phi i32 [ %i.bqo, %._crit_edge.i50.i.i.i ], [ %i.bpo, %.preheader265.lr.ph.i.i.i.i ] ; 3 uses
  %.0286.i.i.i.i = phi i32 [ %i.bqp, %._crit_edge.i50.i.i.i ], [ 0, %.preheader265.lr.ph.i.i.i.i ] ; 2 uses
  %i.bps = icmp sgt i32 %i.bpr, 0
  br i1 %i.bps, label %.lr.ph.i51.i.i.i, label %._crit_edge.i50.i.i.i

bb.ml:                                            ; preds = %.lr.ph.i51.i.i.i
  %i.bpt = add nuw nsw i32 %.0196284.i.i.i.i, 1   ; 2 uses
  %i.bpu = load i32, ptr %i.bpk, align 4, !tbaa !130 ; 3 uses
  %i.bpv = icmp slt i32 %i.bpt, %i.bpu
  br i1 %i.bpv, label %.lr.ph.i51.i.i.i, label %._crit_edge.loopexit.i52.i.i.i, !llvm.loop !145

.lr.ph.i51.i.i.i:                                 ; preds = %.preheader265.i.i.i.i, %bb.ml
  %i.bpw = phi i32 [ %i.bpu, %bb.ml ], [ %i.bpr, %.preheader265.i.i.i.i ]
  %.0196284.i.i.i.i = phi i32 [ %i.bpt, %bb.ml ], [ 0, %.preheader265.i.i.i.i ] ; 2 uses
  %i.bpx = mul nuw nsw i32 %i.bpw, %.0199290.i.i.i.i
  %i.bpy = add nsw i32 %i.bpx, %.0196284.i.i.i.i
  %i.bpz = load i32, ptr %i.bpi, align 8, !tbaa !129
  %i.bqa = mul nsw i32 %i.bpz, %.0198292.i.i.i.i
  %i.bqb = add nsw i32 %i.bqa, %.0286.i.i.i.i
  %i.bqc = load ptr, ptr %i.bpl, align 8, !tbaa !137
  %i.bqd = load i32, ptr %i.bpm, align 8, !tbaa !138
  %i.bqe = mul nsw i32 %i.bqb, %i.bqd
  %i.bqf = add nsw i32 %i.bpy, %i.bqe
  %i.bqg = shl nsw i32 %i.bqf, 6
  %i.bqh = sext i32 %i.bqg to i64
  %i.bqi = getelementptr inbounds [2 x i8], ptr %i.bqc, i64 %i.bqh
  %i.bqj = load i32, ptr %i.bpn, align 8, !tbaa !105
  %i.bqk = sext i32 %i.bqj to i64
  %i.bql = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.bqk
  %i.bqm = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %calloc.i51, ptr noundef %i.bqi, ptr noundef %i.bql, i32 noundef %i.bpf)
  %.not226.not.i.i.i.i = icmp eq i32 %i.bqm, 0
  br i1 %.not226.not.i.i.i.i, label %.loopexit365.i.i, label %bb.ml

._crit_edge.loopexit.i52.i.i.i:                   ; preds = %bb.ml
  %.pre.i53.i.i.i = load i32, ptr %i.bpi, align 8, !tbaa !129
  br label %._crit_edge.i50.i.i.i

._crit_edge.i50.i.i.i:                            ; preds = %._crit_edge.loopexit.i52.i.i.i, %.preheader265.i.i.i.i
  %i.bqn = phi i32 [ %.pre.i53.i.i.i, %._crit_edge.loopexit.i52.i.i.i ], [ %i.bpq, %.preheader265.i.i.i.i ] ; 2 uses
  %i.bqo = phi i32 [ %i.bpu, %._crit_edge.loopexit.i52.i.i.i ], [ %i.bpr, %.preheader265.i.i.i.i ]
  %i.bqp = add nuw nsw i32 %.0286.i.i.i.i, 1      ; 2 uses
  %.not227.i.i.i.i = icmp slt i32 %i.bqp, %i.bqn
  br i1 %.not227.i.i.i.i, label %.preheader265.i.i.i.i, label %.critedge234.loopexit.i.i.i.i, !llvm.loop !146

.critedge234.loopexit.i.i.i.i:                    ; preds = %._crit_edge.i50.i.i.i
  %.pre347.i.i.i.i = load i32, ptr %i.aob, align 4, !tbaa !99
  br label %.critedge234.i.i.i.i

.critedge234.i.i.i.i:                             ; preds = %.critedge234.loopexit.i.i.i.i, %.preheader265.lr.ph.i.i.i.i, %.lr.ph288.i.i.i.i
  %i.bqq = phi i32 [ %i.bpd, %.lr.ph288.i.i.i.i ], [ %.pre347.i.i.i.i, %.critedge234.loopexit.i.i.i.i ], [ %i.bpd, %.preheader265.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i49.i.i.i = add nuw nsw i64 %indvars.iv.i48.i.i.i, 1 ; 2 uses
  %i.bqr = sext i32 %i.bqq to i64
  %i.bqs = icmp slt i64 %indvars.iv.next.i49.i.i.i, %i.bqr
  br i1 %i.bqs, label %.lr.ph288.i.i.i.i, label %._crit_edge289.loopexit.i.i.i.i, !llvm.loop !147

._crit_edge289.loopexit.i.i.i.i:                  ; preds = %.critedge234.i.i.i.i
  %.pre348.i.i.i.i = load i32, ptr %i.aoq, align 4, !tbaa !117
  br label %._crit_edge289.i.i.i.i

._crit_edge289.i.i.i.i:                           ; preds = %._crit_edge289.loopexit.i.i.i.i, %.preheader267.i.i.i.i
  %i.bqt = phi i32 [ %.pre348.i.i.i.i, %._crit_edge289.loopexit.i.i.i.i ], [ %i.bpa, %.preheader267.i.i.i.i ] ; 2 uses
  %i.bqu = add nsw i32 %i.bqt, -1                 ; 2 uses
  store i32 %i.bqu, ptr %i.aoq, align 4, !tbaa !117
  %i.bqv = icmp slt i32 %i.bqt, 2
  br i1 %i.bqv, label %bb.mm, label %bb.mq

bb.mm:                                            ; preds = %._crit_edge289.i.i.i.i
  %i.bqw = load i32, ptr %i.aoi, align 4, !tbaa !113
  %i.bqx = icmp slt i32 %i.bqw, 24
  br i1 %i.bqx, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.bqy = load i8, ptr %i.aop, align 8, !tbaa !97 ; 2 uses
  %i.bqz = and i8 %i.bqy, -8
  %or.cond235.i.i.i.i = icmp eq i8 %i.bqz, -48
  br i1 %or.cond235.i.i.i.i, label %bb.mp, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.mp:                                            ; preds = %bb.mo
  store i32 0, ptr %i.aoi, align 4, !tbaa !113
  store i32 0, ptr %i.aoj, align 8, !tbaa !114
  store i32 0, ptr %i.aok, align 4, !tbaa !115
  store i32 0, ptr %i.aol, align 8, !tbaa !116
  store i32 0, ptr %i.aom, align 8, !tbaa !116
  store i32 0, ptr %i.aon, align 8, !tbaa !116
  store i32 0, ptr %i.aoo, align 8, !tbaa !116
  store i8 -1, ptr %i.aop, align 8, !tbaa !97
  %i.bra = load i32, ptr %i.any, align 8, !tbaa !98 ; 2 uses
  %.not.i243.i.i.i.i = icmp eq i32 %i.bra, 0
  %spec.select.i244.i.i.i.i = select i1 %.not.i243.i.i.i.i, i32 2147483647, i32 %i.bra ; 2 uses
  store i32 %spec.select.i244.i.i.i.i, ptr %i.aoq, align 4, !tbaa !117
  store i32 0, ptr %i.aor, align 4, !tbaa !118
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %._crit_edge289.i.i.i.i
  %i.brb = phi i32 [ %i.bqu, %._crit_edge289.i.i.i.i ], [ %spec.select.i244.i.i.i.i, %bb.mp ] ; 2 uses
  %i.brc = add nuw nsw i32 %.0199290.i.i.i.i, 1   ; 2 uses
  %i.brd = load i32, ptr %i.aot, align 8, !tbaa !128 ; 2 uses
  %i.bre = icmp slt i32 %i.brc, %i.brd
  br i1 %i.bre, label %.preheader267.i.i.i.i, label %._crit_edge291.loopexit.i.i.i.i, !llvm.loop !148

._crit_edge291.loopexit.i.i.i.i:                  ; preds = %bb.mq
  %.pre349.i.i.i.i = load i32, ptr %i.aos, align 4, !tbaa !127
  br label %._crit_edge291.i.i.i.i

._crit_edge291.i.i.i.i:                           ; preds = %._crit_edge291.loopexit.i.i.i.i, %.preheader268.i.i.i.i
  %i.brf = phi i32 [ %.pre349.i.i.i.i, %._crit_edge291.loopexit.i.i.i.i ], [ %i.bow, %.preheader268.i.i.i.i ] ; 2 uses
  %i.brg = phi i32 [ %i.brb, %._crit_edge291.loopexit.i.i.i.i ], [ %i.box, %.preheader268.i.i.i.i ]
  %i.brh = phi i32 [ %i.brd, %._crit_edge291.loopexit.i.i.i.i ], [ %i.boy, %.preheader268.i.i.i.i ]
  %i.bri = add nuw nsw i32 %.0198292.i.i.i.i, 1   ; 2 uses
  %i.brj = icmp slt i32 %i.bri, %i.brf
  br i1 %i.brj, label %.preheader268.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, !llvm.loop !149

_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i: ; preds = %.critedge.i57.i.i.i, %.loopexit.i.i.i.i
  %.26.i.i.i.i = phi i32 [ %.11.i.i.i.i, %.critedge.i57.i.i.i ], [ %.3213.i.i.i.i, %.loopexit.i.i.i.i ]
  %.not45.i.i.i = icmp eq i32 %.26.i.i.i.i, 0
  br i1 %.not45.i.i.i, label %.loopexit365.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i: ; preds = %._crit_edge291.i.i.i.i, %._crit_edge295.i.i.i.i, %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i, %.preheader263.lr.ph.i.i.i.i, %bb.jp, %.preheader268.lr.ph.i.i.i.i, %.preheader270.i.i.i.i
  %.pr.i.i.i = load i8, ptr %i.aop, align 8, !tbaa !97
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i: ; preds = %bb.mo, %bb.mi, %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i
  %i.brk = phi i8 [ %.pr.i.i.i, %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i ], [ %i.bor, %bb.mi ], [ %i.bqy, %bb.mo ]
  %i.brl = icmp eq i8 %i.brk, -1
  br i1 %i.brl, label %.loopexit.i60.i.i.i, label %bb.ng

.loopexit.i60.i.i.i:                              ; preds = %_ZL10stbi__get8P13stbi__context.exit.i65.i.i.i, %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i
  %i.brm = load ptr, ptr %calloc.i51, align 8, !tbaa !91 ; 6 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 16
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !24
  %.not.i.i61.i.i.i = icmp eq ptr %i.bro, null
  br i1 %.not.i.i61.i.i.i, label %_ZL12stbi__at_eofP13stbi__context.exit.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %.loopexit.i60.i.i.i
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brm, i64 32
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !150
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brm, i64 40
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !16
  %i.brt = call noundef i32 %i.brq(ptr noundef %i.brs), !inline_history !151
  %.not6.i.i.i.i.i = icmp eq i32 %i.brt, 0
  br i1 %.not6.i.i.i.i.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread.i.i.i.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brm, i64 48
  %i.brv = load i32, ptr %i.bru, align 8, !tbaa !20
  %i.brw = icmp eq i32 %i.brv, 0
  br i1 %i.brw, label %_ZL27stbi__skip_jpeg_junk_at_endP10stbi__jpeg.exit.i.i.i, label %_ZL12stbi__at_eofP13stbi__context.exit.i.i.i.i

_ZL12stbi__at_eofP13stbi__context.exit.i.i.i.i:   ; preds = %bb.ms, %.loopexit.i60.i.i.i
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brm, i64 192
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !23
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brm, i64 200
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !27
  %.not37.i.i.i.i = icmp ult ptr %i.bry, %i.bsa
  br i1 %.not37.i.i.i.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread.i.i.i.i, label %_ZL27stbi__skip_jpeg_junk_at_endP10stbi__jpeg.exit.i.i.i

_ZL12stbi__at_eofP13stbi__context.exit.thread.i.i.i.i: ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.i.i.i.i, %bb.mr
  %i.bsb = load ptr, ptr %calloc.i51, align 8, !tbaa !91 ; 11 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 192 ; 4 uses
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !23 ; 3 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsb, i64 200 ; 2 uses
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !27
  %i.bsg = icmp ult ptr %i.bsd, %i.bsf
  br i1 %i.bsg, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread.i.i.i.i
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsd, i64 1
  store ptr %i.bsh, ptr %i.bsc, align 8, !tbaa !23
  %i.bsi = load i8, ptr %i.bsd, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i65.i.i.i.preheader

bb.mu:                                            ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread.i.i.i.i
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsb, i64 48 ; 2 uses
  %i.bsk = load i32, ptr %i.bsj, align 8, !tbaa !20
  %.not.i14.i.i.i.i = icmp eq i32 %i.bsk, 0
  br i1 %.not.i14.i.i.i.i, label %_ZL10stbi__get8P13stbi__context.exit.i65.i.i.i.preheader, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !24
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsb, i64 40
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !16
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsb, i64 56 ; 4 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsb, i64 52
  %i.bsr = load i32, ptr %i.bsq, align 4, !tbaa !19
  %i.bss = call noundef i32 %i.bsm(ptr noundef %i.bso, ptr noundef nonnull %i.bsp, i32 noundef %i.bsr), !inline_history !152 ; 2 uses
  %i.bst = load ptr, ptr %i.bsc, align 8, !tbaa !23
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsb, i64 208
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !22
  %i.bsw = ptrtoint ptr %i.bst to i64
  %i.bsx = ptrtoint ptr %i.bsv to i64
  %i.bsy = sub i64 %i.bsw, %i.bsx
  %i.bsz = trunc i64 %i.bsy to i32
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsb, i64 184 ; 2 uses
  %i.btb = load i32, ptr %i.bta, align 8, !tbaa !21
  %i.btc = add nsw i32 %i.btb, %i.bsz
  store i32 %i.btc, ptr %i.bta, align 8, !tbaa !21
  %i.btd = icmp eq i32 %i.bss, 0
  br i1 %i.btd, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  store i32 0, ptr %i.bsj, align 8, !tbaa !20
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bsb, i64 57
  store i8 0, ptr %i.bsp, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i63.i.i.i

bb.mx:                                            ; preds = %bb.mv
  %i.btf = sext i32 %i.bss to i64
  %i.btg = getelementptr inbounds i8, ptr %i.bsp, i64 %i.btf
  %.pre.i.i62.i.i.i = load i8, ptr %i.bsp, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i63.i.i.i
end_hunk_2
begin_hunk_3_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.cal = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %indvars.iv.i.i301.i.i ; 5 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 56
  %i.can = load ptr, ptr %i.cam, align 8, !tbaa !165 ; 2 uses
  %.not.i.i302.i.i = icmp eq ptr %i.can, null
  br i1 %.not.i.i302.i.i, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  call void @free(ptr noundef nonnull %i.can) #35
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cal, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cao, i8 0, i64 16, i1 false)
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cal, i64 64 ; 2 uses
  %i.caq = load ptr, ptr %i.cap, align 8, !tbaa !166 ; 2 uses
  %.not28.i.i303.i.i = icmp eq ptr %i.caq, null
  br i1 %.not28.i.i303.i.i, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @free(ptr noundef nonnull %i.caq) #35
  store ptr null, ptr %i.cap, align 8, !tbaa !166
  %i.car = getelementptr inbounds nuw i8, ptr %i.cal, i64 80
  store ptr null, ptr %i.car, align 8, !tbaa !137
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cal, i64 72 ; 2 uses
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !167 ; 2 uses
  %.not29.i.i304.i.i = icmp eq ptr %i.cat, null
  br i1 %.not29.i.i304.i.i, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @free(ptr noundef nonnull %i.cat) #35
  store ptr null, ptr %i.cas, align 8, !tbaa !167
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %indvars.iv.next.i.i305.i.i = add nuw nsw i64 %indvars.iv.i.i301.i.i, 1 ; 2 uses
  %exitcond.not.i.i306.i.i = icmp eq i64 %indvars.iv.next.i.i305.i.i, %wide.trip.count.i.i300.i.i
  br i1 %exitcond.not.i.i306.i.i, label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i, label %bb.nx, !llvm.loop !168

bb.oe:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.cau = load i32, ptr %.pre.i.i57, align 8, !tbaa !51 ; 6 uses
  %i.cav = add i32 %i.cau, 3
  %i.caw = zext i32 %i.cav to i64
  %i.cax = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18056
  %i.cay = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18060
  %i.caz = add i32 %i.cau, -1
  %wide.trip.count.i.i = zext nneg i32 %..i.i to i64 ; 2 uses
  br label %bb.of

bb.of:                                            ; preds = %.thread341.i.i, %bb.oe
  %indvars.iv.i.i = phi i64 [ 0, %bb.oe ], [ %indvars.iv.next.i.i, %.thread341.i.i ] ; 3 uses
  %i.cba = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i.i ; 8 uses
  %i.cbb = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.caw) #36 ; 2 uses
  %i.cbc = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %indvars.iv.i.i ; 4 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 72
  store ptr %i.cbb, ptr %i.cbd, align 8, !tbaa !167
  %.not292.not.i.i = icmp eq ptr %i.cbb, null
  br i1 %.not292.not.i.i, label %bb.og, label %bb.oo

bb.og:                                            ; preds = %bb.of
  %i.cbe = icmp sgt i32 %i.bzu, 0
  br i1 %i.cbe, label %.lr.ph.i.i308.i.i, label %.thread342.i.i

.thread342.i.i:                                   ; preds = %bb.og
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.qe

.lr.ph.i.i308.i.i:                                ; preds = %bb.og
  %wide.trip.count.i.i309.i.i = zext nneg i32 %i.bzu to i64
  br label %bb.oh

bb.oh:                                            ; preds = %bb.on, %.lr.ph.i.i308.i.i
  %indvars.iv.i.i310.i.i = phi i64 [ 0, %.lr.ph.i.i308.i.i ], [ %indvars.iv.next.i.i314.i.i, %bb.on ] ; 2 uses
  %i.cbf = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %indvars.iv.i.i310.i.i ; 5 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 56
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !165 ; 2 uses
  %.not.i.i311.i.i = icmp eq ptr %i.cbh, null
  br i1 %.not.i.i311.i.i, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @free(ptr noundef nonnull %i.cbh) #35
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbf, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbi, i8 0, i64 16, i1 false)
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbf, i64 64 ; 2 uses
  %i.cbk = load ptr, ptr %i.cbj, align 8, !tbaa !166 ; 2 uses
  %.not28.i.i312.i.i = icmp eq ptr %i.cbk, null
  br i1 %.not28.i.i312.i.i, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @free(ptr noundef nonnull %i.cbk) #35
  store ptr null, ptr %i.cbj, align 8, !tbaa !166
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbf, i64 80
  store ptr null, ptr %i.cbl, align 8, !tbaa !137
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbf, i64 72 ; 2 uses
  %i.cbn = load ptr, ptr %i.cbm, align 8, !tbaa !167 ; 2 uses
  %.not29.i.i313.i.i = icmp eq ptr %i.cbn, null
  br i1 %.not29.i.i313.i.i, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  call void @free(ptr noundef nonnull %i.cbn) #35
  store ptr null, ptr %i.cbm, align 8, !tbaa !167
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %indvars.iv.next.i.i314.i.i = add nuw nsw i64 %indvars.iv.i.i310.i.i, 1 ; 2 uses
  %exitcond.not.i.i315.i.i = icmp eq i64 %indvars.iv.next.i.i314.i.i, %wide.trip.count.i.i309.i.i
  br i1 %exitcond.not.i.i315.i.i, label %bb.os, label %bb.oh, !llvm.loop !168

bb.oo:                                            ; preds = %bb.of
  %i.cbo = load i32, ptr %i.cax, align 8, !tbaa !171
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbc, i64 4
  %i.cbq = load i32, ptr %i.cbp, align 4, !tbaa !130
  %i.cbr = sdiv i32 %i.cbo, %i.cbq                ; 4 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cba, i64 24
  store i32 %i.cbr, ptr %i.cbs, align 8, !tbaa !172
  %i.cbt = load i32, ptr %i.cay, align 4, !tbaa !174
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8
  %i.cbv = load i32, ptr %i.cbu, align 8, !tbaa !129
  %i.cbw = sdiv i32 %i.cbt, %i.cbv                ; 5 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cba, i64 28
  store i32 %i.cbw, ptr %i.cbx, align 4, !tbaa !175
  %i.cby = ashr i32 %i.cbw, 1
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cba, i64 36
  store i32 %i.cby, ptr %i.cbz, align 4, !tbaa !176
  %i.cca = add i32 %i.caz, %i.cbr
  %i.ccb = udiv i32 %i.cca, %i.cbr
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cba, i64 32
  store i32 %i.ccb, ptr %i.ccc, align 16, !tbaa !177
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cba, i64 40
  store i32 0, ptr %i.ccd, align 8, !tbaa !178
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cbc, i64 48
  %i.ccf = load ptr, ptr %i.cce, align 8, !tbaa !122 ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cba, i64 16
  store ptr %i.ccf, ptr %i.ccg, align 16, !tbaa !179
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  store ptr %i.ccf, ptr %i.cch, align 8, !tbaa !180
  switch i32 %i.cbr, label %.thread340.i.i [
    i32 1, label %bb.op
    i32 2, label %bb.oq
  ]

bb.op:                                            ; preds = %bb.oo
  %switch.selectcmp.i.i = icmp eq i32 %i.cbw, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @_ZL22stbi__resample_row_v_2PhS_S_ii, ptr @_ZL26stbi__resample_row_genericPhS_S_ii
  %switch.selectcmp742.i.i = icmp eq i32 %i.cbw, 1
  %switch.select743.i.i = select i1 %switch.selectcmp742.i.i, ptr @_ZL14resample_row_1PhS_S_ii, ptr %switch.select.i.i
  br label %.thread341.i.i

bb.oq:                                            ; preds = %bb.oo
  switch i32 %i.cbw, label %.thread340.i.i [
    i32 1, label %.thread341.i.i
    i32 2, label %bb.or
  ]

bb.or:                                            ; preds = %bb.oq
  %i.cci = load ptr, ptr %i.anr, align 8, !tbaa !95
  br label %.thread341.i.i

.thread340.i.i:                                   ; preds = %bb.oq, %bb.oo
  br label %.thread341.i.i

bb.os:                                            ; preds = %bb.on
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.qe

.thread341.i.i:                                   ; preds = %.thread340.i.i, %bb.or, %bb.oq, %bb.op
  %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i = phi ptr [ %switch.select743.i.i, %bb.op ], [ %i.cci, %bb.or ], [ @_ZL26stbi__resample_row_genericPhS_S_ii, %.thread340.i.i ], [ @_ZL22stbi__resample_row_h_2PhS_S_ii, %bb.oq ]
  store ptr %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i, ptr %i.cba, align 16, !tbaa !181
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.ot, label %bb.of, !llvm.loop !182

bb.ot:                                            ; preds = %.thread341.i.i
  %i.ccj = getelementptr inbounds nuw i8, ptr %.pre.i.i57, i64 4
  %i.cck = load i32, ptr %i.ccj, align 4, !tbaa !52 ; 4 uses
  %i.ccl = or i32 %i.cau, %i.bzw
  %or.cond.not.i.i.i.i.i = icmp sgt i32 %i.ccl, -1
  br i1 %or.cond.not.i.i.i.i.i, label %bb.ou, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ou:                                            ; preds = %bb.ot
  %i.ccm = icmp eq i32 %i.cau, 0
  br i1 %i.ccm, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i:        ; preds = %bb.ou
  %i.ccn = udiv i32 2147483647, %i.cau
  %.not23.i.i.i.i = icmp sgt i32 %i.bzw, %i.ccn
  br i1 %.not23.i.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.ou
  %i.cco = mul nuw nsw i32 %i.cau, %i.bzw         ; 3 uses
  %i.ccp = or i32 %i.cck, %i.cco
  %or.cond.not.i10.i.i.i.i = icmp sgt i32 %i.ccp, -1
  br i1 %or.cond.not.i10.i.i.i.i, label %bb.ov, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ov:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i
  %i.ccq = icmp eq i32 %i.cck, 0                  ; 2 uses
  br i1 %i.ccq, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i:      ; preds = %bb.ov
  %i.ccr = udiv i32 2147483647, %i.cck
  %.not.i.i317.i.i = icmp sgt i32 %i.cco, %i.ccr
  br i1 %.not.i.i317.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i

_ZL21stbi__mad3sizes_validiiii.exit.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %bb.ov
  %i.ccs = mul nuw nsw i32 %i.cck, %i.cco         ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ccs, 2147483647
  br i1 %.not9.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i:              ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i
  %i.cct = add nsw i32 %i.ccs, 1
  %i.ccu = sext i32 %i.cct to i64
  %i.ccv = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ccu) #36 ; 4 uses
  %.not286.i.i = icmp eq ptr %i.ccv, null
  br i1 %.not286.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %.preheader364.i.i

.preheader364.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i
  br i1 %i.ccq, label %._crit_edge444.i.i, label %.lr.ph443.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader364.i.i
  %i.ccw = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18508 ; 2 uses
  %i.ccx = icmp eq i32 %i.bzw, 1                  ; 2 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.ccz = zext nneg i32 %i.bzw to i64            ; 6 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph.preheader.i.i

_ZL17stbi__malloc_mad3iiii.exit.thread.i.i:       ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.ot
  %i.cdc = icmp sgt i32 %i.bzu, 0
  br i1 %i.cdc, label %.lr.ph.i.i318.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i

.lr.ph.i.i318.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  %wide.trip.count.i.i319.i.i = zext nneg i32 %i.bzu to i64
  br label %bb.ow

bb.ow:                                            ; preds = %bb.pc, %.lr.ph.i.i318.i.i
  %indvars.iv.i.i320.i.i = phi i64 [ 0, %.lr.ph.i.i318.i.i ], [ %indvars.iv.next.i.i324.i.i, %bb.pc ] ; 2 uses
  %i.cdd = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %indvars.iv.i.i320.i.i ; 5 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 56
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !165 ; 2 uses
  %.not.i.i321.i.i = icmp eq ptr %i.cdf, null
  br i1 %.not.i.i321.i.i, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @free(ptr noundef nonnull %i.cdf) #35
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cdg, i8 0, i64 16, i1 false)
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdd, i64 64 ; 2 uses
  %i.cdi = load ptr, ptr %i.cdh, align 8, !tbaa !166 ; 2 uses
  %.not28.i.i322.i.i = icmp eq ptr %i.cdi, null
  br i1 %.not28.i.i322.i.i, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @free(ptr noundef nonnull %i.cdi) #35
  store ptr null, ptr %i.cdh, align 8, !tbaa !166
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdd, i64 80
  store ptr null, ptr %i.cdj, align 8, !tbaa !137
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdd, i64 72 ; 2 uses
  %i.cdl = load ptr, ptr %i.cdk, align 8, !tbaa !167 ; 2 uses
  %.not29.i.i323.i.i = icmp eq ptr %i.cdl, null
  br i1 %.not29.i.i323.i.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  call void @free(ptr noundef nonnull %i.cdl) #35
  store ptr null, ptr %i.cdk, align 8, !tbaa !167
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %indvars.iv.next.i.i324.i.i = add nuw nsw i64 %indvars.iv.i.i320.i.i, 1 ; 2 uses
  %exitcond.not.i.i325.i.i = icmp eq i64 %indvars.iv.next.i.i324.i.i, %wide.trip.count.i.i319.i.i
  br i1 %exitcond.not.i.i325.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i, label %bb.ow, !llvm.loop !168

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i: ; preds = %bb.pc, %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.qe

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i.i, %.lr.ph443.i.i
  %i.cdm = phi ptr [ %.pre.i.i57, %.lr.ph443.i.i ], [ %i.coq, %.loopexit.i.i ]
  %.0264442.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.cor, %.loopexit.i.i ] ; 2 uses
  %i.cdn = load i32, ptr %i.cdm, align 8, !tbaa !51
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.pf, %.lr.ph.preheader.i.i
  %indvars.iv510.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next511.i.i, %bb.pf ] ; 4 uses
  %i.cdo = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv510.i.i ; 8 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 36 ; 3 uses
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !176 ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdo, i64 28
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !175 ; 2 uses
  %i.cdt = ashr i32 %i.cds, 1
  %.not289.i.i = icmp slt i32 %i.cdq, %i.cdt      ; 2 uses
  %i.cdu = load ptr, ptr %i.cdo, align 16, !tbaa !181
  %i.cdv = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %indvars.iv510.i.i ; 3 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 72
  %i.cdx = load ptr, ptr %i.cdw, align 8, !tbaa !167
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdo, i64 16 ; 4 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdo, i64 8 ; 3 uses
  %.in.i.i = select i1 %.not289.i.i, ptr %i.cdz, ptr %i.cdy
  %i.cea = load ptr, ptr %.in.i.i, align 8, !tbaa !10
  %.in290.i.i = select i1 %.not289.i.i, ptr %i.cdy, ptr %i.cdz
  %i.ceb = load ptr, ptr %.in290.i.i, align 8, !tbaa !10
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cdo, i64 32
  %i.ced = load i32, ptr %i.cec, align 16, !tbaa !177
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdo, i64 24
  %i.cef = load i32, ptr %i.cee, align 8, !tbaa !172
  %i.ceg = call noundef ptr %i.cdu(ptr noundef %i.cdx, ptr noundef %i.cea, ptr noundef %i.ceb, i32 noundef %i.ced, i32 noundef %i.cef), !inline_history !183
  %i.ceh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv510.i.i
  store ptr %i.ceg, ptr %i.ceh, align 8, !tbaa !10
  %i.cei = add nsw i32 %i.cdq, 1                  ; 2 uses
  store i32 %i.cei, ptr %i.cdp, align 4, !tbaa !176
  %.not291.i.i = icmp slt i32 %i.cei, %i.cds
  br i1 %.not291.i.i, label %bb.pf, label %bb.pd

bb.pd:                                            ; preds = %.lr.ph.i.i
  store i32 0, ptr %i.cdp, align 4, !tbaa !176
  %i.cej = load ptr, ptr %i.cdy, align 16, !tbaa !179 ; 2 uses
  store ptr %i.cej, ptr %i.cdz, align 8, !tbaa !180
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cdo, i64 40 ; 2 uses
  %i.cel = load i32, ptr %i.cek, align 8, !tbaa !178
  %i.cem = add nsw i32 %i.cel, 1                  ; 2 uses
  store i32 %i.cem, ptr %i.cek, align 8, !tbaa !178
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cdv, i64 32
  %i.ceo = load i32, ptr %i.cen, align 8, !tbaa !120
  %i.cep = icmp slt i32 %i.cem, %i.ceo
  br i1 %i.cep, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cdv, i64 36
  %i.cer = load i32, ptr %i.ceq, align 4, !tbaa !123
  %i.ces = sext i32 %i.cer to i64
  %i.cet = getelementptr inbounds i8, ptr %i.cej, i64 %i.ces
  store ptr %i.cet, ptr %i.cdy, align 16, !tbaa !179
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %.lr.ph.i.i
  %indvars.iv.next511.i.i = add nuw nsw i64 %indvars.iv510.i.i, 1 ; 2 uses
  %exitcond514.not.i.i = icmp eq i64 %indvars.iv.next511.i.i, %wide.trip.count.i.i
  br i1 %exitcond514.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !184

._crit_edge.i.i:                                  ; preds = %bb.pf
  %i.ceu = mul i32 %.0264442.i.i, %i.bzw
  %i.cev = mul i32 %i.ceu, %i.cdn
  %i.cew = zext i32 %i.cev to i64
  %i.cex = getelementptr inbounds nuw i8, ptr %i.ccv, i64 %i.cew ; 12 uses
  br i1 %i.cai, label %bb.pg, label %bb.pn

bb.pg:                                            ; preds = %._crit_edge.i.i
  %i.cey = load ptr, ptr %i.c, align 16, !tbaa !10 ; 5 uses
  %i.cez = load ptr, ptr %calloc.i51, align 8, !tbaa !91 ; 15 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cez, i64 8
  %i.cfb = load i32, ptr %i.cfa, align 8, !tbaa !53
  switch i32 %i.cfb, label %.preheader.i.i [
    i32 3, label %bb.ph
    i32 4, label %bb.pj
  ]

.preheader.i.i:                                   ; preds = %bb.pg
  %i.cfc = load i32, ptr %i.cez, align 8, !tbaa !51
  %.not454.i.i = icmp eq i32 %i.cfc, 0
  br i1 %.not454.i.i, label %.loopexit.i.i, label %.lr.ph441.i.i

bb.ph:                                            ; preds = %bb.pg
  br i1 %i.cag, label %.preheader347.i.i, label %.loopexit.sink.split.i.i

.preheader347.i.i:                                ; preds = %bb.ph
  %i.cfd = load i32, ptr %i.cez, align 8, !tbaa !51
  %.not453.i.i = icmp eq i32 %i.cfd, 0
  br i1 %.not453.i.i, label %.loopexit.i.i, label %.lr.ph438.i.i

.lr.ph438.i.i:                                    ; preds = %.preheader347.i.i
  %i.cfe = load ptr, ptr %i.cda, align 8, !tbaa !10
  %i.cff = load ptr, ptr %i.cdb, align 16, !tbaa !10
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pi, %.lr.ph438.i.i
  %indvars.iv539.i.i = phi i64 [ 0, %.lr.ph438.i.i ], [ %indvars.iv.next540.i.i, %bb.pi ] ; 4 uses
  %.0260437.i.i = phi ptr [ %i.cex, %.lr.ph438.i.i ], [ %i.cfp, %bb.pi ] ; 5 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cey, i64 %indvars.iv539.i.i
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !26
  store i8 %i.cfh, ptr %.0260437.i.i, align 1, !tbaa !26
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfe, i64 %indvars.iv539.i.i
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !26
  %i.cfk = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 1
  store i8 %i.cfj, ptr %i.cfk, align 1, !tbaa !26
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cff, i64 %indvars.iv539.i.i
  %i.cfm = load i8, ptr %i.cfl, align 1, !tbaa !26
  %i.cfn = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 2
  store i8 %i.cfm, ptr %i.cfn, align 1, !tbaa !26
  %i.cfo = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 3
  store i8 -1, ptr %i.cfo, align 1, !tbaa !26
  %i.cfp = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 %i.ccz
  %indvars.iv.next540.i.i = add nuw nsw i64 %indvars.iv539.i.i, 1 ; 2 uses
  %i.cfq = load i32, ptr %i.cez, align 8, !tbaa !51
  %i.cfr = zext i32 %i.cfq to i64
  %i.cfs = icmp samesign ult i64 %indvars.iv.next540.i.i, %i.cfr
  br i1 %i.cfs, label %bb.pi, label %.loopexit.i.i, !llvm.loop !185

bb.pj:                                            ; preds = %bb.pg
  %i.cft = load i32, ptr %i.ccw, align 4, !tbaa !96
end_hunk_3
begin_hunk_4_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %.1227 = select i1 %i.qb, i32 %i.qc, i32 %.0226
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2228 = phi i32 [ %.1227, %bb.et ], [ %i.qe, %bb.eu ] ; 4 uses
  %i.qd = icmp ugt i32 %i.py, %.2228
  %i.qe = shl i32 %.2228, 1
  br i1 %i.qd, label %bb.eu, label %bb.ev, !llvm.loop !206

bb.ev:                                            ; preds = %bb.eu
  %i.qf = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.qg = zext i32 %.2228 to i64
  %i.qh = tail call ptr @realloc(ptr noundef %i.qf, i64 noundef %i.qg) #37 ; 3 uses
  %.not269 = icmp eq ptr %i.qh, null
  br i1 %.not269, label %.thread379, label %bb.ew

.thread379:                                       ; preds = %bb.ev
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.qh, ptr %i.f, align 8, !tbaa !55
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.qi = phi ptr [ %i.qh, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3229 = phi i32 [ %.2228, %bb.ew ], [ %.0226, %._crit_edge ] ; 2 uses
  %i.qj = zext i32 %.0230 to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qj ; 3 uses
  %i.ql = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not.i337 = icmp eq ptr %i.ql, null
  br i1 %.not.i337, label %..thread_crit_edge.i339, label %bb.ey

..thread_crit_edge.i339:                          ; preds = %bb.ex
  %.pre.i341 = load ptr, ptr %i.h, align 8, !tbaa !23
  %.pre35.i = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %.thread.i338

bb.ey:                                            ; preds = %bb.ex
  %i.qm = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.qn = load ptr, ptr %i.h, align 8, !tbaa !23  ; 3 uses
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp                    ; 2 uses
  %i.qr = trunc i64 %i.qq to i32                  ; 2 uses
  %i.qs = icmp sgt i32 %i.gs, %i.qr
  br i1 %i.qs, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i338

.thread.i338:                                     ; preds = %bb.ey, %..thread_crit_edge.i339
  %i.qt = phi ptr [ %.pre35.i, %..thread_crit_edge.i339 ], [ %i.qm, %bb.ey ]
  %i.qu = phi ptr [ %.pre.i341, %..thread_crit_edge.i339 ], [ %i.qn, %bb.ey ] ; 2 uses
  %i.qv = zext nneg i32 %i.gs to i64              ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  %.not32.i = icmp ugt ptr %i.qw, %i.qt
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383

_ZL10stbi__getnP13stbi__contextPhi.exit.thread383: ; preds = %.thread.i338
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.qu, i64 %i.qv, i1 false)
  %i.qx = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  store ptr %i.qy, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.qq, 32
  %i.qz = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.qn, i64 %i.qz, i1 false)
  %i.ra = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.rb = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.rc = getelementptr inbounds i8, ptr %i.qk, i64 %i.qz
  %i.rd = sub nsw i32 %i.gs, %i.qr                ; 2 uses
  %i.re = tail call noundef i32 %i.ra(ptr noundef %i.rb, ptr noundef %i.rc, i32 noundef %i.rd), !inline_history !207
  %.not = icmp eq i32 %i.re, %i.rd
  %i.rf = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.rf, ptr %i.h, align 8, !tbaa !23
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i338, %_ZL10stbi__getnP13stbi__contextPhi.exit
  store ptr @.str.24, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0217, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread396

bb.fc:                                            ; preds = %bb.fb
  %i.rg = load ptr, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store ptr @.str.25, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fe:                                            ; preds = %bb.fc
  %i.ri = load i32, ptr %i.d, align 8, !tbaa !51
  %i.rj = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.rk = mul i32 %i.rj, %i.ri
  %i.rl = add i32 %i.rk, 7
  %i.rm = lshr i32 %i.rl, 3
  %i.rn = load i32, ptr %i.gn, align 4, !tbaa !52 ; 2 uses
  %i.ro = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.rp = mul i32 %i.ro, %i.rn
  %i.rq = mul i32 %i.rp, %i.rm
  %i.rr = add i32 %i.rq, %i.rn                    ; 2 uses
  %i.rs = icmp ne i32 %.0204, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.rt = sext i32 %i.rr to i64
  %i.ru = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.rt) #36 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.rw = xor i1 %i.rs, true
  %i.rx = zext i1 %i.rw to i32
  store ptr %i.rg, ptr %3, align 8, !tbaa !208
  %i.ry = sext i32 %.0230 to i64
  %i.rz = getelementptr inbounds i8, ptr %i.rg, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.rz, ptr %i.sa, align 8, !tbaa !211
  %i.sb = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.ru, i32 noundef %i.rr, i32 noundef 1, i32 noundef %i.rx)
  %.not.i342 = icmp eq i32 %i.sb, 0
  br i1 %.not.i342, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !212
  call void @free(ptr noundef %i.sd) #35
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  store ptr null, ptr %i.e, align 8, !tbaa !54
  br label %.thread396

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !213
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !212 ; 3 uses
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = trunc i64 %i.sk to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  store ptr %i.sh, ptr %i.e, align 8, !tbaa !54
  %i.sm = icmp eq ptr %i.sh, null
  br i1 %i.sm, label %.thread396, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sn = load ptr, ptr %i.f, align 8, !tbaa !55
  call void @free(ptr noundef %i.sn) #35
  store ptr null, ptr %i.f, align 8, !tbaa !55
  %i.so = load i32, ptr %i.gl, align 8, !tbaa !53 ; 2 uses
  %i.sp = add nsw i32 %i.so, 1                    ; 2 uses
  %i.sq = icmp eq i32 %2, %i.sp
  %i.sr = icmp ne i32 %2, 3
  %or.cond5.not260.not265 = and i1 %i.sr, %i.sq
  %i.ss = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not262 = select i1 %or.cond5.not260.not265, i1 %i.ss, i1 false
  %i.st = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not262, i1 true, i1 %i.st
  %spec.select1495 = select i1 %or.cond9, i32 %i.sp, i32 %i.so ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1495, ptr %i.su, align 4, !tbaa !50
  %i.sv = load ptr, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %i.sw = load i32, ptr %i.gm, align 8, !tbaa !49 ; 4 uses
  %i.sx = icmp eq i32 %i.sw, 16
  %i.sy = zext i1 %i.sx to i32
  %i.sz = shl i32 %spec.select1495, %i.sy         ; 6 uses
  %.not.i346 = icmp eq i32 %.0211, 0
  %i.ta = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !51 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !52 ; 5 uses
  br i1 %.not.i346, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.te = or i32 %i.td, %i.tb
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.te, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.tf = icmp eq i32 %i.td, 0
  br i1 %i.tf, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.fj
  %i.tg = udiv i32 2147483647, %i.td
  %.not23.i.i.i = icmp sgt i32 %i.tb, %i.tg
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fj
  %i.th = mul nuw nsw i32 %i.td, %i.tb            ; 3 uses
  %i.ti = or i32 %i.th, %i.sz
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.ti, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fk:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.tj = icmp eq i32 %i.sz, 0
  br i1 %i.tj, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.fk
  %i.tk = udiv i32 2147483647, %i.sz
  %.not.i.i.i = icmp sgt i32 %i.th, %i.tk
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.fk
  %i.tl = mul nuw nsw i32 %i.th, %i.sz
  %i.tm = sext i32 %i.tl to i64
  %i.tn = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tm) #36 ; 4 uses
  %.not92.i = icmp eq ptr %i.tn, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.to = sext i32 %i.sz to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sv, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sl, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tp = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !51
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !13 ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !13 ; 4 uses
  %i.tv = xor i32 %i.ts, -1
  %i.tw = add i32 %i.tq, %i.tv
  %i.tx = add i32 %i.tw, %i.tu                    ; 2 uses
  %i.ty = udiv i32 %i.tx, %i.tu                   ; 6 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !52
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !13 ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !13 ; 4 uses
  %i.uf = xor i32 %i.uc, -1
  %i.ug = add i32 %i.ua, %i.uf
  %i.uh = add i32 %i.ug, %i.ue                    ; 2 uses
  %i.ui = udiv i32 %i.uh, %i.ue                   ; 4 uses
  %i.uj = icmp ule i32 %i.tu, %i.tx
  %i.uk = icmp ule i32 %i.ue, %i.uh
  %or.cond.i = select i1 %i.uj, i1 %i.uk, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !53
  %i.un = mul i32 %i.ty, %i.sw
  %i.uo = mul i32 %i.un, %i.um
  %i.up = add nsw i32 %i.uo, 7
  %i.uq = ashr i32 %i.up, 3
  %i.ur = add nsw i32 %i.uq, 1
  %i.us = mul nsw i32 %i.ur, %i.ui                ; 2 uses
  %i.ut = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.ty, i32 noundef %i.ui, i32 noundef %i.sw, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.ut, 0
  br i1 %.not93.not.i, label %.thread.i350, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.uu = icmp sgt i32 %i.ui, 0
  %i.uv = icmp sgt i32 %i.ty, 0
  %or.cond107.i = and i1 %i.uv, %i.uu
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !48 ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.uw = load ptr, ptr %0, align 8, !tbaa !46
  %i.ux = sext i32 %i.tu to i64                   ; 3 uses
  %i.uy = sext i32 %i.ts to i64                   ; 3 uses
  %i.uz = zext nneg i32 %i.ty to i64              ; 3 uses
  %i.va = zext nneg i32 %i.ui to i64
  %.pre.pre.i = load i32, ptr %i.uw, align 8, !tbaa !51
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.sz
  %xtraiter = and i64 %i.uz, 1
  %i.vb = icmp ult i32 %i.ty, 2
  %unroll_iter = and i64 %i.uz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.ty to i1
  br label %.preheader.i

.thread.i350:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tn) #35
  br label %.thread396

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.vc = trunc i64 %indvars.iv109.i to i32
  %i.vd = mul i32 %i.ue, %i.vc
  %i.ve = add i32 %i.vd, %i.uc
  %.reass.i = mul i32 %factor.op.mul.i, %i.ve
  %i.vf = mul nuw nsw i64 %indvars.iv109.i, %i.uz ; 3 uses
  %i.vg = zext i32 %.reass.i to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.vg ; 3 uses
  br i1 %i.vb, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i348 = phi i64 [ %indvars.iv.next.i349.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vi = mul nsw i64 %indvars.iv.i348, %i.ux
  %i.vj = add nsw i64 %i.vi, %i.uy
  %i.vk = mul nsw i64 %i.vj, %i.to
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 %i.vk
  %i.vm = add nuw nsw i64 %indvars.iv.i348, %i.vf
  %i.vn = mul nsw i64 %i.vm, %i.to
  %i.vo = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vl, ptr align 1 %i.vo, i64 %i.to, i1 false)
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i348, 1 ; 2 uses
  %i.vp = mul nsw i64 %indvars.iv.next.i349, %i.ux
  %i.vq = add nsw i64 %i.vp, %i.uy
  %i.vr = mul nsw i64 %i.vq, %i.to
  %i.vs = getelementptr inbounds i8, ptr %i.vh, i64 %i.vr
  %i.vt = add nuw nsw i64 %indvars.iv.next.i349, %i.vf
  %i.vu = mul nsw i64 %i.vt, %i.to
  %i.vv = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vs, ptr align 1 %i.vv, i64 %i.to, i1 false)
  %indvars.iv.next.i349.1 = add nuw nsw i64 %indvars.iv.i348, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !214

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i348.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i349.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
  %i.vw = mul nsw i64 %indvars.iv.i348.epil.init, %i.ux
  %i.vx = add nsw i64 %i.vw, %i.uy
  %i.vy = mul nsw i64 %i.vx, %i.to
  %i.vz = getelementptr inbounds i8, ptr %i.vh, i64 %i.vy
  %i.wa = add nuw nsw i64 %indvars.iv.i348.epil.init, %i.vf
  %i.wb = mul nsw i64 %i.wa, %i.to
  %i.wc = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vz, ptr align 1 %i.wc, i64 %i.to, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wd = icmp samesign ult i64 %indvars.iv.next110.i, %i.va
  br i1 %i.wd, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !215

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #35
  %i.we = zext i32 %i.us to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.we
  %i.wg = sub i32 %.085104.i, %i.us
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.wg, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wf, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i347, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390, label %bb.fl, !llvm.loop !216

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390: ; preds = %bb.fn
  store ptr %i.tn, ptr %i.g, align 8, !tbaa !48
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.wh = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.sv, i32 noundef %i.sl, i32 noundef %spec.select1495, i32 noundef %i.tb, i32 noundef %i.td, i32 noundef %i.sw, i32 noundef range(i32 0, 256) %.0207)
  %.not266 = icmp eq i32 %i.wh, 0
  br i1 %.not266, label %.thread396, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.st, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.wi = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.wj = icmp eq i32 %i.wi, 16
  %i.wk = load i32, ptr %i.su, align 4, !tbaa !50 ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %.val296 = load ptr, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %.val.val = load i32, ptr %.val, align 8, !tbaa !51 ; 2 uses
  %i.wl = getelementptr i8, ptr %.val, i64 4
  %.val.val297 = load i32, ptr %i.wl, align 4, !tbaa !52 ; 2 uses
  br i1 %i.wj, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val297, ptr %.val296, ptr noundef %i.c, i32 noundef %i.wk)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val297, ptr %.val296, ptr noundef %i.b, i32 noundef %i.wk)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wm = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.wn = icmp ne i32 %i.wm, 0
  %or.cond11 = select i1 %i.rs, i1 %i.wn, i1 false
  br i1 %or.cond11, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.wo = load i32, ptr %i.su, align 4, !tbaa !50
  %i.wp = icmp sgt i32 %i.wo, 2
  br i1 %i.wp, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val301 = load ptr, ptr %0, align 8, !tbaa !46
  %.val302 = load ptr, ptr %i.g, align 8, !tbaa !48
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val301, ptr %.val302)
  br label %bb.fv

end_hunk_4
begin_hunk_5_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  store <4 x i8> %i.zk, ptr %i.zd, align 1, !tbaa !26
  %i.zl = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i355.3 = add nuw nsw i64 %indvars.iv.i354, 4 ; 2 uses
  %niter2141.next.3 = add i64 %niter2141, 4       ; 2 uses
  %niter2141.ncmp.3 = icmp eq i64 %niter2141.next.3, %unroll_iter2140
  br i1 %niter2141.ncmp.3, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, label %.lr.ph.i, !llvm.loop !218

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55.i
  %lcmp.mod2144.not = icmp eq i64 %xtraiter2142, 0
  br i1 %lcmp.mod2144.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.lr.ph55.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next60.i.1, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ]
  %.04553.i.epil.init = phi ptr [ %i.xb, %.lr.ph55.preheader.i ], [ %i.yg, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2145 = trunc i32 %i.ww to i1
  call void @llvm.assume(i1 %lcmp.mod2145)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.wx, i64 %indvars.iv59.i.epil.init
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !26
  %i.zo = zext i8 %i.zn to i64
  %i.zp = shl nuw nsw i64 %i.zo, 2
  %i.zq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zp ; 3 uses
  %i.zr = load i8, ptr %i.zq, align 4, !tbaa !26
  store i8 %i.zr, ptr %.04553.i.epil.init, align 1, !tbaa !26
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !26
  %i.zu = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !26
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 2
  %i.zw = load i8, ptr %i.zv, align 2, !tbaa !26
  %i.zx = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.zw, ptr %i.zx, align 1, !tbaa !26
  br label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2138.not = icmp eq i64 %xtraiter2137, 0
  br i1 %lcmp.mod2138.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i354.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i355.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.xb, %.lr.ph.preheader.i ], [ %i.zl, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %lcmp.mod2139 = icmp ne i64 %xtraiter2137, 0
  call void @llvm.assume(i1 %lcmp.mod2139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i354.epil = phi i64 [ %indvars.iv.i354.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i355.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aae, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %indvars.iv.i354.epil
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !26
  %i.aaa = zext i8 %i.zz to i64
  %i.aab = shl nuw nsw i64 %i.aaa, 2
  %i.aac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aab
  %i.aad = load <4 x i8>, ptr %i.aac, align 4, !tbaa !26
  store <4 x i8> %i.aad, ptr %.14651.i.epil, align 1, !tbaa !26
  %i.aae = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i355.epil = add nuw nsw i64 %indvars.iv.i354.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2137
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !219

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i357
  call void @free(ptr noundef %i.wx) #35
  store ptr %i.xb, ptr %i.g, align 8, !tbaa !48
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %i.st, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aaf = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.aag = add nsw i32 %i.aaf, 1
  store i32 %i.aag, ptr %i.gl, align 8, !tbaa !53
  br label %bb.ga

bb.ga:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.fy, %bb.fz
  %i.aah = load ptr, ptr %i.e, align 8, !tbaa !54
  call void @free(ptr noundef %i.aah) #35
  store ptr null, ptr %i.e, align 8, !tbaa !54
  %i.aai = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  %i.aaj = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread396

bb.gb:                                            ; preds = %bb.aw
  %.not294 = icmp eq i32 %.0217, 0
  br i1 %.not294, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.gd:                                            ; preds = %bb.gb
  %i.aak = and i32 %i.gt, 8192
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aam = lshr i32 %i.gt, 8
  %i.aan = trunc nuw i32 %i.aam to i8
  store i8 %i.aan, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16, !tbaa !26
  %i.aao = trunc i32 %i.gt to i8
  store i8 %i.aao, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 1), align 1, !tbaa !26
  %i.aap = lshr i32 %i.gv, 8
  %i.aaq = trunc nuw i32 %i.aap to i8
  store i8 %i.aaq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 2), align 2, !tbaa !26
  %i.aar = trunc i32 %i.gv to i8
  store i8 %i.aar, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 3), align 1, !tbaa !26
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.gf:                                            ; preds = %bb.gd
  %i.aas = icmp eq i32 %i.gs, 0
  br i1 %i.aas, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aat = icmp slt i32 %i.gq, 0
  br i1 %i.aat, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aau = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.aau, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.aav = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not.i358 = icmp eq ptr %i.aav, null
  br i1 %.not.i358, label %..thread_crit_edge.i360, label %bb.gj

..thread_crit_edge.i360:                          ; preds = %bb.gi
  %.pre.i362 = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %.thread.i359

bb.gj:                                            ; preds = %bb.gi
  %i.aaw = load ptr, ptr %i.i, align 8, !tbaa !27 ; 2 uses
  %i.aax = load ptr, ptr %i.h, align 8, !tbaa !23 ; 2 uses
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = trunc i64 %i.aba to i32                ; 2 uses
  %i.abc = icmp sgt i32 %i.gs, %i.abb
  br i1 %i.abc, label %bb.gk, label %.thread.i359

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.aaw, ptr %i.h, align 8, !tbaa !23
  %i.abd = load ptr, ptr %i.go, align 8, !tbaa !70
  %i.abe = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.abf = sub nsw i32 %i.gs, %i.abb
  tail call void %i.abd(ptr noundef %i.abe, i32 noundef %i.abf), !inline_history !200
  br label %.loopexit

.thread.i359:                                     ; preds = %bb.gj, %..thread_crit_edge.i360
  %i.abg = phi ptr [ %.pre.i362, %..thread_crit_edge.i360 ], [ %i.aax, %bb.gj ]
  %i.abh = zext nneg i32 %i.gs to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abh
  store ptr %i.abi, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit336, %.lr.ph737, %.lr.ph739, %_ZL10stbi__get8P13stbi__context.exit330, %.preheader413, %.preheader411, %.preheader409, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383, %bb.gf, %bb.gh, %bb.gk, %.thread.i359
  %.3239 = phi i8 [ %.0236, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0236, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0236, %.thread.i ], [ %.0236, %.thread.i359 ], [ 0, %.preheader409 ], [ 0, %.preheader411 ], [ %.0236, %.preheader ], [ %.0236, %bb.ax ], [ %.0236, %bb.az ], [ %.0236, %bb.bc ], [ %.1237, %bb.co ], [ 0, %bb.cm ], [ %.0236, %bb.gf ], [ %.0236, %bb.gh ], [ %.0236, %bb.gk ], [ 4, %.preheader413 ], [ 0, %.lr.ph737 ], [ %.0236, %_ZL10stbi__get8P13stbi__context.exit330 ], [ 0, %.lr.ph739 ], [ 4, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.1234 = phi i8 [ %.0233, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0233, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0233, %.thread.i ], [ %.0233, %.thread.i359 ], [ 1, %.preheader409 ], [ 1, %.preheader411 ], [ %.0233, %.preheader ], [ %.0233, %bb.ax ], [ %.0233, %bb.az ], [ %.0233, %bb.bc ], [ %.0233, %bb.co ], [ %.0233, %bb.cm ], [ %.0233, %bb.gf ], [ %.0233, %bb.gh ], [ %.0233, %bb.gk ], [ %.0233, %.preheader413 ], [ 1, %.lr.ph737 ], [ %.0233, %_ZL10stbi__get8P13stbi__context.exit330 ], [ 1, %.lr.ph739 ], [ %.0233, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.1231 = phi i32 [ %i.py, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %i.py, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0230, %.thread.i ], [ %.0230, %.thread.i359 ], [ %.0230, %.preheader409 ], [ %.0230, %.preheader411 ], [ %.0230, %.preheader ], [ %.0230, %bb.ax ], [ %.0230, %bb.az ], [ %.0230, %bb.bc ], [ %.0230, %bb.co ], [ %.0230, %bb.cm ], [ %.0230, %bb.gf ], [ %.0230, %bb.gh ], [ %.0230, %bb.gk ], [ %.0230, %.preheader413 ], [ %.0230, %.lr.ph737 ], [ %.0230, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0230, %.lr.ph739 ], [ %.0230, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.4 = phi i32 [ %.3229, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.3229, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0226, %.thread.i ], [ %.0226, %.thread.i359 ], [ %.0226, %.preheader409 ], [ %.0226, %.preheader411 ], [ %.0226, %.preheader ], [ %.0226, %bb.ax ], [ %.0226, %bb.az ], [ %.0226, %bb.bc ], [ %.0226, %bb.co ], [ %.0226, %bb.cm ], [ %.0226, %bb.gf ], [ %.0226, %bb.gh ], [ %.0226, %bb.gk ], [ %.0226, %.preheader413 ], [ %.0226, %.lr.ph737 ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0226, %.lr.ph739 ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.1222 = phi i32 [ %.0221, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0221, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0221, %.thread.i ], [ %.0221, %.thread.i359 ], [ %.0221, %.preheader409 ], [ %.0221, %.preheader411 ], [ %.zext, %.preheader ], [ %.0221, %bb.ax ], [ %.0221, %bb.az ], [ %.0221, %bb.bc ], [ %.0221, %bb.co ], [ %.0221, %bb.cm ], [ %.0221, %bb.gf ], [ %.0221, %bb.gh ], [ %.0221, %bb.gk ], [ %.0221, %.preheader413 ], [ %.0221, %.lr.ph737 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0221, %.lr.ph739 ], [ %.0221, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.2219 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0217, %.thread.i ], [ 0, %.thread.i359 ], [ 0, %.preheader409 ], [ 0, %.preheader411 ], [ 0, %.preheader ], [ %.0217, %bb.ax ], [ %.0217, %bb.az ], [ %.0217, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gf ], [ 0, %bb.gh ], [ 0, %bb.gk ], [ 0, %.preheader413 ], [ 0, %.lr.ph737 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit330 ], [ 0, %.lr.ph739 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.2213 = phi i32 [ %.0211, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0211, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0211, %.thread.i ], [ %.0211, %.thread.i359 ], [ %.0211, %.preheader409 ], [ %.0211, %.preheader411 ], [ %.0211, %.preheader ], [ %.0211, %bb.ax ], [ %.0211, %bb.az ], [ %.0211, %bb.bc ], [ %i.kf, %bb.co ], [ %i.kf, %bb.cm ], [ %.0211, %bb.gf ], [ %.0211, %bb.gh ], [ %.0211, %bb.gk ], [ %.0211, %.preheader413 ], [ %.0211, %.lr.ph737 ], [ %.0211, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0211, %.lr.ph739 ], [ %.0211, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.2209 = phi i32 [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0207, %.thread.i ], [ %.0207, %.thread.i359 ], [ %.0207, %.preheader409 ], [ %.0207, %.preheader411 ], [ %.0207, %.preheader ], [ %.0207, %bb.ax ], [ %.0207, %bb.az ], [ %.0207, %bb.bc ], [ %i.kb, %bb.co ], [ %i.kb, %bb.cm ], [ %.0207, %bb.gf ], [ %.0207, %bb.gh ], [ %.0207, %bb.gk ], [ %.0207, %.preheader413 ], [ %.0207, %.lr.ph737 ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0207, %.lr.ph739 ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %.1205 = phi i32 [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383 ], [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0204, %.thread.i359 ], [ %.0204, %.preheader409 ], [ %.0204, %.preheader411 ], [ %.0204, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0204, %bb.co ], [ %.0204, %bb.cm ], [ %.0204, %bb.gf ], [ %.0204, %bb.gh ], [ %.0204, %bb.gk ], [ %.0204, %.preheader413 ], [ %.0204, %.lr.ph737 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit330 ], [ %.0204, %.lr.ph739 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit336 ]
  %i.abj = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.abk = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !220

.thread396:                                       ; preds = %bb.er, %.thread.i350, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.ga, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread379, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ge, %bb.gc, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.ga ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread379 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i350 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gc ], [ 0, %bb.ge ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.j) #36 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.n = shl nsw i32 %1, 3
  %i.o = add nsw i32 %i.n, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.p = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.o, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.q = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.q, 4294967288            ; 5 uses
  %i.r = trunc nuw i64 %n.vec506 to i32
  %i.s = sub i32 %.11167198, %i.r
  %i.t = shl nuw nsw i64 %n.vec506, 1
  %i.u = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.q
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.v = and i64 %i.q, 15                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 16, i64 %i.v         ; 2 uses
  %n.vec455 = sub nsw i64 %i.q, %i.x              ; 5 uses
  %i.y = trunc i64 %n.vec455 to i32
  %i.z = sub i32 %.11167198, %i.y
  %i.aa = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.x, 9
  %i.ab = and i64 %i.q, 7                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec486 = sub nsw i64 %i.q, %i.ad             ; 4 uses
  %i.ae = trunc i64 %n.vec486 to i32
  %i.af = sub i32 %.11167198, %i.ae
  %i.ag = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ah = trunc nuw i64 %n.vec432 to i32
  %i.ai = sub i32 %.11167198, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec432, 1
  %i.ak = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.q
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.al = and i64 %i.q, 8
  %n.vec381 = and i64 %i.q, 4294967280            ; 6 uses
  %i.am = trunc nuw i64 %n.vec381 to i32
  %i.an = sub i32 %.11167198, %i.am
  %i.ao = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.q
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.al, 0
  %n.vec412 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ap = trunc nuw i64 %n.vec412 to i32
  %i.aq = sub i32 %.11167198, %i.ap
  %i.ar = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.q
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.at = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.au = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.av = and i64 %i.q, 15                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 16, i64 %i.av      ; 2 uses
  %n.vec330 = sub nsw i64 %i.q, %i.ax             ; 5 uses
  %i.ay = trunc i64 %n.vec330 to i32
  %i.az = sub i32 %.11167198, %i.ay
  %i.ba = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.ax, 9
  %i.bb = and i64 %i.q, 7                         ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 8, i64 %i.bb
  %n.vec360 = sub nsw i64 %i.q, %i.bd             ; 4 uses
  %i.be = trunc i64 %n.vec360 to i32
  %i.bf = sub i32 %.11167198, %i.be
  %i.bg = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bi = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bj = and i64 %i.q, 12
  %n.vec = and i64 %i.q, 4294967280               ; 6 uses
  %i.bk = trunc nuw i64 %n.vec to i32
  %i.bl = sub i32 %.11167198, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.q
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  %n.vec315 = and i64 %i.q, 4294967292            ; 5 uses
  %i.bn = trunc nuw i64 %n.vec315 to i32
  %i.bo = sub i32 %.11167198, %i.bn
  %i.bp = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.q
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bq = icmp eq i32 %.11167198, 0
  br label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef %0) #35
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = mul i32 %3, %i.br                       ; 2 uses
  %i.bt = mul i32 %i.bs, %1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 126 uses
  %i.bw = mul i32 %i.bs, %2
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bx ; 50 uses
  switch i32 %i.o, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !26
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.by, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  br i1 %i.bq, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.p, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.t
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.u
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  store i8 %i.o, ptr %i.l, align 1, !tbaa !26
  store i8 %i.m, ptr %i.n, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  store i8 %i.s, ptr %i.p, align 1, !tbaa !26
  store i8 %i.q, ptr %i.r, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  store i8 %i.w, ptr %i.t, align 1, !tbaa !26
  store i8 %i.u, ptr %i.v, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !281

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !13
  %.not = icmp eq i32 %i.y, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.d, 4
  br i1 %i.z, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.bb, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.ba, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26  ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1, !tbaa !26 ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 255
  %i.ai = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.lhs.trunc = trunc nuw i32 %i.aj to i16
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ak = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %.14711, align 1, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 255
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %.lhs.trunc1 = trunc nuw i32 %i.aq to i16
  %i.ar = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.am, align 1, !tbaa !26
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  store i8 %i.az, ptr %.14711, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.ay, align 1, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !282

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26
  store i8 %i.be, ptr %.24813, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !26
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !283

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !26
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !284

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !26
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !285

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !48
  br label %.critedge.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ad
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 5 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.ak = icmp ugt i32 %i.af, %4
  %i.al = sub i32 %i.c, %i.af
  %i.am = zext i32 %i.al to i64
  %i.an = zext i32 %i.e to i64                    ; 7 uses
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = icmp eq i32 %6, 8
  %.not606 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.aq = sext i32 %i.h to i64                    ; 58 uses
  %i.ar = sext i32 %i.g to i64                    ; 2 uses
  %i.as = sext i32 %3 to i64
  %or.cond = select i1 %i.aj, i1 true, i1 %.not606
  %.6567743 = add i32 %4, -1                      ; 8 uses
  %.not608744 = icmp eq i32 %.6567743, 0          ; 7 uses
  %wide.trip.count966 = zext i32 %5 to i64
  %i.at = add i32 %4, -2                          ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.aq, %i.au
  %i.aw = zext i32 %i.at to i64                   ; 3 uses
  %i.ax = mul nsw i64 %i.aq, %i.aw
  %i.ay = sub nsw i64 0, %i.aq
  %i.az = add nsw i64 %i.aw, -1
  %i.ba = mul i64 %i.az, %i.aq
  %i.bb = add i32 %4, -2                          ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = mul nsw i64 %i.aq, %i.bc                ; 2 uses
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = zext i32 %i.bb to i64                   ; 3 uses
  %i.bg = mul nsw i64 %i.aq, %i.bf                ; 2 uses
  %i.bh = sub i64 %i.bg, %i.an
  %i.bi = sub nsw i64 0, %i.aq                    ; 3 uses
  %i.bj = add nsw i64 %i.bf, -1
  %i.bk = mul i64 %i.bj, %i.aq
  %i.bl = add i32 %4, -2
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = mul nsw i64 %i.aq, %i.bm                ; 2 uses
  %i.bo = add nsw i64 %i.bm, -1
  %i.bp = mul i64 %i.bo, %i.aq                    ; 2 uses
  %i.bq = sub i64 %i.bn, %i.an
  %i.br = sub nsw i64 %i.bi, %i.an
  %i.bs = sub i64 %i.bp, %i.an
  %i.bt = add i32 %4, -2                          ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  %i.bv = mul nsw i64 %i.aq, %i.bu
  %i.bw = sub nsw i64 0, %i.aq                    ; 2 uses
  %i.bx = add nsw i64 %i.bu, -1
  %i.by = mul i64 %i.bx, %i.aq
  %i.bz = zext i32 %i.bt to i64                   ; 3 uses
  %i.ca = mul nsw i64 %i.aq, %i.bz
  %i.cb = add nsw i64 %i.bz, -1
  %i.cc = mul i64 %i.cb, %i.aq
  %stride.check1571 = icmp slt i32 %i.h, 0
  %stride.check1523 = icmp slt i32 %i.h, 0
  %stride.check1461 = icmp slt i32 %i.h, 0
  %stride.check1398 = icmp slt i32 %i.h, 0
  %stride.check1348 = icmp slt i32 %i.h, 0
  %stride.check1302 = icmp slt i32 %i.h, 0
  %stride.check = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1643 = and i32 %4, 7                   ; 3 uses
  %i.cd = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1644.not = icmp eq i32 %xtraiter1643, 0
  %lcmp.mod1645 = icmp ne i32 %xtraiter1643, 0
  %i.ce = add i32 %i.e, -1
  %diff.check1155 = icmp ult i32 %i.ce, 15
  %invariant.op = add i64 %i.an, -1
  %i.cf = add i32 %i.e, -1
  %diff.check1115 = icmp ult i32 %i.cf, 31
  %i.cg = add i32 %i.e, -1
  %diff.check1082 = icmp ult i32 %i.cg, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph825, %.loopexit723
  %indvars.iv963 = phi i64 [ 0, %.lr.ph825 ], [ %indvars.iv.next964, %.loopexit723 ] ; 3 uses
  %.0542824 = phi i32 [ %4, %.lr.ph825 ], [ %.1543, %.loopexit723 ]
  %.0545823 = phi i32 [ %i.i, %.lr.ph825 ], [ %.1546, %.loopexit723 ]
  %.0573821 = phi ptr [ %1, %.lr.ph825 ], [ %.11584, %.loopexit723 ] ; 3 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ci = trunc nuw i64 %indvars.iv963 to i32
  %i.cj = mul i32 %i.e, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0573821, i64 1 ; 9 uses
  %i.cn = load i8, ptr %.0573821, align 1, !tbaa !26 ; 3 uses
  %i.co = icmp ugt i8 %i.cn, 4
  br i1 %i.co, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ak, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1546 = phi i32 [ 1, %bb.j ], [ %.0545823, %bb.h ] ; 39 uses
  %.1543 = phi i32 [ %i.af, %bb.j ], [ %.0542824, %bb.h ] ; 2 uses
  %.0531 = phi ptr [ %i.cp, %bb.j ], [ %i.cl, %bb.h ] ; 28 uses
  %.05311067 = ptrtoaddr ptr %.0531 to i64        ; 6 uses
  %i.cq = getelementptr i8, ptr %.0531, i64 %i.ao ; 4 uses
  %i.cr = icmp eq i64 %indvars.iv963, 0
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = zext nneg i8 %i.cn to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0522.in = phi i8 [ %i.cu, %bb.l ], [ %i.cn, %bb.k ] ; 3 uses
  %i.cv = icmp sgt i32 %.1546, 0                  ; 8 uses
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %.1546 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 12 uses
  switch i8 %.0522.in, label %bb.u [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !26
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !26
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
end_hunk_6
begin_hunk_7_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.alr = and i8 %i.alq, 8
  %.not602 = icmp eq i8 %i.alr, 0
  %i.als = select i1 %.not602, i8 0, i8 %i.aij
  %i.alt = getelementptr inbounds nuw i8, ptr %.4833, i64 5
  store i8 %i.als, ptr %i.alp, align 1, !tbaa !26
  %i.alu = load i8, ptr %.2834, align 1, !tbaa !26
  %i.alv = and i8 %i.alu, 4
  %.not603 = icmp eq i8 %i.alv, 0
  %i.alw = select i1 %.not603, i8 0, i8 %i.aij
  %i.alx = getelementptr inbounds nuw i8, ptr %.4833, i64 6
  store i8 %i.alw, ptr %i.alt, align 1, !tbaa !26
  %i.aly = load i8, ptr %.2834, align 1, !tbaa !26
  %i.alz = and i8 %i.aly, 2
  %.not604 = icmp eq i8 %i.alz, 0
  %i.ama = select i1 %.not604, i8 0, i8 %i.aij
  %i.amb = getelementptr inbounds nuw i8, ptr %.4833, i64 7
  store i8 %i.ama, ptr %i.alx, align 1, !tbaa !26
  %i.amc = load i8, ptr %.2834, align 1, !tbaa !26
  %i.amd = trunc i8 %i.amc to i1
  %i.ame = select i1 %i.amd, i8 %i.aij, i8 0
  %i.amf = getelementptr inbounds nuw i8, ptr %.4833, i64 8 ; 2 uses
  store i8 %i.ame, ptr %i.amb, align 1, !tbaa !26
  %i.amg = add nsw i32 %.16832, -8                ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.2834, i64 1 ; 2 uses
  %i.ami = icmp samesign ugt i32 %.16832, 15
  br i1 %i.ami, label %.lr.ph835, label %._crit_edge836, !llvm.loop !401

._crit_edge836:                                   ; preds = %.lr.ph835, %.preheader701
  %.16.lcssa = phi i32 [ %i.y, %.preheader701 ], [ %i.amg, %.lr.ph835 ] ; 7 uses
  %.4.lcssa = phi ptr [ %i.aif, %.preheader701 ], [ %i.amf, %.lr.ph835 ] ; 7 uses
  %.2.lcssa = phi ptr [ %i.aih, %.preheader701 ], [ %i.amh, %.lr.ph835 ] ; 7 uses
  %i.amj = icmp sgt i32 %.16.lcssa, 0
  br i1 %i.amj, label %bb.ao, label %.thread671

bb.ao:                                            ; preds = %._crit_edge836
  %i.amk = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %isneg = icmp slt i8 %i.amk, 0
  %i.aml = select i1 %isneg, i8 %i.aij, i8 0
  store i8 %i.aml, ptr %.4.lcssa, align 1, !tbaa !26
  %.not690 = icmp eq i32 %.16.lcssa, 1
  br i1 %.not690, label %.thread671, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.amm = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  %i.amn = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.amo = and i8 %i.amn, 64
  %.not592 = icmp eq i8 %i.amo, 0
  %i.amp = select i1 %.not592, i8 0, i8 %i.aij
  store i8 %i.amp, ptr %i.amm, align 1, !tbaa !26
  %i.amq = icmp samesign ugt i32 %.16.lcssa, 2
  br i1 %i.amq, label %bb.aq, label %.thread671

bb.aq:                                            ; preds = %bb.ap
  %i.amr = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.ams = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.amt = and i8 %i.ams, 32
  %.not593 = icmp eq i8 %i.amt, 0
  %i.amu = select i1 %.not593, i8 0, i8 %i.aij
  store i8 %i.amu, ptr %i.amr, align 1, !tbaa !26
  %.not691 = icmp eq i32 %.16.lcssa, 3
  br i1 %.not691, label %.thread671, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.amv = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  %i.amw = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.amx = and i8 %i.amw, 16
  %.not594 = icmp eq i8 %i.amx, 0
  %i.amy = select i1 %.not594, i8 0, i8 %i.aij
  store i8 %i.amy, ptr %i.amv, align 1, !tbaa !26
  %i.amz = icmp samesign ugt i32 %.16.lcssa, 4
  br i1 %i.amz, label %bb.as, label %.thread671

bb.as:                                            ; preds = %bb.ar
  %i.ana = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  %i.anb = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.anc = and i8 %i.anb, 8
  %.not595 = icmp eq i8 %i.anc, 0
  %i.and = select i1 %.not595, i8 0, i8 %i.aij
  store i8 %i.and, ptr %i.ana, align 1, !tbaa !26
  %.not692 = icmp eq i32 %.16.lcssa, 5
  br i1 %.not692, label %.thread671, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ane = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 5
  %i.anf = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.ang = and i8 %i.anf, 4
  %.not596 = icmp eq i8 %i.ang, 0
  %i.anh = select i1 %.not596, i8 0, i8 %i.aij
  store i8 %i.anh, ptr %i.ane, align 1, !tbaa !26
  %i.ani = icmp eq i32 %.16.lcssa, 7
  br i1 %i.ani, label %bb.au, label %.thread671

bb.au:                                            ; preds = %bb.at
  %i.anj = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 6
  %i.ank = load i8, ptr %.2.lcssa, align 1, !tbaa !26
  %i.anl = and i8 %i.ank, 2
  %.not597 = icmp eq i8 %i.anl, 0
  %i.anm = select i1 %.not597, i8 0, i8 %i.aij
  store i8 %i.anm, ptr %i.anj, align 1, !tbaa !26
  br label %.thread671

.thread671:                                       ; preds = %._crit_edge836, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %._crit_edge844, %bb.al, %bb.aj, %bb.an, %bb.am, %bb.at, %bb.au, %._crit_edge852, %bb.ak
  br i1 %.not605, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %.thread671
  %i.ann = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.aie ; 16 uses
  br i1 %i.aho, label %.preheader, label %.preheader697

.preheader697:                                    ; preds = %bb.av
  br i1 %i.ahp, label %.lr.ph858.preheader, label %.loopexit

.lr.ph858.preheader:                              ; preds = %.preheader697
  br i1 %lcmp.mod1665.not.not, label %.lr.ph858.prol, label %.lr.ph858.prol.loopexit

.lr.ph858.prol:                                   ; preds = %.lr.ph858.preheader
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ahx ; 4 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 3
  store i8 -1, ptr %i.anq, align 1, !tbaa !26
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ahy ; 3 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 2
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !26
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anp, i64 2
  store i8 %i.ant, ptr %i.anu, align 1, !tbaa !26
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 1
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !26
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anp, i64 1
  store i8 %i.anw, ptr %i.anx, align 1, !tbaa !26
  %i.any = load i8, ptr %i.anr, align 1, !tbaa !26
  store i8 %i.any, ptr %i.anp, align 1, !tbaa !26
  br label %.lr.ph858.prol.loopexit

.lr.ph858.prol.loopexit:                          ; preds = %.lr.ph858.prol, %.lr.ph858.preheader
  %indvars.iv969.unr = phi i64 [ %i.ahq, %.lr.ph858.preheader ], [ %indvars.iv.next970.prol, %.lr.ph858.prol ]
  br i1 %i.ahz, label %.loopexit, label %.lr.ph858

.preheader:                                       ; preds = %bb.av
  br i1 %i.ahp, label %.lr.ph861.preheader, label %.loopexit

.lr.ph861.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1668.not, label %.lr.ph861.prol.loopexit, label %.lr.ph861.prol

.lr.ph861.prol:                                   ; preds = %.lr.ph861.preheader, %.lr.ph861.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph861.prol ], [ %i.ahq, %.lr.ph861.preheader ] ; 3 uses
  %prol.iter1669 = phi i64 [ %prol.iter1669.next, %.lr.ph861.prol ], [ 0, %.lr.ph861.preheader ]
  %i.anz = shl nuw nsw i64 %indvars.iv972.prol, 1
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anz ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 1
  store i8 -1, ptr %i.aob, align 1, !tbaa !26
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv972.prol
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !26
  store i8 %i.aod, ptr %i.aoa, align 1, !tbaa !26
  %indvars.iv.next973.prol = add nsw i64 %indvars.iv972.prol, -1 ; 2 uses
  %prol.iter1669.next = add i64 %prol.iter1669, 1 ; 2 uses
  %prol.iter1669.cmp.not = icmp eq i64 %prol.iter1669.next, %xtraiter1667
  br i1 %prol.iter1669.cmp.not, label %.lr.ph861.prol.loopexit, label %.lr.ph861.prol, !llvm.loop !402

.lr.ph861.prol.loopexit:                          ; preds = %.lr.ph861.prol, %.lr.ph861.preheader
  %indvars.iv972.unr = phi i64 [ %i.ahq, %.lr.ph861.preheader ], [ %indvars.iv.next973.prol, %.lr.ph861.prol ]
  br i1 %i.aia, label %.loopexit, label %.lr.ph861

.lr.ph861:                                        ; preds = %.lr.ph861.prol.loopexit, %.lr.ph861
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph861 ], [ %indvars.iv972.unr, %.lr.ph861.prol.loopexit ] ; 6 uses
  %i.aoe = shl nuw nsw i64 %indvars.iv972, 1
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoe ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 1
  store i8 -1, ptr %i.aog, align 1, !tbaa !26
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv972
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !26
  store i8 %i.aoi, ptr %i.aof, align 1, !tbaa !26
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -1 ; 2 uses
  %i.aoj = shl nuw nsw i64 %indvars.iv.next973, 1
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoj ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 1
  store i8 -1, ptr %i.aol, align 1, !tbaa !26
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !26
  store i8 %i.aon, ptr %i.aok, align 1, !tbaa !26
  %indvars.iv.next973.1 = add nsw i64 %indvars.iv972, -2 ; 2 uses
  %i.aoo = shl nuw nsw i64 %indvars.iv.next973.1, 1
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoo ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  store i8 -1, ptr %i.aoq, align 1, !tbaa !26
  %i.aor = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973.1
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !26
  store i8 %i.aos, ptr %i.aop, align 1, !tbaa !26
  %indvars.iv.next973.2 = add nsw i64 %indvars.iv972, -3 ; 3 uses
  %i.aot = shl nuw nsw i64 %indvars.iv.next973.2, 1
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aot ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 1
  store i8 -1, ptr %i.aov, align 1, !tbaa !26
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ano, i64 %indvars.iv.next973.2
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !26
  store i8 %i.aox, ptr %i.aou, align 1, !tbaa !26
  %indvars.iv.next973.3 = add nsw i64 %indvars.iv972, -4
  %.not1038.3 = icmp eq i64 %indvars.iv.next973.2, 0
  br i1 %.not1038.3, label %.loopexit, label %.lr.ph861, !llvm.loop !403

.lr.ph858:                                        ; preds = %.lr.ph858.prol.loopexit, %.lr.ph858
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph858 ], [ %indvars.iv969.unr, %.lr.ph858.prol.loopexit ] ; 4 uses
  %i.aoy = shl nuw nsw i64 %indvars.iv969, 2
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoy ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  store i8 -1, ptr %i.apa, align 1, !tbaa !26
  %i.apb = mul nuw nsw i64 %indvars.iv969, 3
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apb ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !26
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !26
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !26
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !26
  %i.apj = load i8, ptr %i.apc, align 1, !tbaa !26
  store i8 %i.apj, ptr %i.aoz, align 1, !tbaa !26
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -1 ; 3 uses
  %i.apk = shl nuw nsw i64 %indvars.iv.next970, 2
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apk ; 4 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 3
  store i8 -1, ptr %i.apm, align 1, !tbaa !26
  %i.apn = mul nuw nsw i64 %indvars.iv.next970, 3
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.apn ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 2
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !26
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 2
  store i8 %i.apq, ptr %i.apr, align 1, !tbaa !26
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apo, i64 1
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !26
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apl, i64 1
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !26
  %i.apv = load i8, ptr %i.apo, align 1, !tbaa !26
  store i8 %i.apv, ptr %i.apl, align 1, !tbaa !26
  %indvars.iv.next970.1 = add nsw i64 %indvars.iv969, -2
  %.not1037.1 = icmp eq i64 %indvars.iv.next970, 0
  br i1 %.not1037.1, label %.loopexit, label %.lr.ph858, !llvm.loop !404

.loopexit:                                        ; preds = %.lr.ph858.prol.loopexit, %.lr.ph858, %.lr.ph861.prol.loopexit, %.lr.ph861, %.preheader697, %.preheader, %.thread671
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next976, %wide.trip.count978
  br i1 %exitcond979.not, label %.critedge, label %bb.ah, !llvm.loop !405

bb.aw:                                            ; preds = %._crit_edge826
  br i1 %i.a, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %._crit_edge826.thread, %bb.aw
  %i.apw = mul i32 %i.c, %5                       ; 4 uses
  %.not866 = icmp eq i32 %i.apw, 0
  br i1 %.not866, label %.critedge, label %.lr.ph831.preheader

.lr.ph831.preheader:                              ; preds = %bb.ax
  %i.apx = load ptr, ptr %i.u, align 8, !tbaa !48 ; 2 uses
  %xtraiter1670 = and i32 %i.apw, 3               ; 3 uses
  %i.apy = icmp ult i32 %i.apw, 4
  br i1 %i.apy, label %.lr.ph831.epil.preheader, label %.lr.ph831.preheader.new

.lr.ph831.preheader.new:                          ; preds = %.lr.ph831.preheader
  %unroll_iter1674 = and i32 %i.apw, -4
  br label %.lr.ph831

.lr.ph831:                                        ; preds = %.lr.ph831, %.lr.ph831.preheader.new
  %.0829 = phi ptr [ %i.apx, %.lr.ph831.preheader.new ], [ %i.are, %.lr.ph831 ] ; 10 uses
  %niter1675 = phi i32 [ 0, %.lr.ph831.preheader.new ], [ %niter1675.next.3, %.lr.ph831 ]
  %i.apz = load i8, ptr %.0829, align 1, !tbaa !26
  %i.aqa = zext i8 %i.apz to i16
  %i.aqb = shl nuw i16 %i.aqa, 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %.0829, i64 1
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !26
  %i.aqe = zext i8 %i.aqd to i16
  %i.aqf = or disjoint i16 %i.aqb, %i.aqe
  store i16 %i.aqf, ptr %.0829, align 2, !tbaa !32
  %i.aqg = getelementptr i8, ptr %.0829, i64 2    ; 2 uses
  %i.aqh = load i8, ptr %i.aqg, align 2, !tbaa !26
  %i.aqi = zext i8 %i.aqh to i16
  %i.aqj = shl nuw i16 %i.aqi, 8
  %i.aqk = getelementptr i8, ptr %.0829, i64 3
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !26
  %i.aqm = zext i8 %i.aql to i16
  %i.aqn = or disjoint i16 %i.aqj, %i.aqm
  store i16 %i.aqn, ptr %i.aqg, align 2, !tbaa !32
  %i.aqo = getelementptr i8, ptr %.0829, i64 4    ; 2 uses
  %i.aqp = load i8, ptr %i.aqo, align 2, !tbaa !26
  %i.aqq = zext i8 %i.aqp to i16
  %i.aqr = shl nuw i16 %i.aqq, 8
  %i.aqs = getelementptr i8, ptr %.0829, i64 5
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !26
  %i.aqu = zext i8 %i.aqt to i16
  %i.aqv = or disjoint i16 %i.aqr, %i.aqu
  store i16 %i.aqv, ptr %i.aqo, align 2, !tbaa !32
  %i.aqw = getelementptr i8, ptr %.0829, i64 6    ; 2 uses
  %i.aqx = load i8, ptr %i.aqw, align 2, !tbaa !26
  %i.aqy = zext i8 %i.aqx to i16
  %i.aqz = shl nuw i16 %i.aqy, 8
  %i.ara = getelementptr i8, ptr %.0829, i64 7
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !26
  %i.arc = zext i8 %i.arb to i16
  %i.ard = or disjoint i16 %i.aqz, %i.arc
  store i16 %i.ard, ptr %i.aqw, align 2, !tbaa !32
  %i.are = getelementptr i8, ptr %.0829, i64 8    ; 2 uses
  %niter1675.next.3 = add i32 %niter1675, 4       ; 2 uses
  %niter1675.ncmp.3 = icmp eq i32 %niter1675.next.3, %unroll_iter1674
  br i1 %niter1675.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph831, !llvm.loop !406

.critedge.sink.split:                             ; preds = %bb.i, %bb.g, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL17stbi__malloc_mad3iiii.exit, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.str.27.sink = phi ptr [ @.str.26, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.i ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ], [ @.str.8, %bb.d ], [ @.str.27, %bb.g ], [ @.str.28, %bb.i ]
  store ptr %.str.27.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.critedge

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph831
  %lcmp.mod1672.not = icmp eq i32 %xtraiter1670, 0
  br i1 %lcmp.mod1672.not, label %.critedge, label %.lr.ph831.epil.preheader

.lr.ph831.epil.preheader:                         ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph831.preheader
  %.0829.epil.init = phi ptr [ %i.apx, %.lr.ph831.preheader ], [ %i.are, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod1673 = icmp ne i32 %xtraiter1670, 0
  tail call void @llvm.assume(i1 %lcmp.mod1673)
  br label %.lr.ph831.epil

.lr.ph831.epil:                                   ; preds = %.lr.ph831.epil, %.lr.ph831.epil.preheader
  %.0829.epil = phi ptr [ %i.arm, %.lr.ph831.epil ], [ %.0829.epil.init, %.lr.ph831.epil.preheader ] ; 4 uses
  %epil.iter1671 = phi i32 [ %epil.iter1671.next, %.lr.ph831.epil ], [ 0, %.lr.ph831.epil.preheader ]
  %i.arf = load i8, ptr %.0829.epil, align 1, !tbaa !26
  %i.arg = zext i8 %i.arf to i16
  %i.arh = shl nuw i16 %i.arg, 8
  %i.ari = getelementptr inbounds nuw i8, ptr %.0829.epil, i64 1
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !26
  %i.ark = zext i8 %i.arj to i16
  %i.arl = or disjoint i16 %i.arh, %i.ark
  store i16 %i.arl, ptr %.0829.epil, align 2, !tbaa !32
  %i.arm = getelementptr i8, ptr %.0829.epil, i64 2
  %epil.iter1671.next = add i32 %epil.iter1671, 1 ; 2 uses
  %epil.iter1671.cmp.not = icmp eq i32 %epil.iter1671.next, %xtraiter1670
  br i1 %epil.iter1671.cmp.not, label %.critedge, label %.lr.ph831.epil, !llvm.loop !407

.critedge:                                        ; preds = %.loopexit, %.critedge.loopexit.unr-lcssa, %.lr.ph831.epil, %.critedge.sink.split, %._crit_edge826.thread, %bb.ax, %bb.aw
  %.2572 = phi i32 [ 1, %.critedge.loopexit.unr-lcssa ], [ 1, %bb.ax ], [ 1, %._crit_edge826.thread ], [ 1, %bb.aw ], [ 0, %.critedge.sink.split ], [ 1, %.lr.ph831.epil ], [ 1, %.loopexit ]
  ret i32 %.2572
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad3iiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #16 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.h = mul nsw i32 %i.d, %2                     ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.j = add nsw i32 %i.h, %3
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.k) #36
  br label %_ZL21stbi__mad3sizes_validiiii.exit.thread

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mad3sizes_validiiii.exit, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %_ZL21stbi__mad3sizes_validiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad3sizes_validiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #17 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15

_ZL21stbi__mul2sizes_validii.exit.thread15:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit12.thread20, label %_ZL21stbi__mul2sizes_validii.exit12

_ZL21stbi__mul2sizes_validii.exit12:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit12.thread20

_ZL21stbi__mul2sizes_validii.exit12.thread20:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15, %bb.a, %_ZL21stbi__mul2sizes_validii.exit12.thread20, %_ZL21stbi__mul2sizes_validii.exit12, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit12 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ %i.k, %_ZL21stbi__mul2sizes_validii.exit12.thread20 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad2iii(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #16 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.f = add nsw i32 %i.d, %2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.g) #36
  br label %_ZL21stbi__mad2sizes_validiii.exit.thread

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mad2sizes_validiii.exit, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %_ZL21stbi__mad2sizes_validiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.b = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !23
  %i.g = load i8, ptr %i.b, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !201 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !21
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !23
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !20
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !201 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !21
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !21
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = zext i8 %.0.i6 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bo, %i.bm
  ret i32 %i.bp
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !23
  %i.g = load i8, ptr %i.b, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !201 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
end_hunk_7
begin_hunk_8_@stbi_load_16_from_memory:bb.a

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_16_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !14
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !472 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !26
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !28
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !23
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  %i.j = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !14
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !472 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !26
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !28
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !23
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !13     ; 4 uses
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ %4, %bb.b ]   ; 8 uses
  %i.f = or i32 %i.c, %i.b
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.e, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.e
  %i.h = udiv i32 2147483647, %i.c
  %.not37.i.i.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.e
  %i.i = mul nuw nsw i32 %i.c, %i.b               ; 8 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sgt i32 %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.f
  %i.m = mul nuw nsw i32 %i.e, %i.i               ; 2 uses
  %or.cond.i = icmp ugt i32 %i.m, 536870911
  br i1 %or.cond.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.n = shl nuw nsw i32 %i.m, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.o) #36 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #35
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.g:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.r = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %i.s = sext i1 %.not.i to i32
  %.0.i = add i32 %i.e, %i.s                      ; 5 uses
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.u = icmp sgt i32 %.0.i, 0
  %i.v = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.w = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.u, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.x = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.y = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod22 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv55.i, %i.x    ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.aa = add nsw i64 %indvars.iv.i, %i.z         ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fdiv float %i.ad, 2.550000e+02
  %i.af = tail call float @powf(float noundef %i.ae, float noundef %i.v) #35
  %i.ag = fmul float %i.w, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aa
  store float %i.ag, ptr %i.ah, align 4, !tbaa !473
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ai = add nsw i64 %indvars.iv.next.i, %i.z    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = tail call float @powf(float noundef %i.am, float noundef %i.v) #35
  %i.ao = fmul float %i.w, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ai
  store float %i.ao, ptr %i.ap, align 4, !tbaa !473
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !475

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.aq = add nsw i64 %indvars.iv.i.epil.init, %i.z ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26
  %i.at = uitofp i8 %i.as to float
  %i.au = fdiv float %i.at, 2.550000e+02
  %i.av = tail call float @powf(float noundef %i.au, float noundef %i.v) #35
  %i.aw = fmul float %i.w, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aq
  store float %i.aw, ptr %i.ax, align 4, !tbaa !473
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !476

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.ay = sext i32 %i.e to i64                    ; 3 uses
  %i.az = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count63.i, 1
  %i.ba = icmp eq i32 %i.i, 1
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.1, %.lr.ph.i ]
  %i.bb = mul nuw nsw i64 %indvars.iv60.i, %i.ay
  %i.bc = add nsw i64 %i.bb, %i.az                ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26
  %i.bf = uitofp i8 %i.be to float
  %i.bg = fdiv float %i.bf, 2.550000e+02
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bc
  store float %i.bg, ptr %i.bh, align 4, !tbaa !473
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.bi = mul nuw nsw i64 %indvars.iv.next61.i, %i.ay
  %i.bj = add nsw i64 %i.bi, %i.az                ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fdiv float %i.bm, 2.550000e+02
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bj
  store float %i.bn, ptr %i.bo, align 4, !tbaa !473
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !477

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bp = mul nuw nsw i64 %indvars.iv60.i.epil.init, %i.ay
  %i.bq = add nsw i64 %i.bp, %i.az                ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fdiv float %i.bt, 2.550000e+02
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bq
  store float %i.bu, ptr %i.bv, align 4, !tbaa !473
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #35
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  store ptr @.str.2, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.p, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !14
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !472 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !26
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !28
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !14
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !23
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.k = call noundef i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !478 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8, !tbaa !21
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8, !tbaa !21
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8, !tbaa !26
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !28
  %i.z = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !14
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !29 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !21
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !26
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:bb.a
bb.t:                                             ; preds = %._crit_edge.us
  %i.ds = load ptr, ptr %0, align 8, !tbaa !503
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.ds(ptr noundef %i.dt, ptr noundef nonnull %i.aa, i32 noundef %i.do), !inline_history !515
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us

_ZL13stbiw__write1P19stbi__write_contexth.exit124.us: ; preds = %bb.t, %._crit_edge.us
  %i.du = phi i32 [ 0, %bb.t ], [ %i.do, %._crit_edge.us ] ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.y, align 8, !tbaa !506
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds i8, ptr %i.aa, i64 %i.dw
  store i8 %i.dn, ptr %i.dx, align 1, !tbaa !26
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 2, label %bb.w
    i32 1, label %bb.w
    i32 4, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !26
  %i.ec = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.ed = load i32, ptr %i.y, align 8, !tbaa !506 ; 3 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 3
  %i.eg = icmp ult i64 %i.ef, 65
  br i1 %i.eg, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %0, align 8, !tbaa !503
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.eh(ptr noundef %i.ei, ptr noundef nonnull %i.aa, i32 noundef %i.ed), !inline_history !516
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us: ; preds = %bb.v, %bb.u
  %i.ej = phi i32 [ 0, %bb.v ], [ %i.ed, %bb.u ]  ; 2 uses
  %i.ek = add nsw i32 %i.ej, 3
  store i32 %i.ek, ptr %i.y, align 8, !tbaa !506
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %i.aa, i64 %i.el ; 3 uses
  store i8 %i.dz, ptr %i.em, align 1, !tbaa !26
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.eb, ptr %i.en, align 1, !tbaa !26
  %i.eo = getelementptr i8, ptr %i.em, i64 2
  store i8 %i.ec, ptr %i.eo, align 1, !tbaa !26
  br label %bb.y

bb.w:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.ep = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.eq = load i32, ptr %i.y, align 8, !tbaa !506 ; 3 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = add nsw i64 %i.er, 1
  %i.et = icmp ult i64 %i.es, 65
  br i1 %i.et, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = load ptr, ptr %0, align 8, !tbaa !503
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.eu(ptr noundef %i.ev, ptr noundef nonnull %i.aa, i32 noundef %i.eq), !inline_history !517
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us: ; preds = %bb.x, %bb.w
  %i.ew = phi i32 [ 0, %bb.x ], [ %i.eq, %bb.w ]  ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.y, align 8, !tbaa !506
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds i8, ptr %i.aa, i64 %i.ey
  store i8 %i.ep, ptr %i.ez, align 1, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fa = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !26
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !506 ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, 1
  %i.fg = icmp ult i64 %i.ff, 65
  br i1 %i.fg, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %0, align 8, !tbaa !503
  %i.fi = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.fh(ptr noundef %i.fi, ptr noundef nonnull %i.aa, i32 noundef %i.fd), !inline_history !517
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us: ; preds = %bb.aa, %bb.z
  %i.fj = phi i32 [ 0, %bb.aa ], [ %i.fd, %bb.z ] ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !506
  %i.fl = sext i32 %i.fj to i64
  %i.fm = getelementptr inbounds i8, ptr %i.aa, i64 %i.fl
  store i8 %i.fc, ptr %i.fm, align 1, !tbaa !26
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, %bb.y, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us ], [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us ], [ %.3.ph.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us ]
  %i.fn = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %1
  br i1 %i.fo, label %bb.e, label %._crit_edge163.us, !llvm.loop !520

._crit_edge163.us:                                ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %.0104 ; 2 uses
  %i.fp = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fp
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us, !llvm.loop !521

._crit_edge168:                                   ; preds = %._crit_edge163.us, %.lr.ph167, %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !506 ; 2 uses
  %.not.i142 = icmp eq i32 %i.fr, 0
  br i1 %.not.i142, label %_ZL18stbiw__write_flushP19stbi__write_context.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fs = load ptr, ptr %0, align 8, !tbaa !503
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !505
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fr), !inline_history !522
  store i32 0, ptr %i.fq, align 8, !tbaa !506
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit

_ZL18stbiw__write_flushP19stbi__write_context.exit: ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 2 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !503
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !505
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 10 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %i.f = alloca [128 x i8], align 16              ; 4 uses
  %i.g = alloca [66 x i8], align 16               ; 4 uses
  %i.h = icmp slt i32 %1, 1
  %i.i = icmp slt i32 %0, 1
  %or.cond = or i1 %i.i, %i.h
  %i.j = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.j
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i32 %0, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #36 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.g, ptr noundef nonnull align 16 dereferenceable(66) @__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 65)
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %1, i32 noundef %0) #35
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.f, i32 noundef %i.n)
  %i.o = mul nsw i32 %2, %0                       ; 3 uses
  %i.p = lshr i32 %0, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.s = trunc i32 %0 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.u, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.v = shl nuw i32 %0, 1                        ; 3 uses
  %i.w = mul i32 %0, 3                            ; 3 uses
  %i.x = zext nneg i32 %0 to i64                  ; 14 uses
  %i.y = zext i32 %i.v to i64                     ; 3 uses
  %i.z = zext i32 %i.w to i64                     ; 3 uses
  %i.aa = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 4 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 4 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 4 uses
  %i.ab = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.x, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %bb.b
  %i.af = sub nsw i64 %i.y, %i.x                  ; 2 uses
  %i.ag = sub nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ah = sub nsw i64 %i.z, %i.y                  ; 2 uses
  %ident.check.not = icmp eq i32 %2, 1            ; 2 uses
  %i.ai = add nsw i32 %0, -1
  %diff.check61 = icmp ult i32 %i.ai, 3
  %i.aj = add nsw i32 %i.v, -1
  %diff.check62 = icmp ult i32 %i.aj, 3
  %conflict.rdx63 = or i1 %diff.check61, %diff.check62
  %i.ak = add nsw i32 %i.w, -1
  %diff.check64 = icmp ult i32 %i.ak, 3
  %conflict.rdx65 = or i1 %conflict.rdx63, %diff.check64
  %i.al = add nsw i64 %i.af, -1
  %diff.check66 = icmp ult i64 %i.al, 3
  %conflict.rdx67 = or i1 %conflict.rdx65, %diff.check66
  %i.am = add nsw i64 %i.ag, -1
  %diff.check68 = icmp ult i64 %i.am, 3
  %conflict.rdx69 = or i1 %conflict.rdx67, %diff.check68
  %i.an = add nsw i64 %i.ah, -1
  %diff.check70 = icmp ult i64 %i.an, 3
  %conflict.rdx71 = or i1 %conflict.rdx69, %diff.check70
  %n.vec74 = and i64 %i.x, 32764                  ; 3 uses
  %cmp.n82 = icmp eq i64 %n.vec74, %i.x
  %i.ao = add nsw i32 %0, -1
  %diff.check = icmp ult i32 %i.ao, 3
  %i.ap = add nsw i32 %i.v, -1
  %diff.check44 = icmp ult i32 %i.ap, 3
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %i.aq = add nsw i32 %i.w, -1
  %diff.check45 = icmp ult i32 %i.aq, 3
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %i.ar = add nsw i64 %i.af, -1
  %diff.check47 = icmp ult i64 %i.ar, 3
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %i.as = add nsw i64 %i.ag, -1
  %diff.check49 = icmp ult i64 %i.as, 3
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.at = add nsw i64 %i.ah, -1
  %diff.check51 = icmp ult i64 %i.at, 3
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %n.vec = and i64 %i.x, 32764                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bz, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.au = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !13
  %.not.us.us = icmp eq i32 %i.au, 0
  %i.av = xor i32 %.06.us.us, -1
  %i.aw = add nsw i32 %1, %i.av
  %i.ax = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aw
  %i.ay = mul nsw i32 %i.o, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.aa
  %i.bc = getelementptr [4 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !473 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !473 ; 3 uses
  %i.bh = load float, ptr %i.bc, align 4, !tbaa !473 ; 3 uses
  %i.bi = fcmp ogt float %i.bg, %i.be
  %..i.i.us.us.us = select i1 %i.bi, float %i.bg, float %i.be ; 2 uses
  %i.bj = fcmp ogt float %i.bh, %..i.i.us.us.us
  %i.bk = select i1 %i.bj, float %i.bh, float %..i.i.us.us.us ; 3 uses
  %i.bl = fcmp olt float %i.bk, 1.000000e-32
  br i1 %i.bl, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = call { float, i32 } @llvm.frexp.f32.i32(float %i.bk) ; 2 uses
  %i.bn = extractvalue { float, i32 } %i.bm, 1
  %i.bo = extractvalue { float, i32 } %i.bm, 0
  %i.bp = fmul float %i.bo, 2.560000e+02
  %i.bq = fdiv float %i.bp, %i.bk                 ; 3 uses
  %i.br = fmul float %i.bh, %i.bq
  %i.bs = fptoui float %i.br to i8
  %i.bt = fmul float %i.bg, %i.bq
  %i.bu = fptoui float %i.bt to i8
  %i.bv = fmul float %i.be, %i.bq
  %i.bw = fptoui float %i.bv to i8
  %i.bx = trunc i32 %i.bn to i8
  %i.by = xor i8 %i.bx, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us:   ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bu, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bs, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.by, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bw, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !26
  store i8 %.sink.i.us.us.us, ptr %i.e, align 1, !tbaa !26
  store i8 %.sink32.i.i.us.us.us, ptr %i.ac, align 1, !tbaa !26
  store i8 %.sink.i.i.us.us.us, ptr %i.ad, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !523
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.x
  br i1 %exitcond187.not.i.us.us.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us, label %bb.c, !llvm.loop !524

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.bz = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us, !llvm.loop !525

.preheader.i.us:                                  ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cu, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.ca = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !13
  %.not.us = icmp eq i32 %i.ca, 0
  %i.cb = xor i32 %.06.us, -1
  %i.cc = add nsw i32 %1, %i.cb
  %i.cd = select i1 %.not.us, i32 %.06.us, i32 %i.cc
  %i.ce = mul nsw i32 %i.o, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us ] ; 2 uses
  %i.ch = mul nsw i64 %indvars.iv183.i.us, %i.aa
  %i.ci = getelementptr [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !473 ; 4 uses
  %i.ck = fcmp olt float %i.cj, 1.000000e-32
  br i1 %i.ck, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = call { float, i32 } @llvm.frexp.f32.i32(float %i.cj) ; 2 uses
  %i.cm = extractvalue { float, i32 } %i.cl, 1
  %i.cn = extractvalue { float, i32 } %i.cl, 0
  %i.co = fmul float %i.cn, 2.560000e+02
  %i.cp = fdiv float %i.co, %i.cj
  %i.cq = fmul float %i.cj, %i.cp
  %i.cr = fptoui float %i.cq to i8
  %i.cs = trunc i32 %i.cm to i8
  %i.ct = xor i8 %i.cs, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us:         ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cr, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ct, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ae, align 1, !tbaa !26
  store i8 %.sink18, ptr %i.e, align 1, !tbaa !26
  store i8 %.sink32.i.i.us, ptr %i.ac, align 1, !tbaa !26
  store i8 %.sink18, ptr %i.ad, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !523
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.x
  br i1 %exitcond187.not.i.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, label %bb.e, !llvm.loop !524

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.cu = add nuw nsw i32 %.06.us, 1              ; 2 uses
end_hunk_9
