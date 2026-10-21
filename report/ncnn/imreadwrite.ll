Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.jp = load ptr, ptr %i.hf, align 8, !tbaa !37 ; 2 uses
  store ptr %i.jp, ptr %i.h, align 8, !tbaa !36
  br i1 %.not, label %bb.bw, label %bb.hb

bb.bw:                                            ; preds = %_ZL14stbi__bmp_testP13stbi__context.exit.thread85, %_ZL14stbi__bmp_testP13stbi__context.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
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
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.bz:                                            ; preds = %bb.bx
  %i.jy = load i32, ptr %0, align 8, !tbaa !51
  %i.jz = icmp ugt i32 %i.jy, 16777216
  br i1 %i.jz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !58 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !59 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !60 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !61 ; 7 uses
  %i.ki = load i32, ptr %i.jq, align 4, !tbaa !57 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !62 ; 4 uses
  %i.kl = icmp eq i32 %i.kk, 12                   ; 3 uses
  %i.km = load i32, ptr %7, align 4, !tbaa !63    ; 4 uses
  br i1 %i.kl, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.kn = icmp slt i32 %i.km, 24
  br i1 %i.kn, label %bb.cd, label %.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !64 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !65
  %i.ks = add i32 %i.kp, -24
  %i.kt = sub i32 %i.ks, %i.kr
  %i.ku = sdiv i32 %i.kt, 3
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.kv = icmp slt i32 %i.km, 16
  br i1 %i.kv, label %bb.cf, label %.thread.i

bb.cf:                                            ; preds = %bb.ce
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !65
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
  %i.lg = load i32, ptr %i.o, align 8, !tbaa !31
  %i.lh = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = add nsw i32 %i.lg, %i.lm                ; 3 uses
  %i.lo = add i32 %i.ln, -1025
  %or.cond378.i = icmp ult i32 %i.lo, -1024
  br i1 %or.cond378.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread.i
  store ptr @.str.30, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ci:                                            ; preds = %.thread.i
  %i.lp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !64 ; 4 uses
  %i.lr = icmp slt i32 %i.lq, %i.ln
  br i1 %i.lr, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ls = sub nsw i32 %i.lq, %i.ln                ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 1024
  br i1 %i.lt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store ptr @.str.31, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
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
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
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
  %9 = sext i32 %i.mr to i64
  %i.ms = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %9) #37 ; 30 uses
  %.not369.i = icmp eq ptr %i.ms, null
  br i1 %.not369.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %bb.cr

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cr:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.mt = icmp slt i32 %i.mc, 16
  br i1 %i.mt, label %bb.cs, label %bb.fg

bb.cs:                                            ; preds = %bb.cr
  %i.mu = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.mb, %i.mu
  br i1 %or.cond7.i, label %bb.ct, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cs
  %i.mv = icmp sgt i32 %.03322241.i, 0
  br i1 %i.mv, label %.lr.ph66.i, label %._crit_edge.i48

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !33 ; 2 uses
  %.pre116.i = load ptr, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call void @free(ptr noundef nonnull %i.ms) #36
  store ptr @.str.32, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cu:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit402.i, %.lr.ph66.i
  %i.mw = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qp, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.mx = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qq, %_ZL10stbi__get8P13stbi__context.exit402.i ]
  %i.my = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qr, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 3 uses
  %i.mz = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qs, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.na = icmp ult ptr %i.mz, %i.my
  br i1 %i.na, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 1 ; 3 uses
  store ptr %i.nb, ptr %i.g, align 8, !tbaa !33
  %i.nc = load i8, ptr %i.mz, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.nd = load i32, ptr %i.i, align 8, !tbaa !30
  %.not.i383.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i383.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ne = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.nf = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.ng = load i32, ptr %i.m, align 4, !tbaa !29
  %i.nh = tail call noundef i32 %i.ne(ptr noundef %i.nf, ptr noundef nonnull %i.l, i32 noundef %i.ng), !inline_history !134 ; 2 uses
  %i.ni = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.nj = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = trunc i64 %i.nm to i32
  %i.no = load i32, ptr %i.o, align 8, !tbaa !31
  %i.np = add nsw i32 %i.no, %i.nn
  store i32 %i.np, ptr %i.o, align 8, !tbaa !31
  %i.nq = icmp eq i32 %i.nh, 0
  br i1 %i.nq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.nr = sext i32 %i.nh to i64
  %i.ns = getelementptr inbounds i8, ptr %i.l, i64 %i.nr
  %.pre.i.i49 = load i8, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.cz, %bb.cy
  %i.nt = phi i8 [ 0, %bb.cy ], [ %.pre.i.i49, %bb.cz ]
  %.sink.i.i.i = phi ptr [ %i.p, %bb.cy ], [ %i.ns, %bb.cz ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.h, align 8, !tbaa !36
  store ptr %i.p, ptr %i.g, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.cw, %bb.cv
  %i.nu = phi ptr [ %i.mw, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mw, %bb.cw ] ; 2 uses
  %i.nv = phi ptr [ %i.nb, %bb.cv ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mx, %bb.cw ]
  %i.nw = phi ptr [ %i.my, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.my, %bb.cw ] ; 3 uses
  %i.nx = phi ptr [ %i.nb, %bb.cv ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mz, %bb.cw ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.nc, %bb.cv ], [ %i.nt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.cw ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  store i8 %.0.i384.i, ptr %i.nz, align 2, !tbaa !35
  %i.oa = icmp ult ptr %i.nx, %i.nw
  br i1 %i.oa, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 3 uses
  store ptr %i.ob, ptr %i.g, align 8, !tbaa !33
  %i.oc = load i8, ptr %i.nx, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

bb.db:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.od = load i32, ptr %i.i, align 8, !tbaa !30
  %.not.i385.i = icmp eq i32 %i.od, 0
  br i1 %.not.i385.i, label %_ZL10stbi__get8P13stbi__context.exit390.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oe = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.of = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.og = load i32, ptr %i.m, align 4, !tbaa !29
  %i.oh = tail call noundef i32 %i.oe(ptr noundef %i.of, ptr noundef nonnull %i.l, i32 noundef %i.og), !inline_history !134 ; 2 uses
  %i.oi = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.oj = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = trunc i64 %i.om to i32
  %i.oo = load i32, ptr %i.o, align 8, !tbaa !31
  %i.op = add nsw i32 %i.oo, %i.on
  store i32 %i.op, ptr %i.o, align 8, !tbaa !31
  %i.oq = icmp eq i32 %i.oh, 0
  br i1 %i.oq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

bb.de:                                            ; preds = %bb.dc
  %i.or = sext i32 %i.oh to i64
  %i.os = getelementptr inbounds i8, ptr %i.l, i64 %i.or
  %.pre.i386.i = load i8, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i: ; preds = %bb.de, %bb.dd
  %i.ot = phi i8 [ 0, %bb.dd ], [ %.pre.i386.i, %bb.de ]
  %.sink.i.i388.i = phi ptr [ %i.p, %bb.dd ], [ %i.os, %bb.de ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.h, align 8, !tbaa !36
  store ptr %i.p, ptr %i.g, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

_ZL10stbi__get8P13stbi__context.exit390.i:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i, %bb.db, %bb.da
  %i.ou = phi ptr [ %i.nu, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nu, %bb.db ] ; 2 uses
  %i.ov = phi ptr [ %i.ob, %bb.da ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nv, %bb.db ]
  %i.ow = phi ptr [ %i.nw, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nw, %bb.db ] ; 3 uses
  %i.ox = phi ptr [ %i.ob, %bb.da ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nx, %bb.db ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.oc, %bb.da ], [ %i.ot, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ 0, %bb.db ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store i8 %.0.i389.i, ptr %i.oy, align 1, !tbaa !35
  %i.oz = icmp ult ptr %i.ox, %i.ow
  br i1 %i.oz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 1 ; 3 uses
  store ptr %i.pa, ptr %i.g, align 8, !tbaa !33
  %i.pb = load i8, ptr %i.ox, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit396.i

bb.dg:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.pc = load i32, ptr %i.i, align 8, !tbaa !30
  %.not.i391.i = icmp eq i32 %i.pc, 0
  br i1 %.not.i391.i, label %_ZL10stbi__get8P13stbi__context.exit396.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pd = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.pe = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.pf = load i32, ptr %i.m, align 4, !tbaa !29
  %i.pg = tail call noundef i32 %i.pd(ptr noundef %i.pe, ptr noundef nonnull %i.l, i32 noundef %i.pf), !inline_history !134 ; 2 uses
  %i.ph = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.pi = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = trunc i64 %i.pl to i32
  %i.pn = load i32, ptr %i.o, align 8, !tbaa !31
  %i.po = add nsw i32 %i.pn, %i.pm
  store i32 %i.po, ptr %i.o, align 8, !tbaa !31
  %i.pp = icmp eq i32 %i.pg, 0
  br i1 %i.pp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

bb.dj:                                            ; preds = %bb.dh
  %i.pq = sext i32 %i.pg to i64
  %i.pr = getelementptr inbounds i8, ptr %i.l, i64 %i.pq
  %.pre.i392.i = load i8, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i: ; preds = %bb.dj, %bb.di
  %i.ps = phi i8 [ 0, %bb.di ], [ %.pre.i392.i, %bb.dj ]
  %.sink.i.i394.i = phi ptr [ %i.p, %bb.di ], [ %i.pr, %bb.dj ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.h, align 8, !tbaa !36
  store ptr %i.p, ptr %i.g, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %.not28.i.i303.i.i = icmp eq ptr %i.cae, null
  br i1 %.not28.i.i303.i.i, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @free(ptr noundef nonnull %i.cae) #36
  store ptr null, ptr %i.cad, align 8, !tbaa !99
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bzz, i64 80
  store ptr null, ptr %i.caf, align 8, !tbaa !95
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzz, i64 72 ; 2 uses
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !100 ; 2 uses
  %.not29.i.i304.i.i = icmp eq ptr %i.cah, null
  br i1 %.not29.i.i304.i.i, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @free(ptr noundef nonnull %i.cah) #36
  store ptr null, ptr %i.cag, align 8, !tbaa !100
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %indvars.iv.next.i.i305.i.i = add nuw nsw i64 %indvars.iv.i.i301.i.i, 1 ; 2 uses
  %exitcond.not.i.i306.i.i = icmp eq i64 %indvars.iv.next.i.i305.i.i, %wide.trip.count.i.i300.i.i
  br i1 %exitcond.not.i.i306.i.i, label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i, label %bb.nx, !llvm.loop !4

bb.oe:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.cai = load i32, ptr %.pre.i.i57, align 8, !tbaa !51 ; 6 uses
  %i.caj = add i32 %i.cai, 3
  %i.cak = zext i32 %i.caj to i64
  %i.cal = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18056
  %i.cam = add i32 %i.cai, -1
  %wide.trip.count.i.i = zext nneg i32 %..i.i to i64 ; 2 uses
  br label %bb.of

bb.of:                                            ; preds = %.thread341.i.i, %bb.oe
  %indvars.iv.i.i = phi i64 [ 0, %bb.oe ], [ %indvars.iv.next.i.i, %.thread341.i.i ] ; 3 uses
  %i.can = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i.i ; 7 uses
  %i.cao = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.cak) #37 ; 2 uses
  %i.cap = getelementptr inbounds nuw [96 x i8], ptr %i.ans, i64 %indvars.iv.i.i ; 3 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 72
  store ptr %i.cao, ptr %i.caq, align 8, !tbaa !100
  %.not292.not.i.i = icmp eq ptr %i.cao, null
  br i1 %.not292.not.i.i, label %bb.og, label %bb.oo

bb.og:                                            ; preds = %bb.of
  %i.car = icmp sgt i32 %i.bzj, 0
  br i1 %i.car, label %.lr.ph.i.i308.i.i, label %.thread342.i.i

.thread342.i.i:                                   ; preds = %bb.og
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.qe

.lr.ph.i.i308.i.i:                                ; preds = %bb.og
  %wide.trip.count.i.i309.i.i = zext nneg i32 %i.bzj to i64
  br label %bb.oh

bb.oh:                                            ; preds = %bb.on, %.lr.ph.i.i308.i.i
  %indvars.iv.i.i310.i.i = phi i64 [ 0, %.lr.ph.i.i308.i.i ], [ %indvars.iv.next.i.i314.i.i, %bb.on ] ; 2 uses
  %i.cas = getelementptr inbounds nuw [96 x i8], ptr %i.ans, i64 %indvars.iv.i.i310.i.i ; 5 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 56
  %i.cau = load ptr, ptr %i.cat, align 8, !tbaa !98 ; 2 uses
  %.not.i.i311.i.i = icmp eq ptr %i.cau, null
  br i1 %.not.i.i311.i.i, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @free(ptr noundef nonnull %i.cau) #36
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cas, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cav, i8 0, i64 16, i1 false)
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cas, i64 64 ; 2 uses
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !99 ; 2 uses
  %.not28.i.i312.i.i = icmp eq ptr %i.cax, null
  br i1 %.not28.i.i312.i.i, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @free(ptr noundef nonnull %i.cax) #36
  store ptr null, ptr %i.caw, align 8, !tbaa !99
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cas, i64 80
  store ptr null, ptr %i.cay, align 8, !tbaa !95
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cas, i64 72 ; 2 uses
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !100 ; 2 uses
  %.not29.i.i313.i.i = icmp eq ptr %i.cba, null
  br i1 %.not29.i.i313.i.i, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  call void @free(ptr noundef nonnull %i.cba) #36
  store ptr null, ptr %i.caz, align 8, !tbaa !100
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %indvars.iv.next.i.i314.i.i = add nuw nsw i64 %indvars.iv.i.i310.i.i, 1 ; 2 uses
  %exitcond.not.i.i315.i.i = icmp eq i64 %indvars.iv.next.i.i314.i.i, %wide.trip.count.i.i309.i.i
  br i1 %exitcond.not.i.i315.i.i, label %bb.os, label %bb.oh, !llvm.loop !4

bb.oo:                                            ; preds = %bb.of
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cap, i64 4
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.can, i64 24
  %i.cbd = load <2 x i32>, ptr %i.cal, align 8, !tbaa !23
  %i.cbe = load <2 x i32>, ptr %i.cbb, align 4, !tbaa !23
  %i.cbf = sdiv <2 x i32> %i.cbd, %i.cbe          ; 3 uses
  store <2 x i32> %i.cbf, ptr %i.cbc, align 8, !tbaa !23
  %i.cbg = extractelement <2 x i32> %i.cbf, i64 1 ; 4 uses
  %i.cbh = ashr i32 %i.cbg, 1
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.can, i64 36
  store i32 %i.cbh, ptr %i.cbi, align 4, !tbaa !218
  %i.cbj = extractelement <2 x i32> %i.cbf, i64 0 ; 3 uses
  %i.cbk = add i32 %i.cam, %i.cbj
  %i.cbl = udiv i32 %i.cbk, %i.cbj
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.can, i64 32
  store i32 %i.cbl, ptr %i.cbm, align 16, !tbaa !219
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.can, i64 40
  store i32 0, ptr %i.cbn, align 8, !tbaa !220
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cap, i64 48
  %i.cbp = load ptr, ptr %i.cbo, align 8, !tbaa !88 ; 2 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.can, i64 16
  store ptr %i.cbp, ptr %i.cbq, align 16, !tbaa !221
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.can, i64 8
  store ptr %i.cbp, ptr %i.cbr, align 8, !tbaa !222
  switch i32 %i.cbj, label %.thread340.i.i [
    i32 1, label %bb.op
    i32 2, label %bb.oq
  ]

bb.op:                                            ; preds = %bb.oo
  %switch.selectcmp.i.i = icmp eq i32 %i.cbg, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @_ZL22stbi__resample_row_v_2PhS_S_ii, ptr @_ZL26stbi__resample_row_genericPhS_S_ii
  %switch.selectcmp743.i.i = icmp eq i32 %i.cbg, 1
  %switch.select744.i.i = select i1 %switch.selectcmp743.i.i, ptr @_ZL14resample_row_1PhS_S_ii, ptr %switch.select.i.i
  br label %.thread341.i.i

bb.oq:                                            ; preds = %bb.oo
  switch i32 %i.cbg, label %.thread340.i.i [
    i32 1, label %.thread341.i.i
    i32 2, label %bb.or
  ]

bb.or:                                            ; preds = %bb.oq
  %i.cbs = load ptr, ptr %i.anq, align 8, !tbaa !208
  br label %.thread341.i.i

.thread340.i.i:                                   ; preds = %bb.oq, %bb.oo
  br label %.thread341.i.i

bb.os:                                            ; preds = %bb.on
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.qe

.thread341.i.i:                                   ; preds = %.thread340.i.i, %bb.or, %bb.oq, %bb.op
  %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i = phi ptr [ %switch.select744.i.i, %bb.op ], [ %i.cbs, %bb.or ], [ @_ZL26stbi__resample_row_genericPhS_S_ii, %.thread340.i.i ], [ @_ZL22stbi__resample_row_h_2PhS_S_ii, %bb.oq ]
  store ptr %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i, ptr %i.can, align 16, !tbaa !223
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.ot, label %bb.of, !llvm.loop !186

bb.ot:                                            ; preds = %.thread341.i.i
  %i.cbt = getelementptr inbounds nuw i8, ptr %.pre.i.i57, i64 4
  %i.cbu = load i32, ptr %i.cbt, align 4, !tbaa !52 ; 4 uses
  %i.cbv = or i32 %i.cai, %i.bzl
  %or.cond.not.i.i.i.i.i = icmp sgt i32 %i.cbv, -1
  br i1 %or.cond.not.i.i.i.i.i, label %bb.ou, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ou:                                            ; preds = %bb.ot
  %i.cbw = icmp eq i32 %i.cai, 0
  br i1 %i.cbw, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i:        ; preds = %bb.ou
  %i.cbx = udiv i32 2147483647, %i.cai
  %.not23.i.i.i.i = icmp sgt i32 %i.bzl, %i.cbx
  br i1 %.not23.i.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.ou
  %i.cby = mul nuw nsw i32 %i.cai, %i.bzl         ; 3 uses
  %i.cbz = or i32 %i.cbu, %i.cby
  %or.cond.not.i10.i.i.i.i = icmp sgt i32 %i.cbz, -1
  br i1 %or.cond.not.i10.i.i.i.i, label %bb.ov, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ov:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i
  %i.cca = icmp eq i32 %i.cbu, 0                  ; 2 uses
  br i1 %i.cca, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i:      ; preds = %bb.ov
  %i.ccb = udiv i32 2147483647, %i.cbu
  %.not.i.i317.i.i = icmp sgt i32 %i.cby, %i.ccb
  br i1 %.not.i.i317.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i

_ZL21stbi__mad3sizes_validiiii.exit.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %bb.ov
  %i.ccc = mul nuw nsw i32 %i.cbu, %i.cby         ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ccc, 2147483647
  br i1 %.not9.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i:              ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i
  %i.ccd = add nsw i32 %i.ccc, 1
  %10 = sext i32 %i.ccd to i64
  %i.cce = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %10) #37 ; 4 uses
  %.not286.i.i = icmp eq ptr %i.cce, null
  br i1 %.not286.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %.preheader364.i.i

.preheader364.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i
  br i1 %i.cca, label %._crit_edge444.i.i, label %.lr.ph443.i.i

.lr.ph443.i.i:                                    ; preds = %.preheader364.i.i
  %i.ccf = getelementptr inbounds nuw i8, ptr %calloc.i51, i64 18508 ; 2 uses
  %i.ccg = icmp eq i32 %i.bzl, 1                  ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.cci = zext nneg i32 %i.bzl to i64            ; 6 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph.preheader.i.i

_ZL17stbi__malloc_mad3iiii.exit.thread.i.i:       ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.ot
  %i.ccl = icmp sgt i32 %i.bzj, 0
  br i1 %i.ccl, label %.lr.ph.i.i318.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i

.lr.ph.i.i318.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  %wide.trip.count.i.i319.i.i = zext nneg i32 %i.bzj to i64
  br label %bb.ow

bb.ow:                                            ; preds = %bb.pc, %.lr.ph.i.i318.i.i
  %indvars.iv.i.i320.i.i = phi i64 [ 0, %.lr.ph.i.i318.i.i ], [ %indvars.iv.next.i.i324.i.i, %bb.pc ] ; 2 uses
  %i.ccm = getelementptr inbounds nuw [96 x i8], ptr %i.ans, i64 %indvars.iv.i.i320.i.i ; 5 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 56
  %i.cco = load ptr, ptr %i.ccn, align 8, !tbaa !98 ; 2 uses
  %.not.i.i321.i.i = icmp eq ptr %i.cco, null
  br i1 %.not.i.i321.i.i, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @free(ptr noundef nonnull %i.cco) #36
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.ccm, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccp, i8 0, i64 16, i1 false)
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccm, i64 64 ; 2 uses
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !99 ; 2 uses
  %.not28.i.i322.i.i = icmp eq ptr %i.ccr, null
  br i1 %.not28.i.i322.i.i, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @free(ptr noundef nonnull %i.ccr) #36
  store ptr null, ptr %i.ccq, align 8, !tbaa !99
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccm, i64 80
  store ptr null, ptr %i.ccs, align 8, !tbaa !95
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccm, i64 72 ; 2 uses
  %i.ccu = load ptr, ptr %i.cct, align 8, !tbaa !100 ; 2 uses
  %.not29.i.i323.i.i = icmp eq ptr %i.ccu, null
  br i1 %.not29.i.i323.i.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  call void @free(ptr noundef nonnull %i.ccu) #36
  store ptr null, ptr %i.cct, align 8, !tbaa !100
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %indvars.iv.next.i.i324.i.i = add nuw nsw i64 %indvars.iv.i.i320.i.i, 1 ; 2 uses
  %exitcond.not.i.i325.i.i = icmp eq i64 %indvars.iv.next.i.i324.i.i, %wide.trip.count.i.i319.i.i
  br i1 %exitcond.not.i.i325.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i, label %bb.ow, !llvm.loop !4

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i: ; preds = %bb.pc, %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.qe

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i.i, %.lr.ph443.i.i
  %i.ccv = phi ptr [ %.pre.i.i57, %.lr.ph443.i.i ], [ %i.cnz, %.loopexit.i.i ]
  %.0264442.i.i = phi i32 [ 0, %.lr.ph443.i.i ], [ %i.coa, %.loopexit.i.i ] ; 2 uses
  %i.ccw = load i32, ptr %i.ccv, align 8, !tbaa !51
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.pf, %.lr.ph.preheader.i.i
  %indvars.iv510.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next511.i.i, %bb.pf ] ; 4 uses
  %i.ccx = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv510.i.i ; 8 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 36 ; 3 uses
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !218 ; 2 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccx, i64 28
  %i.cdb = load i32, ptr %i.cda, align 4, !tbaa !224 ; 2 uses
  %i.cdc = ashr i32 %i.cdb, 1
  %.not289.i.i = icmp slt i32 %i.ccz, %i.cdc      ; 2 uses
  %i.cdd = load ptr, ptr %i.ccx, align 16, !tbaa !223
  %i.cde = getelementptr inbounds nuw [96 x i8], ptr %i.ans, i64 %indvars.iv510.i.i ; 3 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 72
  %i.cdg = load ptr, ptr %i.cdf, align 8, !tbaa !100
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.ccx, i64 16 ; 4 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccx, i64 8 ; 3 uses
  %.in.i.i = select i1 %.not289.i.i, ptr %i.cdi, ptr %i.cdh
  %i.cdj = load ptr, ptr %.in.i.i, align 8, !tbaa !22
  %.in290.i.i = select i1 %.not289.i.i, ptr %i.cdh, ptr %i.cdi
  %i.cdk = load ptr, ptr %.in290.i.i, align 8, !tbaa !22
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.ccx, i64 32
  %i.cdm = load i32, ptr %i.cdl, align 16, !tbaa !219
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.ccx, i64 24
  %i.cdo = load i32, ptr %i.cdn, align 8, !tbaa !225
  %i.cdp = call noundef ptr %i.cdd(ptr noundef %i.cdg, ptr noundef %i.cdj, ptr noundef %i.cdk, i32 noundef %i.cdm, i32 noundef %i.cdo), !inline_history !187
  %i.cdq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv510.i.i
  store ptr %i.cdp, ptr %i.cdq, align 8, !tbaa !22
  %i.cdr = add nsw i32 %i.ccz, 1                  ; 2 uses
  store i32 %i.cdr, ptr %i.ccy, align 4, !tbaa !218
  %.not291.i.i = icmp slt i32 %i.cdr, %i.cdb
  br i1 %.not291.i.i, label %bb.pf, label %bb.pd

bb.pd:                                            ; preds = %.lr.ph.i.i
  store i32 0, ptr %i.ccy, align 4, !tbaa !218
  %i.cds = load ptr, ptr %i.cdh, align 16, !tbaa !221 ; 2 uses
  store ptr %i.cds, ptr %i.cdi, align 8, !tbaa !222
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.ccx, i64 40 ; 2 uses
  %i.cdu = load i32, ptr %i.cdt, align 8, !tbaa !220
  %i.cdv = add nsw i32 %i.cdu, 1                  ; 2 uses
  store i32 %i.cdv, ptr %i.cdt, align 8, !tbaa !220
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cde, i64 32
  %i.cdx = load i32, ptr %i.cdw, align 8, !tbaa !86
  %i.cdy = icmp slt i32 %i.cdv, %i.cdx
  br i1 %i.cdy, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cde, i64 36
  %i.cea = load i32, ptr %i.cdz, align 4, !tbaa !89
  %i.ceb = sext i32 %i.cea to i64
  %i.cec = getelementptr inbounds i8, ptr %i.cds, i64 %i.ceb
  store ptr %i.cec, ptr %i.cdh, align 16, !tbaa !221
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %.lr.ph.i.i
  %indvars.iv.next511.i.i = add nuw nsw i64 %indvars.iv510.i.i, 1 ; 2 uses
  %exitcond514.not.i.i = icmp eq i64 %indvars.iv.next511.i.i, %wide.trip.count.i.i
  br i1 %exitcond514.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !188

._crit_edge.i.i:                                  ; preds = %bb.pf
  %i.ced = mul i32 %.0264442.i.i, %i.bzl
  %i.cee = mul i32 %i.ced, %i.ccw
  %i.cef = zext i32 %i.cee to i64
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cce, i64 %i.cef ; 12 uses
  br i1 %i.bzw, label %bb.pg, label %bb.pn

bb.pg:                                            ; preds = %._crit_edge.i.i
  %i.ceh = load ptr, ptr %i.c, align 16, !tbaa !22 ; 5 uses
  %i.cei = load ptr, ptr %calloc.i51, align 8, !tbaa !70 ; 15 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cei, i64 8
  %i.cek = load i32, ptr %i.cej, align 8, !tbaa !53
  switch i32 %i.cek, label %.preheader.i.i [
    i32 3, label %bb.ph
    i32 4, label %bb.pj
  ]

.preheader.i.i:                                   ; preds = %bb.pg
  %i.cel = load i32, ptr %i.cei, align 8, !tbaa !51
  %.not454.i.i = icmp eq i32 %i.cel, 0
  br i1 %.not454.i.i, label %.loopexit.i.i, label %.lr.ph441.i.i

bb.ph:                                            ; preds = %bb.pg
  br i1 %i.bzv, label %.preheader347.i.i, label %.loopexit.sink.split.i.i

.preheader347.i.i:                                ; preds = %bb.ph
  %i.cem = load i32, ptr %i.cei, align 8, !tbaa !51
  %.not453.i.i = icmp eq i32 %i.cem, 0
  br i1 %.not453.i.i, label %.loopexit.i.i, label %.lr.ph438.i.i

.lr.ph438.i.i:                                    ; preds = %.preheader347.i.i
  %i.cen = load ptr, ptr %i.ccj, align 8, !tbaa !22
  %i.ceo = load ptr, ptr %i.cck, align 16, !tbaa !22
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pi, %.lr.ph438.i.i
  %indvars.iv539.i.i = phi i64 [ 0, %.lr.ph438.i.i ], [ %indvars.iv.next540.i.i, %bb.pi ] ; 4 uses
  %.0260437.i.i = phi ptr [ %i.ceg, %.lr.ph438.i.i ], [ %i.cey, %bb.pi ] ; 5 uses
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceh, i64 %indvars.iv539.i.i
  %i.ceq = load i8, ptr %i.cep, align 1, !tbaa !35
  store i8 %i.ceq, ptr %.0260437.i.i, align 1, !tbaa !35
  %i.cer = getelementptr inbounds nuw i8, ptr %i.cen, i64 %indvars.iv539.i.i
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !35
  %i.cet = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 1
  store i8 %i.ces, ptr %i.cet, align 1, !tbaa !35
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.ceo, i64 %indvars.iv539.i.i
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !35
  %i.cew = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 2
  store i8 %i.cev, ptr %i.cew, align 1, !tbaa !35
  %i.cex = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 3
  store i8 -1, ptr %i.cex, align 1, !tbaa !35
  %i.cey = getelementptr inbounds nuw i8, ptr %.0260437.i.i, i64 %i.cci
  %indvars.iv.next540.i.i = add nuw nsw i64 %indvars.iv539.i.i, 1 ; 2 uses
  %i.cez = load i32, ptr %i.cei, align 8, !tbaa !51
  %i.cfa = zext i32 %i.cez to i64
  %i.cfb = icmp samesign ult i64 %indvars.iv.next540.i.i, %i.cfa
  br i1 %i.cfb, label %bb.pi, label %.loopexit.i.i, !llvm.loop !189

bb.pj:                                            ; preds = %bb.pg
  %i.cfc = load i32, ptr %i.ccf, align 4, !tbaa !71
  switch i32 %i.cfc, label %.loopexit.sink.split.i.i [
    i32 0, label %.preheader349.i.i
    i32 2, label %bb.pl
  ]

.preheader349.i.i:                                ; preds = %bb.pj
end_hunk_1
begin_hunk_2_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  br i1 %i.cpo, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %bb.qi
  store i32 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62

bb.qk:                                            ; preds = %bb.qi
  %i.cpp = sext i32 %i.cpf to i64
  %i.cpq = getelementptr inbounds i8, ptr %i.l, i64 %i.cpp
  %.pre.i.i61 = load i8, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62: ; preds = %bb.qk, %bb.qj
  %i.cpr = phi i8 [ 0, %bb.qj ], [ %.pre.i.i61, %bb.qk ]
  %.sink.i.i.i63 = phi ptr [ %i.p, %bb.qj ], [ %i.cpq, %bb.qk ] ; 2 uses
  store ptr %.sink.i.i.i63, ptr %i.h, align 8, !tbaa !36
  store ptr %i.p, ptr %i.g, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit.i64

_ZL10stbi__get8P13stbi__context.exit.i64:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62, %bb.qh, %bb.qg
  %i.cps = phi ptr [ %i.cox, %bb.qg ], [ %i.cph, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62 ], [ %i.cox, %bb.qh ] ; 2 uses
  %i.cpt = phi ptr [ %i.cow, %bb.qg ], [ %.sink.i.i.i63, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62 ], [ %i.cow, %bb.qh ]
  %i.cpu = phi ptr [ %i.coz, %bb.qg ], [ %i.p, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62 ], [ %i.cox, %bb.qh ] ; 3 uses
  %.0.i.i65 = phi i8 [ %i.cpa, %bb.qg ], [ %i.cpr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i62 ], [ 0, %bb.qh ]
  %i.cpv = icmp ult ptr %i.cpu, %i.cpt
  br i1 %i.cpv, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i64
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpu, i64 1
  store ptr %i.cpw, ptr %i.g, align 8, !tbaa !33
  %i.cpx = load i8, ptr %i.cpu, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit14.i

bb.qm:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i64
  %i.cpy = load i32, ptr %i.i, align 8, !tbaa !30
  %.not.i9.i = icmp eq i32 %i.cpy, 0
  br i1 %.not.i9.i, label %bb.ri, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.cpz = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.cqa = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.cqb = load i32, ptr %i.m, align 4, !tbaa !29
  %i.cqc = tail call noundef i32 %i.cpz(ptr noundef %i.cqa, ptr noundef nonnull %i.l, i32 noundef %i.cqb), !inline_history !200 ; 2 uses
  %i.cqd = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.cqe = load ptr, ptr %i.n, align 8, !tbaa !32 ; 2 uses
  %i.cqf = ptrtoint ptr %i.cqd to i64
  %i.cqg = ptrtoint ptr %i.cqe to i64
  %i.cqh = sub i64 %i.cqf, %i.cqg
  %i.cqi = trunc i64 %i.cqh to i32
  %i.cqj = load i32, ptr %i.o, align 8, !tbaa !31
  %i.cqk = add nsw i32 %i.cqj, %i.cqi
  store i32 %i.cqk, ptr %i.o, align 8, !tbaa !31
  %i.cql = icmp eq i32 %i.cqc, 0
  br i1 %i.cql, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  store i32 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i

bb.qp:                                            ; preds = %bb.qn
  %i.cqm = sext i32 %i.cqc to i64
  %i.cqn = getelementptr inbounds i8, ptr %i.l, i64 %i.cqm
  %.pre.i10.i = load i8, ptr %i.l, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i: ; preds = %bb.qp, %bb.qo
  %i.cqo = phi i8 [ 0, %bb.qo ], [ %.pre.i10.i, %bb.qp ]
  %.sink.i.i12.i = phi ptr [ %i.p, %bb.qo ], [ %i.cqn, %bb.qp ]
  store ptr %.sink.i.i12.i, ptr %i.h, align 8, !tbaa !36
  store ptr %i.p, ptr %i.g, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit14.i

_ZL10stbi__get8P13stbi__context.exit14.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i, %bb.ql
  %i.cqp = phi ptr [ %i.cps, %bb.ql ], [ %i.cqe, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i ]
  %.0.i13.i = phi i8 [ %i.cpx, %bb.ql ], [ %i.cqo, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11.i ]
  %.not.i66 = icmp ne i8 %.0.i.i65, 80
  %i.cqq = add i8 %.0.i13.i, -55
  %or.cond.i67 = icmp ult i8 %i.cqq, -2
  %or.cond8.i = or i1 %.not.i66, %or.cond.i67
  br i1 %or.cond8.i, label %bb.ri, label %_ZL14stbi__pnm_testP13stbi__context.exit

_ZL14stbi__pnm_testP13stbi__context.exit:         ; preds = %_ZL10stbi__get8P13stbi__context.exit14.i
  %i.cqr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.cqs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cqt = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.cqr, ptr noundef nonnull %i.cqs) ; 2 uses
  store i32 %i.cqt, ptr %5, align 4, !tbaa !39
  %i.cqu = icmp eq i32 %i.cqt, 0
  br i1 %i.cqu, label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.qq

bb.qq:                                            ; preds = %_ZL14stbi__pnm_testP13stbi__context.exit
  %i.cqv = load i32, ptr %i.cqr, align 4, !tbaa !52
  %i.cqw = icmp ugt i32 %i.cqv, 16777216
  br i1 %i.cqw, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.qs:                                            ; preds = %bb.qq
  %i.cqx = load i32, ptr %0, align 8, !tbaa !51   ; 2 uses
  %i.cqy = icmp ugt i32 %i.cqx, 16777216
  br i1 %i.cqy, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.qu:                                            ; preds = %bb.qs
  store i32 %i.cqx, ptr %1, align 4, !tbaa !23
  %i.cqz = load i32, ptr %i.cqr, align 4, !tbaa !52 ; 2 uses
  store i32 %i.cqz, ptr %2, align 4, !tbaa !23
  %.not.i69 = icmp eq ptr %3, null
  %.pre.i70 = load i32, ptr %i.cqs, align 8, !tbaa !53 ; 5 uses
  br i1 %.not.i69, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  store i32 %.pre.i70, ptr %3, align 4, !tbaa !23
  %.pre70.i = load i32, ptr %i.cqr, align 4, !tbaa !52
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %i.cra = phi i32 [ %.pre70.i, %bb.qv ], [ %i.cqz, %bb.qu ] ; 5 uses
  %i.crb = load i32, ptr %0, align 8, !tbaa !51   ; 5 uses
  %i.crc = load i32, ptr %5, align 4, !tbaa !39   ; 2 uses
  %i.crd = sdiv i32 %i.crc, 8                     ; 4 uses
  %i.cre = or i32 %i.crb, %.pre.i70
  %or.cond.not.i.i.i71 = icmp sgt i32 %i.cre, -1
  br i1 %or.cond.not.i.i.i71, label %bb.qx, label %bb.ra

bb.qx:                                            ; preds = %bb.qw
  %i.crf = icmp eq i32 %i.crb, 0                  ; 2 uses
  br i1 %i.crf, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i72

_ZL21stbi__mul2sizes_validii.exit.i.i72:          ; preds = %bb.qx
  %i.crg = udiv i32 2147483647, %i.crb
  %.not37.i.i = icmp sgt i32 %.pre.i70, %i.crg
  br i1 %.not37.i.i, label %bb.ra, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i72, %bb.qx
  %i.crh = mul i32 %i.crb, %.pre.i70              ; 4 uses
  %i.cri = or i32 %i.crh, %i.cra
  %or.cond.not.i16.i.i = icmp sgt i32 %i.cri, -1
  br i1 %or.cond.not.i16.i.i, label %bb.qy, label %bb.ra

bb.qy:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  %i.crj = icmp eq i32 %i.cra, 0                  ; 2 uses
  br i1 %i.crj, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i:          ; preds = %bb.qy
  %i.crk = udiv i32 2147483647, %i.cra
  %.not.i.i73 = icmp sgt i32 %i.crh, %i.crk
  br i1 %.not.i.i73, label %bb.ra, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i, %bb.qy
  %i.crl = mul i32 %i.crh, %i.cra                 ; 4 uses
  %i.crm = or i32 %i.crd, %i.crl
  %or.cond.not.i19.i.i = icmp sgt i32 %i.crm, -1
  br i1 %or.cond.not.i19.i.i, label %bb.qz, label %bb.ra

bb.qz:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i
  %.off.i = add i32 %i.crc, 7
  %i.crn = icmp ult i32 %.off.i, 15               ; 2 uses
  br i1 %i.crn, label %_ZL21stbi__mad4sizes_validiiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit21.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i:          ; preds = %bb.qz
  %i.cro = udiv i32 2147483647, %i.crd
  %.not38.i.i = icmp sgt i32 %i.crl, %i.cro
  br i1 %.not38.i.i, label %bb.ra, label %_ZL21stbi__mad4sizes_validiiiii.exit.i

bb.ra:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i72, %bb.qw
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL21stbi__mad4sizes_validiiiii.exit.i:           ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i.i, %bb.qz
  br i1 %i.crf, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i74

_ZL21stbi__mul2sizes_validii.exit.i.i.i74:        ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit.i
  %i.crp = udiv i32 2147483647, %i.crb
  %.not37.i.i.i = icmp sgt i32 %.pre.i70, %i.crp
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i74, %_ZL21stbi__mad4sizes_validiiiii.exit.i
  br i1 %i.crj, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.crq = udiv i32 2147483647, %i.cra
  %.not.i.i.i75 = icmp sgt i32 %i.crh, %i.crq
  br i1 %.not.i.i.i75, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  br i1 %i.crn, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit21.i.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.crr = udiv i32 2147483647, %i.crd
  %.not38.i.i.i = icmp sgt i32 %i.crl, %i.crr
  br i1 %.not38.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.crs = mul i32 %i.crd, %i.crl                 ; 3 uses
  %11 = sext i32 %i.crs to i64                    ; 3 uses
  %i.crt = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %11) #37 ; 9 uses
  %.not55.i = icmp eq ptr %i.crt, null
  br i1 %.not55.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.rb

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i74
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.rb:                                            ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.cru = load ptr, ptr %i.j, align 8, !tbaa !34 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.cru, null
  br i1 %.not.i59.i, label %..thread_crit_edge.i.i, label %bb.rc

..thread_crit_edge.i.i:                           ; preds = %bb.rb
  %.pre.i.i77 = load ptr, ptr %i.g, align 8, !tbaa !33
  %.pre35.i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  br label %.thread.i.i76

bb.rc:                                            ; preds = %bb.rb
  %i.crv = load ptr, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.crw = load ptr, ptr %i.g, align 8, !tbaa !33 ; 3 uses
  %i.crx = ptrtoint ptr %i.crv to i64
  %i.cry = ptrtoint ptr %i.crw to i64
  %i.crz = sub i64 %i.crx, %i.cry                 ; 2 uses
  %i.csa = trunc i64 %i.crz to i32                ; 2 uses
  %i.csb = icmp sgt i32 %i.crs, %i.csa
  br i1 %i.csb, label %_ZL10stbi__getnP13stbi__contextPhi.exit.i, label %.thread.i.i76

.thread.i.i76:                                    ; preds = %bb.rc, %..thread_crit_edge.i.i
  %i.csc = phi ptr [ %.pre35.i.i, %..thread_crit_edge.i.i ], [ %i.crv, %bb.rc ]
  %i.csd = phi ptr [ %.pre.i.i77, %..thread_crit_edge.i.i ], [ %i.crw, %bb.rc ] ; 2 uses
  %i.cse = getelementptr inbounds i8, ptr %i.csd, i64 %11 ; 2 uses
  %.not32.i.i = icmp ugt ptr %i.cse, %i.csc
  br i1 %.not32.i.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65.i

_ZL10stbi__getnP13stbi__contextPhi.exit.thread65.i: ; preds = %.thread.i.i76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.crt, ptr align 1 %i.csd, i64 %11, i1 false)
  store ptr %i.cse, ptr %i.g, align 8, !tbaa !33
  br label %bb.rd

_ZL10stbi__getnP13stbi__contextPhi.exit.i:        ; preds = %bb.rc
  %sext.i.i = shl i64 %i.crz, 32
  %i.csf = ashr exact i64 %sext.i.i, 32           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.crt, ptr align 1 %i.crw, i64 %i.csf, i1 false)
  %i.csg = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.csh = getelementptr inbounds i8, ptr %i.crt, i64 %i.csf
  %i.csi = sub nsw i32 %i.crs, %i.csa             ; 2 uses
  %i.csj = tail call noundef i32 %i.cru(ptr noundef %i.csg, ptr noundef nonnull %i.csh, i32 noundef %i.csi), !inline_history !201
  %.not69.i = icmp eq i32 %i.csj, %i.csi
  %i.csk = load ptr, ptr %i.h, align 8, !tbaa !36
  store ptr %i.csk, ptr %i.g, align 8, !tbaa !33
  br i1 %.not69.i, label %bb.rd, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread.i

_ZL10stbi__getnP13stbi__contextPhi.exit.thread.i: ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.i, %.thread.i.i76
  tail call void @free(ptr noundef nonnull %i.crt) #36
  store ptr @.str.70, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.rd:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.i, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65.i
  %.not57.i = icmp eq i32 %4, 0
  br i1 %.not57.i, label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.csl = load i32, ptr %i.cqs, align 8, !tbaa !53 ; 3 uses
  %.not58.i = icmp eq i32 %4, %i.csl
  br i1 %.not58.i, label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.csm = load i32, ptr %5, align 4, !tbaa !39
  %i.csn = icmp eq i32 %i.csm, 16
  %i.cso = load i32, ptr %0, align 8, !tbaa !51   ; 2 uses
  %i.csp = load i32, ptr %i.cqr, align 4, !tbaa !52 ; 2 uses
  br i1 %i.csn, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.csq = tail call fastcc noundef ptr @_ZL22stbi__convert_format16Ptiijj(ptr noundef nonnull %i.crt, i32 noundef %i.csl, i32 noundef %4, i32 noundef %i.cso, i32 noundef %i.csp)
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.rh:                                            ; preds = %bb.rf
  %i.csr = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.crt, i32 noundef %i.csl, i32 noundef %4, i32 noundef %i.cso, i32 noundef %i.csp)
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ri:                                            ; preds = %bb.qm, %_ZL10stbi__get8P13stbi__context.exit14.i
  %i.css = phi ptr [ %i.cps, %bb.qm ], [ %i.cqp, %_ZL10stbi__get8P13stbi__context.exit14.i ]
  store ptr %i.css, ptr %i.g, align 8, !tbaa !33
  %i.cst = load ptr, ptr %i.hf, align 8, !tbaa !37
  store ptr %i.cst, ptr %i.h, align 8, !tbaa !36
  store ptr @.str.2, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit: ; preds = %bb.rh, %bb.rg, %bb.re, %bb.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.ra, %bb.qt, %bb.qr, %_ZL14stbi__pnm_testP13stbi__context.exit, %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i, %bb.hd, %bb.ri, %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit
  %.0 = phi ptr [ %.043.i.i, %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit ], [ %.4344.i, %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit ], [ null, %bb.ri ], [ null, %bb.hd ], [ %.3.i.i, %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i ], [ null, %bb.ra ], [ null, %bb.qr ], [ null, %bb.qt ], [ null, %_ZL14stbi__pnm_testP13stbi__context.exit ], [ %i.crt, %bb.rd ], [ null, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread.i ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.crt, %bb.re ], [ %i.csq, %bb.rg ], [ %i.csr, %bb.rh ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = load i8, ptr %i.b, align 1, !tbaa !35
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !226 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

_ZL19stbi__refill_bufferP13stbi__context.exit:    ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr nofree noundef nonnull captures(none) initializes((8, 32)) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 61 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 25 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 56 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 40 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %.pre7.i = load ptr, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.r = icmp ult ptr %.pre.i, %.pre7.i
  br i1 %i.r, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.s = icmp ult ptr %i.gj, %i.gi
  br i1 %i.s, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.j, align 8, !tbaa !30
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.1, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.w = load i32, ptr %i.n, align 4, !tbaa !29
  %i.x = tail call noundef i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.m, i32 noundef %i.w), !inline_history !227 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !31
  %i.af = add nsw i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.p, align 8, !tbaa !31
  %i.ag = icmp eq i32 %i.x, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sext i32 %i.x to i64
  %i.ai = getelementptr inbounds i8, ptr %i.m, i64 %i.ah
  %.pre.i.i.1 = load i8, ptr %i.m, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !30
  store i8 0, ptr %i.m, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1: ; preds = %bb.f, %bb.e
end_hunk_2
begin_hunk_3_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
.thread379:                                       ; preds = %bb.ev
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.qh, ptr %i.f, align 8, !tbaa !55
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.qi = phi ptr [ %i.qh, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3229 = phi i32 [ %.2228, %bb.ew ], [ %.0226, %._crit_edge ] ; 2 uses
  %i.qj = zext i32 %.0230 to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qj ; 3 uses
  %i.ql = load ptr, ptr %i.k, align 8, !tbaa !34
  %.not.i337 = icmp eq ptr %i.ql, null
  br i1 %.not.i337, label %..thread_crit_edge.i339, label %bb.ey

..thread_crit_edge.i339:                          ; preds = %bb.ex
  %.pre.i341 = load ptr, ptr %i.h, align 8, !tbaa !33
  %.pre35.i = load ptr, ptr %i.i, align 8, !tbaa !36
  br label %.thread.i338

bb.ey:                                            ; preds = %bb.ex
  %i.qm = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.qn = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
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
  %i.qx = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  store ptr %i.qy, ptr %i.h, align 8, !tbaa !33
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.qq, 32
  %i.qz = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.qn, i64 %i.qz, i1 false)
  %i.ra = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.rb = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.rc = getelementptr inbounds i8, ptr %i.qk, i64 %i.qz
  %i.rd = sub nsw i32 %i.gs, %i.qr                ; 2 uses
  %i.re = tail call noundef i32 %i.ra(ptr noundef %i.rb, ptr noundef %i.rc, i32 noundef %i.rd), !inline_history !233
  %.not = icmp eq i32 %i.re, %i.rd
  %i.rf = load ptr, ptr %i.i, align 8, !tbaa !36
  store ptr %i.rf, ptr %i.h, align 8, !tbaa !33
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i338, %_ZL10stbi__getnP13stbi__contextPhi.exit
  store ptr @.str.24, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0217, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread396

bb.fc:                                            ; preds = %bb.fb
  %i.rg = load ptr, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store ptr @.str.25, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.rt = sext i32 %i.rr to i64
  %i.ru = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.rt) #37 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.rw = xor i1 %i.rs, true
  %i.rx = zext i1 %i.rw to i32
  store ptr %i.rg, ptr %3, align 8, !tbaa !106
  %i.ry = sext i32 %.0230 to i64
  %i.rz = getelementptr inbounds i8, ptr %i.rg, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.rz, ptr %i.sa, align 8, !tbaa !107
  %i.sb = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.ru, i32 noundef %i.rr, i32 noundef 1, i32 noundef %i.rx)
  %.not.i342 = icmp eq i32 %i.sb, 0
  br i1 %.not.i342, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !108
  call void @free(ptr noundef %i.sd) #36
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %i.e, align 8, !tbaa !54
  br label %.thread396

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !109
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !108 ; 3 uses
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = trunc i64 %i.sk to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr %i.sh, ptr %i.e, align 8, !tbaa !54
  %i.sm = icmp eq ptr %i.sh, null
  br i1 %i.sm, label %.thread396, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sn = load ptr, ptr %i.f, align 8, !tbaa !55
  call void @free(ptr noundef %i.sn) #36
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
  %i.ta = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
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
  %4 = sext i32 %i.tl to i64
  %i.tm = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %4) #37 ; 4 uses
  %.not92.i = icmp eq ptr %i.tm, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %5 = sext i32 %i.sz to i64                      ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sv, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sl, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tn = load ptr, ptr %0, align 8, !tbaa !47    ; 3 uses
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !51
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !23 ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !23 ; 4 uses
  %i.tt = xor i32 %i.tq, -1
  %i.tu = add i32 %i.to, %i.tt
  %i.tv = add i32 %i.tu, %i.ts                    ; 2 uses
  %i.tw = udiv i32 %i.tv, %i.ts                   ; 6 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !52
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !23 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !23 ; 4 uses
  %i.ud = xor i32 %i.ua, -1
  %i.ue = add i32 %i.ty, %i.ud
  %i.uf = add i32 %i.ue, %i.uc                    ; 2 uses
  %i.ug = udiv i32 %i.uf, %i.uc                   ; 4 uses
  %i.uh = icmp ule i32 %i.ts, %i.tv
  %i.ui = icmp ule i32 %i.uc, %i.uf
  %or.cond.i = select i1 %i.uh, i1 %i.ui, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !53
  %i.ul = mul i32 %i.tw, %i.sw
  %i.um = mul i32 %i.ul, %i.uk
  %i.un = add nsw i32 %i.um, 7
  %i.uo = ashr i32 %i.un, 3
  %i.up = add nsw i32 %i.uo, 1
  %i.uq = mul nsw i32 %i.up, %i.ug                ; 2 uses
  %i.ur = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.tw, i32 noundef %i.ug, i32 noundef %i.sw, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.ur, 0
  br i1 %.not93.not.i, label %.thread.i350, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.us = icmp sgt i32 %i.ug, 0
  %i.ut = icmp sgt i32 %i.tw, 0
  %or.cond107.i = and i1 %i.ut, %i.us
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !48 ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.uu = load ptr, ptr %0, align 8, !tbaa !47
  %i.uv = sext i32 %i.ts to i64                   ; 3 uses
  %i.uw = sext i32 %i.tq to i64                   ; 3 uses
  %i.ux = zext nneg i32 %i.tw to i64              ; 3 uses
  %i.uy = zext nneg i32 %i.ug to i64
  %.pre.pre.i = load i32, ptr %i.uu, align 8, !tbaa !51
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.sz
  %xtraiter = and i64 %i.ux, 1
  %i.uz = icmp eq i32 %i.tw, 1
  %unroll_iter = and i64 %i.ux, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.tw to i1
  br label %.preheader.i

.thread.i350:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tm) #36
  br label %.thread396

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.va = trunc i64 %indvars.iv109.i to i32
  %i.vb = mul i32 %i.uc, %i.va
  %i.vc = add i32 %i.vb, %i.ua
  %.reass.i = mul i32 %factor.op.mul.i, %i.vc
  %i.vd = mul nuw nsw i64 %indvars.iv109.i, %i.ux ; 3 uses
  %i.ve = zext i32 %.reass.i to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.ve ; 3 uses
  br i1 %i.uz, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i348 = phi i64 [ %indvars.iv.next.i349.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vg = mul nsw i64 %indvars.iv.i348, %i.uv
  %i.vh = add nsw i64 %i.vg, %i.uw
  %i.vi = mul nsw i64 %i.vh, %5
  %i.vj = getelementptr inbounds i8, ptr %i.vf, i64 %i.vi
  %i.vk = add nuw nsw i64 %indvars.iv.i348, %i.vd
  %i.vl = mul nuw nsw i64 %i.vk, %5
  %i.vm = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vj, ptr align 1 %i.vm, i64 %5, i1 false)
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i348, 1 ; 2 uses
  %i.vn = mul nsw i64 %indvars.iv.next.i349, %i.uv
  %i.vo = add nsw i64 %i.vn, %i.uw
  %i.vp = mul nsw i64 %i.vo, %5
  %i.vq = getelementptr inbounds i8, ptr %i.vf, i64 %i.vp
  %i.vr = add nuw nsw i64 %indvars.iv.next.i349, %i.vd
  %i.vs = mul nuw nsw i64 %i.vr, %5
  %i.vt = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vq, ptr align 1 %i.vt, i64 %5, i1 false)
  %indvars.iv.next.i349.1 = add nuw nsw i64 %indvars.iv.i348, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !234

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i348.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i349.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
  %i.vu = mul nsw i64 %indvars.iv.i348.epil.init, %i.uv
  %i.vv = add nsw i64 %i.vu, %i.uw
  %i.vw = mul nsw i64 %i.vv, %5
  %i.vx = getelementptr inbounds i8, ptr %i.vf, i64 %i.vw
  %i.vy = add nuw nsw i64 %indvars.iv.i348.epil.init, %i.vd
  %i.vz = mul nuw nsw i64 %i.vy, %5
  %i.wa = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vx, ptr align 1 %i.wa, i64 %5, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wb = icmp samesign ult i64 %indvars.iv.next110.i, %i.uy
  br i1 %i.wb, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !235

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #36
  %i.wc = zext i32 %i.uq to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.wc
  %i.we = sub i32 %.085104.i, %i.uq
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.we, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wd, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i347, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390, label %bb.fl, !llvm.loop !236

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390: ; preds = %bb.fn
  store ptr %i.tm, ptr %i.g, align 8, !tbaa !48
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.wf = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.sv, i32 noundef %i.sl, i32 noundef %spec.select1495, i32 noundef %i.tb, i32 noundef %i.td, i32 noundef %i.sw, i32 noundef range(i32 0, 256) %.0207)
  %.not266 = icmp eq i32 %i.wf, 0
  br i1 %.not266, label %.thread396, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread390, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.st, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.wg = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.wh = icmp eq i32 %i.wg, 16
  %i.wi = load i32, ptr %i.su, align 4, !tbaa !50 ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %.val296 = load ptr, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %.val.val = load i32, ptr %.val, align 8, !tbaa !51 ; 2 uses
  %i.wj = getelementptr i8, ptr %.val, i64 4
  %.val.val297 = load i32, ptr %i.wj, align 4, !tbaa !52 ; 2 uses
  br i1 %i.wh, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val297, ptr %.val296, ptr noundef %i.c, i32 noundef %i.wi)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val297, ptr %.val296, ptr noundef %i.b, i32 noundef %i.wi)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wk = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.wl = icmp ne i32 %i.wk, 0
  %or.cond11 = select i1 %i.rs, i1 %i.wl, i1 false
  br i1 %or.cond11, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.wm = load i32, ptr %i.su, align 4, !tbaa !50
  %i.wn = icmp sgt i32 %i.wm, 2
  br i1 %i.wn, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val301 = load ptr, ptr %0, align 8, !tbaa !47
  %.val302 = load ptr, ptr %i.g, align 8, !tbaa !48
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val301, ptr %.val302)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  br i1 %i.ss, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wo = zext nneg i8 %.0236 to i32              ; 2 uses
  store i32 %i.wo, ptr %i.gl, align 8, !tbaa !53
  %i.wp = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.wp, i32 %2, i32 %i.wo ; 4 uses
  store i32 %spec.select, ptr %i.su, align 4, !tbaa !50
  %i.wq = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !51
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !52
  %i.wu = mul i32 %i.wt, %i.wr                    ; 9 uses
  %i.wv = load ptr, ptr %i.g, align 8, !tbaa !48  ; 9 uses
  %or.cond.not.i.i.i.i351 = icmp sgt i32 %i.wu, -1
  br i1 %or.cond.not.i.i.i.i351, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i353, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i353:       ; preds = %bb.fw
  %i.ww = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.wu, %i.ww
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i353
  %i.wx = mul nuw nsw i32 %i.wu, %spec.select
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.wy) #37 ; 6 uses
  %i.xa = icmp eq ptr %i.wz, null
  br i1 %i.xa, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fx

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fw, %_ZL21stbi__mul2sizes_validii.exit.i.i.i353, %_ZL17stbi__malloc_mad2iii.exit.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.fx:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.xb = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.wu, 0                ; 2 uses
  br i1 %i.xb, label %.preheader.i357, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.wu to i64 ; 2 uses
  %xtraiter2137 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.xc = icmp ult i32 %i.wu, 4
  br i1 %i.xc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2140 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i357:                                  ; preds = %bb.fx
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i357
  %wide.trip.count62.i = zext nneg i32 %i.wu to i64 ; 2 uses
  %xtraiter2142 = and i64 %wide.trip.count62.i, 1
  %i.xd = icmp eq i32 %i.wu, 1
  br i1 %i.xd, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2146 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.wz, %.lr.ph55.preheader.i.new ], [ %i.ye, %.lr.ph55.i ] ; 7 uses
  %niter2147 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2147.next.1, %.lr.ph55.i ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv59.i
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !35
  %i.xg = zext i8 %i.xf to i64
  %i.xh = shl nuw nsw i64 %i.xg, 2
  %i.xi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xh ; 3 uses
  %i.xj = load i8, ptr %i.xi, align 4, !tbaa !35
  store i8 %i.xj, ptr %.04553.i, align 1, !tbaa !35
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !35
  %i.xm = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !35
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xo = load i8, ptr %i.xn, align 2, !tbaa !35
  %i.xp = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !35
  %i.xq = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv59.i
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !35
  %i.xu = zext i8 %i.xt to i64
  %i.xv = shl nuw nsw i64 %i.xu, 2
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xv ; 3 uses
  %i.xx = load i8, ptr %i.xw, align 4, !tbaa !35
  store i8 %i.xx, ptr %i.xq, align 1, !tbaa !35
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 1
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !35
  %i.ya = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !35
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 2
  %i.yc = load i8, ptr %i.yb, align 2, !tbaa !35
  %i.yd = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.yc, ptr %i.yd, align 1, !tbaa !35
  %i.ye = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2147.next.1 = add i64 %niter2147, 2       ; 2 uses
  %niter2147.ncmp.1 = icmp eq i64 %niter2147.next.1, %unroll_iter2146
  br i1 %niter2147.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !237

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i354 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i355.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.wz, %.lr.ph.preheader.i.new ], [ %i.zj, %.lr.ph.i ] ; 5 uses
  %niter2141 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2141.next.3, %.lr.ph.i ]
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv.i354
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !35
  %i.yh = zext i8 %i.yg to i64
  %i.yi = shl nuw nsw i64 %i.yh, 2
  %i.yj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yi
  %i.yk = load <4 x i8>, ptr %i.yj, align 4, !tbaa !35
  store <4 x i8> %i.yk, ptr %.14651.i, align 1, !tbaa !35
  %i.yl = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv.i354
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !35
  %i.yp = zext i8 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 2
  %i.yr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yq
  %i.ys = load <4 x i8>, ptr %i.yr, align 4, !tbaa !35
  store <4 x i8> %i.ys, ptr %i.yl, align 1, !tbaa !35
  %i.yt = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv.i354
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
end_hunk_3
begin_hunk_4_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %i.zk = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv59.i.epil.init
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !35
  %i.zm = zext i8 %i.zl to i64
  %i.zn = shl nuw nsw i64 %i.zm, 2
  %i.zo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zn ; 3 uses
  %i.zp = load i8, ptr %i.zo, align 4, !tbaa !35
  store i8 %i.zp, ptr %.04553.i.epil.init, align 1, !tbaa !35
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !35
  %i.zs = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !35
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 2
  %i.zu = load i8, ptr %i.zt, align 2, !tbaa !35
  %i.zv = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !35
  br label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2138.not = icmp eq i64 %xtraiter2137, 0
  br i1 %lcmp.mod2138.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i354.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i355.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.wz, %.lr.ph.preheader.i ], [ %i.zj, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %lcmp.mod2139 = icmp ne i64 %xtraiter2137, 0
  call void @llvm.assume(i1 %lcmp.mod2139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i354.epil = phi i64 [ %indvars.iv.i354.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i355.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aac, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.wv, i64 %indvars.iv.i354.epil
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !35
  %i.zy = zext i8 %i.zx to i64
  %i.zz = shl nuw nsw i64 %i.zy, 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zz
  %i.aab = load <4 x i8>, ptr %i.aaa, align 4, !tbaa !35
  store <4 x i8> %i.aab, ptr %.14651.i.epil, align 1, !tbaa !35
  %i.aac = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i355.epil = add nuw nsw i64 %indvars.iv.i354.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2137
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !239

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i357
  call void @free(ptr noundef %i.wv) #36
  store ptr %i.wz, ptr %i.g, align 8, !tbaa !48
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %i.st, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aad = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.aae = add nsw i32 %i.aad, 1
  store i32 %i.aae, ptr %i.gl, align 8, !tbaa !53
  br label %bb.ga

bb.ga:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.fy, %bb.fz
  %i.aaf = load ptr, ptr %i.e, align 8, !tbaa !54
  call void @free(ptr noundef %i.aaf) #36
  store ptr null, ptr %i.e, align 8, !tbaa !54
  %i.aag = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  %i.aah = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread396

bb.gb:                                            ; preds = %bb.aw
  %.not294 = icmp eq i32 %.0217, 0
  br i1 %.not294, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.gd:                                            ; preds = %bb.gb
  %i.aai = and i32 %i.gt, 8192
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aak = lshr i32 %i.gt, 8
  %i.aal = trunc nuw i32 %i.aak to i8
  store i8 %i.aal, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16, !tbaa !35
  %i.aam = trunc i32 %i.gt to i8
  store i8 %i.aam, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 1), align 1, !tbaa !35
  %i.aan = lshr i32 %i.gv, 8
  %i.aao = trunc nuw i32 %i.aan to i8
  store i8 %i.aao, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 2), align 2, !tbaa !35
  %i.aap = trunc i32 %i.gv to i8
  store i8 %i.aap, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 3), align 1, !tbaa !35
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread396

bb.gf:                                            ; preds = %bb.gd
  %i.aaq = icmp eq i32 %i.gs, 0
  br i1 %i.aaq, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aar = icmp slt i32 %i.gq, 0
  br i1 %i.aar, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aas = load ptr, ptr %i.i, align 8, !tbaa !36
  store ptr %i.aas, ptr %i.h, align 8, !tbaa !33
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.aat = load ptr, ptr %i.k, align 8, !tbaa !34
  %.not.i358 = icmp eq ptr %i.aat, null
  br i1 %.not.i358, label %..thread_crit_edge.i360, label %bb.gj

..thread_crit_edge.i360:                          ; preds = %bb.gi
  %.pre.i362 = load ptr, ptr %i.h, align 8, !tbaa !33
  br label %.thread.i359

bb.gj:                                            ; preds = %bb.gi
  %i.aau = load ptr, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.aav = load ptr, ptr %i.h, align 8, !tbaa !33 ; 2 uses
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = trunc i64 %i.aay to i32                ; 2 uses
  %i.aba = icmp sgt i32 %i.gs, %i.aaz
  br i1 %i.aba, label %bb.gk, label %.thread.i359

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.aau, ptr %i.h, align 8, !tbaa !33
  %i.abb = load ptr, ptr %i.go, align 8, !tbaa !66
  %i.abc = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.abd = sub nsw i32 %i.gs, %i.aaz
  tail call void %i.abb(ptr noundef %i.abc, i32 noundef %i.abd), !inline_history !103
  br label %.loopexit

.thread.i359:                                     ; preds = %bb.gj, %..thread_crit_edge.i360
  %i.abe = phi ptr [ %.pre.i362, %..thread_crit_edge.i360 ], [ %i.aav, %bb.gj ]
  %i.abf = zext nneg i32 %i.gs to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abf
  store ptr %i.abg, ptr %i.h, align 8, !tbaa !33
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
  %i.abh = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.abi = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !240

.thread396:                                       ; preds = %bb.er, %.thread.i350, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.ga, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread379, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ge, %bb.gc, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.ga ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread379 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i350 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gc ], [ 0, %bb.ge ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
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
  %5 = sext i32 %i.i to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %5) #37 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.m = shl nsw i32 %1, 3
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.o = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.n, label %.critedge [
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
  %i.p = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.p, 4294967288            ; 5 uses
  %i.q = trunc nuw i64 %n.vec506 to i32
  %i.r = sub i32 %.11167198, %i.q
  %i.s = shl nuw nsw i64 %n.vec506, 1
  %i.t = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.p
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.u = and i64 %i.p, 15                         ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 16, i64 %i.u         ; 2 uses
  %n.vec455 = sub nsw i64 %i.p, %i.w              ; 5 uses
  %i.x = trunc i64 %n.vec455 to i32
  %i.y = sub i32 %.11167198, %i.x
  %i.z = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.w, 9
  %i.aa = and i64 %i.p, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec486 = sub nsw i64 %i.p, %i.ac             ; 4 uses
  %i.ad = trunc i64 %n.vec486 to i32
  %i.ae = sub i32 %.11167198, %i.ad
  %i.af = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ag = trunc nuw i64 %n.vec432 to i32
  %i.ah = sub i32 %.11167198, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec432, 1
  %i.aj = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.p
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.ak = and i64 %i.p, 8
  %n.vec381 = and i64 %i.p, 4294967280            ; 6 uses
  %i.al = trunc nuw i64 %n.vec381 to i32
  %i.am = sub i32 %.11167198, %i.al
  %i.an = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.p
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.ak, 0
  %n.vec412 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ao = trunc nuw i64 %n.vec412 to i32
  %i.ap = sub i32 %.11167198, %i.ao
  %i.aq = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.p
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.ar = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.at = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.au = and i64 %i.p, 15                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 16, i64 %i.au      ; 2 uses
  %n.vec330 = sub nsw i64 %i.p, %i.aw             ; 5 uses
  %i.ax = trunc i64 %n.vec330 to i32
  %i.ay = sub i32 %.11167198, %i.ax
  %i.az = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.aw, 9
  %i.ba = and i64 %i.p, 7                         ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 8, i64 %i.ba
  %n.vec360 = sub nsw i64 %i.p, %i.bc             ; 4 uses
  %i.bd = trunc i64 %n.vec360 to i32
  %i.be = sub i32 %.11167198, %i.bd
  %i.bf = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bg = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bi = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4294967280               ; 6 uses
  %i.bj = trunc nuw i64 %n.vec to i32
  %i.bk = sub i32 %.11167198, %i.bj
  %i.bl = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec315 = and i64 %i.p, 4294967292            ; 5 uses
  %i.bm = trunc nuw i64 %n.vec315 to i32
  %i.bn = sub i32 %.11167198, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.p
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bp = icmp eq i32 %.11167198, 0
  br label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef %0) #36
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = mul i32 %3, %i.bq                       ; 2 uses
  %i.bs = mul i32 %i.br, %1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt ; 126 uses
  %i.bv = mul i32 %i.br, %2
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bw ; 50 uses
  switch i32 %i.n, label %.preheader195 [
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
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !35
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.bx, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bu, %.lr.ph.preheader ], [ %i.cf, %.lr.ph.prol ]
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.o, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.s
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.t
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
  %i.cj = shl i64 %index508, 1
  %next.gep509 = getelementptr i8, ptr %i.bx, i64 %i.cj
  %i.ck = shl i64 %index508, 2                    ; 8 uses
  %next.gep510 = getelementptr i8, ptr %i.bu, i64 %i.ck ; 4 uses
  %i.cl = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep511 = getelementptr i8, ptr %i.cl, i64 4
  %i.cm = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep512 = getelementptr i8, ptr %i.cm, i64 8
  %i.cn = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep513 = getelementptr i8, ptr %i.cn, i64 12
  %i.co = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep514 = getelementptr i8, ptr %i.co, i64 16
  %i.cp = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep515 = getelementptr i8, ptr %i.cp, i64 20
  %i.cq = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep516 = getelementptr i8, ptr %i.cq, i64 24
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep517 = getelementptr i8, ptr %i.cr, i64 28
  %i.cs = load i8, ptr %next.gep510, align 1, !tbaa !35
  %i.ct = load i8, ptr %next.gep511, align 1, !tbaa !35
  %i.cu = load i8, ptr %next.gep512, align 1, !tbaa !35
  %i.cv = load i8, ptr %next.gep513, align 1, !tbaa !35
  %i.cw = load i8, ptr %next.gep514, align 1, !tbaa !35
  %i.cx = load i8, ptr %next.gep515, align 1, !tbaa !35
  %i.cy = load i8, ptr %next.gep516, align 1, !tbaa !35
  %i.cz = load i8, ptr %next.gep517, align 1, !tbaa !35
  %i.da = insertelement <8 x i8> poison, i8 %i.cs, i64 0
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 1
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 2
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 3
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 4
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 5
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 6
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 7
  %i.di = zext <8 x i8> %i.dh to <8 x i16>
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep510, i64 1
  %i.dk = getelementptr i8, ptr %i.cl, i64 5
  %i.dl = getelementptr i8, ptr %i.cm, i64 9
  %i.dm = getelementptr i8, ptr %i.cn, i64 13
  %i.dn = getelementptr i8, ptr %i.co, i64 17
  %i.do = getelementptr i8, ptr %i.cp, i64 21
  %i.dp = getelementptr i8, ptr %i.cq, i64 25
  %i.dq = getelementptr i8, ptr %i.cr, i64 29
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !35
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !35
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !35
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !35
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !35
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !35
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !35
  %i.dz = insertelement <8 x i8> poison, i8 %i.dr, i64 0
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 1
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 2
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 3
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 4
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 5
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 6
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 7
  %i.eh = zext <8 x i8> %i.eg to <8 x i16>
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep510, i64 2
  %i.ej = getelementptr i8, ptr %i.cl, i64 6
  %i.ek = getelementptr i8, ptr %i.cm, i64 10
  %i.el = getelementptr i8, ptr %i.cn, i64 14
  %i.em = getelementptr i8, ptr %i.co, i64 18
  %i.en = getelementptr i8, ptr %i.cp, i64 22
  %i.eo = getelementptr i8, ptr %i.cq, i64 26
  %i.ep = getelementptr i8, ptr %i.cr, i64 30
  %i.eq = load i8, ptr %i.ei, align 1, !tbaa !35
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !35
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !35
  %i.et = load i8, ptr %i.el, align 1, !tbaa !35
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !35
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !35
  %i.ew = load i8, ptr %i.eo, align 1, !tbaa !35
  %i.ex = load i8, ptr %i.ep, align 1, !tbaa !35
  %i.ey = insertelement <8 x i8> poison, i8 %i.eq, i64 0
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 1
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 2
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 3
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 4
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 5
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 6
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 7
  %i.fg = zext <8 x i8> %i.ff to <8 x i16>
  %i.fh = mul nuw nsw <8 x i16> %i.di, splat (i16 77)
  %i.fi = mul nuw <8 x i16> %i.eh, splat (i16 150)
  %i.fj = add nuw <8 x i16> %i.fi, %i.fh
  %i.fk = mul nuw nsw <8 x i16> %i.fg, splat (i16 29)
  %i.fl = add nuw <8 x i16> %i.fj, %i.fk
  %i.fm = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.fn = trunc nuw <8 x i16> %i.fm to <8 x i8>
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep510, i64 3
  %i.fp = getelementptr i8, ptr %i.cl, i64 7
  %i.fq = getelementptr i8, ptr %i.cm, i64 11
  %i.fr = getelementptr i8, ptr %i.cn, i64 15
  %i.fs = getelementptr i8, ptr %i.co, i64 19
  %i.ft = getelementptr i8, ptr %i.cp, i64 23
  %i.fu = getelementptr i8, ptr %i.cq, i64 27
  %i.fv = getelementptr i8, ptr %i.cr, i64 31
  %i.fw = load i8, ptr %i.fo, align 1, !tbaa !35
  %i.fx = load i8, ptr %i.fp, align 1, !tbaa !35
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !35
  %i.fz = load i8, ptr %i.fr, align 1, !tbaa !35
  %i.ga = load i8, ptr %i.fs, align 1, !tbaa !35
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !35
  %i.gc = load i8, ptr %i.fu, align 1, !tbaa !35
  %i.gd = load i8, ptr %i.fv, align 1, !tbaa !35
  %i.ge = insertelement <8 x i8> poison, i8 %i.fw, i64 0
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 1
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 2
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 3
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 4
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 5
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 6
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 7
  %interleaved.vec518 = shufflevector <8 x i8> %i.fn, <8 x i8> %i.gl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec518, ptr %next.gep509, align 1, !tbaa !35
  %index.next519 = add nuw i64 %index508, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next519, %n.vec506
  br i1 %i.gm, label %middle.block520, label %vector.body507, !llvm.loop !241

middle.block520:                                  ; preds = %vector.body507
  br i1 %cmp.n521, label %.loopexit, label %.lr.ph206.preheader536

.lr.ph206.preheader536:                           ; preds = %.lr.ph206.preheader, %middle.block520
  %.10166205.ph = phi i32 [ %.11167198, %.lr.ph206.preheader ], [ %i.r, %middle.block520 ]
  %.10204.ph = phi ptr [ %i.bx, %.lr.ph206.preheader ], [ %i.ch, %middle.block520 ]
end_hunk_4
begin_hunk_5_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
.lr.ph18.preheader.new:                           ; preds = %.lr.ph18.preheader
  %unroll_iter39 = and i32 %i.d, -4
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.new
  %.04616 = phi ptr [ %.24.val, %.lr.ph18.preheader.new ], [ %i.x, %.lr.ph18 ] ; 10 uses
  %niter40 = phi i32 [ 0, %.lr.ph18.preheader.new ], [ %niter40.next.3, %.lr.ph18 ]
  %i.i = load i8, ptr %.04616, align 1, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  store i8 %i.k, ptr %.04616, align 1, !tbaa !35
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  store i8 %i.o, ptr %i.l, align 1, !tbaa !35
  store i8 %i.m, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.s, ptr %i.p, align 1, !tbaa !35
  store i8 %i.q, ptr %i.r, align 1, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  store i8 %i.w, ptr %i.t, align 1, !tbaa !35
  store i8 %i.u, ptr %i.v, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !301

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !23
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
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1, !tbaa !35 ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 255
  %i.ai = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.lhs.trunc = trunc nuw i32 %i.aj to i16
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ak = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %.14711, align 1, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 255
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %.lhs.trunc1 = trunc nuw i32 %i.aq to i16
  %i.ar = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.am, align 1, !tbaa !35
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35
  store i8 %i.az, ptr %.14711, align 1, !tbaa !35
  store i8 %i.ac, ptr %i.ay, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !302

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  store i8 %i.be, ptr %.24813, align 1, !tbaa !35
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !35
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !35
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !35
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !303

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
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !35
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !304

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
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !35
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !305

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !47
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
  %8 = sext i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %8) #37 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !48
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.u = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.v, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.w = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.w
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.x = mul i32 %i.g, %4                         ; 14 uses
  %i.y = or i32 %i.x, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.y, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.z = icmp eq i32 %6, 0
  br i1 %i.z, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.aa = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.x, %i.aa
  %i.ab = mul i32 %i.x, %6                        ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ac
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ab, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ad = add nsw i32 %.pre-phi, 7
  %i.ae = lshr i32 %i.ad, 3                       ; 5 uses
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = mul i32 %i.af, %5
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.aj = icmp ugt i32 %i.ae, %4
  %i.ak = sub i32 %i.c, %i.ae
  %i.al = zext i32 %i.ak to i64
  %i.am = zext i32 %i.e to i64                    ; 7 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = icmp eq i32 %6, 8
  %.not606 = icmp eq i32 %i.g, %3                 ; 3 uses
  %9 = sext i32 %i.h to i64                       ; 58 uses
  %10 = sext i32 %i.g to i64                      ; 2 uses
  %i.ap = sext i32 %3 to i64
  %or.cond = select i1 %i.ai, i1 true, i1 %.not606
  %.6567743 = add i32 %4, -1                      ; 8 uses
  %.not608744 = icmp eq i32 %.6567743, 0          ; 7 uses
  %wide.trip.count966 = zext i32 %5 to i64
  %i.aq = add i32 %4, -2                          ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %9, %i.ar
  %i.at = zext i32 %i.aq to i64                   ; 3 uses
  %i.au = mul nsw i64 %9, %i.at
  %i.av = sub nsw i64 0, %9
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = mul i64 %i.aw, %9
  %i.ay = add i32 %4, -2                          ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nsw i64 %9, %i.az                   ; 2 uses
  %i.bb = sub i64 %i.ba, %i.am
  %i.bc = zext i32 %i.ay to i64                   ; 3 uses
  %i.bd = mul nsw i64 %9, %i.bc                   ; 2 uses
  %i.be = sub i64 %i.bd, %i.am
  %i.bf = sub nsw i64 0, %9                       ; 3 uses
  %i.bg = add nsw i64 %i.bc, -1
  %i.bh = mul i64 %i.bg, %9
  %i.bi = add i32 %4, -2
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = mul nsw i64 %9, %i.bj                   ; 2 uses
  %i.bl = add nsw i64 %i.bj, -1
  %i.bm = mul i64 %i.bl, %9                       ; 2 uses
  %i.bn = sub i64 %i.bk, %i.am
  %i.bo = sub nsw i64 %i.bf, %i.am
  %i.bp = sub i64 %i.bm, %i.am
  %i.bq = add i32 %4, -2                          ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 3 uses
  %i.bs = mul nsw i64 %9, %i.br
  %i.bt = sub nsw i64 0, %9                       ; 2 uses
  %i.bu = add nsw i64 %i.br, -1
  %i.bv = mul i64 %i.bu, %9
  %i.bw = zext i32 %i.bq to i64                   ; 3 uses
  %i.bx = mul nsw i64 %9, %i.bw
  %i.by = add nsw i64 %i.bw, -1
  %i.bz = mul i64 %i.by, %9
  %stride.check1550 = icmp slt i32 %i.h, 0
  %stride.check1504 = icmp slt i32 %i.h, 0
  %stride.check1448 = icmp slt i32 %i.h, 0
  %stride.check1389 = icmp slt i32 %i.h, 0
  %stride.check1341 = icmp slt i32 %i.h, 0
  %stride.check1297 = icmp slt i32 %i.h, 0
  %stride.check = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.v, %i.a
  %xtraiter1645 = and i32 %4, 7                   ; 3 uses
  %i.ca = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1646.not = icmp eq i32 %xtraiter1645, 0
  %lcmp.mod1647 = icmp ne i32 %xtraiter1645, 0
  %i.cb = add i32 %i.e, -1
  %diff.check1155 = icmp ult i32 %i.cb, 15
  %invariant.op = add nsw i64 %i.am, -1
  %i.cc = add i32 %i.e, -1
  %diff.check1115 = icmp ult i32 %i.cc, 31
  %i.cd = add i32 %i.e, -1
  %diff.check1082 = icmp ult i32 %i.cd, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph825, %.loopexit723
  %indvars.iv963 = phi i64 [ 0, %.lr.ph825 ], [ %indvars.iv.next964, %.loopexit723 ] ; 3 uses
  %.0542824 = phi i32 [ %4, %.lr.ph825 ], [ %.1543, %.loopexit723 ]
  %.0545823 = phi i32 [ %i.i, %.lr.ph825 ], [ %.1546, %.loopexit723 ]
  %.0573821 = phi ptr [ %1, %.lr.ph825 ], [ %.11584, %.loopexit723 ] ; 3 uses
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.cf = trunc nuw i64 %indvars.iv963 to i32
  %i.cg = mul i32 %i.e, %i.cf
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0573821, i64 1 ; 9 uses
  %i.ck = load i8, ptr %.0573821, align 1, !tbaa !35 ; 3 uses
  %i.cl = icmp ugt i8 %i.ck, 4
  br i1 %i.cl, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.aj, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1546 = phi i32 [ 1, %bb.j ], [ %.0545823, %bb.h ] ; 39 uses
  %.1543 = phi i32 [ %i.ae, %bb.j ], [ %.0542824, %bb.h ] ; 2 uses
  %.0531 = phi ptr [ %i.cm, %bb.j ], [ %i.ci, %bb.h ] ; 28 uses
  %.05311067 = ptrtoaddr ptr %.0531 to i64        ; 6 uses
  %i.cn = getelementptr i8, ptr %.0531, i64 %i.an ; 4 uses
  %i.co = icmp eq i64 %indvars.iv963, 0
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = zext nneg i8 %i.ck to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0522.in = phi i8 [ %i.cr, %bb.l ], [ %i.ck, %bb.k ] ; 3 uses
  %i.cs = icmp sgt i32 %.1546, 0                  ; 8 uses
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

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
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !35
  %.narrow642 = add i8 %i.da, %i.cy
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = lshr i8 %i.de, 1
  %.narrow640 = add i8 %i.df, %i.dc
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %.narrow638 = add i8 %i.dj, %i.dh
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !35
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sink = phi i8 [ %i.cu, %bb.n ], [ %i.cw, %bb.o ], [ %.narrow642, %bb.p ], [ %.narrow640, %bb.q ], [ %.narrow638, %bb.r ], [ %i.dl, %bb.s ], [ %i.dn, %bb.t ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0531, i64 %indvars.iv
  store i8 %.sink, ptr %i.do, align 1, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

._crit_edge:                                      ; preds = %bb.u, %bb.m
  br i1 %i.ao, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not606, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds i8, ptr %.0531, i64 %10
  store i8 -1, ptr %i.dp, align 1, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dq = getelementptr inbounds i8, ptr %i.cj, i64 %10
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.pre981 = sext i32 %.1546 to i64               ; 2 uses
  br i1 %.not606, label %._crit_edge980, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds i8, ptr %.0531, i64 %.pre981 ; 2 uses
  store i8 -1, ptr %i.dr, align 1, !tbaa !35
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 -1, ptr %i.ds, align 1, !tbaa !35
  br label %._crit_edge980

._crit_edge980:                                   ; preds = %bb.z, %bb.aa
  %i.dt = getelementptr inbounds i8, ptr %i.cj, i64 %.pre981
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %.0573821, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge980, %bb.ab, %bb.x
  %.sink1032 = phi i64 [ %9, %._crit_edge980 ], [ 1, %bb.ab ], [ %i.ap, %bb.x ] ; 21 uses
  %.1574 = phi ptr [ %i.dt, %._crit_edge980 ], [ %i.du, %bb.ab ], [ %i.dq, %bb.x ] ; 62 uses
  %.15741068 = ptrtoaddr ptr %.1574 to i64        ; 6 uses
  %i.dv = getelementptr i8, ptr %.0531, i64 %.sink1032 ; 77 uses
  %i.dw = getelementptr i8, ptr %i.cn, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dx = add i32 %.1543, -1
  %i.dy = mul i32 %i.dx, %.1546                   ; 26 uses
  switch i8 %.0522.in, label %.loopexit712 [
    i8 0, label %bb.ae
    i8 1, label %.preheader711
    i8 2, label %.preheader713
    i8 3, label %.preheader715
    i8 4, label %.preheader717
    i8 5, label %.preheader719
    i8 6, label %.preheader721
  ]

.preheader721:                                    ; preds = %bb.ad
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %iter.check1242, label %.loopexit712

iter.check1242:                                   ; preds = %.preheader721
  %i.ea = sext i32 %.1546 to i64                  ; 6 uses
  %wide.trip.count936 = zext nneg i32 %i.dy to i64 ; 8 uses
  %min.iters.check1227 = icmp ult i32 %i.dy, 4
  br i1 %min.iters.check1227, label %.lr.ph810.preheader, label %vector.memcheck1223

vector.memcheck1223:                              ; preds = %iter.check1242
  %i.eb = add i64 %.sink1032, %.05311067
  %i.ec = sub i64 %.15741068, %i.eb
  %diff.check1224 = icmp ugt i64 %i.ec, -32
  %i.ed = add nsw i64 %i.ea, -1
  %diff.check1225 = icmp ult i64 %i.ed, 31
  %conflict.rdx1226 = or i1 %diff.check1224, %diff.check1225
  br i1 %conflict.rdx1226, label %.lr.ph810.preheader, label %vector.main.loop.iter.check1228

vector.main.loop.iter.check1228:                  ; preds = %vector.memcheck1223
  %min.iters.check1229 = icmp ult i32 %i.dy, 32
  br i1 %min.iters.check1229, label %vec.epilog.ph1246, label %vector.ph1230

vector.ph1230:                                    ; preds = %vector.main.loop.iter.check1228
  %i.ee = and i64 %wide.trip.count936, 28
  %n.vec1231 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.ph1230, %vector.body1232
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1238, %vector.body1232 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1574, i64 %index1233 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load1234 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !35
  %wide.load1235 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !35
  %i.eh = sub nsw i64 %index1233, %i.ea
  %i.ei = getelementptr inbounds i8, ptr %i.dv, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load1236 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !35
  %wide.load1237 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !35
  %i.ek = add <16 x i8> %wide.load1236, %wide.load1234
  %i.el = add <16 x i8> %wide.load1237, %wide.load1235
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index1233 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <16 x i8> %i.ek, ptr %i.em, align 1, !tbaa !35
  store <16 x i8> %i.el, ptr %i.en, align 1, !tbaa !35
  %index.next1238 = add nuw i64 %index1233, 32    ; 2 uses
  %i.eo = icmp eq i64 %index.next1238, %n.vec1231
  br i1 %i.eo, label %middle.block1239, label %vector.body1232, !llvm.loop !307

middle.block1239:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %n.vec1231, %wide.trip.count936
  br i1 %cmp.n1240, label %.loopexit712, label %vec.epilog.iter.check1244

vec.epilog.iter.check1244:                        ; preds = %middle.block1239
  %min.epilog.iters.check1245 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check1245, label %.lr.ph810.preheader, label %vec.epilog.ph1246, !prof !68

vec.epilog.ph1246:                                ; preds = %vector.main.loop.iter.check1228, %vec.epilog.iter.check1244
  %vec.epilog.resume.val1241 = phi i64 [ %n.vec1231, %vec.epilog.iter.check1244 ], [ 0, %vector.main.loop.iter.check1228 ]
  %n.vec1247 = and i64 %wide.trip.count936, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1248

vec.epilog.vector.body1248:                       ; preds = %vec.epilog.vector.body1248, %vec.epilog.ph1246
  %index1249 = phi i64 [ %vec.epilog.resume.val1241, %vec.epilog.ph1246 ], [ %index.next1252, %vec.epilog.vector.body1248 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1574, i64 %index1249
  %wide.load1250 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !35
  %i.eq = sub nsw i64 %index1249, %i.ea
  %i.er = getelementptr inbounds i8, ptr %i.dv, i64 %i.eq
  %wide.load1251 = load <4 x i8>, ptr %i.er, align 1, !tbaa !35
  %i.es = add <4 x i8> %wide.load1251, %wide.load1250
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index1249
  store <4 x i8> %i.es, ptr %i.et, align 1, !tbaa !35
  %index.next1252 = add nuw i64 %index1249, 4     ; 2 uses
  %i.eu = icmp eq i64 %index.next1252, %n.vec1247
  br i1 %i.eu, label %vec.epilog.middle.block1253, label %vec.epilog.vector.body1248, !llvm.loop !308

vec.epilog.middle.block1253:                      ; preds = %vec.epilog.vector.body1248
  %cmp.n1254 = icmp eq i64 %n.vec1247, %wide.trip.count936
  br i1 %cmp.n1254, label %.loopexit712, label %.lr.ph810.preheader

.lr.ph810.preheader:                              ; preds = %iter.check1242, %vector.memcheck1223, %vec.epilog.iter.check1244, %vec.epilog.middle.block1253
  %indvars.iv933.ph = phi i64 [ 0, %iter.check1242 ], [ 0, %vector.memcheck1223 ], [ %n.vec1231, %vec.epilog.iter.check1244 ], [ %n.vec1247, %vec.epilog.middle.block1253 ] ; 6 uses
  %xtraiter1648 = and i64 %wide.trip.count936, 1
  %lcmp.mod1649.not = icmp eq i64 %xtraiter1648, 0
  br i1 %lcmp.mod1649.not, label %.lr.ph810.prol.loopexit, label %.lr.ph810.prol

.lr.ph810.prol:                                   ; preds = %.lr.ph810.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv933.ph
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !35
  %i.ex = sub nsw i64 %indvars.iv933.ph, %i.ea
  %i.ey = getelementptr inbounds i8, ptr %i.dv, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !35
  %.narrow626.prol = add i8 %i.ez, %i.ew
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv933.ph
  store i8 %.narrow626.prol, ptr %i.fa, align 1, !tbaa !35
  %indvars.iv.next934.prol = or disjoint i64 %indvars.iv933.ph, 1
  br label %.lr.ph810.prol.loopexit

.lr.ph810.prol.loopexit:                          ; preds = %.lr.ph810.prol, %.lr.ph810.preheader
  %indvars.iv933.unr = phi i64 [ %indvars.iv933.ph, %.lr.ph810.preheader ], [ %indvars.iv.next934.prol, %.lr.ph810.prol ]
  %i.fb = add nsw i64 %wide.trip.count936, -1
  %i.fc = icmp eq i64 %indvars.iv933.ph, %i.fb
  br i1 %i.fc, label %.loopexit712, label %.lr.ph810

.preheader719:                                    ; preds = %bb.ad
  %i.fd = icmp sgt i32 %i.dy, 0
  br i1 %i.fd, label %iter.check1209, label %.loopexit712

iter.check1209:                                   ; preds = %.preheader719
  %i.fe = sext i32 %.1546 to i64                  ; 6 uses
  %wide.trip.count941 = zext nneg i32 %i.dy to i64 ; 8 uses
  %min.iters.check1194 = icmp ult i32 %i.dy, 4
  br i1 %min.iters.check1194, label %.lr.ph812.preheader, label %vector.memcheck1190

vector.memcheck1190:                              ; preds = %iter.check1209
  %i.ff = add i64 %.sink1032, %.05311067
  %i.fg = sub i64 %.15741068, %i.ff
  %diff.check1191 = icmp ugt i64 %i.fg, -32
  %i.fh = add nsw i64 %i.fe, -1
  %diff.check1192 = icmp ult i64 %i.fh, 31
  %conflict.rdx1193 = or i1 %diff.check1191, %diff.check1192
  br i1 %conflict.rdx1193, label %.lr.ph812.preheader, label %vector.main.loop.iter.check1195

vector.main.loop.iter.check1195:                  ; preds = %vector.memcheck1190
  %min.iters.check1196 = icmp ult i32 %i.dy, 32
  br i1 %min.iters.check1196, label %vec.epilog.ph1213, label %vector.ph1197

vector.ph1197:                                    ; preds = %vector.main.loop.iter.check1195
  %i.fi = and i64 %wide.trip.count941, 28
  %n.vec1198 = and i64 %wide.trip.count941, 2147483616 ; 4 uses
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.ph1197, %vector.body1199
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1205, %vector.body1199 ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1574, i64 %index1200 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load1201 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !35
  %wide.load1202 = load <16 x i8>, ptr %i.fk, align 1, !tbaa !35
  %i.fl = sub nsw i64 %index1200, %i.fe
  %i.fm = getelementptr inbounds i8, ptr %i.dv, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load1203 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !35
  %wide.load1204 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !35
  %i.fo = lshr <16 x i8> %wide.load1203, splat (i8 1)
  %i.fp = lshr <16 x i8> %wide.load1204, splat (i8 1)
  %i.fq = add <16 x i8> %i.fo, %wide.load1201
  %i.fr = add <16 x i8> %i.fp, %wide.load1202
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index1200 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <16 x i8> %i.fq, ptr %i.fs, align 1, !tbaa !35
  store <16 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !35
  %index.next1205 = add nuw i64 %index1200, 32    ; 2 uses
  %i.fu = icmp eq i64 %index.next1205, %n.vec1198
  br i1 %i.fu, label %middle.block1206, label %vector.body1199, !llvm.loop !309

middle.block1206:                                 ; preds = %vector.body1199
  %cmp.n1207 = icmp eq i64 %n.vec1198, %wide.trip.count941
  br i1 %cmp.n1207, label %.loopexit712, label %vec.epilog.iter.check1211

vec.epilog.iter.check1211:                        ; preds = %middle.block1206
  %min.epilog.iters.check1212 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check1212, label %.lr.ph812.preheader, label %vec.epilog.ph1213, !prof !68

vec.epilog.ph1213:                                ; preds = %vector.main.loop.iter.check1195, %vec.epilog.iter.check1211
  %vec.epilog.resume.val1208 = phi i64 [ %n.vec1198, %vec.epilog.iter.check1211 ], [ 0, %vector.main.loop.iter.check1195 ]
  %n.vec1214 = and i64 %wide.trip.count941, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1215

vec.epilog.vector.body1215:                       ; preds = %vec.epilog.vector.body1215, %vec.epilog.ph1213
  %index1216 = phi i64 [ %vec.epilog.resume.val1208, %vec.epilog.ph1213 ], [ %index.next1219, %vec.epilog.vector.body1215 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1574, i64 %index1216
  %wide.load1217 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !35
  %i.fw = sub nsw i64 %index1216, %i.fe
  %i.fx = getelementptr inbounds i8, ptr %i.dv, i64 %i.fw
  %wide.load1218 = load <4 x i8>, ptr %i.fx, align 1, !tbaa !35
  %i.fy = lshr <4 x i8> %wide.load1218, splat (i8 1)
  %i.fz = add <4 x i8> %i.fy, %wide.load1217
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index1216
  store <4 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !35
  %index.next1219 = add nuw i64 %index1216, 4     ; 2 uses
  %i.gb = icmp eq i64 %index.next1219, %n.vec1214
  br i1 %i.gb, label %vec.epilog.middle.block1220, label %vec.epilog.vector.body1215, !llvm.loop !310

vec.epilog.middle.block1220:                      ; preds = %vec.epilog.vector.body1215
  %cmp.n1221 = icmp eq i64 %n.vec1214, %wide.trip.count941
  br i1 %cmp.n1221, label %.loopexit712, label %.lr.ph812.preheader

.lr.ph812.preheader:                              ; preds = %iter.check1209, %vector.memcheck1190, %vec.epilog.iter.check1211, %vec.epilog.middle.block1220
  %indvars.iv938.ph = phi i64 [ 0, %iter.check1209 ], [ 0, %vector.memcheck1190 ], [ %n.vec1198, %vec.epilog.iter.check1211 ], [ %n.vec1214, %vec.epilog.middle.block1220 ] ; 6 uses
end_hunk_5
begin_hunk_6_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %.narrow636.1 = add i8 %i.nf, %i.nc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next959
  store i8 %.narrow636.1, ptr %i.ng, align 1, !tbaa !35
  %indvars.iv.next959.1 = add nuw nsw i64 %indvars.iv958, 2 ; 2 uses
  %exitcond962.not.1 = icmp eq i64 %indvars.iv.next959.1, %wide.trip.count961
  br i1 %exitcond962.not.1, label %.loopexit712, label %.lr.ph820, !llvm.loop !320

.lr.ph818:                                        ; preds = %.lr.ph818.prol.loopexit, %.lr.ph818
  %indvars.iv953 = phi i64 [ %indvars.iv.next954.3, %.lr.ph818 ], [ %indvars.iv953.unr, %.lr.ph818.prol.loopexit ] ; 7 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv953
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !35
  %i.nj = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv953
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !35
  %.narrow634 = add i8 %i.nk, %i.ni
  %i.nl = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv953
  store i8 %.narrow634, ptr %i.nl, align 1, !tbaa !35
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 1 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next954
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.next954
  %i.np = load i8, ptr %i.no, align 1, !tbaa !35
  %.narrow634.1 = add i8 %i.np, %i.nn
  %i.nq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next954
  store i8 %.narrow634.1, ptr %i.nq, align 1, !tbaa !35
  %indvars.iv.next954.1 = add nuw nsw i64 %indvars.iv953, 2 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next954.1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !35
  %i.nt = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.next954.1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !35
  %.narrow634.2 = add i8 %i.nu, %i.ns
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next954.1
  store i8 %.narrow634.2, ptr %i.nv, align 1, !tbaa !35
  %indvars.iv.next954.2 = add nuw nsw i64 %indvars.iv953, 3 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next954.2
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !35
  %i.ny = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.next954.2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !35
  %.narrow634.3 = add i8 %i.nz, %i.nx
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next954.2
  store i8 %.narrow634.3, ptr %i.oa, align 1, !tbaa !35
  %indvars.iv.next954.3 = add nuw nsw i64 %indvars.iv953, 4 ; 2 uses
  %exitcond957.not.3 = icmp eq i64 %indvars.iv.next954.3, %wide.trip.count956
  br i1 %exitcond957.not.3, label %.loopexit712, label %.lr.ph818, !llvm.loop !321

.lr.ph816:                                        ; preds = %.lr.ph816.prol.loopexit, %.lr.ph816
  %indvars.iv948 = phi i64 [ %indvars.iv.next949.1, %.lr.ph816 ], [ %indvars.iv948.unr, %.lr.ph816.prol.loopexit ] ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv948
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !35
  %i.od = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv948
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !35
  %i.of = zext i8 %i.oe to i16
  %i.og = sub nsw i64 %indvars.iv948, %i.iq
  %i.oh = getelementptr inbounds i8, ptr %i.dv, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !35
  %i.oj = zext i8 %i.oi to i16
  %i.ok = add nuw nsw i16 %i.oj, %i.of
  %i.ol = lshr i16 %i.ok, 1
  %.tr631 = trunc nuw i16 %i.ol to i8
  %.narrow632 = add i8 %i.oc, %.tr631
  %i.om = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv948
  store i8 %.narrow632, ptr %i.om, align 1, !tbaa !35
  %indvars.iv.next949 = add nuw nsw i64 %indvars.iv948, 1 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next949
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !35
  %i.op = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.next949
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !35
  %i.or = zext i8 %i.oq to i16
  %i.os = sub nsw i64 %indvars.iv.next949, %i.iq
  %i.ot = getelementptr inbounds i8, ptr %i.dv, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !35
  %i.ov = zext i8 %i.ou to i16
  %i.ow = add nuw nsw i16 %i.ov, %i.or
  %i.ox = lshr i16 %i.ow, 1
  %.tr631.1 = trunc nuw i16 %i.ox to i8
  %.narrow632.1 = add i8 %i.oo, %.tr631.1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next949
  store i8 %.narrow632.1, ptr %i.oy, align 1, !tbaa !35
  %indvars.iv.next949.1 = add nuw nsw i64 %indvars.iv948, 2 ; 2 uses
  %exitcond952.not.1 = icmp eq i64 %indvars.iv.next949.1, %wide.trip.count951
  br i1 %exitcond952.not.1, label %.loopexit712, label %.lr.ph816, !llvm.loop !322

.lr.ph814:                                        ; preds = %.lr.ph814.preheader, %.lr.ph814
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %.lr.ph814 ], [ %indvars.iv943.ph, %.lr.ph814.preheader ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv943
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !35
  %i.pb = sub nsw i64 %indvars.iv943, %i.gm       ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr %i.dv, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !35  ; 2 uses
  %i.pe = zext i8 %i.pd to i32                    ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv943
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !35  ; 2 uses
  %i.ph = zext i8 %i.pg to i32                    ; 2 uses
  %i.pi = getelementptr inbounds i8, ptr %i.dw, i64 %i.pb
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !35  ; 2 uses
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  %i.pl = add nuw nsw i32 %i.ph, %i.pe
  %i.pm = sub nsw i32 %i.pl, %i.pk                ; 3 uses
  %i.pn = sub nsw i32 %i.pm, %i.pe
  %i.po = tail call i32 @llvm.abs.i32(i32 %i.pn, i1 true) ; 2 uses
  %i.pp = sub nsw i32 %i.pm, %i.ph
  %i.pq = tail call i32 @llvm.abs.i32(i32 %i.pp, i1 true) ; 2 uses
  %i.pr = sub nsw i32 %i.pm, %i.pk
  %i.ps = tail call i32 @llvm.abs.i32(i32 %i.pr, i1 true) ; 2 uses
  %.not.i645 = icmp samesign ugt i32 %i.po, %i.pq
  %.not20.i646 = icmp samesign ugt i32 %i.po, %i.ps
  %or.cond.i647 = select i1 %.not.i645, i1 true, i1 %.not20.i646
  %.not21.i = icmp samesign ugt i32 %i.pq, %i.ps
  %i.pt = select i1 %.not21.i, i8 %i.pj, i8 %i.pg
  %.tr629 = select i1 %or.cond.i647, i8 %i.pt, i8 %i.pd
  %.narrow630 = add i8 %.tr629, %i.pa
  %i.pu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv943
  store i8 %.narrow630, ptr %i.pu, align 1, !tbaa !35
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 1 ; 2 uses
  %exitcond947.not = icmp eq i64 %indvars.iv.next944, %wide.trip.count946
  br i1 %exitcond947.not, label %.loopexit712, label %.lr.ph814, !llvm.loop !323

.lr.ph812:                                        ; preds = %.lr.ph812.prol.loopexit, %.lr.ph812
  %indvars.iv938 = phi i64 [ %indvars.iv.next939.1, %.lr.ph812 ], [ %indvars.iv938.unr, %.lr.ph812.prol.loopexit ] ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv938
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !35
  %i.px = sub nsw i64 %indvars.iv938, %i.fe
  %i.py = getelementptr inbounds i8, ptr %i.dv, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !35
  %i.qa = lshr i8 %i.pz, 1
  %.narrow628 = add i8 %i.qa, %i.pw
  %i.qb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv938
  store i8 %.narrow628, ptr %i.qb, align 1, !tbaa !35
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next939
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !35
  %i.qe = sub nsw i64 %indvars.iv.next939, %i.fe
  %i.qf = getelementptr inbounds i8, ptr %i.dv, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !35
  %i.qh = lshr i8 %i.qg, 1
  %.narrow628.1 = add i8 %i.qh, %i.qd
  %i.qi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next939
  store i8 %.narrow628.1, ptr %i.qi, align 1, !tbaa !35
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv938, 2 ; 2 uses
  %exitcond942.not.1 = icmp eq i64 %indvars.iv.next939.1, %wide.trip.count941
  br i1 %exitcond942.not.1, label %.loopexit712, label %.lr.ph812, !llvm.loop !324

.lr.ph810:                                        ; preds = %.lr.ph810.prol.loopexit, %.lr.ph810
  %indvars.iv933 = phi i64 [ %indvars.iv.next934.1, %.lr.ph810 ], [ %indvars.iv933.unr, %.lr.ph810.prol.loopexit ] ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv933
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !35
  %i.ql = sub nsw i64 %indvars.iv933, %i.ea
  %i.qm = getelementptr inbounds i8, ptr %i.dv, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !35
  %.narrow626 = add i8 %i.qn, %i.qk
  %i.qo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv933
  store i8 %.narrow626, ptr %i.qo, align 1, !tbaa !35
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 1 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.1574, i64 %indvars.iv.next934
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !35
  %i.qr = sub nsw i64 %indvars.iv.next934, %i.ea
  %i.qs = getelementptr inbounds i8, ptr %i.dv, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !35
  %.narrow626.1 = add i8 %i.qt, %i.qq
  %i.qu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next934
  store i8 %.narrow626.1, ptr %i.qu, align 1, !tbaa !35
  %indvars.iv.next934.1 = add nuw nsw i64 %indvars.iv933, 2 ; 2 uses
  %exitcond937.not.1 = icmp eq i64 %indvars.iv.next934.1, %wide.trip.count936
  br i1 %exitcond937.not.1, label %.loopexit712, label %.lr.ph810, !llvm.loop !325

.loopexit712:                                     ; preds = %.lr.ph810.prol.loopexit, %.lr.ph810, %.lr.ph812.prol.loopexit, %.lr.ph812, %.lr.ph814, %.lr.ph816.prol.loopexit, %.lr.ph816, %.lr.ph818.prol.loopexit, %.lr.ph818, %.lr.ph820.prol.loopexit, %.lr.ph820, %middle.block1239, %vec.epilog.middle.block1253, %middle.block1206, %vec.epilog.middle.block1220, %middle.block1171, %vec.epilog.middle.block1187, %middle.block1133, %vec.epilog.middle.block1148, %middle.block1096, %vec.epilog.middle.block1110, %middle.block, %vec.epilog.middle.block, %.preheader721, %.preheader719, %.preheader717, %.preheader715, %.preheader713, %.preheader711, %bb.ae, %bb.ad
  %i.qv = sext i32 %i.dy to i64
  %i.qw = getelementptr inbounds i8, ptr %.1574, i64 %i.qv
  br label %.loopexit723

bb.af:                                            ; preds = %bb.ac
  switch i8 %.0522.in, label %.loopexit725 [
    i8 0, label %.preheader724
    i8 1, label %.preheader726
    i8 2, label %.preheader728
    i8 3, label %.preheader730
    i8 4, label %.preheader732
    i8 5, label %.preheader734
    i8 6, label %.preheader736
  ]

.preheader736:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader710.lr.ph

.preheader710.lr.ph:                              ; preds = %.preheader736
  %i.qx = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count900 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep1540.a = getelementptr i8, ptr %.0531, i64 %i.bx
  %i.qy = add nsw i64 %.sink1032, %wide.trip.count900 ; 2 uses
  %scevgep1541 = getelementptr i8, ptr %scevgep1540.a, i64 %i.qy ; 2 uses
  %i.qz = mul nsw i64 %i.bw, %i.qx
  %i.ra = getelementptr i8, ptr %.1574, i64 %i.qz
  %scevgep1542 = getelementptr i8, ptr %i.ra, i64 %wide.trip.count900
  %scevgep1543 = getelementptr i8, ptr %.0531, i64 %i.bt
  %scevgep1544 = getelementptr i8, ptr %scevgep1543, i64 %.sink1032
  %scevgep1545 = getelementptr i8, ptr %.0531, i64 %i.bz
  %scevgep1546 = getelementptr i8, ptr %scevgep1545, i64 %i.qy
  %min.iters.check1556 = icmp ult i32 %.1546, 4
  %bound01547 = icmp ult ptr %i.dv, %scevgep1542
  %bound11548 = icmp ult ptr %.1574, %scevgep1541
  %found.conflict1549 = and i1 %bound01547, %bound11548
  %11 = or i1 %found.conflict1549, %stride.check1550
  %bound01552 = icmp ult ptr %i.dv, %scevgep1546
  %bound11553 = icmp ult ptr %scevgep1544, %scevgep1541
  %found.conflict1554 = and i1 %bound01552, %bound11553
  %conflict.rdx1555 = or i1 %11, %found.conflict1554
  %min.iters.check1558 = icmp ult i32 %.1546, 32
  %i.rb = and i64 %wide.trip.count900, 28
  %n.vec1560 = and i64 %wide.trip.count900, 2147483616 ; 4 uses
  %cmp.n1569 = icmp eq i64 %n.vec1560, %wide.trip.count900
  %min.epilog.iters.check1574 = icmp eq i64 %i.rb, 0
  %n.vec1576 = and i64 %wide.trip.count900, 2147483644 ; 3 uses
  %cmp.n1583 = icmp eq i64 %n.vec1576, %wide.trip.count900
  %xtraiter = and i64 %wide.trip.count900, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.rc = add nsw i64 %wide.trip.count900, -1
  br label %.preheader710

.preheader734:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader709.lr.ph

.preheader709.lr.ph:                              ; preds = %.preheader734
  %i.rd = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count905 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep1494.a = getelementptr i8, ptr %.0531, i64 %i.bs
  %i.re = add nsw i64 %.sink1032, %wide.trip.count905 ; 2 uses
  %scevgep1495.a = getelementptr i8, ptr %scevgep1494.a, i64 %i.re ; 2 uses
  %i.rf = mul nsw i64 %i.br, %i.rd
  %i.rg = getelementptr i8, ptr %.1574, i64 %i.rf
  %scevgep1496 = getelementptr i8, ptr %i.rg, i64 %wide.trip.count905
  %scevgep1497 = getelementptr i8, ptr %.0531, i64 %i.bt
  %scevgep1498 = getelementptr i8, ptr %scevgep1497, i64 %.sink1032
  %scevgep1499 = getelementptr i8, ptr %.0531, i64 %i.bv
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.re
  %min.iters.check1510 = icmp ult i32 %.1546, 4
  %bound01501 = icmp ult ptr %i.dv, %scevgep1496
  %bound11502 = icmp ult ptr %.1574, %scevgep1495.a
  %found.conflict1503 = and i1 %bound01501, %bound11502
  %12 = or i1 %found.conflict1503, %stride.check1504
  %bound01506 = icmp ult ptr %i.dv, %scevgep1500
  %bound11507 = icmp ult ptr %scevgep1498, %scevgep1495.a
  %found.conflict1508 = and i1 %bound01506, %bound11507
  %conflict.rdx1509 = or i1 %12, %found.conflict1508
  %min.iters.check1512 = icmp ult i32 %.1546, 32
  %i.rh = and i64 %wide.trip.count905, 28
  %n.vec1514 = and i64 %wide.trip.count905, 2147483616 ; 4 uses
  %cmp.n1523 = icmp eq i64 %n.vec1514, %wide.trip.count905
  %min.epilog.iters.check1528 = icmp eq i64 %i.rh, 0
  %n.vec1530 = and i64 %wide.trip.count905, 2147483644 ; 3 uses
  %cmp.n1537 = icmp eq i64 %n.vec1530, %wide.trip.count905
  %xtraiter1633 = and i64 %wide.trip.count905, 1
  %lcmp.mod1634.not = icmp eq i64 %xtraiter1633, 0
  %i.ri = add nsw i64 %wide.trip.count905, -1
  br label %.preheader709

.preheader732:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader708.lr.ph

.preheader708.lr.ph:                              ; preds = %.preheader732
  %i.rj = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count910 = zext i32 %.1546 to i64    ; 8 uses
  %scevgep1432.a = getelementptr i8, ptr %.0531, i64 %i.bk
  %i.rk = add nsw i64 %.sink1032, %wide.trip.count910 ; 4 uses
  %scevgep1433.a = getelementptr i8, ptr %scevgep1432.a, i64 %i.rk ; 4 uses
  %i.rl = mul nsw i64 %i.bj, %i.rj
  %i.rm = getelementptr i8, ptr %.1574, i64 %i.rl
  %scevgep1434.a = getelementptr i8, ptr %i.rm, i64 %wide.trip.count910
  %scevgep1435.a = getelementptr i8, ptr %.0531, i64 %i.bf
  %scevgep1436.a = getelementptr i8, ptr %scevgep1435.a, i64 %.sink1032
  %scevgep1437.a = getelementptr i8, ptr %.0531, i64 %i.bm
  %scevgep1438.a = getelementptr i8, ptr %scevgep1437.a, i64 %i.rk
  %scevgep1439.a = getelementptr i8, ptr %.0531, i64 %i.bn
  %scevgep1440.a = getelementptr i8, ptr %scevgep1439.a, i64 %i.rk
  %scevgep1441 = getelementptr i8, ptr %.0531, i64 %i.bo
  %scevgep1442 = getelementptr i8, ptr %scevgep1441, i64 %.sink1032
  %scevgep1443 = getelementptr i8, ptr %.0531, i64 %i.bp
  %scevgep1444 = getelementptr i8, ptr %scevgep1443, i64 %i.rk
  %min.iters.check1462 = icmp ult i32 %.1546, 4
  %bound01445.a = icmp ult ptr %i.dv, %scevgep1434.a
  %bound11446.a = icmp ult ptr %.1574, %scevgep1433.a
  %found.conflict1447.a = and i1 %bound01445.a, %bound11446.a
  %13 = or i1 %found.conflict1447.a, %stride.check1448
  %bound01450 = icmp ult ptr %i.dv, %scevgep1438.a
  %bound11451 = icmp ult ptr %scevgep1436.a, %scevgep1433.a
  %found.conflict1452 = and i1 %bound01450, %bound11451
  %conflict.rdx1453 = or i1 %13, %found.conflict1452
  %bound01454 = icmp ult ptr %i.dv, %scevgep1440.a
  %bound11455 = icmp ult ptr %i.dw, %scevgep1433.a
  %found.conflict1456 = and i1 %bound01454, %bound11455
  %conflict.rdx1457 = or i1 %conflict.rdx1453, %found.conflict1456
  %bound01458 = icmp ult ptr %i.dv, %scevgep1444
  %bound11459 = icmp ult ptr %scevgep1442, %scevgep1433.a
  %found.conflict1460 = and i1 %bound01458, %bound11459
  %conflict.rdx1461 = or i1 %conflict.rdx1457, %found.conflict1460
  %min.iters.check1464 = icmp ult i32 %.1546, 16
  %i.rn = and i64 %wide.trip.count910, 12
  %n.vec1466 = and i64 %wide.trip.count910, 2147483632 ; 4 uses
  %cmp.n1475 = icmp eq i64 %n.vec1466, %wide.trip.count910
  %min.epilog.iters.check1480 = icmp eq i64 %i.rn, 0
  %n.vec1482 = and i64 %wide.trip.count910, 2147483644 ; 3 uses
  %cmp.n1491 = icmp eq i64 %n.vec1482, %wide.trip.count910
  br label %.preheader708

.preheader730:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader707.lr.ph

.preheader707.lr.ph:                              ; preds = %.preheader730
  %i.ro = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count915 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep1377.a = getelementptr i8, ptr %.0531, i64 %i.bd
  %i.rp = add nsw i64 %.sink1032, %wide.trip.count915 ; 3 uses
  %scevgep1378.a = getelementptr i8, ptr %scevgep1377.a, i64 %i.rp ; 3 uses
  %i.rq = mul nsw i64 %i.bc, %i.ro
  %i.rr = getelementptr i8, ptr %.1574, i64 %i.rq
  %scevgep1379.a = getelementptr i8, ptr %i.rr, i64 %wide.trip.count915
  %scevgep1380.a = getelementptr i8, ptr %.0531, i64 %i.be
  %scevgep1381.a = getelementptr i8, ptr %scevgep1380.a, i64 %i.rp
  %scevgep1382.a = getelementptr i8, ptr %.0531, i64 %i.bf
  %scevgep1383 = getelementptr i8, ptr %scevgep1382.a, i64 %.sink1032
  %scevgep1384 = getelementptr i8, ptr %.0531, i64 %i.bh
  %scevgep1385 = getelementptr i8, ptr %scevgep1384, i64 %i.rp
  %min.iters.check1399 = icmp ult i32 %.1546, 8
  %bound01386 = icmp ult ptr %i.dv, %scevgep1379.a
  %bound11387 = icmp ult ptr %.1574, %scevgep1378.a
  %found.conflict1388 = and i1 %bound01386, %bound11387
  %14 = or i1 %found.conflict1388, %stride.check1389
  %bound01391.a = icmp ult ptr %i.dv, %scevgep1381.a
  %bound11392.a = icmp ult ptr %i.dw, %scevgep1378.a
  %found.conflict1393.a = and i1 %bound01391.a, %bound11392.a
  %conflict.rdx1394.a = or i1 %14, %found.conflict1393.a
  %bound01395 = icmp ult ptr %i.dv, %scevgep1385
  %bound11396 = icmp ult ptr %scevgep1383, %scevgep1378.a
  %found.conflict1397 = and i1 %bound01395, %bound11396
  %conflict.rdx1398 = or i1 %conflict.rdx1394.a, %found.conflict1397
  %min.iters.check1401 = icmp ult i32 %.1546, 32
  %i.rs = and i64 %wide.trip.count915, 24
  %n.vec1403 = and i64 %wide.trip.count915, 2147483616 ; 4 uses
  %cmp.n1414 = icmp eq i64 %n.vec1403, %wide.trip.count915
  %min.epilog.iters.check1419 = icmp eq i64 %i.rs, 0
  %n.vec1421 = and i64 %wide.trip.count915, 2147483640 ; 3 uses
  %cmp.n1429 = icmp eq i64 %n.vec1421, %wide.trip.count915
  %xtraiter1635.a = and i64 %wide.trip.count915, 1
  %lcmp.mod1636.not.a = icmp eq i64 %xtraiter1635.a, 0
  %i.rt = add nsw i64 %wide.trip.count915, -1
  br label %.preheader707

.preheader728:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader706.lr.ph

.preheader706.lr.ph:                              ; preds = %.preheader728
  %i.ru = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count920 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep1333.a = getelementptr i8, ptr %.0531, i64 %i.ba
  %i.rv = add nsw i64 %.sink1032, %wide.trip.count920 ; 2 uses
  %scevgep1334.a = getelementptr i8, ptr %scevgep1333.a, i64 %i.rv ; 2 uses
  %i.rw = mul nsw i64 %i.az, %i.ru
  %i.rx = getelementptr i8, ptr %.1574, i64 %i.rw
  %scevgep1335.a = getelementptr i8, ptr %i.rx, i64 %wide.trip.count920
  %scevgep1336 = getelementptr i8, ptr %.0531, i64 %i.bb
  %scevgep1337 = getelementptr i8, ptr %scevgep1336, i64 %i.rv
  %min.iters.check1347 = icmp ult i32 %.1546, 4
  %bound01338 = icmp ult ptr %i.dv, %scevgep1335.a
  %bound11339 = icmp ult ptr %.1574, %scevgep1334.a
  %found.conflict1340 = and i1 %bound01338, %bound11339
  %15 = or i1 %found.conflict1340, %stride.check1341
  %bound01343 = icmp ult ptr %i.dv, %scevgep1337
  %bound11344 = icmp ult ptr %i.dw, %scevgep1334.a
  %found.conflict1345 = and i1 %bound01343, %bound11344
  %conflict.rdx1346 = or i1 %15, %found.conflict1345
  %min.iters.check1349 = icmp ult i32 %.1546, 32
  %i.ry = and i64 %wide.trip.count920, 28
  %n.vec1351 = and i64 %wide.trip.count920, 2147483616 ; 4 uses
  %cmp.n1360 = icmp eq i64 %n.vec1351, %wide.trip.count920
  %min.epilog.iters.check1365 = icmp eq i64 %i.ry, 0
  %n.vec1367 = and i64 %wide.trip.count920, 2147483644 ; 3 uses
  %cmp.n1374 = icmp eq i64 %n.vec1367, %wide.trip.count920
  %xtraiter1637 = and i64 %wide.trip.count920, 3  ; 2 uses
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1637, 0
  br label %.preheader706

.preheader726:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader705.lr.ph

.preheader705.lr.ph:                              ; preds = %.preheader726
  %i.rz = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count925 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep1287.a = getelementptr i8, ptr %.0531, i64 %i.au
  %i.sa = add nsw i64 %.sink1032, %wide.trip.count925 ; 2 uses
  %scevgep1288.a = getelementptr i8, ptr %scevgep1287.a, i64 %i.sa ; 2 uses
  %i.sb = mul nsw i64 %i.at, %i.rz
  %i.sc = getelementptr i8, ptr %.1574, i64 %i.sb
  %scevgep1289.a = getelementptr i8, ptr %i.sc, i64 %wide.trip.count925
  %scevgep1290.a = getelementptr i8, ptr %.0531, i64 %i.av
  %scevgep1291.a = getelementptr i8, ptr %scevgep1290.a, i64 %.sink1032
  %scevgep1292.a = getelementptr i8, ptr %.0531, i64 %i.ax
  %scevgep1293 = getelementptr i8, ptr %scevgep1292.a, i64 %i.sa
  %min.iters.check1303.a = icmp ult i32 %.1546, 4
  %bound01294 = icmp ult ptr %i.dv, %scevgep1289.a
  %bound11295 = icmp ult ptr %.1574, %scevgep1288.a
  %found.conflict1296 = and i1 %bound01294, %bound11295
  %16 = or i1 %found.conflict1296, %stride.check1297
  %bound01299 = icmp ult ptr %i.dv, %scevgep1293
  %bound11300 = icmp ult ptr %scevgep1291.a, %scevgep1288.a
  %found.conflict1301 = and i1 %bound01299, %bound11300
  %conflict.rdx1302 = or i1 %16, %found.conflict1301
  %min.iters.check1305 = icmp ult i32 %.1546, 32
  %i.sd = and i64 %wide.trip.count925, 28
  %n.vec1307 = and i64 %wide.trip.count925, 2147483616 ; 4 uses
  %cmp.n1316 = icmp eq i64 %n.vec1307, %wide.trip.count925
  %min.epilog.iters.check1321 = icmp eq i64 %i.sd, 0
  %n.vec1323 = and i64 %wide.trip.count925, 2147483644 ; 3 uses
  %cmp.n1330 = icmp eq i64 %n.vec1323, %wide.trip.count925
  %xtraiter1639 = and i64 %wide.trip.count925, 1
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1639, 0
  %i.se = add nsw i64 %wide.trip.count925, -1
  br label %.preheader705

.preheader724:                                    ; preds = %bb.af
  br i1 %.not608744, label %.loopexit725, label %.preheader704.lr.ph

.preheader704.lr.ph:                              ; preds = %.preheader724
  %i.sf = sext i32 %.1546 to i64                  ; 3 uses
  %wide.trip.count930 = zext i32 %.1546 to i64    ; 10 uses
  %scevgep = getelementptr i8, ptr %.0531, i64 %i.as
  %i.sg = getelementptr i8, ptr %scevgep, i64 %.sink1032
  %scevgep1257 = getelementptr i8, ptr %i.sg, i64 %wide.trip.count930
  %i.sh = mul nsw i64 %i.ar, %i.sf
  %i.si = getelementptr i8, ptr %.1574, i64 %i.sh
  %scevgep1258 = getelementptr i8, ptr %i.si, i64 %wide.trip.count930
  %min.iters.check1260 = icmp ult i32 %.1546, 4
  %bound0 = icmp ult ptr %i.dv, %scevgep1258
  %bound1 = icmp ult ptr %.1574, %scevgep1257
  %found.conflict = and i1 %bound0, %bound1
  %17 = or i1 %found.conflict, %stride.check
  %min.iters.check1262 = icmp ult i32 %.1546, 32
  %i.sj = and i64 %wide.trip.count930, 28
  %n.vec1264 = and i64 %wide.trip.count930, 2147483616 ; 4 uses
  %cmp.n1271 = icmp eq i64 %n.vec1264, %wide.trip.count930
  %min.epilog.iters.check1276 = icmp eq i64 %i.sj, 0
  %n.vec1278 = and i64 %wide.trip.count930, 2147483644 ; 3 uses
  %cmp.n1284 = icmp eq i64 %n.vec1278, %wide.trip.count930
  %xtraiter1642 = and i64 %wide.trip.count930, 3  ; 2 uses
  %lcmp.mod1643.not = icmp eq i64 %xtraiter1642, 0
  br label %.preheader704

.preheader704:                                    ; preds = %.preheader704.lr.ph, %._crit_edge798
  %.0561803 = phi i32 [ %.6567743, %.preheader704.lr.ph ], [ %.0561, %._crit_edge798 ]
  %.2533802 = phi ptr [ %i.dv, %.preheader704.lr.ph ], [ %i.tl, %._crit_edge798 ] ; 9 uses
  %.2575801 = phi ptr [ %.1574, %.preheader704.lr.ph ], [ %i.tk, %._crit_edge798 ] ; 8 uses
  br i1 %i.cs, label %iter.check1273, label %._crit_edge798

iter.check1273:                                   ; preds = %.preheader704
  %brmerge = select i1 %min.iters.check1260, i1 true, i1 %17
  br i1 %brmerge, label %.lr.ph797.preheader, label %vector.main.loop.iter.check1261

vector.main.loop.iter.check1261:                  ; preds = %iter.check1273
  br i1 %min.iters.check1262, label %vec.epilog.ph1277, label %vector.body1265

vector.body1265:                                  ; preds = %vector.main.loop.iter.check1261, %vector.body1265
  %index1266 = phi i64 [ %index.next1269, %vector.body1265 ], [ 0, %vector.main.loop.iter.check1261 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.2575801, i64 %index1266 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load1267.a = load <16 x i8>, ptr %i.sk, align 1, !tbaa !35, !alias.scope !398
  %wide.load1268 = load <16 x i8>, ptr %i.sl, align 1, !tbaa !35, !alias.scope !398
  %i.sm = getelementptr inbounds nuw i8, ptr %.2533802, i64 %index1266 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store <16 x i8> %wide.load1267.a, ptr %i.sm, align 1, !tbaa !35, !alias.scope !399, !noalias !398
  store <16 x i8> %wide.load1268, ptr %i.sn, align 1, !tbaa !35, !alias.scope !399, !noalias !398
  %index.next1269 = add nuw i64 %index1266, 32    ; 2 uses
  %i.so = icmp eq i64 %index.next1269, %n.vec1264
  br i1 %i.so, label %middle.block1270, label %vector.body1265, !llvm.loop !329

middle.block1270:                                 ; preds = %vector.body1265
  br i1 %cmp.n1271, label %._crit_edge798, label %vec.epilog.iter.check1275

vec.epilog.iter.check1275:                        ; preds = %middle.block1270
  br i1 %min.epilog.iters.check1276, label %.lr.ph797.preheader, label %vec.epilog.ph1277, !prof !68

vec.epilog.ph1277:                                ; preds = %vector.main.loop.iter.check1261, %vec.epilog.iter.check1275
  %vec.epilog.resume.val1272 = phi i64 [ %n.vec1264, %vec.epilog.iter.check1275 ], [ 0, %vector.main.loop.iter.check1261 ]
  br label %vec.epilog.vector.body1279

vec.epilog.vector.body1279:                       ; preds = %vec.epilog.vector.body1279, %vec.epilog.ph1277
  %index1280 = phi i64 [ %vec.epilog.resume.val1272, %vec.epilog.ph1277 ], [ %index.next1282, %vec.epilog.vector.body1279 ] ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.2575801, i64 %index1280
  %wide.load1281 = load <4 x i8>, ptr %i.sp, align 1, !tbaa !35, !alias.scope !398
  %i.sq = getelementptr inbounds nuw i8, ptr %.2533802, i64 %index1280
  store <4 x i8> %wide.load1281, ptr %i.sq, align 1, !tbaa !35, !alias.scope !399, !noalias !398
  %index.next1282 = add nuw i64 %index1280, 4     ; 2 uses
  %i.sr = icmp eq i64 %index.next1282, %n.vec1278
  br i1 %i.sr, label %vec.epilog.middle.block1283, label %vec.epilog.vector.body1279, !llvm.loop !330

vec.epilog.middle.block1283:                      ; preds = %vec.epilog.vector.body1279
  br i1 %cmp.n1284, label %._crit_edge798, label %.lr.ph797.preheader

.lr.ph797.preheader:                              ; preds = %iter.check1273, %vec.epilog.iter.check1275, %vec.epilog.middle.block1283
  %indvars.iv927.ph = phi i64 [ 0, %iter.check1273 ], [ %n.vec1278, %vec.epilog.middle.block1283 ], [ %n.vec1264, %vec.epilog.iter.check1275 ] ; 3 uses
  br i1 %lcmp.mod1643.not, label %.lr.ph797.prol.loopexit, label %.lr.ph797.prol

.lr.ph797.prol:                                   ; preds = %.lr.ph797.preheader, %.lr.ph797.prol
  %indvars.iv927.prol = phi i64 [ %indvars.iv.next928.prol, %.lr.ph797.prol ], [ %indvars.iv927.ph, %.lr.ph797.preheader ] ; 3 uses
  %prol.iter1644 = phi i64 [ %prol.iter1644.next, %.lr.ph797.prol ], [ 0, %.lr.ph797.preheader ]
  %i.ss = getelementptr inbounds nuw i8, ptr %.2575801, i64 %indvars.iv927.prol
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !35
  %i.su = getelementptr inbounds nuw i8, ptr %.2533802, i64 %indvars.iv927.prol
  store i8 %i.st, ptr %i.su, align 1, !tbaa !35
  %indvars.iv.next928.prol = add nuw nsw i64 %indvars.iv927.prol, 1 ; 2 uses
  %prol.iter1644.next = add i64 %prol.iter1644, 1 ; 2 uses
  %prol.iter1644.cmp.not = icmp eq i64 %prol.iter1644.next, %xtraiter1642
  br i1 %prol.iter1644.cmp.not, label %.lr.ph797.prol.loopexit, label %.lr.ph797.prol, !llvm.loop !331

.lr.ph797.prol.loopexit:                          ; preds = %.lr.ph797.prol, %.lr.ph797.preheader
  %indvars.iv927.unr = phi i64 [ %indvars.iv927.ph, %.lr.ph797.preheader ], [ %indvars.iv.next928.prol, %.lr.ph797.prol ]
  %i.sv = sub nsw i64 %indvars.iv927.ph, %wide.trip.count930
  %i.sw = icmp ugt i64 %i.sv, -4
  br i1 %i.sw, label %._crit_edge798, label %.lr.ph797

.lr.ph797:                                        ; preds = %.lr.ph797.prol.loopexit, %.lr.ph797
  %indvars.iv927 = phi i64 [ %indvars.iv.next928.3, %.lr.ph797 ], [ %indvars.iv927.unr, %.lr.ph797.prol.loopexit ] ; 6 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.2575801, i64 %indvars.iv927
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !35
  %i.sz = getelementptr inbounds nuw i8, ptr %.2533802, i64 %indvars.iv927
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !35
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.2575801, i64 %indvars.iv.next928
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !35
  %i.tc = getelementptr inbounds nuw i8, ptr %.2533802, i64 %indvars.iv.next928
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !35
  %indvars.iv.next928.1 = add nuw nsw i64 %indvars.iv927, 2 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.2575801, i64 %indvars.iv.next928.1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !35
  %i.tf = getelementptr inbounds nuw i8, ptr %.2533802, i64 %indvars.iv.next928.1
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !35
  %indvars.iv.next928.2 = add nuw nsw i64 %indvars.iv927, 3 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.2575801, i64 %indvars.iv.next928.2
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !35
  %i.ti = getelementptr inbounds nuw i8, ptr %.2533802, i64 %indvars.iv.next928.2
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !35
  %indvars.iv.next928.3 = add nuw nsw i64 %indvars.iv927, 4 ; 2 uses
  %exitcond931.not.3 = icmp eq i64 %indvars.iv.next928.3, %wide.trip.count930
  br i1 %exitcond931.not.3, label %._crit_edge798, label %.lr.ph797, !llvm.loop !332

._crit_edge798:                                   ; preds = %.lr.ph797.prol.loopexit, %.lr.ph797, %middle.block1270, %vec.epilog.middle.block1283, %.preheader704
  %i.tj = getelementptr inbounds i8, ptr %.2533802, i64 %i.sf
  store i8 -1, ptr %i.tj, align 1, !tbaa !35
  %i.tk = getelementptr inbounds i8, ptr %.2575801, i64 %i.sf ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %.2533802, i64 %9
  %.0561 = add i32 %.0561803, -1                  ; 2 uses
  %.not624 = icmp eq i32 %.0561, 0
  br i1 %.not624, label %.loopexit725, label %.preheader704, !llvm.loop !333

.preheader705:                                    ; preds = %.preheader705.lr.ph, %._crit_edge789
  %.1562794 = phi i32 [ %.6567743, %.preheader705.lr.ph ], [ %.1562, %._crit_edge789 ]
  %.3534793 = phi ptr [ %i.dv, %.preheader705.lr.ph ], [ %i.ux, %._crit_edge789 ] ; 12 uses
  %.3576792 = phi ptr [ %.1574, %.preheader705.lr.ph ], [ %i.uw, %._crit_edge789 ] ; 6 uses
  br i1 %i.cs, label %iter.check1318, label %._crit_edge789

iter.check1318:                                   ; preds = %.preheader705
  %brmerge1685 = select i1 %min.iters.check1303.a, i1 true, i1 %conflict.rdx1302
  br i1 %brmerge1685, label %.lr.ph788.preheader, label %vector.main.loop.iter.check1304

vector.main.loop.iter.check1304:                  ; preds = %iter.check1318
  br i1 %min.iters.check1305, label %vec.epilog.ph1322, label %vector.body1308

vector.body1308:                                  ; preds = %vector.main.loop.iter.check1304, %vector.body1308
  %index1309 = phi i64 [ %index.next1314, %vector.body1308 ], [ 0, %vector.main.loop.iter.check1304 ] ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.3576792, i64 %index1309 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %wide.load1310.a = load <16 x i8>, ptr %i.tm, align 1, !tbaa !35, !alias.scope !400
  %wide.load1311.a = load <16 x i8>, ptr %i.tn, align 1, !tbaa !35, !alias.scope !400
  %i.to = sub nsw i64 %index1309, %9
  %i.tp = getelementptr inbounds i8, ptr %.3534793, i64 %i.to ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %wide.load1312 = load <16 x i8>, ptr %i.tp, align 1, !tbaa !35, !alias.scope !401
  %wide.load1313 = load <16 x i8>, ptr %i.tq, align 1, !tbaa !35, !alias.scope !401
  %i.tr = add <16 x i8> %wide.load1312, %wide.load1310.a
  %i.ts = add <16 x i8> %wide.load1313, %wide.load1311.a
  %i.tt = getelementptr inbounds nuw i8, ptr %.3534793, i64 %index1309 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store <16 x i8> %i.tr, ptr %i.tt, align 1, !tbaa !35, !alias.scope !402, !noalias !403
  store <16 x i8> %i.ts, ptr %i.tu, align 1, !tbaa !35, !alias.scope !402, !noalias !403
  %index.next1314 = add nuw i64 %index1309, 32    ; 2 uses
  %i.tv = icmp eq i64 %index.next1314, %n.vec1307
  br i1 %i.tv, label %middle.block1315, label %vector.body1308, !llvm.loop !338

middle.block1315:                                 ; preds = %vector.body1308
  br i1 %cmp.n1316, label %._crit_edge789, label %vec.epilog.iter.check1320

vec.epilog.iter.check1320:                        ; preds = %middle.block1315
  br i1 %min.epilog.iters.check1321, label %.lr.ph788.preheader, label %vec.epilog.ph1322, !prof !68

vec.epilog.ph1322:                                ; preds = %vector.main.loop.iter.check1304, %vec.epilog.iter.check1320
  %vec.epilog.resume.val1317 = phi i64 [ %n.vec1307, %vec.epilog.iter.check1320 ], [ 0, %vector.main.loop.iter.check1304 ]
  br label %vec.epilog.vector.body1324

vec.epilog.vector.body1324:                       ; preds = %vec.epilog.vector.body1324, %vec.epilog.ph1322
  %index1325 = phi i64 [ %vec.epilog.resume.val1317, %vec.epilog.ph1322 ], [ %index.next1328, %vec.epilog.vector.body1324 ] ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.3576792, i64 %index1325
  %wide.load1326 = load <4 x i8>, ptr %i.tw, align 1, !tbaa !35, !alias.scope !400
  %i.tx = sub nsw i64 %index1325, %9
  %i.ty = getelementptr inbounds i8, ptr %.3534793, i64 %i.tx
  %wide.load1327 = load <4 x i8>, ptr %i.ty, align 1, !tbaa !35, !alias.scope !401
  %i.tz = add <4 x i8> %wide.load1327, %wide.load1326
  %i.ua = getelementptr inbounds nuw i8, ptr %.3534793, i64 %index1325
  store <4 x i8> %i.tz, ptr %i.ua, align 1, !tbaa !35, !alias.scope !402, !noalias !403
  %index.next1328 = add nuw i64 %index1325, 4     ; 2 uses
  %i.ub = icmp eq i64 %index.next1328, %n.vec1323
  br i1 %i.ub, label %vec.epilog.middle.block1329, label %vec.epilog.vector.body1324, !llvm.loop !339

vec.epilog.middle.block1329:                      ; preds = %vec.epilog.vector.body1324
  br i1 %cmp.n1330, label %._crit_edge789, label %.lr.ph788.preheader

.lr.ph788.preheader:                              ; preds = %iter.check1318, %vec.epilog.iter.check1320, %vec.epilog.middle.block1329
  %indvars.iv922.ph = phi i64 [ 0, %iter.check1318 ], [ %n.vec1323, %vec.epilog.middle.block1329 ], [ %n.vec1307, %vec.epilog.iter.check1320 ] ; 6 uses
  br i1 %lcmp.mod1640.not, label %.lr.ph788.prol.loopexit, label %.lr.ph788.prol

.lr.ph788.prol:                                   ; preds = %.lr.ph788.preheader
  %i.uc = getelementptr inbounds nuw i8, ptr %.3576792, i64 %indvars.iv922.ph
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !35
  %i.ue = sub nsw i64 %indvars.iv922.ph, %9
  %i.uf = getelementptr inbounds i8, ptr %.3534793, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !35
  %.narrow623.prol = add i8 %i.ug, %i.ud
  %i.uh = getelementptr inbounds nuw i8, ptr %.3534793, i64 %indvars.iv922.ph
  store i8 %.narrow623.prol, ptr %i.uh, align 1, !tbaa !35
  %indvars.iv.next923.prol = or disjoint i64 %indvars.iv922.ph, 1
  br label %.lr.ph788.prol.loopexit

.lr.ph788.prol.loopexit:                          ; preds = %.lr.ph788.prol, %.lr.ph788.preheader
  %indvars.iv922.unr = phi i64 [ %indvars.iv922.ph, %.lr.ph788.preheader ], [ %indvars.iv.next923.prol, %.lr.ph788.prol ]
  %i.ui = icmp eq i64 %indvars.iv922.ph, %i.se
  br i1 %i.ui, label %._crit_edge789, label %.lr.ph788

.lr.ph788:                                        ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788
  %indvars.iv922 = phi i64 [ %indvars.iv.next923.1, %.lr.ph788 ], [ %indvars.iv922.unr, %.lr.ph788.prol.loopexit ] ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.3576792, i64 %indvars.iv922
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !35
  %i.ul = sub nsw i64 %indvars.iv922, %9
  %i.um = getelementptr inbounds i8, ptr %.3534793, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !35
  %.narrow623 = add i8 %i.un, %i.uk
  %i.uo = getelementptr inbounds nuw i8, ptr %.3534793, i64 %indvars.iv922
  store i8 %.narrow623, ptr %i.uo, align 1, !tbaa !35
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.3576792, i64 %indvars.iv.next923
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !35
  %i.ur = sub nsw i64 %indvars.iv.next923, %9
  %i.us = getelementptr inbounds i8, ptr %.3534793, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !35
  %.narrow623.1 = add i8 %i.ut, %i.uq
  %i.uu = getelementptr inbounds nuw i8, ptr %.3534793, i64 %indvars.iv.next923
  store i8 %.narrow623.1, ptr %i.uu, align 1, !tbaa !35
  %indvars.iv.next923.1 = add nuw nsw i64 %indvars.iv922, 2 ; 2 uses
  %exitcond926.not.1 = icmp eq i64 %indvars.iv.next923.1, %wide.trip.count925
  br i1 %exitcond926.not.1, label %._crit_edge789, label %.lr.ph788, !llvm.loop !340

._crit_edge789:                                   ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788, %middle.block1315, %vec.epilog.middle.block1329, %.preheader705
  %i.uv = getelementptr inbounds i8, ptr %.3534793, i64 %i.rz
  store i8 -1, ptr %i.uv, align 1, !tbaa !35
  %i.uw = getelementptr inbounds i8, ptr %.3576792, i64 %i.rz ; 2 uses
  %i.ux = getelementptr inbounds i8, ptr %.3534793, i64 %9
  %.1562 = add i32 %.1562794, -1                  ; 2 uses
  %.not621 = icmp eq i32 %.1562, 0
  br i1 %.not621, label %.loopexit725, label %.preheader705, !llvm.loop !341

.preheader706:                                    ; preds = %.preheader706.lr.ph, %._crit_edge779
  %.2563785 = phi i32 [ %.6567743, %.preheader706.lr.ph ], [ %.2563, %._crit_edge779 ]
  %.3526784 = phi ptr [ %i.dw, %.preheader706.lr.ph ], [ %i.wq, %._crit_edge779 ] ; 8 uses
  %.4535783 = phi ptr [ %i.dv, %.preheader706.lr.ph ], [ %i.wp, %._crit_edge779 ] ; 9 uses
  %.4577782 = phi ptr [ %.1574, %.preheader706.lr.ph ], [ %i.wo, %._crit_edge779 ] ; 8 uses
  br i1 %i.cs, label %iter.check1362, label %._crit_edge779

iter.check1362:                                   ; preds = %.preheader706
  %brmerge1686 = select i1 %min.iters.check1347, i1 true, i1 %conflict.rdx1346
  br i1 %brmerge1686, label %.lr.ph778.preheader, label %vector.main.loop.iter.check1348

vector.main.loop.iter.check1348:                  ; preds = %iter.check1362
  br i1 %min.iters.check1349, label %vec.epilog.ph1366, label %vector.body1352

vector.body1352:                                  ; preds = %vector.main.loop.iter.check1348, %vector.body1352
  %index1353 = phi i64 [ %index.next1358, %vector.body1352 ], [ 0, %vector.main.loop.iter.check1348 ] ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.4577782, i64 %index1353 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %wide.load1354.a = load <16 x i8>, ptr %i.uy, align 1, !tbaa !35, !alias.scope !404
  %wide.load1355 = load <16 x i8>, ptr %i.uz, align 1, !tbaa !35, !alias.scope !404
  %i.va = getelementptr inbounds nuw i8, ptr %.3526784, i64 %index1353 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %wide.load1356 = load <16 x i8>, ptr %i.va, align 1, !tbaa !35, !alias.scope !405
  %wide.load1357 = load <16 x i8>, ptr %i.vb, align 1, !tbaa !35, !alias.scope !405
  %i.vc = add <16 x i8> %wide.load1356, %wide.load1354.a
  %i.vd = add <16 x i8> %wide.load1357, %wide.load1355
  %i.ve = getelementptr inbounds nuw i8, ptr %.4535783, i64 %index1353 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store <16 x i8> %i.vc, ptr %i.ve, align 1, !tbaa !35, !alias.scope !406, !noalias !407
  store <16 x i8> %i.vd, ptr %i.vf, align 1, !tbaa !35, !alias.scope !406, !noalias !407
  %index.next1358 = add nuw i64 %index1353, 32    ; 2 uses
  %i.vg = icmp eq i64 %index.next1358, %n.vec1351
  br i1 %i.vg, label %middle.block1359, label %vector.body1352, !llvm.loop !346

middle.block1359:                                 ; preds = %vector.body1352
  br i1 %cmp.n1360, label %._crit_edge779, label %vec.epilog.iter.check1364

vec.epilog.iter.check1364:                        ; preds = %middle.block1359
  br i1 %min.epilog.iters.check1365, label %.lr.ph778.preheader, label %vec.epilog.ph1366, !prof !68

vec.epilog.ph1366:                                ; preds = %vector.main.loop.iter.check1348, %vec.epilog.iter.check1364
  %vec.epilog.resume.val1361 = phi i64 [ %n.vec1351, %vec.epilog.iter.check1364 ], [ 0, %vector.main.loop.iter.check1348 ]
  br label %vec.epilog.vector.body1368

vec.epilog.vector.body1368:                       ; preds = %vec.epilog.vector.body1368, %vec.epilog.ph1366
  %index1369 = phi i64 [ %vec.epilog.resume.val1361, %vec.epilog.ph1366 ], [ %index.next1372, %vec.epilog.vector.body1368 ] ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.4577782, i64 %index1369
  %wide.load1370 = load <4 x i8>, ptr %i.vh, align 1, !tbaa !35, !alias.scope !404
  %i.vi = getelementptr inbounds nuw i8, ptr %.3526784, i64 %index1369
  %wide.load1371 = load <4 x i8>, ptr %i.vi, align 1, !tbaa !35, !alias.scope !405
  %i.vj = add <4 x i8> %wide.load1371, %wide.load1370
  %i.vk = getelementptr inbounds nuw i8, ptr %.4535783, i64 %index1369
  store <4 x i8> %i.vj, ptr %i.vk, align 1, !tbaa !35, !alias.scope !406, !noalias !407
  %index.next1372 = add nuw i64 %index1369, 4     ; 2 uses
  %i.vl = icmp eq i64 %index.next1372, %n.vec1367
  br i1 %i.vl, label %vec.epilog.middle.block1373, label %vec.epilog.vector.body1368, !llvm.loop !347

vec.epilog.middle.block1373:                      ; preds = %vec.epilog.vector.body1368
  br i1 %cmp.n1374, label %._crit_edge779, label %.lr.ph778.preheader

.lr.ph778.preheader:                              ; preds = %iter.check1362, %vec.epilog.iter.check1364, %vec.epilog.middle.block1373
  %indvars.iv917.ph = phi i64 [ 0, %iter.check1362 ], [ %n.vec1367, %vec.epilog.middle.block1373 ], [ %n.vec1351, %vec.epilog.iter.check1364 ] ; 3 uses
  br i1 %lcmp.mod1638.not, label %.lr.ph778.prol.loopexit, label %.lr.ph778.prol

.lr.ph778.prol:                                   ; preds = %.lr.ph778.preheader, %.lr.ph778.prol
  %indvars.iv917.prol = phi i64 [ %indvars.iv.next918.prol, %.lr.ph778.prol ], [ %indvars.iv917.ph, %.lr.ph778.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph778.prol ], [ 0, %.lr.ph778.preheader ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.4577782, i64 %indvars.iv917.prol
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !35
  %i.vo = getelementptr inbounds nuw i8, ptr %.3526784, i64 %indvars.iv917.prol
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !35
  %.narrow620.prol = add i8 %i.vp, %i.vn
  %i.vq = getelementptr inbounds nuw i8, ptr %.4535783, i64 %indvars.iv917.prol
  store i8 %.narrow620.prol, ptr %i.vq, align 1, !tbaa !35
  %indvars.iv.next918.prol = add nuw nsw i64 %indvars.iv917.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1637
  br i1 %prol.iter.cmp.not, label %.lr.ph778.prol.loopexit, label %.lr.ph778.prol, !llvm.loop !348

.lr.ph778.prol.loopexit:                          ; preds = %.lr.ph778.prol, %.lr.ph778.preheader
  %indvars.iv917.unr = phi i64 [ %indvars.iv917.ph, %.lr.ph778.preheader ], [ %indvars.iv.next918.prol, %.lr.ph778.prol ]
  %i.vr = sub nsw i64 %indvars.iv917.ph, %wide.trip.count920
  %i.vs = icmp ugt i64 %i.vr, -4
  br i1 %i.vs, label %._crit_edge779, label %.lr.ph778

.lr.ph778:                                        ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778
  %indvars.iv917 = phi i64 [ %indvars.iv.next918.3, %.lr.ph778 ], [ %indvars.iv917.unr, %.lr.ph778.prol.loopexit ] ; 7 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.4577782, i64 %indvars.iv917
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !35
  %i.vv = getelementptr inbounds nuw i8, ptr %.3526784, i64 %indvars.iv917
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !35
  %.narrow620 = add i8 %i.vw, %i.vu
  %i.vx = getelementptr inbounds nuw i8, ptr %.4535783, i64 %indvars.iv917
  store i8 %.narrow620, ptr %i.vx, align 1, !tbaa !35
  %indvars.iv.next918 = add nuw nsw i64 %indvars.iv917, 1 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.4577782, i64 %indvars.iv.next918
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !35
  %i.wa = getelementptr inbounds nuw i8, ptr %.3526784, i64 %indvars.iv.next918
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !35
  %.narrow620.1 = add i8 %i.wb, %i.vz
  %i.wc = getelementptr inbounds nuw i8, ptr %.4535783, i64 %indvars.iv.next918
  store i8 %.narrow620.1, ptr %i.wc, align 1, !tbaa !35
  %indvars.iv.next918.1 = add nuw nsw i64 %indvars.iv917, 2 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.4577782, i64 %indvars.iv.next918.1
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !35
  %i.wf = getelementptr inbounds nuw i8, ptr %.3526784, i64 %indvars.iv.next918.1
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !35
  %.narrow620.2 = add i8 %i.wg, %i.we
  %i.wh = getelementptr inbounds nuw i8, ptr %.4535783, i64 %indvars.iv.next918.1
  store i8 %.narrow620.2, ptr %i.wh, align 1, !tbaa !35
  %indvars.iv.next918.2 = add nuw nsw i64 %indvars.iv917, 3 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.4577782, i64 %indvars.iv.next918.2
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !35
  %i.wk = getelementptr inbounds nuw i8, ptr %.3526784, i64 %indvars.iv.next918.2
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !35
  %.narrow620.3 = add i8 %i.wl, %i.wj
  %i.wm = getelementptr inbounds nuw i8, ptr %.4535783, i64 %indvars.iv.next918.2
  store i8 %.narrow620.3, ptr %i.wm, align 1, !tbaa !35
  %indvars.iv.next918.3 = add nuw nsw i64 %indvars.iv917, 4 ; 2 uses
  %exitcond921.not.3 = icmp eq i64 %indvars.iv.next918.3, %wide.trip.count920
  br i1 %exitcond921.not.3, label %._crit_edge779, label %.lr.ph778, !llvm.loop !349

._crit_edge779:                                   ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778, %middle.block1359, %vec.epilog.middle.block1373, %.preheader706
  %i.wn = getelementptr inbounds i8, ptr %.4535783, i64 %i.ru
  store i8 -1, ptr %i.wn, align 1, !tbaa !35
  %i.wo = getelementptr inbounds i8, ptr %.4577782, i64 %i.ru ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.4535783, i64 %9
  %i.wq = getelementptr inbounds i8, ptr %.3526784, i64 %9
  %.2563 = add i32 %.2563785, -1                  ; 2 uses
  %.not618 = icmp eq i32 %.2563, 0
  br i1 %.not618, label %.loopexit725, label %.preheader706, !llvm.loop !350

.preheader707:                                    ; preds = %.preheader707.lr.ph, %._crit_edge769
  %.3564775 = phi i32 [ %.6567743, %.preheader707.lr.ph ], [ %.3564, %._crit_edge769 ]
  %.4527774 = phi ptr [ %i.dw, %.preheader707.lr.ph ], [ %i.zn, %._crit_edge769 ] ; 6 uses
  %.5536773 = phi ptr [ %i.dv, %.preheader707.lr.ph ], [ %i.zm, %._crit_edge769 ] ; 12 uses
  %.5578772 = phi ptr [ %.1574, %.preheader707.lr.ph ], [ %i.zl, %._crit_edge769 ] ; 6 uses
  br i1 %i.cs, label %iter.check1416, label %._crit_edge769

iter.check1416:                                   ; preds = %.preheader707
  %brmerge1687 = select i1 %min.iters.check1399, i1 true, i1 %conflict.rdx1398
  br i1 %brmerge1687, label %.lr.ph768.preheader, label %vector.main.loop.iter.check1400

vector.main.loop.iter.check1400:                  ; preds = %iter.check1416
  br i1 %min.iters.check1401, label %vec.epilog.ph1420, label %vector.body1404

vector.body1404:                                  ; preds = %vector.main.loop.iter.check1400, %vector.body1404
  %index1405 = phi i64 [ %index.next1412, %vector.body1404 ], [ 0, %vector.main.loop.iter.check1400 ] ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.5578772, i64 %index1405 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %wide.load1406.a = load <16 x i8>, ptr %i.wr, align 1, !tbaa !35, !alias.scope !408
  %wide.load1407.a = load <16 x i8>, ptr %i.ws, align 1, !tbaa !35, !alias.scope !408
  %i.wt = getelementptr inbounds nuw i8, ptr %.4527774, i64 %index1405 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load1408 = load <16 x i8>, ptr %i.wt, align 1, !tbaa !35, !alias.scope !409
  %wide.load1409 = load <16 x i8>, ptr %i.wu, align 1, !tbaa !35, !alias.scope !409
  %i.wv = zext <16 x i8> %wide.load1408 to <16 x i16>
  %i.ww = zext <16 x i8> %wide.load1409 to <16 x i16>
  %i.wx = sub nsw i64 %index1405, %9
  %i.wy = getelementptr inbounds i8, ptr %.5536773, i64 %i.wx ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %wide.load1410 = load <16 x i8>, ptr %i.wy, align 1, !tbaa !35, !alias.scope !410
  %wide.load1411 = load <16 x i8>, ptr %i.wz, align 1, !tbaa !35, !alias.scope !410
  %i.xa = zext <16 x i8> %wide.load1410 to <16 x i16>
  %i.xb = zext <16 x i8> %wide.load1411 to <16 x i16>
  %i.xc = add nuw nsw <16 x i16> %i.xa, %i.wv
  %i.xd = add nuw nsw <16 x i16> %i.xb, %i.ww
  %i.xe = lshr <16 x i16> %i.xc, splat (i16 1)
  %i.xf = lshr <16 x i16> %i.xd, splat (i16 1)
  %i.xg = trunc nuw <16 x i16> %i.xe to <16 x i8>
  %i.xh = trunc nuw <16 x i16> %i.xf to <16 x i8>
  %i.xi = add <16 x i8> %wide.load1406.a, %i.xg
  %i.xj = add <16 x i8> %wide.load1407.a, %i.xh
  %i.xk = getelementptr inbounds nuw i8, ptr %.5536773, i64 %index1405 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store <16 x i8> %i.xi, ptr %i.xk, align 1, !tbaa !35, !alias.scope !411, !noalias !412
  store <16 x i8> %i.xj, ptr %i.xl, align 1, !tbaa !35, !alias.scope !411, !noalias !412
  %index.next1412 = add nuw i64 %index1405, 32    ; 2 uses
  %i.xm = icmp eq i64 %index.next1412, %n.vec1403
  br i1 %i.xm, label %middle.block1413, label %vector.body1404, !llvm.loop !356

middle.block1413:                                 ; preds = %vector.body1404
  br i1 %cmp.n1414, label %._crit_edge769, label %vec.epilog.iter.check1418

vec.epilog.iter.check1418:                        ; preds = %middle.block1413
  br i1 %min.epilog.iters.check1419, label %.lr.ph768.preheader, label %vec.epilog.ph1420, !prof !110

vec.epilog.ph1420:                                ; preds = %vector.main.loop.iter.check1400, %vec.epilog.iter.check1418
  %vec.epilog.resume.val1415 = phi i64 [ %n.vec1403, %vec.epilog.iter.check1418 ], [ 0, %vector.main.loop.iter.check1400 ]
  br label %vec.epilog.vector.body1422

vec.epilog.vector.body1422:                       ; preds = %vec.epilog.vector.body1422, %vec.epilog.ph1420
  %index1423 = phi i64 [ %vec.epilog.resume.val1415, %vec.epilog.ph1420 ], [ %index.next1427, %vec.epilog.vector.body1422 ] ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.5578772, i64 %index1423
  %wide.load1424 = load <8 x i8>, ptr %i.xn, align 1, !tbaa !35, !alias.scope !408
  %i.xo = getelementptr inbounds nuw i8, ptr %.4527774, i64 %index1423
  %wide.load1425 = load <8 x i8>, ptr %i.xo, align 1, !tbaa !35, !alias.scope !409
  %i.xp = zext <8 x i8> %wide.load1425 to <8 x i16>
  %i.xq = sub nsw i64 %index1423, %9
  %i.xr = getelementptr inbounds i8, ptr %.5536773, i64 %i.xq
  %wide.load1426 = load <8 x i8>, ptr %i.xr, align 1, !tbaa !35, !alias.scope !410
  %i.xs = zext <8 x i8> %wide.load1426 to <8 x i16>
  %i.xt = add nuw nsw <8 x i16> %i.xs, %i.xp
  %i.xu = lshr <8 x i16> %i.xt, splat (i16 1)
  %i.xv = trunc nuw <8 x i16> %i.xu to <8 x i8>
  %i.xw = add <8 x i8> %wide.load1424, %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %.5536773, i64 %index1423
  store <8 x i8> %i.xw, ptr %i.xx, align 1, !tbaa !35, !alias.scope !411, !noalias !412
  %index.next1427 = add nuw i64 %index1423, 8     ; 2 uses
  %i.xy = icmp eq i64 %index.next1427, %n.vec1421
  br i1 %i.xy, label %vec.epilog.middle.block1428, label %vec.epilog.vector.body1422, !llvm.loop !357

vec.epilog.middle.block1428:                      ; preds = %vec.epilog.vector.body1422
  br i1 %cmp.n1429, label %._crit_edge769, label %.lr.ph768.preheader

.lr.ph768.preheader:                              ; preds = %iter.check1416, %vec.epilog.iter.check1418, %vec.epilog.middle.block1428
  %indvars.iv912.ph = phi i64 [ 0, %iter.check1416 ], [ %n.vec1421, %vec.epilog.middle.block1428 ], [ %n.vec1403, %vec.epilog.iter.check1418 ] ; 7 uses
  br i1 %lcmp.mod1636.not.a, label %.lr.ph768.prol.loopexit, label %.lr.ph768.prol

.lr.ph768.prol:                                   ; preds = %.lr.ph768.preheader
  %i.xz = getelementptr inbounds nuw i8, ptr %.5578772, i64 %indvars.iv912.ph
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !35
  %i.yb = getelementptr inbounds nuw i8, ptr %.4527774, i64 %indvars.iv912.ph
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !35
  %i.yd = zext i8 %i.yc to i16
  %i.ye = sub nsw i64 %indvars.iv912.ph, %9
  %i.yf = getelementptr inbounds i8, ptr %.5536773, i64 %i.ye
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !35
  %i.yh = zext i8 %i.yg to i16
  %i.yi = add nuw nsw i16 %i.yh, %i.yd
  %i.yj = lshr i16 %i.yi, 1
  %.tr616.prol = trunc nuw i16 %i.yj to i8
  %.narrow617.prol = add i8 %i.ya, %.tr616.prol
  %i.yk = getelementptr inbounds nuw i8, ptr %.5536773, i64 %indvars.iv912.ph
  store i8 %.narrow617.prol, ptr %i.yk, align 1, !tbaa !35
  %indvars.iv.next913.prol = or disjoint i64 %indvars.iv912.ph, 1
  br label %.lr.ph768.prol.loopexit

.lr.ph768.prol.loopexit:                          ; preds = %.lr.ph768.prol, %.lr.ph768.preheader
  %indvars.iv912.unr = phi i64 [ %indvars.iv912.ph, %.lr.ph768.preheader ], [ %indvars.iv.next913.prol, %.lr.ph768.prol ]
  %i.yl = icmp eq i64 %indvars.iv912.ph, %i.rt
  br i1 %i.yl, label %._crit_edge769, label %.lr.ph768

.lr.ph768:                                        ; preds = %.lr.ph768.prol.loopexit, %.lr.ph768
  %indvars.iv912 = phi i64 [ %indvars.iv.next913.1, %.lr.ph768 ], [ %indvars.iv912.unr, %.lr.ph768.prol.loopexit ] ; 6 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.5578772, i64 %indvars.iv912
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !35
  %i.yo = getelementptr inbounds nuw i8, ptr %.4527774, i64 %indvars.iv912
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !35
  %i.yq = zext i8 %i.yp to i16
  %i.yr = sub nsw i64 %indvars.iv912, %9
  %i.ys = getelementptr inbounds i8, ptr %.5536773, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !35
  %i.yu = zext i8 %i.yt to i16
  %i.yv = add nuw nsw i16 %i.yu, %i.yq
  %i.yw = lshr i16 %i.yv, 1
  %.tr616 = trunc nuw i16 %i.yw to i8
  %.narrow617 = add i8 %i.yn, %.tr616
  %i.yx = getelementptr inbounds nuw i8, ptr %.5536773, i64 %indvars.iv912
  store i8 %.narrow617, ptr %i.yx, align 1, !tbaa !35
  %indvars.iv.next913 = add nuw nsw i64 %indvars.iv912, 1 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.5578772, i64 %indvars.iv.next913
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !35
  %i.za = getelementptr inbounds nuw i8, ptr %.4527774, i64 %indvars.iv.next913
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !35
  %i.zc = zext i8 %i.zb to i16
  %i.zd = sub nsw i64 %indvars.iv.next913, %9
  %i.ze = getelementptr inbounds i8, ptr %.5536773, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !35
  %i.zg = zext i8 %i.zf to i16
  %i.zh = add nuw nsw i16 %i.zg, %i.zc
  %i.zi = lshr i16 %i.zh, 1
  %.tr616.1 = trunc nuw i16 %i.zi to i8
  %.narrow617.1 = add i8 %i.yz, %.tr616.1
  %i.zj = getelementptr inbounds nuw i8, ptr %.5536773, i64 %indvars.iv.next913
  store i8 %.narrow617.1, ptr %i.zj, align 1, !tbaa !35
  %indvars.iv.next913.1 = add nuw nsw i64 %indvars.iv912, 2 ; 2 uses
  %exitcond916.not.1 = icmp eq i64 %indvars.iv.next913.1, %wide.trip.count915
  br i1 %exitcond916.not.1, label %._crit_edge769, label %.lr.ph768, !llvm.loop !358

._crit_edge769:                                   ; preds = %.lr.ph768.prol.loopexit, %.lr.ph768, %middle.block1413, %vec.epilog.middle.block1428, %.preheader707
  %i.zk = getelementptr inbounds i8, ptr %.5536773, i64 %i.ro
  store i8 -1, ptr %i.zk, align 1, !tbaa !35
  %i.zl = getelementptr inbounds i8, ptr %.5578772, i64 %i.ro ; 2 uses
  %i.zm = getelementptr inbounds i8, ptr %.5536773, i64 %9
  %i.zn = getelementptr inbounds i8, ptr %.4527774, i64 %9
  %.3564 = add i32 %.3564775, -1                  ; 2 uses
  %.not615 = icmp eq i32 %.3564, 0
  br i1 %.not615, label %.loopexit725, label %.preheader707, !llvm.loop !359

.preheader708:                                    ; preds = %.preheader708.lr.ph, %._crit_edge759
  %.4565765 = phi i32 [ %.6567743, %.preheader708.lr.ph ], [ %.4565, %._crit_edge759 ]
  %.5528764 = phi ptr [ %i.dw, %.preheader708.lr.ph ], [ %i.acl, %._crit_edge759 ] ; 7 uses
  %.6537763 = phi ptr [ %i.dv, %.preheader708.lr.ph ], [ %i.ack, %._crit_edge759 ] ; 8 uses
  %.6579762 = phi ptr [ %.1574, %.preheader708.lr.ph ], [ %i.acj, %._crit_edge759 ] ; 4 uses
  br i1 %i.cs, label %iter.check1477, label %._crit_edge759

iter.check1477:                                   ; preds = %.preheader708
  %brmerge1688 = select i1 %min.iters.check1462, i1 true, i1 %conflict.rdx1461
  br i1 %brmerge1688, label %.lr.ph758.preheader, label %vector.main.loop.iter.check1463

vector.main.loop.iter.check1463:                  ; preds = %iter.check1477
  br i1 %min.iters.check1464, label %vec.epilog.ph1481, label %vector.body1467

vector.body1467:                                  ; preds = %vector.main.loop.iter.check1463, %vector.body1467
  %index1468 = phi i64 [ %index.next1473, %vector.body1467 ], [ 0, %vector.main.loop.iter.check1463 ] ; 5 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.6579762, i64 %index1468
  %wide.load1469 = load <16 x i8>, ptr %i.zo, align 1, !tbaa !35, !alias.scope !413
  %i.zp = sub nsw i64 %index1468, %9              ; 2 uses
  %i.zq = getelementptr inbounds i8, ptr %.6537763, i64 %i.zp
  %wide.load1470 = load <16 x i8>, ptr %i.zq, align 1, !tbaa !35, !alias.scope !414 ; 2 uses
  %i.zr = zext <16 x i8> %wide.load1470 to <16 x i32> ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.5528764, i64 %index1468
  %wide.load1471 = load <16 x i8>, ptr %i.zs, align 1, !tbaa !35, !alias.scope !415 ; 2 uses
  %i.zt = zext <16 x i8> %wide.load1471 to <16 x i32> ; 2 uses
  %i.zu = getelementptr inbounds i8, ptr %.5528764, i64 %i.zp
  %wide.load1472 = load <16 x i8>, ptr %i.zu, align 1, !tbaa !35, !alias.scope !416 ; 2 uses
  %i.zv = zext <16 x i8> %wide.load1472 to <16 x i32> ; 2 uses
  %i.zw = add nuw nsw <16 x i32> %i.zt, %i.zr
  %i.zx = sub nsw <16 x i32> %i.zw, %i.zv         ; 3 uses
  %i.zy = sub nsw <16 x i32> %i.zx, %i.zr
  %i.zz = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zy, i1 true) ; 2 uses
  %i.aaa = sub nsw <16 x i32> %i.zx, %i.zt
  %i.aab = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aaa, i1 true) ; 2 uses
  %i.aac = sub nsw <16 x i32> %i.zx, %i.zv
  %i.aad = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aac, i1 true) ; 2 uses
  %i.aae = icmp samesign ugt <16 x i32> %i.zz, %i.aab
  %i.aaf = icmp samesign ugt <16 x i32> %i.zz, %i.aad
  %i.aag = select <16 x i1> %i.aae, <16 x i1> splat (i1 true), <16 x i1> %i.aaf
  %i.aah = icmp samesign ugt <16 x i32> %i.aab, %i.aad
  %i.aai = select <16 x i1> %i.aah, <16 x i8> %wide.load1472, <16 x i8> %wide.load1471
  %i.aaj = select <16 x i1> %i.aag, <16 x i8> %i.aai, <16 x i8> %wide.load1470
  %i.aak = add <16 x i8> %i.aaj, %wide.load1469
  %i.aal = getelementptr inbounds nuw i8, ptr %.6537763, i64 %index1468
  store <16 x i8> %i.aak, ptr %i.aal, align 1, !tbaa !35, !alias.scope !417, !noalias !418
  %index.next1473 = add nuw i64 %index1468, 16    ; 2 uses
  %i.aam = icmp eq i64 %index.next1473, %n.vec1466
  br i1 %i.aam, label %middle.block1474, label %vector.body1467, !llvm.loop !366

middle.block1474:                                 ; preds = %vector.body1467
  br i1 %cmp.n1475, label %._crit_edge759, label %vec.epilog.iter.check1479

vec.epilog.iter.check1479:                        ; preds = %middle.block1474
  br i1 %min.epilog.iters.check1480, label %.lr.ph758.preheader, label %vec.epilog.ph1481, !prof !45

vec.epilog.ph1481:                                ; preds = %vector.main.loop.iter.check1463, %vec.epilog.iter.check1479
  %vec.epilog.resume.val1476 = phi i64 [ %n.vec1466, %vec.epilog.iter.check1479 ], [ 0, %vector.main.loop.iter.check1463 ]
  br label %vec.epilog.vector.body1483

vec.epilog.vector.body1483:                       ; preds = %vec.epilog.vector.body1483, %vec.epilog.ph1481
  %index1484 = phi i64 [ %vec.epilog.resume.val1476, %vec.epilog.ph1481 ], [ %index.next1489, %vec.epilog.vector.body1483 ] ; 5 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.6579762, i64 %index1484
  %wide.load1485 = load <4 x i8>, ptr %i.aan, align 1, !tbaa !35, !alias.scope !413
  %i.aao = sub nsw i64 %index1484, %9             ; 2 uses
  %i.aap = getelementptr inbounds i8, ptr %.6537763, i64 %i.aao
  %wide.load1486 = load <4 x i8>, ptr %i.aap, align 1, !tbaa !35, !alias.scope !414 ; 2 uses
  %i.aaq = zext <4 x i8> %wide.load1486 to <4 x i32> ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.5528764, i64 %index1484
  %wide.load1487 = load <4 x i8>, ptr %i.aar, align 1, !tbaa !35, !alias.scope !415 ; 2 uses
  %i.aas = zext <4 x i8> %wide.load1487 to <4 x i32> ; 2 uses
  %i.aat = getelementptr inbounds i8, ptr %.5528764, i64 %i.aao
  %wide.load1488 = load <4 x i8>, ptr %i.aat, align 1, !tbaa !35, !alias.scope !416 ; 2 uses
  %i.aau = zext <4 x i8> %wide.load1488 to <4 x i32> ; 2 uses
  %i.aav = add nuw nsw <4 x i32> %i.aas, %i.aaq
  %i.aaw = sub nsw <4 x i32> %i.aav, %i.aau       ; 3 uses
  %i.aax = sub nsw <4 x i32> %i.aaw, %i.aaq
  %i.aay = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aax, i1 true) ; 2 uses
  %i.aaz = sub nsw <4 x i32> %i.aaw, %i.aas
  %i.aba = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aaz, i1 true) ; 2 uses
  %i.abb = sub nsw <4 x i32> %i.aaw, %i.aau
  %i.abc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abb, i1 true) ; 2 uses
  %i.abd = icmp samesign ugt <4 x i32> %i.aay, %i.aba
  %i.abe = icmp samesign ugt <4 x i32> %i.aay, %i.abc
  %i.abf = select <4 x i1> %i.abd, <4 x i1> splat (i1 true), <4 x i1> %i.abe
  %i.abg = icmp samesign ugt <4 x i32> %i.aba, %i.abc
  %i.abh = select <4 x i1> %i.abg, <4 x i8> %wide.load1488, <4 x i8> %wide.load1487
  %i.abi = select <4 x i1> %i.abf, <4 x i8> %i.abh, <4 x i8> %wide.load1486
  %i.abj = add <4 x i8> %i.abi, %wide.load1485
  %i.abk = getelementptr inbounds nuw i8, ptr %.6537763, i64 %index1484
  store <4 x i8> %i.abj, ptr %i.abk, align 1, !tbaa !35, !alias.scope !417, !noalias !418
  %index.next1489 = add nuw i64 %index1484, 4     ; 2 uses
  %i.abl = icmp eq i64 %index.next1489, %n.vec1482
  br i1 %i.abl, label %vec.epilog.middle.block1490, label %vec.epilog.vector.body1483, !llvm.loop !367

vec.epilog.middle.block1490:                      ; preds = %vec.epilog.vector.body1483
  br i1 %cmp.n1491, label %._crit_edge759, label %.lr.ph758.preheader

.lr.ph758.preheader:                              ; preds = %iter.check1477, %vec.epilog.iter.check1479, %vec.epilog.middle.block1490
  %indvars.iv907.ph = phi i64 [ 0, %iter.check1477 ], [ %n.vec1482, %vec.epilog.middle.block1490 ], [ %n.vec1466, %vec.epilog.iter.check1479 ]
  br label %.lr.ph758

.lr.ph758:                                        ; preds = %.lr.ph758.preheader, %.lr.ph758
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %.lr.ph758 ], [ %indvars.iv907.ph, %.lr.ph758.preheader ] ; 5 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.6579762, i64 %indvars.iv907
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !35
  %i.abo = sub nsw i64 %indvars.iv907, %9         ; 2 uses
  %i.abp = getelementptr inbounds i8, ptr %.6537763, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !35 ; 2 uses
  %i.abr = zext i8 %i.abq to i32                  ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.5528764, i64 %indvars.iv907
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !35 ; 2 uses
  %i.abu = zext i8 %i.abt to i32                  ; 2 uses
  %i.abv = getelementptr inbounds i8, ptr %.5528764, i64 %i.abo
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !35 ; 2 uses
  %i.abx = zext i8 %i.abw to i32                  ; 2 uses
  %i.aby = add nuw nsw i32 %i.abu, %i.abr
  %i.abz = sub nsw i32 %i.aby, %i.abx             ; 3 uses
  %i.aca = sub nsw i32 %i.abz, %i.abr
  %i.acb = tail call i32 @llvm.abs.i32(i32 %i.aca, i1 true) ; 2 uses
  %i.acc = sub nsw i32 %i.abz, %i.abu
  %i.acd = tail call i32 @llvm.abs.i32(i32 %i.acc, i1 true) ; 2 uses
  %i.ace = sub nsw i32 %i.abz, %i.abx
  %i.acf = tail call i32 @llvm.abs.i32(i32 %i.ace, i1 true) ; 2 uses
  %.not.i655 = icmp samesign ugt i32 %i.acb, %i.acd
  %.not20.i656 = icmp samesign ugt i32 %i.acb, %i.acf
  %or.cond.i657 = select i1 %.not.i655, i1 true, i1 %.not20.i656
  %.not21.i658 = icmp samesign ugt i32 %i.acd, %i.acf
  %i.acg = select i1 %.not21.i658, i8 %i.abw, i8 %i.abt
  %.tr613 = select i1 %or.cond.i657, i8 %i.acg, i8 %i.abq
  %.narrow614 = add i8 %.tr613, %i.abn
  %i.ach = getelementptr inbounds nuw i8, ptr %.6537763, i64 %indvars.iv907
  store i8 %.narrow614, ptr %i.ach, align 1, !tbaa !35
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1 ; 2 uses
  %exitcond911.not = icmp eq i64 %indvars.iv.next908, %wide.trip.count910
  br i1 %exitcond911.not, label %._crit_edge759, label %.lr.ph758, !llvm.loop !368

._crit_edge759:                                   ; preds = %.lr.ph758, %middle.block1474, %vec.epilog.middle.block1490, %.preheader708
  %i.aci = getelementptr inbounds i8, ptr %.6537763, i64 %i.rj
  store i8 -1, ptr %i.aci, align 1, !tbaa !35
  %i.acj = getelementptr inbounds i8, ptr %.6579762, i64 %i.rj ; 2 uses
  %i.ack = getelementptr inbounds i8, ptr %.6537763, i64 %9
  %i.acl = getelementptr inbounds i8, ptr %.5528764, i64 %9
  %.4565 = add i32 %.4565765, -1                  ; 2 uses
  %.not612 = icmp eq i32 %.4565, 0
  br i1 %.not612, label %.loopexit725, label %.preheader708, !llvm.loop !369

.preheader709:                                    ; preds = %.preheader709.lr.ph, %._crit_edge750
  %.5566755 = phi i32 [ %.6567743, %.preheader709.lr.ph ], [ %.5566, %._crit_edge750 ]
  %.7538754 = phi ptr [ %i.dv, %.preheader709.lr.ph ], [ %i.aed, %._crit_edge750 ] ; 12 uses
  %.7580753 = phi ptr [ %.1574, %.preheader709.lr.ph ], [ %i.aec, %._crit_edge750 ] ; 6 uses
  br i1 %i.cs, label %iter.check1525, label %._crit_edge750

iter.check1525:                                   ; preds = %.preheader709
  %brmerge1689 = select i1 %min.iters.check1510, i1 true, i1 %conflict.rdx1509
  br i1 %brmerge1689, label %.lr.ph749.preheader, label %vector.main.loop.iter.check1511

vector.main.loop.iter.check1511:                  ; preds = %iter.check1525
  br i1 %min.iters.check1512, label %vec.epilog.ph1529, label %vector.body1515

vector.body1515:                                  ; preds = %vector.main.loop.iter.check1511, %vector.body1515
  %index1516 = phi i64 [ %index.next1521, %vector.body1515 ], [ 0, %vector.main.loop.iter.check1511 ] ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.7580753, i64 %index1516 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %wide.load1517 = load <16 x i8>, ptr %i.acm, align 1, !tbaa !35, !alias.scope !419
  %wide.load1518 = load <16 x i8>, ptr %i.acn, align 1, !tbaa !35, !alias.scope !419
  %i.aco = sub nsw i64 %index1516, %9
  %i.acp = getelementptr inbounds i8, ptr %.7538754, i64 %i.aco ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %wide.load1519 = load <16 x i8>, ptr %i.acp, align 1, !tbaa !35, !alias.scope !420
  %wide.load1520 = load <16 x i8>, ptr %i.acq, align 1, !tbaa !35, !alias.scope !420
  %i.acr = lshr <16 x i8> %wide.load1519, splat (i8 1)
  %i.acs = lshr <16 x i8> %wide.load1520, splat (i8 1)
  %i.act = add <16 x i8> %i.acr, %wide.load1517
  %i.acu = add <16 x i8> %i.acs, %wide.load1518
  %i.acv = getelementptr inbounds nuw i8, ptr %.7538754, i64 %index1516 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  store <16 x i8> %i.act, ptr %i.acv, align 1, !tbaa !35, !alias.scope !421, !noalias !422
  store <16 x i8> %i.acu, ptr %i.acw, align 1, !tbaa !35, !alias.scope !421, !noalias !422
  %index.next1521 = add nuw i64 %index1516, 32    ; 2 uses
  %i.acx = icmp eq i64 %index.next1521, %n.vec1514
  br i1 %i.acx, label %middle.block1522, label %vector.body1515, !llvm.loop !374

middle.block1522:                                 ; preds = %vector.body1515
  br i1 %cmp.n1523, label %._crit_edge750, label %vec.epilog.iter.check1527

vec.epilog.iter.check1527:                        ; preds = %middle.block1522
  br i1 %min.epilog.iters.check1528, label %.lr.ph749.preheader, label %vec.epilog.ph1529, !prof !68

vec.epilog.ph1529:                                ; preds = %vector.main.loop.iter.check1511, %vec.epilog.iter.check1527
  %vec.epilog.resume.val1524 = phi i64 [ %n.vec1514, %vec.epilog.iter.check1527 ], [ 0, %vector.main.loop.iter.check1511 ]
  br label %vec.epilog.vector.body1531

vec.epilog.vector.body1531:                       ; preds = %vec.epilog.vector.body1531, %vec.epilog.ph1529
  %index1532 = phi i64 [ %vec.epilog.resume.val1524, %vec.epilog.ph1529 ], [ %index.next1535, %vec.epilog.vector.body1531 ] ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.7580753, i64 %index1532
  %wide.load1533 = load <4 x i8>, ptr %i.acy, align 1, !tbaa !35, !alias.scope !419
  %i.acz = sub nsw i64 %index1532, %9
  %i.ada = getelementptr inbounds i8, ptr %.7538754, i64 %i.acz
  %wide.load1534 = load <4 x i8>, ptr %i.ada, align 1, !tbaa !35, !alias.scope !420
  %i.adb = lshr <4 x i8> %wide.load1534, splat (i8 1)
  %i.adc = add <4 x i8> %i.adb, %wide.load1533
  %i.add = getelementptr inbounds nuw i8, ptr %.7538754, i64 %index1532
  store <4 x i8> %i.adc, ptr %i.add, align 1, !tbaa !35, !alias.scope !421, !noalias !422
  %index.next1535 = add nuw i64 %index1532, 4     ; 2 uses
  %i.ade = icmp eq i64 %index.next1535, %n.vec1530
  br i1 %i.ade, label %vec.epilog.middle.block1536, label %vec.epilog.vector.body1531, !llvm.loop !375

vec.epilog.middle.block1536:                      ; preds = %vec.epilog.vector.body1531
  br i1 %cmp.n1537, label %._crit_edge750, label %.lr.ph749.preheader

.lr.ph749.preheader:                              ; preds = %iter.check1525, %vec.epilog.iter.check1527, %vec.epilog.middle.block1536
  %indvars.iv902.ph = phi i64 [ 0, %iter.check1525 ], [ %n.vec1530, %vec.epilog.middle.block1536 ], [ %n.vec1514, %vec.epilog.iter.check1527 ] ; 6 uses
  br i1 %lcmp.mod1634.not, label %.lr.ph749.prol.loopexit, label %.lr.ph749.prol

.lr.ph749.prol:                                   ; preds = %.lr.ph749.preheader
  %i.adf = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv902.ph
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !35
  %i.adh = sub nsw i64 %indvars.iv902.ph, %9
  %i.adi = getelementptr inbounds i8, ptr %.7538754, i64 %i.adh
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !35
  %i.adk = lshr i8 %i.adj, 1
  %.narrow611.prol = add i8 %i.adk, %i.adg
  %i.adl = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv902.ph
  store i8 %.narrow611.prol, ptr %i.adl, align 1, !tbaa !35
  %indvars.iv.next903.prol = or disjoint i64 %indvars.iv902.ph, 1
  br label %.lr.ph749.prol.loopexit

.lr.ph749.prol.loopexit:                          ; preds = %.lr.ph749.prol, %.lr.ph749.preheader
  %indvars.iv902.unr = phi i64 [ %indvars.iv902.ph, %.lr.ph749.preheader ], [ %indvars.iv.next903.prol, %.lr.ph749.prol ]
  %i.adm = icmp eq i64 %indvars.iv902.ph, %i.ri
  br i1 %i.adm, label %._crit_edge750, label %.lr.ph749

.lr.ph749:                                        ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749
  %indvars.iv902 = phi i64 [ %indvars.iv.next903.1, %.lr.ph749 ], [ %indvars.iv902.unr, %.lr.ph749.prol.loopexit ] ; 5 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv902
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !35
  %i.adp = sub nsw i64 %indvars.iv902, %9
  %i.adq = getelementptr inbounds i8, ptr %.7538754, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !35
  %i.ads = lshr i8 %i.adr, 1
  %.narrow611 = add i8 %i.ads, %i.ado
  %i.adt = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv902
  store i8 %.narrow611, ptr %i.adt, align 1, !tbaa !35
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1 ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv.next903
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !35
  %i.adw = sub nsw i64 %indvars.iv.next903, %9
  %i.adx = getelementptr inbounds i8, ptr %.7538754, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !35
  %i.adz = lshr i8 %i.ady, 1
  %.narrow611.1 = add i8 %i.adz, %i.adv
  %i.aea = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv.next903
  store i8 %.narrow611.1, ptr %i.aea, align 1, !tbaa !35
  %indvars.iv.next903.1 = add nuw nsw i64 %indvars.iv902, 2 ; 2 uses
  %exitcond906.not.1 = icmp eq i64 %indvars.iv.next903.1, %wide.trip.count905
  br i1 %exitcond906.not.1, label %._crit_edge750, label %.lr.ph749, !llvm.loop !376

._crit_edge750:                                   ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749, %middle.block1522, %vec.epilog.middle.block1536, %.preheader709
  %i.aeb = getelementptr inbounds i8, ptr %.7538754, i64 %i.rd
  store i8 -1, ptr %i.aeb, align 1, !tbaa !35
  %i.aec = getelementptr inbounds i8, ptr %.7580753, i64 %i.rd ; 2 uses
  %i.aed = getelementptr inbounds i8, ptr %.7538754, i64 %9
  %.5566 = add i32 %.5566755, -1                  ; 2 uses
  %.not609 = icmp eq i32 %.5566, 0
  br i1 %.not609, label %.loopexit725, label %.preheader709, !llvm.loop !377

.preheader710:                                    ; preds = %.preheader710.lr.ph, %._crit_edge742
  %.6567747 = phi i32 [ %.6567743, %.preheader710.lr.ph ], [ %.6567, %._crit_edge742 ]
  %.8539746 = phi ptr [ %i.dv, %.preheader710.lr.ph ], [ %i.afp, %._crit_edge742 ] ; 12 uses
  %.8581745 = phi ptr [ %.1574, %.preheader710.lr.ph ], [ %i.afo, %._crit_edge742 ] ; 6 uses
  br i1 %i.cs, label %iter.check1571, label %._crit_edge742

iter.check1571:                                   ; preds = %.preheader710
  %brmerge1690 = select i1 %min.iters.check1556, i1 true, i1 %conflict.rdx1555
  br i1 %brmerge1690, label %.lr.ph741.preheader, label %vector.main.loop.iter.check1557

vector.main.loop.iter.check1557:                  ; preds = %iter.check1571
  br i1 %min.iters.check1558, label %vec.epilog.ph1575, label %vector.body1561

vector.body1561:                                  ; preds = %vector.main.loop.iter.check1557, %vector.body1561
  %index1562 = phi i64 [ %index.next1567, %vector.body1561 ], [ 0, %vector.main.loop.iter.check1557 ] ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1562 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  %wide.load1563 = load <16 x i8>, ptr %i.aee, align 1, !tbaa !35, !alias.scope !423
  %wide.load1564 = load <16 x i8>, ptr %i.aef, align 1, !tbaa !35, !alias.scope !423
  %i.aeg = sub nsw i64 %index1562, %9
  %i.aeh = getelementptr inbounds i8, ptr %.8539746, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  %wide.load1565 = load <16 x i8>, ptr %i.aeh, align 1, !tbaa !35, !alias.scope !424
  %wide.load1566 = load <16 x i8>, ptr %i.aei, align 1, !tbaa !35, !alias.scope !424
  %i.aej = add <16 x i8> %wide.load1565, %wide.load1563
  %i.aek = add <16 x i8> %wide.load1566, %wide.load1564
  %i.ael = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1562 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  store <16 x i8> %i.aej, ptr %i.ael, align 1, !tbaa !35, !alias.scope !425, !noalias !426
  store <16 x i8> %i.aek, ptr %i.aem, align 1, !tbaa !35, !alias.scope !425, !noalias !426
  %index.next1567 = add nuw i64 %index1562, 32    ; 2 uses
  %i.aen = icmp eq i64 %index.next1567, %n.vec1560
  br i1 %i.aen, label %middle.block1568, label %vector.body1561, !llvm.loop !382

middle.block1568:                                 ; preds = %vector.body1561
  br i1 %cmp.n1569, label %._crit_edge742, label %vec.epilog.iter.check1573

vec.epilog.iter.check1573:                        ; preds = %middle.block1568
  br i1 %min.epilog.iters.check1574, label %.lr.ph741.preheader, label %vec.epilog.ph1575, !prof !68

vec.epilog.ph1575:                                ; preds = %vector.main.loop.iter.check1557, %vec.epilog.iter.check1573
  %vec.epilog.resume.val1570 = phi i64 [ %n.vec1560, %vec.epilog.iter.check1573 ], [ 0, %vector.main.loop.iter.check1557 ]
  br label %vec.epilog.vector.body1577

vec.epilog.vector.body1577:                       ; preds = %vec.epilog.vector.body1577, %vec.epilog.ph1575
  %index1578 = phi i64 [ %vec.epilog.resume.val1570, %vec.epilog.ph1575 ], [ %index.next1581, %vec.epilog.vector.body1577 ] ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1578
  %wide.load1579 = load <4 x i8>, ptr %i.aeo, align 1, !tbaa !35, !alias.scope !423
  %i.aep = sub nsw i64 %index1578, %9
  %i.aeq = getelementptr inbounds i8, ptr %.8539746, i64 %i.aep
  %wide.load1580 = load <4 x i8>, ptr %i.aeq, align 1, !tbaa !35, !alias.scope !424
  %i.aer = add <4 x i8> %wide.load1580, %wide.load1579
  %i.aes = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1578
  store <4 x i8> %i.aer, ptr %i.aes, align 1, !tbaa !35, !alias.scope !425, !noalias !426
  %index.next1581 = add nuw i64 %index1578, 4     ; 2 uses
  %i.aet = icmp eq i64 %index.next1581, %n.vec1576
  br i1 %i.aet, label %vec.epilog.middle.block1582, label %vec.epilog.vector.body1577, !llvm.loop !383

vec.epilog.middle.block1582:                      ; preds = %vec.epilog.vector.body1577
  br i1 %cmp.n1583, label %._crit_edge742, label %.lr.ph741.preheader

.lr.ph741.preheader:                              ; preds = %iter.check1571, %vec.epilog.iter.check1573, %vec.epilog.middle.block1582
  %indvars.iv897.ph = phi i64 [ 0, %iter.check1571 ], [ %n.vec1576, %vec.epilog.middle.block1582 ], [ %n.vec1560, %vec.epilog.iter.check1573 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph741.prol.loopexit, label %.lr.ph741.prol

.lr.ph741.prol:                                   ; preds = %.lr.ph741.preheader
  %i.aeu = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897.ph
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !35
  %i.aew = sub nsw i64 %indvars.iv897.ph, %9
  %i.aex = getelementptr inbounds i8, ptr %.8539746, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !35
  %.narrow.prol = add i8 %i.aey, %i.aev
  %i.aez = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897.ph
  store i8 %.narrow.prol, ptr %i.aez, align 1, !tbaa !35
  %indvars.iv.next898.prol = or disjoint i64 %indvars.iv897.ph, 1
  br label %.lr.ph741.prol.loopexit

.lr.ph741.prol.loopexit:                          ; preds = %.lr.ph741.prol, %.lr.ph741.preheader
  %indvars.iv897.unr = phi i64 [ %indvars.iv897.ph, %.lr.ph741.preheader ], [ %indvars.iv.next898.prol, %.lr.ph741.prol ]
  %i.afa = icmp eq i64 %indvars.iv897.ph, %i.rc
  br i1 %i.afa, label %._crit_edge742, label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741
  %indvars.iv897 = phi i64 [ %indvars.iv.next898.1, %.lr.ph741 ], [ %indvars.iv897.unr, %.lr.ph741.prol.loopexit ] ; 5 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !35
  %i.afd = sub nsw i64 %indvars.iv897, %9
  %i.afe = getelementptr inbounds i8, ptr %.8539746, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !35
  %.narrow = add i8 %i.aff, %i.afc
  %i.afg = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897
  store i8 %.narrow, ptr %i.afg, align 1, !tbaa !35
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv.next898
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !35
  %i.afj = sub nsw i64 %indvars.iv.next898, %9
  %i.afk = getelementptr inbounds i8, ptr %.8539746, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !35
  %.narrow.1 = add i8 %i.afl, %i.afi
  %i.afm = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv.next898
  store i8 %.narrow.1, ptr %i.afm, align 1, !tbaa !35
  %indvars.iv.next898.1 = add nuw nsw i64 %indvars.iv897, 2 ; 2 uses
  %exitcond901.not.1 = icmp eq i64 %indvars.iv.next898.1, %wide.trip.count900
  br i1 %exitcond901.not.1, label %._crit_edge742, label %.lr.ph741, !llvm.loop !384

._crit_edge742:                                   ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741, %middle.block1568, %vec.epilog.middle.block1582, %.preheader710
  %i.afn = getelementptr inbounds i8, ptr %.8539746, i64 %i.qx
  store i8 -1, ptr %i.afn, align 1, !tbaa !35
  %i.afo = getelementptr inbounds i8, ptr %.8581745, i64 %i.qx ; 2 uses
  %i.afp = getelementptr inbounds i8, ptr %.8539746, i64 %9
  %.6567 = add i32 %.6567747, -1                  ; 2 uses
  %.not608 = icmp eq i32 %.6567, 0
  br i1 %.not608, label %.loopexit725, label %.preheader710, !llvm.loop !385

.loopexit725:                                     ; preds = %._crit_edge742, %._crit_edge750, %._crit_edge759, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge798, %.preheader736, %.preheader734, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %bb.af
  %.9582 = phi ptr [ %.1574, %bb.af ], [ %i.wo, %._crit_edge779 ], [ %i.zl, %._crit_edge769 ], [ %i.acj, %._crit_edge759 ], [ %i.aec, %._crit_edge750 ], [ %i.tk, %._crit_edge798 ], [ %i.uw, %._crit_edge789 ], [ %.1574, %.preheader724 ], [ %.1574, %.preheader726 ], [ %.1574, %.preheader728 ], [ %.1574, %.preheader730 ], [ %.1574, %.preheader732 ], [ %.1574, %.preheader734 ], [ %.1574, %.preheader736 ], [ %i.afo, %._crit_edge742 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph808, label %.loopexit723

.lr.ph808:                                        ; preds = %.loopexit725
  %i.afq = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.ch ; 2 uses
  %i.afs = sext i32 %.1546 to i64                 ; 9 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph808.new

.lr.ph808.new:                                    ; preds = %.lr.ph808, %.lr.ph808.new
  %.9540806 = phi ptr [ %i.agq, %.lr.ph808.new ], [ %i.afr, %.lr.ph808 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph808.new ], [ 0, %.lr.ph808 ]
  %i.aft = getelementptr i8, ptr %.9540806, i64 %i.afs
  %i.afu = getelementptr i8, ptr %i.aft, i64 1
  store i8 -1, ptr %i.afu, align 1, !tbaa !35
  %i.afv = getelementptr inbounds i8, ptr %.9540806, i64 %9 ; 2 uses
  %i.afw = getelementptr i8, ptr %i.afv, i64 %i.afs
  %i.afx = getelementptr i8, ptr %i.afw, i64 1
  store i8 -1, ptr %i.afx, align 1, !tbaa !35
  %i.afy = getelementptr inbounds i8, ptr %i.afv, i64 %9 ; 2 uses
  %i.afz = getelementptr i8, ptr %i.afy, i64 %i.afs
  %i.aga = getelementptr i8, ptr %i.afz, i64 1
  store i8 -1, ptr %i.aga, align 1, !tbaa !35
  %i.agb = getelementptr inbounds i8, ptr %i.afy, i64 %9 ; 2 uses
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.afs
  %i.agd = getelementptr i8, ptr %i.agc, i64 1
  store i8 -1, ptr %i.agd, align 1, !tbaa !35
  %i.age = getelementptr inbounds i8, ptr %i.agb, i64 %9 ; 2 uses
  %i.agf = getelementptr i8, ptr %i.age, i64 %i.afs
  %i.agg = getelementptr i8, ptr %i.agf, i64 1
  store i8 -1, ptr %i.agg, align 1, !tbaa !35
  %i.agh = getelementptr inbounds i8, ptr %i.age, i64 %9 ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.afs
  %i.agj = getelementptr i8, ptr %i.agi, i64 1
  store i8 -1, ptr %i.agj, align 1, !tbaa !35
  %i.agk = getelementptr inbounds i8, ptr %i.agh, i64 %9 ; 2 uses
  %i.agl = getelementptr i8, ptr %i.agk, i64 %i.afs
  %i.agm = getelementptr i8, ptr %i.agl, i64 1
  store i8 -1, ptr %i.agm, align 1, !tbaa !35
  %i.agn = getelementptr inbounds i8, ptr %i.agk, i64 %9 ; 2 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.afs
  %i.agp = getelementptr i8, ptr %i.ago, i64 1
  store i8 -1, ptr %i.agp, align 1, !tbaa !35
  %i.agq = getelementptr inbounds i8, ptr %i.agn, i64 %9 ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit723.loopexit.unr-lcssa, label %.lr.ph808.new, !llvm.loop !386

.loopexit723.loopexit.unr-lcssa:                  ; preds = %.lr.ph808.new
  br i1 %lcmp.mod1646.not, label %.loopexit723, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit723.loopexit.unr-lcssa, %.lr.ph808
  %.9540806.epil.init = phi ptr [ %i.afr, %.lr.ph808 ], [ %i.agq, %.loopexit723.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1647)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.9540806.epil = phi ptr [ %.9540806.epil.init, %.epil.preheader ], [ %i.agt, %bb.ag ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.agr = getelementptr i8, ptr %.9540806.epil, i64 %i.afs
  %i.ags = getelementptr i8, ptr %i.agr, i64 1
  store i8 -1, ptr %i.ags, align 1, !tbaa !35
  %i.agt = getelementptr inbounds i8, ptr %.9540806.epil, i64 %9
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1645
  br i1 %epil.iter.cmp.not, label %.loopexit723, label %bb.ag, !llvm.loop !387

.loopexit723:                                     ; preds = %.loopexit723.loopexit.unr-lcssa, %bb.ag, %.loopexit725, %.loopexit712
  %.11584 = phi ptr [ %i.qw, %.loopexit712 ], [ %.9582, %.loopexit725 ], [ %.9582, %bb.ag ], [ %.9582, %.loopexit723.loopexit.unr-lcssa ]
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond967.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count966
  br i1 %exitcond967.not, label %._crit_edge826, label %bb.g, !llvm.loop !388

._crit_edge826:                                   ; preds = %.loopexit723
  %i.agu = icmp slt i32 %6, 8
  br i1 %i.agu, label %.lr.ph863, label %bb.aw

._crit_edge826.thread:                            ; preds = %.preheader738
  br i1 %i.a, label %bb.ax, label %.critedge

.lr.ph863:                                        ; preds = %._crit_edge826
  %i.agv = zext i32 %i.c to i64
  %i.agw = zext nneg i32 %i.ae to i64
  %i.agx = sub nsw i64 0, %i.agw
  %i.agy = icmp eq i32 %7, 0
  %18 = sext i32 %6 to i64
  %i.agz = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %18
  %i.aha = icmp sgt i32 %i.x, 7
  %i.ahb = icmp sgt i32 %i.x, 3
  %i.ahc = icmp sgt i32 %i.x, 1
  %.not605 = icmp eq i32 %i.g, %3
  %i.ahd = icmp eq i32 %i.g, 1
  %.1856 = add i32 %4, -1                         ; 4 uses
  %i.ahe = icmp sgt i32 %.1856, -1                ; 2 uses
  %i.ahf = zext i32 %.1856 to i64                 ; 8 uses
  %wide.trip.count978 = zext i32 %5 to i64
  %i.ahg = add i32 %i.x, -2                       ; 2 uses
  %i.ahh = add nuw nsw i64 %i.ahf, 1
  %i.ahi = and i32 %i.ahg, 2
  %lcmp.mod1664.not.not = icmp eq i32 %i.ahi, 0
  %i.ahj = add nsw i32 %i.x, -2                   ; 2 uses
  %i.ahk = icmp ult i32 %i.ahg, 2
  %i.ahl = and i64 %i.ahf, 1
  %lcmp.mod1667.not.not = icmp eq i64 %i.ahl, 0
  %i.ahm = shl nuw nsw i64 %i.ahf, 2
  %i.ahn = mul nuw nsw i64 %i.ahf, 3
  %indvars.iv.next970.prol = add nsw i64 %i.ahf, -1
  %i.aho = icmp eq i32 %.1856, 0
  %xtraiter1669 = and i64 %i.ahh, 3               ; 2 uses
  %lcmp.mod1670.not = icmp eq i64 %xtraiter1669, 0
  %i.ahp = icmp ult i32 %.1856, 3
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph863, %.loopexit
  %indvars.iv975 = phi i64 [ 0, %.lr.ph863 ], [ %indvars.iv.next976, %.loopexit ] ; 2 uses
  %i.ahq = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ahr = trunc nuw i64 %indvars.iv975 to i32
  %i.ahs = mul i32 %i.e, %i.ahr
  %i.aht = zext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.aht ; 10 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.agv
  %i.ahw = getelementptr inbounds i8, ptr %i.ahv, i64 %i.agx ; 9 uses
  br i1 %i.agy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ahx = load i8, ptr %i.agz, align 1, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ahy = phi i8 [ %i.ahx, %bb.ai ], [ 1, %bb.ah ] ; 30 uses
  switch i32 %6, label %.thread671 [
    i32 4, label %.preheader699
    i32 2, label %.preheader700
    i32 1, label %.preheader701
  ]

.preheader701:                                    ; preds = %bb.aj
  br i1 %i.aha, label %.lr.ph835, label %._crit_edge836

.preheader700:                                    ; preds = %bb.aj
  br i1 %i.ahb, label %.lr.ph843.preheader, label %._crit_edge844

.lr.ph843.preheader:                              ; preds = %.preheader700
  %i.ahz = insertelement <4 x i8> poison, i8 %i.ahy, i64 0
  %i.aia = shufflevector <4 x i8> %i.ahz, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %.lr.ph843

.preheader699:                                    ; preds = %bb.aj
  br i1 %i.ahc, label %.lr.ph851.preheader, label %._crit_edge852

.lr.ph851.preheader:                              ; preds = %.preheader699
  br i1 %lcmp.mod1664.not.not, label %.lr.ph851.prol, label %.lr.ph851.prol.loopexit

.lr.ph851.prol:                                   ; preds = %.lr.ph851.preheader
  %i.aib = load i8, ptr %i.ahw, align 1, !tbaa !35
  %i.aic = lshr i8 %i.aib, 4
  %i.aid = mul i8 %i.aic, %i.ahy
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahu, i64 1
  store i8 %i.aid, ptr %i.ahu, align 1, !tbaa !35
  %i.aif = load i8, ptr %i.ahw, align 1, !tbaa !35
  %i.aig = and i8 %i.aif, 15
  %i.aih = mul i8 %i.aig, %i.ahy
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahu, i64 2 ; 2 uses
  store i8 %i.aih, ptr %i.aie, align 1, !tbaa !35
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahw, i64 1 ; 2 uses
  br label %.lr.ph851.prol.loopexit

.lr.ph851.prol.loopexit:                          ; preds = %.lr.ph851.prol, %.lr.ph851.preheader
  %.0517850.unr = phi ptr [ %i.ahw, %.lr.ph851.preheader ], [ %i.aij, %.lr.ph851.prol ]
  %.0519849.unr = phi ptr [ %i.ahu, %.lr.ph851.preheader ], [ %i.aii, %.lr.ph851.prol ]
  %.14848.unr = phi i32 [ %i.x, %.lr.ph851.preheader ], [ %i.ahj, %.lr.ph851.prol ]
  %.lcssa1614.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.aii, %.lr.ph851.prol ]
  %.lcssa1612.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.aij, %.lr.ph851.prol ]
  br i1 %i.ahk, label %._crit_edge852, label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851
  %.0517850 = phi ptr [ %i.ajc, %.lr.ph851 ], [ %.0517850.unr, %.lr.ph851.prol.loopexit ] ; 4 uses
  %.0519849 = phi ptr [ %i.aja, %.lr.ph851 ], [ %.0519849.unr, %.lr.ph851.prol.loopexit ] ; 5 uses
  %.14848 = phi i32 [ %i.ajb, %.lr.ph851 ], [ %.14848.unr, %.lr.ph851.prol.loopexit ] ; 2 uses
  %i.aik = load i8, ptr %.0517850, align 1, !tbaa !35
  %i.ail = lshr i8 %i.aik, 4
  %i.aim = mul i8 %i.ail, %i.ahy
  %i.ain = getelementptr inbounds nuw i8, ptr %.0519849, i64 1
  store i8 %i.aim, ptr %.0519849, align 1, !tbaa !35
  %i.aio = load i8, ptr %.0517850, align 1, !tbaa !35
  %i.aip = and i8 %i.aio, 15
  %i.aiq = mul i8 %i.aip, %i.ahy
  %i.air = getelementptr inbounds nuw i8, ptr %.0519849, i64 2
  store i8 %i.aiq, ptr %i.ain, align 1, !tbaa !35
  %i.ais = getelementptr inbounds nuw i8, ptr %.0517850, i64 1 ; 2 uses
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !35
  %i.aiu = lshr i8 %i.ait, 4
  %i.aiv = mul i8 %i.aiu, %i.ahy
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0519849, i64 3
  store i8 %i.aiv, ptr %i.air, align 1, !tbaa !35
  %i.aix = load i8, ptr %i.ais, align 1, !tbaa !35
  %i.aiy = and i8 %i.aix, 15
  %i.aiz = mul i8 %i.aiy, %i.ahy
  %i.aja = getelementptr inbounds nuw i8, ptr %.0519849, i64 4 ; 2 uses
  store i8 %i.aiz, ptr %i.aiw, align 1, !tbaa !35
  %i.ajb = add nsw i32 %.14848, -4                ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0517850, i64 2 ; 2 uses
  %i.ajd = icmp sgt i32 %.14848, 5
  br i1 %i.ajd, label %.lr.ph851, label %._crit_edge852, !llvm.loop !389

._crit_edge852:                                   ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851, %.preheader699
  %.14.lcssa = phi i32 [ %i.x, %.preheader699 ], [ %i.ahj, %.lr.ph851.prol.loopexit ], [ %i.ajb, %.lr.ph851 ]
  %.0519.lcssa = phi ptr [ %i.ahu, %.preheader699 ], [ %.lcssa1614.unr, %.lr.ph851.prol.loopexit ], [ %i.aja, %.lr.ph851 ]
  %.0517.lcssa = phi ptr [ %i.ahw, %.preheader699 ], [ %.lcssa1612.unr, %.lr.ph851.prol.loopexit ], [ %i.ajc, %.lr.ph851 ]
  %i.aje = icmp eq i32 %.14.lcssa, 1
  br i1 %i.aje, label %bb.ak, label %.thread671

bb.ak:                                            ; preds = %._crit_edge852
  %i.ajf = load i8, ptr %.0517.lcssa, align 1, !tbaa !35
  %i.ajg = lshr i8 %i.ajf, 4
  %i.ajh = mul i8 %i.ajg, %i.ahy
  store i8 %i.ajh, ptr %.0519.lcssa, align 1, !tbaa !35
  br label %.thread671

.lr.ph843:                                        ; preds = %.lr.ph843.preheader, %.lr.ph843.rtcont
  %.1518842 = phi ptr [ %.rtmerge1605, %.lr.ph843.rtcont ], [ %i.ahw, %.lr.ph843.preheader ] ; 7 uses
  %.1520841 = phi ptr [ %.rtmerge, %.lr.ph843.rtcont ], [ %i.ahu, %.lr.ph843.preheader ] ; 7 uses
  %.15840 = phi i32 [ %.rtmerge1604, %.lr.ph843.rtcont ], [ %i.x, %.lr.ph843.preheader ] ; 2 uses
  %.15188421602 = ptrtoaddr ptr %.1518842 to i64  ; 2 uses
  %i.aji = add i64 %.15188421602, 1
  %.15208411603 = ptrtoaddr ptr %.1520841 to i64  ; 2 uses
  %i.ajj = add i64 %.15208411603, 4
  %rt.bound0 = icmp ugt i64 %i.aji, %.15208411603
  %rt.bound1 = icmp ugt i64 %i.ajj, %.15188421602
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph843.rtscalar, label %.lr.ph843.rtvec, !prof !427

._crit_edge844:                                   ; preds = %.lr.ph843.rtcont, %.preheader700
  %.15.lcssa = phi i32 [ %i.x, %.preheader700 ], [ %.rtmerge1604, %.lr.ph843.rtcont ] ; 3 uses
  %.1520.lcssa = phi ptr [ %i.ahu, %.preheader700 ], [ %.rtmerge, %.lr.ph843.rtcont ] ; 3 uses
  %.1518.lcssa = phi ptr [ %i.ahw, %.preheader700 ], [ %.rtmerge1605, %.lr.ph843.rtcont ] ; 3 uses
  %i.ajk = icmp sgt i32 %.15.lcssa, 0
  br i1 %i.ajk, label %bb.al, label %.thread671

bb.al:                                            ; preds = %._crit_edge844
  %i.ajl = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.ajm = lshr i8 %i.ajl, 6
  %i.ajn = mul i8 %i.ajm, %i.ahy
  store i8 %i.ajn, ptr %.1520.lcssa, align 1, !tbaa !35
  %.not693 = icmp eq i32 %.15.lcssa, 1
  br i1 %.not693, label %.thread671, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ajo = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 1
  %i.ajp = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.ajq = lshr i8 %i.ajp, 4
  %i.ajr = and i8 %i.ajq, 3
  %i.ajs = mul i8 %i.ajr, %i.ahy
  store i8 %i.ajs, ptr %i.ajo, align 1, !tbaa !35
  %i.ajt = icmp eq i32 %.15.lcssa, 3
  br i1 %i.ajt, label %bb.an, label %.thread671

bb.an:                                            ; preds = %bb.am
  %i.aju = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 2
  %i.ajv = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.ajw = lshr i8 %i.ajv, 2
  %i.ajx = and i8 %i.ajw, 3
  %i.ajy = mul i8 %i.ajx, %i.ahy
  store i8 %i.ajy, ptr %i.aju, align 1, !tbaa !35
  br label %.thread671

.lr.ph835:                                        ; preds = %.preheader701, %.lr.ph835
  %.2834 = phi ptr [ %i.alf, %.lr.ph835 ], [ %i.ahw, %.preheader701 ] ; 9 uses
  %.4833 = phi ptr [ %i.ald, %.lr.ph835 ], [ %i.ahu, %.preheader701 ] ; 9 uses
  %.16832 = phi i32 [ %i.ale, %.lr.ph835 ], [ %i.x, %.preheader701 ] ; 2 uses
  %i.ajz = load i8, ptr %.2834, align 1, !tbaa !35
  %isneg598 = icmp slt i8 %i.ajz, 0
  %i.aka = select i1 %isneg598, i8 %i.ahy, i8 0
  %i.akb = getelementptr inbounds nuw i8, ptr %.4833, i64 1
  store i8 %i.aka, ptr %.4833, align 1, !tbaa !35
  %i.akc = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akd = and i8 %i.akc, 64
  %.not599 = icmp eq i8 %i.akd, 0
  %i.ake = select i1 %.not599, i8 0, i8 %i.ahy
  %i.akf = getelementptr inbounds nuw i8, ptr %.4833, i64 2
  store i8 %i.ake, ptr %i.akb, align 1, !tbaa !35
  %i.akg = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akh = and i8 %i.akg, 32
  %.not600 = icmp eq i8 %i.akh, 0
  %i.aki = select i1 %.not600, i8 0, i8 %i.ahy
  %i.akj = getelementptr inbounds nuw i8, ptr %.4833, i64 3
  store i8 %i.aki, ptr %i.akf, align 1, !tbaa !35
  %i.akk = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akl = and i8 %i.akk, 16
  %.not601 = icmp eq i8 %i.akl, 0
  %i.akm = select i1 %.not601, i8 0, i8 %i.ahy
  %i.akn = getelementptr inbounds nuw i8, ptr %.4833, i64 4
  store i8 %i.akm, ptr %i.akj, align 1, !tbaa !35
  %i.ako = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akp = and i8 %i.ako, 8
  %.not602 = icmp eq i8 %i.akp, 0
  %i.akq = select i1 %.not602, i8 0, i8 %i.ahy
  %i.akr = getelementptr inbounds nuw i8, ptr %.4833, i64 5
  store i8 %i.akq, ptr %i.akn, align 1, !tbaa !35
  %i.aks = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akt = and i8 %i.aks, 4
  %.not603 = icmp eq i8 %i.akt, 0
  %i.aku = select i1 %.not603, i8 0, i8 %i.ahy
  %i.akv = getelementptr inbounds nuw i8, ptr %.4833, i64 6
  store i8 %i.aku, ptr %i.akr, align 1, !tbaa !35
  %i.akw = load i8, ptr %.2834, align 1, !tbaa !35
  %i.akx = and i8 %i.akw, 2
  %.not604 = icmp eq i8 %i.akx, 0
  %i.aky = select i1 %.not604, i8 0, i8 %i.ahy
  %i.akz = getelementptr inbounds nuw i8, ptr %.4833, i64 7
end_hunk_6
begin_hunk_7_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
bb.aw:                                            ; preds = %._crit_edge826
  br i1 %i.a, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %._crit_edge826.thread, %bb.aw
  %i.aou = mul i32 %i.c, %5                       ; 4 uses
  %.not866 = icmp eq i32 %i.aou, 0
  br i1 %.not866, label %.critedge, label %.lr.ph831.preheader

.lr.ph831.preheader:                              ; preds = %bb.ax
  %i.aov = load ptr, ptr %i.t, align 8, !tbaa !48 ; 10 uses
  %i.aow = zext i32 %i.aou to i64                 ; 2 uses
  %min.iters.check1585 = icmp ult i32 %i.aou, 8
  br i1 %min.iters.check1585, label %.lr.ph831.preheader1607, label %vector.ph1586

vector.ph1586:                                    ; preds = %.lr.ph831.preheader
  %n.vec1587 = and i64 %i.aow, 4294967288         ; 4 uses
  %i.aox = shl nuw nsw i64 %n.vec1587, 1
  %i.aoy = getelementptr i8, ptr %i.aov, i64 %i.aox
  %i.aoz = trunc nuw i64 %n.vec1587 to i32
  br label %vector.body1588

vector.body1588:                                  ; preds = %vector.body1588, %vector.ph1586
  %index1589 = phi i64 [ 0, %vector.ph1586 ], [ %index.next1597, %vector.body1588 ] ; 2 uses
  %i.apa = shl i64 %index1589, 1                  ; 8 uses
  %next.gep = getelementptr i8, ptr %i.aov, i64 %i.apa ; 3 uses
  %i.apb = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1590 = getelementptr i8, ptr %i.apb, i64 2
  %i.apc = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1591 = getelementptr i8, ptr %i.apc, i64 4
  %i.apd = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1592 = getelementptr i8, ptr %i.apd, i64 6
  %i.ape = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1593 = getelementptr i8, ptr %i.ape, i64 8
  %i.apf = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1594 = getelementptr i8, ptr %i.apf, i64 10
  %i.apg = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1595 = getelementptr i8, ptr %i.apg, i64 12
  %i.aph = getelementptr i8, ptr %i.aov, i64 %i.apa ; 2 uses
  %next.gep1596 = getelementptr i8, ptr %i.aph, i64 14
  %i.api = load i8, ptr %next.gep, align 1, !tbaa !35
  %i.apj = load i8, ptr %next.gep1590, align 1, !tbaa !35
  %i.apk = load i8, ptr %next.gep1591, align 1, !tbaa !35
  %i.apl = load i8, ptr %next.gep1592, align 1, !tbaa !35
  %i.apm = load i8, ptr %next.gep1593, align 1, !tbaa !35
  %i.apn = load i8, ptr %next.gep1594, align 1, !tbaa !35
  %i.apo = load i8, ptr %next.gep1595, align 1, !tbaa !35
  %i.app = load i8, ptr %next.gep1596, align 1, !tbaa !35
  %i.apq = insertelement <8 x i8> poison, i8 %i.api, i64 0
  %i.apr = insertelement <8 x i8> %i.apq, i8 %i.apj, i64 1
  %i.aps = insertelement <8 x i8> %i.apr, i8 %i.apk, i64 2
  %i.apt = insertelement <8 x i8> %i.aps, i8 %i.apl, i64 3
  %i.apu = insertelement <8 x i8> %i.apt, i8 %i.apm, i64 4
  %i.apv = insertelement <8 x i8> %i.apu, i8 %i.apn, i64 5
  %i.apw = insertelement <8 x i8> %i.apv, i8 %i.apo, i64 6
  %i.apx = insertelement <8 x i8> %i.apw, i8 %i.app, i64 7
  %i.apy = zext <8 x i8> %i.apx to <8 x i16>
  %i.apz = shl nuw <8 x i16> %i.apy, splat (i16 8)
  %i.aqa = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.aqb = getelementptr i8, ptr %i.apb, i64 3
  %i.aqc = getelementptr i8, ptr %i.apc, i64 5
  %i.aqd = getelementptr i8, ptr %i.apd, i64 7
  %i.aqe = getelementptr i8, ptr %i.ape, i64 9
  %i.aqf = getelementptr i8, ptr %i.apf, i64 11
  %i.aqg = getelementptr i8, ptr %i.apg, i64 13
  %i.aqh = getelementptr i8, ptr %i.aph, i64 15
  %i.aqi = load i8, ptr %i.aqa, align 1, !tbaa !35
  %i.aqj = load i8, ptr %i.aqb, align 1, !tbaa !35
  %i.aqk = load i8, ptr %i.aqc, align 1, !tbaa !35
  %i.aql = load i8, ptr %i.aqd, align 1, !tbaa !35
  %i.aqm = load i8, ptr %i.aqe, align 1, !tbaa !35
  %i.aqn = load i8, ptr %i.aqf, align 1, !tbaa !35
  %i.aqo = load i8, ptr %i.aqg, align 1, !tbaa !35
  %i.aqp = load i8, ptr %i.aqh, align 1, !tbaa !35
  %i.aqq = insertelement <8 x i8> poison, i8 %i.aqi, i64 0
  %i.aqr = insertelement <8 x i8> %i.aqq, i8 %i.aqj, i64 1
  %i.aqs = insertelement <8 x i8> %i.aqr, i8 %i.aqk, i64 2
  %i.aqt = insertelement <8 x i8> %i.aqs, i8 %i.aql, i64 3
  %i.aqu = insertelement <8 x i8> %i.aqt, i8 %i.aqm, i64 4
  %i.aqv = insertelement <8 x i8> %i.aqu, i8 %i.aqn, i64 5
  %i.aqw = insertelement <8 x i8> %i.aqv, i8 %i.aqo, i64 6
  %i.aqx = insertelement <8 x i8> %i.aqw, i8 %i.aqp, i64 7
  %i.aqy = zext <8 x i8> %i.aqx to <8 x i16>
  %i.aqz = or disjoint <8 x i16> %i.apz, %i.aqy
  store <8 x i16> %i.aqz, ptr %next.gep, align 2, !tbaa !41
  %index.next1597 = add nuw i64 %index1589, 8     ; 2 uses
  %i.ara = icmp eq i64 %index.next1597, %n.vec1587
  br i1 %i.ara, label %middle.block1598, label %vector.body1588, !llvm.loop !395

middle.block1598:                                 ; preds = %vector.body1588
  %cmp.n1599 = icmp eq i64 %n.vec1587, %i.aow
  br i1 %cmp.n1599, label %.critedge, label %.lr.ph831.preheader1607

.lr.ph831.preheader1607:                          ; preds = %.lr.ph831.preheader, %middle.block1598
  %.0829.ph = phi ptr [ %i.aov, %.lr.ph831.preheader ], [ %i.aoy, %middle.block1598 ]
  %.8569827.ph = phi i32 [ 0, %.lr.ph831.preheader ], [ %i.aoz, %middle.block1598 ]
  br label %.lr.ph831

.lr.ph831:                                        ; preds = %.lr.ph831.preheader1607, %.lr.ph831
  %.0829 = phi ptr [ %i.arj, %.lr.ph831 ], [ %.0829.ph, %.lr.ph831.preheader1607 ] ; 4 uses
  %.8569827 = phi i32 [ %i.ari, %.lr.ph831 ], [ %.8569827.ph, %.lr.ph831.preheader1607 ]
  %i.arb = load i8, ptr %.0829, align 1, !tbaa !35
  %i.arc = zext i8 %i.arb to i16
  %i.ard = shl nuw i16 %i.arc, 8
  %i.are = getelementptr inbounds nuw i8, ptr %.0829, i64 1
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !35
  %i.arg = zext i8 %i.arf to i16
  %i.arh = or disjoint i16 %i.ard, %i.arg
  store i16 %i.arh, ptr %.0829, align 2, !tbaa !41
  %i.ari = add nuw i32 %.8569827, 1               ; 2 uses
  %i.arj = getelementptr i8, ptr %.0829, i64 2
  %exitcond968.not = icmp eq i32 %i.ari, %i.aou
  br i1 %exitcond968.not, label %.critedge, label %.lr.ph831, !llvm.loop !396

.critedge.sink.split:                             ; preds = %bb.i, %bb.g, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL17stbi__malloc_mad3iiii.exit, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.str.27.sink = phi ptr [ @.str.26, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.i ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit ], [ @.str.23, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ @.str.8, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ], [ @.str.8, %bb.d ], [ @.str.27, %bb.g ], [ @.str.28, %bb.i ]
  store ptr %.str.27.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.lr.ph831, %middle.block1598, %.critedge.sink.split, %._crit_edge826.thread, %bb.ax, %bb.aw
  %.2572 = phi i32 [ 1, %middle.block1598 ], [ 1, %bb.ax ], [ 1, %._crit_edge826.thread ], [ 1, %bb.aw ], [ 0, %.critedge.sink.split ], [ 1, %.lr.ph831 ], [ 1, %.loopexit ]
  ret i32 %.2572

.lr.ph843.rtvec:                                  ; preds = %.lr.ph843
  %i.ark = load i8, ptr %.1518842, align 1, !tbaa !35 ; 4 uses
  %i.arl = lshr i8 %i.ark, 6
  %i.arm = lshr i8 %i.ark, 4
  %i.arn = lshr i8 %i.ark, 2
  %i.aro = insertelement <4 x i8> poison, i8 %i.arl, i64 0
  %i.arp = insertelement <4 x i8> %i.aro, i8 %i.arm, i64 1
  %i.arq = insertelement <4 x i8> %i.arp, i8 %i.arn, i64 2
  %i.arr = insertelement <4 x i8> %i.arq, i8 %i.ark, i64 3
  %i.ars = and <4 x i8> %i.arr, <i8 -1, i8 3, i8 3, i8 3>
  %i.art = mul <4 x i8> %i.ars, %i.aia
  store <4 x i8> %i.art, ptr %.1520841, align 1, !tbaa !35
  br label %.lr.ph843.rtcont

.lr.ph843.rtscalar:                               ; preds = %.lr.ph843
  %i.aru = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.arv = lshr i8 %i.aru, 6
  %i.arw = mul i8 %i.arv, %i.ahy
  %i.arx = getelementptr inbounds nuw i8, ptr %.1520841, i64 1
  store i8 %i.arw, ptr %.1520841, align 1, !tbaa !35
  %i.ary = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.arz = lshr i8 %i.ary, 4
  %i.asa = and i8 %i.arz, 3
  %i.asb = mul i8 %i.asa, %i.ahy
  %i.asc = getelementptr inbounds nuw i8, ptr %.1520841, i64 2
  store i8 %i.asb, ptr %i.arx, align 1, !tbaa !35
  %i.asd = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.ase = lshr i8 %i.asd, 2
  %i.asf = and i8 %i.ase, 3
  %i.asg = mul i8 %i.asf, %i.ahy
  %i.ash = getelementptr inbounds nuw i8, ptr %.1520841, i64 3
  store i8 %i.asg, ptr %i.asc, align 1, !tbaa !35
  %i.asi = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.asj = and i8 %i.asi, 3
  %i.ask = mul i8 %i.asj, %i.ahy
  store i8 %i.ask, ptr %i.ash, align 1, !tbaa !35
  br label %.lr.ph843.rtcont

.lr.ph843.rtcont:                                 ; preds = %.lr.ph843.rtscalar, %.lr.ph843.rtvec
  %.rtmerge1606 = icmp ugt i32 %.15840, 7
  %.rtmerge1605 = getelementptr inbounds nuw i8, ptr %.1518842, i64 1 ; 2 uses
  %.rtmerge1604 = add nsw i32 %.15840, -4         ; 2 uses
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.1520841, i64 4 ; 2 uses
  br i1 %.rtmerge1606, label %.lr.ph843, label %._crit_edge844, !llvm.loop !397
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
  %4 = sext i32 %i.j to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %4) #37
  br label %_ZL21stbi__mad3sizes_validiiii.exit.thread

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mad3sizes_validiiii.exit, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %_ZL21stbi__mad3sizes_validiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ]
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
  %3 = sext i32 %i.f to i64
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %3) #37
  br label %_ZL21stbi__mad2sizes_validiii.exit.thread

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mad2sizes_validiii.exit, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %_ZL21stbi__mad2sizes_validiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = load i8, ptr %i.b, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !5 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !33
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !5 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !31
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !33
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = load i8, ptr %i.b, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !5 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_7
begin_hunk_8_@stbi_load_16_from_callbacks:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !33
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !36
  %i.j = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !33
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !36
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !23     ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !23     ; 4 uses
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !23
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
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.o) #37 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #36
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
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
  %5 = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod22 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.y = mul nuw nsw i64 %indvars.iv55.i, %5      ; 3 uses
  br i1 %i.x, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.z = add nsw i64 %indvars.iv.i, %i.y          ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = fdiv float %i.ac, 2.550000e+02
  %i.ae = tail call float @powf(float noundef %i.ad, float noundef %i.v) #36
  %i.af = fmul float %i.w, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.z
  store float %i.af, ptr %i.ag, align 4, !tbaa !112
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ah = add nsw i64 %indvars.iv.next.i, %i.y    ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.a, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fdiv float %i.ak, 2.550000e+02
  %i.am = tail call float @powf(float noundef %i.al, float noundef %i.v) #36
  %i.an = fmul float %i.w, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ah
  store float %i.an, ptr %i.ao, align 4, !tbaa !112
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !493

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ap = add nsw i64 %indvars.iv.i.epil.init, %i.y ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = uitofp i8 %i.ar to float
  %i.at = fdiv float %i.as, 2.550000e+02
  %i.au = tail call float @powf(float noundef %i.at, float noundef %i.v) #36
  %i.av = fmul float %i.w, %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ap
  store float %i.av, ptr %i.aw, align 4, !tbaa !112
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !494

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %6 = sext i32 %i.e to i64                       ; 3 uses
  %i.ax = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count63.i, 1
  %i.ay = icmp eq i32 %i.i, 1
  br i1 %i.ay, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.1, %.lr.ph.i ]
  %i.az = mul nuw nsw i64 %indvars.iv60.i, %6
  %i.ba = add nsw i64 %i.az, %i.ax                ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.a, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = uitofp i8 %i.bc to float
  %i.be = fdiv float %i.bd, 2.550000e+02
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ba
  store float %i.be, ptr %i.bf, align 4, !tbaa !112
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.bg = mul nuw nsw i64 %indvars.iv.next61.i, %6
  %i.bh = add nsw i64 %i.bg, %i.ax                ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = uitofp i8 %i.bj to float
  %i.bl = fdiv float %i.bk, 2.550000e+02
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bh
  store float %i.bl, ptr %i.bm, align 4, !tbaa !112
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter27.next.1 = add i64 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i64 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !495

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bn = mul nuw nsw i64 %indvars.iv60.i.epil.init, %6
  %i.bo = add nsw i64 %i.bn, %i.ax                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = uitofp i8 %i.bq to float
  %i.bs = fdiv float %i.br, 2.550000e+02
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bo
  store float %i.bs, ptr %i.bt, align 4, !tbaa !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #36
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  store ptr @.str.2, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.p, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.k = call noundef i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !496 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8, !tbaa !31
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8, !tbaa !31
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8, !tbaa !35
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !37
  %i.z = call fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
end_hunk_8
